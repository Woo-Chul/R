Sys.Date()

date()

substr(Sys.Date(), 1, 4)

f <- "2018-01-31"
g <- "2018-01-01"
g - f 

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
as.Date(31, origin='2018-05-01')
as.Date(-30, origin='2018-04-03')


j <- as.POSIXct('2018-04-18 14:00:00')
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
