library(tidyverse)
ipt2 <- installed.packages(fields = "URL") %>%
  as_tibble()

ipt2 %>%
  mutate(github = grepl("github", URL)) %>%
  count(github) %>%
  mutate(prop = n / sum(n))
