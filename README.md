# Efficient Portfolio Optimization Project

This project aims to calculate the efficient portfolio of five stocks in the S&P 500 index, namely APPLE, ALIBABA, ACTIVISION, NVIDIA, and SALESFORCE. The portfolio optimization process is performed using Excel and R. The project utilizes financial mathematics concepts to maximize returns while minimizing risks.

## Table of Contents

- [Introduction](#introduction)
- [Data](#data)
- [Usage](#usage)
- [Methods](#methods)
- [Results](#results)
- [License](#license)

## Introduction

The objective of this project is to create an efficient portfolio by selecting the optimal allocation of stocks from the S&P 500. By utilizing financial mathematics techniques, we aim to find the combination of stocks that provides the highest expected return for a given level of risk or the lowest risk for a targeted level of return. The project leverages Excel for data analysis and R for portfolio optimization.

## Data

The project requires historical price data for the five selected stocks: APPLE, ALIBABA, ACTIVISION, NVIDIA, and SALESFORCE. The data should include the following attributes:

- Date: The date of the stock price.
- Stock: The name of the stock.
- Price: The closing price of the stock on the given date.

The historical price data can be obtained from reliable financial data sources and should be stored in a suitable format, such as CSV (Comma-Separated Values).


## Usage

1. Open the Excel file provided in the repository.
2. Import the historical price data into Excel.
3. Follow the instructions provided in the Excel file to calculate the expected returns and covariances of the stocks.
4. Save the calculated values in a suitable format, such as CSV.
5. Open the R script provided in the repository using an R IDE or the R console.
6. Modify the script to load the calculated values and perform portfolio optimization based on your preferences (e.g., risk tolerance, target return).
7. Execute the R script to obtain the efficient portfolio allocation.
8. Review and analyze the results.

## Methods

This project utilizes the following methods:

1. **Data Analysis in Excel:** Historical price data is imported into Excel, and the expected returns and covariances of the stocks are calculated. These calculations are based on statistical measures such as mean, variance, and covariance.

2. **Portfolio Optimization in R:** The calculated expected returns and covariances are loaded into R, where the efficient frontier is generated. The efficient frontier represents the set of optimal portfolios that achieve the highest expected return for a given level of risk or the lowest risk for a targeted level of return. Various optimization techniques and algorithms are available in R for this purpose.

## Results

The results of this project include:

- Efficient Portfolio: The allocation and weights of the five selected stocks that form the efficient portfolio.
- Expected Returns and Risks: The expected returns and risks associated with the efficient portfolio.
- Efficient Frontier: A graph illustrating the trade-off between expected returns and risks for different portfolio allocations.

These results are typically obtained and analyzed using the Excel file and the R script provided in the repository.


## License

This project is licensed under the [MIT License](LICENSE). Feel free to use and modify the code according to the terms of the license.
