# Programa de Pós-Graduação em Engenharia Elétrica e de Computação - PPgEEC
# Processos Estocásticos
# Primeiro Trabalho de Processos Estocásticos
#
# Gaussiana
# 
# @author Marco Olimpio - marco.olimpio -at- gmail -dot- com
# @author Rebecca Betwel - bekbetwel -at- gmail -dot- com

#Gerar valores em distribuição uniforme
unif0<-runif(100000)
unif1<-runif(100000)
unif2<-runif(100000)
unif3<-runif(100000)
unif4<-runif(100000)
unif5<-runif(100000)
unif6<-runif(100000)
unif7<-runif(100000)
unif8<-runif(100000)
unif9<-runif(100000)

gaussianaTCentral = unif0 +unif1 + unif2 +unif3 + unif4 + unif5 + unif6 + unif7 + unif8 + unif9

hist(gaussianaTCentral)
lines(density(gaussianaTCentral))