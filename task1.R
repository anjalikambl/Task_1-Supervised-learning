data=as.data.frame(read.csv("C:/Users/HP/Desktop/tybsc/work/student_scores.csv"))
data;
attach(data)
dim(data)
head(data)
summary(data)
str(data)
library(ggplot2)
train=data[1:20,]
test=data[20:25,]
ggplot(train,aes(Hours,Scores))+geom_point(color="dodgerblue",size=3)+ggtitle("Basic Scatterplot")+theme(plot.title=element_text(size=12,face="bold"))
l=lm(Scores~Hours,data=test)
plot(l,1)
summary(l)

tl=predict(lm(test$Scores ~ test$Hours), test, se.fit = TRUE)
tl$fit
d_pred=data.frame(test$Scores,tl$fit);attach(d_pred)
d_act_pred=data.frame("Actual"=test.Scores,"predicted"=tl.fit)
d_act_pred
cor(data)
library(lattice)
densityplot(~data$Hours)

#using predict command
predict(l,list(Hours=9.25))

