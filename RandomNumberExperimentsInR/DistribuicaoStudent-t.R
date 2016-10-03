##############################################################################
# Programa de Pós-Graduação em Engenharia Elétrica e de Computação - PPgEEC
# Processos Estocásticos
# Primeiro Trabalho de Processos Estocásticos
#
# Student t
#
# @author Marco Olimpio - marco.olimpio -at- gmail -dot- com
# @author Rebecca Betwel - bekbetwel -at- gmail -dot- com
##############################################################################

#Utiliza uma distribuição normal e uma distribuição Chi-square onde
# wi = xi/sqrt(yi/n)

#Numero de amostras
n = 1000000

#Criacao de vetor de V.A.s com distribuicao N[0,1]
dstGaussiana = runif(n)
plot(density(dstGaussiana),main="Gaussiana")

#Criacao de vetor de V.A.s com distribuicao Xˆ2 com 5 graus de liberdade
dstChisquare = rchisq(n,5)
plot(density(dstChisquare),main="Distribuição Chi-square")

#Criacao do vetor de V.A.s com ditribuicao Student t, Papoulis 4th edicao, pg. 295
dstStudent = dstGaussiana/sqrt(dstChisquare/n)

qplot(dstStudent, geom="histogram")
plot(density(dstStudent),main="Density Estimate of the Mixture Model")
