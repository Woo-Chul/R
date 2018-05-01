print('Hello, World')

print(
  "hello"
)

9 * 8 * 7 * 6 * 5 * 4 * 3 * 2 * 1

factorial(9)

x <- c(1,2,4)
x

q <- c(x, x, 8)
q

x[3]

x <- c(1,2,4)
x[2:3]

mean(x)                #평균값 구하기

sd(x)                     #표준편차 구하기

y <- mean(x)
y

rep(x = "배고파", times=5)

rep(times=5)     #Error 발생, Why?

plot(10,10)

plot(c(5, 7), c(20, 30))

plot(runif(100), runif(100))    #runif -> random 숫자를 반환하는 함수

data()     #R에서 제공하는 Data Set 목록보기

mean(Nile)           #Data Set 중 Nile강의 흐름에 대한 데이터의 평균값구하기

sd(Nile)                #Nile강의 흐름에 대한 데이터중 표준편차 구하기

hist(Nile)              # Nile강 Data의 히스토그램


library(help="base")    #기본 Package 목록 출력

install.packages("KoNLP")    #KoNLP Package 설치하기

v <- ("통계와 확률을 R과 함께 배우기")
library(KoNLP)

extractNoun(v)

remove.packages("KoNLP")    #설치한 Package를 지우기 위해서는 remove.packages("패키지명") 사용

q()        #종료하기, Windows에서는 quit()사용, Linux에서는 Ctrl-D, Mac에서는 cmd-D
