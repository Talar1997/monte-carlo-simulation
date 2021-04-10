# Title     : Zadanie 2
# Objective : Zadanie 2
# Created by: Adam Talarczyk, Krystian Budulski, Mateusz Wrzoł
# Created on: 10.04.2021

integral <- function() {
  runs <- 10000
  sims <- rnorm(runs, mean = 1, sd = 10)
  mc.integral <- sum(sims >= 3 & sims <= 6) / runs

  return(mc.integral)
}
