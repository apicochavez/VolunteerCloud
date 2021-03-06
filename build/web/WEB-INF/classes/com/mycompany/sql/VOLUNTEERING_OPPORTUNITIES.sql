/**
 * Author:  andres
 * Created: Jan 25, 2018
 */

# -------------------------------------------------------------
# SQL Script to Create The VOLUNTEERING_OPPORTUNITIES Table
# -------------------------------------------------------------
 
DROP TABLE IF EXISTS VOLUNTEERING_OPPORTUNITIES;

CREATE TABLE VOLUNTEERING_OPPORTUNITIES
(
    ID INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    OWNER_ID INT NOT NULL REFERENCES USERS(USER_ID) ON DELETE CASCADE,
    VOLUNTEERING_AREA_ID INT NOT NULL REFERENCES USER_VOLUNTEERING_INTEREST(VOLUNTEERING_AREA_ID) ON DELETE CASCADE,
    TITLE VARCHAR (255) NOT NULL,
    DESCRIPTION VARCHAR (255) NOT NULL,
    ADDRESS VARCHAR (255),
    CITY VARCHAR (255),
    STATE INT NOT NULL,
    ZIP_CODE VARCHAR(10) NOT NULL,
    DATE_OCCURRENCE TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    VOLUNTEER_MATCH_ID INT,
    ACTIVE CHAR(1) NOT NULL
);

