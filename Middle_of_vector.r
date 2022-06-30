
plus <- mean(my_vector) + sd(my_vector)
minus <- mean(my_vector) - sd(my_vector)
my_vector_2 <- my_vector[ my_vector > minus & plus > my_vector]


# В векторе  my_vector отберите только те наблюдения, которые отклоняются от среднего меньше чем на одно стандартное отклонение. 
# задание курса Анализ данных в R, платформа Stepik
