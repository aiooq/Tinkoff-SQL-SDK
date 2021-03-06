//+------------------------------------------------------------------+
#define PROGRAM_NAMES ::MQLInfoString(MQL_PROGRAM_NAME)
#define PUT_IN_RANGE(A, L, H) ((H) < (L) ? (A) : ((A) < (L) ? (L) : ((A) > (H) ? (H) : (A))))
#define COLOR_IS_NONE(C) (((C) >> 24) != 0)
#define RGB_TO_COLOR(R, G, B) ((color)((((B) & 0x0000FF) << 16) + (((G) & 0x0000FF) << 8) + ((R) & 0x0000FF)))
//+------------------------------------------------------------------+
class CDraw
  {
public:
                     CDraw(void);
                    ~CDraw(void);

   // Service
   void              Redraw(void);
   void              Clear(const string prefix=NULL,const long chart_id=0);
   void              Delete(string name,long chart_id=0);

   // Objects
   void              Line(string name,datetime time,color clr,ENUM_LINE_STYLE style=STYLE_DASHDOTDOT,int width=1,bool selectable=true,long chart_id=0);
   void              Line(string name,double price,color clr,ENUM_LINE_STYLE style=STYLE_SOLID,int width=1,bool selected=true,bool selectable=true,long chart_id=0);
   void              Line(string name,datetime t1,double p1,datetime t2,double p2,color clr,ENUM_LINE_STYLE style,int width=1,bool ray_right=false,bool ray_left=false,bool back=false,long chart_id=0);

   void              Arrow(string name,datetime time,double price,bool is_buy=true,int type=0,int width=1,color clr_buy=clrAqua,color clr_sell=clrOrangeRed,long chart_id=0);
   void              Arrow(string name,datetime time,double price,color clr,int code,ENUM_ARROW_ANCHOR anchor,int width=1,long chart_id=0);

   void              Text(string name,datetime time,double price,string text,color clr,bool is_top,long chart_id=0);

   void              Metka(string name,datetime time,double price,color clr,bool is_buy=true,bool is_good=true,long chart_id=0);

   void              Label(string name,int x,int y,color clr, string text,ENUM_BASE_CORNER corner=CORNER_LEFT_UPPER,long chart_id=0);
   void              Label(string name,int x,int y,color clr, ENUM_BASE_CORNER corner=CORNER_LEFT_UPPER,long chart_id=0);

   void              Rectangle(string name,datetime t1,double p1,datetime t2,double p2,color clr,ENUM_LINE_STYLE style,int width=1,bool fill=false,bool back=true,long chart_id=0);

   // Change
   //void              ChangeIntager(string name, ENUM_OBJECT_PROPERTY_INTEGER property, bool value, long chart_id);
   //void              ChangeIntager(string name, ENUM_OBJECT_PROPERTY_INTEGER property, char value, long chart_id);
   //void              ChangeIntager(string name, ENUM_OBJECT_PROPERTY_INTEGER property, int value, long chart_id);
   //void              ChangeIntager(string name, ENUM_OBJECT_PROPERTY_INTEGER property, color value, long chart_id);

   void              ChangeIntager(string name, ENUM_OBJECT_PROPERTY_INTEGER property, long value, long chart_id);
   void              ChangeIntager(string name, ENUM_OBJECT_PROPERTY_INTEGER property, long value, int index, long chart_id);

   void              ChangeDouble(string name, ENUM_OBJECT_PROPERTY_DOUBLE property, double value,long chart_id);
   void              ChangeDouble(string name, ENUM_OBJECT_PROPERTY_DOUBLE property, double value, int index, long chart_id);

   void              ChangeString(string name, ENUM_OBJECT_PROPERTY_STRING property, string value, long chart_id);

   // Get
   string            GetFullName(string name) { return(PROGRAM_NAMES+name); }
   static color      GetMixColor(const color color1,const color color2,double mix,double step=16); // mix (0-1)

private:

   bool              m_redraw;

   static bool       ColorToRGB(const color c,int &r,int &g,int &b);

   bool              ObjectCreated(ENUM_OBJECT type, string name,long chart_id=0);
   bool              ObjectCreated(ENUM_OBJECT type, string name,double price,long chart_id=0);
   bool              ObjectCreated(ENUM_OBJECT type, string name,datetime time,long chart_id=0);
   bool              ObjectCreated(ENUM_OBJECT type, string name,datetime time,double price,long chart_id=0);
   bool              ObjectCreated(ENUM_OBJECT type, string name,datetime t1,double p1,datetime t2,double p2,long chart_id=0);
  };
