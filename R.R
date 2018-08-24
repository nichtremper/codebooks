# R Cookbook

## Note that this is showing how to handle variable names
## passed to a function as string. df is the last argument
## and you have to enquo a variable first thing
na_variable <- function(var, df = scores_sample) {
  var = enquo(var)  
  df %>% 
    filter(is.na(!!var)) %>% 
    count()
}