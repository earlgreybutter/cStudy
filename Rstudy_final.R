# 계속 수업 내용을 기록으로 남길수 있다. 

# 특징 1  인터 프리터 언어다. - 한줄씩 실행 할 수 있다.
# 특징 2  대입연산자  <- 처럼 생겼다. 물론 = 도 가능하다. 
# 특징 3  base 팩키지 안에는 약 1100개의 기본 함수가 존재 한다.
# 특징 4  R에선 데이터는 기본적으로 vector , data.frame , matrix 
#         list , factor 같은 형태로y 존재한다. 

# 기초 확인 명령 
# Run 버튼은 커셔가 있는 곳의 명령을 한줄을 실행한다. 
sessionInfo() # R 현재 사용하는 R에 대한 기본정보 출력 
.libPaths()


#[1] "C:/Users/soldesk/Documents/R/win-library/3.4" 
#     유저가 설치하는 lib 위치 
#[2] "C:/Program Files/R/R-3.4.3/library"
#     R이 기본적으로 가지고 있는 lib 위치 

# 설치된 팩키지 목록 
installed.packages()

# 사용이 가능한 팩키지 목록 출력 
search() 
# 특정 팩키지 정보 출력하기 
library(help="datasets")

# 다운로드한 팩키지 설치 명령 
install.packages("팩키지명")
# 다수 팩키지를 한번에 설치  c <=== combine 의 약자다 
install.packages( c("팩키지명","팩키지2","팩키지3"))
#================================================================ 10분간 휴식 

# 팩키지 제거하기 
remove.packages( c("팩키지명","팩키지2","팩키지3"))

# 팩키지 로드하기 , 설치했다고 사용할 수 있는 것이 아니라 , 로드해야 사용 할 수 있다.
library("팩키지명")

# 비교 : 팩키지 로드명령 /  다른 함수 내부에서 사용가능 
require("팩키지")

#.libPaths("D:/my_R_lib/") 라이브러리 설치 경로 변경  
# 예 ggplot2 팩키지를 설치하고 로드하시오 
install.packages("ggplot2")

# 특정 데이타 프레임를 포함 
attach(iris)
search()
# 특정 데이타 프레임를 비포함 명령 
detach(iris)
search()

# 내장 데이타 셋 불러오기 - 공부용 
data("mtcars") 
# 머리에서 6줄 출력 
head(mtcars)
# 내장 데이타 셋 불러오기 : 고속도로 연비 데이타 
data("mpg")
head(mpg)

# 개념 
# 크기가 있는데이타 : 스컬러
# 방향성이 있는 데이타 :  벡터 
# 2축 방향 : 매트릭스 
# 3축 방향 : 텐서 

#  c()  백터형 데이타로 만들어 주는 함수 combine의 약자다. 
#   2:4   시작이 2 , 끝이 4 다. 
x <- c(0,2:4)
x   # 데이타 값이 출력된다. 

# 데이타 형 알아보기 
class(x)   # [1] "numeric"  이다 

# 데이타 형 변경하기 
x2 <- as.logical(x)  # 0은 false로 아니면 true로 변경함 [1] "logical"
x2   #[1] FALSE  TRUE  TRUE  TRUE 
class(x2) 

x3 <- as.numeric(x2) # numeric으로 전환 
x3   # [1] 0 1 1 1
class(x3)  "numeric"

x  # 값을 출력함 
length(x)  # 요소의 갯수를 출력함 

# 이제 연산을 해보면 r 의 놀라운 기능을 알 수 있다. 
# x를 2로 나누시오 
x/2 # 일반적 언어의 반복문 로직이 필요없다. 
    #  r은  데이타가 벡타형일때 자동 반복 연산처리를 한다. 

# [1] 0.0 1.0 1.5 2.0

# 벡터와 벡터 데이타를 연산해 보자  같은 순번에 있는 요소끼리 연산된다. 
c(1,2,3,4,5,6,7) + c(1,2,3,4,5,6,7)
# [1] 2  4  6  8 10 12 14

c(1,2,3,4,5,6,7) * 2   # 각각의 요소에 2씩 곱한다. 
# [1]  2  4  6  8 10 12 14

# 길이가 다른 요소  짧은 요소가 반복되며 연산을 한다. 
c(1,2,3,4,5,6) * c(2,3) 
#[1]  2  6  6 12 10 18
# 요소의 길이가 다를때 배수가 아닌경우 데이타 손실이 일어난다. 정말 주의하자. 
c(1,2,3,4,5,6) * c(1,2,3,4)

#================================================변수 개념 

a <-  1   # 할당 , 대입연산자 
b <-  2 
a+b

a = 3   # 기존의 대입 연산자도 활용 가능하다. 
b = 4 
a+b

var1 <- c(1,2,3,4,5) 
var1

var2 <- c(1:5)  # 일반언어라면 배열변수를 만들고 루프를돌려가 각각의 번지를 
                # 연속 증가하는 값으로 초기화 해야 한다. 
var2

var3 <- seq(1,5) # 1 에서 5까지 연속값 
var3 

var4 <-  seq(1,10, by=2)  
var4   # [1] 1 3 5 7 9

# R은 입력 데이타에 따라서 데이타 형이 결정된다. 

#===========================================변수 문자열 
str1 <- "a"
str1

str2 <- "문자열" 
str2

class(str2)  # 1] "character"

str3 <- c("a","b","c")
str3
class(str3)  # [1] "character"
 

str4 <- c("Hello","World","my","home")
str4  # [1] "Hello" "World" "my"    "home"  

str3 + 2  # 문자열에 연산을 불가 

#===================================================오늘을 여기까지 !!!!

a <- 1 
a 
b <- 2 
c <- 3 

a + b

a + b + c 

#   벡터형 변수 
var1 <- c(1,2,3,4,5)
var1 
#  연속값 입력 
var2 <- c(1:5) 
var2  # [1] 1 2 3 4 5

#  연속값 입력 2 
var3 <- seq(1,5)
var3 #[1] 1 2 3 4 5

var4 <- seq(1,10,by=2) 
var4  # [1] 1 3 5 7 9

var1 + 2  # 각각요소에 2씩더한다. 

var1 + var2  # 같은 순서에 있는 값끼리 연산한다. 

#===================================================기본함수 

x <- c(1,2,3) 
# 평균 
mean(x)
# [1] 2

# 최대값 출력 
max(x)
# 최소값 출력 
min(x)

# 요소연결하기 
paste(var4,collapse = ",")
# [1] "1,3,5,7,9"
paste(var4,collapse = " ")
# [1] "1 3 5 7 9"

# 함수 실행결과를 저장하기 

x_mean <- mean(var1)  # 이런모양의 코드가 뒤에 많이 나올거다. 
x_mean 

# 팩키지 함수 실행해 보기 
# install.packages("ggplot2")

install.packages("rlang")
y

install.packages("ggplot2")
y


#================================  데이타 프레임 사용하기 
# 데이타를 분석하려며 데이타 프레임을 생성해야 한다. data.frame()

