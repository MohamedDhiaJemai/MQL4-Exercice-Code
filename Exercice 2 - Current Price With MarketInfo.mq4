//+------------------------------------------------------------------+
//|                                Current Price With MarketInfo.mq4 |
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
int commission=1;
int i = 0;
void OnTick()
  {
   
   //MQL Get Current Price
   //Get Ask and Bid of the current pair with MarketInfo 
   //and save the values in variables
   double PriceAsk=MarketInfo(0,MODE_ASK);
   double PriceBid=MarketInfo(0,MODE_BID);
   double digital=MarketInfo(0,MODE_DIGITS);
   
   while(i<digital){
         commission=commission*10;
         i=i+1;
   }
   
   int diff = (PriceAsk-PriceBid)*commission;
   
   Comment("Bid="+PriceBid+"\nAsk="+PriceAsk,"\nNbre après virgule = ",(digital),"\nCommission = ",diff);
   
  }
//+------------------------------------------------------------------+
