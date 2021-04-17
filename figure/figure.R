# Title     : Monte Carlo Simulation
# Objective :
# Created by: Adam Talarczyk, Mateusz Wrzol
# Created on: 15.04.2021

figure <- function(runs) {
  xs <- runif(runs, min = 0, max = 8)
  ys <- runif(runs, min = -0, max = 2)

  in.r_triangle <- xs <= 2 & ys <= 2 & ys <= xs
  in.mid_square <- xs <= 6 & xs >= 2 & ys <= 1
  in.l_triangle <- xs >= 6 &
    xs <= 8 &
    ys <= 1 &
    ys <= (-0.5 * xs + 4)
  in.mid_triangle <- xs >= 2 &
    xs <= 6 &
    ys >= 1 &
    ys <= (-0.25 * xs + 2.5)

  in_all_figures <- in.r_triangle +
    in.mid_square +
    in.mid_triangle +
    in.l_triangle

  mc_figure_field <- (sum(in_all_figures) / runs) * 16
  mc_exact_figure_field <- (2 * 2 / 2) + (1 * 4 / 2) + (1 * 2 / 2) + (1 * 4)

  mc.error <- abs(mc_exact_figure_field - mc_figure_field)
  plot(xs, ys,
       col = ifelse(in_all_figures, "blue", "grey"),
       xlab = '', ylab = '', asp = 1, pch = '.',
       main = paste("Figure field =", mc_figure_field, ", Result error =", mc.error))
}

figure(100000)