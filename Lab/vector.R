x <- c(80, 85, 70)     #국어, 영어, 수학 성적을 vector로 저장 
x

c(80, 85, 70) -> x    #동일한 결과이지만, '->'보다는 '<-'를 권장함.
x

#vector 생성함수 c()
#c의 의미는 concatenate or combine의 의미 

assign("x", c(80, 85, 70))  #c(80, 85, 70)과 같은 의미. 간단히 사용할 수 있는 c() 권장.
x

kor <- x[1]     #국어점수
eng <- x[2]     #영어점수 
mat <- x[3]     #수학점수
print(kor)
cat('Kor=', kor)

#################################################
#vector 생성함수 : seq()
x <- seq(1,10)
x

x <- 1:10           #같은 결과 
x

x <- seq(10, 1)
x

x <- seq(1,10, by=3)   #3씩 증가 
x

x <- seq(1,10, length.out = 5)   #1~10 사이를 같은 간격으로 하는 5개의 숫자 
x

################################################
#vector 생성함수 : req()
x <- c(1,2,3)
rep(x, times=2)       #2번 반복

rep(x, each=2)  #x vector의 각 원소를 2번씩 반복 


###############################################
#Vector의 원소 접근하기  
x <- c(1,2,3,4,5)
x[2]

x[3]

x[-3]    #3번째만 제외 

x[c(1,3,5)]

x[-c(2,4)]

x[x > 2]

x[x >= 2 & x <= 4]

x[1:3]
##############################################
#vector의 원소값 수정하기 
x[3] <- 6
x

x[c(3,4)] <- 15
x

x[x <= 15] <- 10
x

#############################################
c(1,2,3) + c(4,5,6)

c(1,2,3) * c(4,5,6)

c(1,2,3) + 1

a <- c(1,2,3)
b <- c(2,3,4)
a + b

c <- c("3", "4", "5")
a + c  #서로 타입이 다르다. 산술연산 에러 발생

#두 집합을 더할 때 union사용
union(a, c)

#차집합은 setdiff()
a
b
a - b

#두 집합을 서로 비교해서 없는 원소를 찾을 경우
setdiff(a, b)   #a와 b를 비교해서 a에는 있는데, b는 없는 것 찾기

setdiff(b, a)   #b와 a를 비교해서 b에는 있는데, a는 없는 것 찾기 

#교집합은 intersect
a
b
intersect(a, b)

a <- c(1, 2, "3")
a + 1    #vector에는 데이터 형이 동일해야...
a       #문자형으로 자동형변환

###################################################
#vector의 각 컬럼에 이름부여하기
names(a) <- c("apple", "orange", "banana")
a

a['apple']


#vector의 길이 찾기
a
length(a)  #vector의 길이

nrow(a)    #matrix의 행 구하기, 여기서는 vector이기 때문에 안됨.
NROW(a)    #vector의 건수 구하기 


#vector에 특정 문자의 포함 여부 찾기
1 %in% a

a <- c(1,2,3)
1 %in% a
4 %in% a

#vector에 요소 추가하기
a <- c(10, 20, 30, 40, 50)
a
a <- c(a[1:3], 40, a[4])
a

#vector에 특정 원소만 제거하고 출력하기
a <- c(1,2,3,4,5,6)
a
a[c(1,3)]
a[1:3]
a[-1:-3]
a[1:(length(a)-2)]

x <- c(1,3,6,2,4)
sort(x)

sort(x, decreasing = T)

order(x)   #순서값 

x <- seq(1:10)
sum(x)

mean(x)

var(x)

sd(x)

sqrt(x)

str <- c("a", "b", "c")
str

str <- c("Hello!", "World", "is", "good!")
str                   #단어들 중 가장 긴 단어의 길이를 기준으로 출력 구간을 정함. 

####################################################################
integer_vector <- c(1L, 2L, 12L, 29L)
integer_vector

logical_vector <- c(T, TRUE, F, FALSE)
logical_vector

character_vector <- c("Apple", "Pear", "Red", "Green", "These are my favorite fruites and colors")
character_vector

numeric_vector <- c(1, 3.4, 5, 10)
numeric_vector

mixed_vector <- c(character_vector, numeric_vector)
mixed_vector

class(mixed_vector)

###############################################################
ls()    #현재 working directory 또는 environment하에 있는 객체들의 이름으로 구성된 vector 보기 

#새로운 환경인 environB에 숫자 vector y 생성하기.
environB <- new.env()   
ls(environB)            #현재 객체가 하나도 없음.

assign("y", c(1,5,9), envir = environB)
ls(environB)

environB$z <- "purple"          #$를 이용해서 새로운 변수 할당하기  
ls(environB)

get('y', environB)              #y와 z에 저장된 내용을 보기 위해 get()함수이용하거나 $기호 사용하기.
get('z', envir = environB)
environB$y