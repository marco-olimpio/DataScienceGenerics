##############################################################################
# Programa de Pós-Graduação em Engenharia Elétrica e de Computação - PPgEEC
# Processos Estocásticos
# Primeiro Trabalho de Processos Estocásticos
#
# Integração pelo método de Monte Carlo
#
# @author Marco Olimpio - marco.olimpio -at- gmail -dot- com
# @author Rebecca Betwel - bekbetwel -at- gmail -dot- com
##############################################################################

############################################Questão a
#Definição da expressão
f = function(x) exp(-x^2)   

#Criação da curva
curve(f(x), -0.5,0.5, ylim=c(0.75, 1.05))

#Criação dos pontos para o método de integração de Monte Carlo
#1000 pontos
N = 1000
points(runif(N, -0.5,0.5), runif(N,0,2))#Exemplificação

#Checagem 
# Soma se o número gerado na função f for maior que o número aleatório 0,2 isso tudo dividido pelo n´úmero de pontos vezes a área
sum( f( runif(N, -0.5,0.5) ) > runif(N,0, 2))/N * (1*2)

#Resultado para 1000 Integral = [1] 0.896

N = 10000
points(runif(N, -0.5,0.5), runif(N,0,2))#Exemplificação

#Checagem 
# Soma se o número gerado na função f for maior que o número aleatório 0,2 isso tudo dividido pelo n´úmero de pontos vezes a área
sum( f( runif(N, -0.5,0.5) ) > runif(N,0, 2))/N * (1*2)
#Resultado para 10000 Integral = [1] 0.9198

N = 100000
points(runif(N, -0.5,0.5), runif(N,0,2))#Exemplificação

#Checagem 
# Soma se o número gerado na função f for maior que o número aleatório 0,2 isso tudo dividido pelo n´úmero de pontos vezes a área
sum( f( runif(N, -0.5,0.5) ) > runif(N,0, 2))/N * (1*2)
#Resultado para 100000 Integral = [1] 0.91784

#Resultado da integral 0.922562
#(0.91784/0.922562)*100
#[1] 99.48816





############################################Questão b
#Definição da expressão
f = function(x) exp(-x^2) * cos(x)  

#Criação da curva
curve(f(x), 0, 2, ylim=c(0, 1.05))

#Criação dos pontos para o método de integração de Monte Carlo
#1000 pontos
N = 1000
points(runif(N, 0,2), runif(N,0,2))#Exemplificação
sum( f( runif(N, 0, 2) ) > runif(N,0,2))/N * (2*2)
#Resultado da integração [1] 0.74

N = 10000
points(runif(N, 0,2), runif(N,0,2))#Exemplificação
sum( f( runif(N, 0, 2) ) > runif(N,0,2))/N * (2*2)
#Resultado da integração [1] 0.6864

N = 100000
points(runif(N, 0,2), runif(N,0,2))#Exemplificação
sum( f( runif(N, 0, 2) ) > runif(N,0,2))/N * (2*2)
#Resultado da integração [1] 0.69808

#Resultado da integral 0.692611
#(0.69808/0.692611)*100
#[1] 100.7896