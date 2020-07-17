# 계속 내용을 기록으로 남길 수 있음 

# 특징 1. 인터프리터 언어 - 한줄씩 실행할 수 있다. 
# 특징 2. 대입 연산자 <- 로 씀. = 도 가능  
# 특징 3. base 패키지 안에는 약 1100개의 기본함수 존재 
# 특징 4. R에서 데이터는 기본적으로 vector, datd.frame, matrix, list, factor 같은 형태로 존재 

# 기초 확인 명령 
# Run 버튼은 커서가 있는 곳의 명령을 실행 
sessionInfo()
# 현재 사용하는 R에 대한 기본정보 출력 

.libPaths()
# [1] "C:/Users/soldesk/Documents/R/win-library/3.4" 
# 유저가 설치하는 라이브러리 위치 
#"C:/Program Files/R/R-3.4.3/library"
# R이 기본적으로 가지고 있는 lib 위치 

# 설치된 패키지 목록 
installed.packages() 

# 사용이 가능한 패키지 목록 출력 
search()

# 특정 패키지 정보 출력 
library(help="datasets")

# 다운로드한 패키지 설치 명령 
install.packages("패키지명")
# 다수 패키지를 한번에 설치 c <= combine 의 약자 
install.packages(c("패키지명","패키지2","패키지3"))

# 패키지 제거하기 
remove.packages(c("패키지명","패키지2","패키지3"))

# 패키지 로드하기, 설치했다고 사용할 수 있는 것이 아니라 로드해야 사용가능 
library("패키지명")

# 예 ggplot2 패키지를 설치하고 로드 

# 비교 : 패키지 로드명령 / 다른 함수 내부에서 사용가능 
require("패키지")

# 특정 데이터 프레임을 포함 
attach(iris)
search()

# 특정 데이터 프레임 비포함 명령 
detach(iris)
search()

# 내장 데이터 셋 불러오기 - 공부용
data("mtcars")
# head 에서 6개 출력
head(mtcars)

# 내장 데이터 셋 불러오기 - 고속도로 연비 데이터
data("mpg")
head(mpg)


# 개념 
# 크기가 있는 데이터 - 스칼라 
# 방향성이 있는 데이터 - 벡터 
# 2축 방향 : 매트릭스 (바둑판 모양)
# 3축 방향 : 텐서 (큐빅 모양)

# c() vector형 데이터로 만들어주는 함수 combine의 약자 
# 2:4 시작이 2, 끝이 4 
x <- c(0,2:4)
x
# 데이터 값이 출력된다. 

# 데이터 형 알아보기 
class(X)
# "numeric" 이다 

# 데이터 형 변경 
x2 <- as.logical(x)
x2
class(x2)
# 0은 false, 아니면 true로 변경 

x3 <- as.numeric(x2)
x3
class(x3)

x 
length(x)
# 요소의 갯수 

# 이제 연산을 해보면 r의 기능을 알 수 있음 
# x를 2로 나누시오 
x/2
# 일반적 언어의 반복문 로직이 필요없다. 
# R은 데이터가 벡터형인 경우, 자동 반복 연산 처리 가능 

# 벡터와 벡터 데이터를 연산해보자 
# 같은 순번에 있는 요소끼리 연산 된다
c(1,2,3,4,5,6,7) + c(1,2,3,4,5,6,7)
c(1,2,3,4,5,6,7)*2
# 각각의 요소에 2씩 곱한다. 

# 길이가 다른 요소 : 짧은 요소가 반복되며 연산
c(1,2,3,4,5,6) * c(2,3)

# 요소의 길이가 다를때 배수가 아닌 경우, 데이터 손실이 일어남 
c(1,2,3,4,5,6) * c(1,2,3,4)


# ========= 변수 개념

a <- 1 # 할당, 대입 연산자 
b <- 2 
a+b

a = 3 
b = 4 
a+b


var1 <- c(1,2,3,4,5)
var1

var2 <- c(1:5)
# 일반 언어라면 배열변수를 만들고 루프를 돌려 각각의 번지를 연속 증가하는 값으로 초기화 해야함. 
var2 

var3 <- seq(1,5) # 1에서 5까지 연속 값 
var3

var4 <- seq(1,10, by=2)
var4

# R은 입력 데이터에 따라서 데이터형 결정 

# ================변수 문자열 
str1 <- "a"
str1

str2 <- "문자열"
str2

str3 <- c("a","b","c")
str3
class(str3)


str4 <- c("Hello", "World", "my", "home")
str4 

str3 + 2
# 문자열에 연산 불가 


a <- 1 
a

b <- 2
c <- 3 
a+b+c
a+b

