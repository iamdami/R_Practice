# read file
data <- read.table("putFileName.txt", sep=",")

array(data)

# sort Ascending(default)
sort(array(data))

# sort Descending
sort(array(data), decreasing = T) 
