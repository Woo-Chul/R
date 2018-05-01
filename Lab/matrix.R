#######################################################
#matrix 생성함수 : matrix() 
x <- matrix(c(1,2,3,4))
x

x <- matrix(c(1,2,3,4), nrow=2)
x

x <- matrix(c(1,2,3,4), nrow=2, byrow=T)   #가로로 데이터 입력
x

x <- matrix(1:6, nrow=2)
x

x <- matrix(1:6, nrow=2, byrow=TRUE)
x

x[,1]
x[1,]
x[2,2]

####################################################
#행과 열 이름 주기
names <- list(c("1행", "2행"), c("1열", "2열", "3열"))
matrix(1:6, nrow=2, byrow=T, dimnames=names)


####################################################
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

v1 <- c(1,2,3,4)
v2 <- c(5,6,7,8)
v3 <- c(9,10,11,12)
x <- cbind(v1, v2, v3)
x
rownames(x) <- c("1행", "2행", "3행", "4행")
x

colnames(x) <- c("1열", "2열", "3열")
x

ncol(x)       #열갯수 
nrow(x)       #행갯수 
dim(x)        #몇행 몇열. 
colnames(x)   #열 이름 
rownames(x)   #행 이름
x
rowSums(x)
colSums(x)
rowMeans(x)
colMeans(x)


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

y <- matrix(1:4, nrow=2)
y

y %*% y     #행렬의 곱 

3 * y       #행렬 상수 간 곱

y + y       #행렬의 합 


z <- matrix(c(1,1,1,2,1,0,3,0,1,4,0,0), nrow=4, byrow=T)
z
z[,2:3]

#############부분행렬######################
m <- matrix(c(11,12,21,22,31,32), nrow=3, byrow=T)
m
m[2:3, ]

m[2:3, 2]

m <- matrix(1:6, ncol=2)
m
m[c(1,3), ] <- matrix(c(1,1,8,12), nrow=2)
m

m <- matrix(nrow=3, ncol=3)
x <- matrix(c(4,5,2,3), nrow=2)
x
m[2:3, 2:3] <- x
m

m <- matrix(1:6, ncol=2)
m
m[-2, ]    #특정 원소 제외 
