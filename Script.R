###################################
####   Script - Libro Series   ####
###################################

#library(bookdown)
library(rmarkdown)

dir.main <- "/Users/Diego/Dropbox/EPN/Libro Series"
dir.cap <- "/Users/Diego/Dropbox/EPN/Libro Series/Capitulos"


system("xelatex -interaction=batchmode book_series ")
system("makeindex book_series")
system("xelatex -interaction=batchmode book_series ")
system("xelatex -interaction=batchmode book_series ")