english <- c(90,80,60,70) 
english
math <- c(50,60,100,20)
math
df_midterm <- data.frame(english,math)
df_midterm

#english math
#1      90   50
#2      80   60
#3      60  100
#4      70   20

class <- c(1,1,2,2)
class


df_midterm <- data.frame(english,math,class)
df_midterm


# english math class
# 1      90   50     1
# 2      80   60     1
# 3      60  100     2
# 4      70   20     2

# data.frame 안에서 직접 변수를 생성해도 됩니다.

df_midterm <- data.frame(english=c(90,80,70,80),
                         math=c(50,60,100,20),
                         class=c(1,1,2,2))
df_midterm

# english math class
# 1      90   50     1
# 2      80   60     1
# 3      70  100     2
# 4      80   20     2

# 데이타 프레임 속의 평균은 어떻게 
mean(df_midterm$english)
mean(df_midterm$math)
#  80
#  57.5



#==========================  그래픽 팩키지 활용하기 
install.packages("ggplot2")
library(ggplot2)

x <- c("a","b","c","d","a","c") 

# 빈도 그래프 
qplot(x)


# hwy ================================== 고속도로 연비 
# manufacturer  : 제조업체
# model  : 차모델  
# displ  : 배기량 
# year   : 년식 
# cyl    : 기통 
# trans :   오토 / 수동      
# drv     : 전륜 / 후륜 
# cty   : 도시 도로연비 
# hwy   : 고속도록 연비 
# fl    : 기름 종류 
# class  :  차등급 : 세단 . 

# x축에 고속도로연비 빈도 
qplot(data = mpg, x=hwy)
# 고속도로연비는 27마일 해당하는  차종 45종 
# 정도로 이 가장 많다. 

# x축에 도시연비 로 빈도 그래프를 그리시오 분석 
qplot(data = mpg, x=cty)
# 도시연비는 대체적으로 고속도로 연비보다 낮다 

# 도트 그래프 
qplot(data = mpg, x=drv, y=hwy)
# 전륜 구동이  4륜 이나 후륜 에비하여 
# 대체적으로 고속도로 연비가 높다. 

# 선형 그래프 : 시계열일때 많이 사용됨 
# x축의 데이타는 시간에 따른 데이타가 오는것이 
# 일반적 이다.
qplot(data = mpg, x=drv, y=hwy, geom="line")

# 박스 plot 그래프 : 중앙값 등의 표현시 유리하다. 
qplot(data = mpg, x=drv, y=hwy, geom="boxplot")
# 극단치 값도 보여줌 . 이값은 나중에 분석 프로그램 
# 작동시 제외를 시켜주는 것이 일반적임 .
# 이러한 행위를 전처리라고 말한다. 

# 색상 추가하기 drv 기준으로 색상을 자동부여 하시오 .
qplot(data = mpg, x=drv, y=hwy, geom="boxplot" ,
      colour = drv)


#========================== 외부 데이터 로드하기 
# 팩키지 설치 
install.packages("readxl")
y
# 메모리에 로드 
library(readxl)
# 엑셀 문서를 읽어옴 
df_exam <- read_excel("./Data/excel_exam_novar.xlsx")
df_exam
# 출력결과  컬럼이 없다. 
# A tibble: 7 x 5
#`1...1` `1...2` `50...3`  `98` `50...5`
#<dbl>   <dbl>    <dbl> <dbl>    <dbl>
#  1       2       1       60    97       60

df_exam_nocol <- read_excel("./Data/excel_exam_novar.xlsx",col_names = F)
df_exam_nocol
# 결과는 임의의 컬럼을 부여한다. 
# A tibble: 8 x 5
# ...1  ...2  ...3  ...4  ...5   <==== 임의의 컬럼 명 
# <dbl> <dbl> <dbl> <dbl> <dbl>


# 엑셀 문서의 3번째 시트를 읽어오는 방법 

df_exam_sheet <- read_excel("./Data/excel_exam_sheet.xlsx", sheet = 3)
df_exam_sheet

# csv 파일 읽어보기 
df_csv_exam <- read.csv("./Data/csv_exam.csv") 
df_csv_exam 
df_csv_exam$class

df_csv_exam <- read.csv("./Data/csv_exam.csv",stringsAsFactors = T) 
df_csv_exam 
str(df_csv_exam)
df_csv_exam$class
# Factors : 범주형 데이타를 말한다. df_csv_exam$class ==>  1 2 3 4 5 

# data frame을 csv 파일로 내보내기 

df_midterm <- data.frame(english=c(90,80,70,80),
                         math=c(50,60,100,20),
                         class=c(1,1,2,2))
df_midterm

write.csv(df_midterm, file="df_midterm.csv")

#------------------------------------------ 데이타 정보 보기 
exam <- read.csv("./Data/csv_exam.csv")

# 상위 6줄 보기 
head(exam)
# 상위 10줄 보기
head(exam,10)
# 마지막 6줄 
tail(exam)

# 뷰 View 창에서 보기 
View(exam)

# 암기요망  행렬갯수 알기 
dim(exam)
# [1] 20  5
# 데이타 속성 : 모든 컬럼의 속성을 출력함 
str(exam)
# 단일 컬럼 속성은 
class(exam$math)
# 데이타를 요약해서 보기 
summary(exam)
#Min.   : 1.00     
#1st Qu.: 5.75  
#Median :10.50    
#Mean   :10.50     
#3rd Qu.:15.25     
#Max.   :20.00   

#==================내장 데이타를 프레임으로 ======================

# data.frame()  : 프레임셋을 만들때 
# as.data.frame() :내장 데이타를 프레임으
mpg <- as.data.frame(ggplot2::mpg)
head(mpg)
tail(mpg)
View(mpg)
dim(mpg)
str(mpg)
summary(mpg)

#===================데이타 프레임의 컬럼명 수정하기 

df_raw <- data.frame(var1 = c(1,2,3),
                     var2 = c(2,3,2))
df_raw
# dplyr 라는 팩키지가 필요하다. ggplot2만큼 유명한 패키지 이므로 기억하자 .
install.packages("dplyr")
library(dplyr)
# rename () 함수를 이용하면 컬럼명을 변경이 가능하다. 
df_cpy <- df_raw 
df_new <- rename(df_cpy, myname=var2) 
df_new
#   var1 myname
# 1    1      2
# 2    2      3
# 3    3      2

# 컬럼 추가하기 : 아주 중요하다.  데이타프레밍$뉴컬럼

df_cpy$sum <- df_cpy$var1 + df_cpy$var2 

df_cpy

#     var1 var2 sum   <=== 추가된 컬럼이 보인다. 
# 1    1    2   3
# 2    2    3   5
# 3    3    2   5
#   var1 과 var2 의 평균 컬럼 avg을 추가하시오 .

df_cpy$avg <- (df_cpy$var1+df_cpy$var2) / 2 
df_cpy
#  var1 var2 sum avg
#1    1    2   3 1.5
#2    2    3   5 2.5
#3    3    2   5 2.5

summary(df_cpy$var1)

