#LISTS
list_data<-list(c("Jan","Feb","Mar"), matrix(c(3,9,5,1,-2,8), nrow=2), list("green",6.9))
names(list_data)<-c("!st Quarter","A matrix","A Inner List")
print(list_data[1])

print(list_data[3])
#`A Inner List`
#'A Inner List`[[1]]
#[1] "green"

#`A Inner List`[[2]]
#[1] 6.9

print(list_data$`A matrix`)
 #     [,1] [,2] [,3]
# [1,]    3    5   -2
# [2,]    9    1    8
list_data[4]="New Element"
list_data
# `!st Quarter`
# [1] "Jan" "Feb" "Mar"

# `A matrix`
#      [,1] [,2] [,3]
# [1,]    3    5   -2
# [2,]    9    1    8

# `A Inner List`
# `A Inner List`[[1]]
# [1] "green"
# 
# $`A Inner List`[[2]]
# [1] 6.9

# [[4]]
# [1] "New Element"

list_data<-NULL
list_data
#NULL
list_data[3]<-"Updated Element"
list_data
#[1] NA                NA                "Updated Element"
list1<-list(c("Hello","World"),list("green",6.9))
list2<-list(c("Hey","There"),list("red",26))
list3<-c(list1,list2)
list3
# [[1]]
# [1] "Hello" "World"
# 
# [[2]]
# [[2]][[1]]
# [1] "green"
# 
# [[2]][[2]]
# [1] 6.9
# 
# 
# [[3]]
# [1] "Hey"   "There"
# 
# [[4]]
# [[4]][[1]]
# [1] "red"
# 
# [[4]][[2]]
# [1] 26
list4<-list(1:5)
list4
# [[1]]
# [1] 1 2 3 4 5

unlist(list4)
#[1] 1 2 3 4 5
list5<-list(6:9)

#matrix
M<-matrix(c(3:14),nrow=4,byrow=TRUE)
print(M)
#      [,1] [,2] [,3]
# [1,]    3    4    5
# [2,]    6    7    8
# [3,]    9   10   11
# [4,]   12   13   14
M<-matrix(c(3:14),nrow=4)
print(M)
#      [,1] [,2] [,3]
# [1,]    3    7   11
# [2,]    4    8   12
# [3,]    5    9   13
# [4,]    6   10   14