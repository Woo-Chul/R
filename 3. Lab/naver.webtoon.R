url <- "http://comic.naver.com/comment/comment.nhn?titleId=570503&no=135"
repl_v = NULL;
library(RSelenium)
remDr <- remoteDriver(remoteServerAddr = "localhost"
                      , port = 4445
                      , browserName = "chrome")
remDr$open()
remDr$navigate(url)
doms1 <- remDr$findElements(using = "css selector", "ul.u_cbox_list span.u_cbox_contents")
p_repl <- sapply(doms1, function(x){x$getElementText()})

#p_repl_v 에는 프리미엄 댓글이 들어가게 된다.
p_repl_v <- unlist(p_repl)

#댓글더보기를 자동 클릭하는 부분이다.
more <- remDr$findElements(using = "css", "span.u_cbox_in_view_comment")
sapply(more, function(x){x$clickElement()})

#전체 댓글은 15개씩 10페이지로 구성된다.
#이 부분은 첫번째 댓글 15개를 읽어서 Vector로 변환한 다음 repl_v에 추가한다.
doms2 <- remDr$findElements(using = "css selector", "ul.u_cbox_list span.u_cbox_contents")
repl <- sapply(doms2, function(x){x$getElementText()})
repl_v <- c(repl_v, unlist(repl))
repeat {
  #이 부분은 두번째 페이지부터 10번째 페이지까지 댓글 15개를 읽어서 Vector로 변환한 다음
  # repl_v에 추가하는 부분이다.
  for(i in 4:12){
    nextCss <- paste("#cbox_module > div > div.u_cbox_paginate > div > a:nth-child(",i,") > span", sep = "")
    
    nextPage <- remDr$findElements(using = "css", nextCss)
    if(length(nextPage) == 0) break;
    sapply(nextPage, function(x){x$clickElement()})
    #렌더링보다 읽는 속도가 빠르면 바로 죽음...해서 수행을 약간 지연시키는 부분
    #네트워크 속도에 영향을 받기도 한다.
    Sys.sleep(1)
    doms3 <- remDr$findElements(using = "css selector", "ul.u_cbox_list span.u_cbox_contents")
    repl <- sapply(doms3, function(x){ x$getElementText()})
    repl_v <- c(repl_v, unlist(repl))
  }
  #10개 페이지를 다 읽으면 다음이라는 링크를 클릭하게 하여 다음 10개 페이지를 읽을 처리를 하는 부분
  nextPage <- remDr$findElements(using = "css", 
        "#cbox_module > div > div.u_cbox_paginate > div > a:nth-child(13) > span.u_cbox_cnt_page")
  if(length(nextPage) == 0) break;
  sapply(nextPage, function(x) { x$clickElement()})
  #렌더링보다 읽는 속도가 빠르면 바로 죽음...해서 수행을 약간 지연시키는 부분
  #네트워크 속도에 영향을 받기도 한다. 이 부분은 숫자를 2정도 하는 것도 좋을 것 같다.
  Sys.sleep(2)
  doms2 <- remDr$findElements(using = "css selector", "ul.u_cbox_list span.u_cbox_contents")
  repl <- sapply(doms2, function(x) { x$getElementText()})
  repl_v <- c(repl_v, unlist(repl))
}
print(repl_v)
write(repl_v, "webtoon.txt")
