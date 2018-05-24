install.packages("XML")
library(XML)
doc <- htmlParse("http://www.hankookilbo.com")

content <- xpathSApply(doc, "//ul[@class='firstList']", xmlValue)
content

content <- gsub("\r\n", "", content)
content
