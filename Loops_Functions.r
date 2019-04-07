#LOOPS
v<-c("Hello", "World")
c<-1
repeat{
   print(v)
   c<-c+1
   if(c>5){
        break
    }
}
#[1] "Hello" "World"
#[1] "Hello" "World"
#[1] "Hello" "World"
#[1] "Hello" "World"
#[1] "Hello" "World"
u<-letters[1:10]
for(i in v){
   print(i)
}
#[1] "Hello"
#[1] "World"
u<-letters[1:10]
for(i in u){}
print(i)
#[1] "j"
u<-letters[1:10]
for(i in u){
    print(i)
 }
#[1] "a"
#[1] "b"
#[1] "c"
#[1] "d"
#[1] "e"
#[1] "f"
#[1] "g"
#[1] "h"
#[1] "i"
#[1] "j"

u<-letters[1:6]
for(i in u){
  if(i=='d'){
       next
    }
    print(i)
}
#[1] "a"
#[1] "b"
#[1] "c"
#[1] "e"
#[1] "f"
print(seq(10,15))
#[1] 10 11 12 13 14 15
print(sum(10,5))
#[1] 15


#FUNCTIONS
x<-function(a){
   for(i in 1:a){
        b<-i**2
       print(b)
    }
}
x(5)
#[1] 1
#[1] 4
#[1] 9
#[1] 16
#[1] 25
new.function<-function(a=6,b=9){
    result<- a * b
    print(result)
}
new.function()
#[1] 54
new.function(23,3)
#[1] 69
