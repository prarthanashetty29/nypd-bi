--
-- ER/Studio Data Architect SQL Code Generation
-- Project :      NYPD_Dim_Model.DM1
--
-- Date Created : Thursday, April 02, 2020 00:36:57
-- Target DBMS : MySQL 5.x
--

-- 
-- TABLE: Dim_Complaints_Borough 
--

CREATE TABLE Dim_Complaints_Borough(
    BORO_SK         INT            AUTO_INCREMENT,
    ARREST_BORO     CHAR(1),
    Borough         VARCHAR(80),
    DI_PID          VARCHAR(20),
    DI_Create_DT    DATETIME       DEFAULT (sysdate()) NOT NULL,
    PRIMARY KEY (BORO_SK)
)ENGINE=MYISAM
;



-- 
-- TABLE: Dim_KY_Code 
--

CREATE TABLE Dim_KY_Code(
    KY_SK           INT            AUTO_INCREMENT,
    KY_CD           INT,
    OFNS_DESC       VARCHAR(80),
    DI_PID          VARCHAR(20),
    DI_Create_DT    DATETIME       DEFAULT (sysdate()) NOT NULL,
    PRIMARY KEY (KY_SK)
)ENGINE=MYISAM
;



-- 
-- TABLE: Dim_KY_Code_Duplicates 
--

CREATE TABLE Dim_KY_Code_Duplicates(
    KY_SK           INT            AUTO_INCREMENT,
    KY_CD           INT,
    OFNS_DESC       VARCHAR(80),
    DI_PID          VARCHAR(20),
    DI_Create_DT    DATETIME       DEFAULT (sysdate()) NOT NULL,
    PRIMARY KEY (KY_SK)
)ENGINE=MYISAM
;



-- 
-- TABLE: Dim_PD_Code 
--

CREATE TABLE Dim_PD_Code(
    PD_SK           INT            AUTO_INCREMENT,
    PD_CD           INT,
    PD_DESC         VARCHAR(80),
    DI_PID          VARCHAR(20),
    DI_Create_DT    DATETIME       DEFAULT (sysdate()) NOT NULL,
    PRIMARY KEY (PD_SK)
)ENGINE=MYISAM
;



-- 
-- TABLE: Dim_PD_Code_Duplicates 
--

CREATE TABLE Dim_PD_Code_Duplicates(
    PD_SK           INT            AUTO_INCREMENT,
    PD_CD           INT,
    PD_DESC         VARCHAR(80),
    DI_PID          VARCHAR(20),
    DI_Create_DT    DATETIME       DEFAULT (sysdate()) NOT NULL,
    PRIMARY KEY (PD_SK)
)ENGINE=MYISAM
;



-- 
-- TABLE: Dim_PERP_Age_Group 
--

CREATE TABLE Dim_PERP_Age_Group(
    PERP_AGE_SK     INT            AUTO_INCREMENT,
    AGE_GROUP       VARCHAR(10),
    DI_PID          VARCHAR(20),
    DI_Create_DT    DATETIME       DEFAULT (sysdate()) NOT NULL,
    PRIMARY KEY (PERP_AGE_SK)
)ENGINE=MYISAM
;



-- 
-- TABLE: Dim_PERP_RACE 
--

CREATE TABLE Dim_PERP_RACE(
    PERP_RACE_SK    INT            AUTO_INCREMENT,
    PERP_RACE       VARCHAR(80),
    DI_PID          VARCHAR(20),
    DI_Create_DT    DATETIME       DEFAULT (sysdate()) NOT NULL,
    PRIMARY KEY (PERP_RACE_SK)
)ENGINE=MYISAM
;



-- 
-- TABLE: Dim_VIC_Age_Group 
--

CREATE TABLE Dim_VIC_Age_Group(
    VIC_AGE_SK      INT            AUTO_INCREMENT,
    AGE_GROUP       VARCHAR(10),
    DI_PID          VARCHAR(20),
    DI_Create_DT    DATETIME       DEFAULT (sysdate()) NOT NULL,
    PRIMARY KEY (VIC_AGE_SK)
)ENGINE=MYISAM
;



-- 
-- TABLE: Dim_VIC_RACE 
--

CREATE TABLE Dim_VIC_RACE(
    VIC_RACE_SK     INT            AUTO_INCREMENT,
    VIC_RACE        VARCHAR(80),
    DI_PID          VARCHAR(80),
    DI_Create_DT    DATE           DEFAULT (sysdate()) NOT NULL,
    PRIMARY KEY (VIC_RACE_SK)
)ENGINE=MYISAM
;



