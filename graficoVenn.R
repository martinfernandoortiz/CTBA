 install.packages("ggVennDiagram")
library(ggVennDiagram)
library(tidyverse)

 
 library(readr)
 v_ctba <- read_delim("C:/Users/GCBA/Desktop/v_ctba.txt", 
                      "\t", escape_double = FALSE, col_types = cols(comprasporpersona = col_character(), 
                                                                    documento = col_character()), trim_ws = TRUE)
recurrencia1 <- v_ctba %>% filter(comprasporpersona=='1')
recurrencia2 <- v_ctba %>% filter(comprasporpersona=='2')
recurrencia3 <- v_ctba %>% filter(comprasporpersona=='3')
recurrencia4 <- v_ctba %>% filter(comprasporpersona=='4 ? m?s')

x <- list(A=recurrencia1$documento,
          B=recurrencia2$documento,
          C=recurrencia3$documento)#,
          D=recurrencia4$documento)



ggVennDiagram(x,category.names = c("Recurrencia 1",
                                   "Recurrencia 2",
                                   "Recurrencia 3"))


# AHORA HACEMOS ESTO