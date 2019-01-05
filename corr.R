##my_cor <- cor(1:10, 81:90)
##print (my_cor)

directory <- "specdata"

corr <- function ( directory, thershold = 0)
{
    
    my_data <- c()
    ## delare a empty vector. 
    my_frame <- data.frame (my_id = c(), nobs=c())
    ## create a empty datafram. 
    my_cor <- c()
    for (i in 1:332)
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
      
      write.csv(my_frame, "my_frame.csv")
    }
    
    ##my_frame 
    my_lines <- my_frame[my_frame$nobs >= thershold, ]
    
    for (b in length(my_lines))
    {
      c <- c(my_lines$my_id)
      
      
    }
    
    for (a in c)
    {
      waiting_lines <- new_data[new_data$ID == a, ]
      my_cor <- c(my_cor, cor(waiting_lines$sulfate, waiting_lines$nitrate))
      
    }
   my_cor
  }
  
##cc <- corr("specdata", 150)
cr <- corr("specdata", 2000)                
n <- length(cr)                
cr <- corr("specdata", 1000)                
cr <- sort(cr)
print(c(n, round(cr, 4)))