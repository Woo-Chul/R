library(RSelenium)
remDr <- remoteDriver(remoteServerAddr = "localhost", port = 4445, browserName = "chrome")
remDr$open()
remDr$navigate("http://www.google.com/ncr")

webElem <- remDr$findElement(using = "css", "[name = 'q']")
webElem$sendKeysToElement(list("JAVA", key="enter"))
