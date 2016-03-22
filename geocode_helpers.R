#Setup by install helpers:
source("https://raw.githubusercontent.com/dkahle/ggmap/897267760fb28550913f6a8435e18bb8c82c639e/R/helpers.R")
#Install / load "RJSONIO" package:
if (!require("RJSONIO")) {
  install.packages("RJSONIO", repos="http://cran.rstudio.com/") 
  library("RJSONIO")
}
