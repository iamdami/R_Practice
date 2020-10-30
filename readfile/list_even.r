# read file
data <- read.table("putFileName.txt", sep=",")

# concatenate data
c(data)

class(data) # "data.frame"
class(c(data)) # "list"

li <- c(data) 
class(li) # "list"

# determines even nums
li[lapply(b,"%%", 2)==0]
