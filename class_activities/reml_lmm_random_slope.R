library(HLMdiag)

set.seed(29234)

# simulation parameters
ni <- 40 # observations per group
m <- 15 # number of groups
var_x <- 1 
var_e <- 1
var_u <- 2
beta0 <- 1 # overall intercept
beta1 <- 3 # overall slope

# generate group ids and X
group_id <- rep(1:m, each=ni)
x_means <- rnorm(m, sd=sqrt(var_x))[group_id]
x <- x_means + rnorm(ni*m)

# generate u, e, and Y
a <- rnorm(m, sd = sqrt(var_u))[group_id]
b <- rnorm(m, sd = 1)[group_id]
y <- beta0 + a + beta1*x + b*x + rnorm(m*ni, sd=sqrt(var_e))

# fit the (mis-specified) LMM
m1 <- lme4::lmer(y ~ x + (x|group_id))
m2 <- lme4::lmer(y ~ x + (x|group_id), REML = F)

summary(m1)

data.frame(lme4::VarCorr(m1))$vcov


X <- lme4::getME(m1, "X")
Z <- lme4::getME(m1, "Z") |> as.matrix()

# projection matrix
P <- X %*% solve(t(X) %*% X) %*% t(X)

# take first (n-p) rows of I - P
L <- diag(ni*m) - P
L <- L[1:(ni*m - 2),]

# double check these were linearly independent
qr(L)$rank 

reml_log_lik <- function(theta){
  G <- theta[1:2] * diag(2*m)
  for(i in seq(1, (m-1), 2)){
    G[i, i+1] <- G[i+1, i] <- theta[3]
  }
  R <- theta[4] * diag(ni*m)
  S <- Z %*% G %*% t(Z) + R
  SL <- L %*% S %*% t(L)
  as.numeric(determinant(SL)$modulus) +
    t(L %*% y) %*% solve(SL) %*% L %*% y
}

optim(c(1, 1, 0, 1), 
      reml_log_lik)$par

optim(c(1, 1, 0, 1), 
      reml_log_lik, 
      method = "L-BFGS-B",
      lower = c(0, 0, -1, 0),
      upper = c(Inf, Inf, 1, Inf))$par





log_lik_mm <- function(theta, beta_hat){
  G <- theta[1:2] * diag(2*m)
  for(i in seq(1, (m-1), 2)){
    G[i, i+1] <- G[i+1, i] <- theta[3]
  }
  R <- theta[4] * diag(ni*m)
  S <- Z %*% G %*% t(Z) + R
  Sinv <- solve(S)
  
  as.numeric(determinant(S)$modulus) +
    (t(y - as.numeric(X %*% beta_hat)) %*% Sinv %*% 
       (y - as.numeric(X %*% beta_hat)))
}


beta_hat <- summary(m2)$coefficients[,1]
optim(c(1, 1, 0, 1), 
      function(theta) log_lik_mm(theta, beta_hat),
      method = "BFGS")$par

