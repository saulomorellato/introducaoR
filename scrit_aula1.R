### PACOTES ###

library(readxl)     # pacote para carregar arquivos excel
library(gtsummary)  # pacote para contruir tabelas



### CALCULADORA ###

# CONTAS SIMPLES

2+2 # Soma
8-3 # Subtração
3*8 # Multiplicação
8/2 # Divisão
2^8 # Potências
(2+4)/7 # Prioridade de solução


# ATRIBUINDO VALORES A OBJETOS

a <- 2  # atribuindo um valor ao objeto "a"
b <- 3  # atribuindo um valor ao objeto "b"
a+b  # somando "a" e "b"

A <- 5  # atribuindo um valor ao objeto "A"
a*A  # multiplicando "a" e "A"



### FUNCOES ###

# EXEMPLOS

log(x = 8) # Logaritmo natural de 8
rep(x = 1, times = 4) # Repetir o valor 1 quatro vezes
sum(1, 8, 79) # Soma de vários valores


# ESTRUTURA DAS FUNCOES

log(x = 8, base = 2) # Logaritmo de 8 na base 2, especificando cada argumento.
log(8, 2) # Logaritmo de 8 na base 2, seguindo a ordem dos argumentos na função.
log(base = 2, x = 8) # Logaritmo de 8 na base 2, mudando a ordem dos argumentos. Note...
log(2, 8) # ... que o resultado é diferente se os argumentos não são especificados.

log(x = 8, base = exp(1)) # Logaritmo de 8 na base natural. Isso é o mesmo...
log(8) # ... se o argumento base não for especificado


# AJUDA SOBRE AS FUNCOES

help(log) # Abre a ajuda da função log, ou então...
?log # ... também abre a ajuda



### ESTATISTICA DESCRITIVA ###

# VALORES EM UM VETOR

x <- c(2, 15, 7, 8, 9, 1) # criando o vetor de valores (amostra)
x  # visualizando o vetor x
x[3]  # visualizando o terceiro elemento do vetor x
x[2:4]  # visualizando do segundo ao quarto elemento de x


# ESTATISTICA BASICA P/ AMOSTRA

mean(x)  # média de x
median(x)  # mediana de x
sd(x)  # desvio padrão de x
summary(x)  # sumário (resumo) de x


# VARIAVEL QUALITATIVA

y <- c("aprovado", "aprovado", "recuperação", "reprovado", "aprovado",
       "recuperação", "aprovado", "aprovado", "recuperação", "reprovado")
y  # visualizando y
mean(y)  # média de y? não funciona
summary(y)  # sumário de y? não funciona
class(y)  # "classe de y" = character
y <- factor(y)  # transformando y em factor
summary(y)  # sumário (resumo) de y



### CARREGANDO DADOS ###

# .TXT

dados_txt <- read.table("iris.txt", header=TRUE)


# .CSV

dados_csv <- read.csv("iris.csv")


# .XLS OU .XLSX (EXCEL)

dados_excel <- read_excel("iris.xlsx")  # SO PODE USAR APOS CARREGAR O PACOTE readxl



### MANIPULANDO DADOS ###

# ELEMENTOS DO DATA FRAME

dados <- read_excel("iris.xlsx")
dados[2,3]  # segundo elemento da terceira coluna
dados[3,1]  # terceiro elemento da primeira coluna
dados$Species[1:4]  # 4 primeiros elementos da variável Species


# MANIPULANDO DATA FRAME

str(dados)  # analisando a estrutura do data frame
dados$Species <- factor(dados$Species)  # transformando a variável Species em factor
summary(dados)  # sumário do data frame


# TABELA DE RESULTADOS

tbl_summary(dados)  # SO PODE USAR APOS CARREGAR O PACOTE gtsummary


# TABELA DE RESULTADOS - versao 2

tbl_summary(dados,
            statistic=list(all_continuous() ~ "{mean} ({sd})",
                           all_categorical() ~ "{n} ({p}%)"))


# TABELA DE RESULTADOS - versao 3

tbl_summary(dados,
            by=Species,
            statistic=list(all_continuous() ~ "{mean} ({sd})",
                           all_categorical() ~ "{n} ({p}%)"))
