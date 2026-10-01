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

### Assignment #6: Matrix Operations and Construction
https://discoverantilleancuisine.wordpress.com/2026/09/30/assignment-6-matrix-operations-and-construction/

Matrix Operations and Construction
Badinter Schweitzer
2026-09-30
## Assignment link: https://1drv.ms/w/c/519baaea610e4177/IQDFFvHrFR4NR5QxP-r_NriJAZtnc6rx3cbhFmluRISKp2s?e=FpdodU

## Objective:
This assignment aims to practice fundamental matrix operations in R, specifically addition and subtraction, and to learn how to construct diagonal matrices using diag(). Simultaneously, it requires creating a custom block‑structured matrix programmatically.

Task 1 - Matrix Addition & Subtraction
A <- matrix(c(2, 0, 1, 3), ncol = 2)
B <- matrix(c(5, 2, 4, -1), ncol = 2)

# Print A and B
print(A)
##      [,1] [,2]
## [1,]    2    1
## [2,]    0    3
print(B)
##      [,1] [,2]
## [1,]    5    4
## [2,]    2   -1
When I create matrices A and B, R doesn’t display them automatically. Typing A and B prints the full matrix. R shows the matrices when I type the object name, displaying their contents before any calculations. 
# Compute A and B
A + B
##      [,1] [,2]
## [1,]    7    5
## [2,]    2    2
A - B
##      [,1] [,2]
## [1,]   -3   -3
## [2,]   -2    4

Task 2 - Create a Diagonal Matrix
D <- diag(c(4, 1, 2, 3))
D
##      [,1] [,2] [,3] [,4]
## [1,]    4    0    0    0
## [2,]    0    1    0    0
## [3,]    0    0    2    0
## [4,]    0    0    0    3
Task 3 - Construct a custom 5 by 5 matrix
M <- matrix(1:25, nrow = 5, ncol = 5)
M
##      [,1] [,2] [,3] [,4] [,5]
## [1,]    1    6   11   16   21
## [2,]    2    7   12   17   22
## [3,]    3    8   13   18   23
## [4,]    4    9   14   19   24
## [5,]    5   10   15   20   25
# Find combination of the matrices A and B
cbind(A, B)
##      [,1] [,2] [,3] [,4]
## [1,]    2    1    5    4
## [2,]    0    3    2   -1
# Combine cbind() with diag()
combn <- cbind(D, c(5, 10, 15, 20))
combn
##      [,1] [,2] [,3] [,4] [,5]
## [1,]    4    0    0    0    5
## [2,]    0    1    0    0   10
## [3,]    0    0    2    0   15
## [4,]    0    0    0    3   20
# Combine cbind with matrices
combn <- cbind(M, c(5,10,15,20,25))
combn
##      [,1] [,2] [,3] [,4] [,5] [,6]
## [1,]    1    6   11   16   21    5
## [2,]    2    7   12   17   22   10
## [3,]    3    8   13   18   23   15
## [4,]    4    9   14   19   24   20
## [5,]    5   10   15   20   25   25
Each function in this assignment executes a distinct operation. For instance, adding matrices A and B with the + operator increments each corresponding element while maintaining the original 2‑row, 2‑column matrix structure. Likewise, subtraction (-) decrements each element in the same arrangement, and functions such as diag() and cbind() generate or merge matrices to construct more intricate structures.
