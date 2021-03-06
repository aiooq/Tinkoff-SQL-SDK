//+------------------------------------------------------------------+
//|                                                  TimeCounter.mqh |
//|                        Copyright 2016, MetaQuotes Software Corp. |
//|                                              http://www.mql5.com |
//+------------------------------------------------------------------+
//| Счётчик времени                                                  |
//+------------------------------------------------------------------+
class CTimeCounter
  {
private:

   ulong
   m_pause_micro,
   m_pause_main_micro,
   m_time_count,
   m_count_main;
   
   long              m_count;
   bool              is_first;
   //---
public:
                     CTimeCounter(void);
                     CTimeCounter(const uint pause_msec);
                    ~CTimeCounter(void);
   //--- Установка временного интервала
   void              SetPause(const uint pause_msec);
   void              SetPauseMain(const uint pause_msec);
   //--- Установка остатка времени до срабатывания (телепорт счетчика)
   void              SetBefore(const uint drawdown_msec);
   //--- Обнуление счётчика
   void              SetZero(void) { m_count=(long)GetMicrosecondCount(); }
   //--- Проверяет прохождение указанного временного интервала 
   bool              Check(void);
  };
//+------------------------------------------------------------------+
//| Constructor                                                      |
//+------------------------------------------------------------------+
CTimeCounter::CTimeCounter(void)
  {
   is_first=true;
   m_pause_micro=1000000;
   m_pause_main_micro=0;
   m_count_main=GetMicrosecondCount();
   m_count=(long)m_count_main;
  }
//+------------------------------------------------------------------+  
CTimeCounter::CTimeCounter(const uint pause_msec)
  {
   is_first=true;
   m_pause_micro=pause_msec*1000;
   m_count=(long)GetMicrosecondCount();
  }
//+------------------------------------------------------------------+
//| Destructor                                                       |
//+------------------------------------------------------------------+
CTimeCounter::~CTimeCounter(void){}
//+------------------------------------------------------------------+
//| Установка временного интервала                                   |
//+------------------------------------------------------------------+  
void CTimeCounter::SetPause(const uint pause_msec)
  {
   m_pause_micro=pause_msec*1000;
  }
//+------------------------------------------------------------------+
//| Установка времени до срабатывания                                |
//+------------------------------------------------------------------+  
void CTimeCounter::SetBefore(const uint drawdown_msec)
  {
   m_time_count=GetMicrosecondCount();
   m_count=(long)(m_time_count-m_pause_micro+(drawdown_msec*1000));
  }
//+------------------------------------------------------------------+
//| Установка времени гарантированной паузы                          |
//+------------------------------------------------------------------+  
void CTimeCounter::SetPauseMain(const uint pause_msec)
  {
   m_pause_main_micro=pause_msec*1000;
  }
//+------------------------------------------------------------------+
//| Проверяет прохождение указанного временного интервала            |
//+------------------------------------------------------------------+
bool CTimeCounter::Check(void)
  {
   m_time_count=GetMicrosecondCount();

   if(!is_first && (m_time_count-m_count)<m_pause_micro) return(false);

   if(!is_first && m_pause_main_micro!=0&&(m_time_count-m_count_main)<m_pause_main_micro) return(false);

   m_count_main=m_time_count;
   m_count=(long)m_time_count;
   is_first=false;

   return(true);
  }
//+------------------------------------------------------------------+
