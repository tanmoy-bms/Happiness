# Load in plotly country codes
codes <- read.csv('plotly_countries_and_codes.csv')
colnames(codes)[1] <- 'Country'

# Merge dataframes
df <- merge(x = Happiness, y = codes, by = 'Country', all.x = TRUE)
df$CODE <- as.character(df$CODE)

df <- df[, -c(5, 6, 14)]

which(is.na(df$CODE))

df$Country[c(32, 33, 66, 95, 103, 106, 126, 128)]

df$CODE[c(32, 33, 66, 95, 103, 106, 126, 128)] <- c("COG", "COD", "CIV", "MMR", "CYP", "ISR","SOM", "KOR")
# No more missing values
sum(is.na(df))

df$Country[c(6)]

df$CODE[c(6)] <- c("ARM")

plot_ly(type = 'choropleth', text = df$Country, locations = df$CODE, 
        locationmode = 'ISO-3', z = df$Happiness.Score, width = 900) %>%
  layout(title = 'Happiness Score By Country',
         geo = list(showframe = FALSE, showcoastlines = FALSE, 
                    projection = list(type = 'Mercator')),
         autosize = F,
         margin = list(l = 50, r = 50, b = 50, t = 50, pad = 4)) %>%
  colorbar(title = 'Happiness Score')