# Programa de Pós-Graduação em Engenharia Elétrica e de Computação - PPgEEC
# Processos Estocásticos
# Primeiro Trabalho de Processos Estocásticos
#
#Rayleight
#Inversa da CDF
# @author Marco Olimpio - marco.olimpio -at- gmail -dot- com
# @author Rebecca Betwel - bekbetwel -at- gmail -dot- com

#Gerar valores em distribuição uniforme
uniforme<-runif(1000000)

#Fixando alfa com 1
alpha = 1
rayleight_a1 = data.frame(length = alpha*sqrt(-2*log(uniforme)))#
rayleight_a1$nome <- 'A1'
#Fixando alfa com 2
alpha = 2
rayleight_a2 = data.frame(length = alpha*sqrt(-2*log(uniforme)))#data.frame(length = sqrt(-alpha*log(1-uniforme)))
rayleight_a2$nome <- 'A2'
#Fixando alfa com 4
alpha = 4
rayleight_a4 = data.frame(length = alpha*sqrt(-2*log(uniforme)))#data.frame(length = sqrt(-alpha*log(1-uniforme)))
rayleight_a4$nome <- 'A4'
#Fixando alfa com 8
alpha = 8
rayleight_a8 = data.frame(length = alpha*sqrt(-2*log(uniforme)))#data.frame(length = sqrt(-alpha*log(1-uniforme)))
rayleight_a8$nome <- 'A8'
#Ajustando dados para a apresentação
uniaoDados <- rbind(rayleight_a1,rayleight_a2, rayleight_a4, rayleight_a8)

ggplot(uniaoDados, aes(length, fill = nome)) + geom_histogram(alpha = 0.4)
#ggplot(uniaoDados, aes(length, fill = nome)) + geom_bar(pos="dodge")
#hist(rayleight_a1)
#lines(density(rayleight_a1))



#Scale <- exp(1); shape <- exp(1)
#rdata <- data.frame(y = rgenray(n = 1000, scale = Scale, shape = shape))
#ggplot(rdata,aes(y)),binwidth = 1)+geom_histogram(alpha=0.4)









#carrots <- data.frame(length = rnorm(100000, 6, 2))
#cukes <- data.frame(length = rnorm(50000, 7, 2.5))

#Now, combine your two dataframes into one.  First make a new column in each.
#carrots$veg <- 'carrot'
#cukes$veg <- 'cuke'

#and combine into your new data frame vegLengths
#vegLengths <- rbind(carrots, cukes)

#now make your lovely plot
#ggplot(vegLengths, aes(length, fill = veg)) + geom_density(alpha = 0.2)