#Asia
corrgram(Happiness %>% select(-3) %>% filter(Continent == "Asia"), order=TRUE,
         upper.panel=panel.cor, main="Happiness Matrix for Asia")

#Afria
corrgram(Happiness %>% select(-3) %>% filter(Continent == "Africa"), order=TRUE,
         upper.panel=panel.cor, main="Happiness Matrix for Africa")

#Europe
corrgram(Happiness %>% select(-3) %>% filter(Continent == "Europe"), order=TRUE,
         upper.panel=panel.cor, main="Happiness Matrix for Europe")

#North America
corrgram(Happiness %>% select(-3) %>% filter(Continent == "North America"), order=TRUE,
         upper.panel=panel.cor, main="Happiness Matrix for North America")

#South America
corrgram(Happiness %>% select(-3) %>% filter(Continent == "South America"), order=TRUE,
         upper.panel=panel.cor, main="Happiness Matrix for South America")
