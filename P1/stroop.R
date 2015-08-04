library("ggplot2")

setwd("~/udacity/DataAnalystNanoDegree/P1")

stroop <- read.csv("stroopdata.csv")

boxplot(stroop)

stroop$Difference <- stroop$Incongruent - stroop$Congruent

ggplot(stroop) + 
      geom_density(aes(x = Difference), fill = "lightblue", col = "thistle4", alpha = .8, size = 1)  +
      xlab("Seconds") +
      ggtitle("Density plot of difference between incongruent and congruent times") 
