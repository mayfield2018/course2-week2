complete <- function ( directory, id = 1:332)
{
  
  my_data <- c()
  ## delare a empty vector. 
  my_frame <- data.frame (my_id = c(), nobs=c())
  ## create a empty datafram. 
  for (i in id)
  {
    
    if( i<=9 )
    {
      
      filename <- paste ("C:/Users/xzhu/Documents/R/", directory, "/", "00", i, ".csv", sep="", collapse = NULL)
      
    }
    
    
    else if (i<=99 )
    { filename <- paste ("C:/Users/xzhu/Documents/R/", directory, "/", "0", i, ".csv", sep="", collapse = NULL)
    
    }
    
    else
    {filename <- paste ("C:/Users/xzhu/Documents/R/", directory, "/", i, ".csv", sep="", collapse = NULL)
    
    }
    
    my_data <- rbind(my_data, read.csv(filename))
    new_data <- my_data[complete.cases(my_data), ]
    
    my_frame <- rbind(my_frame, data.frame(my_id = i, nobs = sum(new_data$ID == i)))
    
    
  }
  
   my_frame 
}
 
cc <- complete("specdata", 54)
print(cc)



    