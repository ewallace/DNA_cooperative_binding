library("nls2")

#5.6 uM data ancerr erre61pal, here it is
newconc<- c( 0.0,2.7,5.4,11.7,26.1,38.7,58.5,88.2,197.1,444.6,666.9,1500.3,2250.0,3375.0,5062.5)
newconc <- newconc*0.9
fbound0 <- c(1,1,1, 0.994,0.989,0.968,0.924,0.634,0.032,0.0139,0,0,0,0,0)
fbound1 <- c(0,0,0,0.006,0.0103,0.0315,0.0752, 0.313,0.042,0.007,0,0,0,0,0)
fbound2 <- c(0, 0, 0, 0, 0, 0, 0, 0.0523,0.925,0.978, 1, 1, 1, 1, 1)

#ancsr1 chordate erre61pal 5.6 uM data
#newconc<- c( 0.0,2.7,5.4,11.7,26.1,38.7,58.5,88.2,197.1,444.6,666.9,1500.3,2250.0,3375.0,5062.5)
#newconc <- newconc*0.9
#fbound0 <- c(1,1,1,1,1,0.943,0.794,0.28,0,0,0,0,0,0,0)
#fbound1 <- c(0,0,0,0,0,0.023,0.05,0.04,0,0,0,0,0,0,0)
#fbound2 <- c(0,0,0,0,0,0.035,0.156,0.68,1,1,1,1,1,1,1)

#ancsr1 chordate ere61 pal 5.6 uM data
#fbound0 <- c(1,1,1,1,1,0.97,0.73,0.49,0.03,0,0,0,0,0,0)
#fbound1 <- c(0,0,0,0,0,0.01,0.02,0.07,0.013,0,0,0,0,0,0)
#fbound2 <- c(0,0,0,0,0,0.16,0.25,0.44,0.96,1,1,1,1,1,1)

#ancnr3bilat erre61pal data
#fbound0 <- c(1,1,1,1,0.94,0.6,0.35,0.3,0,0,0,0,0,0,0)
#fbound1 <- c(0,0,0,0,0.037,0.06,0.035,0.01,0,0,0,0,0,0,0)
#fbound2 <- c(0,0,0,0,0.23,0.44,0.62,0.69,1,1,1,1,1,1,1)

#ancnr3 bilat ere61pal data
#fbound0 <- c(1,1,1,1,0.984,0.9,0.61,0.4,0,0,0,0,0,0,0)
#fbound1 <- c(0,0,0,0,0.001,0.01,0.017,0.01,0,0,0,0,0,0,0)
#fbound2 <- c(0,0,0,0,0.015,0.09,0.37,0.59,1,1,1,1,1,1,1)


#newconc <- c(39.03,43.9,49.39,55.57,62.51,70.33,79.12,89.01,100.13,112.65,126.73,142.57,160.4,180.44,203) # for 1.125 fold dil data
#newconc <- newconc*0.9
#offset conc by 39, so newconc
# [1]   0   5  10  17  23  31  40  50  61  74  88 103 121 141 164


#fboundi = thetai = fractions of DNA molecules with exactly i ligands bound
#ancerr, this is 1.125 fold dilution data
#fbound0 <- c(1,0.994,0.9902,0.984,0.965,0.954,0.94,0.85,0.775,0.691,0.57,0.28,0.11,0.04,0.02)
#fbound1 <- c(0,0.006,0.0098,0.016,0.035,0.046,0.06,0.15,0.198,0.25,0.39,0.38,0.27,0.16,0.05)
#fbound2 <- c(0,0,0,0,0,0,0,0,0.027,0.059,0.18,0.34,0.62,0.8,0.93)

#this is ancerr erre61 pal 1.125 fold dil data, analyzed as percentage from profile plots
#fbound0 <- c(0.993, 0.989, 0.987, 0.981, 0.965, 0.956, 0.944,0.853, 0.764, 0.668, 0.473, 0.289, 0.112, 0.058,0.03)
#fbound1 <- c(0.007, 0.01, 0.013, 0.019, 0.035, 0.044,0.056, 0.144, 0.209, 0.266, 0.375, 0.365,0.263, 0.137, 0.043)
#fbound2 <- c(0, 0, 0, 0, 0, 0,0.001, 0.004, 0.028, 0.067, 0.152, 0.346, 0.626, 0.805, 0.927)



