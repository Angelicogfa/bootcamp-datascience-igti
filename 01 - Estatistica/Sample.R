rm(list=ls(all=TRUE)) #Remove objetos da memória do R

#Cria o data frame contendo o historico de vendas do cafe

dados <-data.frame(Vendas_Cafe = c(18, 20, 23, 23, 23, 23, 24, 25, 26, 26, 26, 26, 27, 28, 28, 29, 29, 30, 30, 31, 31, 33, 34, 35, 38, 39, 41, 44, 44, 46),Preco_Cafe = c(4.77, 4.67, 4.75, 4.74, 4.63, 4.56, 4.59, 4.75, 4.75, 4.49, 
1774.41, 4.32, 4.68, 4.66, 4.42, 4.71, 4.66, 4.46, 4.36, 4.47, 4.43, 4.4, 4.61, 4.09, 3.73, 3.89, 4.35, 3.84, 3.81, 3.79),Promocao  =  c("Nao",  "Nao",  "Nao",  "Nao",  "Nao",  "Nao",  "Nao", "Nao", "Sim", "Nao",  "Sim",  "Nao",  "Nao",  "Sim",  "Sim",  "Nao",  "Sim", "Sim", "Sim",  "Nao",  "Nao",  "Sim",  "Sim",  "Sim",  "Nao",  "Sim", "Sim", "Sim", "Sim", "Sim"),Preco_Leite = c(4.74, 4.81, 4.36, 4.29, 4.17, 4.66, 4.73, 4.11, 4.21, 4.25, 4.62,  4.53,  4.44,  4.19,  4.37,  4.29,  4.57,  4.21,  4.77,  4, 4.31, 4.34, 4.05, 4.73, 4.07, 4.75, 4, 4.15, 4.34, 4.15) )

#visualiza a media (mean) e outras estatisticas descritivas das variaveis

summary(dados)

#Visualiza desvio padrao (standard deviation) das variaveis
sd(dados$Vendas_Cafe)
sd(dados$Preco_Cafe)
sd(dados$Preco_Leite)

#Visualiza atravesde um histograma a distribuicao da variavel Preco_Cafe
hist(dados$Preco_Cafe)

hist(dados$Preco_Cafe,col = 'blue',main = 'Distribuicao dos Preços Praticados para o Café')

#Visualiza o histograma das tres variaveis numericas na mesma paginapar(mfrow=c(2,2))  #Configura  layout  para  posicionar  os  graficos  em  duas  linhas  e duas colunashist(dados$Vendas_Cafe,col = 'blue',main = 'Distribuicao das Vendas do Café')hist(dados$Preco_Cafe,col = 'blue',main = 'Distribuicao dos Preços do Café')hist(dados$Preco_Leite,col = 'blue',main = 'Distribuicao dos Preços do Leite')dev.off() #limpa os graficos e volta o layout para configuracao normal#Visualiza relacao entre as vendas do café o preço do caféplot(y = dados$Vendas_Cafe,x = dados$Preco_Cafe)
#Customiza o grafico
plot(y = dados$Vendas_Cafe,x = dados$Preco_Cafe,pch = 16,col = 'blue',xlab = 'Preço',ylab = 'Quantidade Vendidade',main= 'Relação entre o Preço e as Vendas do Café')
grid() 
#este comando adiciona linhas de grade ao grafico