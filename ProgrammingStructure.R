#Frequency of hospital visits within a 12 month period
Frequency <- c(0.6, 0.3, 0.4, 0.4, 0.2, 0.6, 0.3, 0.4, 0.9, 0.2)

#Blood pressure reading at time of visit
BP <- c(103, 87,32, 42, 59, 109, 78, 205, 135, 176)

#First assessment by general doctor: 0 = good; 1 = bad 
First <- c(1, 1, 1, 1, 0, 0, 0, 0, "NA", 1)

#Second assessment by external doctor: 0 = good; 1 = bad
Second <- c(0, 0, 1, 1,0,0, 1, 1, 1, 1)

# emergency unit's decision regarding immediate care for the patient 
#based on the values 0 or 1
FinalDecision <- c(0, 1, 0, 1, 0, 1, 0, 1, 1, 1)


health.df <- data.frame(Frequency, BP, First, Second, FinalDecision)
health.df$First <- as.factor(health.df$First)

#Box plots
boxplot(Frequency ~ First, health.df,
        main = "Frequency of Visits vs First Assessment",
        xlab = "First Assessment",
        ylab = "Freuqency of Visits")

boxplot(Frequency ~ Second, health.df,
        main = "Frequency of Visits vs Second Assessment",
        xlab = "Second Assessment",
        ylab = "Freuqency of Visits")

boxplot(Frequency ~ FinalDecision, health.df,
        main = "Frequency of Visits vs Final Assessment",
        xlab = "Final Assessment",
        ylab = "Freuqency of Visits")

boxplot(BP ~ First, health.df,
        main = "Blood Pressure vs First Assessment",
        xlab = "First Assessment",
        ylab = "Blood Pressure")

boxplot(BP ~ Second, health.df,
        main = "Blood Pressure vs Second Assessment",
        xlab = "Second Assessment",
        ylab = "Blood Pressure")

boxplot(BP ~ FinalDecision, health.df,
        main = "Blood Pressure vs Final Assessment",
        xlab = "Final Assessment",
        ylab = "Blood Pressure")

#Histograms
hist(Frequency)
hist(BP)
hist(FinalDecision)