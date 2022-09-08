# Simulate two independent groups

library(tidyverse)

# Simulation based on descriptive statistics ----
dat <- data.frame(
  score = round(c(
    rnorm(100, mean = 10, sd = 3),
    rnorm(100, mean = 12, sd = 3)
  ), digits = 1),
  group = factor(rep(c(1, 2), each = 100))
)

# Simulation based on effect size ----
cohen_d_es <- 0.3
n <- 100
grp1_mean <- 100
sd <- 10

dat <- data.frame(
  score = round(c(
    rnorm(n, mean = grp1_mean, sd = sd),
    rnorm(n, mean = grp1_mean + sd * cohen_d_es, sd = sd)
  ), digits = 1),
  group = factor(rep(c(1, 2), each = 100))
)