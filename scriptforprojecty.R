library(tidyverse)
library(zoo)
library(vroom)


berniedf <- berniekeyness %>% as_tibble()

head(berniedf, 15) %>% arrange(desc(Keyness)) %>% 
  ggplot(aes(x = reorder(Keyword, -Effect), y = Effect)) + 
  geom_bar(stat = 'Identity')