//+------------------------------------------------------------------+
CDraw::CDraw(void) { m_redraw=true; }
//+------------------------------------------------------------------+
CDraw::~CDraw(void)
  {
   Clear();
   ChartRedraw();
  }
//+------------------------------------------------------------------+
void CDraw::Clear(const string prefix=NULL,const long chart_id=0)
  {
   if(ObjectsDeleteAll(chart_id,PROGRAM_NAMES+prefix)>0 && !m_redraw)
      m_redraw=true;
  }
//+------------------------------------------------------------------+
void CDraw::Redraw(void)
  {
// учитываем конкретный график...
   if(m_redraw)
     {
      ChartRedraw();
      m_redraw=false;
     }
  }
//+------------------------------------------------------------------+
void CDraw::Delete(string name,long chart_id=0)
  {
   if(ObjectFind(chart_id,GetFullName(name))<0)
      return;

   if(ObjectDelete(chart_id,GetFullName(name)) && !m_redraw)
      m_redraw=true;
  }
//+------------------------------------------------------------------+
// Objects
//+------------------------------------------------------------------+
void CDraw::Line(string name,datetime time,color clr,ENUM_LINE_STYLE style=STYLE_DASHDOTDOT,int width=1,bool selectable=true,long chart_id=0)
  {
   name=GetFullName(name);

   if(ObjectCreated(OBJ_VLINE,name,time,chart_id))
     {
      ChangeIntager(name,OBJPROP_BACK,false,chart_id);

      ChangeIntager(name,OBJPROP_COLOR,clr,chart_id);
      ChangeIntager(name,OBJPROP_STYLE,style,chart_id);
      ChangeIntager(name,OBJPROP_WIDTH,width,chart_id);
      ChangeIntager(name,OBJPROP_SELECTABLE,selectable,chart_id);
     }
   else
     {
      ChangeIntager(name,OBJPROP_TIME,time,chart_id);

      ChangeIntager(name,OBJPROP_COLOR,clr,chart_id);
      ChangeIntager(name,OBJPROP_STYLE,style,chart_id);
     }
  }
//+------------------------------------------------------------------+
void CDraw::Line(string name,double price,color clr,ENUM_LINE_STYLE style=STYLE_SOLID,int width=1,bool selected=true,bool selectable=true,long chart_id=0)
  {
   name=GetFullName(name);

   if(ObjectCreated(OBJ_HLINE,name,price,chart_id))
     {
      ChangeIntager(name,OBJPROP_BACK,false,chart_id);

      ChangeIntager(name,OBJPROP_COLOR,clr,chart_id);
      ChangeIntager(name,OBJPROP_STYLE,style,chart_id);
      ChangeIntager(name,OBJPROP_WIDTH,width,chart_id);
      ChangeIntager(name,OBJPROP_SELECTABLE,selectable,chart_id);
      ChangeIntager(name,OBJPROP_SELECTED,selected,chart_id);
     }
   else
     {
      ChangeDouble(name,OBJPROP_PRICE,price,chart_id);

      ChangeIntager(name,OBJPROP_COLOR,clr,chart_id);
      ChangeIntager(name,OBJPROP_STYLE,style,chart_id);
     }
  }
//+------------------------------------------------------------------+
void CDraw::Line(string name,datetime t1,double p1,datetime t2,double p2,color clr,ENUM_LINE_STYLE style,int width=1,bool ray_right=false,bool ray_left=false,bool back=false,long chart_id=0)
  {
   name=GetFullName(name);

   if(ObjectCreated(OBJ_TREND,name,t1,p1,t2,p2,chart_id))
     {
      ChangeIntager(name,OBJPROP_BACK,back,chart_id);
      ChangeIntager(name,OBJPROP_SELECTABLE,true,chart_id);

      ChangeIntager(name,OBJPROP_COLOR,clr,chart_id);
      ChangeIntager(name,OBJPROP_STYLE,style,chart_id);
      ChangeIntager(name,OBJPROP_WIDTH,width,chart_id);

      ChangeIntager(name,OBJPROP_RAY_RIGHT,ray_right,chart_id);
      ChangeIntager(name,OBJPROP_RAY_LEFT,ray_left,chart_id);
     }
   else
     {
      ChangeDouble(name,OBJPROP_PRICE,p1,0,chart_id);
      ChangeDouble(name,OBJPROP_PRICE,p2,1,chart_id);

      ChangeIntager(name,OBJPROP_TIME,t1,0,chart_id);
      ChangeIntager(name,OBJPROP_TIME,t2,1,chart_id);

      ChangeIntager(name,OBJPROP_COLOR,clr,chart_id);
      ChangeIntager(name,OBJPROP_STYLE,style,chart_id);
     }
  }
