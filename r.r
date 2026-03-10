# ==========================================================
# BI PRACTICALS CONSOLIDATED R SCRIPT
# ==========================================================

# ----------------------------------------------------------
# PRACTICAL 7: Data Classification (Time Series Analysis)
# ----------------------------------------------------------
# Consider annual rainfall details starting from Jan 2012.
# Creating a time series object and plotting it.

# Input rainfall data
rainfall <- c(799, 1174.8, 865.1, 1334.6, 635.4, 918.5, 685.5, 998.6, 784.2, 985, 882.8, 1071)

# Convert to a time series object (Monthly, starting Jan 2012)
rainfall.timeseries <- ts(rainfall, start = c(2012, 1), frequency = 12)

# Print the timeseries data
print("--- Practical 7: Rainfall Time Series Data ---")
print(rainfall.timeseries)

# Plot the graph
plot(rainfall.timeseries, main="Monthly Rainfall 2012", col="blue", lwd=2)


# ----------------------------------------------------------
# PRACTICAL 8: Data Clustering (K-Means Algorithm)
# ----------------------------------------------------------
# Using the built-in 'iris' dataset to group flowers.

# Prepare the data (Remove the categorical 'Species' column)
newiris <- iris
newiris$Species <- NULL

# Apply K-Means (creating 3 clusters)
kc <- kmeans(newiris, 3)

print("--- Practical 8: K-Means Clustering Result ---")
print(kc)

# Compare the Species label with the clustering result
table(iris$Species, kc$cluster)

# Plotting the clusters
plot(newiris[c("Sepal.Length", "Sepal.Width")], col=kc$cluster, main="K-Means Clustering (Iris)")
# Mark the cluster centers
points(kc$centers[,c("Sepal.Length", "Sepal.Width")], col=1:3, pch=8, cex=2)


# ----------------------------------------------------------
# PRACTICAL 9: Linear Regression
# ----------------------------------------------------------
# Predicting Weight based on Height.

# Input height (x) and weight (y) vectors
x <- c(151, 174, 138, 186, 128, 136, 179, 163, 152, 131)
y <- c(63, 81, 56, 91, 47, 57, 76, 72, 62, 48)

# Apply the lm() (Linear Model) function
relation <- lm(y ~ x)

print("--- Practical 9: Linear Regression Model Summary ---")
print(summary(relation))

# Predict weight of a person with height 170
a <- data.frame(x = 170)
result <- predict(relation, a)

print("Predicted weight for Height 170:")
print(result)

# Plot the regression chart
plot(y, x, col = "blue", main = "Height & Weight Regression", 
     abline(lm(x ~ y)), cex = 1.3, pch = 16, 
     xlab = "Weight in Kg", ylab = "Height in cm")


# ----------------------------------------------------------
# PRACTICAL 10: Decision Tree
# ----------------------------------------------------------
# Predicting native speaker status using the party library.

# Check if 'party' package is installed, if not, install it
if(!require(party)) install.packages("party")
library(party)

# Use subset of readingSkills dataset
input.dat <- readingSkills[c(1:105),]

# Create the Decision Tree (ctree)
output.tree <- ctree(nativeSpeaker ~ age + shoeSize + score, data = input.dat)

print("--- Practical 10: Decision Tree Model ---")
print(output.tree)

# Plot the tree
plot(output.tree)
