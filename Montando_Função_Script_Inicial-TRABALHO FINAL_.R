#TRABALHO FINAL-função p/ conversão de grau p/ decimal


# TABELA DE CONVERSAO:

# Um minuto (1') = (1/60)°
# Um segundo (1") = (1/3600)°


#EQUAÇÂO DE CONVERSAO:

# multiplicar o valor em graus, minutos e segundos pelos fatores de conversão
#gg° mm' ss" = gg° + mm . (1/60)° + ss . (1/3600)°



##script EXCEL p/ conversão de grau p/ decimal ORIGINAL##

# fonte: https://docs.microsoft.com/en-us/office/troubleshoot/excel/convert-degrees-minutes-seconds-angles

#Function Convert_Decimal(Degree_Deg As String) As Double
#    ' Declare the variables to be double precision floating-point.
#     Dim degrees     As Double
#     Dim minutes     As Double
#     Dim seconds     As Double
#    ' Set degree to value before "°" of Argument Passed.
#    degrees = Val(Left(Degree_Deg, InStr(1, Degree_Deg, "°") - 1))
#    ' Set minutes to the value between the "°" and the "'"
#    ' of the text string for the variable Degree_Deg divided by
#    ' 60. The Val function converts the text string to a number.
#    minutes = Val(Mid(Degree_Deg, InStr(1, Degree_Deg, "°") + 2, _
#    InStr(1, Degree_Deg, "'") - InStr(1, Degree_Deg, _
#    "°") - 2)) / 60
#    ' Set seconds to the number to the right of "'" that is
#    ' converted to a value and then divided by 3600.
#    seconds = Val(Mid(Degree_Deg, InStr(1, Degree_Deg,        '") + _
#    2, Len(Degree_Deg) - InStr(1, Degree_Deg,        '") - 2)) _
#    /3600
#    Convert_Decimal = degrees + minutes + seconds



##Elementos da função##

# NOME
# gravado como um  objetos,com uma atribuição '<-'. 
# Não pode iniciar com números ou '_', não pode ter hífen (subtração) ou ser nomes= de outras funções já existentes no R
# evitar acentos e cedilha 
# Pode usar'.' e '_' no meio do nome. Maiúsculas e minúsculas 
# caso sejam 2 palavras, una-as com ponto ou use a notacaoCamelo


# CHAVES { }: 
# uma função (ou programa) nada mais é do que uma sequência de instruções para o computador
# Para que o R entenda que todas instruções fazem parte de uma mesma função
# Sempre feche a chave após abri-la. Escreva entre as chaves


# ARGUMENTO
# É a forma do usuário enviar uma informação para a função.
# Note que esta informação é usada dentro da função .
# Não importa o nome que use para seus dados, ele será passado para o interior da função como 'nome do arguntento'


# CORPO
# 'ingredientes' ou informações básicas necessárias para outras partes da função


# SAIDA 
# Servem para instruir a função a dar o resultado final = a saída
# nada do que é criado dentro da função fica disponível para o usuário
# usamos o return() para enviar para o usuário o que interessa


##Possibilidades de como aplicar a função?

#Função de "centralizar" dentro da função (corpo) ex="centralizar<-function(x){(x-mean(x))}" 
#só que substituindo "mean" pela equação de conversão 
#teria que criar uma matriz ou meu dataset (planilha) já é equivalente a uma matriz 

#Somado a:

# *aplly dentro da função (corpo) 

#OU 

# Função apenas para conversão usa-se "*aplly(degreesToDecimals.convert)" para 
#aplicar a função nas linhas e colunas desejadas 





##FUNÇÂO

#checar nome no CRAN 
degreesToDecimals.convert <- function(){}


