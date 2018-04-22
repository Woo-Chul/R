c(1,2,3,4,5)

a <- c(1,2,3,4,5)
a + 1

x <- c(1,2,3,4,5)
x[2]

x[3]

x[-3]

x[3] <- 6
x

x[1:3]

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

#vector의 각 컬럼에 이름부여하기
names(a) <- c("apple", "orange", "banana")
a

a['apple']


#vector에 연속적인 데이터 할당하기 : seq(), rep()
seq(1,10)
seq(5, -5)
seq(1, 10, 2)

rep(1:3, 2)
rep(1:4, 3)
rep(1:3, each=3)


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
