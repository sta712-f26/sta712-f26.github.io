set.seed(5163)

ni <- 10 # observations per group
m <- 5 # number of groups
var_x <- 1 
var_e <- 1
var_u <- 2
beta0 <- 1 # overall intercept
beta1 <- 0 # overall slope

# generate group ids and X
group_id <- rep(1:m, each=ni)
x_means <- rnorm(m, sd=sqrt(var_x))[group_id]
x <- x_means + rnorm(ni*m)

# generate u, e, and Y
u <- rnorm(m, sd=sqrt(var_u))[group_id]
y <- beta0 + u + beta1*x + rnorm(m*ni, sd=sqrt(var_e))

# fit the mixed model with a random intercept
m_sim <- lme4::lmer(y ~ x + (1|group_id))
data.frame(lme4::VarCorr(m_sim))$vcov
m_sim2 <- lme4::lmer(y ~ x + (1|group_id), REML = F)
data.frame(lme4::VarCorr(m_sim2))$vcov
summary(m_sim)$coefficients



# design matrix for fixed effects, X
X <- lme4::getME(m_sim, "X")

# design matrix for random effects, Z
Z <- lme4::getME(m_sim, "Z") |> as.matrix()

# variance estimates theta
theta <- data.frame(lme4::VarCorr(m_sim))$vcov

# covariance matrix for Y
G <- theta[1] * diag(5)
R <- theta[2] * diag(ni*m)
S <- Z %*% G %*% t(Z) + R
Sinv <- solve(S)

# estimated coefficients
as.numeric(solve(t(X) %*% Sinv %*% X) %*% t(X) %*% Sinv %*% y)





log_lik_mm <- function(theta, beta_hat){
  G <- theta[1] * diag(5)
  R <- theta[2] * diag(ni*m)
  S <- Z %*% G %*% t(Z) + R
  Sinv <- solve(S)
  
  as.numeric(determinant(S)$modulus) +
    (t(y - as.numeric(X %*% beta_hat)) %*% Sinv %*% 
       (y - as.numeric(X %*% beta_hat)))
}


beta_hat <- summary(m_sim)$coefficients[,1]
optim(c(1, 1), function(theta) log_lik_mm(theta, beta_hat))$par

P <- X %*% solve(t(X) %*% X) %*% t(X)
L <- diag(ni*m) - P
L <- L[1:48,]

reml_theta <- function(theta){
  G <- theta[1] * diag(5)
  R <- theta[2] * diag(ni*m)
  S <- Z %*% G %*% t(Z) + R
  SL <- L %*% S %*% t(L)
  as.numeric(determinant(SL)$modulus) +
    t(L %*% y) %*% solve(SL) %*% L %*% y
}

optim(c(1, 1), reml_theta)$par
data.frame(lme4::VarCorr(m_sim))$vcov



