# Load the required library for hierarchical clustering
library(cluster)
library(factoextra)

# Load the iris dataset
data(iris)

# Select the relevant properties for clustering
iris_subset <- iris[, c("Sepal.Length", "Sepal.Width", "Petal.Length", "Petal.Width")]

# Perform hierarchical clustering
hc_result <- hclust(dist(iris_subset), method = "ward.D2")

# Visualize the clustering dendrogram
plot(hc_result, cex = 0.6, hang = -1, main = "Dendrogram of Iris Dataset")

# Add rect.hclust to the dendrogram to visualize the clusters
rect.hclust(hc_result, k = 3)  # Assuming 3 clusters for demonstration
