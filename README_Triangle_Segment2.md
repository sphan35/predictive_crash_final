# Predictive_Crash_Final_Triangle_Segment2  

## Model Choice

The goal of the project model is to predict whether a crash in Travis County, Texas, will result in an incapacitating injury. As such, injuries sustained (and documented in the crash data set) will be categorized as one of two groups, incapacitating and not incapacitating. 

The basis of the logistic regression model is the sigmoid curve, which is used to produce the probability (between 0 and 1) of the input data belonging to a group. Specifically, logistic regression predicts the probability of the input data belonging to one of two groups based on a combination of input variables. If the probability is above a predetermined cutoff, the sample is assigned to one group, otherwise it is assigned to the other. This makes this logistic regression a natural choice for the project. In addition, logistic regression models are known for their ease of dissection and interpretation and their acceptance by many data scientists and non-data experts.

That said, it is possible that based on the number of data points and features in the source data sets that a more complex model like a neural network. The neural network will not be overwhelmed by a data set with thousands of data points and dozens of features, as the logistic regression model may be. If the data prove messier or noisier than expected, a neural network may be necessary.  Stay tuned...

## Preprocessing

For the logistic regression model analyzing the severity of crash data, Python Pandas preprocessing consisted of creating dummy variables, recoding dates and times to numeric fields, recoding missing data, and encoding categorical variables. Specifically:  

* A data field indicating crash incidents outside of city limits was changed to reads 1/0 instead of Y/N.
* Categorical data fields were change to numeric values, such as using custom coding to recode, and to maintain the order of, crash days of the week. The Scikit-learn label encoder transformed variables without expected sequence like crash highway numbers.  
* The Pandas datetime function was applied to the dates and times of crashes. 
* The data set as received coded, for most variables, unknown values as 0. For example, an unknown road speed limit read 0 if unknown. The NumPy library was used to change data points in this group showing 0 to missing. 
* Given the scope of the project, the output – a measure of the severity of crashes – was recoded to binary form (1, 0) from 5 options.  

Note as a logistic regression model, no data scaling or normalization were employed.

## Feature Processing

The source data set had few cases for which variable information was missing. As such, rows with missing data were removed from initial prediction attempts. Relatedly, the source data also included several fields with missing data, which were removed from the model.  

Controlling for missing data, 21 variables that may influence the severity of a crash were analyzed. Variables were chosen based participant experience working with these data. In addition, the data are from an established and well used data set, suggesting validity.  

At this point the relationships between independent variables has not been established. As a predictive model, the effect of any single explanatory variable (and its potential misinterpretation) or hypothetical tests of statistical significance are not being considered. Still, a subsequent iteration of the model may benefit from analyzing the relationships between the independent variables.  
 
## Model Training

To help determine the effectiveness of the model, the source data was split into training and testing datasets. The training data sets allow the model to learn about the data, whereas the testing data sets assess the performance of the training.   

The Python Pandas Scikit-learn train_test_split module was employed to split the data, namely to create (a) training data sets consisting of explanatory and outcome variables, and (b) testing data sets consisting of explanatory and outcome variables. In this process, specific cases were assigned to specific data sets – based on coded instruction – so that the model could be replicated consistently. In addition, the data sets were stratified. This process ensured that when the data were split, similar proportions belonged to each group so that results will not be skewed toward the training or testing sides. The Scikit-learn library was also used to define and train the model. 

