# 웹 스크래핑 URL
install.packages("XML")
library(XML)
url <- "http://www.coupang.com/np/search?q=%EC%97%AC%EC%84%B1%ED%81%AC%EB%A1%9C%EC%8A%A4%EB%B0%B1"
url <- iconv(url, "CP949", "UTF-8")
#R은 기본적으로 CP949에 맞춰져 있기 때문에 UTF-8로 변경
doc <- htmlParse(url, encoding="UTF-8")
doc
# 상품명 출력 
# 쿠팡 상품 페이지 소스 변경에 따라, 상품명 검색 경로 수정 
# prod_name <- xpathSApply(doc, "//ul[@id='productList']//dd[@class='name']", xmlValue) 
prod_name <- xpathSApply(doc, "//ul[@id='productList']//div[@class='name']", xmlValue) 
prod_name
prod_name <- gsub('\n', '', prod_name)
# 쿠팡 상품 페이지 소스 변경에 따라, '\t'(탭 키) 추가 제거
prod_name <- gsub('\t', '', prod_name)

prod_name <- gsub(' ', '', prod_name)
prod_name

price <- xpathSApply(doc, "//ul[@id='productList']//strong[@class='price-value']", xmlValue)
price

df <- data.frame(상품명=prod_name, 가격=price) 
df

df$상품명 <- format(df$상품명, justify = "left")
df