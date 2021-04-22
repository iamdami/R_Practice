x = c(-5 : 5)
options(digits = 3)  # 숫자 표현 시 유효자릿수 3자리로 설정
sqrt(x)

sqrt(ifelse(x>=0, x, NA)  # NaN 발생하지 않게 음수만 NA로 표시
