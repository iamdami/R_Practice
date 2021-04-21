# 리스트 생성 : list()
patients = data.frame(name = c("son", "kane", "ozil"), age = c(22, 20, 25), gender = factor(c("M", "M", "M")), blood.type = factor(c("A", "O", "B")))
no.patients = data.frame(day = c(1 : 6), no = c(50, 60, 55, 52, 65, 58))


# 데이터 단순 추가
listPatients = list(patients, no.patients)
listPatients


# 각 데이터에 이름 부여하며 추가
listPatients = list(patients = patients, no.patients = no.patients)
listPatients


# 리스트 요소에 접근 : $, [[ ]]
listPatients$patients  # 요소명 입력
listPatients[[1]]  # 인덱스 입력
listPatients[["patients"]]  # 요소명을  " "에 입력


# lapply(), sapply() : 리스트 요소에 다양한 함수 적용
# 요소의 평균 구하기
lapply(listPatients$no.patients, mean)


# patients 요소의 평균 구해줌. 숫자 형태가 아닌 것은 평균 구해지지 않음
lapply(listPatients$patients, mean)


sapply(listPatients$no.patients, mean)


# sapply()의 simplify 옵션을 F로 하면 lapply() 결과와 동일한 결과 반환
sapply(listPatients$no.patients, mean, simplify = F)
