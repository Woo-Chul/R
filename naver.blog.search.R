install.packages("RCurl")
install.packages("XML")
library(RCurl)
library(XML)

searchUrl <- "https://openapi.naver.com/v1/search/blog"
client_ID <- "CyVQ674rqmARHoJxLQPj"
client_Secret <- "Veoxwi2OY3"
query <- URLencode(iconv("여름추천요리", "euc-kr", "UTF-8"))
url <- paste(searchUrl, "?query=", query, "&display=20", sep = "")
doc <- getURL(url, 
      httpheader = c('Content-Type' = "application/xml", 
      'X-Naver-Client-Id' = client_ID,
      'X-Naver-Client-Secret' = client_Secret))
doc2 <- htmlParse(doc, encoding = "UTF-8")
doc2
text <- xpathSApply(doc2, "//item/description", xmlValue)
text
