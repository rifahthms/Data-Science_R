airq<-datasets::airquality

#top 10 and bottom 10
head(airq,10)
tail(airq,10)

#slicing
airq[,c(1,2)]
df<-airq[,-6]

#descriptive statistics
summary(airq)
summary(airq[,1])

#getting data points from a particular column 
airq$Wind

#plots
plot(airq$Wind)
plot(airq$Temp,airq$Wind,type="p")
plot(airq)
plot(airq$Ozone,type="l", ylab='ozone conc',xlab='no of instances',main='ozone levels in NY',col='red')

#bar plot
barplot(airq$Ozone, main = 'Ozone Concenteration in air',
        ylab = 'ozone levels', xlab = 'no.', col= 'blue', horiz =T, axes=T)

#histogram
hist(airq$Temp)
hist(airq$Solar.R, 
     main = 'Solar Radiation values in air',
     xlab = 'Solar rad.', col='blue')

#boxplot
boxplot(airq$Temp,main="Temp_Boxplot")

#multiple box plot
boxplot(airq,main='Multiple')

#margin of the grid(mar), 
#no of rows and columns(mfrow), 
#position of the labels(las: 1 for horizontal, las: 0 for vertical)
#bty - box around the plot (o or n)
# par creates a context. 

par(mfrow=c(3,3),mar=c(2,5,2,1),  las=0, bty="o")

plot(airq$Ozone)
plot(airq$Ozone, airq$Wind)
plot(airq$Ozone, type= "l")
plot(airq$Ozone, type= "l")
plot(airq$Ozone, type= "l")
barplot(airq$Ozone, main = 'Ozone Concenteration in air',
        xlab = 'ozone levels', col='green',horiz = T)
hist(airq$Solar.R)
boxplot(airq$Solar.R)
boxplot(airq[,1:4], main='Multiple Box plots')
