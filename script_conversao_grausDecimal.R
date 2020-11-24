
#SCRIPT CONVERSAO DE DADOS ESPACIAIS - GRAUS PARA DECIMAIS#

# planilha dados em graus p/ conversão
library(readxl)
planilha_coordenadas_graus <- read_excel("C:/Users/User/Downloads/Biologia Quantitativa/Trabalho Final- Material/planilha_coordenadas_graus.xlsx")
View(planilha_coordenadas_graus)

# planilha dados em decimal p/ comparação
library(readxl)
coordenadas_decimal <- read_excel("C:/Users/User/Downloads/Biologia Quantitativa/Trabalho Final- Material/coordenadas_decimal.xlsx")
View(coordenadas_decimal)