# 벡터형 변수 
var1 <- c(1,2,3,4,5)
var1

# 연속값 입력 
var2 <- c(1:5)
var2

# 연속값 입력 2
var3 <- seq(1,5)
var3

var4 <- seq(1,10,by=2)
var4

var1 + 2 
# 각각 요소에 2씩 더함 

var1 + var2
# 같은 순서에 있는 값끼리 연산 

# ============================= 기본 함수 
x <- c(1,2,3)
# 평균 
mean(x)

# 최댓값 출력 
max(x)

# 최소값 출력 
min(x)

# 요소 연결 
paste(var4,collapse = ",")
paste(var4,collapse = " ")

# 함수 실행결과를 저장하기 
x_mean <- mean(var1)
# 이런 모양의 코드가 많이 나올 것 
x_mean

# 패키지 함수 실행해보기 
# install.packages("ggplot2")

# ============ 데이터 프레임 사용하기 
# 데이터를 분석하려면 데이터 프레임을 생성해야 한다. 
english <- c(90, 80, 60, 70)
english 
math <- c(50, 60, 100, 20)
math
df_midterm <- data.frame(english, math)
df_midterm

class <- c(1,1,2,2)

df_midterm <- data.frame(english=c(90,80,70,80), math=c(50,60,100,20), class=c(1,1,2,2))
df_midterm

# data.frame 안에서 직접 변수를 생성해도 됨 

# 데이터 프레임 속의 평균은 어떻게 
mean(df_midterm$english)
mean(df_midterm$math)

install.packages("tidyverse")
install.packages("ggplot2")
library(ggplot2)

x <- c("a", "b", "c", "d", "a", "c")


# 빈도 그래프 
qplot(x)





# hwy 고속도로 연비 
# manufacturer : 제조업체
# model : 차모델 
# displ : 배기량 
# year : 년식 
# cyl : 기통 
# trans : 오토 / 수동 
# drv : 전륜 / 후륜 
# cty : 도시 도로 연비 
# hwy : 고속도로 연비 
# fl : 기름 종류 
# class : 차등급 : 세단 

# x축에 고속도로 연비 빈도  
qplot(data = mpg, x = hwy)
# 고속도로 연비는 27마일에 해당하는 차종이 45종 정도로 가장 많음 

# x축에 도시연비로 빈도 그래프 그리기 
qplot(data = mpg, x = cty)
# 도시연비는 고속도로 연비보다 낮음 

# 도트 그래프 
qplot(data = mpg, x = drv, y=hwy)
# 전륜 구동이 4륜이나 후륜에 비하여 대체적으로 고속도로 연비가 높다 

# 선형 그래프 : 시계열 데이터 
# x축의 데이터는 시간에 따른 데이터가 오는 것이 일반적 
qplot(data = mpg, x = drv, y=hwy, geom="line")

# 박스 plot 그래프 : 중앙값 등의 표현 시 유리 
qplot(data = mpg, x = drv, y=hwy, geom="boxplot")
# 극단치 값도 보여줌, 나중에 분석 프로그램 작동 시 제외 시켜주는 것이 일반적
# 이러한 행위를 전처리라고 말함. 

# 색상 추가하기 
qplot(data = mpg, x = drv, y=hwy, geom="boxplot", colour = drv)



# ================ 외부 데이터 로드하기 

# 패키지 설치 
install.packages("readxl")

# 메모리에 로드 
library(readxl)

# 엑셀 문서를 읽어옴 
df_exam <- read_excel("./Data/excel_exam_novar.xlsx")
df_exam

# 출력결과 컬럼이 없다. 
df_exam_nocol <- read_excel("./Data/excel_exam_novar.xlsx", col_names = F)
df_exam_nocol
# 결과는 임의의 컬럼을 부여


# 엑셀 문서의 3번째 시트를 읽어오는 방법 
df_exam_sheet <- read_excel("./Data/excel_exam_sheet.xlsx", sheet = 3)
df_exam_sheet

# csv 파일 읽어오기 
df_csv_exam <- read.csv("./Data/csv_exam.csv")
df_csv_exam
df_csv_exam$class

df_csv_exam <- read.csv("./Data/csv_exam.csv", stringsAsFactors = F)
df_csv_exam

# Factors : 범주형 데이터를 말함 
# df_csv_exam$class ==> 1 2 3 4 5 

# data frame을 csv file 로 내보내기 
df_midterm <- data.frame(english=c(90,80,70,80), math=c(50,60,100,20), class=c(1,1,2,2))
df_midterm
write.csv(df_midterm, file = "df_midterm.csv")



