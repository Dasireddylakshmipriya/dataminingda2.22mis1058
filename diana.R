library(cluster)
library(factoextra)

# Load the iris dataset
data(iris)

# Select the relevant properties for clustering
iris_subset <- iris[, c("Sepal.Length", "Sepal.Width", "Petal.Length", "Petal.Width")]

# Perform DIANA hierarchical clustering
diana_result <- diana(iris_subset)

# Visualize the clustering dendrogram with custom colors
fviz_dend(diana_result, k = 3, cex = 0.5, k_colors = c("#FF5733", "#33FF57", "#3366FF"))
