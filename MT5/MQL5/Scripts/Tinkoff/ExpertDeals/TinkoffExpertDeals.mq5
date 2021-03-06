//+------------------------------------------------------------------+
//|                                           TinkoffExpertDeals.mq5 |
//|                                                         SnowBars |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#define COPYRIGHT       "Copyright © 2022, Daniel Kurmyshev (SnowBars), Aiooq.com"
#define COMPANY_LINK    "https://www.mql5.com/ru/users/snowbars"
#define VERSION         "1.10"
#define PROGRAM         "TinkoffExpertDeals"

#property copyright COPYRIGHT
#property link      COMPANY_LINK
#property version   VERSION
#property script_show_inputs
#property strict
//+------------------------------------------------------------------+
#include "CDraw.mqh"
#include "SDeal.1.00.mqh"
//+------------------------------------------------------------------+
#resource "SQL\\select_deals.sql" as string sql_select_deals
//+------------------------------------------------------------------+
input group "S  E  T  S"
input string InpPathToDataBase   = "JS/db/tinkoff";      // Path to DataBase
input string InpExpertName       = "MA_INTERSECTION_60"; // Expert name
input int InpUpdateInterval      = 60;                   // Update interval (sec)
//+------------------------------------------------------------------+
CDraw draw;
CSQLite m_db;
//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
void OnStart()
  {
   datetime last_time=TimeLocal();
   m_db.SetName(InpPathToDataBase);

   while(!IsStopped())
     {
      Sleep((uint)(last_time-TimeLocal())*1000);

      if(last_time>TimeLocal())
         continue;

      last_time=TimeLocal()+InpUpdateInterval;

      string symbol=_Symbol;
      StringReplace(symbol,".TKF","");

      struct_deal deals[];
      string query=sql_select_deals;
      StringReplace(query,"@symbol",symbol);
      StringReplace(query,"@expert_name",InpExpertName);
      StringReplace(query,"@TimeGMTOffset",IntegerToString(TimeGMTOffset()));
      struct_deal::FromDataBase(m_db,deals,query);
      Print("Count deals: ", ArraySize(deals));
      DrawDeals(deals);
     }
  }
//+------------------------------------------------------------------+
void DrawDeals(struct_deal &deals[])
  {
   int total=ArraySize(deals);
   for(int i=0; i<total; i++)
     {
      draw.Arrow("\nOpen deal #"+IntegerToString(i+1),
                 deals[i].time_open,
                 deals[i].price_open,!deals[i].side_id);

      if(deals[i].time_close>0)
         draw.Line("\nLine deal #"+IntegerToString(i+1)+"\nProfit: "+DoubleToString(deals[i].growth,2)+" %",
                   deals[i].time_open,
                   deals[i].price_open,
                   deals[i].time_close,
                   deals[i].price_close,
                   (deals[i].growth<0?clrYellow:clrWhite/*(deals[i].side_id?clrOrangeRed:clrSkyBlue)*/),STYLE_DOT,1);

      if(deals[i].time_close>0)
         draw.Metka("\nClose deal #"+IntegerToString(i+1),
                    deals[i].time_close,
                    deals[i].price_close,
                    deals[i].side_id?clrOrangeRed:clrSkyBlue,
                    !deals[i].side_id,
                    (deals[i].growth>=0?true:false));
     }

   ChartRedraw();
  }
//+------------------------------------------------------------------+