#============================== 
# mgp 에서  도시와 고속도로 total 평균연비 컬럼을 추가하시오 
mpg$total <- (mpg$cty+mpg$hwy)/2 
# 결과 처음에서 5개를 출력하시오 .
head(mpg,5)

#class total
#1 compact  23.5
#2 compact  25.0
#3 compact  25.5
#4 compact  25.5
#5 compact  21.0

# total의 평균을 구하시오 .
mean(mpg$total)
# [1] 20.14957

# total의 요약 통계를 출력하시오 .
summary(mpg$total)
# Min. 1st Qu.   Median    Mean  3rd Qu.    Max. 
# 10.50   15.50   20.50   20.15   23.50   39.50 

# total 빈도 그래프를 생성하시오 
qplot(mpg$total)


# 연비가 20 이상이면 합격 아니면 불합을 나타내는 컬럼 test 
# 추가하시오 .
mpg$test <- ifelse(mpg$total >= 20 , "pass" , "fail" )
head(mpg$test,20)

# test의 빈도 테이블을 생성하시오 .
table(mpg$test)
# fail pass 
# 106  128 

# test의 빈도 그래프를 출력하시오 . 
qplot(mpg$test)

#====================================분석2 
# total 컬럼에서 30 이상은 A grade , 20이상은 
# B , 아니면 C 으로 구별하는 컬럼 grade 추가하시오 .

mpg$grade <- ifelse(mpg$total >=30, "A", 
                    ifelse(mpg$total >=20, "B","C"))

# 빈도 테이블 작성 
table(mpg$grade)
# A   B   C 
# 10 118 106 

# 빈도 그래프 작성 
qplot(mpg$grade)

# grade2 컬럼 추가하되 , 30 이상은 A , 25 이상은 B ,
# 20 이상은 C , 아니면 D 구성하시오 . 
mpg$grade2 <- ifelse(mpg$total >=30, "A", 
                    ifelse(mpg$total >=25, "B",
                           ifelse(mpg$total >=20,"C","D")))
# 빈도 테이블 
table(mpg$grade2)
# A   B   C   D 
# 10  33  85 106 
# 빈도 그래프 
qplot(mpg$grade2)

# =========****** dplyr ****** 팩키지에서 자주 사용되는 함수  
# 1. filter() 행선택 
# 2. select() 컬럼 선택 
# 3. arrange() 정렬 
# 4. mutate() 변수(컬럼) 추가
# 5. summerise() 통계 
# 6. group_by()  그룹화 
# 7. left_join()  열합치기 
# 8. bind_row() 행합치기 

#==================================== filter 연습 
library(dplyr)
# csv_exam.csv 를 읽어 오시오 .
exam <- read.csv("./Data/csv_exam.csv") 
exam

# exam에서 반이 1 인 정보만 행만 선택하시오 . 
#  %>%  는 dplyr 에서 데이타의 결과가 이동되는 방향이다. 
# class 1 
exam %>% filter(class==1) 

# class 4
exam %>% filter(class==4) 

# class 2 가 아닌것의 처리 결과 result 변수에 저장하시오 .
result <- exam %>% filter(class != 2) 
result 

# 수학 점수가 50점 인상 행을 출력하시오 .

# 수학점수가 50점 이상이고 & 영어점수가 70 이상인 행을 출력하시오 .

# 과학점수가  80 이상 이거나 | 수학 점수가 60 점이상인 행을 출력하시오 .

#  반 이 1 3 5 인 행만 출력하시오 .   |   %in% c(1,3,5)
exam %>% filter(class  %in% c(1,3,5) )
exam %>% filter(class == 1 | class == 3 | class ==5  )

#  3반 학생들의 과학 평균 점수를 구하시오 . 
class3 <- exam %>% filter(class==3) 
mean(class3$science)
#[1] 39.25
# =============================== 오늘은 여기까지 

exam %>%  select(class,english)

# 4반의 수학 점수를 출력하세요 .

exam %>% filter(class==4) %>% select(class,math)

#  arrange()

# 5반의 아이디와 영어점수 출력하되
# 영어 점수의 올림차순으로 정렬하시오 

exam %>% filter(class==5) %>% 
  select(id,english) %>%
  arrange(english)

# 위의 결과를 내림차순으로 정렬하시오 desc()
exam %>% filter(class==5) %>% 
  select(id,english) %>%
  arrange(desc(english))

# exam에서 수학 영어 과학의 총점을 구하여  새로운 컬럼 total을 
# 추가하시오 mutate(새=구+구+구)

exam %>% mutate(total=math+english+science) %>% head(5)

# exam 에 total 총점과 , mean 평균 컬럼을 추가하시오 
exam %>% mutate(total=math+english+science,
                mean=(math+english+science)/3)  
#id class math english science total     mean
#1   1     1   50      98      50   198 66.00000
#2   2     1   60      97      60   217 72.33333
#3   3     1   45      86      78   209 69.66667
#4   4     1   30      98      58   186 62.00000

# exam 에 과학점수가 60 이상이면 "pass" 아니면 "fail" 을 나타내는 
# 컬럼 test를 추가히사오 

exam %>% mutate(test=ifelse(science>=60,"pass","fail"))

#id class math english science test
#1   1     1   50      98      50 fail
#2   2     1   60      97      60 pass
#3   3     1   45      86      78 pass
#4   4     1   30      98      58 fail


# =================================== group_by  : 그룹화 
# =================================== summarise : 요약 통계 

# 반별 수학점수의 평균을 구하시오 .

exam %>% 
  group_by(class) %>% 
  summarise(mean_math=mean(math))


# class mean_math
# <int>     <dbl>
#  1     1      46.2
#  2     2      61.2
#  3     3      45  
#  4     4      56.8
#  5     5      78  

# 반별 수학평균 mean_math ,
# 수학점수 총합 mean_tot, median 중앙값  , n 학생수 n() 를 출력하시오 .

exam %>% 
  group_by(class) %>%
  summarise(mean_math=mean(math) ,mean_tot=sum(math) ,
            median=median(math) , n=n() )


#  class mean_math mean_tot median     n
# <int>     <dbl>    <int>  <dbl> <int>
#   1     1      46.2      185   47.5     4
#   2     2      61.2      245   65       4
#   3     3      45        180   47.5     4
#   4     4      56.8      227   53       4
#   5     5      78        312   79       4

# mpg 확인하고 ,존재하면 회사별 ,구동방식별 drv  평균 도시연비를 
# 출력하되 10개만 출력하시오 . 
mpg %>% group_by(manufacturer,drv) %>%
    summarise(avg_cty=mean(cty)) %>% head(10)

# Groups:   manufacturer [5]
#manufacturer drv   avg_cty
#<chr>        <chr>   <dbl>
#1 audi         4        16.8
#2 audi         f        18.9
#3 chevrolet    4        12.5
#4 chevrolet    f        18.8
#5 chevrolet    r        14.1
#6 dodge        4        12  
#7 dodge        f        15.8
#8 ford         4        13.3
#9 ford         r        14.8
#10 honda        f        24.4

