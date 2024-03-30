library(cluster)
library(factoextra)

# Load the iris dataset
data(iris)

# Select the relevant properties for clustering
iris_subset <- iris[, c("Sepal.Length", "Sepal.Width", "Petal.Length", "Petal.Width")]

# Perform PAM clustering
pam_result <- pam(iris_subset, k = 3)  # Assuming k=3 clusters for demonstration

# Visualize the clustering
fviz_cluster(pam_result, data = iris_subset)
