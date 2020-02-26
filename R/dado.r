m<-matrix(c(11:14,21:24,31:34),nrow=4,byrow=T)
m<-matrix(c(11:14,21:24,31:34),nrow=5,byrow=T)
palo=rep(c("oros","bastos","copas","espadas"), each=10)
numero<-rep(c(1:7,10:12),4)
puntos<-rep(c(11,0,10,rep(0,4),7,8,9),4)
baraja<-data.frame(numero, palo,puntos)
throw<-function(dado){
  return(sample(dado,1))
}
throw<-function(dado){
  dado<-rep(1,6)
  return(sample(dado,1))
}
shuffle<-function(baraja){
  return(baraja[sample(1:40,40),])
}
deal<-function(){
  barajaS<-shuffle(baraja)
  return(barajaS[1,])
}

a<-3.14
dec <- a - trunc(a)
dec
if (dec>=0.5){a<- trunc(a)+1}else{a<-trunc(a)} 