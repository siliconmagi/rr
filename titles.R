# remove all objects
rm(list=ls())

# read in product names from csv
library(readxl)
ds <- read_excel("~/Downloads/Datasheet.xlsx",2)
ls()
ds$`Product Name Final`
