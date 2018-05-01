student_names <- c("John", "Mary", "Ethan", "Dora")
test_result <- c(76, 82, 84, 67)
test.grade <- c("B", "A", "A", "C")
df <- data.frame(student_names, test_result, test.grade) 
df

#cbind()를 이용해서 열 추가
student_ID <- c("1101", "1102", "1103", "1104")
df <- cbind(df, student_ID)
df

############################################################################
#R은 문자 vector를 data.frame에 포함시킬 때 자동으로 factor로 변환한다.
#따라서 문자열이 factor로 변환되는 것을 원치않을 경우 stringAsFactors옵션을 사용한다.
str(df)

student_names <- c("John", "Mary", "Ethan", "Dora")
test_result <- c(76, 82, 84, 67)
test.grade <- c("B", "A", "A", "C")
df <- data.frame(student_names, test_result, test.grade, stringsAsFactors = FALSE) 
str(df)

#반대로 transform()함수를 통해 문자형으로 저장하고 싶은 열들을 지정하려면
#as.character() 또는 as.factor()함수를 이용한다. 
modified.df <- transform(df, test.grade = as.factor(test.grade))
str(modified.df)

#data.frame내의 원소에 접근 
modified.df
modified.df[4,2]

#행렬과 달리 $column_name으로 접근 가능
modified.df$test_result

##############################################################
#vector를 as.data.frame()을 이용해서 data.frame으로 변환
values <- seq(1,12, by = 2)
values
values_matrix <- matrix(values, ncol = 3, nrow = 2)
values_matrix.df <- as.data.frame(values_matrix)
values_matrix.df

###########################################################
#rownames()와 colnames()를 사용해서 컬럼과 행에 이름붙이기 
colnames(values_matrix.df) <- c("Col_A", "Col_B", "Col_C")
values_matrix.df

rownames(values_matrix.df) <- c("Row_1", "Row_2")
values_matrix.df

##########################################################
#data.frame생성하기
no <- c(1,2,3,4)
name <- c("Apple", "Banana", "Peach", "Berry")
price <- c(500, 200, 200, 50)
qty <- c(5,2,7,9)
fruits <- data.frame(NO = no, NAME = name, PRICE = price, QTY = qty)
fruits

#matrix에서 data.frame으로 
x <- matrix(
     c(1, "Sujan", 162, 43,
       2, "Michael", 175, 75,
       3, "Smith", 170, 72,
       4, "Sally", 165, 55), 4, by = T)
people <- data.frame(x)
people

#column 이름 명명하기 
names(people) <- c('NO', 'NAME', 'HEIGHT', 'WEIGHT')
people


no <- c(1,2,3,4)
name <- c("Apple", "Banana", "Peach", "Berry")
price <- c(500, 200, 200, 50)
qty <- c(5,2,7,9)
fruits <- data.frame(no, name, price, qty)
fruits

#data.frame 내용 집계하기
summary(fruits)

#data.frame 함수 사용하기
fruits
apply(fruits[, c(3,4)], 2, mean)    #1은 행, 2는 열 

sapply(fruits[, c(3,4)], sum)

#data.frame에서 data조회 
fruits
fruits$no
fruits$name
fruits[1,2]
fruits[1,]
fruits[2,]
fruits[,3]
fruits[c(1,2)]
fruits[c(1,2), ]

####################################################################
#특정 조건에 맞는 데이터만 골라서 보고 싶을 경우 subset()사용 
subset(fruits, qty > 4)
subset(fruits, price == "200")
subset(fruits, price == 200)      # 숫자형은 모두 허용 
subset(fruits, name == "Peach")
subset(fruits, name = "Peach")    #주의 
subset(fruits, name == Peach)     #Error Why? 문자형은 모두 ""으로...


#####################################################################
#data.frame의 내용 확인 및 출력 순서 지정하기 
ncol(fruits)      #열 갯수 
nrow(fruits)      #행 갯수 
names(fruits)     #열 이름 출력 
rownames(fruits)  # 행 이름 
colnames(fruits)  # 열 이름 
fruits[c(1,3,2),]  #1,3,2 행 순서로 출력
fruits[c(1,3,2)]    #1,3,2 열 순서로 출력 

####################################################################
x <- data.frame(name=c("Sujan", "Michael", "Smith"),
                address=c("Seoul", "Pusan", "Ulsan"))
y <- data.frame(name=c("Sujan", "Michael", "Sally"), 
                tel=c("123", "456", "789"))
merge(x, y)     #공통 컬럼을 기준으로 합치기 

cbind(x, y)    #무조건 칼럼으로 합치기 

###################################################################
kids <- c("Jack", "Jill")
ages <- c(12, 10)
df <- data.frame(kids, ages, stringsAsFactors = FALSE)
df
str(df)

#첫째 열에 접근하는 방법 3가지 
df[[1]]
df$kids
df[,1]
