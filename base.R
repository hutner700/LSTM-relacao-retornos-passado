#install.packages("keras")
#install.packages("tensorflow")
library('quantmod')
library('zoo')
library('keras')
library('tensorflow')
library('reticulate')
conda_version()
use_condaenv("keras-tf", required = T)

from <- as.Date("2015-01-01")
to <- as.Date("2020-01-01")
acao <- "VALE3.SA"
df_intc <- getSymbols(acao,src='yahoo',auto.assign=FALSE,from=from,to=to)[,6]
colnames(df_intc) <- c("Fechamento")
head(df_intc)
