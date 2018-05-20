nums <- scan("sample_num.txt")
nums

words_ansi <- scan("sample_ansi.txt", what="")
words_ansi

words_utf8 <- scan("sample_utf8.txt", what="", encoding="UTF-8")
#UTF-8은 반드시 대문자로...
words_utf8


lines_ansi <- readLines("sample_ansi.txt")
lines_ansi

lines_utf8 <- readLines("sample_utf8.txt", encoding="UTF-8")
lines_utf8
