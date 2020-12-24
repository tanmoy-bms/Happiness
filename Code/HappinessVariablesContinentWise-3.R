#Comparison of Continents

Happiness.Continent <- Happiness %>%
  select(-3) %>%
  group_by(Continent) %>%
  summarise_at(vars(-Country), funs(mean(., na.rm=TRUE)))

# Melting the "Happiness.Continent" dataset
Happiness.Continent.melt <- melt(Happiness.Continent)


# Faceting
ggplot(Happiness.Continent.melt, aes(y=value, x=Continent, color=Continent, fill=Continent)) + 
  geom_bar( stat="identity") +    
  facet_wrap(~variable) + theme_bw() +
  theme(axis.text.x = element_text(angle = 90, hjust = 1)) +
  labs(title = "Average value of happiness variables for different continents", 
       y = "Average value")

