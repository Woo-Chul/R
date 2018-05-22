kids <- c("Jack", "Jill")
ages <- c(12, 10)
df <- data.frame(kids, ages, stringsAsFactors = F)
df

#write.table()을 이용해서 파일에 저장해보자.
write.table(df, "students.info.txt")

data <- read.table("students.info.txt")
data

#file에 행렬을 쓰는 경우 열과 행 이름을 저장하고 싶지 않다면 다음과 같이 한다.
write.table(df, "students.noheader.txt", row.names = F, col.names = F)
data <- read.table("students.noheader.txt")
data
