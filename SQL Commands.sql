CREATE DATABASE Assessment2;
USE Assessment2;

CREATE TABLE uid(
    user VARCHAR(255) PRIMARY KEY,
    pass VARCHAR(255) NOT NULL
);
Insert INTO uid VALUES("admin", "admin");
SELECT * FROM uid;

CREATE TABLE uDetails(
    user VARCHAR(255) REFERENCES uid,
    uFirstName VARCHAR(255) NOT NULL,
    uLastName VARCHAR(255),
    uPhoneNumber VARCHAR(10) NOT NULL,
    uEmailAddress VARCHAR(255),
    uDOB DATE NOT NULL,
    uGender ENUM('M', 'F')
);
Insert INTO uDetails VALUES("admin", "First","Last", "7488765432", "admin.mail@assessment.com",'1999-09-23',"M");
SELECT * FROM uDetails;

CREATE TABLE uPost(
    user VARCHAR(255) REFERENCES uid,
    uParagraph VARCHAR(10000)
);
Insert INTO uPost VALUES("admin", "Online Social Network System. This Social Network Platform lets you post your opinions/bleifs/thinking/etc. Everything under 10000 Word Limit in text file. This platform lets you express your view without fear of direct replies or bullying.");
SELECT * FROM uPost;