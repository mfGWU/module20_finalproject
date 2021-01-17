-- Database: Module20_finalproject

-- DROP DATABASE "Module20_finalproject";

CREATE DATABASE "Module20_finalproject"
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'English_United States.1252'
    LC_CTYPE = 'English_United States.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;

-- Creating tables for Module20_finalproject
CREATE TABLE ColoradoStateCrime (
location_type VARCHAR,
incident_hour_of_day VARCHAR,
incident_month VARCHAR,
offense_attempted_completed VARCHAR,
number_crimes INT,
year_crime INT,
offense_type VARCHAR,
estimated_population  INT,
crime_rate_per_thsnd INT,
crime_rate_per_hthsnd INT,
offense_rate_per_thsnd INT,
offense_rate_per_hthsnd  INT,
incident_rate_per_thsnd INT,
incident_rate_per_hthsnd  INT,
PRIMARY KEY (year_crime, offense_type)
);    

-- Creating DenverCrime tables for Module20_finalproject
CREATE TABLE DenverCrime (
INCIDENT_ID INT,
OFFENSE_ID INT,
OFFENSE_CODE INT,
OFFENSE_CODE_EXTENSION INT,
OFFENSE_TYPE_ID VARCHAR,
OFFENSE_CATEGORY_ID VARCHAR,
Incident_Hour_of_Day  VARCHAR,
Incident_Month VARCHAR,	
Number_of_Crimes INT,	
FIRST_OCCURRENCE_DATE DATE,
FIRST_OCCURRENCE_YEAR INT,
LAST_OCCURRENCE_DATE DATE,
REPORTED_DATE DATE,
INCIDENT_ADDRESS VARCHAR,	
GEO_X VARCHAR,
GEO_Y VARCHAR,
GEO_LON_GEO_LAT	VARCHAR,
DISTRICT_ID INT,
PRECINCT_ID  INT,
NEIGHBORHOOD_ID	VARCHAR,
IS_CRIME INT,
IS_TRAFFI INT,
PRIMARY KEY (FIRST_OCCURRENCE_YEAR, OFFENSE_CATEGORY_ID )

);