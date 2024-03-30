library(cluster)
library(factoextra)

# Load the iris dataset
data(iris)

# Select the relevant properties for clustering
iris_subset <- iris[, c("Sepal.Length", "Sepal.Width", "Petal.Length", "Petal.Width")]

# Perform CLARA clustering
clara_result <- clara(iris_subset, k = 2, samples=10)  # Assuming k=3 clusters and 5 samples for demonstration

# Visualize the clustering
fviz_cluster(clara_result, data = iris_subset)