# =========== 데이터 정보 살펴보기 
exam <- read.csv("./Data/csv_exam.csv")

# 상위 6줄 보기 
head(exam)

# 상위 10줄 보기 
head(exam, 10)

# 마지막 6줄 
tail(exam)
# 마지막 10줄 
tail(exam, 10)

# 뷰 창에서 보기 
View(exam)

# ================= 암기할 것 
# 행렬 갯수 알기 
dim(exam)

# 데이터 속성 : 모든 컬럼의 속성 출력 
str(exam)

# 단일 컬럼 속성은 
class(exam$class)

# 데이터를 요약해서 보기 
summary(exam)

# ============== 내장 데이터를 프레임으로 불러오기 
# data.frame() : 프레임셋을 만들때 
# as.data.frame() : 내장 데이터를 프레임으로 
mpg <- as.data.frame(ggplot2::mpg)
head(mpg)
tail(mpg)
View(mpg)
dim(mpg)
str(mpg)
summary(mpg)


# ========================== 데이터 프레임의 컬럼명 수정 
df_raw <- data.frame(var1 = c(1,2,3), 
                     var2 = c(2,3,2))
df_raw

# dplyr 라는 패키지 필요 ggplot2 만큼 유명한 패키지이므로 기억할 것 
install.packages("dplyr")
library(dplyr)

# rename() 함수를 이용하면 컬럼명을 변경할 수 있다. 
df_cpy <- df_raw
df_new <- rename(df_cpy, myname=var2)
df_new


# 컬럼 추가하기 : 중요!! 데이터프레임$뉴컬럼 
df_cpy$sum <- df_cpy$var1 + df_cpy$var2
df_cpy
# 추가된 컬럼을 확인할 수 있음 
# var1과 var2의 평균 컬럼 추가 
df_cpy$avg <- (df_cpy$var1 + df_cpy$var2)/2
df_cpy

summary(df_cpy$var1)

# ========================== 
# 1. mpg 에서 도시와 고속도로 total 평균 연비 컬럼 추가 
mpg$total <- (mpg$cty + mpg$hwy)/2
# 결과 처음에서 5개 출력하시오 
head(mpg,5)
# total의 평균 구하기 
mean(mpg$total)
# total의 요약 통계 출력 
summary(mpg$total)
# total 의 빈도 그래프 생성 
qplot(mpg$total)
# 연비가 20 이상이면 합격, 아니면 불합격을 나타내는 컬럼 test 추가 
mpg$test <- ifelse(mpg$total >= 20, "pass", "fail")
head(mpg$test, 20)
# test 의 빈도 테이블을 생성 
table(mpg$test)

# test 의 빈도 그래프 출력 
qplot(mpg$test)

# ======================= 분석2
# total 컬럼을 이용해서 30점 이상은 A grade, 20점 이상은 B grade, 아니면 C 등급으로 구별하는 컬럼 grade 추가 

mpg$grade <- ifelse(mpg$total >=30, "A", ifelse(mpg$total >=20, "B", "C"))

# 빈도 테이블 작성 
table(mpg$grade)
# 빈도 그래프 작성 
qplot(mpg$grade)

# grade2 컬럼을 추가하되, 30 이상은 A, 25 이상은 B, 20 이상은 C, 아니면 D로 구성 
mpg$grade1 <- ifelse(mpg$total >=30, "A", ifelse(mpg$total >=25, "B", ifelse(mpg$total >=20, "C", "D")))
# 빈도 테이블 
table(mpg$grade1)
# 빈도 그래프 
qplot(mpg$grade1)

# ======== dplyr ======== 패키지에서 자주 사용되는 함수 
# 1. filter() 행선택 
# 2. select() 컬럼 선택 
# 3. arrange() 정렬 
# 4. mutate() 변수(컬럼) 추가 
# 5. summarise() 통계 
# 6. group_by() 그룹화 
# 7. left_join() 열 합치기 
# 8. bind_row() 행합치기 

# ===================== filter 연습 
library(dplyr)
# csv_exam.csv 를 읽어 오시오. 
exam <- read.csv("./Data/csv_exam.csv")
exam 

# exam 에서 반이 1인 정보의 행만 선택 
# %>% 는 dplyr에서 데이터의 결과가 이동되는 방향 

exam %>% filter(class==1)
exam %>% filter(class==4)

# class 2가 아닌 것의 처리 결과를 result 변수에 저장  
result <- exam %>% filter(class!=2)
result

