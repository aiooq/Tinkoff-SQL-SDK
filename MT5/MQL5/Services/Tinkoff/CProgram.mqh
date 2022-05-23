//+------------------------------------------------------------------+
//|                               Copyright © 2021, Daniel Kurmyshev |
//|                           https://www.mql5.com/ru/users/snowbars |
//+------------------------------------------------------------------+
#include "SSymbol.1.00.mqh"
#include "CTimeCounterModify.mqh"
//+------------------------------------------------------------------+
#resource "SQL\\select_ticks.sql" as string sql_select_ticks
#resource "SQL\\select_candles.sql" as string sql_select_candles
#resource "SQL\\select_candle_last.sql" as string sql_select_candle_last
//+------------------------------------------------------------------+
class CProgram
  {
public:
                     CProgram(void);
                    ~CProgram(void) {}

   void              Timer(void);

   void              SetPathToDataBase(string path) {m_path = path;}

private:

   string            m_path;

   CTimeCounter      m_counter_sec;

   CSQLite           m_db;

   struct_tick       ticks[];
   struct_symbol     m_symbols[];

   void              SymbolsSyncCandles(void);
  };
//+------------------------------------------------------------------+
CProgram::CProgram(void)
  {
   m_counter_sec.SetPause(3000);
  }
//+------------------------------------------------------------------+
void CProgram::Timer(void)
  {
   if(!m_counter_sec.Check())
      return;

   m_db.SetName(m_path);

   static bool on_init=true;
   if(on_init)
     {
      struct_tick::FromDataBase(m_db,ticks,sql_select_candle_last);
      struct_symbol::CreateSymbols(ticks,"TKF","Tinkoff");
      struct_symbol::FromDataBase(m_db,m_symbols);
      on_init=false;
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
      StringReplace(query,"@TimeGMTOffset",IntegerToString(TimeGMTOffset()));
      StringReplace(query,"@time_start",IntegerToString(m_symbols[i].time_start));
      StringReplace(query,"@time_end",IntegerToString(m_symbols[i].time_end));

      int total=m_symbols[i].RatesFromDataBase(m_db,rates,query);

      if(total<=0)
         continue;

      m_symbols[i].time_end=rates[0].time;
      m_symbols[i].time_start=rates[ArraySize(rates)-1].time;

      string symbol_name=StringFormat("%s.%s",m_symbols[i].ticker,"TKF");

      total=CustomRatesUpdate(symbol_name,rates);

      if(total<=0)
         continue;
     }
  }
//+------------------------------------------------------------------+
