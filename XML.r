install.packages("XML")
search()
# [1] ".GlobalEnv"        "tools:rstudio"     "package:stats"     "package:graphics" 
# [5] "package:grDevices" "package:utils"     "package:datasets"  "package:methods"  
# [9] "Autoloads"         "package:base"     
library("XML", lib.loc="~/R/win-library/3.5")
search()
# [1] ".GlobalEnv"        "package:XML"       "tools:rstudio"     "package:stats"    
# [5] "package:graphics"  "package:grDevices" "package:utils"     "package:datasets" 
# [9] "package:methods"   "Autoloads"         "package:base" 
library("XML")
library("methods")
result<-xmlParse(file="input.xml")
print(result)

?xml version="1.0"?>
<RECORDS>
  <EMPLOYEE>
    <ID>1</ID>
    <NAME>RICK</NAME>
    <SALARY>623.3</SALARY>
    <STARTDATE>1/1/2012</STARTDATE>
    <DEPT>IT</DEPT>
  </EMPLOYEE>
  <EMPLOYEE>
    <ID>2</ID>
    <NAME>DAN</NAME>
    <SALARY>679.3</SALARY>
    <STARTDATE>26/09/2014</STARTDATE>
    <DEPT>HR</DEPT>
  </EMPLOYEE>
  <EMPLOYEE>
    <ID>3</ID>
    <NAME>MATHEW</NAME>
    <SALARY>555</SALARY>
    <STARTDATE>1/2/2013</STARTDATE>
    <DEPT>Operations</DEPT>
  </EMPLOYEE>
  <EMPLOYEE>
    <ID>4</ID>
    <NAME>MICHHELE</NAME>
    <SALARY>800</SALARY>
    <STARTDATE>15/12/2011</STARTDATE>
    <DEPT>IT</DEPT>
  </EMPLOYEE>
</RECORDS>
 
> rootnode<-xmlRoot(result)
> print(rootnode)
#<RECORDS>
#  <EMPLOYEE>
#    <ID>1</ID>
#    <NAME>RICK</NAME>
#    <SALARY>623.3</SALARY>
#    <STARTDATE>1/1/2012</STARTDATE>
#    <DEPT>IT</DEPT>
#  </EMPLOYEE>
#  <EMPLOYEE>
#    <ID>2</ID>
#    <NAME>DAN</NAME>
#    <STARTDATE>26/09/2014</STARTDATE>
#    <DEPT>HR</DEPT>
#  </EMPLOYEE>
#  <EMPLOYEE>
#    <ID>3</ID>
#    <NAME>MATHEW</NAME>
#    <SALARY>555</SALARY>
#    <STARTDATE>1/2/2013</STARTDATE>
#    <DEPT>Operations</DEPT>
#  </EMPLOYEE>
#  <EMPLOYEE>
#   <ID>4</ID>
#    <NAME>MICHHELE</NAME>
#    <SALARY>800</SALARY>
#    <STARTDATE>15/12/2011</STARTDATE>
#    <DEPT>IT</DEPT>
#  </EMPLOYEE>
#</RECORDS> 

rootsize<-xmlSize(rootnode)
print(rootsize)
#[1] 4
print(rootnode[1])
#$EMPLOYEE
#<EMPLOYEE>
#  <ID>1</ID>
#  <NAME>RICK</NAME>
#  <SALARY>623.3</SALARY>
#  <STARTDATE>1/1/2012</STARTDATE>
#  <DEPT>IT</DEPT>
#</EMPLOYEE> 

#attr(,"class")
#[1] "XMLInternalNodeList" "XMLNodeList"        

print(rootnode[[1]][[1]])
#<ID>1</ID> 
xmldataframe<- xmlToDataFrame("input.xml")
print(xmldataframe)
#  ID     NAME SALARY  STARTDATE       DEPT
#1  1     RICK  623.3   1/1/2012         IT
#2  2      DAN  679.3 26/09/2014         HR
#3  3   MATHEW    555   1/2/2013 Operations
#4  4 MICHHELE    800 15/12/2011         IT
View(xmldataframe)
