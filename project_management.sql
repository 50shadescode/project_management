-- CREATE DATABASE  project_management;
-- \c project_management;
-- Create Customer table
CREATE TABLE IF NOT EXISTS Customer (
    CustomerID SERIAL PRIMARY KEY,
    CompanyName VARCHAR(255) NOT NULL,
    ContactName VARCHAR(255),
    ContactEmail VARCHAR(255),
    Industry VARCHAR(255)
);

-- Create Project table
CREATE TABLE IF NOT EXISTS Project (
    ProjectID SERIAL PRIMARY KEY,
    ProjectName VARCHAR(255) NOT NULL,
    Description TEXT,
    StartDate DATE,
    EndDate DATE,
    CustomerID INT,
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);

-- Create Deliverable table
CREATE TABLE IF NOT EXISTS Deliverable (
    DeliverableID SERIAL PRIMARY KEY,
    DeliverableName VARCHAR(255) NOT NULL,
    Deadline DATE,
    ProjectID INT,
    FOREIGN KEY (ProjectID) REFERENCES Project(ProjectID)
);

-- Create Data Scientist table
CREATE TABLE IF NOT EXISTS DataScientist (
    ScientistID SERIAL PRIMARY KEY,
    LastName VARCHAR(255),
    FirstName VARCHAR(255),
    Email VARCHAR(255),
    Expertise VARCHAR(255),
    YearsExperience INT
);

-- Create Employee table
CREATE TABLE IF NOT EXISTS Employee (
    EmployeeID SERIAL PRIMARY KEY,
    LastName VARCHAR(255),
    FirstName VARCHAR(255),
    Email VARCHAR(255),
    Title VARCHAR(255)
);

-- Create Project Data Scientist associative table
CREATE TABLE IF NOT EXISTS ProjectDataScientist (
    ProjectID INT,
    ScientistID INT,
    PRIMARY KEY (ProjectID, ScientistID),
    FOREIGN KEY (ProjectID) REFERENCES Project(ProjectID),
    FOREIGN KEY (ScientistID) REFERENCES DataScientist(ScientistID)
);





