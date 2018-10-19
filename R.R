# R Cookbook

## Note that this is showing how to handle variable names
## passed to a function as string. df is the last argument
## and you have to enquo a variable first thing
na_variable <- function(var, df = data.frame) {
  var = enquo(var)  
  df %>% 
    filter(is.na(!!var)) %>% 
    count()
}


## performing a function over several data.frames
a <- 1 # create dataframes
b <- 2
d <- 3
 
ls <- list(a = a, b = b, d = d) # assign data.frames to list
 
foo <- function(x){
  assign(x, get(x) + 1, envir = .GlobalEnv) # get tells R to grab a string and return as object. sets environment to global
}
 
lapply(names(ls), foo) 


