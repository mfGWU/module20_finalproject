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
---Create Tables NIBRS_incident & NIBRS_Offense
CREATE TABLE NIBRS_incident (
DATA_YEAR INT,
AGENCY_ID INT,
INCIDENT_ID INT,
NIBRS_MONTH_ID INT,
CARGO_THEFT_FLAG VARCHAR,	
SUBMISSION_DATE DATE,
INCIDENT_DATE INT,
INCIDENT_Month VARCHAR,
INCIDENT_DAY INT,
REPORT_DATE_FLAG VARCHAR,	
INCIDENT_HOUR INT,
DATA_HOME VARCHAR,
ORIG_FORMAT VARCHAR,
DID INT,
PRIMARY KEY (INCIDENT_ID)
);

CREATE TABLE NIBRS_Offense (
DATA_YEAR INT,
OFFENSE_ID INT,
INCIDENT_ID INT, 
OFFENSE_TYPE_ID VARCHAR,
ATTEMPT_COMPLETE_FLAG VARCHAR,
LOCATION_ID VARCHAR,
METHOD_ENTRY_CODE VARCHAR,
FOREIGN KEY (INCIDENT_ID) REFERENCES NIBRS_incident (INCIDENT_ID),
PRIMARY KEY (OFFENSE_ID)
);
