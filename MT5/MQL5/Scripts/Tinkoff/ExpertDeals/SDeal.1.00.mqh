//+------------------------------------------------------------------+
//|                               Copyright © 2021, Daniel Kurmyshev |
//|                           https://www.mql5.com/ru/users/snowbars |
//+------------------------------------------------------------------+
#include "CSQLite.1.20.mqh"
//+------------------------------------------------------------------+
struct struct_deal
  {
   int side_id,
       time_open,
       time_close;

   double price_open,
          price_close,
          growth;

                     struct_deal(void)
     {
      side_id=0;
      time_open=0;
      time_close=0;
      price_open=0;
      price_close=0;
      growth=0;
     }

   static int        FromDataBase(CSQLite &db, struct_deal &structs[], string sql);
  };
//+------------------------------------------------------------------+
static int struct_deal::FromDataBase(CSQLite &db, struct_deal &structs[], string sql)
  {
   if(!db.TableExists("m_tick"))
      return(INVALID_HANDLE);

   ArrayFree(structs);

   int handle_query=db.Prepare(sql);

   if(handle_query==INVALID_HANDLE)
      return(INVALID_HANDLE);

   struct_deal struct_temp;
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
//+------------------------------------------------------------------+
