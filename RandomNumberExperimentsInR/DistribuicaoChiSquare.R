##############################################################################
# Programa de Pós-Graduação em Engenharia Elétrica e de Computação - PPgEEC
# Processos Estocásticos
# Primeiro Trabalho de Processos Estocásticos
#
# Chi-Square Distribution
#
# @author Marco Olimpio - marco.olimpio -at- gmail -dot- com
# @author Rebecca Betwel - bekbetwel -at- gmail -dot- com
##############################################################################

#Utiliza uma distribuição uniforme e uma distribuição gaussiana onde
# wi = -2(ln x1 + ... + ln xn) + (Zi)^2

i = 1
valor <- 0
#Numero de amostras
n = 100
#Criacao de vetor de V.A.s com distribuicao Uniforme
dstUniforme = runif(n)
#Criacao de vetor de V.A.s com distribuiçao N[0,1]
dstGaussiana = rnorm(n, mean = 0, sd = 1)
#ln (X_i)^1 + ... + ln (X_i)^m
for (value_i in dstUniforme) {
  valor <- valor + log((value_i^i), base = exp(1))
  i <- i+1
}
dstChisquare = -2*valor + dstGaussiana^2

#hist(dstUniforme)
#plot(density(dstUniforme),main="Uniforme")
#hist(dstGaussiana)
#plot(density(dstUniforme),main="Gaussiana")
#hist(dstChisquare)#, main = "Chi-Square")
plot(density(dstChisquare), main="Distribuição Chi-square Gerador Próprio")

dstChisquareR = rchisq(n,1)
plot(density(dstChisquareR),main="Distribuição Chi-square R")