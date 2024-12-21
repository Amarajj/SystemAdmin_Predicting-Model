##README

#**System Administrator Performance Analysis**

#**Overview:**
This project evaluates the influence of experience and training on a system administrator's ability to complete tasks within a specified timeframe. Using data from 75 randomly selected administrators, the study employs linear discriminant analysis (LDA) to predict task completion outcomes.



**Key Features:**

Dataset:

Contains 75 observations with three variables:

Experience: Months of full-time system administrator experience

Training: Number of relevant training credits

Completed: Binary outcome (Yes/No) indicating task completion


**Objective:**

Analyze the relationship between experience, training, and task performance.
Develop a predictive model to classify administrators based on their task completion likelihood.


**Visual Analysis:**

Created scatter plots of Experience vs. Training, using color to differentiate completion outcomes—visual decision boundaries aid in identifying separable classes.


**Model Implementation:**

Applied LDA using R to classify administrators based on experience and training levels.
Generated a confusion matrix to assess classification accuracy.


**#Results:**
Accuracy: 66.67% of administrators who completed the tasks were correctly classified.
Misclassification Rate: 33.33%, indicating opportunities for model improvement.

**#Performance Insights:**
While the LDA model provides a foundational understanding, enhancing accuracy may involve:

Cross-validation to detect overfitting

Incorporating additional predictors

Testing alternative classifiers (e.g., logistic regression, support vector machines)


**#Visuals and Scripts:**
The repository includes R scripts and visual outputs to reproduce the analysis. Key components are well-documented to guide further model development or comparative analysis.



<p xmlns:cc="http://creativecommons.org/ns#" >This work is licensed under <a href="https://creativecommons.org/licenses/by/4.0/?ref=chooser-v1" target="_blank" rel="license noopener noreferrer" style="display:inline-block;">CC BY 4.0<img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/cc.svg?ref=chooser-v1" alt=""><img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/by.svg?ref=chooser-v1" alt=""></a></p>
Repository for code system administration file prediction model
