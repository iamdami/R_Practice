> test = c(15, 20, 30, NA, 45)  # 벡터인 경우
> test[test<40]  # 값이 40 미만인 요소 추출

> test[test%%3!=0]  # 값이 3으로 나누어 떨어지지 않는 요소 추출

> test[is.na(test)]  # NA인 요소 추출