#fboundi for AncSR1Chordate 1.125 ERRE61Pal, 1.125 fold dil data
#fbound0 = c(1,1,1,1,1,0.984,0.944,0.891,0.788,0.617,0.474,0.229,0.025,0,0)
#fbound1 = c(0,0,0,0,0,0.0113,0.019,0.027,0.033,0.044,0.037,0.039,0.017,0.007,0)
#fbound2 = c(0,0,0,0,0,0.0047,0.037,0.082,0.179,0.339,0.489,0.732,0.958,0.992,1)

#fboundi for AncSR1Chordate 1.125 fold dil, ERE61Pal data
#fbound0 = c(1,1,1,1,1,1,0.937,0.852,0.843,0.694,0.373,0.046,0.03,0.03,0.02)
#fbound1 = c(0,0,0,0,0,0,0.032,0.026,0.017,0.019,0.012,0,0,0,0)
#fbound2 = c(0,0,0,0,0,0,031,0.122,0.014,0.287,0.615,0.954,0.97,0.97,0.98)

#fboundi 1.35 fold dilution data, ancerr erre61pal
#newconc <- c(8.2,11.09,14.97,20.22,27.29,36.85,49.75,67.16,90.67,122.4,165.25,223.09,301.17,406.5,548.88)
#newconc <- newconc*0.9
#fbound0 <- c(1,1,1,1,1,0.994,0.98,0.94,0.807,0.59,0.11,0.02,0,0,0)
#fbound1 <- c(0,0,0,0,0,0.006,0.02,0.06,0.17,0.32,0.2,0.03,0,0,0)
#fbound2 <- c(0,0,0,0,0,0,0,0,0.023,0.1,0.69,0.95,1,1,1)
#fbound_half <- c(0,0,0,0,0,0.0079,0.0099,0.078,0.226,0.58,0.936,0.966,0.975,0.984,1)


combineddata <- c(fbound0, fbound1, fbound2)
x <- rep(newconc,3)

test.y <- data.frame(combineddata, x)

fbound0_fit <- rep(c(1,0,0), c(15,15,15))
fbound1_fit <- rep(c(0,1,0), c(15,15,15))
fbound2_fit <- rep(c(0,0,1), c(15,15,15))


#fit the following models
#here K1 = k1 + k2, assume equivalence of binding sites where k1=k2
#K1= 2ki
#K2 = k1*k2*k12 or k1**2*k12, when k12=1 => noncoop, K2 = k1**2 = K1**2/4

################# combined fit with global conc.min param ####################

combined_fit <- function(ki,k12,conc.min){ 
 conc1   = x - conc.min  
 conc1[conc1 < 0] = 0
 conc2 = conc1^2

  Z = (1 + 2*ki*conc1 + ki^2*k12*conc2)
       
         
  fbound0_fit_eq = fbound0_fit*(1/Z)
  fbound0_fit_eq = fbound0_fit_eq[1:15]
  
  fbound1_fit_eq = fbound1_fit*((2*ki*conc1)/Z)
  fbound1_fit_eq = fbound1_fit_eq[16:30]
  
  fbound2_fit_eq = fbound2_fit*((ki^2*k12*conc2)/Z)
  fbound2_fit_eq = fbound2_fit_eq[31:45]
  
  return(c(fbound0_fit_eq,fbound1_fit_eq,fbound2_fit_eq))
  
}

starting_comfit <- data.frame(ki=c(0.001,0.1),k12=c(1,20),conc.min=c(30,150))
#starting_comfit <- data.frame(ki=c(0.001,0.1),k12=c(1,1000),conc.min=c(30,100))
#starting_comfit <- data.frame(ki=c(0.001,0.1),k12=4.7) #,conc.min=c(30,150))

com.model <- combineddata ~ combined_fit(ki,k12,conc.min)

