# Title     : Monte Carlo Simulation
# Objective :
# Created by: Adam Talarczyk, Mateusz Wrzol
# Created on: 16.04.2021

library("xlsx")
source('pi/avarage_absolute_difference.R')

calculate_and_make_plot <- function(steps, sequences) {
  diff.vector <- NULL
  dataset <- data.frame()

  for (runs in steps)
  {
    difference <- avarage_absolute_difference(runs, sequences)
    dataset <- rbind(dataset, difference)
    diff.vector <- append(diff.vector, difference[1, 'avg_diff'])
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

# calculate_and_make_plot(seq(0, 1000000, by = 10000))
sequence <- c(1,500,1000,10000,50000,100000,500000,1000000)
calculate_and_make_plot(sequence, 10)