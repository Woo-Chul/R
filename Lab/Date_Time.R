Sys.Date()           #현재 날짜

date()                  #날짜 시간 모두.

substr(Sys.Date(), 1, 4)     #substr()로 주어진 문자에서 특정 글자수만큼 추출

f <- "2018-01-31"
g <- "2018-01-01"
g - f                                   #문자열이기 때문에 연산 불가능 

h <- as.Date('2018-01-31')
i <- as.Date('2018-01-01')
i - h
h - i

as.Date('2018-04-18')
as.Date('2018/04/18')
as.Date('01-05-2018')
as.Date('01-05-2018', format='%d-%m-%Y')
as.Date('2018년 5월 1일', format='%Y년 %m월 %d일')
as.Date('05012018', format='%m%d%Y')
as.Date(31, origin='2018-05-01')   #origin은 특정 날자를 기준으로 며칠 후의 날짜를 알고 싶을 때 사용.
as.Date(-30, origin='2018-04-03')


j <- as.POSIXct('2018-04-18 14:00:00')  #시간 정보까지 보고 싶을 때 POSIXct 클래스 사용. 
j
k <- as.POSIXct('2018-04-18 13:00:00')
j
k - j
j - k

m <- Sys.Date()
m

class(m)
mode(m)

n <- as.character(m)
n
class(n)
mode(n)
