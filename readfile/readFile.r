# read.table() : 일반 텍스트 파일 읽을 때 사용
students = read.table(".txt", header = T)
students


# 읽은 파일의 구조 확인
str(students)


# read.csv() : CSV 파일 읽을 때 사용
students = read.csv(".txt", header = T)
students
