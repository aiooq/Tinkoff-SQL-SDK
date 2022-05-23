//+------------------------------------------------------------------+
//|                               Copyright © 2021, Daniel Kurmyshev |
//|                           https://www.mql5.com/ru/users/snowbars |
//+------------------------------------------------------------------+
#include "STick.1.00.mqh"
//+------------------------------------------------------------------+
#resource "SQL\\select_symbols.sql" as string sql_select_symbols
//+------------------------------------------------------------------+
struct struct_symbol
  {
   int               id;
   string            ticker;
   string            name;
   string            class_code;
   datetime          time_start;
   datetime          time_end;

                     struct_symbol(void)
     {
      id=0;
      ticker=NULL;
      name=NULL;
      class_code=NULL;
      time_start=0;
      time_end=0;
     }

   int               RatesFromDataBase(CSQLite &db, MqlRates &structs[], string query);

   static int        FromDataBase(CSQLite &db, struct_symbol &structs[]);

   static void       CreateSymbols(struct_tick &ticks[], string symbol_key, string path);
  };
//+------------------------------------------------------------------+
static int struct_symbol::FromDataBase(CSQLite &db, struct_symbol &structs[])
  {
   if(!db.TableExists("m_instrument"))
      return(INVALID_HANDLE);

   ArrayFree(structs);

   int handle_query=db.Prepare(sql_select_symbols);

   if(handle_query==INVALID_HANDLE)
      return(INVALID_HANDLE);

   struct_symbol struct_temp;
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
int struct_symbol::RatesFromDataBase(CSQLite &db, MqlRates &structs[], string query)
  {
   if(!db.TableExists("m_candle"))
      return(INVALID_HANDLE);

   ArrayFree(structs);

   int handle_query=db.Prepare(query);

   if(handle_query==INVALID_HANDLE)
      return(INVALID_HANDLE);

   MqlRates struct_temp;
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
static void struct_symbol::CreateSymbols(struct_tick &ticks[], string symbol_key, string path)
  {
   string symbol_name;

   for(int i=ArraySize(ticks)-1; i>=0; i--)
     {
      symbol_name=StringFormat("%s.%s",ticks[i].symbol,symbol_key);
      StringReplace(symbol_name,"/","-");

      // Проверяем существование символа
      if(SymbolInfoInteger(symbol_name,SYMBOL_EXIST))
        {
         if(!SymbolInfoInteger(symbol_name,SYMBOL_VISIBLE))
            continue;

         // Если кол-во знаков после точки в тике больше, то обновляем символ
         if(SymbolInfoInteger(symbol_name,SYMBOL_DIGITS)<ticks[i].digits)
           {
            CustomSymbolSetInteger(symbol_name,SYMBOL_DIGITS,ticks[i].digits);
            CustomTicksDelete(symbol_name,0,ticks[i].time_msc);
           }

         struct_tick::AddTick(symbol_name,ticks[i]);
         continue;
        }

      // Создаем символ, если не получилось, то переходим к следующему символу
      if(!CustomSymbolCreate(symbol_name,path))
         continue;

      bool visible=true;
      // Конфигурируем Boolean параметры
      SymbolSelect(symbol_name,visible);
      CustomSymbolSetInteger(symbol_name,SYMBOL_VISIBLE,visible);

      // Конфигурируем Integer параметры
      CustomSymbolSetInteger(symbol_name,SYMBOL_SECTOR,SECTOR_CURRENCY_CRYPTO);
      CustomSymbolSetInteger(symbol_name,SYMBOL_CHART_MODE,SYMBOL_CHART_MODE_BID);
      CustomSymbolSetInteger(symbol_name,SYMBOL_DIGITS,ticks[i].digits);

      // Уникальный 12 значный символ в международных наименований, если он там есть...
      //CustomSymbolSetString(symbol_name,SYMBOL_ISIN,symbol_name);

      // Конфигурируем Double параметры
      CustomSymbolSetDouble(symbol_name,SYMBOL_TRADE_TICK_VALUE,1);
      CustomSymbolSetDouble(symbol_name,SYMBOL_TRADE_CONTRACT_SIZE,1);
      CustomSymbolSetDouble(symbol_name,SYMBOL_MARGIN_INITIAL,0);
      CustomSymbolSetDouble(symbol_name,SYMBOL_VOLUME_MAX,100000000);
      CustomSymbolSetDouble(symbol_name,SYMBOL_VOLUME_MIN,0.00000001);
      CustomSymbolSetDouble(symbol_name,SYMBOL_VOLUME_STEP,0.00000001);
      //CustomSymbolSetDouble(symbol_name,SYMBOL_POINT,
      //CustomSymbolSetDouble(symbol_name,SYMBOL_LAST
      //CustomSymbolSetDouble(symbol_name,SYMBOL_SPREAD

      // Добавление сессий в выходные дни
      //CustomSymbolSetSessionTrade(symbol_name,SUNDAY,0,0,86400);
      //CustomSymbolSetSessionTrade(symbol_name,SATURDAY,0,0,86400);
      //CustomSymbolSetSessionQuote(symbol_name,SUNDAY,0,0,86400);
      //CustomSymbolSetSessionQuote(symbol_name,SATURDAY,0,0,86400);

      struct_tick::AddTick(symbol_name,ticks[i]);
     }
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