# mpg에서 class가 "suv" 인 차량만 선택하여 
# 통합연비를 산출하고  제조 업체별 
# 통합연비의 평균을 구하여 출력하되 
# 평균이 높은순서부터 5개를 출력하시오 .

mpg %>% group_by(manufacturer) %>%
  filter(class=="suv") %>% 
  mutate(total=(cty+hwy)) %>%
  summarise(tot_avg=mean(total)) %>%
  arrange(desc(tot_avg)) %>% head(5)

#<chr>          <dbl>
#1 subaru          43.8
#2 toyota          32.6
#3 nissan          31.8
#4 mercury         31.2
#5 jeep            31.1

#===============================데이타 프레임 합치기 
# 중간고사 
test1 <- data.frame(id=c(1,2,3,4,5),
                    midterm=c(60,70,80,65,95))
test1
# 기말고사 
test2 <- data.frame(id=c(1,2,3,4,5),
                    midterm=c(65,77,85,60,88))

test2

#> test1
#id midterm
#1  1      60
#2  2      70
#3  3      80
#4  4      65
#5  5      95
#> test2
#id midterm
#1  1      65
#2  2      77
#3  3      85
#4  4      60
#5  5      88
# test1과 test2를 병합하시오 . : left_join() 를 이용한다.  

total <- left_join(test1,test2, by="id")
total 


# id midterm.x midterm.y
# 1  1        60        65
# 2  2        70        77
# 3  3        80        85
# 4  4        65        60
# 5  5        95        88

# 위 total 토탈 결과에 이름 추가하시오 .

name <- data.frame(id=c(1,2,3,4,5) ,
                   name=c("홍길동","이순신","김유신","강감찬","유관순"))

name

total_name <- left_join(total,name,by="id")
total_name

#> total_name
#id midterm.x midterm.y   name
#1  1        60        65 홍길동
#2  2        70        77 이순신
#3  3        80        85 김유신
#4  4        65        60 강감찬
#5  5        95        88 유관순

#========================== 행을 병합하기 

group_a <- data.frame(id=c(1,2,3,4,5),
                      test=c(60,70,80,90,100))
#> group_a 
#id test
#1  1   60
#2  2   70
#3  3   80
#4  4   90
#5  5  100
group_b <- data.frame(id=c(6,7,8,9,10),
                      test=c(65,75,85,95,90))
#> group_b 
#id test
#1  6   65
#2  7   75
#3  8   85
#4  9   95
#5 10   90

group_all <- bind_rows(group_a,group_b)
group_all
# > group_all
# id test
# 1   1   60
# 2   2   70
# 3   3   80
# 4   4   90
# 5   5  100
# 6   6   65
# 7   7   75
# 8   8   85
# 9   9   95
# 10 10   90

#========================= 데이타 정제하기  : 전처리 
# 1.  결측치 정제 : 빠진 데이타 : NA 
# 2.  이상치 정제 : 존재 해서는 안되는 값 


df <- data.frame(gender=c("M","F",NA,"M","F"),
                 score=c(5,4,3,4,NA)) 

df 

# 
# > df 
#    gender  score
# 1      M     5
# 2      F     4
# 3   <NA>     3
# 4      M     4
# 5      F    NA

# 결측치 확인하기      is.na(df)
is.na(df)

# > is.na(df)
# gender score
# [1,]  FALSE FALSE
# [2,]  FALSE FALSE
# [3,]   TRUE FALSE
# [4,]  FALSE FALSE
# [5,]  FALSE  TRUE

table( is.na(df))

# 
# > table( is.na(df))
# 
# FALSE  TRUE 
# 8     2 
# > 


# 성별에 결측치기 몇개인가요 
table( is.na(df$gender))
# > table( is.na(df$gender))
# 
# FALSE  TRUE 
# 4     1 

# 점수에 결측치가 몇개 인가요 
table( is.na(df$score))

# 
# > table( is.na(df$score))
# 
# FALSE  TRUE 
# 4     1 

# df 부터 점수가 결측인 행을 제거하시오 . 
df %>% filter(!is.na(score))

# gender score
# 1      M     5
# 2      F     4
# 3   <NA>     3
# 4      M     4


# dfs 부터 성별이 결측인 행을 제거하시오 . 

df %>% filter(!is.na(gender))

# gender score
# 1      M     5
# 2      F     4
# 3      M     4
# 4      F    NA

# df %>% filter(!is.na())  는 사용금지 

# 일반적인 통계함수 사용시 결측 제거  na.rm = T 를 사용한다. 
mean(df$score)
# [1] NA

mean(df$score, na.rm = T)
# [1] 4

sum(df$score, na.rm = T)
# [1] 16

# csv_exam.csv 를 읽어서 수학점수의 3,8,15 행에 NA 데이타를 입력하시오 

exam <- read.csv("./Data/csv_exam.csv") 
# exam[행,열]
exam[c(3,8,15),"math"] <- NA 
View(exam)

# exam 단순 수학 평균을 구해보고 
exam %>% summarise(mean_math=mean(math))
# mean_math
# 1        NA


# exam 수학 점수의 결측 제거하고 평균을 구해보시오 .

exam %>%  summarise(mean_math=mean(math, na.rm = T))
# 
# mean_math
# 1  55.23529

# exam 수학평균 mean_math ,수학 합계 sum_math , 수학 중앙값을 medi_math
# 을 구해서 출력하시오 . 

exam %>%  summarise(mean_math=mean(math, na.rm = T),
                    sum_math=sum(math, na.rm = T),
                    medi_math=median(math, na.rm = T))
# 
#   mean_math  sum_math medi_math
# 1  55.23529      939        50


#=====================================이상치 정제하기 
# exam 의 영어점수에 5, 12 ,15 ,20 행에  점수 999 를 입력하시오 . 


exam[c(5,12,15,20),"english"] <- 999
exam 

# 이상치 처리의 기본형  :  이상치 ---> 결측치 전환 ---> 결측치를 제거 

# 이상치를 결측치로 
exam$english <- ifelse(exam$english > 100 , NA ,exam$english )

table(is.na(exam$english))
# FALSE  TRUE 
# 16     4 

# 이제 결측치를 제거 하고 연산가능 
# exam 영어 평균 mean_eng ,영어 합계 sum_eng , 영어 중앙값을 medi_eng
# 을 구해서 출력하시오 

exam %>%  summarise(mean_eng=mean(english, na.rm = T),
                    sum_eng=sum(english, na.rm = T),
                    medi_eng=median(english, na.rm = T))

#    mean_eng sum_eng medi_eng
# 1   87.125    1394     89.5

# mpg 데이타셋의 고속도록 평균연비를 측정하고자 한다. 
# 어떻게 ????
mpg <- as.data.frame(ggplot2::mpg)
mpg

# 1 . 결측이 존재하는가 

table(is.na(mpg$hwy)) 

# FALSE  결과로 부터 결측는 없다. 
# 234 

