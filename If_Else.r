v<-2:20
print(v)
#[1]  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20
print(5 %in%v)
#[1] TRUE

x<-50L
if(is.integer(x)){
    print("X is an integer")
    }
#[1] "X is an integer"

x<-c("what","is",'truth')
if("Truth" %in% x){
   print("Truth is found")
  }else{
   print("Truth is not found")
 }
#[1] "Truth is not found"
#End if and write else in same line

x<-c("what","is",'truth')
if("Truth" %in% x){
  print("Truth is found")
  }else if("is" %in% x){
   print("is is found")
  }else{
  print("Nothing found")
  }
#[1] "is is found"