//+------------------------------------------------------------------+
void CDraw::Rectangle(string name,datetime t1,double p1,datetime t2,double p2,color clr,ENUM_LINE_STYLE style,int width=1,bool fill=false,bool back=true,long chart_id=0)
  {
   name=GetFullName(name);

   if(ObjectCreated(OBJ_RECTANGLE,name,t1,p1,t2,p2,chart_id))
     {
      ChangeIntager(name,OBJPROP_COLOR,clr,chart_id);
      ChangeIntager(name,OBJPROP_STYLE,style,chart_id);
      ChangeIntager(name,OBJPROP_WIDTH,width,chart_id);
      ChangeIntager(name,OBJPROP_SELECTABLE,false,chart_id);
      ChangeIntager(name,OBJPROP_BACK,back,chart_id);
      ChangeIntager(name,OBJPROP_FILL,fill,chart_id);
     }
   else
     {
      ChangeDouble(name,OBJPROP_PRICE,p1,0,chart_id);
      ChangeDouble(name,OBJPROP_PRICE,p2,1,chart_id);

      ChangeIntager(name,OBJPROP_TIME,t1,0,chart_id);
      ChangeIntager(name,OBJPROP_TIME,t2,1,chart_id);

      ChangeIntager(name,OBJPROP_COLOR,clr,chart_id);
      ChangeIntager(name,OBJPROP_STYLE,style,chart_id);
     }
  }
//+------------------------------------------------------------------+
void CDraw::Arrow(string name,datetime time,double price,bool is_buy=true,int type=0,int width=1,color clr_buy=clrAqua,color clr_sell=clrOrangeRed,long chart_id=0)
  {
   name=GetFullName(name);

// 12 типов
   int arrows_buy[]= {2,241,246,236,233,228,225,221,217,208,200,150,71};
   int arrows_sell[]= {1,242,248,238,234,230,226,222,218,212,202,153,72};

   ENUM_OBJECT obj_type=OBJ_ARROW;

   if(type==0)
     {
      if(is_buy)
         obj_type=OBJ_ARROW_BUY;
      else
         obj_type=OBJ_ARROW_SELL;
     }

   if(ObjectCreated(obj_type,name,time,price,chart_id))
     {
      ENUM_ARROW_ANCHOR anchor;
      int code;
      color clr;

      if(is_buy)
        {
         anchor=ANCHOR_TOP;
         code=arrows_buy[type];
         clr=clr_buy;
        }
      else
        {
         anchor=ANCHOR_BOTTOM;
         code=arrows_sell[type];
         clr=clr_sell;
        }

      ChangeIntager(name,OBJPROP_BACK,false,chart_id);
      ChangeIntager(name,OBJPROP_SELECTABLE,false,chart_id);

      ChangeIntager(name,OBJPROP_COLOR,clr,chart_id);
      ChangeIntager(name,OBJPROP_WIDTH,width,chart_id);
      ChangeIntager(name,OBJPROP_ANCHOR,anchor,chart_id);

      if(type!=0)
         ChangeIntager(name,OBJPROP_ARROWCODE,code,chart_id);
     }
// else
// {
// ChangeIntager(name,OBJPROP_TIME,time,chart_id);
// ChangeDouble(name,OBJPROP_PRICE,price,chart_id);
// }
  }
//+------------------------------------------------------------------+
void CDraw::Arrow(string name,datetime time,double price,color clr,int code,ENUM_ARROW_ANCHOR anchor,int width=1,long chart_id=0)
  {
   name=GetFullName(name);

   if(ObjectCreated(OBJ_ARROW,name,time,price,chart_id))
     {
      ChangeIntager(name,OBJPROP_BACK,false,chart_id);
      ChangeIntager(name,OBJPROP_SELECTABLE,false,chart_id);

      ChangeIntager(name,OBJPROP_COLOR,clr,chart_id);
      ChangeIntager(name,OBJPROP_WIDTH,width,chart_id);
      ChangeIntager(name,OBJPROP_ANCHOR,anchor,chart_id);
      ChangeIntager(name,OBJPROP_ARROWCODE,code,chart_id);
     }
// else
// {
// ChangeIntager(name,OBJPROP_COLOR,clr,chart_id);
// ChangeIntager(name,OBJPROP_TIME,time,chart_id);
// ChangeDouble(name,OBJPROP_PRICE,price,chart_id);
// }
  }