-- 
-- TABLE: Fact_Complaints 
--

CREATE TABLE Fact_Complaints(
    CMPLNT_NUM           BIGINT         NOT NULL,
    ADDR_PCT_CD          VARCHAR(80),
    CMPLNT_FR_DT         DATE,
    CMPLNT_FR_TM         VARCHAR(80),
    CMPLNT_TO_DT         DATE,
    CMPLNT_TO_TM         VARCHAR(80),
    CRM_ATPT_CPTD_CD     VARCHAR(80),
    HADEVELOPT           VARCHAR(80),
    HOUSING_PSA          VARCHAR(80),
    JURISDICTION_CODE    INT,
    JURIS_DESC           VARCHAR(80),
    LAW_CAT_CD           CHAR(1),
    LOC_OF_OCCUR_DESC    VARCHAR(80),
    PARKS_NM             VARCHAR(80),
    PATROL_BORO          VARCHAR(80),
    PREM_TYP_DESC        VARCHAR(80),
    RPT_DT               DATE,
    STATION_NAME         VARCHAR(80),
    `SUSP SEX`           VARCHAR(80),
    `TRANSIT DISTRICT`   INT,
    `VIC SEX`            VARCHAR(80),
    PD_SK                INT,
    KY_SK                INT,
    BORO_SK              INT,
    PERP_AGE_SK          INT,
    VIC_AGE_SK           INT,
    PERP_SEX             CHAR(1),
    PERP_RACE_SK         INT,
    VIC_RACE_SK          INT,
    X_COORD_CD           BIGINT,
    Y_COORD_CD           BIGINT,
    Latitude             FLOAT(8, 0),
    Longitude            FLOAT(8, 0),
    DI_PID               VARCHAR(80),
    DI_Create_DT         DATETIME       DEFAULT (sysdate()) NOT NULL,
    PRIMARY KEY (CMPLNT_NUM)
)ENGINE=MYISAM
;



-- 
-- TABLE: Fact_Criminal_Court_Summons 
--

CREATE TABLE Fact_Criminal_Court_Summons(
    SUMMONS_KEY              BIGINT         NOT NULL,
    SUMMONS_DATE             DATE,
    OFFENSE_DESCRIPTION      VARCHAR(80),
    LAW_SECTION_NUMBER       VARCHAR(80),
    LAW_DESCRIPTION          VARCHAR(80),
    BORO_SK                  INT,
    SUMMONS_CATEGORY_TYPE    VARCHAR(80),
    PERP_AGE_SK              INT,
    PERP_RACE_SK             INT,
    JURISDICTION_CODE        INT,
    PRECINCT_OF_OCCUR        INT,
    Latitude                 FLOAT(8, 0),
    Longitude                FLOAT(8, 0),
    X_COORDINATE_CD          BIGINT,
    Y_COORDINATE_CD          BIGINT,
    DI_PID                   VARCHAR(80),
    Create_DT                DATETIME       DEFAULT (sysdate()) NOT NULL,
    PRIMARY KEY (SUMMONS_KEY)
)ENGINE=MYISAM
;



-- 
-- TABLE: Fact_Shooting_Incident 
--

CREATE TABLE Fact_Shooting_Incident(
    INCIDENT_KEY               BIGINT         NOT NULL,
    OCCUR_DATE                 DATE,
    OCCUR_TIME                 VARCHAR(80),
    BORO_SK                    INT,
    PRECINCT                   INT,
    JURISDICTION_CODE          INT,
    LOCATION_DESC              VARCHAR(80),
    STATISTICAL_MURDER_FLAG    VARCHAR(80),
    PERP_AGE_SK                INT,
    VIC_AGE_SK                 INT,
    PERP_SEX                   VARCHAR(80),
    PERP_RACE_SK               INT,
    VIC_SEX                    VARCHAR(80),
    VIC_RACE_SK                INT,
    X_COORD_CD                 BIGINT,
    Y_COORD_CD                 BIGINT,
    Latitude                   FLOAT(8, 0),
    Longitude                  FLOAT(8, 0),
    DI_PID                     VARCHAR(80),
    DI_Create_DT               DATETIME       DEFAULT (sysdate()) NOT NULL,
    PRIMARY KEY (INCIDENT_KEY)
)ENGINE=MYISAM
;



