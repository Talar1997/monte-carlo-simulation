# Title     : Monte Carlo Simulation
# Objective :
# Created by: Adam Talarczyk, Mateusz Wrzol
# Created on: 16.04.2021

library("xlsx")
source('pi/avarage_difference.R')

calculate <- function(steps, sequences) {
  diff.vector <- NULL
  dataset <- data.frame()

  for (runs in steps)
  {
    diff <- avarage_difference(runs, sequences)
    dataset <- rbind(dataset, diff)
    diff.vector <- append(diff.vector, diff[1, 'diff'])
  }

  export_dataset(dataset)
  draw_plot(steps, diff.vector)
}

export_dataset <- function(dataset){
  write.xlsx(dataset, file = "pi/export/data.xlsx", sheetName="PI")
}

draw_plot <- function(steps, results) {
  plot(steps, results, xlab = 'Rozmiar probki', ylab = 'Blad aproksymacji', col = 'black')
}

sequence <- c(1,10,100,1000,10000,100000,1000000)
calculate(sequence, 10)