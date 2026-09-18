n_train <- 500

# d = number of explanatory variables 
# So d + 1 is the length of beta (including intercept)
d <- 500

set.seed(47234)
x_train <- matrix(rnorm(n_train*d), nrow=n_train)
y_train <- rbinom(n_train, 1, 0.5)
train_data <- data.frame(x_train, y = y_train)

# start with only an intercept
initial_fit <- glm(y ~ 1, data = train_data, family = binomial)

# add predictors one at a time based on AIC
selected_fit <- step(initial_fit,
                     scope = formula(glm(y ~ ., 
                                         data = train_data,
                                         family = binomial)),
                     direction = "forward", trace = 0,
                     steps = 25)


logistic_deviance <- function(y, phat){
  -2*sum(dbinom(y, 1, phat, log = T))
}

k <- 10
boot::cv.glm(train_data, selected_fit, 
             cost = logistic_deviance, 
             K = k)$delta[1] * k/nrow(train_data)


# generate test data
x_test <- matrix(rnorm(n_test*d), nrow=n_test)
y_test <- rbinom(n_test, 1, 0.5)
test_data <- data.frame(x_test, y = y_test)

pred_probs <- predict(selected_fit, newdata = test_data,
                      type = "response")
logistic_deviance(test_data$y, pred_probs)/n_test





set.seed(3126)
k <- 10
# create the folds (shuffle in case row order matters)
folds <- sample(ceiling((1:nrow(train_data)) * k/nrow(train_data)),
                nrow(train_data), replace=F)

# compute k-fold CV predictions
cv_preds <- rep(NA, nrow(train_data))
for(j in 1:k){
  # hold out fold j
  fold_ids <- which(folds == j)
  train_sub <- train_data[-fold_ids,]
  test_sub <- train_data[fold_ids,]
  
  # start with only an intercept
  initial_fit_sub <- glm(y ~ 1, data = train_sub, 
                         family = binomial)
  
  # add predictors one at a time based on AIC
  selected_fit_sub <- step(initial_fit_sub,
                       scope = formula(glm(y ~ ., 
                                           data = train_sub,
                                           family = binomial)),
                       direction = "forward", trace = 0,
                       steps = 25)
  
  
  # predict on heldout fold
  cv_preds[fold_ids] <- predict(selected_fit_sub,
                                test_sub,
                                type = "response")
  
  print(j)
}

# CV error estimate
logistic_deviance(train_data$y, cv_preds)/nrow(train_data)








