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

Assignment #7: Exploring R’s Object Oriented Systems (S3 &amp; S4)
https://discoverantilleancuisine.wordpress.com/2026/10/11/assignment-7-exploring-rs-object-oriented-systems-s3-s4/
Exploring R’s Object-Oriented Systems (S3 &amp; S4)
Badinter Schweitzer
2026-10-11

The objective of this assignment is to build a dataset, apply R’s generic functions, and learn to recognize and use S3 and S4 object systems.
Download Data
census <- read.csv("census.csv")
# Show the first rows
head(census)                                                                           
## 2 April 1, 2010                Population Estimates (as of July 1)            
## 3        Census Estimates Base                                2010        2011
## 4   308,745,538    308,745,538                         309,330,219 311,591,917
## 5    55,317,240     55,317,244                          55,366,108  55,521,598
## 6    66,927,001     66,926,987                          66,976,458  67,158,835
# describe structure
str(census)
## 'data.frame':    66 obs. of  10 variables:
Test generic functions
print(census)
## 2  April 1, 2010                Population Estimates (as of July 1)            
## 3         Census Estimates Base                                2010        2011
## 4    308,745,538    308,745,538                         309,330,219 311,591,917
## 5     55,317,240     55,317,244                          55,366,108  55,521,598
## 6     66,927,001     66,926,987                          66,976,458  67,158,835
## 7    114,555,744    114,555,757                         114,857,529 116,046,736
## 8     71,945,553     71,945,550                          72,130,124  72,864,748
## 9      4,779,736      4,779,735                           4,785,401   4,802,740
## 10       710,231        710,231                             714,146     722,718
## 11     6,392,017      6,392,013                           6,413,158   6,482,505
## 12     2,915,918      2,915,921                           2,921,588   
summary(census)
##          X             X.1            X.2            X.3       X.4         
##  Length   :66   Length   :66   Length   :66   Length   :66   Mode:logical  
##  N.unique :60   N.unique :59   N.unique :60   N.unique :59   NAs :66       
##  N.blank  : 7   N.blank  : 8   N.blank  : 7   N.blank  : 8                 
##  Min.nchar: 0   Min.nchar: 0   Min.nchar: 0   Min.nchar: 0                 
##  Max.nchar:13   Max.nchar:14   Max.nchar:35   Max.nchar:11                 
##    X.5            X.6            X.7            X.8         
##  Mode:logical   Mode:logical   Mode:logical   Mode:logical  
##  NAs :66        NAs :66        NAs :66        NAs :66       
                                                         
# Select the first 12 states
census12 <- census[1:12, ]

# Plot census

plot( x = 1:nrow(census12), y = 1:nrow(census12),
        main = "First 12 Sates",
        xlab = "State",
        ylab = "State Count",
        pch = 19,
        col = "orange",
        xaxt = "n")
axis(
  1,
  at = 1:nrow(census12),
 labels = c("Alabama", "Alaska", "Arizona", "Arkansas",
  "California", "Colorado", "Connecticut", "Delaware",
  "Florida", "Georgia", "Hawaii", "Idaho"
  ),
  las = 2,
  cex.axis=0.8
)
 
The generic functions print(), summary(), and plot() work with the census dataset: print() displays it, summary() gives basic stats, and plot() draws a graph. If a generic function fails on an object, it may lack a suitable method for that class. In R, generics choose methods by class.
Explore S3 vs S4
# Create an S3 objecct 
s3_obj <- list(name = "Myself", age = 29, GPA = 3.5)
class(s3_obj) <- "student_s3"
print(s3_obj)
## $name
## [1] "Myself"
## 
## $age
## [1] 29
## 
## $GPA
## [1] 3.5
## 
## attr(,"class")
## [1] "student_s3"
# Create an S4 class and object 
setClass("student_s4",
         slots = c(name = "character", age = "numeric", GPA = "numeric"))
s4_obj <- new("student_s4", name = "Myself", age = 29, GPA = 3.5)
print(s4_obj)
## An object of class "student_s4"
## Slot "name":
## [1] "Myself"
## 
## Slot "age":
## [1] 29
## 
## Slot "GPA":
## [1] 3.5
Discussion Questions
⦁	s3_obj is an S3 object; its class is stored as an attribute via class(). s4_obj is an S4 object, created from a formal class with setClass() and new(). I inspected them with class(), attributes(), isS4(), and slotNames().
⦁	Using typeof() one can determine an object's underlying type. For instance, typeof(5L) yields "integer" and typeof(list(...)) yields "list". The class() function displays the object's class, whereas typeof() indicates the underlying storage type.
⦁	Matloff defines a generic function in R as a function that operates polymorphically, for example plot() and print(), which are considered generic functions. When a generic function is invoked, R dispatches the call to the appropriate class method, thereby redirecting it to the function defined for the object's class.
⦁	The main distinctions between S3 and S4 pertain to method definition and formal class declarations: S3 employs informal class definitions, making creation and usage straightforward, whereas S4 utilizes formal class declarations via setClass(), defined slots, and stricter type checking. S3 prioritizes convenience, while S4 prioritizes safety and reliability.
