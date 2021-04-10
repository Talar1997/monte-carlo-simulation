# Title     : Zadanie 1
# Objective : Zadanie 1
# Created by: Adam Talarczyk, Krystian Budulski, Mateusz Wrzoł
# Created on: 10.04.2021

approximation <- function(runs = 1000) {
  #runif samples from a uniform distribution
  xs <- runif(runs, min = -0.5, max = 0.5)
  ys <- runif(runs, min = -0.5, max = 0.5)
  in.circle <- xs^2 + ys^2 <= 0.5^2
  mc.pi <- (sum(in.circle) / runs) * 4

  drawPlot(xs, ys, mc.pi, in.circle, runs)

  return(mc.pi)
}

drawPlot <- function(xs, ys, pi, in.circle, runs) {
  plot(xs, ys, pch = '.', col = ifelse(in.circle, "blue", "red"), xlab = "", ylab = "",
       asp = 1, main = paste("MC Approximation of Pi =", pi, "for", runs, "runs"))
}