# 데이터 프레임 생성 : data.frame()
name = c("son", "kane", "ozil")
age = c(22, 20, 25)
gender = factor(c("M", "M", "M"))
blood.type = factor(c("A", "O", "B"))

patients = data.frame(name, age, gender, blood.type)
patients


# 데이터 프레임 요소 접근
# $, [, ], 조건식 등을 이용해 접근
patients$name  #name 속성 값 출력
patients[1, ]  # 1행 값 출력
patients[, 2]  # 2열 값 출력
patients[3, 1]  # 3행 1열 값 출력
patients[patients$name=="철수", ]  # 환자 중 철수에 대한 정보 추출
patients[patients$name=="철수", c("name", "age")]  # 철수 이름과 나이 정보만 추출


# attach(), detach() : 데이터 프레임의 속성명을 변수명으로 변경
head(cars)  # cars 데이터 셋 확인. head()의 기본 기능은 앞 6개 데이터 추출
attach(cars)  # attach()를 통해 cars의 각 속성을 변수로 이용하게 함
speed

detach(cars)  # cars의 각 속성을 변수로 사용하는 것을 해제함
speed


# with() : 데이터 프레임에 다양한 함수 적용
mean(cars$speed)  # 데이터 속성을 이용해 함수 적용
with(cars, mean(speed))  # with()를 이용해 함수 적용


# subset() : 데이터 프레임에서 일부 데이터만 추출
# 속도가 20 초과인 데이터만 추출
subset(cars, speed > 20)

# 속도가 20 초과인 데이터 중 dist를 제외한 데이터만 추출
subset(cars, speed > 20, select = -c(dist))


# na.omit() : 데이터 프레임의 결측값 제거
head(airquality)  # 이 데이터에는 NA가 포함돼 있음
head(na.omit(airquality))  # NA 포함된 값 제외하여 추출


#merge() : 여러 데이터 프레임 병합
name = c("son", "kane", "ozil")
age = c(22, 20, 25)
gender = factor(c("M", "M", "M"))
blood.type = factor(c("A", "O", "B"))

patients1 = data.frame(name, age, gender)
patients1

patients2 = data.frame(name, blood.type)
patients2

patients = merge(patients1, patients2, by = "name")
patients