mod1 <- nls2(com.model, start=starting_comfit, algorithm="brute-force")
#nls2(fbound0.model,start=mod1)
fit_combined_Gmin_nls2 <- nls2(com.model,start=starting_comfit,control=nls.control(warnOnly=TRUE, maxiter=1000))

#fit_combined_Gmin <- nls(combineddata ~ combined_fit(ki,k12,conc.min), 
 #                       data=test.y, start = c(ki=0.001, 
  #                      k12 = 10,conc.min=30),
   #                     trace=TRUE, 
    #                    lower=list(ki=0.001,k12=10,conc.min=30),
     #                   algorithm="port",
      #                  control=nls.control(maxiter=1000)
       #                 )

plot(log(newconc),fbound0, col="red", lwd=3, main="AncERR ERRE61Pal", 
ylab="fboundi") 
points(log(newconc),fbound1, col="blue", lwd=3)
points(log(newconc),fbound2, col="green", lwd=3)
#points(log(newconc), predict(fit_combined_Gmin)[1:15], col="red",type="l")
#points(log(newconc), predict(fit_combined_Gmin)[16:30], col="blue",type="l")
#points(log(newconc), predict(fit_combined_Gmin)[31:45], col="green",type="l")
points(log(newconc), predict(fit_combined_Gmin_nls2)[1:15], col="red",lty=2, type="l")
points(log(newconc), predict(fit_combined_Gmin_nls2)[16:30], col="blue", lty=2, type="l")
points(log(newconc), predict(fit_combined_Gmin_nls2)[31:45], col="green",lty=2, type="l")

## residuals
#par(mfrow=c(2,2))
#plot(fitted(fit_combined_Gmin), residuals(fit_combined_Gmin))
#abline(h=0)
#plot(fitted(fit_combined), residuals(fit_combined))
#abline(h=0)

## for smoothing, do
#lines(log(x), predict(fit_combined, list(x=x)), col="black")
#or use nlstools plotfit command with smooth=TRUE option
#however, smoothing doesnt work when x is not defined, iejump from 0 to 1 from your model

legend(7,0.4,  
c("nls2"),
lty=c(3,1),
lwd=c(3,3),col=c("red","red")) 

####### try combined fit for simulated data - below works #########

#> test_conc
# [1] 1.000000e-12 3.162278e-12 1.000000e-11 3.162278e-11 1.000000e-10 3.162278e-10
# [7] 1.000000e-09 3.162278e-09 1.000000e-08 3.162278e-08 1.000000e-07 3.162278e-07
#[13] 1.000000e-06
#sim theta0/1/2: eg: theta0 <- 1/(1+ (10^10*test_conc) + (25*10^18*test_conc^2))

#y<-c(theta0, theta1, theta2)
#x <- rep(test_conc,3)
#theta0_fit <- rep(c(1,0,0), c(13,13,13))
#theta1_fit <- rep(c(0,1,0), c(13,13,13))
#theta2_fit <- rep(c(0,0,1), c(13,13,13))

#combined_fit <- function(ki,k12){
 # combined= (theta0_fit*(1/(1 + (2*ki*test_conc) + ((ki^2)*1*(test_conc^2)))) 
  #        + theta1_fit*(2*ki*test_conc/(1 + (2*ki*test_conc) + ((ki^2)*k12*(test_conc^2))))
   #       + theta2_fit*(ki^2*k12*test_conc^2/(1 + (2*ki*test_conc) + ((ki^2)*k12*(test_conc^2)))))
#}
#y_df <- data.frame(y)


#fit_combined <- nls(y ~ combined_fit(ki,k12), data=y_df, start = c(ki =5*10^5, 
#k12 = 1), trace=TRUE, lower=list(ki=5*10^5, k12=1), algorithm = "port", control=nls.control(maxiter=200))


#plot(log(test_conc),theta0)
#points(log(test_conc), theta1)
#points(log(test_conc), theta2)
#lines(log(test_conc),predict(fit_combined)[1:13],col="red", lwd=3)
#lines(log(test_conc),predict(fit_combined)[14:26],col="blue", lwd=3)
#lines(log(test_conc),predict(fit_combined)[27:39], col="orange",lwd=3)
