set.seed(5163)

nsim <- 1000
v1 <- rep(NA, nsim)
v2 <- rep(NA, nsim)

ni <- 10 # observations per group
m <- 20 # number of groups
var_x <- 1 
var_e <- 1
var_u <- 2
beta0 <- 1 # overall intercept
beta1 <- 0 # overall slope

for(i in 1:nsim){
  # generate group ids and X
  group_id <- rep(1:m, each=ni)
  x_means <- rnorm(m, sd=sqrt(var_x))[group_id]
  x <- x_means + rnorm(ni*m)
  
  # generate u, e, and Y
  u <- rnorm(m, sd=sqrt(var_u))[group_id]
  y <- beta0 + u + beta1*x + rnorm(m*ni, sd=sqrt(var_e))
  
  # fit the mixed model with a random intercept
  m_sim <- lme4::lmer(y ~ x + (1|group_id))
  v1[i] <- data.frame(lme4::VarCorr(m_sim))$vcov[1]
  m_sim2 <- lme4::lmer(y ~ x + (1|group_id), REML = F)
  v2[i] <- data.frame(lme4::VarCorr(m_sim2))$vcov[1]
  
  print(i)
}

mean(v1)
mean(v2)



