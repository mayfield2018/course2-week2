pollutantmean <- function ( directory, pollutant, id = 1:332)
{
  pollutant
  my_data <- c()
  ## delare a empty vector. 
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
    
    
  }
  
  my_para <- pollutant
  ##my_arg <- noquote(my_para)
  
  
 my_mean_value <- mean(new_data[[my_para]])
 ## use [[ if you want to extract only a single column as a vector.
 ## [[string]]-- pass a string of a vector as a column name of a data frame. = $column_name.
 
  
  print (my_mean_value)
  
}
pollutantmean("specdata", "sulfate", 1:10)
##pollutantmean("specdata", "nitrate", 70:72)
##pollutantmean("specdata", "sulfate", 34)
##pollutantmean("specdata", "nitrate")

    
    