-- 
-- TABLE: Fact_Complaints 
--

ALTER TABLE Fact_Complaints ADD CONSTRAINT RefDim_PERP_RACE1 
    FOREIGN KEY (PERP_RACE_SK)
    REFERENCES Dim_PERP_RACE(PERP_RACE_SK)
;

ALTER TABLE Fact_Complaints ADD CONSTRAINT RefDim_PERP_Age_Group2 
    FOREIGN KEY (PERP_AGE_SK)
    REFERENCES Dim_PERP_Age_Group(PERP_AGE_SK)
;

ALTER TABLE Fact_Complaints ADD CONSTRAINT RefDim_Complaints_Borough3 
    FOREIGN KEY (BORO_SK)
    REFERENCES Dim_Complaints_Borough(BORO_SK)
;

ALTER TABLE Fact_Complaints ADD CONSTRAINT RefDim_KY_Code4 
    FOREIGN KEY (KY_SK)
    REFERENCES Dim_KY_Code(KY_SK)
;

ALTER TABLE Fact_Complaints ADD CONSTRAINT RefDim_KY_Code_Duplicates5 
    FOREIGN KEY (KY_SK)
    REFERENCES Dim_KY_Code_Duplicates(KY_SK)
;

ALTER TABLE Fact_Complaints ADD CONSTRAINT RefDim_PD_Code6 
    FOREIGN KEY (PD_SK)
    REFERENCES Dim_PD_Code(PD_SK)
;

ALTER TABLE Fact_Complaints ADD CONSTRAINT RefDim_PD_Code_Duplicates7 
    FOREIGN KEY (PD_SK)
    REFERENCES Dim_PD_Code_Duplicates(PD_SK)
;

ALTER TABLE Fact_Complaints ADD CONSTRAINT RefDim_VIC_RACE10 
    FOREIGN KEY (VIC_RACE_SK)
    REFERENCES Dim_VIC_RACE(VIC_RACE_SK)
;

ALTER TABLE Fact_Complaints ADD CONSTRAINT RefDim_VIC_Age_Group17 
    FOREIGN KEY (VIC_AGE_SK)
    REFERENCES Dim_VIC_Age_Group(VIC_AGE_SK)
;


-- 
-- TABLE: Fact_Criminal_Court_Summons 
--

ALTER TABLE Fact_Criminal_Court_Summons ADD CONSTRAINT RefDim_PERP_Age_Group9 
    FOREIGN KEY (PERP_AGE_SK)
    REFERENCES Dim_PERP_Age_Group(PERP_AGE_SK)
;

ALTER TABLE Fact_Criminal_Court_Summons ADD CONSTRAINT RefDim_PERP_RACE14 
    FOREIGN KEY (PERP_RACE_SK)
    REFERENCES Dim_PERP_RACE(PERP_RACE_SK)
;

ALTER TABLE Fact_Criminal_Court_Summons ADD CONSTRAINT RefDim_Complaints_Borough16 
    FOREIGN KEY (BORO_SK)
    REFERENCES Dim_Complaints_Borough(BORO_SK)
;


-- 
-- TABLE: Fact_Shooting_Incident 
--

ALTER TABLE Fact_Shooting_Incident ADD CONSTRAINT RefDim_PERP_Age_Group11 
    FOREIGN KEY (PERP_AGE_SK)
    REFERENCES Dim_PERP_Age_Group(PERP_AGE_SK)
;

ALTER TABLE Fact_Shooting_Incident ADD CONSTRAINT RefDim_VIC_RACE12 
    FOREIGN KEY (VIC_RACE_SK)
    REFERENCES Dim_VIC_RACE(VIC_RACE_SK)
;

ALTER TABLE Fact_Shooting_Incident ADD CONSTRAINT RefDim_PERP_RACE13 
    FOREIGN KEY (PERP_RACE_SK)
    REFERENCES Dim_PERP_RACE(PERP_RACE_SK)
;

ALTER TABLE Fact_Shooting_Incident ADD CONSTRAINT RefDim_Complaints_Borough15 
    FOREIGN KEY (BORO_SK)
    REFERENCES Dim_Complaints_Borough(BORO_SK)
;

ALTER TABLE Fact_Shooting_Incident ADD CONSTRAINT RefDim_VIC_Age_Group18 
    FOREIGN KEY (VIC_AGE_SK)
    REFERENCES Dim_VIC_Age_Group(VIC_AGE_SK)
;


