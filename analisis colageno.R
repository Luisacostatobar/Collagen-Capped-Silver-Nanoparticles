library(statsr)
Data <- Data_Acosta
Data$Rt <- as.factor(Data$Rt)

m1 <- aov(A450 ~ Rt, data=Data)
summary(m1)
TukeyHSD(m1)
boxplot(A450 ~ Rt, data=Data)


#Rt10
Data_Rt10 = subset(Data, Rt=="10")
m1_Rt10 <- aov(A450 ~ t, data=Data_Rt10)
anova(m1_Rt10)
boxplot(A450 ~ t, data=Data_Rt10)
citation("statsr")