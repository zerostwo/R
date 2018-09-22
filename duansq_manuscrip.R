moisture <- c(86.16, 87.23, 86.29)
mean(moisture)
sd(moisture)

ash <-c(8.42,8.77 ,8.12 )
mean(ash)
sd(ash)

protein<- c(22.29,21.22 ,21.21 )
mean(protein)
sd(protein)

fat <- c(2.01,2.04 ,2.12 )
mean(fat)
sd(fat)

total_sugar <- 100 - (protein + fat + ash)
mean(total_sugar)
sd(total_sugar)

total_energy <- 17 * (protein + total_sugar) + 37 * fat
mean(total_energy)
sd(total_energy)
