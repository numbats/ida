library(googlesheets4)
library(tidyverse)
googlesheets4::sheets_auth(email = "nicholas.tierney@monash.edu")

groups <- read_sheet("https://docs.google.com/spreadsheets/d/1YZAhzZvrPyIPHsTl0MGsLiNzL4U1s2-AbdO0SdFufyk/edit#gid=0",
                     .name_repair = janitor::make_clean_names) %>% 
  filter(enrolled == "Enrolled") %>% 
  select(username,
         email_address,
         group)

# create zoom rooms
zoom_col_names <- c("Pre-assign Room Name",
                    "Email Address")

zoom_rooms <- groups %>% 
  group_by(group) %>% 
  tidyr::nest() %>%
  ungroup() %>% 
  mutate(room = rep(x = 1:9,
                    length.out = 37)) %>% 
  tidyr::unnest(cols = c(data)) %>% 
  select(room, email_address) %>% 
  tibble::add_row(room = 7, email_address = "rejitha.ravindra@monash.edu") %>% 
  tibble::add_row(room = 7, email_address = "isab0001@student.monash.edu ") %>% 
  mutate(room = paste0("room ", room)) %>% 
  setNames(zoom_col_names)

write_csv(zoom_rooms, "groups/zoom-groups.csv")
          
          