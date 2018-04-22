#data.frame생성하기
no <- c(1,2,3,4)
name <- c("Apple", "Banana", "Peach", "Berry")
price <- c(500, 200, 200, 50)
qty <- c(5,2,7,9)
fruits <- data.frame(NO = no, NAME = name, PRICE = price, QTY = qty)
fruits

x <- matrix(
     c(1, "Sujan", 162, 43,
       2, "Michael", 175, 75,
       3, "Smith", 170, 72,
       4, "Sally", 165, 55), 4, by = T)
people <- data.frame(x)
people

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
apply(fruits[, c(3,4)], 2, mean)

sapply(fruits[, c(3,4)], sum)

fruits
fruits$no
fruits$name
fruits[1,2]
fruits[1,]
fruits[2,]
fruits[,3]
fruits[c(1,2)]
fruits[c(1,2), ]

subset(fruits, qty > 4)
subset(fruits, price == "200")
subset(fruits, price == 200)      # 숫자형은 모두 허용 
subset(fruits, name == "Peach")
subset(fruits, name = "Peach")    #주의 
subset(fruits, name == Peach)

ncol(fruits)
nrow(fruits)
names(fruits)
rownames(fruits)
colnames(fruits)
fruits[c(1,3,2),]
fruits[c(1,3,2)]

x <- data.frame(name=c("Sujan", "Michael", "Smith"),
                address=c("Seoul", "Pusan", "Ulsan"))
y <- data.frame(name=c("Sujan", "Michael", "Sally"), 
                tel=c("123", "456", "789"))
merge(x, y)

cbind(x, y)
