# Title     : Avarage absolute difference
# Objective : For arg runs, make for loop for sequences number (default 1000)
# Created by: Adam Talarczyk, Krystian Budulski, Mateusz Wrzoł
# Created on: 10.04.2021

avarage_absolute_difference <- function(runs, sequences = 100) {
  pi.vector <- NULL
  for (i in seq(0, sequences, by = 1))
  {
    # FIXME: niektóre liczby zwracane ma 4 cyfry (3.1500) a niektóre 6 cyfer (3.134133)
    mc.pi <- approximation(runs)
    pi.vector <- append(pi.vector, mc.pi)
  }

  avarage <- mean(pi.vector, trim = 0, na.rm = FALSE)

  absolute_difference <- abs(avarage - pi)

  print(avarage)
  print(absolute_difference)
}