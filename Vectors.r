apple<-c('red','green','yellow')
print(apple)
#[1] "red"    "green"  "yellow"
list1<-list(c(3,5,7),21.1)
print(list1)
#[[1]]
#[1] 3 5 7

#[[2]]
#[1] 21.1

m=matrix(c('a','a','c','b','a','c'),nrow=2,ncol=3)
print(m)
#     [,1] [,2] [,3]
#[1,] "a"  "c"  "a" 
#[2,] "a"  "b"  "c" 
a<-array(c('green','yellow'),dim=c(3,3,2))
print(a)
#, , 1
#     [,1]     [,2]     [,3]    
#[1,] "green"  "yellow" "green" 
#[2,] "yellow" "green"  "yellow"
#[3,] "green"  "yellow" "green" 

#, , 2
#     [,1]     [,2]     [,3]    
#[1,] "yellow" "green"  "yellow"
#[2,] "green"  "yellow" "green" 
#[3,] "yellow" "green"  "yellow"

a<-array(c('green','yellow','red','purple'),dim=c(3,3,2))
print(a)
#, , 1
#     [,1]     [,2]     [,3]    
#[1,] "green"  "purple" "red"   
#[2,] "yellow" "green"  "purple"
#[3,] "red"    "yellow" "green" 

#, , 2
#     [,1]     [,2]     [,3]    
#[1,] "yellow" "green"  "purple"
#[2,] "red"    "yellow" "green" 
#[3,] "purple" "red"    "yellow"

#create a vector
apple_colours<-c('green','green','red','red','red','yellow')
#create a factor object
factor_apple<-factor(apple_colours)
print(factor_apple)
#[1] green  green  red    red    red    yellow
#Levels: green red yellow

print(nlevels(factor_apple))
#[1] 3
sweet<-c('Rasgulla','Milkcake','Gulabjamun','Rasmalai')
fac_sweet<-factor(sweet)
print(fac_sweet)
#[1] Rasgulla   Milkcake   Gulabjamun Rasmalai  
#Levels: Gulabjamun Milkcake Rasgulla Rasmalai
print(nlevels(fac_sweet))
#[1] 4

#Create the dataframe

BMI<- data.frame(gender = c("Male","Male","Female"),height=c(152,170,165),weight=c(81,93,78),Age=c(42,38,29))
print(BMI)
#  gender height weight Age
#1   Male    152     81  42
#2   Male    170     93  38
#3 Female    165     78  29
