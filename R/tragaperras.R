########################################################################
###Define wheel & probs
########################################################################

wheel<-c("D","7","BBB","BB","B","C","*")
wheel.prob<-c(0.03,0.03,0.06,0.1,0.25,0.01,0.52)
names(wheel.prob)=wheel

########################################################################
#FUNCION GET SYMBOLS
########################################################################
get_symbols<-function(wheel,wheel.prob){
  tirada<-sample(wheel,3,replace=T,prob = wheel.prob)
  return(tirada)
}

#######################################################################
#FUNCION SCORE
#######################################################################

score<-function(tirada){
  equal<-tirada[1]==tirada[2] & tirada[1]==tirada[3]
  bars<- all(tirada %in% c("B","BB","BBB"))  
  nc<-all(sum(tirada=="C"))
  
  if (equal&tirada[1]!="*"){
    if (tirada[1]=="D"){
      prize<-100}else if (tirada[1]=="7"){
        prize<-80}else if (tirada[1]=="BBB"){
          prize<-40}else if (tirada[1]=="BB"){
            prize<-25}else{
              prize<-10}
    print(paste("Sorpresón!! ",prize))
  }else if (bars | nc==2){
    prize<-5
    print(paste("Congrats ",prize))
  }else if(nc==1){
    prize<-2
    print(paste("not bad ",prize))
  }else{print("No prize")
    prize<-0}
}
#################################################
#PLAY
###################################################

play<-function(){
  tirada<-get_symbols(wheel,wheel.prob)
  print(tirada)
  prize<-score(tirada)
}