# 2 . 이상치 존재하는가 
library(ggplot2)
boxplot(mpg$hwy) # 그래프로 판단 가능 
boxplot(mpg$hwy)$stats  # 수치로 판단 가능
# 
# [,1]
# [1,]   12
# [2,]   18
# [3,]   24
# [4,]   27
# [5,]   37   <=============이상이면 이상치로 판단하자 . 
# attr(,"class")
# 1 
# "integer" 
# > 
# 3 . 결측와 이상치 처리 

mpg$hwy <- ifelse( mpg$hwy < 12 | mpg$hwy > 37, NA, mpg$hwy )

table(is.na(mpg$hwy))
# > table(is.na(mpg$hwy))
# 
# FALSE  TRUE 
# 231     3 

# 4 . na를 제거하고 평균을 구한다.  

mpg %>% summarise(avg_hwy = mean(hwy, na.rm = T))

# avg_hwy
#1 23.18615
# ================================ r 통해서 분석 /  dplyr + ggplot2

#===================================더 정교한 그래프 작성하기 
# ggplot2 를 활용 

# 1 단계 : 배경설정 (축) 
# 2 단계 : 그래프 추가 (점,선,막대...)
# 3 단계 : 축범위 , 색 , 표식 등등 설정 

#====================== 1 산점도 그래프 : 두 변수간의 관계표현 

library(ggplot2)
# x축 displ  y축 hwy 로 설정 : aes()
ggplot(data = mpg, aes(x=displ,y=hwy))

# 산점도 geom_point() 그래프 추가 
ggplot(data = mpg, aes(x=displ,y=hwy)) + geom_point()

# 축의 범위를 제한 하자 .xlim(3,6) ylim(10,30)
ggplot(data = mpg, aes(x=displ,y=hwy)) + geom_point() 
+ xlim(3,6) + ylim(10,30)

#===================== 막대 그래프 : 집단간의 차이를 표현 

# mpg 로부터 drv 별 , 평균 hwy 를 담은 변수 df_mpg를 생성하시오 
library(dplyr)
df_mpg <- mpg %>% group_by(drv) %>% 
   summarise(mean_hwy=mean(hwy,na.rm = T) ) 

df_mpg
# 시각화 1 단계 : x축 , y축 설정 
ggplot(data = df_mpg ,aes(x=drv,y=mean_hwy) )

# 시각화 2단계 : 그래프그리기 막대 geom_bar() geom_col()

# geom_bar() x축만 설정 : 데이타 속에 : 팩터의 종류의 빈도수를 그래프로
ggplot(data = mpg ,aes(x=drv)) + geom_bar()

# geom_col() x축 y 축 모두 설정하는 바그래프 
ggplot(data = df_mpg ,aes(x=drv,y=mean_hwy))+geom_col()

# 그래프 정렬 reorder()
# 올림차순 
ggplot(data = df_mpg ,aes(x=reorder(drv,mean_hwy), y=mean_hwy))+geom_col()

# 내림차순  
ggplot(data = df_mpg ,aes(x=reorder(drv,-mean_hwy), y=mean_hwy))+geom_col()

#=================  선 그래프  :  시간에 따라서 달라지는 값 표현 그래프

economics

# 1 단계 
ggplot(data=economics, aes(x=date,y=unemploy))
# 2 단계 
ggplot(data=economics, aes(x=date,y=unemploy)) + geom_line()

#==================== 상자그림  : 집단간의 분포차 geom_boxplot()
#            최저/최고/평균/중앙...

ggplot(data = mpg,aes(x=drv,y=hwy)) + geom_boxplot()


#=================================== 실전 분석 
install.packages("foreign")
# 주제 1 : 2015년 한국복지패널 통계 자료를 로드한 후 
# 성별 평균 임금 차이가 있는지 분석한 후 시각화를 해 보시오. 


# 자주사용되는 팩키지 
# foreigin , dplry , ggplot2 , readxl 

# 0 필요한 팩키지를 설치한다. 

# 1 사용할 팩키지를 로드하다.
library(foreign)
library(dplry)
library(ggplot2)
library(readxl)

# 2 데이타 프레임 생성하기 : 2015년 한국복지패널 통계 자료 

raw_welfare <- read.spss(file="./Data/Koweps_hpc10_2015_beta1.sav",
                         to.data.frame = T)

# 3 복사본 만들기 
welfare <- raw_welfare 

# 4 데이타 확인 
 dim(welfare)
# > dim(welfare)
# [1] 16664   957

 head(welfare,1)  
 # 
 # h10_id h10_ind h10_sn h10_merkey h_new h10_cobf h10_reg5 h10_reg7
 # 1      1       1      1      10101     0       NA        1        1
 # h10_din h10_cin h10_flag  p10_wgl   p10_wsl  p10_wgc   p10_wsc h10_hc
 # 1     864     864        0 776.9947 0.2567795 763.7189 0.2523922      2

tail(welfare)

# 16659          NA          NA          NA          NA          NA
# c1007_4aq20 c1007_4aq21 c1007_4aq22 c1007_4aq23 h10_pers_income1
# 16659          NA          NA          NA          NA               NA
# h10_pers_income2 h10_pers_income3 h10_pers_income4 h10_pers_income5
# 16659               NA             7163                0               NA
# [ reached 'max' / getOption("max.print") -- omitted 5 rows ]
# 

View(welfare)
str(welfare)

# > str(welfare)
# 'data.frame':	16664 obs. of  957 variables:
#   $ h10_id          : num  1 2 3 4 4 6 6 6 6 6 ...
# $ h10_ind         : num  1 1 1 1 1 1 1 1 1 1 ...
# $ h10_sn          : num  1 1 1 1 1 1 1 1 1 1 ...
# $ h10_merkey      : num  10101 20101 30101 40101 40101 ...
# $ h_new           : num  0 0 0 0 0 0 0 0 0 0 ...
# $ h10_cobf        : num  NA NA NA NA NA NA NA NA NA NA ...
# $ h10_reg5        : num  1 1 1 1 1 1 1 1 1 1 ...
# $ h10_reg7        : num  1 1 1 1 1 1 1 1 1 1 ...

summary(welfare)


# h10_id        h10_ind           h10_sn        h10_merkey      
# Min.   :   1   Min.   : 1.000   Min.   :1.000   Min.   :   10101  
# h_new           h10_cobf        h10_reg5        h10_reg7    
# Min.   :0.0000   Min.   :1.000   Min.   :1.000   Min.   :1.000  
# h10_din          h10_cin          h10_flag    p10_wgl       
# Min.   :-28685   Min.   :-27281   Min.   :0   Min.   :    0.0  
# p10_wsl          p10_wgc            p10_wsc            h10_hc     
# Min.   :0.0000   Min.   :   50.32   Min.   :0.01663   Min.   :1.000  
# nh1001_1        nh1001_2        h1001_1         h10_pind     
# Min.   :2013    Min.   : 1.00   Min.   :1.000   Min.   : 1.000  

