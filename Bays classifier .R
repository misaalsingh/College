#the probability that a person has a job
tapply(dat$Student.ID, dat$Status, length)
p_sp<-nrow(dat[dat$Status=="Placed",])/nrow(dat)
p_sp

#the probability that a person has a job given that his/her undergrad degree is Art/Business/CS/Engineering/Finance
tapply(dat$Student.ID, dat$Undergrad.Degree, length)

#Art
p_wsa<-nrow(dat[(dat$Status=="Placed")&(dat$Undergrad.Degree == "Art"),])/nrow(dat[(dat$Status=="Placed"),])
p_wsa

#Business
p_wsb<-nrow(dat[(dat$Status=="Placed")&(dat$Undergrad.Degree == "Business"),])/nrow(dat[(dat$Status=="Placed"),])
p_wsb

#Computer Science
p_wsc<-nrow(dat[(dat$Status=="Placed")&(dat$Undergrad.Degree == "Computer Science"),])/nrow(dat[(dat$Status=="Placed"),])
p_wsc

#Engineering
p_wse<-nrow(dat[(dat$Status=="Placed")&(dat$Undergrad.Degree == "Engineering"),])/nrow(dat[(dat$Status=="Placed"),])
p_wse

#Finance
p_wsf<-nrow(dat[(dat$Status=="Placed")&(dat$Undergrad.Degree == "Finance"),])/nrow(dat[(dat$Status=="Placed"),])
p_wsf

#the probability that the students undergrad degree is Art/Business/CS/Engineering/Finance
#Art
p_a<-nrow(dat[(dat$Undergrad.Degree == "Art"),])/nrow(dat)
p_a
#Business
p_b<-nrow(dat[(dat$Undergrad.Degree == "Business"),])/nrow(dat)
p_b
#CS
p_c<-nrow(dat[(dat$Undergrad.Degree == "Computer Science"),])/nrow(dat)
p_c
#Engineering
p_e<-nrow(dat[(dat$Undergrad.Degree == "Engineering"),])/nrow(dat)
p_e
#Finance
p_f<-nrow(dat[(dat$Undergrad.Degree == "Finance"),])/nrow(dat)
p_f

#posterior
#So the probability that the person has a job given that his/her undergrad degree is Art/Business/CS/Engineering/Finance

#Art
posterior_art<-p_sp*p_wsa/p_a
posterior_art
#Business
posterior_bus<-p_sp*p_wsb/p_b
posterior_bus
#CS
posterior_cs<-p_sp*p_wsc/p_c
posterior_cs
#Engineering
posterior_eg<-p_sp*p_wse/p_e
posterior_eg
#finance
posterior_fin<-p_sp*p_wsf/p_f
posterior_fin 
