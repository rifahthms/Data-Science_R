#calling a dataset on airquality
aquality <- datasets::airquality

#first and last 10 datapoints
head(aquality,10)
tail(aquality,10)

#slicing
aquality[,c(1,2)]

#excluding a column
df<-aquality[,-6]

#descriptive statistics
summary(aquality[1,])

#alternate method to call a column
aquality$Temp
summary(aquality$Temp)

#plot
plot(aquality)
plot(aquality$Temp)
plot(aquality$Ozone,aquality$Temp,type='p')

#bar plot
barplot(aquality$Ozone,xlab = 'ozone value', main = 'ozone conc', col="blue", horiz=F, axes=T)

#histogram
hist(aquality$Ozone)

#boxplot
boxplot(aquality$Ozone)

boxplot(aquality[,1:3])

#mu;tiple plots on same screen
par(mar=c(1,1,1,1), mfrow=c(2,2), bty="o", las=1)

plot(aquality$Ozone)
plot(aquality$Temp)
boxplot(aquality$Solar.R)
boxplot(aquality$Ozone)

#skewness, kurtosis - downloaded 'moments'package
skewness(aquality$Ozone, na.rm=T)
kurtosis(aquality$Temp)
var(aquality$Ozone, na.rm=T)
sd(aquality$Ozone,na.rm=T)
