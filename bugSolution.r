```r
# Improved error handling for CSV file reading.
file_path <- "path/to/my/file.csv"

if (!file.exists(file_path)) {
  stop(paste("Error: File not found at", file_path))
} else {
  tryCatch({
    data <- read.csv(file_path)
  }, error = function(e) {
    stop(paste("Error reading CSV file:", e$message))
  })
}
```