//+------------------------------------------------------------------+
void CDraw::Text(string name,datetime time,double price,string text,color clr,bool is_top,long chart_id=0)
  {
// Добавить типы
   name=GetFullName(name);

   if(ObjectCreated(OBJ_TEXT,name,time,price,chart_id))
     {
      ChangeIntager(name,OBJPROP_WIDTH,1,chart_id);
      ChangeIntager(name,OBJPROP_BACK,false,chart_id);
      ChangeIntager(name,OBJPROP_SELECTABLE,false,chart_id);
      if(is_top)
         ChangeIntager(name,OBJPROP_ANCHOR,ANCHOR_TOP,chart_id);
      else
         ChangeIntager(name,OBJPROP_ANCHOR,ANCHOR_BOTTOM,chart_id);
      ChangeString(name,OBJPROP_TEXT,text,chart_id);

      ChangeIntager(name,OBJPROP_COLOR,clr,chart_id);
     }
//// else
//// {
//// ChangeIntager(name,OBJPROP_COLOR,clr,chart_id);
//// ChangeIntager(name,OBJPROP_TIME,time,chart_id);
//// ChangeDouble(name,OBJPROP_PRICE,price,chart_id);
//// }
  }
//+------------------------------------------------------------------+
void CDraw::Metka(string name,datetime time,double price,color clr,bool is_buy=true,bool is_good=true,long chart_id=0)
  {
// Добавить типы
   name=GetFullName(name);

   if(ObjectCreated(OBJ_ARROW,name,time,price,chart_id))
     {
      int code=251;
      if(is_good)
         code=252;

      ChangeIntager(name,OBJPROP_WIDTH,2,chart_id);
      ChangeIntager(name,OBJPROP_BACK,false,chart_id);
      ChangeIntager(name,OBJPROP_SELECTABLE,false,chart_id);

      if(is_buy)
         ChangeIntager(name,OBJPROP_ANCHOR,ANCHOR_BOTTOM,chart_id);
      else
         ChangeIntager(name,OBJPROP_ANCHOR,ANCHOR_TOP,chart_id);

      ChangeIntager(name,OBJPROP_COLOR,clr,chart_id);
      ChangeIntager(name,OBJPROP_ARROWCODE,code,chart_id);
     }
// else
// {
// ChangeIntager(name,OBJPROP_COLOR,clr,chart_id);
// ChangeIntager(name,OBJPROP_TIME,time,chart_id);
// ChangeDouble(name,OBJPROP_PRICE,price,chart_id);
// }
  }
//+------------------------------------------------------------------+
void CDraw::Label(string name,int x,int y,color clr, ENUM_BASE_CORNER corner=CORNER_LEFT_UPPER,long chart_id=0)
  {
   Label(name,x,y,clr,name,corner,chart_id);
  }
//+------------------------------------------------------------------+
void CDraw::Label(string name,int x,int y,color clr, string text,ENUM_BASE_CORNER corner=CORNER_LEFT_UPPER,long chart_id=0)
  {
   name=GetFullName(name);

   if(ObjectCreated(OBJ_LABEL,name,chart_id))
     {
      // шрифт...
      ChangeIntager(name,OBJPROP_BACK,false,chart_id);

      ChangeIntager(name,OBJPROP_XDISTANCE,x,chart_id);
      ChangeIntager(name,OBJPROP_YDISTANCE,y,chart_id);
      ChangeString(name,OBJPROP_TEXT,text,chart_id);
      ChangeIntager(name,OBJPROP_COLOR,clr,chart_id);

      ENUM_ANCHOR_POINT anchor=ANCHOR_LEFT_UPPER;
      switch(corner)
        {
         case CORNER_LEFT_LOWER:
            anchor=ANCHOR_LEFT_LOWER;
            break;
         case CORNER_RIGHT_UPPER:
            anchor=ANCHOR_RIGHT_UPPER;
            break;
         case CORNER_RIGHT_LOWER:
            anchor=ANCHOR_RIGHT_LOWER;
            break;
        }

      ChangeIntager(name,OBJPROP_CORNER,corner,chart_id);
      ChangeIntager(name,OBJPROP_ANCHOR,anchor,chart_id);

     }
   else
     {
      ChangeIntager(name,OBJPROP_COLOR,clr,chart_id);
      ChangeString(name,OBJPROP_TEXT,text,chart_id);
     }
  }
//+------------------------------------------------------------------+
// Created
//+------------------------------------------------------------------+
bool CDraw::ObjectCreated(ENUM_OBJECT type, string name,long chart_id=0)
  {
   if(ObjectFind(chart_id,name)>=0)
      return(false);

   if(ObjectCreate(chart_id,name,type,0,0,0) && !m_redraw)
      m_redraw=true;

   return(true);
  }
