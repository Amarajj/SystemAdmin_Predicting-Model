setwd("/Users/amarachukwuobi/Desktop/BUA 635/BUA 635 Exam")


library(ggplot2)
library(MASS)
data1 <- read.csv("SystemAdministrators.csv")
View(data1)
data1 <- na.omit(data1)
set.seed(22)
View(data1)
colnames(data1) <- c("Experience", "Training", "Completed")


library(ggplot2)
Admin_data1 <- head(data1, 20)

ggplot(data1, aes(x = Experience, y = Training, color = Completed)) +
  geom_point(size = 3) +
  stat_ellipse(aes(fill = Completed), geom = "polygon", alpha = 0.2) +
  labs(title = "Scatter Plot with Decision Boundaries",
       x = "Experience (months)",
       y = "Training (credits)") +
  theme_minimal() + 
  theme(plot.title = element_text(size = 14, face = "bold"),
        axis.title = element_text(size = 12))

# Fit the LDA model
lda_model <- lda(Completed ~ Experience + Training, data = data1)
print(lda_model)

# Predict classifications
pred <- predict(lda_model)
lda_model
data1$Predicted <- pred$class
data1$Predicted
# Confusion matrix
conf_matrix <- table(Actual = data1$Completed, Predicted = data1$Predicted)
print(conf_matrix)


# Extract misclassification information
misclassified <- conf_matrix["Yes", "No"] / sum(conf_matrix["Yes", ])

misclassified_percentage <- misclassified * 100

cat("Misclassification Rate for Completed Tasks: ", round(misclassified_percentage, 2), "%\n")


