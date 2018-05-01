#1차원 배열
x <- array(1:3, dim = c(3))
x

#2차원 배열 
x <- array(1:6, dim = c(2,3))
x

x <- array(c(2,4,6,8,10,12), dim = c(2,3))
x

#########################################################
coordinates <- array(1:16, dim = c(2,8,2))
coordinates

coordinates[1, ,]    #각 layer에서 1행만 추출 

coordinates[1,2, ]   #각 layer에서 1행 2열만 추출 

coordinates[1,2,2]   #2layer의 1행 2열 추출 

##########################################################
values <- seq(1, 12, by = 2)
values

#객체를 다차원 배열로 바꾸려면 dim() 함수를 사용한다. 
dim(values) <- c(2,3)
values

dim(values) <- c(3,2)
values

#######################################################
#한 학생에 대해 매 시험마다 2개의 성적을 기록한다. 
#첫번째 시험 점수이다. 
firsttest <- matrix(c(46, 30, 21, 25, 50, 48), nrow=3, byrow=T)
firsttest
#첫 시험에서 46점과 30점을 맞았고, 2번 학생은 21점과 25점을, 3번 학생은 50점과 48점을 맞았다.

#동일한 학생들의 두번째 시험 점수이다. 
secondtest <- matrix(c(46, 43, 41, 35, 50, 49), nrow=3, byrow=T)
secondtest

#두 데이터를 한개의 데이터에 넣어보자. 
tests <- array(data=c(firsttest, secondtest), dim = c(3,2,2))

#firsttest와 secondtest의 2번
#dim = c(3,2,2)에서 3개의 행과 2개의 열을 가진 2개의 층(layer) 
tests

attributes(tests)     #data structure의 속성 

tests[3,2,1]   #3번 학생이 1번 시험의 두번째 부분에서 얻은 점수는?

###################################################################
#행과 열 명명하기 
names <- list(c("1행", "2행"), c("1열","2열","3열"))
x <- array(seq(2, 12, by=2), dim = c(2,3), dimnames = names)
x