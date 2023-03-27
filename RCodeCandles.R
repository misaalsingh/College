library(ggplot2)
data <- read.csv("/Users/santiagocravino/Downloads/MBS.csv")

avg_salary <- data_subset %>% 
  group_by(Undergrad.Degree) %>% 
  summarize(mean_salary = mean(Annual.Salary))

ggplot(data_subset, aes(x = Undergrad.Degree, y = Annual.Salary)) +
  geom_boxplot(color = "black", fill = "lightblue") +
  facet_wrap(~ Status) +
  labs(title = "Average salary by undergraduate degree and status level",
       x = "Undergraduate degree",
       y = "Annual salary") +
  scale_y_continuous(limits = c(y_min, y_max), breaks = y_tick_marks, labels = y_tick_labels)

