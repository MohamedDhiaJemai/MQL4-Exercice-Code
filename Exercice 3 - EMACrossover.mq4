//+------------------------------------------------------------------+
//|                                                 EMACrossover.mq4 |
//|                        Copyright 2020, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2020, MetaQuotes Software Corp."
#property link      "https://www.mql5.com"
#property version   "1.00"
#property strict
//+------------------------------------------------------------------+
//| Expert initialization function                                   |
//+------------------------------------------------------------------+
int OnInit()
  {
	double priceCrossover=0;
//---
   
//---
   return(INIT_SUCCEEDED);
  }
//+------------------------------------------------------------------+
//| Expert deinitialization function                                 |
//+------------------------------------------------------------------+
void OnDeinit(const int reason)
  {
//---
   
  }
//+------------------------------------------------------------------+
//| Expert tick function                                             |
//+------------------------------------------------------------------+
void OnTick()
  {
   
   double slowMA = iMA(NULL,0,5,0,MODE_EMA,PRICE_CLOSE,0);
   //double lastSlowMA = iMA(NULL,0,5,0,MODE_EMA,PRICE_CLOSE,1);
   
   double fastMA = iMA(NULL,0,3,0,MODE_EMA,PRICE_CLOSE,0);
   //double lastFastMA = iMA(NULL,0,3,0,MODE_EMA,PRICE_CLOSE,1);
   
   float x =(float)slowMA;
   float y =(float)fastMA;
   
   if(z==y){
      priceCrossover=x;
   }   
   
   while(priceCrossover>0)
   {
      Comment("Moving Average 1 : ",x,"  |  Moving Average 2 : ",y,"  |  Difference : ",(x-y),"  |  Croissement à : ", priceCrossover);
      ObjectCreate(_Symbol,"Croisement",OBJ_HLINE,0,0,x);  
      ObjectSetInteger(0,"Croisement",OBJPROP_COLOR,clrRed);
      ObjectSetInteger(0,"Croisement",OBJPROP_WIDTH,3);
      ObjectMove(_Symbol,"Croisement",0,0,x);
   }

   
    
   
  }
//+------------------------------------------------------------------+