# 수학 점수가 50점 이상인 행 출력 
exam %>% filter(math>=50)
# 수학 점수가 50점 이상이고,& 영어 점수가 70점 이상인 행을 출력 
exam %>% filter(math>=50 & english >=70)
# 과학 점수가 80이상이거나 | 수학 점수가 60점 이상인 행 출력 
exam %>% filter(science>=80 & math >=60)
# 반이 1 3 5 인 행만 출력 | %in% c(1,3,5)
exam %>% filter(class %in% c(1,3,5))
exam %>% filter(class==1 | class==3 | class==5)
# 3반 학생들의 과학 평균 점수 
class3 <- exam %>% filter(class==3)
mean(class3$science)


exam %>% select(class, english)

# 4반의 수학 점수 출력 
exam %>% filter(class==4) %>% select(class, math)

# arrange()

# 5반 아이디와 영어 점수를 출력하되 영어점수 올림차순 정렬 
exam %>% filter(class==5) %>% select(id, english) %>% arrange(english)

# 위의 결과 내림차순 정렬 desc()
exam %>% filter(class==5) %>% select(id, english) %>% arrange(desc(english))


# exam에서 수학 영어 과학의 총점을 구하여 새로운 컬럼 total 추가 mutate(새 = 구 + 구 + 구)
exam %>% mutate(total=math+english+science) %>% head(5)

# exam 에 total 총점과 mean 평균인 컬럼 추가 
exam %>% mutate(total = math+english+science, mean = total/3)

# exam 의 과학점수가 60 이상이면 "pass", 아니면 "fail"을 나타내는 컬럼 test 추가 
exam %>% mutate(test = ifelse(science>=60, "pass", "fail"))

exam %>% 
  group_by(class) %>% 
  summarise(mean_math = mean(math))

# 반별 수학 평균 mean_math, 수학점수 총합 mean_tot, 중앙값 median, 학생수 n n() 출력 
exam %>% group_by(class) %>%
  summarise(mean_math = mean(math), mean_tot = sum(math), median = median(math), n = n())

# mpg 확인하고 존재하면 회사별, 구동방식별 drv 평균 도시연비를 출력하되 10개만 출력 

mpg

mpg %>% group_by(manufacturer, drv) %>% summarise(avg_cty = mean(cty)) %>% head(10)

# mpg에서 class가 "SUV" 인 차량만 선택, 
# 통합 연비 산출, 제조업체 별 통합 연비의 평균 구하여 출력, 평균이 높은 순서부터 5개 
mpg %>% group_by(manufacturer) %>% filter(class=="suv") %>% 
  mutate(total=(cty+hwy)) %>% summarise(tot_avg = mean(total)) %>% 
  arrange(desc(tot_avg)) %>% head(5)

# group_by() 로 묶으면 summarize() 황용해야 함 

# ========== 데이터 프레임 합치기 
# 중간고사 
test1 <- data.frame(id=c(1,2,3,4,5), midterm = c(60,70,80,65,95))
# 기말고사 
test2 <- data.frame(id=c(1,2,3,4,5), midterm = c(65,77,85,60,88))

test1
test2

# test1과 test2 병합 : left_join() 이용 
total <- left_join(test1, test2, by = "id")
total

# 위의 total 결과에 이름 추가 
name <- data.frame(id = c(1,2,3,4,5), name = c("홍길동", "이순신", "김유신", "강감찬", "유관순"))
name

total_name <- left_join(total, name, by="id")
total_name

# =============== 행을 병합하기 
group_a <- data.frame(id=c(1,2,3,4,5), test=c(60,70,80,90,100))

group_b <- data.frame(id=c(6,7,8,9,10), test=c(65,75,85,95,90))

group_a 
group_b

group_all <- bind_rows(group_a, group_b)
group_all


# ================ 데이터 정제하기 : 전처리 
# 1. 결측치 정제 : 빠진 데이터 : NA 
# 2. 이상치 정제 : 존재해서는 안되는 값 

df <- data.frame(gender = c("M", "F", NA, "M", "F"), score = c(5,4,3,4, NA))
df

# 성별의 결측치 몇개 
table(is.na(df$gender))
# 점수에 결측치 몇개 
table(is.na(df$score))


# df 로부터 점수가 결측인 행을 제거 
df %>% filter(!is.na(score))
# df 로부터 성별이 결측인 행을 제거 
df %>% filter(!is.na(gender))

# 일반적인 통계함수 사용 시 결측 제거 
mean(df$score)
mean(df$score, na.rm = T)
sum(df$score, na.rm = T)

# csv_exam.csv 를 읽어서 수학점수의 3, 8, 15 행에 NA 데이터를 입력 
exam <- read.csv("./Data/csv_exam.csv") 
# exam[행, 열]
exam[c(3, 8, 15),"math"] <- NA
view(exam)

