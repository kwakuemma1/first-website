ipak <- function(pkg){
  new.pkg <- pkg[!(pkg %in% installed.packages()[, "Package"])]
  if (length(new.pkg)) 
    install.packages(new.pkg) #, dependencies = TRUE
  sapply(pkg, require, character.only = TRUE)
}
ipak("all.primer.tutorials")
ipak("tidycensus.tutorials")
library(r4ds.tutorials)
