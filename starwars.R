library(dplyr)
library(skimr)
library(sqldf)

summary(starwars)
data(starwars)
starwars
help(starwars)
?starwars

#Gerar gráfico de barras (Demonstrar a quantidade de espécies existentes)
table(starwars$species)
barplot(table(starwars$species), main = "Quantidade de Espécies na Base de Dados",
        xlab = "Espécies", ylab = "Frequência", col = "darkgreen",
        ylim = c(0,40), breaks = c(10,20,30,40,50))

#Gerar gráfico de barras (Demonstrar a quantidade de gêneros existentes)
table(starwars$gender)
barplot(table(starwars$gender), main = "Gêneros de Espécies na Base de Dados",
        xlab = "Gêneros", ylab = "Frequência", col = "black", ylim = c(0,70))

#Relatório simples de dados no console - data-frame - função "skim"
skim(starwars)
