install.packages("ggplot2")
library(ggplot2)
 
 library(readxl)
  Model_LHD <- read_excel("C:/Users/USER/Desktop/futia/Model_LHD.xlsx")
 View(Model_LHD)
 
 # Create a new column to distinguish between the two datasets
 Model_LHD$Source <- "Model_LHD"
 Dist_LHD$Source <- "Dist_LHD"
 
 # Combine both datasets into one dataframe
 combined_data <- rbind(Model_LHD, Dist_LHD)
 
 # Plot using ggplot2
 ggplot(combined_data, aes(x = `FDS`, y = `Std error`, color = Source)) +
   geom_line() + 
   geom_point() +
   labs(title = "Fraction of design space plot for k=2",
        x = "FDS",
        y = "Std_error") +
   theme_minimal()
 
 
 
 
 
 
 
 
 library(ggplot2)
 
 # Assuming combined_data has the necessary columns
 ggplot(combined_data, aes(x = `FDS`, y = `Std error`, color = Source)) +
   geom_line() + 
   geom_point() +
   labs(title = "Fraction of design space plot for k=2",
        x = "FDS",
        y = "Std_error") +
   theme_minimal() +
   scale_y_continuous(
     breaks = seq(min(combined_data$`Std error`), max(combined_data$`Std error`), length.out = 10),  # Adjust this based on the range of values
     limits = c(min(combined_data$`Std error`), max(combined_data$`Std error`))  # Optional: Set limits
   )
 
 
 
 
 
 
 

 
 
 
 
 
 # continue using this codes
 
 
 # Check the column names of your combined dataset
 colnames(combined_data)
 
 
 
# clear the global environment
ls()
rm(list = ls())












library(readxl)
Model_LHD <- read_excel("C:/Users/USER/Desktop/futia/Model_LHD.xlsx")
 View(Model_LHD)
 library(readxl)
 Dist_LHD <- read_excel("C:/Users/USER/Desktop/futia/Dist_LHD.xlsx")
  View(Dist_LHD)
 
  
  
  
  # Create a new column to distinguish between the two datasets
  Model_LHD$Source <- "Model_LHD"
  Dist_LHD$Source <- "Dist_LHD"
  
  # Combine both datasets into one dataframe
  combined_data <- rbind(Model_LHD, Dist_LHD)
  
  # Plot using ggplot2
  ggplot(combined_data, aes(x = `FDS`, y = `Std error`, color = Source)) +
    geom_line() + 
    geom_point() +
    labs(title = "Fraction of design space plot for k=2",
         x = "FDS",
         y = "Std_error") +
    theme_minimal()
  
  
  
  
  
  
  install.packages("ggplot2")
  
  library(ggplot2)
  
  # Assuming combined_data has the necessary columns
  ggplot(combined_data, aes(x = `FDS`, y = `Std error`, color = Source)) +
    geom_line() + 
    geom_point() +
    labs(title = "Fraction of design space plot for k=3",
         x = "FDS",
         y = "Std_error") +
    theme_minimal() +
    scale_y_continuous(
      breaks = seq(min(combined_data$`Std error`), max(combined_data$`Std error`), length.out = 10),  # Adjust this based on the range of values
      limits = c(min(combined_data$`Std error`), max(combined_data$`Std error`))  # Optional: Set limits
    )
   
