library(rugarch)

data <- read.csv("AAPL_asset.csv")
Exp<-ts(data[,2],start=c(2020,1),frequency = 252)

e=diff(log(Exp))

garch10_spec<-ugarchspec(variance.model=list(model="sGARCH",garchOrder=c(1,0)),mean.model=list(armaOrder=c(1,0)),distribution.model="std")
garch10_fit<-ugarchfit(garch10_spec,data = e)
infocriteria(garch10_fit)


garch20_spec<-ugarchspec(variance.model=list(model="sGARCH",garchOrder=c(2,0)),mean.model=list(armaOrder=c(1,0)),distribution.model="std")
garch20_fit<-ugarchfit(garch20_spec,data = e)
infocriteria(garch20_fit)

garch21_spec<-ugarchspec(variance.model=list(model="sGARCH",garchOrder=c(2,1)),mean.model=list(armaOrder=c(1,0)),distribution.model="std")
garch21_fit<-ugarchfit(garch21_spec,data = e)
infocriteria(garch21_fit)

garch02_spec<-ugarchspec(variance.model=list(model="sGARCH",garchOrder=c(0,2)),mean.model=list(armaOrder=c(1,0)),distribution.model="std")
garch02_fit<-ugarchfit(garch02_spec,data = e)
infocriteria(garch02_fit)

garch12_spec<-ugarchspec(variance.model=list(model="sGARCH",garchOrder=c(1,2)),mean.model=list(armaOrder=c(1,0)),distribution.model="std")
garch12_fit<-ugarchfit(garch12_spec,data = e)
infocriteria(garch12_fit)

egarch12_spec<-ugarchspec(variance.model=list(model="eGARCH",garchOrder=c(1,2)),mean.model=list(armaOrder=c(1,0)),distribution.model="std")
egarch12_fit<-ugarchfit(egarch12_spec,data = e)
infocriteria(egarch12_fit)

volatility <- ts(egarch12_fit@fit$sigma^2,start=c(2017,1),frequency = 252)

plot(volatility, col="blue",xlab="Year",ylab="Volatility",main="Apple Stock Volatility (eGARCH[1,2])")

acf(e)
pacf(e)

plot(e, col="blue",ylab="",xlab="Year")
abline(h=0,col="dark grey",lty=3,lwd=3)


