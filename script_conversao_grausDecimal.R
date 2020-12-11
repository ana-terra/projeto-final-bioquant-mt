
###SCRIPT CONVERSAO DE DADOS ESPACIAIS EM "DMS" PARA "DD" COM O PACOTE BIOGEO###

#Carregar pacotes necessarios
#leitura da planilha
library(readxl)

#Conversao dos dados geograficos DMS p/ DD com a funcao dms2dd
library(biogeo)

#Planilha modelo darwin core com dados geograficos em Graus, minutos e segundos (DMS)
dados <- read_excel("C:/Users/User/Downloads/Biologia Quantitativa/Trabalho Final- Material/planilha_darwinCore_conversão.xlsx")
View(dados)

#Planilha dados convertidos decimal (DD) p/ comparacao
coordenadas_decimal <- read_excel("C:/Users/User/Downloads/Biologia Quantitativa/Trabalho Final- Material/coordenadas_decimal.xlsx")
View(coordenadas_decimal)


### Preparacao dos dados ###

#Subtraindo a primeira linha da planilha com os termos darwin core
dados <- dados[-1,]

#Verificar os nomes das colunas 
names(dados)

# Transformação da coluna referente a latitude em um vetor para ser usado na funcao
latitude_original <- dados$decimalLatitude...19

# Transformação da coluna referente a longitude em um vetor para ser usado na funcao
longitude_original <- dados$decimalLongitude...20


### Conversao Latitude ###

#Argumentos da funcao "dms2dd" devem ser numericos
#"as.numeric"= converte o vetor em charactere para vetor numerico
#"subtr"= seleciona a porcao da cordenada corresponente a:
#graus, minutos, segundos e hemisferio (N ou S e L ou W)
#de acordo com sua posicao relativa (ex: grau corresponde aos 2 primeiros numeros, logo= 1,2)

#Argumentos
ddlat <- as.numeric(substr(latitude_original, 1,2))
mmlat <- as.numeric(substr(latitude_original, 4,5))
sslat <- as.numeric(substr(latitude_original, 9,12))
nslat <- "S"

# Passando o resultado da funcao para um vetor
latitudeFinal <- dms2dd(ddlat, mmlat, sslat, nslat)

#visualizacao do resultado
latitudeFinal


### Conversao Latitude ###

#Argumentos
ddlong <- as.numeric(substr(longitude_original, 1,2))
mmlong <- as.numeric(substr(longitude_original, 4,5))
sslong <- as.numeric(substr(longitude_original, 9,12))
nslong <- "W"

# Passando o resultado da funcao para um vetor
longitudeFinal <- dms2dd(ddlong, mmlong, sslong, nslong)

#visualizacao do resultado 
longitudeFinal







