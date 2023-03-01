# RSQLiteAdmin-Visualisation-Tools-Test-Solutions

[![R version](https://img.shields.io/badge/R%20version-4.1.0-blue.svg)](https://www.r-project.org/)
[![RSQLiteAdmin](https://img.shields.io/badge/RSQLiteAdmin-1.0.0-blueviolet.svg)](https://github.com/rsqliteadmin/RSQLiteAdmin)
[![GSoC](https://img.shields.io/badge/GSoC-2023-red.svg)](https://summerofcode.withgoogle.com/)

This repository contains solutions to the test problems for the RSQLiteAdmin visualisation tools project for GSoC 2023.

## Easy Test

### Description

Install the package `rsqliteadmin` from CRAN and play around with all the features. Create a database, add a table and import some data. Edit, search, and export it.


### Solution

For the Easy test, I utilized the rsqliteadmin package available on CRAN to fully explore its functions. Firstly, I created a new database and proceeded to create tables and columns to add data. I then imported data from a CSV file into the database and continued to utilize the search and edit functions provided by the package. Finally, I exported the data with ease. All the functions worked flawlessly and I found the rsqliteadmin package to be user-friendly and highly efficient.

<hr style="height: 5px; border: none; color: #000000; background-color: #000000; margin: 20px 0px;">


## Medium Test 1 

### Description

Plot a time-series line chart on a dataset of your choice with different variables in a single chart. Customize it to make it clear and insightful.


### Solution

#### Data
For the Medium test, I utilized a dataset of daily stock prices from January 1st, 2020 to March 1st, 2023. The dataset contains the daily open prices for two technology companies, Google and Meta (previously known as Facebook). The data was sourced from Google Finance and was obtained in CSV format. The dataset consisted of 795 data points for each company, with columns for the date and the opening stock price. The dataset was pre-processed to remove any missing values and ensure the data was in a suitable format for analysis.

#### Chart 
- The chart is a time-series line chart that visualizes the stock open prices of two companies, Google and Meta, over a period of three years, from January 1st, 2020 to March 1st, 2023.
- The chart includes multiple variables, such as the stock prices of both Google and Meta, as well as several important dates, including the start and end dates of each company's price trend and the highest stock price for each company.
- The chart uses different colors to distinguish between the two companies, with Google shown in a bright orange color and Meta shown in a deep blue color.

![alt text](https://raw.githubusercontent.com/olivervu25/RSQLiteAdmin-Visualisation-Tools-Tests/master/SOLUTIONS_Test_Medium_1/stock_plot.png)

<hr style="height: 5px; border: none; color: #000000; background-color: #000000; margin: 20px 0px;">

