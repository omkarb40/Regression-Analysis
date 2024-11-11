# Father-Son Height Regression Analysis

## Overview
This project implements a classical statistical analysis of Pearson's father-son height data, investigating the relationship between fathers' and sons' heights. The analysis includes scatter plotting, linear regression, standard deviation line fitting, and statistical analysis using R.

## Table of Contents
- [Dataset](#dataset)
- [Installation](#installation)
- [Usage](#usage)
- [Features](#features)
- [Analysis Components](#analysis-components)
- [Results](#results)
- [Contributing](#contributing)

## Dataset
The analysis uses the classic Pearson's father-son height dataset, which is included in the `UsingR` package. This historical dataset contains height measurements (in inches) for 1,078 pairs of fathers and their adult sons, collected by Karl Pearson.

### Data Structure
- `fheight`: Father's height in inches
- `sheight`: Son's height in inches

## Installation

### Prerequisites
- R (version 3.5.0 or higher recommended)
- RStudio (optional but recommended)

### Required R Packages
```R
install.packages("UsingR")
```

## Usage
1. Clone this repository:
```bash
git clone https://github.com/yourusername/father-son-height-regression.git
```

2. Open R or RStudio and set your working directory to the project folder:
```R
setwd("path/to/father-son-height-regression")
```

3. Run the script:
```R
source("regression_analysis.R")
```

## Features
- Scatter plot visualization of father-son height relationship
- Linear regression analysis
- Standard deviation line computation and visualization
- Center of regression marking
- Mean reference lines
- Comprehensive statistical output

## Analysis Components
The analysis includes:
1. **Data Visualization**
   - Scatter plot of father vs. son heights
   - Regression line (red)
   - Standard deviation line (blue)
   - Center of regression point
   - Mean reference lines (green)

2. **Statistical Analysis**
   - Linear regression coefficients
   - R-squared value
   - F-statistic
   - P-values
   - Residual analysis

## Results
The analysis produces:
1. A comprehensive plot showing the relationship between father and son heights
2. Statistical measures including:
   - Regression equation
   - Correlation coefficient
   - R-squared value
   - Confidence intervals
   - Residual statistics

### Sample Output
The visualization includes:
- Points representing individual father-son pairs
- Red regression line showing the predicted relationship
- Blue SD line indicating the standard deviation relationship
- Green reference lines marking mean heights
- Black point marking the center of regression

## Contributing
Contributions are welcome! Please feel free to submit a Pull Request. For major changes, please open an issue first to discuss what you would like to change.

Steps to contribute:
1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request


## Authors
- Your Name
- Email: omkarb40@gmail.com
- GitHub: [@omkarb40](https://github.com/omkarb40)
