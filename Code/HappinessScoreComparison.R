gg1 <- ggplot(Happiness,
              aes(x=Continent,
                  y=Happiness.Score,
                  color=Continent))+
  geom_point() + theme_bw() +
  theme(axis.title = element_text(size = (8)))

gg2 <- ggplot(Happiness , aes(x = Continent, y = Happiness.Score)) +
  geom_boxplot(aes(fill=Continent)) + theme_bw() +
  theme(axis.title = element_text(size = (8)))

gg3 <- ggplot(Happiness,aes(x=Continent,y=Happiness.Score))+
  geom_violin(aes(fill=Continent),alpha=0.7)+ theme_bw() +
  theme(axis.title = element_text(size = (8)))

# Compute descriptive statistics by groups
stable <- desc_statby(Happiness, measure.var = "Happiness.Score",
                      grps = "Continent")
stable <- stable[, c("Continent","mean","median")]
names(stable) <- c("Continent", "Mean of happiness score","Median of happiness score")
# Summary table plot
stable.p <- ggtexttable(stable,rows = NULL, 
                        theme = ttheme("classic"))

ggarrange(gg1, gg2, ncol = 1, nrow = 2)

#Rearranging design
ggarrange(gg3, stable.p, ncol = 1, nrow = 2)
