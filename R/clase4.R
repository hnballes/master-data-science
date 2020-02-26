#plot basico
plot(murders$total,murders$population/10^5)
plot(murders$total,murders$population/10^5, pch="*",col="red")
abline(a=0,b=1)
abline(a=0,b=2)
lm(murders$population/10^5 ~ murders$total)

abline(a=9.138,b=0.28, lty=2)
points(200,0,pch="o")
par(new=T) #para superponer los plots
plot(murders$total,murders$population/10^5, pch="*",col="red", xlim=c(0,1300),ylim=c(0,500),xlab="total",ylab = "population")

##histograma
hist(murders$total)
hist(murders$total, breaks=10)

#ggplot

murders%>% ggplot(aes(x=population/10^5,y=total,col=region))+geom_point()

#ejercicio life expectancy
datos<-read_csv("DataSet/life-expectancy-and-fertility-two-countries-example.csv")
datos_tidy<-datos %>% 
  pivot_longer(
        cols = -country, 
        names_to = c("year","variable"),
        names_pattern = "(.{4})_(.*)",
        names_ptypes = list(year = integer()),
        values_to = "value")

datos_wide<-datos_tidy %>% 
  pivot_wider(names_from=variable, values_from=value)

datos_wide%>%ggplot(aes(col=country))+geom_line(aes(year,life_expectancy))+geom_line(aes(year,fertility))

##hacerlo en dos graficas separadas
g<-ggplot(aes(col=country))
p1<-dibjar una
p2<-dibujar la otra
library(gridExtra)
grid.arrange(pi,p2, ncol=2)

library(gganimate)
years<-c(1962,1980,1990,2000,2012)
continents<-c("Europe","Asia")
g<-gapminder%>%filter(year %in% years & continent %in% continents)%>%ggplot(aes(fertility,life_expectancy, col=continent))+ geom_point()+transition_states(year,transition_length=1, state_length=1)+ggtitle("year{closest_state}")
animate(g)

