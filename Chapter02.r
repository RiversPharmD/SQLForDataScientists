

library(tidyverse)
library(DBI)

## Write a query that returns everything in the customer table

q1 <- tbl(con, "customer")

q1 <- dbGetQuery(con,'
                 select *,
                 from "customer"
                 ')
