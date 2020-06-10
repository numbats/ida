library(googlesheets4)
library(tidyverse)
googlesheets4::gs4_auth(email = "nicholas.tierney@monash.edu")

final_groups <- read_sheet("https://docs.google.com/spreadsheets/d/1YZAhzZvrPyIPHsTl0MGsLiNzL4U1s2-AbdO0SdFufyk/edit#gid=323156061",
                     sheet = "project-final-milestone",
                     .name_repair = janitor::make_clean_names) %>% 
  filter(enrolled == "Enrolled") %>%
  select(username,
         email_address,
         project_group)

write_csv(final_groups, "groups/final_groups.csv")