##PRIMEIRO EXERCICIO BIOLOGIA QUANTITATIVA - MONITORIA: ANA TERRA E MARCELA##

#INTRODUCAO AO R:

#O simbolo jogo da velha e usado para indicar linha de comentario
#se houver o simbolo jogo da velha a linha e ignorada pelo R

#O R tem um conjunto de dados exemplo chamado trees
#Vamos visualizar:
?trees
View(trees)

#Agora vamos buscar os dados sumarizados
?summary
summary(trees)

#EXERCICIO PARA OS ALUNOS (resolvido):

#use o comando plot do R para visualizar os dados deste conjunto de dados
plot(trees)

#use os comandos de media e variancia para obter a media e variancia da 
#altura, volume e diametro das 30 arvores

#Media#

#mean(nome do dataset $ nome da coluna) - funcao p/ calcular a media
# $ indica a coluna dentro do dataset onde sera aplicada a funcao mean

#Diametro(Girth):
mean(trees$Girth)

#Altura(Height):
mean(trees$Height)

#Volume(Volume):
mean(trees$Volume)

#Variancia#

#var(nome do dataset $ nome da coluna) - funcao p/ calcular a variancia
# $ indica a coluna dentro do dataset onde sera aplicada a funcao var

#Diametro(Girth):
var(trees$Girth)

#Altura(Height):
var(trees$Height)

#Volume(Volume):
var(trees$Volume)

#OU#

# apply(nome do dataset, 1 ou 2 , função) - aplica uma funcao em todas as colunas de uma vez
# 1=seleciona as linhas do dataset
# 2=seleciona as colunas do dataset

apply(trees,2,mean)
apply(trees,2,var)

#grave o script com um novo nome e extensao .R
#sincronize com o seu repositorio no github e faca um pull request para 
#o repositorio mestre
#edite o documento do teams fazendo o seu passo a passo