# exam 을 단순 수학 평균을 구해보고 
exam %>% summarise(mean_math = mean(math))
# exam 에서 수학 점수의 결측을 제거, 평균을 구해보시오. 
exam %>% summarise(mean_math = mean(math, na.rm = T))

# exam 수학 평균 mean_math, 수학 합계 sum_math, 수학 중앙값 medi_math 을 구해서 출력 
exam %>% 
  summarise(mean_math = mean(math, na.rm = T), 
            sum_math = sum(math, na.rm = T), 
            medi_math = median(math, na.rm = T))


# ================= 이상치에 정제 
# exam 의 영어점수에 5, 12, 15, 20 행에 점수 999 입력 
exam[c(5, 10, 15, 20),"english"] <- 999
view(exam)

# 이상치 처리의 기본형 : 이상치 ---> 결측치 전환 ---> 결측치 제거 

# 이상치를 결측치로 
exam$english <- ifelse(exam$english > 100, NA, exam$english)

table(is.na(exam$english))

# 이제 결측치를 제거하고 연산 가능 
# exam 영어 평균 mean_eng, 영어 합계 sum_eng, 영어 중앙값 medi_eng 을 구해서 출력 
exam %>% 
  summarise(mean_eng = mean(english, na.rm = T), 
            sum_eng = sum(english, na.rm = T), 
            medi_eng = median(english, na.rm = T))

# mpg dataset 의 고속도로 평균연비를 측정하고자 한다. 
# 어떻게??
mpg <- as.data.frame(ggplot2::mpg)
mpg

# 1. 결측치가 존재하는가 
table(is.na(mpg$hwy))
# 결과로부터 결측은 없다. 

# 2. 이상치가 존재하는가 
boxplot(mpg$hwy) # 그래프로 판단 가능 
boxplot(mpg$hwy)$stats # 수치로 판단 가능 


# [,1]
# [1,]   12
# [2,]   18
# [3,]   24
# [4,]   27
# [5,]   37     <====== 이상이면 이상치로 판단하자 
# attr(,"class")
# 1 
# "integer" 

# 3. 결측치와 이상치를 처리 
mpg$hwy <- ifelse(mpg$hwy < 12 | mpg$hwy > 37, NA, mpg$hwy)
table(is.na(mpg$hwy))

# 4. 평균을 구함 
mpg %>% summarise(avg_hwy = mean(hwy, na.rm = T))

# ============== r 통해서 분석 / dplyr + ggplot2
# ============ 더 정교한 그래프 작성 
# ggplot2:: 를 활용 
# 1단계 : 배경설정 (축)
# 2단계 : 그래프 추가 (점, 선, 막대)
# 3단계 : 축의 범위, 색, 표식 등등 설정 


# ============== 1. 산점도 그래프 : 두 변수 간의 관계 표현 
library(ggplot2)
# x축 displ
# y축 hwy 로 설정 : aes()
ggplot(data = mpg, aes(x=displ, y=hwy))

# 산점도 그래프 추가 : geom_point()
ggplot(data = mpg, aes(x=displ, y=hwy))+ geom_point()

# 축의 범위 제한 : xlim(3,6) +ylim(10,30)
ggplot(data = mpg, aes(x=displ, y=hwy))+ geom_point() + xlim(3,6) +ylim(10,30)

#============= 막대 그래프 : 집단 간의 차이를 표현 
# mpg 로 부터 drv 별, 평균 hwy 를 담은 변수 df_mpg 를 생성 
library(dplyr)
df_mpg <- mpg %>% group_by(drv) %>% summarise(mean_hwy=mean(hwy, na.rm = T))
df_mpg

# 시각화 1단계 : x축 y축 설정 
ggplot(data = df_mpg, aes(x=drv, y=mean_hwy))

# 시각화 2단계 : 그래프 그리기 막대 
# geom_bar() x축만 설정 : 데이터 속에 팩터 종류의 빈도 수를 그래프로 나타냄  
ggplot(data = mpg, aes(x=drv))+geom_bar()
  
# geom_col() x축 y축 모두 설정 
ggplot(data = df_mpg, aes(x=drv, y=mean_hwy))+geom_col()

# 그래프 정렬 reorder()
# 오름차순이 기본 
ggplot(data = df_mpg, aes(x=reorder(drv, mean_hwy), y=mean_hwy))+geom_col()
# 내림차순 
ggplot(data = df_mpg, aes(x=reorder(drv, -mean_hwy), y=mean_hwy))+geom_col()

#================== 

# 1단계 
ggplot(data=economics, aes(x=date, y=unemploy))
# 2단계 
ggplot(data = economics, aes(x=date, y=unemploy))


