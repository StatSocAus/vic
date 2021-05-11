

library(tidyverse)
library(janitor)
dat <- read_csv("SSA T-Shirt Draw (Responses) - Form responses 1.csv") %>% 
  clean_names() %>% 
  mutate(name = paste(first_name, last_name)) 

set.seed(1337 + 17)
dat %>% 
  filter(!duplicated(name)) %>%   # one duplicate - remove
  sample_n(size = 1) %>% 
  select(name)


