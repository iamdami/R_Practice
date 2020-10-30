# read file
data <- read.table("putFileName.txt", sep=",")

# Put array data into arr variable
arr <- array(data)

# determines even nums
for(i in arr) {
+ if(i%%2==0) {
+ print(i) }}
