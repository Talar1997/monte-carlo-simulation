# Title     : Avarage absolute difference
# Objective :
# Created by: Adam Talarczyk, Mateusz Wrzol
# Created on: 10.04.2021

source('pi/approximation.R')

avarage_absolute_difference <- function(runs, sequences = 100) {
  pi.vector <- NULL
  for (i in seq(1, sequences, by = 1))
  {
    mc.pi <- approximation(runs)
    pi.vector <- append(pi.vector, mc.pi)
  }

  avarage_pi <- mean(pi.vector, trim = 0, na.rm = FALSE)
  avarage_difference <- abs(3.14159265 - avarage_pi)

  dataset <- data.frame(
    step = runs,
    pi_value = pi.vector,
    avg_pi = avarage_pi,
    avg_diff = avarage_difference
  )
}
