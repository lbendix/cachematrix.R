ColumnMean <- function(f, removeNA = TRUE) { ##function to find colum means, function removeNA will by default remove NA values. if set to FALSE it will not remove the NA values
  nc <- ncol(f) ##identifies number of columns in data set 'f'
  means <- numeric(nc) ## creates a numberic vector of length 'nc' (number of columns in the data set) to store the means of the columns
  for(i in 1:nc) { ##fills the 'means' vector with the means
    means[1] <- mean(f[,i], na.rm =removeNA) ##this is the step that removes the NA values (if set to true or default) and adds teh mean values to the 'mean' vector
  }
  means ##prints the vector filled with the means of the columns
}


Coding Standrds:
  save in text format
write in text editor
indent code for readability
limit width of code (80 columns)
limit lengths of functions


convert to date:
  x <- as.date("1970-01-01")  ##year month day

functions:
  weekdays (gives day of week)
months (gives month name)
quarters ("Q1", "Q2", etc)

Sys.time() ## gives current time according to system






setwd("C:/Users/Lindsey/Documents/Learning R")



which(ints > 7) #gives a vector of the positions of items in 'ints' that are greater than seven.






