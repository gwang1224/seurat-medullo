subclusters <- c("0","1","2","3","4","5","6","7","8")

# Loop through each subcluster
for (subcluster in subclusters) {
  # Read the CSV file
  data <- read.csv(paste("/home/ec2-user/df_data/df_subcluster", subcluster, ".csv", sep = ""), row.names = 1)

  # Create a title for the plot
  title <- paste("Cluster 0 Subcluster", subcluster)

  # Generate the heatmap using pheatmap
  pheatmap(data, 
           color = colorRampPalette(c("blue", "red"))(20),
           cluster_rows = TRUE,
           cluster_cols = TRUE,
           main = title,
           labels_row = rownames(data),
           labels_col = colnames(data),
           cellwidth = 5,
           cellheight = 5,
           fontsize = 5,  # Adjust text size for both row and column labels
           annotation_row_text_size = 5,  # Adjust row label font size
           annotation_col_text_size = 10   # Adjust co
  )
}