# ========================== 여기서부터 시험에 쓴다 

# =================== 실전 분석 
# 자주 사용되는 패키지 
# foreign, dplyr, ggplot2, readxl
# 0. 필요한 패키지 설치 
# 1. 사용할 패키지 로드 
installed.packages()

library(foreign)
library(dplyr)
library(ggplot2)
library(readxl)

# 2. 데이터 프레임 생성 
raw_welfare <- read.spss(file = "./Data/Koweps_hpc10_2015_beta1.sav", to.data.frame = T)

# 3. 복사본 만들기 
welfare <- raw_welfare

# 4. 데이터 확인 
dim(welfare)
head(welfare, 5)
tail(welfare)

View(welfare)
str(welfare)

summary(welfare)

# 분석할 데이터 선별 , 컬럼명 변경 
# 컬럼명이 모두 약어로 되어있어 분석 어려움 
welfare <- rename(welfare, 
                  sex =h10_g3, # 성별 
                  birth=h10_g4, # 출생년도
                  marriage=h10_g10, # 혼인상태 
                  religion = h10_g11, # 종교
                  income=p1002_8aq1, # 월급 
                  code_job = h10_eco9, # 직종코드
                  code_region = h10_reg7) # 지역코드

# ============== 성별 sex에 따른 월급 income 차이 분석 
# 1. 성별 전처리 
class(welfare$sex)
table(welfare$sex)

# 결측치 확인 
table(is.na(welfare$sex))
# na 데이터는 없는 것으로 확인 됨 

# 이상치 
welfare$sex <- ifelse(welfare$sex==9, NA, welfare$sex)

welfare$sex

# 성별 항목 부여 
welfare$sex <- ifelse(welfare$sex==1, "male", "female")

# 빈도 확인 
table(welfare$sex)

qplot(welfare$sex)
# 그래프 확인 


# ==================== 수입 전처리 
class(welfare$income)

summary(welfare$income)

qplot(welfare$income)

# x축 제한 
qplot(welfare$income) + xlim(0,1000)

boxplot(welfare$income)


table(is.na(welfare$income))
# 결측 데이터가 12030

# 이상치 0 이거나 9999 이면 이상치로 판단하고, NA로 치환 
welfare$income <- ifelse(welfare$income %in% c(0,9999), NA, welfare$income)
table(is.na(welfare$income))
# 몇몇 행이 이상치로 판단되어 na로 치환됨 

# ==================== 분석 
sex_income <- welfare %>%
  filter(!is.na(income)) %>% 
  group_by(sex) %>%
  summarise(mean_income = mean(income))
sex_income

# 시각화 여성집단과 남성집단을 나타내는 막대 그래프가 적합 
ggplot(data = sex_income, aes(x=sex, y = mean_income)) + geom_col()

# ================================== 여기까지 

# 주제 2 : 나이 birth 에 따른 월급 income 차이 
dim(welfare)
# income 이미 조사되어 있음 
# birth 조사
# 데이터형 파악 
class(welfare$birth)
# 간이분포 파악 
summary(welfare$birth)

library(ggplot2)
qplot(welfare$birth)

# 나이에 결측치가 있는지 체크 
table(is.na(welfare$birth))
# 결측치는 없는 것으로 판단됨 

# 나이에 이상치가 있는지 파악 9999 ---> NA 로 변경 
welfare$birth <- ifelse(welfare$birth==9999, NA, welfare$birth)

# 다시 한번 결측치 파악 
table(is.na(welfare$birth))

# 출생년도를 이용해서 나이 컬럼 생성 
welfare$age <- 2015-welfare$birth + 1
summary(welfare$age)

qplot(welfare$age)

# 분석과 시각화 
library(dplyr)
age_income <- welfare %>% 
  filter(!is.na(income)) %>% # 결측치 안에는 이상치가 포함 
  group_by(age) %>% 
  summarise(mean_income=mean(income))

head(age_income)  

# 시각화 : x축이 나이이므로 시계열 데이터로 취급하는 것이 유리 : 선형 
ggplot(data = age_income, aes(x=age, y=mean_income)) + geom_line()


# 주제 3 : 연령대(young, middle, old)에 따른 평균 임금 차이 분석 

# ageg : 30 미만을 young, 59이하는 middle, 나머지는 old 라 정하자 
# 실무에서는 이런 것을 생각하고 코딩하는 것이 중요 
welfare <- welfare %>% 
  mutate(ageg = ifelse(age<30, "young", 
                       ifelse(age<=59, "middle", "old")))

table(welfare$ageg)

qplot(welfare$ageg)

