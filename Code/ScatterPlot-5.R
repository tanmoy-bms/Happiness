#Life Expectancy

ggplot(subset(Happiness, Happiness$Continent != "Australia"), aes(x = Life.Expectancy, y = Happiness.Score)) + 
  geom_point(aes(color=Continent), size = 3, alpha = 0.8) +  
  geom_smooth(aes(color = Continent, fill = Continent), 
              method = "lm", fullrange = TRUE) +
  facet_wrap(~Continent) +
  theme_bw() + labs(title = "Scatter plot with regression line")

#Economy

ggplot(subset(Happiness, Happiness$Continent != "Australia"), aes(x = Economy, y = Happiness.Score)) + 
  geom_point(aes(color=Continent), size = 3, alpha = 0.8) +  
  geom_smooth(aes(color = Continent, fill = Continent), 
              method = "lm", fullrange = TRUE) +
  facet_wrap(~Continent) +
  theme_bw() + labs(title = "Scatter plot with regression line")

#Freedom

ggplot(subset(Happiness, Happiness$Continent != "Australia"), aes(x = Freedom, y = Happiness.Score)) + 
  geom_point(aes(color=Continent), size = 3, alpha = 0.8) +  
  geom_smooth(aes(color = Continent, fill = Continent), 
              method = "lm", fullrange = TRUE) +
  facet_wrap(~Continent) +
  theme_bw() + labs(title = "Scatter plot with regression line")

#Trust

ggplot(subset(Happiness, Happiness$Continent != "Australia"), aes(x = Trust, y = Happiness.Score)) + 
  geom_point(aes(color=Continent), size = 3, alpha = 0.8) +  
  geom_smooth(aes(color = Continent, fill = Continent), 
              method = "lm", fullrange = TRUE) +
  facet_wrap(~Continent) +
  theme_bw() + labs(title = "Scatter plot with regression line")

#Generosity

ggplot(subset(Happiness, Happiness$Continent != "Australia"), aes(x = Generosity, y = Happiness.Score)) + 
  geom_point(aes(color=Continent), size = 3, alpha = 0.8) +  
  geom_smooth(aes(color = Continent, fill = Continent), 
              method = "lm", fullrange = TRUE) +
  facet_wrap(~Continent) +
  theme_bw() + labs(title = "Scatter plot with regression line")

#Family

ggplot(subset(Happiness, Happiness$Continent != "Australia"), aes(x = Family, y = Happiness.Score)) + 
  geom_point(aes(color=Continent), size = 3, alpha = 0.8) +  
  geom_smooth(aes(color = Continent, fill = Continent), 
              method = "lm", fullrange = TRUE) +
  facet_wrap(~Continent) +
  theme_bw() + labs(title = "Scatter plot with regression line")

#Dystopia

ggplot(subset(Happiness, Happiness$Continent != "Australia"), aes(x = Dystopia.Residual, y = Happiness.Score)) + 
  geom_point(aes(color=Continent), size = 3, alpha = 0.8) +  
  geom_smooth(aes(color = Continent, fill = Continent), 
              method = "lm", fullrange = TRUE) +
  facet_wrap(~Continent) +
  theme_bw() + labs(title = "Scatter plot with regression line")
