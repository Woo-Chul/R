library(RSelenium)
remDr <- remoteDriver(remoteServerAddr = "localhost"
                      , port = 4445
                      , browserName = "chrome")
w <- remDr$open()
site <- paste("http://www.yes24.com/24/goods/40936880")
remDr$navigate(site)

webElem <- remDr$findElement("css", "body")
remDr$executeScript("scrollTo(0, document.body.scrollHeight)", args = list(webElem))

Sys.sleep(2)
remDr$executeScript("scrollTo(0, document.body.scrollHeight * 0.9)", args = list(webElem))                    
Sys.sleep(2)                    

repl_v = NULL
endFlag <- FALSE
page <- 3
repeat {
  for(index in 1:5){
    fullContentLinkCSS <- paste("#Review", index, sep = "")
    fullContentLink <- remDr$findElements(using = "css selector", fullContentLinkCSS)
    if(length(fullContentLink) == 0) {
      endFlag <- TRUE
      break
    }
    sapply(fullContentLink, function(x){x$clickElement()})
    Sys.sleep(2)
    fullContentCSS <- paste("#FullContent", index, sep = "")
    fullContent <- remDr$findElements(using = "css", fullContentCSS)
    repl <- sapply(fullContent, function(x){ x$getElementText()})
    repl_v <- c(repl_v, unlist(repl))
  }
  if(endFlag) break;
  
  page <- page + 1;
  nextPagetCSS <- paste("#Div_Review > p:nth-child(11) > a:nth-child(", page, ")", sep = "")
  nextPageLink <- remDr$findElements(using = "css", nextPagetCSS)
  
  if(page == 14) page <- 3
  
  Sys.sleep(2)
  sapply(nextPageLink, function(x){ x$clickElement()})
  print(page)
}
write(repl_v, "yes24.txt")
