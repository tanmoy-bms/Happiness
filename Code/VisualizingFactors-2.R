# Correlation between columns
Num.cols <- sapply(Happiness, is.numeric)
Cor.data <- cor(Happiness[, Num.cols])

corrplot(Cor.data, method = 'color') 

#Not considering Happiness Rank

newdatacor = cor(Happiness[c(4:11)])
corrplot(newdatacor, method = "number")
