


library(dplyr)
library(stringr)



# Reading instock names ---------------------------------------------------

stock_input <- read_csv("Input/Tadawul_Stockver2", col_names = FALSE) 

#reordering intor three columns by row
stock <- matrix(stock_input$X1, ncol = 3, byrow = TRUE) %>% 
  as_tibble() %>% 
  mutate(IndexSR = ".SR") %>% 
  rename(Index = V1, Name = V2, Sector = V3) %>% 
  #select(Index, Name, Sector) %>% 
as.data.frame()

  

str_c(..., sep = "", collapse = NULL) Join
multiple strings into a single string.
str_c(letters, LETTERS)



Index <-  paste0(stock$Index, stock$IndexSR, ", ")



write.table(Index, file = "Output/Data/Saudi_Index.txt", append = FALSE, sep = ",",
            row.names = FALSE, col.names = TRUE)
