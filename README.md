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

Assignment #8: Input/Output, String Manipulation, and the plyr Package
file:///C:/Users/User/OneDrive/Desktop/INTRO%20TO%20R%20PROG/student6.html
https://discoverantilleancuisine.wordpress.com/2026/10/18/assignment-8-input-output-string-manipulation-and-the-plyr-package/
The objective of this assignment is to read and write data files in R, group and summarize data by a factor using plyr, filter character data with regular expressions, and export results to text and CSV files.
# In R, read it into a data frame:
# choose file interactively
  student6 <- read.table("student6.txt", header = TRUE, stringsAsFactors = FALSE)
  student6 
##        Name.Age.Sex.Grade
## 1         Raul,25,Male,80
## 2       Booker,18,Male,83
## 3      Lauri,21,Female,90
## 4     Leonie,21,Female,91
## 5    Sherlyn,22,Female,85
## 6    Mikaela,20,Female,69
## 7      Raphael,23,Male,91
## 8       Aiko,24,Female,97
## 9   Tiffaney,21,Female,78
## 10    Corina,23,Female,81
## 11 Petronila,23,Female,98
## 12    Alecia,20,Female,87
## 13   Shemika,23,Female,97
## 14    Fallon,22,Female,90
## 15   Deloris,21,Female,67
## 16    Randee,23,Female,91
## 17     Eboni,20,Female,84
## 18   Delfina,19,Female,93
## 19 Ernestina,19,Female,93
## 20        Milo,19,Male,67
# Check columns
  student6 <- read.table("student6.txt", header = TRUE, sep = ",")
  student6
##         Name Age    Sex Grade
## 1       Raul  25   Male    80
## 2     Booker  18   Male    83
## 3      Lauri  21 Female    90
## 4     Leonie  21 Female    91
## 5    Sherlyn  22 Female    85
## 6    Mikaela  20 Female    69
## 7    Raphael  23   Male    91
## 8       Aiko  24 Female    97
## 9   Tiffaney  21 Female    78
## 10    Corina  23 Female    81
## 11 Petronila  23 Female    98
## 12    Alecia  20 Female    87
## 13   Shemika  23 Female    97
## 14    Fallon  22 Female    90
## 15   Deloris  21 Female    67
## 16    Randee  23 Female    91
## 17     Eboni  20 Female    84
## 18   Delfina  19 Female    93
## 19 Ernestina  19 Female    93
## 20      Milo  19   Male    67
# Load plyr and compute the mean of Grade by Sex:
    library(plyr)
  
  gender_mean <- ddply(
    student6,
   " Sex",
    summarise,
    GradeAverage = mean(Grade, na.rm = TRUE)
  )
  
  gender_mean
##      Sex GradeAverage
## 1 Female      86.9375
## 2   Male      80.2500
# Write the grouped means to a text file:
    write.table(
      gender_mean,
      file = "gender_mean.txt",
      sep  = "\t",
      row.names = FALSE
    )
  

# Convert the data (if not already) to a data frame (see above).
# Select rows where Name contains “i” or “I”:
  i_students <- subset(
    student6,
    grepl("i", Name, ignore.case = TRUE)
  )
  i_students
##         Name Age    Sex Grade
## 3      Lauri  21 Female    90
## 4     Leonie  21 Female    91
## 6    Mikaela  20 Female    69
## 8       Aiko  24 Female    97
## 9   Tiffaney  21 Female    78
## 10    Corina  23 Female    81
## 11 Petronila  23 Female    98
## 12    Alecia  20 Female    87
## 13   Shemika  23 Female    97
## 15   Deloris  21 Female    67
## 17     Eboni  20 Female    84
## 18   Delfina  19 Female    93
## 19 Ernestina  19 Female    93
## 20      Milo  19   Male    67
# Extract just the names and write them to a CSV:
  write.csv(
    i_students$Name,
    file      = "i_students.csv",
    row.names = FALSE,
    quote     = FALSE
  )
  
