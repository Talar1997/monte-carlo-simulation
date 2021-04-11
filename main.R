# Title     : Monte Carlo Simulation
# Objective :
# Created by: Adam Talarczyk, Krystian Budulski, Mateusz Wrzoł
# Created on: 10.04.2021

source('pi/approximation.R')
source('pi/avarage_absolute_difference.R')

calculate_and_make_plot <- function(min, max, step) {
  print("Calculating...")
  steps <- seq(min, max, by = step)

  avarage.diffs <- NULL
  for (runs in steps)
  {
    print(paste('Counting for step', runs))
    avarage.absolute.difference <- avarage_absolute_difference(runs)
    avarage.diffs <- append(avarage.diffs, avarage.absolute.difference)
  }

  make_plot(steps, avarage.diffs, min, max)
}

make_plot <- function(steps, results, min_limit, max_limit) {
  plot(steps, results, xlab = 'Rozmiar próbki', ylab = 'Błąd aproksymacji', col = 'black',
       xlim=c(min_limit, max_limit))
}

calculate_and_make_plot(10000, 105000, 100)
