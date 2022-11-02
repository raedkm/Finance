

# install.packages("quantmod")


# Packages ----------------------------------------------------------------

library(quantmod)
library(dplyr)
library(Quandl)


# First command -----------------------------------------------------------

maxDate <- "20016-01-03"
amazon <- getSymbols("AMZN")
ford <- getSymbols('F') 

?quantmod
saveSymbolLookup()
loadSymbolLookup()



# Import the csv file
AAPL <- getFinancials('AAPL')

  # 'BS' for balance sheet, 'IS' for income statement, 'CF' for cash flow statement
    # 'A' for annual, 'Q' for quarterly
    #download Apple Income Statement last three quarters
AAPL.f$IS$Q
    
    
    
mydata = Quandl("OPEC/ORB")
