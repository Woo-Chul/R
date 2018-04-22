member <- list(name="한지민", address="서울",
               tel="010-1234-5678",
               pay=300)
member

member$name

member$pay

member[1:2]

#List에 새로운 요소 추가/삭제하기
member$birth <- "1975-10-23"
member

member$birth <- NULL
member

#List 관련 함수들.
length(member)

a <- list(1:5)
a

b <- list(6:10)
b

lapply(c(a, b), max)

a <- list(1:5)
a

b <- list(6:10)
b

sapply(c(a, b), max)
