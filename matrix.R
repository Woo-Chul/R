x <- matrix(c(1,2,3,4))
x

x <- matrix(c(1,2,3,4), nrow=2)
x

x <- matrix(c(1,2,3,4), nrow=2, byrow=T)   #가로로 데이터 입력
x

x[,1]
x[1,]
x[2,2]

#matrix에 새로운 행과 열 추가하기 rbind(), cbind()
x <- matrix(c(1,2,3,
            4,5,6,
            7,8,9), 3, by=T)
x
x <- rbind(x, c(10,11,12))
x

y <- matrix(c(1,2,3,
              4,5,6), 2, by=T)
y
y <- cbind(y, c(33, 99))
y


#apply() 사용하기
a <- matrix(c(1,2,3,
              4,5,6), 2, by=T)
a
apply(a, 1, max)   # 1: 가로로,  max : 가장 큰 값 적용 
apply(a, 2, max)   # 2: 세로로,  max : 가장 큰 값 적용 
apply(a, 2, mean)  # 2: 세로로,  mean : 평균함수 적용 

a <- matrix(c(1,2,3,
              4,5,6), 2, by=T)
a
f <- function(x) x * c(2,3,4)
b <- apply(a, 1, f)
b

f <- function(x) x * c(2,3)
b <- apply(a, 2, f)
b

#matrix 각 컬럼에 이름 부여하기 
a
colnames(a) <- c("First", "Second", "Third")
a
