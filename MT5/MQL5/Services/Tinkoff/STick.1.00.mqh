//+------------------------------------------------------------------+
//|                               Copyright © 2021, Daniel Kurmyshev |
//|                           https://www.mql5.com/ru/users/snowbars |
//+------------------------------------------------------------------+
#include "CSQLite.1.20.mqh"
//+------------------------------------------------------------------+
struct struct_tick
  {
   string            symbol;
   long              time_msc;
   double            bid,
                     ask,
                     volume_bid,
                     volume_ask;
   int               digits;

                     struct_tick(void)
     {
      symbol=NULL;
      time_msc=0;
      bid=0;
      ask=0;
      volume_bid=0;
      volume_ask=0;
      digits=0;
     }

   static int        FromDataBase(CSQLite &db, struct_tick &structs[], string sql);

   static void       AddTicks(struct_tick &ticks[]);
   static bool       AddTick(string symbol_name, struct_tick &tick);
  };
//+------------------------------------------------------------------+
static int struct_tick::FromDataBase(CSQLite &db, struct_tick &structs[], string sql)
  {
   if(!db.TableExists("m_tick"))
      return(INVALID_HANDLE);

   ArrayFree(structs);

   int handle_query=db.Prepare(sql);

   if(handle_query==INVALID_HANDLE)
      return(INVALID_HANDLE);

   struct_tick struct_temp;
   int index=0;
   for(int i=0; DatabaseReadBind(handle_query, struct_temp); i++)
     {
      index=ArraySize(structs);
      ArrayResize(structs,index+1,10);
      structs[index]=struct_temp;
     }

   db.Finalize();

   return(ArraySize(structs));
  }
//+------------------------------------------------------------------+
static void struct_tick::AddTicks(struct_tick &ticks[])
  {
   for(int i=ArraySize(ticks)-1; i>=0; i--)
      AddTick(ticks[i].symbol,ticks[i]);
  }
//+------------------------------------------------------------------+
static bool struct_tick::AddTick(string symbol_name, struct_tick &tick)
  {
   if(!SymbolInfoInteger(symbol_name,SYMBOL_VISIBLE))
      return(false);

   if(tick.bid<=0)
      return(false);

   if(tick.ask<=0)
      return(false);

   static MqlTick m_tick[1];

   SymbolInfoTick(symbol_name,m_tick[0]);
   m_tick[0].flags=0;

   tick.time_msc+=-(TimeGMTOffset()*1000);

   if(m_tick[0].time_msc>tick.time_msc)
      return(false);

   if(m_tick[0].bid!=tick.bid)
      m_tick[0].flags|=TICK_FLAG_BID;

   if(m_tick[0].ask!=tick.ask)
      m_tick[0].flags|=TICK_FLAG_ASK;

   if(m_tick[0].flags==0)
      return(false);

   m_tick[0].flags|=TICK_FLAG_VOLUME;

   m_tick[0].bid=tick.bid;
   m_tick[0].ask=tick.ask;
   m_tick[0].last=tick.bid;
   m_tick[0].time=(datetime)(tick.time_msc/1000);
   m_tick[0].time_msc=tick.time_msc;

   m_tick[0].volume_real=tick.volume_bid+tick.volume_ask;
   if(m_tick[0].volume_real<=0)
      m_tick[0].volume_real=1;

   m_tick[0].volume=(ulong)m_tick[0].volume_real;

   return(CustomTicksAdd(symbol_name,m_tick)>0);
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
