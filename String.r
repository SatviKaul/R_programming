a<-'Started with single quote'
print(a)
#[1] "Started with single quote"
a<-"Started with double quote"
print(a)
#[1] "Started with double quote"
a<-"My pet's name is Sattu"
print(a)
#[1] "My pet's name is Sattu"
a<-"Hello"
b<-"how"
c<-"are you?"
print(paste(a,b,c))
#[1] "Hello how are you?"
print(paste(a,b,c,sep="-"))
#[1] "Hello-how-are you?"
print(paste(a,b,c,sep="69"))
#[1] "Hello69how69are you?"
print(paste(a,b,c,collapse=""))
#[1] "Hello how are you?"
print(paste(a,b,c,collapse=" "))
#[1] "Hello how are you?"
result<- format(23.123456789, digits=9)
print(result)
#[1] "23.1234568"
result<- format(c(23.123456789), scientific=TRUE)
print(result)
#[1] "2.312346e+01"
result<- format(23.69, nsmall=5)
result
#[1] "23.69000"
result<- format(23.69, width=6)
result
#[1] " 23.69"
result<- format(23.6934783774, width=6)
result
#[1] "23.69348"
result<-format("Hello", width=8, justify='c')
result
#[1] " Hello  "
result<-nchar('Count the number')
print(result)
#[1] 16
result<-toupper('Change to upper case')
result
#[1] "CHANGE TO UPPER CASE"
result<-tolower('Change to lower case')
result
#[1] "change to lower case"
result<-substring('Extract',5,7)
result
#[1] "act"
#Index strarts from 1 in R
v<-5:10
v
#[1]  5  6  7  8  9 10
v<-c(5,6,7,8,9,10)
v
#[1]  5  6  7  8  9 10
v<-2.5:5.1
v
#[1] 2.5 3.5 4.5

print(seq(5.5,9.8, by=1.1))
#[1] 5.5 6.6 7.7 8.8
t<-c("Sun","Mon","Tues","Wed","Thurs","Fri","Sat")
u<-t[c(2,3,6)]
print(u)
#[1] "Mon"  "Tues" "Fri" 
v<-c(1,2,3,4,5,6)
sort(v,decreasing = TRUE)
#[1] 6 5 4 3 2 1