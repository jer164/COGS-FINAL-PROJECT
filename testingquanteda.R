library(tidyverse)
library(quanteda)
library(quanteda.textstats)

pilled_comments <- read.table("~/Documents/Data Projects/COGS FINAL PROJECT/pilled_comments.txt", 
                              sep=";", 
                              quote="\"") %>% as.character()

pilled_comment <- corpus(pilled_comments) %>% 
      tokens() 

test <- dfm(pilled_comment)
                              


textstat_frequency(test, n=100)
textstat_keyness()