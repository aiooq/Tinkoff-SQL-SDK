//+------------------------------------------------------------------+
//|                                                  TinkoffData.mq5 |
//+------------------------------------------------------------------+
//|                               Copyright © 2021, Daniel Kurmyshev |
//|                           https://www.mql5.com/ru/users/snowbars |
//+------------------------------------------------------------------+
#define COPYRIGHT       "Copyright © 2021, Daniel Kurmyshev (SnowBars), Aiooq.com"
#define COMPANY_LINK    "https://www.mql5.com/ru/users/snowbars"
#define VERSION         "1.92"
#define PROGRAM         "TinkoffDataByAiooq"

#property service
#property copyright COPYRIGHT
#property link      COMPANY_LINK
#property version   VERSION
#property strict

input string InpPathToDataBase = "JS/db/tinkoff"; // Path to DataBase
//+------------------------------------------------------------------+
#include "CProgram.mqh"
CProgram prog;
//+------------------------------------------------------------------+
//| Service program start function                                   |
//+------------------------------------------------------------------+
void OnStart()
  {
   prog.SetPathToDataBase(InpPathToDataBase);
   prog.Init();

   while(!IsStopped())
     {
      prog.Timer();

      Sleep(50);
     }
  }
//+------------------------------------------------------------------+