# 분석할 데이타 선별하기  , 컬럼명 변경 
# 컬럼명이 모두 약어로 되어 있어서 분석하기 힘들다. 
welfare <- rename(welfare,
                  sex=h10_g3,   #성별
                  birth=h10_g4,  # 출생년도 
                  marriage = h10_g10, #혼인상태 
                  religion = h10_g11, # 종교 
                  income=p1002_8aq1, # 월급 
                  code_job=h10_eco9, # 직종코드 
                  code_region=h10_reg7) #지역코드


# ===============성별 sex 에 따른 평균월급 income 차이 분석하시오

# 1 성별 전처리 
class(welfare$sex)
# [1] "numeric"

table(welfare$sex)
# 1    2 
# 7578 9086 

# 결측치 확인 : 
table(is.na(welfare$sex))
# FALSE    na 데이타는 없는 것으로 확인됨 
# 16664

# 이상치 처리 
welfare$sex <- ifelse(welfare$sex==9,NA, welfare$sex) 

# 성별 항목 부여  
welfare$sex <- ifelse(welfare$sex==1,"male","female")

# 빈도확인 
table(welfare$sex)
# female   male 
# 9086     7578

qplot(welfare$sex)
# 그래프 확인 

#==================== 수입 전처리 
class(welfare$income)
#[1] "numeric"
summary(welfare$income)
# 
# Min. 1st Qu.  Median   Mean   3rd Qu.    Max.    NA's 
# 0.0   122.0   192.5   241.6   316.6     2400.0   12030 
# 간단히 그래프로 
qplot(welfare$income)
# x축 제한 
qplot(welfare$income) + xlim(0,1000)

boxplot(welfare$income)
table(is.na(welfare$income))
# FALSE  TRUE   결측 데이타가 12030으로 나타남 
# 4634 12030

# 이상치는 0이거나 9999이면 이상치로 판단하고 NA 치환한다. 
welfare$income <- ifelse(welfare$income %in% c(0,9999),NA,welfare$income)
table(is.na(welfare$income))

# FALSE  TRUE   몇몇행이 이상치로 판단되어 NA 로 치환 되었음 
# 4620   12044

#========================분석 
sex_income <- welfare %>%
  filter(!is.na(income)) %>% 
  group_by(sex) %>% 
  summarise(mean_income=mean(income))

sex_income


#    sex      mean_income
# 1 female    163.2471
# 2 male      312.2932

library(ggplot2)
# 시각화 여성집단 남성집단을 나타내는 막대그래프가 적합하다. 

ggplot(data=sex_income,aes(x=sex,y=mean_income)) + geom_col()

#==================================================================
# 주제 2 :  나이  birth 와 평균월급 income 차이 분석 
dim(welfare)
# income 이미 조사가 되어 있다. 
# birth 조사 

# 데이타형 파악 
class(welfare$birth)
# [1] "numeric"
# 간이분포 파악 
summary(welfare$birth)
#Min.  1st Qu.  Median    Mean 3rd Qu.    Max. 
#1907    1946    1966    1968    1988    2014

library(ggplot2)
# 간이빈도 그래프 
qplot(welfare$birth)

# 나이에 결측치기 있는지 체크 
table(is.na(welfare$birth))
# 결측치는 없는 것으로 판단됨 
# FALSE 
# 16664 

# 나이에 이상치가 있는지 파악  9999---> NA로 변경 
welfare$birth <- ifelse(welfare$birth == 9999, NA,welfare$birth)
# 다시한번 결측치 파악 
table(is.na(welfare$birth))

# 출생년도를 이용해서 나이 컬럼을 생성 : 이 데이타는 2015년 기준이다.
welfare$age <- 2015 - welfare$birth + 1 
summary(welfare$age)

#Min.  1st Qu.  Median    Mean 3rd Qu.    Max. 
#2.00   28.00   50.00   48.43   70.00  109.00 
qplot(welfare$age)

# 분석과 시각화로 
library(dplyr)
age_income <- welfare %>%
  filter(!is.na(income)) %>% 
  group_by(age) %>% 
  summarise(mean_income=mean(income))

head(age_income)  
  
  
# A tibble: 6 x 2
# age mean_income
# <dbl>       <dbl>
# 1    20        121.
# 2    21        106.
# 3    22        130.
# 4    23        142.
# 5    24        134.
# 6    25        145.
library(ggplot2)
# 시각화 : x축이 나이이므로 시계열 데이로 취급한것이 유리함 : 선형
ggplot(data = age_income,aes(x=age,y=mean_income)) + geom_line()
  
# 주제 3 : 연령대(young,middle,old)에 따른 평균임금 차이 분석하시오 .

# ageg : 30미만을 young , 59이하는 middle , 나머지는 old라 정하자. 
# 실무에서는 이런것을 생가하고 코딩하는것이 매우 중요하다. 
library(dplyr)

welfare <- welfare %>%
  mutate(ageg = ifelse(age<30,"young",
                       ifelse(age<=59,"middle","old")))

table(welfare$ageg)
# middle    old  young 
# 6049   6281   4334 
qplot(welfare$ageg)

# 분석 코드 
ageg_income <- welfare %>%
  filter(!is.na(income)) %>%
  group_by(ageg) %>%
  summarise(mean_income=mean(income))


ageg_income

# ageg   mean_income
# <chr>        <dbl>
# 1 middle        282.
# 2 old           125.
# 3 young         164.

# 시각화 : 집단간의 차이가 있다. 그래서 바 그래프가 적당하다. 
# geom_col()   x y 축 존재  , geom_bar() x축만 존재 

ggplot(data = ageg_income, aes(x=ageg,y=mean_income)) + 
  geom_col() + 
  scale_x_discrete(limits = c("young","middle","old") )

# 주제 4 :  연령대별 성별 평균임금 차이를 분석 해보자 

# 전처리는 이미 끝난상태 
ageg_sex_income <- welfare %>%
  filter(!is.na(income)) %>%   # na 데이타 제거 
  group_by(ageg,sex) %>%  # 2중 그룹화 
  summarise(mean_income=mean(income))  # 각 그룹에 평균임금 

ageg_sex_income  # 분석결과 출력 

# ageg   sex    mean_income
# <chr>  <chr>        <dbl>
# 1 middle female       188. 
# 2 middle male         353. 
# 3 old    female        81.5
# 4 old    male         174. 
# 5 young  female       160. 
# 6 young  male         171. 

# 6가지 소그룹을 출력할수 있는 시각화 그래프를 그려보자 

ggplot(data = ageg_sex_income, aes(x=ageg,y=mean_income,fill=sex)) +
  geom_col() + 
  scale_x_discrete(limits=c("young","middle","old"))


# 주제 5  : 나이별 성별 평균임금 차이를 분석해보자 

age_sex_income <- welfare %>% 
  filter(!is.na(income)) %>% 
  group_by(age,sex) %>% 
  summarise(mean_income=mean(income))


head(age_sex_income,10)


# age sex    mean_income
# <dbl> <chr>        <dbl>
# 1    20 female        147.
# 2    20 male           69 
# 3    21 female        107.
# 4    21 male          102.
# 5    22 female        140.
# 6    22 male          118.
# 7    23 female        139.
# 8    23 male          153.
# 9    24 female        126.
# 10    24 male          158.

