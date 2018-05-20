fruits <- read.table("fruits.txt", header = T, sep = "")
fruits

#원본파일에 header가 있기 때문에 header = TRUE이다. 
#공백으로 구분되어 있기 때문에 sep = "" 이다. 
#만일 원본파일에 header가 없을 경우에는 header를 생략하면 된다. 

fruits1 <- read.table("fruits1.txt", sep = "")
fruits1

fruits2 <- read.table("fruits2.txt", sep = "")
fruits2
###파일 중간에 #이 있으면 주석으로 인식하고 주석을 읽어들이지 않는 것을 알 수 있다.

fruits2 <- read.table("fruits2.txt", sep = "", skip = 3)
fruits2
###첫줄부터 3줄 skip 한다. 

fruits2 <- read.table("fruits2.txt", sep = "", nrows = 3)
fruits2
###nrows는 skip과 반대로 출력할 줄 수를 지정하는 옵션이다. 

List <- read.table("studentlist.txt")
List
#첫 번째 행이 이상하다. 
#read.table()은 read.csv()와 다르게 header 인자의 기본값은 FALSE로 되어 있다.
#그래서 파일에 변수열 이름이 있다면 반드시 header = T 인자를 반드시 입력한다.
List <- read.table("studentlist.txt", header = TRUE)
List

#read.table() 함수는 tab을 기본 구분기호로 인식하기 때문에, 파일에서 tab으로 값들이 구분되어 있어야 한다. 
#하지만 다른 구분으로도 구분값을 인식할 수 있다.
#다음 파일은 구분값이 ';'으로 되어 있다.
List <- read.table("studentlist2.txt", header = T, sep = ";")
List