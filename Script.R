###################################
####   Script - Libro Series   ####
###################################

#library(bookdown)
library(rmarkdown)

dir.main <- "/Users/Diego/Dropbox/EPN/Libro Series"
dir.cap <- "/Users/Diego/Dropbox/EPN/Libro Series/Capitulos"

dir.main <- "/Users/usuario4/Dropbox/EPN/Libro Series"
dir.cap <- "/Users/usuario4/Dropbox/EPN/Libro Series/Capitulos"


#### Capitulos ####
setwd(dir.cap)
file.create("Cap7.tex")
file.edit("Cap7.tex")


#### Execution ####
system("xelatex -interaction=batchmode book_series ")
system("makeindex book_series")
system("xelatex -interaction=batchmode book_series ")
system("xelatex -interaction=batchmode book_series ")
