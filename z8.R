library(MASS)
mtcars

#korzystam ze zbioru danych mtcars
#przeprowadze analize zmiennej hp - gross horsepower od zmiennych:
#1.mpg	Miles/(US) gallon
#2.qsec	1/4 mile time
#3.disp	Displacement (cu.in.)
#4.cyl	Number of cylinders

#1. hp ~ mpg
lm.fit1<-lm(hp~mpg, data=mtcars)
summary(lm.fit1)
plot(mtcars$mpg,mtcars$hp)
abline(lm.fit1)

#Zmienne sa istotnie zalezne, jest to widoczne przy analizie Pr(>|t|) oraz Signif. codes
#Zaleznosc jest malejaca, jest to widoczne przy analize Estimate Std.
#Jakosc dopasowania liniowego to 0.5892
#Ksztalt wykresu danych przypomina funkcje y=a/x dla a>0,x>0

#2. hp ~ qsec
lm.fit2<-lm(hp~qsec, data=mtcars)
summary(lm.fit2)
plot(mtcars$qsec,mtcars$hp)
abline(lm.fit2)

#Zmienne sa istotnie zalezne, jest to widoczne przy analizie Pr(>|t|) oraz Signif. codes
#Zaleznosc jest malejaca, jest to widoczne przy analize Estimate Std.
#Jakosc dopasowania liniowego to 0.485
#Ksztalt wykresu jest ciezki do dopasowania, najbardziej przypominia y=x


#3. hp ~ disp
lm.fit3<-lm(hp~disp, data=mtcars)
summary(lm.fit3)
plot(mtcars$disp,mtcars$hp)
abline(lm.fit3)

#Zmienne sa istotnie zalezne, jest to widoczne przy analizie Pr(>|t|) oraz Signif. codes
#Zaleznosc jest rosnaca, jest to widoczne przy analize Estimate Std.
#Jakosc dopasowania liniowego to 0.6131
#Ksztalt wykresu jest ciezki do dopasowania, najbardziej przypominia y=x


#4. hp ~ cyl
lm.fit4<-lm(hp~cyl, data=mtcars)
summary(lm.fit4)
plot(mtcars$cyl,mtcars$hp)
abline(lm.fit4)

#Zmienne sa istotnie zalezne, jest to widoczne przy analizie Pr(>|t|) oraz Signif. codes
#Zaleznosc jest rosnaca, jest to widoczne przy analize Estimate Std.
#Jakosc dopasowania liniowego to 0.6827
#Wykres przyjmuje wartosci dal niewiekliego zbioru x dlatego ciezko jest oszacowac jego ksztalt


