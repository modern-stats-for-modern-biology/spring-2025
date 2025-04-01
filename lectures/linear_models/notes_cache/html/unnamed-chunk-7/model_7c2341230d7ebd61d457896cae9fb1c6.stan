data { 
  int<lower=0> N; 
  array[N] int<lower=0,upper=1> y;
}

parameters {
  real<lower=0,upper=1> theta;
}

model {
  theta ~ beta(0.5, 0.5);
  y ~ bernoulli(theta);
}
