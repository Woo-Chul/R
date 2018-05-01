member <- list(name="한지민", address="서울",
               tel="010-1234-5678")
member

member$name    #member list내의 name변수와 값 

member$address   #member list내의 address변수와 값 

member[1:2]     #member list내의 1번째와 2번째 변수와 값 

member['name']  #member list내의 name변수 출력

member[['name']]  #member list내의 name변수의 값 출력 

member['tel']     #member list내의 tel변수 출력

member[['tel']]   #member list내의 tel변수의 값 출력 

###########################################################
#List에 새로운 요소 추가/삭제하기
member$birth <- "1975-10-23"
member

member$birth <- NULL
member

############################################################
#List 관련 함수들.
length(member)        #list 요소 갯수 

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

###########################################################
x <- list(1:4, rep(3, 5), "cat")
x
str(x)         #list에 대해 더 자세히 살펴보기 위해 str() 사용 

logical_vector <- c(T, TRUE, F, FALSE)
int_vector <- c(1,3,5,10)
y <- list(1:4, "I prefer pears", logical_vector, int_vector, x)
y
str(y)

x[3]
x[[3]]
str(x[3])        #x[3]은 "cat"을 단일 원소로 가지는 list로 리턴함. 

#list의 원소를 새로운 변수(객체)로 할당하려면..
animal <- x[[3]]
animal

num_vector <- x[[1]]
num_vector

#list내에 포함된 각 객체(변수)의 원소에 접근하려면 이중 대괄호 다음에 단일 대괄호를 사용한다. 
x[[1]][4]

#비교
x[1][4]   #--> NULL

x[1][1][4] #--> NULL

x[1][[1]][4]
############################################################
new_list <- c(list(1,2,x), c(3,4), seq(5,6))            
#c()함수를 사용해서 list와 일반 vector 결합 가능 
#이때는 일반 vector들은 먼저 길이가 1인 list로 강제 변환된 후 처리됨. 
new_list
str(new_list)

###############################################################
#일반 vector를 list로 강제 변환하려면 as.list()를 이용
int_vector
list_int_vector <- as.list(int_vector)
str(list_int_vector)

##############################################################
j <- list("Joe", 55000, T)
j

j <- list(name="Joe", salary=55000, union=T)
j

j$sal      #list구성요소의 이름은 다른 것과 충돌되지 않는 다는 조건하에서는 축약도 가능하다. 

x <- vector(mode = "list")     #list는 vector이기 때문에 vector()를 통해서도 생성가능 
x[["abc"]] <- 3
x

############################################################
#list의 indexing방법 3가지 
j$salary
j[["salary"]]
j[[2]]

#하지만 단일 대괄호로도 접근할 수 있는데, 이는 부분list(sub list)를 접근하는 것이다. 
j["salary"]
j[1:2]

j2 <- j[2]
j2
class(j2)
str(j2)

#반면 이중 대괄호를 사용하면 값을 추출하게 된다.
j[[1:2]]   #--> Error

j2a <- j[[2]]
j2a
class(j2a)

###############################################################
#list에 원소 추가/삭제하기
z <- list(a="abc", b=12)
z
z$c <- "sailing"
z

#list에 추가할 때 vector index를 사용할 수 있다. 
z[[4]] <- 28
z[5:7] <- c(F, T, T)
z

#list의 요소를 제거할 때 NULL 사용한다.
z$b <- NULL
z
#b요소를 제거했더니 list의 index가 한개씩 당겨졌다.

#list 합치기
c(list("Joe", 55000, T), list(5))

#list의 크기 구하기
length(j)