# 시각화 하기 1 
ggplot(data = age_sex_income, aes(x=age,y=mean_income,fill=sex))+
  geom_col()

# 시각화 하기 2 
ggplot(data = age_sex_income, aes(x=age,y=mean_income,col=sex))+
  geom_line()

# 주제  6.직업별  평균임금차이를 분석해 보자   

head(welfare$code_job,10)
#  [1]  NA  NA 942 762  NA 530  NA  NA  NA  NA
#  직업이 코드화 되어있어서 분석하기 힘들다. 
#  코드 시트 와 기존의 데이타셋을  code_job기준으로 열병합을 해야 한다. 

class(welfare$code_job)
# [1] "numeric"
table(is.na(welfare$code_job))
# FALSE  TRUE 
# 7529  9135   

library(readxl)  # 세션이 닫히면 무조건 로드하자 . 
# 엑셀문서 로드시 주의사항
# 몇번째 시트인가 ?
# 컬럼이 존재하는가 
list_job <- read_excel("./Data/Koweps_Codebook.xlsx",col_names = T,sheet = 2)
head(list_job)
# A tibble: 6 x 2
# code_job job                                
# <dbl> <chr>                              
# 1      111 의회의원 고위공무원 및 공공단체임원
# 2      112 기업고위임원                       
# 3      120 행정 및 경영지원 관리자            
# 4      131 연구 교육 및 법률 관련 관리자      
# 5      132 보험 및 금융 관리자                
# 6      133 보건 및 사회복지 관련 관리자  

dim(list_job)
#  dim(list_job)
# [1] 149   2

# 양쪽 데이타 셋에 모두 존재하는 컬럼을 기준으로 컬럼 병합을 하자 
welfare <- left_join(welfare,list_job, id="code_job")

# 데이타 확인 
welfare %>% 
  filter(!is.na(code_job)) %>%
  select(code_job,job) %>%
  head(10)

# code_job                                job
# 1       942                   경비원 및 검표원
# 2       762                             전기공
# 3       530 방문 노점 및 통신 판매 관련 종사자
# 4       999        기타 서비스관련 단순 종사원
# 5       312                    경영관련 사무원
# 6       254             문리 기술 및 예능 강사
# 7       510                        영업 종사자
# 8       530 방문 노점 및 통신 판매 관련 종사자
# 9       286   스포츠 및 레크레이션 관련 전문가
# 10      521                   매장 판매 종사자

# 분석 :  직업별  평균임금차이 


job_income <- welfare %>% 
  filter(!is.na(income)&!is.na(job)) %>%
  group_by(job) %>%
  summarise(mean_income=mean(income)) 

dim(job_income) 

#  dim(job_income) 
# [1] 142   2
head(job_income,10)
# job                                mean_income
# <chr>                                    <dbl>
# 1 가사 및 육아 도우미                       80.2
# 2 간호사                                   241. 
# 3 건설 및 광업 단순 종사원                 190. 
# 4 건설 및 채굴 기계운전원                  358. 
# 5 건설 전기 및 생산 관련 관리자            536. 
# 6 건설관련 기능 종사자                     247. 
# 7 건설구조관련 기능 종사자                 242. 
# 8 건축 및 토목 공학 기술자 및 시험원       378. 
# 9 건축마감관련 기능 종사자                 254. 
# 10 경비원 및 검표원                         134. 

# 급여 상위 10개를 출력해 보세요 -- 정렬이 필요하다.  

top10 <- job_income %>% 
   arrange(desc(mean_income))  %>%
   head(10)
  
# job                                  mean_income
# <chr>                                      <dbl>
#   1 금속 재료 공학 기술자 및 시험원             845.
# 2 의료진료 전문가                             844.
# 3 의회의원 고위공무원 및 공공단체임원         750 
# 4 보험 및 금융 관리자                         726.
# 5 제관원 및 판금원                            572.
# 6 행정 및 경영지원 관리자                     564.
# 7 문화 예술 디자인 및 영상 관련 관리자        557.
# 8 연구 교육 및 법률 관련 관리자               550.
# 9 건설 전기 및 생산 관련 관리자               536.
# 10 석유 및 화학물 가공장치 조작원             532.
  
# 상위 10 개 결과를 시각화 하시오 .
ggplot(data = top10,aes(x=job,y=mean_income)) + geom_col()
# 시각화 결과 x축의 표식이 너무 길어서 겹쳐서 출력된다. 
# 수평바 그래프를 그려보자 
ggplot(data = top10,aes(x=job,y=mean_income)) + 
  geom_col() +
  coord_flip()
# 정렬   
ggplot(data = top10,aes(x=reorder(job,mean_income),y=mean_income)) + 
  geom_col() +
  coord_flip()  
  
#==================================정리하세요   
# 주제 7 :   성별 직업 빈도를 분석해보자
# 성별은 결측치  처리가 도어있다.
  
library(ggplot2)
library(dplyr)
# 남성의 직업 빈도 최상위 10개를 출력하시오 
man_job_cnt <- welfare %>%
   filter(!is.na(job) & sex=="male") %>% # 전처리 - 데이타분석이 가능해짐 
   group_by(job) %>% 
   summarise(cnt=n()) %>% 
   arrange(desc(cnt)) %>%
   head(10)
man_job_cnt
# 그래프로 출력하시오 
ggplot(data = man_job_cnt , aes(x=reorder(job,cnt),y=cnt)) + 
  geom_col() + coord_flip()
  


# 여성의 직업 빈도 최상위 10개를 출력하시오  
woman_job_cnt <- welfare %>%
  filter(!is.na(job) & sex=="female") %>% # 전처리 - 데이타분석이 가능해짐 
  group_by(job) %>% 
  summarise(cnt=n()) %>% 
  arrange(desc(cnt)) %>%
  head(10)  
  
# 그래프로 출력하시오 
ggplot(data = woman_job_cnt , aes(x=reorder(job,cnt),y=cnt)) + 
  geom_col() + coord_flip()

# 주제 8 :  종교 유무에 따른 이혼율을 분석하시오 .
# 종교가 있냐 없냐 , 빈도 측정 , 결측치 , 이상치 
class(welfare$religion)
table(welfare$religion)
# 1    2 
# 8047 8617    1이면 종교가 있고 , 2면 종교가 없다. 

welfare$religion <- ifelse(welfare$religion==1,"yes","no" )
table(welfare$religion)
# no  yes 
# 8617 8047 
qplot(welfare$religion)
# 결혼 했냐 안했냐 , 빈도 ,결측, 이상치 

class(welfare$marriage)
table(welfare$marriage)
# 0    1    2    3    4    5    6 
# 2861 8431 2117  712   84 2433   26
# 1번과 결혼, 3번 이혼만을 결혼으로 인정하고 나머지는 
# 이상치로 취급한다. 

# 분석할 컬럼을 새로 생성 
welfare$group_marrige <- ifelse(welfare$marriage==1,"marrige",
                   ifelse(welfare$marriage==3,"divorce",NA))

