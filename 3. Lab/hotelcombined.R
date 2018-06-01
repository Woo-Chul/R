install.packages("RSelenium")
library(RSelenium)
remDr <- remoteDriver(remoteServreAddr = "localhost", port = 4445, browserName = "chrome")
remDr$open()

#Hotel 주소
url <- "https://www.hotelscombined.co.kr/Hotel/Search?checkin=2018-05-31&checkout=2018-06-01&Rooms=1&adults_1=2&languageCode=KO&currencyCode=KRW&fileName=Kimchee_Guesthouse_Hongdae"
remDr$navigate(url)

#이름
hn1 <- remDr$findElements(using = "css selector", "#hc_htl_intro")

#평점
hre1 <- remDr$findElements(using = "css selector", "#hc_htl_reviews div.hc_reviews_rating")

#리뷰(글)
hcomm1 <- remDr$findElements(using = "css selector", "#hc_r_3b div.hc-customerreviews__comments")

hn1 <- sapply(hn1, function(x){x$getElementText()})
hre1 <- sapply(hre1, function(x){x$getElementText()})
hcomm1 <- sapply(hcomm1, function(x){x$getElementText()})

LST1 <- c(hn1, hre1)

sp1_1 <- LST1[[1]]   #이름
sp1_2 <- LST1[[2]]   #점수

n1 <- as.character(sp1_1)
a1 <- as.numeric(substr(sp1_2, 11, 13))
a2 <- as.numeric(substr(sp1_2, 18, 21))
a3 <- as.numeric(substr(sp1_2, 27, 29))
a4 <- as.numeric(substr(sp1_2, 34, 36))
a5 <- as.numeric(substr(sp1_2, 41, 43))
a6 <- as.numeric(substr(sp1_2, 49, 51))

Star <- data.frame()
Star <- rbind(Star, data.frame(name = c(n1), 
                  clean = c(a1),
                  meal = c(a2),
                  facility = c(a3),
                  location = c(a4),
                  room = c(a5),
                  service = c(a6)))
write.csv(Star, "hotel.csv")
