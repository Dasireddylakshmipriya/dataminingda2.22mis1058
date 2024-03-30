# Load the required library for DBSCAN clustering
install.packages("dbscan")  # Install the dbscan package if not already installed
library(dbscan)

# Load the iris dataset
data(iris)

# Select the relevant properties for clustering
iris_subset <- iris[, c("Sepal.Length", "Sepal.Width", "Petal.Length", "Petal.Width")]

# Perform DBSCAN clustering
dbscan_result <- dbscan(iris_subset, eps = 0.5, MinPts = 5)  # Example values for eps and MinPts

# Visualize the clustering results
plot(iris_subset, col = dbscan_result$cluster + 1, pch = 20, main = "DBSCAN Clustering of Iris Dataset")
legend("topright", legend = unique(dbscan_result$cluster), col = unique(dbscan_result$cluster) + 1, pch = 20, title = "Cluster")