//+------------------------------------------------------------------+
bool CDraw::ObjectCreated(ENUM_OBJECT type, string name,datetime t1,double p1,datetime t2,double p2,long chart_id=0)
  {
   if(ObjectFind(chart_id,name)>=0)
      return(false);

   if(ObjectCreate(chart_id,name,type,0,t1,p1,t2,p2) && !m_redraw)
      m_redraw=true;

   return(true);
  }
//+------------------------------------------------------------------+
bool CDraw::ObjectCreated(ENUM_OBJECT type, string name,datetime time,double price,long chart_id=0)
  {
   if(ObjectFind(chart_id,name)>=0)
      return(false);

   if(ObjectCreate(chart_id,name,type,0,time,price) && !m_redraw)
      m_redraw=true;

   return(true);
  }
//+------------------------------------------------------------------+
bool CDraw::ObjectCreated(ENUM_OBJECT type, string name,datetime time,long chart_id=0)
  {
   if(ObjectFind(chart_id,name)>=0)
      return(false);

   if(ObjectCreate(chart_id,name,type,0,time,0) && !m_redraw)
      m_redraw=true;

   return(true);
  }
//+------------------------------------------------------------------+
bool CDraw::ObjectCreated(ENUM_OBJECT type, string name,double price,long chart_id=0)
  {
   if(ObjectFind(chart_id,name)>=0)
      return(false);

   if(ObjectCreate(chart_id,name,type,0,0,price) && !m_redraw)
      m_redraw=true;

   return(true);
  }
//+------------------------------------------------------------------+
// Change
//+------------------------------------------------------------------+
void CDraw::ChangeIntager(string name, ENUM_OBJECT_PROPERTY_INTEGER property, long value, long chart_id)
  {
   if(ObjectGetInteger(chart_id,name,property)==value)
      return;

   if(ObjectSetInteger(chart_id,name,property,value) && !m_redraw)
      m_redraw=true;
  }
//+------------------------------------------------------------------+
void CDraw::ChangeIntager(string name, ENUM_OBJECT_PROPERTY_INTEGER property, long value, int index, long chart_id)
  {
   if(ObjectGetInteger(chart_id,name,property,index)==value)
      return;

   if(ObjectSetInteger(chart_id,name,property,index,value) && !m_redraw)
      m_redraw=true;
  }
//+------------------------------------------------------------------+
void CDraw::ChangeDouble(string name, ENUM_OBJECT_PROPERTY_DOUBLE property, double value,long chart_id)
  {
   if(ObjectGetDouble(chart_id,name,property)==value)
      return;

   if(ObjectSetDouble(chart_id,name,property,value) && !m_redraw)
      m_redraw=true;
  }
//+------------------------------------------------------------------+
void CDraw::ChangeDouble(string name, ENUM_OBJECT_PROPERTY_DOUBLE property, double value, int index,long chart_id)
  {
   if(ObjectGetDouble(chart_id,name,property,index)==value)
      return;

   if(ObjectSetDouble(chart_id,name,property,index,value) && !m_redraw)
      m_redraw=true;
  }
//+------------------------------------------------------------------+
void CDraw::ChangeString(string name, ENUM_OBJECT_PROPERTY_STRING property, string value, long chart_id)
  {
   if(ObjectGetString(chart_id,name,property)==value)
      return;

   if(ObjectSetString(chart_id,name,property,value) && !m_redraw)
      m_redraw=true;
  }
//+------------------------------------------------------------------+
// Service
//+------------------------------------------------------------------+
static color CDraw::GetMixColor(const color color1,const color color2,double mix,double step=16) // mix (0-1)
  {
   step= PUT_IN_RANGE(step,1.0,255.0);
   mix = PUT_IN_RANGE(mix,0.0,1.0);
   int r1,g1,b1;
   int r2,g2,b2;
   ColorToRGB(color1,r1,g1,b1);
   ColorToRGB(color2,r2,g2,b2);
   int r = PUT_IN_RANGE((int)MathRound(r1 + mix * (r2 - r1)), 0, 255);
   int g = PUT_IN_RANGE((int)MathRound(g1 + mix * (g2 - g1)), 0, 255);
   int b = PUT_IN_RANGE((int)MathRound(b1 + mix * (b2 - b1)), 0, 255);
   return(RGB_TO_COLOR(r, g, b));
  }
//+------------------------------------------------------------------+
static bool CDraw::ColorToRGB(const color c,int &r,int &g,int &b)
  {
   if(COLOR_IS_NONE(c))
      return(false);
   b = (c & 0xFF0000) >> 16;
   g = (c & 0x00FF00) >> 8;
   r = (c & 0x0000FF);
   return(true);
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+


//+------------------------------------------------------------------+
