##############################################################################
# Programa de Pós-Graduação em Engenharia Elétrica e de Computação - PPgEEC
# Processos Estocásticos
# Primeiro Trabalho de Processos Estocásticos
#
# F Distribution
#
# @author Marco Olimpio - marco.olimpio -at- gmail -dot- com
# @author Rebecca Betwel - bekbetwel -at- gmail -dot- com
##############################################################################

#Utiliza duas distribuição Chi-Square
#Página 208 da referencia

#Numero de amostras
n = 100
m = 200
dstChisquareR1 = rchisq(n,1)
dstChisquareR2 = rchisq(n,2)
dstFSnedecor = (dstChisquareR1/n)/(dstChisquareR2/m)
plot(density(dstFSnedecor),main="Distribuição F de Sednecor")

dstFSnedcorR = rf(n, 1, 2)
plot(density(dstFSnedcorR),main="Distribuição F de Sednecor R")
