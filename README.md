# r-programming-assignments
# Badinter Schweitzer
# Course: LIS4370
Description: Repository for R Programming Assignments

# Blog Post
https://discoverantilleancuisine.wordpress.com/2026/09/03/assignment-importing-data-and-function-evaluation-in-r-r/
# Module 2, Assignment Importing Data and Function Evaluation in R

# Evaluate myMean Function
assignment2 <- c(16, 18, 14, 22, 27, 17, 19, 17, 17, 22, 20, 22)

# Consider this function:
myMean <- function(assignment2) {
  return(sum(assignment) / length(someData))
}
myMean(assignment2)
## Error in myMean(assignment2) : object 'assignment' not found
# Explanation:
The error message from testing the myMean function occurred because the assignment and someData do not exist.

# Corrected version of myMean
myMean <- function(assignment2) {
  return(sum(assignment2) / length(assignment2))
}
  
myMean(assignment2)
## [1] 19.25
# However, after using the corrected version of the myMean function, the code ran successfully and returned the correct result: 19.25

https://discoverantilleancuisine.wordpress.com/2026/09/13/assignment-3-analyzing-2016-data-poll-data-in-r
## Assignment #3 – Analyzing 2016 Poll Data in R

This repository contains:
- My R script for Assignment #3
- Summary statistics
- Poll discrepancy visualization
- Link to my blog reflection

- # Assignment #4 – Visualizing and Interpreting Hospital Patient Data

This repository contains my work for Assignment #4, including:
- Data cleaning and handling missing values in R
- Boxplots and histograms for patient vitals
- Interpretation of relationships between vitals and physician assessments

## Blog Post
https://discoverantilleancuisine.wordpress.com/2026/09/21/assignment-4-visualizing-and-interpreting-hospital-patient-data

## R Script
(Upload your .R file and link it here)

## Plots
(Upload your PNG images and link them here)

## Interpretation Summary
- Blood pressure varies across assessments.
- Visit frequency shows a strong peak at 2 visits with one exaggerated spike.
- Clinical implication: high‑risk patients may need more frequent visits.
- NA values did not significantly affect the analysis.
## Assignment #5: Matrix Algebra in R
### Objective
The objective of this assignment is to practice creating and inspecting matrices in R, compute matrix inverses and determinants using `solve()` and `det()`, and handle non‑square matrices and related errors appropriately. This work highlights computational issues such as numeric stability and matrix singularity.

### R Code
Script: assignment5_matrix_algebra.R

### Summary of Results
- Matrix A is 10×10 but singular (det = 0), so `solve(A)` fails.
- Matrix B is 10×100 (non-square), so both `solve(B)` and `det(B)` produce errors.
- Errors were handled using `tryCatch()`.
### Assignment 5 link:
https://1drv.ms/w/c/519baaea610e4177/IQBudVvk0VQLRZVTJ4alpr7SATD5jz2v9A6cjigNZb8TcMM?e=gePHFw
### Blog Post
https://discoverantilleancuisine.wordpress.com/2026/09/27/assignment-5-matrix-algebra-in-r/

