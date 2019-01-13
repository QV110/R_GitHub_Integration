#Basic math test for R, basic of R  code will increase your ability to
#manipulate difficult,large data, and complex machine learning.
#must understand basic manipuation before you can jump into deep machine learning to save time and frustration.
#Make sure to create Git account to link with R to  save your code, share and  incase R crash second backup. Test
#your intergration and test git bash, set user  and proper links are communicating. 

1+1
3*7*2
4/2
4/3
4* (6+5)
x <-2
y = 5
3 -> z

##assign var

assign("V", 8)

V
## upper case = 8
# removing var
V
# rm for remove
rm(V)
#no result of V

Winner <- 43
Winner #new id given to 43

#Data Types
class(x) #assign x as  numeric

#Numeric Data
is.numeric(x)
#TRUE

i <- 5L
is.integer(i)
# i to numeric
class(4L) #integer
class(2.8) #numeric
4L * 2.8 #11,2
class(4L * 2.8)#numeric
class(5L)#integer
class(4L)#integer


# Character Data
x <- "data"
x #data name for x

y <- factor("data")
y # Level: data

nchar(x) # is "data" =  4 char

nchar("My name is Vey")
#count number of char including space=14

nchar(12369)
#char = 5

#Dates
date1 <- as.Date("2019-01-01")
date1 #"2019-01-01"
class(date1) #"Date"
as.numeric(date1) # 17897
date2 <- as.POSIXct("2019-01-01 16:37")
date2 # "2019-01-01 16:37:00 PST"

class(date2) #"POSIXct" "POSIXt" 
as.numeric(date2) #1546389420

#as.numeric 
class(date1) #"Date"
class(as.numeric(date1)) #"numeric"

#Logical
TRUE * 5 # upper case lower case doesn't work to cal= 5

FALSE * 5 # same rules = 0
K <- TRUE
class(K) # upper K = "logical"
is.logical(K) #TRUE

#Comparing two numbers, and charecters
 2 == 3 #FALSE 2 not equal to 3
 2 != 3 #TRUE 2 not equal three
 2 <= 3 # TRUE 2 is less than 3
 
 "data" == "stats" # is "data" equal to "stats" is False
 "data" < "stats" # "data" less than "stats" is True

 #VECTORS
 x <- c(1, 2, 3, 4, 5, 6,7, 8, 9, 10)
 x # enter data into x =  1  2  3  4  5  6  7  8  9 10
 
 x * 3 # 3  6  9 12 15 18 21 24 27 30
 x + 2 # 3  4  5  6  7  8  9 10 11 12
 x - 3 # -2 -1  0  1  2  3  4  5  6  7
 x / 4 # 0.25 0.50 0.75 1.00 1.25 1.50 1.75 2.00 2.25 2.50
 x ^ 2 #  1   4   9  16  25  36  49  64  81 100
 
 sqrt (x) # 1.000000 1.414214 1.732051 2.000000 2.236068 2.449490 2.645751 2.828427 3.000000 3.162278
 1:30 # 1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30
 10:1 # 10  9  8  7  6  5  4  3  2  1
 -2:3 # -2 -1  0  1  2  3
 5: -7 #  5  4  3  2  1  0 -1 -2 -3 -4 -5 -6 -7
 
 #two vectors of equal lenght
 
 X <- 1:10  # set up to var
 Y <- -5:4
 
 X + Y #-4 -2  0  2  4  6  8 10 12 14
 
 X * Y # -5 -8 -9 -8 -5  0  7 16 27 40

 X / Y # -0.2 -0.5 -1.0 -2.0 -5.0  Inf  7.0  4.0  3.0  2.5
 
 X ^ Y #1.000000e+00 6.250000e-02 3.703704e-02 6.250000e-02 2.000000e-01 1.000000e+00 7.000000e+00 6.400000e+01 7.290000e+02 1.000000e+04
 
length(X) # 10
length(Y) # 10
length(X + Y) # 10

X + c(1, 2) # make sure c is lower case:  2  4  4  6  6  8  8 10 10 12
X <= 5 # TRUE  TRUE  TRUE  TRUE  TRUE FALSE FALSE FALSE FALSE FALSE
X > Y # TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
X < Y #FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE

#test elements are TRUE
X <-  10:1
Y <- -4:5 
any(X < Y) # TRUE
all(X < Y) #FALSE
 #nchar element of a vector
q  <- c("Red", "Blue", "Green", " Pink", "Yellow", "Black", "White", "Purple") # input elements
nchar(q) # results number of char: 3 4 5 5 6 5 5 6

nchar(Y) #  2 2 2 2 1 1 1 1 1 1

# Individual elements
X[1] # lower x =1, upper X= 10
X[1:2] #10  9

X[c(1,4)] #10  7

c(Cat="a",Dog="b",Bird="c", Fish="d") # assign name to elements
#Cat  Dog Bird Fish 
#"a"  "b"  "c"  "d" 

# create vector
P <- 1:4
names(P) <- c("a","b","c","d")
P #a b c d 
  #1 2 3 4 

# Factor Vectors
q2 <- c (q, "Red", "Blue", "Green", " Pink", "Yellow", "Black", "White", "Purple")
q2Factor <- as.factor(q2)
q2Factor
# [1] Red    Blue   Green   Pink  Yellow Black  White  Purple Red    Blue   Green   Pink  Yellow Black  White  Purple
#  Levels:  Pink Black Blue Green Purple Red White Yellow

as.numeric(q2Factor) #6 3 4 1 8 2 7 5 6 3 4 1 8 2 7 5

factor(x=c("baby", "kid", "teen","adult", "elderly"),
       levels = c("baby", "kid", "teen","adult", "elderly"),
       ordered=TRUE)
#[1] baby    kid     teen    adult   elderly
#Levels: baby < kid < teen < adult < elderly'

# Calling Functions
mean(x) # 5.5
apropos("mea")
# function names
#[1] ".colMeans"          ".rowMeans"          "colMeans"           "influence.measures" "kmeans"             "mean"              
#[7] "mean.Date"          "mean.default"       "mean.difftime"      "mean.POSIXct"       "mean.POSIXlt"       "rowMeans"          
#[13] "weighted.mean"  


#Missing Data
z <- c (1, 2, NA, 8, 3, NA, 3) #enter elements
z
is.na(z) # call z: FALSE FALSE  TRUE FALSE FALSE  TRUE FALSE

zChar <- c("Red", "Blue", NA, "Green", " Pink", NA, NA,"Yellow", "Black", "White", "Purple")
zChar
is.na(zChar) #FALSE FALSE  TRUE FALSE FALSE  TRUE  TRUE FALSE FALSE FALSE FALSE

mean(zChar) #NA
mean(z,na.rm = TRUE) # 3.4

#NULL
z <- c(1, NULL, 3)
z # 1 3

d <- NULL
is.null(d) # TRUE

is.null(4) # False
is.null(3) # False

## install package magrittr
library(magrittr)
x <- 1:10
mean(x) #5.5

x %>% mean #5.5

z <- c(1, 2, NA,8, 3, NA, 3)
sum(is.na(z))  #2
#another way of using pipes
z %>% is.na %>% sum #2

z %>% mean(na.rm=TRUE) # 3.4


