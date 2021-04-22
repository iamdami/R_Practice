# 샘플과 속성 추출

# 각 나라의 기대 수명
gapminder[, c("country", "lifeExp")]


# 행 이름 지정되지 않은 경우가 많아 행 번호 지정하거나 조건식 이용하는 게 일반적
gapminder[1 : 15, ]
 

# 국가 이름 "Croatia"인 샘플을 조건식 사용해 추출
gapminder[gapminder$country == "Croatia", ]
 

# 국가 이름 "Croatia"인 샘플의 인구(pop) 속성만 조건식 사용해 추출
gapminder[gapminder$country == "Croatia", "pop"]


# 국가 이름 "Croatia"인 샘플의 인구(pop) 속성과 기대 수명(lifeExp) 속성만 조건식 사용해 추출
gapminder[gapminder$country == "Croatia", c("lifeExp","pop")]
# 추출할 속성이 여러 개일 경우 c() 이용해 벡터로 묶음


# Croatia의 1990년도 이후의 기대 수명과 인구 추출
gapminder[gapminder$country=="Croatia"&gapminder$year>1998, c("lifeExp", "pop")]
# 조건식 여러 개를 논리 연산자로 결합



#행, 열 단위 연산

# apply() 이용, 데이터 프레임에 포함된 여러 항목 한꺼번에 연산
apply(gapminder[gapminder$country=="Croatia", c("lifeExp", "pop")], 2, mean)
