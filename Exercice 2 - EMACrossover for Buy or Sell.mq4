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
   double lastSlowMA = iMA(NULL,0,5,0,MODE_EMA,PRICE_CLOSE,1);
   
   double fastMA = iMA(NULL,0,3,0,MODE_EMA,PRICE_CLOSE,0);
   double lastFastMA = iMA(NULL,0,3,0,MODE_EMA,PRICE_CLOSE,1);
 
   double priceCrossover =0;
    
   if(lastFastMA == lastSlowMA)
   priceCrossover=fastMA;
   Comment(priceCrossover);
   
   if((lastFastMA < lastSlowMA)&&(fastMA > slowMA))
   Comment ("EMA : BUY");
   
   if ((lastFastMA > lastSlowMA)&&(fastMA < slowMA))
   Comment("EMA : SELL");
      
    
   
  }
//+------------------------------------------------------------------+
