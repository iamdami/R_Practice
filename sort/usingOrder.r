v1 <- c(3, 7, 2, 6)
v2 <- c(3, 7, 2, NA, 6)

#order()
#By default, the NA value is excluded from the sort result
#Ascending is the default sort order

order(v1)
#Confirm that the second value is the largest

v1[order(v1)]
#Output sorted values through index

v2[order(v2)]
#Place NA to the end (default)
 
v2[order(v2, na.last = F)]
#Place NA to the first
 
v1[order(v1, decreasing = T)]
#Sort Descending
