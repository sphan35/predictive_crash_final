# predictive_crash_final: # Dylan Kurth's role as X

## Select Topic

- Crash Data Analysis

### Reason why we selected topic

- To visualize and predict car accident data in Texas

### Description of source of data

- The source data was pulled from the Texas Department of Transportation

### Questions we want to answer with our data

- Fatalities during time of day... When are the most dangerous times to be driving?

- What conditions/risk factors lead to more crashes?

- What conditions/risk factors lead to more server crashes?

- What Highways have the most crashes?

- What is the most deadly highway in Texas?

- How many deaths on Texas highways in 2021?

- What type of vehicle is more likely involved in crash?

- What type of vehicle is the safest?

- Where are traffic accidents increasing?

- Which highway had the highest crash rates? 

## Technologies used for project

## Week 1

### Data Cleaning and Analysis

- For the data cleaning and analysis we will be using Pandas, NumPy, and Python.

### Database Storage

- The database will be hosted on Postgres, and we will integrate Tableau to visualize our data.

### Machine Learning

- We will utilize the Python machine learning library SciKitLearn to create a model. We will accomplish this by training our model with three subsets: 70% training set, 15% validation set, and 15% test set. We will use classification model.

### Dashboard

- We will host our dashboard using Tableau Public.

# predictive_crash_final:Jason Ramirez role as Triangle 

## Caveat 

**Project data collection and clean up has been completed. Final data are in .csv format. The team ran into complications importing the data into a PostGres SQL database. We are still receiving errors in uploads. As a result, reading in data from the provisional database has been delayed. Initial development of the following simple model, soon to be enhanced, was based on .csv files and will soon be transferred to the source database.**
 
## Model Choice

The initial approach for predicting the severity of crashes in Fort Bend County, Texas will be a logistic regression model. Specifically, the logistic regression model will be used to produce the probability of crashed resulting in an incapacitating injury, including death. 

The initial model is being developed using limited data points, in this case 500. A logistic regression model was chosen for its ease of dissection and interpretation and its acceptance by many data scientists and non-data experts.

That said, it is possible that the number of data points and features will increase substantially as the data are finalized, thereby requiring a more complex model like a neural network. The neural network will not be overwhelmed by a data set with thousands of data points and dozens of features, as the logistic regression model may. Also, if the data prove messier or noisier than expected, a neural network may be necessary.  Stay tuned...

## Model Training

With our logistic regression model, there is less preprocessing or scaling required for the data. Several variables required encoding to correct errors, such as days of the week, crash date, and crash time. Also, several variables were change to binary dummy variables (1, 0) that were formally Y/N. Finally, the output, severe crash (**Crash_Sev_ID_Bin**), was recoded into binary form (1, 0) from 5 options.  

## Model Accuracy 

With the limited number of cases and further scrutiny needed in feature choice, the model accuracy in the initial run was 94 percent.
**The model needs revisited. There was a note that the lbfgs algorithm failed to converge. Additional cases are needed and feature choice researched.** 

## Model Notes 

The basis of the logistic regression model is the sigmoid curve, which is used to produce the probability (between 0 and 1) of the input data belonging to the first group. Specifically, logistic regression predicts the probability of the input data belonging to one of two groups using a combination of input variables. If the probability is above a predetermined cutoff, the sample is assigned to the first group, otherwise it is assigned to the second.   

