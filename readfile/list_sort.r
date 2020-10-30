# read file
data <- read.table("putFileName.txt", sep=",")

l <- list(data)

# sort Ascending(default)
lapply(l, sort)
# Get list element, pass it to function, and return the result in new list format
