install.packages("RCurl")
install.packages("XML")
library(RCurl)
library(XML)

#블로그 검색 API URL
searchUrl <- "https://openapi.naver.com/v1/search/blog.xml"
client_ID <- "YOUR CLIENT ID"
client_Secret <- "YOUR CLIENT SECRET"
query <- URLencode(iconv("여름추천요리", "euc-kr", "UTF-8"))
#iconv() : 검색어를 euc-kr에서 utf-8로 변환함
#ASCII 문자열이 아닌 문자는 URLencode() 함수로 암호화한다.
url <- paste(searchUrl, "?query=", query, "&display=20", sep = "")
doc <- getURL(url, 
              httpheader = c('Content-Type' = "application/xml", 
                             'X-Naver-Client-Id' = client_ID,
                             'X-Naver-Client-Secret' = client_Secret))
doc
#getURL()
# 패키지 : RCurl
# 설명: URI 다운로드하기
# 반환값 : 텍스트 
# 매개변수 : url, httpheader

#블로그 내용에 대한 list 만들기 
doc2 <- htmlParse(doc, encoding = "UTF-8")

text <- xpathSApply(doc2, "//item/description", xmlValue)
text

install.packages("KoNLP")
install.packages("RColorBrewer")
install.packages("wordcloud")
install.packages("RSQLite")
install.packages('devtools')
library(KoNLP)
library(RColorBrewer)
library(wordcloud)
library(devtools)
library(RSQLite)

install_github('haven-jeon/NIADic/NIADic', build_vignettes = T) #오류가 발생해도 계속 진행 
library(NIADic)

useSejongDic()
noun <- sapply(text, extractNoun, USE.NAMES = F)
noun

noun2 <- unlist(noun)
noun2

word_count <- table(noun2)
word_count

noun2 <- Filter(function(x) { nchar(x) >= 2}, noun2)
noun2

noun2 <- gsub("\\d+", '', noun2)  #불필요한 숫자 제거 
noun2 <- gsub("<b>", '', noun2)   #불필요한 문자 제거
noun2 <- gsub("</b>",'', noun2)
noun2 <- gsub("&amp", '', noun2)
noun2 <- gsub("&lt", '', noun2)
noun2 <- gsub("&gt", '', noun2)
noun2 <- gsub("&quot", '', noun2)
noun2 <- gsub("", '', noun2)
noun2 <- gsub("\'", '', noun2)
noun2 <- gsub(" ", '', noun2)
noun2 <- gsub("-", '', noun2)

noun2

wordcount <- table(noun2)        #명사별 빈도수 
head(sort(wordcount, descreasing = T), 30)  # 명사 목록의 앞부분 출력

palete <- brewer.pal(9, "Set1")
wordcloud(names(wordcount), freq = wordcount, scale = c(5,0.25), rot.per = 0.25,
          min.freq = 1, random.order = F, random.color = T, colors = palete)
