#1page부터 100page까지 scraping하기

library(rvest)
site <- "https://movie.naver.com/movie/point/af/list.nhn?page="
movie.review <- NULL
for(i in 1:100){
  url <- paste(site, i, sep = "")
  text <- read_html(url, encoding = "CP949")

  #영화제목
  nodes <- html_nodes(text, ".movie")
  title <- html_text(nodes)   #html_attr(node객체, 속성명)
  title
  
  #영화평점
  nodes <- html_nodes(text, ".point")
  point <- html_text(nodes)
  point
  
  #영화리뷰
  nodes <- html_nodes(text, ".title")
  review <- html_text(nodes, trim = T)
  review
  review <- gsub("\t", "", review)  #첫 argument를 두번째 argument로 변환하는 함수 
  review <- gsub("\r\n", "", review)
  review <- gsub("신고", "", review)
  review
  
  page <- cbind(title, point)
  page <- cbind(page, review)
  movie.review <- rbind(movie.review, page)
}
write.csv(movie.review, "movie_reviews1.csv")
