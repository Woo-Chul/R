f <- c("서울", "부산", "대전", "부산", "광주", "제주")

fa <- factor(f)         #factor 생성함수

fa

splot(f)    #오류발생 

plot(fa)

#########################################################
x <- c(5,12,13,12)
xf <- factor(x)
xf                   #xf의 중심값은 (5,12,13,12)가 아니라 (1,2,3,2)이다.
#즉 첫번째는 레벨1, 다음은 레벨2, 레벨3, 마지막이 레벨 2의 값으로 내부가 만들어져 있다는 뜻.

str(xf)
unclass(xf)

length(xf)       #factor의 길이는 level의 수가 아닌 data의 길이로 정의된다. 

#새로운 레벨 추가 하기
x <- c(5,12, 13,12)
xff <- factor(x, levels=c(5,12,13,88))
xff

xff[2] <- 88
xff

gender <- factor("M", c("M", "F"))
gender

nlevels(gender)

levels(gender)