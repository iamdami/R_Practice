# write.table() : 일반 텍스트 파일로 저장할 때 사용
students = read.table(".txt", header = T, as.is = T)


# 문자열에 큰따옴표 표시됨
write.table(students, file = ".txt")


# 문자열에 큰따옴표 표시되지 않음
write.table(students, file = ".txt", quote = F)
