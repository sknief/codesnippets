#variable wrangling

X2020_Field_trip_nutrients_1_$Site <-  as.character(X2020_Field_trip_nutrients_1_$Site)
X2020_Field_trip_nutrients_1_$avgphos <- (X2020_Field_trip_nutrients_1_$`Phosphate 1` + X2020_Field_trip_nutrients_1_$`Phosphate 2`)/2
X2020_Field_trip_nutrients_1_$SITES  <- c("Amity Point", "Amity Point", "Amity Point", "One Mile Jetty", "One Mile Jetty", "One Mile Jetty")
X2020_Field_trip_nutrients_1_$TIMES <- c("Morning", "Morning", "Evening", "Morning", "Evening", "Evening")
X2020_Field_trip_nutrients_1_$TIMES <-  as.factor(X2020_Field_trip_nutrients_1_$TIMES)
X2020_Field_trip_nutrients_1_$TIMES <- factor(X2020_Field_trip_nutrients_1_$TIMES, levels = c("Morning", "Evening"))


#anova? 

fuckwhat = lm(avgphos ~ SITES * TIMES, data = X2020_Field_trip_nutrients_1_)
summary(fuckwhat) #nonsignificant interaction

fuckwhat2 = lm(avgphos ~ SITES + TIMES, data = X2020_Field_trip_nutrients_1_)
summary(fuckwhat2) #neither one of the terms are significant???

#fuck it anova
anova(fuckwhat2)

fuckwhat3 = lm(avgphos ~ Site + Time, data = X2020_Field_trip_nutrients_1_)
summary(fuckwhat3)

anova(fuckwhat3)

#simplify it even more???
dearGOD = lm(avgphos ~ SITES, data = X2020_Field_trip_nutrients_1_)
summary(dearGOD)

itsmeJENNA = lm(avgphos ~ TIMES, data = X2020_Field_trip_nutrients_1_)
summary(itsmeJENNA)
