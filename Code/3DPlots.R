#Freedom and Life Expectancy

scatter3D(Happiness$Freedom, Happiness$Life.Expectancy, Happiness$Happiness.Score, phi = 0, bty = "g",
          pch = 20, cex = 2, ticktype = "detailed",
          main = "Happiness data", xlab = "Freedom",
          ylab ="Life.Expectancy", zlab = "Happiness.Score")


#Scatter Plot for Economy

sp <- ggscatter(Happiness, x = "Economy", y = "Happiness.Score",
                color = "Continent", palette = "jco",
                size = 3, alpha = 0.6)
# Create box plots of x/y variables

# Box plot of the x variable
xbp <- ggboxplot(Happiness$Economy, width = 0.3, fill = "lightgray") +
  rotate() +
  theme_transparent()
# Box plot of the y variable
ybp <- ggboxplot(Happiness$Happiness.Score, width = 0.3, fill = "lightgray") +
  theme_transparent()
# Create the external graphical objects
# called a "grop" in Grid terminology
xbp_grob <- ggplotGrob(xbp)
ybp_grob <- ggplotGrob(ybp)
# Place box plots inside the scatter plot
xmin <- min(Happiness$Economy); xmax <- max(Happiness$Economy)
ymin <- min(Happiness$Happiness.Score); ymax <- max(Happiness$Happiness.Score)
yoffset <- (1/15)*ymax; xoffset <- (1/15)*xmax
# Insert xbp_grob inside the scatter plot
sp + annotation_custom(grob = xbp_grob, xmin = xmin, xmax = xmax, 
                       ymin = ymin-yoffset, ymax = ymin+yoffset) +
  # Insert ybp_grob inside the scatter plot
  annotation_custom(grob = ybp_grob,
                    xmin = xmin-xoffset, xmax = xmin+xoffset, 
                    ymin = ymin, ymax = ymax)












































































#Generosity and Economy

scatter3D(Happiness$Generosity, Happiness$Economy, Happiness$Happiness.Score, phi = 0, bty = "g",
          pch = 20, cex = 2, ticktype = "detailed",
          main = "Happiness data", xlab = "Generosity",
          ylab ="Economy", zlab = "Happiness.Score")

#Trust and Freedom

scatter3D(Happiness$Trust, Happiness$Freedom, Happiness$Happiness.Score, phi = 0, bty = "g",
          pch = 20, cex = 2, ticktype = "detailed",
          main = "Happiness data", xlab = "Trust",
          ylab ="Freedom", zlab = "Happiness.Score")

#Trust and Economy

scatter3D(Happiness$Family, Happiness$Economy, Happiness$Happiness.Score, phi = 0, bty = "g",
          pch = 20, cex = 2, ticktype = "detailed",
          main = "Happiness data", xlab = "Trust",
          ylab ="Economy", zlab = "Happiness.Score")