# 분석 코드
ageg_income <- welfare %>% 
  filter(!is.na(income)) %>% 
  group_by(ageg) %>% 
  summarise(mean_income = mean(income))

ageg_income

# 시각화 : 집단 간의 차이가 있음. 바 그래프가 적절 
# geom_col() x y 축 존재, geom_bar() x축만 존재 
ggplot(data = ageg_income, aes(x=ageg, y=mean_income)) + geom_col() + 
  scale_x_discrete(limits = c("young", "middle", "old"))





ageg_sex_income <- welfare %>% 
  filter(!is.na(income)) %>%  # na 데이터 제거 
  group_by(ageg,sex) %>%  # 2중 그룹화 
  summarise(mean_income = mean(income)) # 각 그룹에 평균 임금 

ageg_sex_income # 분석 결과 출력 

# 6가지 소그룹을 출력할 수 있는 소그룹 그래프 그리기 

ggplot(data = ageg_sex_income, aes(x=ageg, y=mean_income, fill =sex)) + 
  geom_col() + scale_x_discrete(limits=c("young", "middle", "old"))


rlang::last_error()


# 5. 나이별 성별 평균 임금 차이 

age_sex_income <- welfare %>% 
  filter(!is.na(income)) %>%  # na 데이터 제거 
  group_by(age,sex) %>%  # 2중 그룹화 
  summarise(mean_income = mean(income))

head(age_sex_income, 10)

# 시각화 1 
ggplot(data = age_sex_income, aes(x=age, y=mean_income, fill =sex)) + 
  geom_col()

# 시각화 2 
ggplot(data = age_sex_income, aes(x=age, y=mean_income, col =sex)) + 
  geom_line()


# 6. 직업별 평균 임금 차이 
head(welfare$code_job, 10)
# 직업이 코드화 되어있어 분석 힘들다 
# 코드 시트와 기존의 데이터셋 code_job 을 기준으로 열병합 

class(welfare$code_job)
table(is.na(welfare$code_job))

library(readxl) # 세션이 닫히면 다시 로드 
# 엑셀문서 로드 시 주의사항 
# 1. 몇번째 시트인가. 
# 2. 컬럼이 존재하는가. 
list_job <- read_excel("./Data/Koweps_Codebook.xlsx", 
                       col_names = T, sheet = 2)
head(list_job)

dim(list_job)

# 양쪽 데이터 셋에 모두 존재하는 컬럼을 기준으로 컬럼 병합 
welfare <- left_join(welfare, list_job, id="code_job")

# 데이터 확인 
welfare %>% 
  filter(!is.na(code_job)) %>% 
  select(code_job, job) %>% 
  head(10 )

# 분석 : 직업별 평균임금차이 
job_income <- welfare %>% 
  filter(!is.na(income)&!is.na(job)) %>% 
  group_by(job) %>% 
  summarise(mean_income = mean(income))

dim(job_income)
head(job_income, 10)

# 급여 상위 10개를 출력 ===> 정렬 필요 
job_income %>% 
  arrange(desc(mean_income)) %>% 
  head(10)


# =========================================
# 주제 7 : 성별 직업 빈도 분석 
# 성별은 결측치 처리 되어 있음 

library(ggplot2)
library(dplyr)

# 남성의 직업 빈도 최상위 10개 출력 
man_job <- welfare %>% 
  filter(!is.na(job)&sex=="male") %>% # 전처리 - 데이터 분석이 가능해짐 
  group_by(job) %>% 
  summarise(cnt=n()) %>% 
  arrange(desc(cnt)) %>% 
  head(10)

rlang::last_error()

# 그래프로 출력 
ggplot(data = man_job_cnt, aes(x=job, y=cnt))+geom_col()+ coord_flip()
ggplot(data = man_job_cnt, aes(x=reorder(job,cnt), y=cnt))+geom_col()+ coord_flip()


welfare %>% 
  filter(!is.na(job)&sex=="female") %>% # 전처리 - 데이터 분석이 가능해짐 
  group_by(job) %>% 
  summarise(cnt=n()) %>% 
  arrange(desc(cnt)) %>% 
  head(10)


# 주제 8 : 종교 유무에 따른 이혼율을 분석하시오 
# 종교 유무, 빈도 측정 , 결측치, 이상치 
class(welfare$religion)
table(welfare$religion)

# 1이면 종교가 있고, 2면 없는 것 

welfare$religion <- ifelse(welfare$religion == 1, "yes", "no")
table(welfare$religion)

qplot(welfare$religion)

# 결혼 유무, 빈도, 결측, 이상치 
class(welfare$marriage)
table(welfare$marriage)

# 1번 결혼, 3번 이혼만을 결혼으로 인정, 나머지는 이상치 취급 

