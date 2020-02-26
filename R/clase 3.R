##################################################################################
####comparar la media del peso de los bebes de madres fumadoras y no fumadoras ###
##################################################################################

babies<-read.delim("DataSets/babies.txt",sep="\t",header=T)
head(babies)
fumadora<-babies[babies$smoke==1,]
mediafumadoras<-mean(fumadora$bwt)
nofumadora<-babies[babies$smoke==0,]
medianofumadoras<-mean(nofumadora$bwt)
#mean(babies$bwt[babies$smoke==0]) otra forma

#########usar Dyplr
#buscar quien tiene mayor mortalidad infantil si turkia o sri lanka
ex1<-gapminder %>% filter(year=="2015" & country %in% c("Sri Lanka", "Turkey")) %>% select(country, infant_mortality)

##calcular la media y la desviacion de unas alturas
heights_summary<- heights %>% filter(sex=="Female") %>% summarize(average=mean(height), standard_deviation=sd(height))

heights %>% group_by(sex)%>%summarize(av=mean(height))

###pasar dataframe formato wide a formato tidy
co2_tidy<-co2_wide %>% 
  pivot_longer(
    cols = "1":"12", 
    names_to = "mes", 
    names_ptypes = list(mes = character()),
    values_to = "CO2",
    values_drop_na = TRUE)
