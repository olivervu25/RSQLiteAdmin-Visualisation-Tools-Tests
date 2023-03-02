
create_plot_stock <- function(start_date, end_date){
  # Load necessary packages
  library(ggplot2)
  library(dplyr)
  
  # Read in the stock data
  stock_data <- read.csv("combined_stock_data.csv") 
  
  # Convert dates to Date format
  stock_data$Date <- as.Date(stock_data$Date, format = "%Y-%m-%d")
  
  # Filter the data to the specified date range
  stock_data <- stock_data %>% filter(Date >= start_date & Date <= end_date)

  # Find the highest points of both lines
  google_high <- stock_data %>% filter(Google == max(Google))
  meta_high <- stock_data %>% filter(Meta == max(Meta))
  
  # Find the starting and ending points of both lines
  google_start <- stock_data %>% slice(1)
  google_end <- stock_data %>% slice(n())
  meta_start <- stock_data %>% slice(1)
  meta_end <- stock_data %>% slice(n())
  
  # Create the plot
  stock_plot <- ggplot(stock_data, aes(x = Date)) +
    # Create 2 lines for Google and Meta 
    geom_line(aes(y = Google, color = "Google"), size = 1.2) +
    geom_line(aes(y = Meta, color = "Meta"), size = 1.2) +
    # Add the highest points of both lines 
    geom_point(aes(x = meta_high$Date, y = meta_high$Meta), color = "#4285F4", size = 5) +
    geom_point(aes(x = google_high$Date, y = google_high$Google), color = "#FFB800", size = 5) +
    # Add the starting and ending points of the time studied 
    geom_point(aes(x = google_start$Date, y = google_start$Google), color = "#FFB800", size = 5) +
    geom_point(aes(x = google_end$Date, y = google_end$Google), color = "#FFB800", size = 5) +
    geom_point(aes(x = meta_start$Date, y = meta_start$Meta), color = "#4285F4", size = 5) +
    geom_point(aes(x = meta_end$Date, y = meta_end$Meta), color = "#4285F4", size = 5) +
    # Text labelled for those points 
    geom_text(aes(x = google_high$Date, y = google_high$Google, label = paste0("$", google_high$Google)), color = "#FF0000", vjust = -1) +
    geom_text(aes(x = meta_high$Date, y = meta_high$Meta, label = paste0("$", meta_high$Meta)), color = "#FF0000", vjust = -0.75) +
    annotate("text", x = google_start$Date, y = google_start$Google, label = paste0("$", google_start$Google), color = "#FFB800", vjust = -1.75) +
    annotate("text", x = google_end$Date, y = google_end$Google, label = paste0("$", google_end$Google), color = "#FFB800", vjust = -1.75) +
    annotate("text", x = meta_start$Date, y = meta_start$Meta, label = paste0("$", meta_start$Meta), color = "#4285F4", vjust = -2.5) +
    annotate("text", x = meta_end$Date, y = meta_end$Meta, label = paste0("$", meta_end$Meta), color = "#4285F4", vjust = 2.25) +
    # Set color and theme 
    scale_color_manual(name = "", values = c("Google" = "#FFB800", "Meta" = "#4285F4")) +
    theme_classic() +
    theme(
      plot.background = element_rect(fill = "#FFFFFF", color = NA),
      panel.background = element_rect(fill = "#FFFFFF", color = NA),
      plot.margin = unit(c(1,1,1,1), "cm"),
      plot.title = element_text(size = 30, hjust = 0.5, margin=margin(0, 0, 10, 0)),
      plot.title.position = "plot",
      plot.subtitle = element_text(size = 16, hjust = 0.5),
      plot.caption = element_text(size = 12, face = "bold.italic"),
      axis.title = element_text(size = 16),
      axis.text = element_text(size = 14),
      axis.text.x = element_text(angle = 45, vjust = 1, hjust = 1),
      legend.text = element_text(size = 16),
    ) + 
    labs(title = "Google vs. Meta Stock Open Prices",
         subtitle = "Analysis of daily stock prices from January 1st, 2020 to March 1st, 2023",
         caption = "Data source: Google Finance",
         x = "Date",
         y = "Price",
         color = "Variable") + 
    scale_x_date(date_breaks = "1 month", date_labels = "%m-%Y")
  
  #Return the plot
  return(stock_plot)
}

#Test the function
#create_plot_stock('2022-01-01', '2023-01-01')

