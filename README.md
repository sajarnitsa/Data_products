Historical stock data with Bollinger bands
===
author: VV
date: 21/11/2015
transition: rotate

Retrieving Historical data
========================================================
transition: rotate

-  This app calculates the historical value of any stock listed in the NY stock market

-  The data is retrieved from the yahoo site, 
-  The plot are the logarithmic values of the adjusted close of the stock
-  The plot uses bar charts. 


The Bollinger bands
========================================================
transition: rotate

- The Bollinger bands *https://en.wikipedia.org/wiki/Bollinger_Bands* are curves
that measure the "highness" or "lowness" of the price of a stock relative to previous trades.

- The default value is (20,2) which indicates 2 standard
deviations above the 20-day simple moving average.

- Some strategies:  a) buy when price touches the lower Bollinger Band and exit when price touches the moving average in the center of the bands. b)  buy when price breaks above the upper Bollinger Band or sell when price falls below the lower Bollinger Band.

The Consumer Price Index 
========================================================
transition: rotate

- A consumer price index (CPI) measures changes in the price level of a market basket of consumer goods and services purchased by households. *https://en.wikipedia.org/wiki/Consumer_price_index*

- As an economic indicator the CPI is the most widely used measure of inflation. The CPI is an indicator of the effectiveness of government fiscal and monetary policy. Especially for inflation targeting monetary policy by the Federal Reserve.

The app
========================================================
transition: rotate

- The app uses the libraries quantmode() and shiny()

```{r, eval=FALSE}
library(shiny)
```

- In order to use run the app in your computer you should have R installed
- Create a folder called Bollinger in your R  working directory
- Move the files server.R, ui.R and Bollinger.R to the folder Bollinger
- run the app inside Rstudio using "runApp("Bollinger")"



```{r, eval=FALSE}
runApp("Bollinger")
```


