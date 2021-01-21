# module20_finalproject

# Technologies Used

### Data Cleaning and Analysis
Excel or Pandas will be used to clean the data and perform an exploratory analysis. Leveraged Tableau to complete data exploration and for data analysis was completed using Python libraries pandas, path, numpy and sklearn.linear_model. 

### Database Storage
PostgreSQL is the database we intend to use, and we will integrate Jupyter Notebook to display the data.

### Machine Learning
SciKitLearn is the ML library we'll be using to create a classifier especifically Logistic Regression and Support Vector Machines (SVM)  models. Our training and testing setup is sklearn.model_selection importing the train_test_split.

### Dashboard
We will employ Tableau to build a dashboard to present results and the presentation was finalized in Google Slides. 


# Description of the communication protocols
No communication protocols as the project was completed by single person. Used GitHub as a means to upload all the deliverables.

# Individual Branches
No individual branches were created as the project was completed by single person.

# Outline of the project

### Selected Topic
For topic of the final project, we selected Burglary and Robbery as crimes indicators in the state of Colorado define to discover data patterns and with the use Machine Learning Models to predict when crimes will take place based on the indicators.

### Reason the topic was selected.
Crimes are intricate and interesting, and can be both predictable and unpredictable. Crimes have existed for a long time and will remain parts of society. Therefore, I am interested in predicting when crimes will take place.

### Select your question -- Questions the team hopes to answer with the data
1.	Can we predict the when crimes will take place based on key indicators:  historical crime data, incident date, type of crimes, location of crimes and number of crimes?

2.	Can we predict types of crimes with key indicators:  historical crime data, incident date, type of crimes, location of crimes and number of crimes?
3.	What crimes are increasing or decreasing, at what rate and over what timeframes with a given regional?

4.	Can we confirm the findings against published statistics?

### Description of the source of data

The datasets were sourced from Colorado Crime Data Explorer site.  While data for other crimes are available, in this project the scope was narrowed down to  Burglary and Robbery crimes. Datasets were available for download in comma separated values format files from the year 2016 to 2019.  Since the data was being sourced from the state of Colorado only, the dataset will be smaller.  Both files have 54,930 rows and NIBRS_incidents_16_19.csv consisted of 14 columns while NIBRS_Offense_16_19.csv has eight columns. NIBRS_incidents_16_19 dataset holds information about the incidents while NIBRS_Offense_16_19 holds about the offenses associated with the incidents.

The following are the column names and their data types from NIBRS_incident and NIBRS_offense datasets:

NIBRS_incidents_16_19 dataset:
- DATA_YEAR INT
- AGENCY_ID INT
- INCIDENT_ID INT,
- NIBRS_MONTH_ID INT
- CARGO_THEFT_FLAG VARCHAR	
- SUBMISSION_DATE DATE
- INCIDENT_DATE INT
- INCIDENT_Month VARCHAR
- INCIDENT_DAY INT
- REPORT_DATE_FLAG VARCHAR,	
- INCIDENT_HOUR INT
- DATA_HOME VARCHAR
- ORIG_FORMAT VARCHAR
- DID INT

NIBRS_Offense_16_19 dataset:
- DATA_YEAR INT
- OFFENSE_ID INT
- INCIDENT_ID INT
- OFFENSE_TYPE_ID VARCHAR
- ATTEMPT_COMPLETE_FLAG VARCHAR
- LOCATION_ID VARCHAR
- METHOD_ENTRY_CODE VARCHAR

[NIBRS Link](https://crime-data-explorer.app.cloud.gov/downloads-and-docs)

### Description of the data exploration phase of the project

In the initial data analysis, we explored the structured dataset to uncover initial patterns, characteristics, creating a broad picture of important trends and major points to study in greater detail which took place in Tableau and will be incorporated in the dashboard.
.  The variable we will be included in the predictive models are Nominal data  type.  Nominal data cannot be used in statistical computation like mean and standard deviation.  As shown in the DataExploration_phase.ipynb, the descriptive statistics performed to both datasets did not show any significance output.  Cross tabulations used with Nominal variables then chi-square test can be performed on a cross-tabulation but beyond the scope of this project.

Incidents by Year and Month Breakdown:![alt text](https://github.com/mfGWU/module20_finalproject/blob/main/img/Incidents%20by%20Year%20and%20Month%20Breakdown.JPG "Logo Title Text 1 "Incidents by Year and Month")

Reference-style: 
![alt text][logo]

[logo]: https://github.com/adam-p/markdown-here/raw/master/src/common/images/icon48.png "Logo Title Text 2"
			
### Description of the analysis phase of the project
Which models  did you choose and why?
Logistic Regression and Support Vector Machines (SVM)  models are classification algorithm so they are best applied to nominal data to predict discrete outcomes.  The models algorithm will attempt to learn patterns from the data.  If the models are successful, they will help predict when the crime will take place? The datasets in this project contain categorical features that will be included in the machine learning algorithms.  The categorical features will be converted to numerical data to use in the machine learning process. Also, the features needed with the Logistic Regression are pulled from two datasets and joined into a dataframe which were coded in the DataAnalysis_phase jupyter notebook.

For the new dataframe we will be pulling the following features and targeting INCIDENT_Month variable:

NIBRS_incident dataset:
- DATA_YEAR INT
- INCIDENT_Month VARCHAR
- INCIDENT_DAY INT

NIBRS_Offense dataset:
- OFFENSE_TYPE_ID VARCHAR
- LOCATION_ID VARCHAR

The  features below were encoded using python libraries:
- INCIDENT_Month VARCHAR
- OFFENSE_TYPE_ID VARCHAR
- LOCATION_ID VARCHAR	

How are you training your model?
The models were trained using sklearn.model_selection importing the train_test_split.   Logistic Regression and SVM models analyzed  when the offense will take place.

What is the model's accuracy?
The Logistic Regression accuracy score was 9.5% while the SVM was 10.0%.

### Result of analysis
Both Logistic Regression and SVM accuracy results were close to each other and very low.  	They did not predict when the crime will take place.  Both models were chosen for the 	types of data and both were resulted in similar accuracy, the dataset had issues or limited 	in rows or features.  

### Recommendation for future analysis
Include datasets from the other states to improve the outcomes of this project.  

### Anything the team would have done differently
Longer time prototyping the dataset and applying the it to the machine learning phase.
