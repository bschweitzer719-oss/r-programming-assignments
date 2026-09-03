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
