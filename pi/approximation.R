# Title     : PI approximation
# Objective :
# Created by: Adam Talarczyk, Mateusz Wrzol
# Created on: 10.04.2021

approximation <- function(runs = 1000) {
  xs <- runif(runs, min = -0.5, max = 0.5)
  ys <- runif(runs, min = -0.5, max = 0.5)
  in.circle <- xs^2 + ys^2 <= 0.5^2
  mc.pi <- (sum(in.circle) / runs) * 4
}