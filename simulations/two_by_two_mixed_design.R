# Two-by-two mixed design simulation

library(faux) # Simulation for factorial designs

A <- rnorm_multi(
  n = 100,
  vars = 2, # Two observations from each subject
  mu = c(0, 1),
  sd = 1,
  r = 0.75, # Correlation between observations
  varnames = c("x", "y")
)

B <- rnorm_multi(
  n = 100,
  vars = 2,
  mu = c(0, 0.5),
  sd = 1,
  r = 0.75,
  varnames = c("x", "y")
)

dat <- rbind(A, B)
group <- rep(x = c("a", "b"), each = 100)
dat$group <- group
