e_quakes<-datasets::quakes
e_quakes_top10<-head(e_quakes,10)

summary(e_quakes)

plot(e_quakes)
plot(e_quakes$lat,e_quakes$depth,type="l",col='red',xlab='lateral',ylab='depth',main='lat vs depth')

plot(e_quakes_top10$lat,e_quakes_top10$mag,type="l",col='blue',ylab='magnitude',xlab='latitude')

barplot(e_quakes$lat,horiz = T,axes=T)

hist(e_quakes$lat)

boxplot(e_quakes$lat)

par(mfrow=c(3,3),mar=c(2,2,2,2),las=0,bty='o')

plot(e_quakes$lat)
plot(e_quakes$mag)
barplot(e_quakes$depth)
hist(e_quakes$stations)
boxplot(e_quakes$depth)
plot(e_quakes[,1])

#skewness, kurtosis, standard dev, variance

var(e_quakes,na.rm = T)

sd(e_quakes$lat,na.rm=T)
sd(e_quakes$long)
sd(e_quakes$depth)
sd(e_quakes$mag)
sd(e_quakes$stations)

skewness(e_quakes$lat,na.rm=T)
kurtosis(e_quakes)
