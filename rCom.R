# rm
rm(Datasheet, minUpTempElite,t)

# load csv
# ,2 specifies which sheet
library(readxl)
ds <- read_excel("~/Downloads/Datasheet.xlsx",2)
ls()

# titles
bta = ds$`Product Name Final`
table(nchar(bta)>80)["TRUE"]

# replace "for" with "fits
bt1 = bta
bt1 = gsub("for","fits",bt1)
bt1

# char length
table(nchar(bt1)>80)["TRUE"]
which(nchar(bt1)>80)

# for loop iterate over vector
for (i in 1:length(bt1)) {
  if(nchar(bt1[i])>80) { 
    bt1[i] = gsub("Stainless Steel","Stainless",bt1[i])
    bt1[i] = gsub("20","",bt1[i])
    bt1[i] = gsub(" - ","-",bt1[i])
  } 
}

# char check final form
table(nchar(bt1)>80)["TRUE"]
which(nchar(bt1)>80)
bt = bt1
bt

