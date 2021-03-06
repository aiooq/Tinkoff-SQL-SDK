//+------------------------------------------------------------------+
//|                               Copyright © 2021, Daniel Kurmyshev |
//|                           https://www.mql5.com/ru/users/snowbars |
//+------------------------------------------------------------------+
#include "SSymbol.1.00.mqh"
#include "CTimeCounterModify.mqh"
//+------------------------------------------------------------------+
#resource "SQL\\select_ticks.sql" as string sql_select_ticks
#resource "SQL\\select_candles.sql" as string sql_select_candles
#resource "SQL\\select_candles_temp.sql" as string sql_select_candles_temp
#resource "SQL\\select_candle_last.sql" as string sql_select_candle_last
//+------------------------------------------------------------------+
class CProgram
  {
public:
                     CProgram(void);
                    ~CProgram(void) {}

   void              Init(void);
   void              Timer(void);

   void              SetPathToDataBase(string path) {m_path = path;}

private:

   string            m_path;

   CTimeCounter      m_counter_sec,
                     m_counter_3sec;

   CSQLite           m_db;

   struct_tick       ticks[];
   struct_symbol     m_symbols[];

   void              SymbolsSyncCandles(void);
   void              SymbolsSyncCandlesTemp(void);
  };
//+------------------------------------------------------------------+
CProgram::CProgram(void)
  {
   m_counter_sec.SetPause(1000);
   m_counter_3sec.SetPause(3000);
  }
//+------------------------------------------------------------------+
void CProgram::Init(void)
  {
   m_db.SetName(m_path);
  }
//+------------------------------------------------------------------+
void CProgram::Timer(void)
  {
   if(m_counter_sec.Check())
      return;

   static bool on_init=true;
   if(on_init)
     {
      string query=sql_select_candle_last;
      struct_tick::FromDataBase(m_db,ticks,query);
      struct_symbol::CreateSymbols(ticks,"TKF","Tinkoff");
      struct_symbol::FromDataBase(m_db,m_symbols);
      on_init=false;
      Print("OnInit");
     }

   static long time_last=0;
   ArrayFree(ticks);

   string query=sql_select_ticks;
   StringReplace(query,"@time_last",IntegerToString(time_last));
   if(struct_tick::FromDataBase(m_db,ticks,query)>0)
     {
      time_last=ticks[ArraySize(ticks)-1].time_msc;
      struct_symbol::CreateSymbols(ticks,"TKF","Tinkoff");
      struct_tick::AddTicks(ticks);
     }
     
   SymbolsSyncCandlesTemp();

   if(m_counter_3sec.Check())
      SymbolsSyncCandles();
  }
//+------------------------------------------------------------------+
void CProgram::SymbolsSyncCandles(void)
  {
   for(int i=ArraySize(m_symbols)-1; i>=0; i--)
     {
      MqlRates rates[];
      string query=sql_select_candles;
      StringReplace(query,"@symbol_id",IntegerToString(m_symbols[i].id));
      StringReplace(query,"@time_start",IntegerToString(m_symbols[i].time_start));
      StringReplace(query,"@time_end",IntegerToString(m_symbols[i].time_end));

      int total=m_symbols[i].RatesFromDataBase(m_db,rates,query);

      //printf("[%s.%s] total: %d",m_symbols[i].ticker,"TKF",total);

      if(total<=0)
        {
         if(!m_symbols[i].is_full)
           {
            printf("[%s.%s] symbol is fully synchronized!",m_symbols[i].ticker,"TKF");
            m_symbols[i].is_full=1;
           }
         continue;
        }

      if(m_symbols[i].time_end<rates[0].time || m_symbols[i].time_end==0)
         m_symbols[i].time_end=rates[0].time;
      if(m_symbols[i].time_start>rates[ArraySize(rates)-1].time || m_symbols[i].time_start==0)
         m_symbols[i].time_start=rates[ArraySize(rates)-1].time;

      for(int j=0; j<total; j++)
         rates[j].time+=-TimeGMTOffset();

      string symbol_name=StringFormat("%s.%s",m_symbols[i].ticker,"TKF");
      total=CustomRatesUpdate(symbol_name,rates);

      /*printf("symbol: %s, start: %s, end: %s, total rates updated: %d",
             symbol_name,
             TimeToString(m_symbols[i].time_start),
             TimeToString(m_symbols[i].time_end),
             total);*/

      if(total<=0)
         continue;
     }
  }
//+------------------------------------------------------------------+
void CProgram::SymbolsSyncCandlesTemp(void)
  {
   for(int i=ArraySize(m_symbols)-1; i>=0; i--)
     {
      MqlRates rates[];
      string query=sql_select_candles_temp;
      StringReplace(query,"@symbol_id",IntegerToString(m_symbols[i].id));

      int total=m_symbols[i].RatesFromDataBase(m_db,rates,query);

      if(total<=0)
         continue;

      for(int j=0; j<total; j++)
         rates[j].time+=-TimeGMTOffset();

      string symbol_name=StringFormat("%s.%s",m_symbols[i].ticker,"TKF");
      total=CustomRatesUpdate(symbol_name,rates);

      if(total<=0)
         continue;
     }
  }
//+------------------------------------------------------------------+
