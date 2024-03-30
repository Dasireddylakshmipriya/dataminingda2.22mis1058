library(cluster)
library(factoextra)

# Load the iris dataset
data(iris)

# Select the relevant properties for clustering
iris_subset <- iris[, c("Sepal.Length", "Sepal.Width", "Petal.Length", "Petal.Width")]

# Perform AGNES hierarchical clustering
agnes_result <- agnes(iris_subset, method = "complete")  # Using complete linkage for demonstration

# Visualize the clustering dendrogram
fviz_dend(agnes_result, k = 3, cex = 0.5, k_colors = c("#2E9FDF", "#00AFBB", "#E7B800"))