table(welfare$group_marrige)

#divorce marrige 
#  712    8431 
table(is.na(welfare$group_marrige))
# FALSE  TRUE 
# 9143  7521 

# 종교 유   + 이혼율  ?    이혼갯수 / (이혼갯수+결혼갯수) * 100 
# 종교 무   + 이혼율  ?    이혼갯수 / (이혼갯수+결혼갯수) * 100 

reli_mari <- welfare %>%
   filter(!is.na(group_marrige)) %>% 
   group_by(religion,group_marrige) %>% 
   summarise(n=n())  %>%   # 각그룹의 전체수 종교유무 * 결혼유무  
   mutate(tot_group=sum(n))   %>%   # 4가지 그룹을 합친결과 
   mutate(percent = round(n/tot_group*100,1))

reli_mari


# religion group_marrige     n tot_group percent
# <chr>    <chr>         <int>     <int>   <dbl>
# 1 no       divorce         384      4602     8.3
# 2 no       marrige        4218      4602    91.7
# 3 yes      divorce         328      4541     7.2
# 4 yes      marrige        4213      4541    92.8

# 이혼 추출 
divorce <- reli_mari %>% 
  filter(group_marrige=="divorce") %>% 
  select(religion,percent)

# 시각화 
ggplot(data=divorce,aes(x=religion,y=percent)) + geom_col()

# 두개의 데이타값이 차이가 의미가 있는지 없는지 
# 판단은 T 검정을 해보야야 한다.  
#  두개의 차이가 우연히 발생할수도 있기 때문이다. 

# 주제 9 :  지역별 연령대 비율 을 분석해 보자 
class(welfare$code_region)
#[1] "numeric"

table(welfare$code_region)
# 1    2    3    4    5    6    7     # 7개 지역으로 구별된다. 
# 2486 3711 2785 2036 1467 1257 2922 
# 1. 서울          2. 수도권(인천/경기)    3. 부산/경남/울산   4.대구/경북   
# 5. 대전/충남   6. 강원/충북               7.광주/전남/전북/제주도

# 지역코드 데이타 프레임을 생성하자 . 
list_region <- data.frame(code_region=c(1:7),
                          region=c("서울","수도권(인천/경기)",
                                   "부산/경남/울산","대구/경북",
                                   "대전/충남","강원/충북",
                                   "광주/전남/전북/제주도"))

# 확인 
list_region

# 컬럼병합 
welfare <- left_join(welfare,list_region,id="code_region")


welfare %>% select(code_region,region,ageg) %>% head(10)

#     code_region region
# 1            1   서울
# 2            1   서울
# 3            1   서울
# 4            1   서울
# 5            1   서울
# 6            1   서울
# 7            1   서울
# 
# 연령대는 이미 처리되어 있다.  young , middle , old 

# 분석 시작 

reli_ageg <- welfare %>% 
  group_by(region,ageg) %>%      #  지역 7  , 연령대 3 
  summarise(n=n()) %>%   # 그룹별 카운트 
  mutate(tot=sum(n))  %>%  # 모든 그룹 카운트 : 총계 
  mutate(percent=round((n/tot)*100,1)) #  각그룹/전체 비율 
reli_ageg

#   region                ageg       n   tot percent
# <chr>                 <chr>  <int> <int>   <dbl>
# 1 강원/충북             middle   417  1257    33.2
# 2 강원/충북             old      555  1257    44.2
# 3 강원/충북             young    285  1257    22.7
# 4 광주/전남/전북/제주도 middle   947  2922    32.4
# 5 광주/전남/전북/제주도 old     1233  2922    42.2
# 6 광주/전남/전북/제주도 young    742  2922    25.4
# 7 대구/경북             middle   637  2036    31.3
# 8 대구/경북             old      928  2036    45.6
# 9 대구/경북             young    471  2036    23.1
# 10 대전/충남             middle   548  1467    37.4
# ...........이후 생략 

# 시각화 

ggplot(data=reli_ageg,aes(x=region,y=percent,fill=ageg)) + 
  geom_col() + 
  coord_flip()

# 텍스트 마이닝  : 자연어처리 , 
# 문자로된 데이타에서 가치 있는 정보를 마이닝 하는 것

# 필요한 팩키지 : rJava, memoise,
# KoNLP : 한글 형태소를 분석할수 있는 팩키지 

install.packages("multilinguer")
library(multilinguer)
install.packages(c('stringr', 'hash', 'tau', 'Sejong', 'RSQLite', 'devtools'), type = "binary")
install.packages("remotes")
remotes::install_github('haven-jeon/KoNLP', upgrade = "never", INSTALL_opts=c("--no-multiarch"))

library(KoNLP)
library(dplyr)
Sys.setenv(JAVA_HOME="C:/Java/jdk1.8.0_151")

useNIADic()
# hiphop.txt 를 분석해보자 
# 데이타 로드 
txt <- readLines("./Data/hiphop.txt")
head(txt)

# 전처리 
library(stringr)
# 정규식을 이요하여 문장속에 모든 특수 문자를 공백으로 대체한다. 
txt <- str_replace_all(txt,"\\W"," ")
txt <- str_replace_all(txt, "[a-zA-z0-9]"," ")
# 문장 속에서 명사를 추출을 테스트 해본다. 
extractNoun("대한민국의 영토는 한반도와 그 부속 도서로 한다")
# [1] "대한민국" "영토"     "한반도"   "부속"     "도서"     "한" 

# 힙합 가사로 부터 명사를 추출한다. 
nones <- extractNoun(txt)

# 단어별 빈도 분석을 해보자 
wordcount <- table(unlist(nones))

# 데이타 프레임으로 전환 
df_word <- as.data.frame(wordcount,stringsAsFactors = F)

head(df_word)
#   단어  빈도
#   Var1 Freq
# 1        12
# 2         2
# 3    1    9
# 4  100    3
# 5  168    1
# 6   17    1

# 컬럼명을 쓰기 좋게 변경하자 

df_word <- rename(df_word,word=Var1,freq=Freq)

# 글자의 길이가 두글자 이상만 추출하자 . 
df_word <- filter(df_word, nchar(word) >= 2) 

# 가장 빈도가 많은 단어 20개만 출력하시오 . 

top20 <- df_word %>% 
  arrange(desc(freq)) %>% 
  head(20)
top20

# wordcloud 생성하기 
# wordcloud 팩키지 설치 

# 패키지 로드 
library(wordcloud)
library(RColorBrewer)

# 색상표 생성 
pal <- brewer.pal(8,"Dark2")  # Dark2 색상목록에서 8개 생상 추출 
set.seed(1234) 
wordcloud(words=df_word$word,
          freq = df_word$freq,
          min.freq = 2,
          max.words = 200,
          random.order = F,    
          rot.per = 0.1,        
          scale = c(2,0.5),    
          colors = pal)       
# 고빈도 단어를 중앙에 ?
# 회전단어 비율 
# 단어크기 

# 색상목록 