# Save the full filtered data frame to a CSV:
    write.csv(
      i_students,
      file      = "i_students_full.csv",
      row.names = FALSE
    )
    
# Confirm the files gender_mean.txt, i_students.csv, and i_students_full.csv exist in your working directory.
    file.exists("gender_mean.txt")
## [1] TRUE
    file.exists("i_students.csv")
## [1] TRUE
    file.exists("i_students_full.csv") 
## [1] TRUE
# Because the result returned TRUE, the file.exists() function was used to verify that gender_mean.txt, i_students.csv,
# and i_students_full.csv were successfully created in the working directory.
In this assignment, I imported a data file into R using the read.table() function. Other available options include scan(), read.csv(), and importing data from a web URL. For this assignment, I used read.table() to load the dataset. I then selected rows where the names contained the letter "i" using a string manipulation function. I extracted the names and exported them to a CSV file. Furthermore, I used file.exists() to confirm that the files were successfully created and saved in the working directory.

Assignment #9: Visualization in R – Base Graphics, Lattice, and ggplot2
https://discoverantilleancuisine.wordpress.com/2026/10/25/assignment-9-visualization-in-r-base-graphics-lattice-and-ggplot2/
file:///C:/Users/User/OneDrive/Desktop/INTRO%20TO%20R%20PROG/assignment9.html
Visualization in R – Base Graphics, Lattice, and ggplot2
Badinter Schweitzer
2026-10-26
The objective of this assignment is to compare the three visualization systems in R, base graphics, lattice, and ggplot2, by applying each to the same immigration dataset and identifying their similarities and differences. The analysis will demonstrate clear, reproducible code and communicate insights in a concise and confident manner.
Dataset
Fatalities <- read.csv("Fatalities.csv")
head(Fatalities)
##   rownames state year spirits unemp   income   emppop  beertax baptist  mormon
## 1        1    al 1982    1.37  14.4 10544.15 50.69204 1.539379 30.3557 0.32829
## 2        2    al 1983    1.36  13.7 10732.80 52.14703 1.788991 30.3336 0.34341
## 3        3    al 1984    1.32  11.1 11108.79 54.16809 1.714286 30.3115 0.35924
## 4        4    al 1985    1.28   8.9 11332.63 55.27114 1.652542 30.2895 0.37579
## 5        5    al 1986    1.23   9.8 11661.51 56.51450 1.609907 30.2674 0.39311
## 6        6    al 1987    1.18   7.8 11944.00 57.50988 1.560000 30.2453 0.41123
##   drinkage     dry youngdrivers    miles breath jail service fatal nfatal
## 1    19.00 25.0063     0.211572 7233.887     no   no      no   839    146
## 2    19.00 22.9942     0.210768 7836.348     no   no      no   930    154
## 3    19.00 24.0426     0.211484 8262.990     no   no      no   932    165
## 4    19.67 23.6339     0.211140 8726.917     no   no      no   882    146
## 5    21.00 23.4647     0.213400 8952.854     no   no      no  1081    172
## 6    21.00 23.7924     0.215527 9166.302     no   no      no  1110    181
##   sfatal fatal1517 nfatal1517 fatal1820 nfatal1820 fatal2124 nfatal2124  afatal
## 1     99        53          9        99         34       120         32 309.438
## 2     98        71          8       108         26       124         35 341.834
## 3     94        49          7       103         25       118         34 304.872
## 4     98        66          9       100         23       114         45 276.742
## 5    119        82         10       120         23       119         29 360.716
## 6    114        94         11       127         31       138         30 368.421
##       pop  pop1517  pop1820  pop2124 milestot unempus emppopus         gsp
## 1 3942002 208999.6 221553.4 290000.1    28516     9.7     57.8 -0.02212476
## 2 3960008 202000.1 219125.5 290000.2    31032     9.6     57.9  0.04655825
## 3 3988992 197000.0 216724.1 288000.2    32961     7.5     59.5  0.06279784
## 4 4021008 194999.7 214349.0 284000.3    35091     7.2     60.1  0.02748997
## 5 4049994 203999.9 212000.0 263000.3    36259     7.0     60.7  0.03214295
## 6 4082999 204999.8 208998.5 258999.8    37426     6.2     61.5  0.04897637
Base R Graphics Create at least two plots using base R functions. Examples:

# Scatter plot
plot(Fatalities$year, Fatalities$fatal,
     main   = "Year vs. Fatalities", col = "orange",
     xlab   = "Year",
     ylab   = "Fatalities")
<img width="701" height="459" alt="image" src="https://github.com/user-attachments/assets/fcd5a777-0bf8-4f88-8d5e-5865e913cbc4" />
# Histogram
hist(Fatalities$fatal,
     main   = "Distribution of Fatalities",
     xlab   = "Fatalities",
      col = "cyan",
      border = "red")
<img width="739" height="458" alt="image" src="https://github.com/user-attachments/assets/5c3f4ce2-a075-407f-918f-8422df42f228" />
Lattice Graphics Use the lattice package to produce conditioned or multivariate plots. Examples:
library(lattice)
# Conditional scatter plot (small multiples)
xyplot(fatal ~ year,
       data = Fatalities,
       main = "Lattice: Year vs.Fatalities",col = "purple",
       xlab = "Year",
       ylab = "Fatalities")
<img width="705" height="467" alt="image" src="https://github.com/user-attachments/assets/28d7b9b8-e29f-4ccb-b101-395d48c4fc06" />
# Box-and-whisker plot
bwplot(fatal ~ factor(year),
       data = Fatalities,
       main = "Lattice: fatal by year")
<img width="685" height="457" alt="image" src="https://github.com/user-attachments/assets/3f3d176a-23cb-40dd-a81a-c128377645c1" />
Use ggplot2’s grammar of graphics to create layered visuals.
library(ggplot2)
# Scatter plot with smoothing
ggplot(Fatalities, aes(x = year, y = fatal)) +
  geom_point() +
  geom_smooth(method = "lm", color = "red") +
  labs(title = "ggplot2: Fatalities vs. Year with trend line",
              x = "Year",
              y = "Fatalities"
       )
## `geom_smooth()` using formula = 'y ~ x'
<img width="725" height="479" alt="image" src="https://github.com/user-attachments/assets/da5d4eca-8072-426e-b009-938e79d4e4a1" />
# Faceted histogram
ggplot(Fatalities, aes(fatal)) +
  geom_histogram(binwidth = 100, fill = "yellow", color = "red") +
  facet_wrap(~ year) +
  labs(title = "ggplot2: Fatalities distribution by Year",
       x = "Fatalities",
       y = "Count"
  )
<img width="733" height="483" alt="image" src="https://github.com/user-attachments/assets/302c7a9f-9233-440a-8170-d45adc1f8466" />
How does the syntax and workflow differ between base, lattice, and ggplot2?
Base graphics, lattice, and ggplot2 each have their own way of creating charts. Base graphics creates charts directly with functions like plot() and lets you add more elements later. Lattice uses a formula style, such as y ~ x, where most chart options are set in a single function call. ggplot2 builds charts in layers, starting with ggplot() and adding components with the + operator, which allows for greater flexibility and customization.

Which system gave you the most control or produced the most “publication‑quality” output with minimal code?
The faceted histogram in ggplot2 gave me the most control and produced the most publication-quality output with minimal code. Using facet_wrap(), I displayed the distribution of fatalities for each year in separate panels, which made comparisons easier. The layered syntax of ggplot2 also made it easy to customize the plot while keeping the code concise and organized.
Any challenges or surprises you encountered when switching between systems.

I encountered no major difficulties or surprises when switching between the systems. The same variables, Fatalities and Year, were displayed on the x-axis and y-axis in each system, which made the visualizations easy to interpret. This consistency meant I did not need to relearn how to read the data or change my analytical approach when moving from one system to another.
