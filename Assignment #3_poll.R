# Analizing 2016 data "Poll" Data in R

# Define and Inspect Data
# Create vectors
Name <- c("Jeb","Donald","Ted","Marco","Carly","Hillary","Bernie")
Name

ABC_poll <- c( 4, 62, 51, 21, 2, 14, 12)
ABC_poll

CBS_poll <- c(12, 75, 43, 19, 1, 21, 19)
CBS_poll

# Combine into a data frame
df_poll <- data.frame(Name, ABC_poll, CBS_poll)
df_poll

# Inspect data frame
str(df_poll)

# Adding a header
head(df_poll)

# Compute Summary Statistics
# Compute the mean
mean(df_poll$ABC_poll)

# Compute the median
median(df_poll$CBS_poll)

# Compute the range
range(df_poll[,c("ABC_poll","CBS_poll")])

# Add a colunm for the difference between CBS and ABC
df_poll$Diff <- df_poll$CBS_poll - df_poll$ABC_poll
df_poll$Diff

# Create a bar chart using ggplot2
"ggplot2" %in% rownames(installed.packages())

installed.packages()
library(ggplot2)

ggplot(df_poll, aes(x = factor(Diff)))+
  geom_bar(color="green", fill = "red") +
  ggtitle("Poll") +
  theme(plot.title = element_text(color="cyan", hjust = 0.50))

 




