table(is.na(welfare$group_marriage))

# 이혼율? 이혼갯수 / ( 이혼갯수 + 결혼갯수 ) * 100 

reli_mari <- welfare %>% 
  filter(!is.na(group_marrige)) %>% 
  group_by(religion, group_marriage) %>% 
  summarise(n=n()) %>%   # 각 그룹의 전체 수 종교유무 * 결혼유무 
  mutate(tot_group=sum(n)) %>%   # 4가지 그룹을 합친 결과 
  mutate(percent = round(n/tot_group*100,1)) 

reli_mari

# 이혼 추출 
divorce <- reli_mari %>% 
  filter(group_marriage == "divorce") %>% 
  select(religion, percent)

# 시각화 
ggplot(data=divorce, aes(x=religion, y=percent))+geom_col()


# 두 개의 데이터값의 차이가 의미가 있는지 없는지 
# 판단은 T검정을 해보아야 한다. 
# 두 개의 차이가 우연히 발생할 수도 있기 때문 

# 주제 9 : 지역별 연령대 비율 분석 
class(welfare$code_region)
table(welfare$code_region)

# 지역코드 데이터 프레임 생성 
list_region <- data.frame(code_region = c(1:7), 
                          region = c("서울", "수도권(인천/경기", "부산/경남/울산", 
                                     "대구/경북", "대전/충남", "강원/충북", "광주/전남/전북/제주도"))
# 확인 
list_region

# 컬럼 병합 
welfare <- left_join(welfare, list_region, id="code_region")

welfare %>% select(code_region, region) %>% head(10)

# 연령대는 이미 처리되어 있음 
# young, middle, old 

# 분석 시작 
reli_ageg <- welfare %>% 
  group_by(region, ageg) %>%  # 지역 7개, 연령대 3개 
  summarise(n=n()) %>%  # 그룹별 카운트 
  mutate(tot = sum(n)) %>% # 모든 그룹 카운트 : 총계 
  mutate(percent = round((n/tot) * 100, 1)) # 각 그룹 / 전체 비율 

# 시각화 
ggplot(data = reli_ageg, aes(x=region, y=percent, fill=ageg)) + 
  geom_col() + coord_flip()
  

# 텍스트 마이님 : 자연어 처리, 
# 문자로 된 데이터에서 가치있는 정보를 마이닝 

# 필요한 패키지 : rJava, memoise, 
# koNLP : 한글 형태소를 분석할 수 있는 패키지 

install.packages("multilinguer")
library(multilinguer)
install_jdk()
install.packages(c('stringr', 'hash', 'tau', 'Sejong', 'RSQLite', 'devtools'), type = "binary")
install.packages("remotes")
remotes::install_github('haven-jeon/KoNLP', upgrade = "never", INSTALL_opts=c("--no-multiarch"))

library(KoNLP)
library(dplyr)
Sys.setenv(JAVA_HOME = "C:/Java/jdk1.8.0_151")
useNIADic()
txt <- readLines("./Data/hiphop.txt")
head(txt)

# 전처리 
library(stringr)
txt <- str_replace_all(txt, "\\w", " ")

# 문장 속에서 명사 추출 
extractNoun("대한민국의 영토는 한반도와 그 부속 도서로 한다. ")

# 힙합 가사로 부터 명사 추출 
nones <- extractNoun(txt)
 
# 단어별 빈도 분석 
wordcount <- table(unlist(nones))

# 데이터 프레임으로 전환 
df_word <- as.data.frame(wordcount, stringAsFactors = F)
head(df_word)

# 컬럼명을 쓰기 좋게 변경 
df_word <- rename(df_word, word = var1, freq = Freq)

# 글자의 길이가 두글자 이상만 추출 
df_word <- filter(df_word, nchar(word) >= 2)

# 가장 빈도가 많은 단어 20개만 출력 
top20 <- df_word %>% 
  arrange(desc(freq)) %>% 
  head(20)
top20

# wordcloud 생성하기 
# wordcloud 패키지 설치 

# 패키지 로드 
library(wordcloud)
library(RColorBrewer)

# 색상표 생성 
pal <- brewer.pal(8, "Dark2")
# Dark2 색상목록에서 8개 색상 추출 
set.seed(1234)
wordcloud(words = df_word$word, freq = df_word$Freq, 
          min.freq = 2, max.words = 200, 
          random.order = F, 
          rot.per = .1,
          scale = c(4, 0.3),
          colors = pal) 
# 고빈도 단어를 중앙에 
# 회전 비율 
# 단어 크기 
# 색상 목록 
install.packages("backports")
 