CREATE TABLE Stg_Complaints(
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
    LAW_CAT_CD           VARCHAR(80),
    LOC_OF_OCCUR_DESC    VARCHAR(80),
    PARKS_NM             VARCHAR(80),
    PATROL_BORO          VARCHAR(80),
    PREM_TYP_DESC        VARCHAR(80),
    RPT_DT               DATE,
    STATION_NAME         VARCHAR(80),
    SUSP_SEX           VARCHAR(80),
    TRANSIT_DISTRICT   INT,
    VIC_SEX            VARCHAR(80),
    PD_CD                INT,
    PD_DESC              VARCHAR(80),
    KY_CD                INT,
    OFNS_DESC            VARCHAR(80),
    BORO              VARCHAR(80),
    SUSP_AGE_GROUP       VARCHAR(80),
    VIC_AGE_GROUP         VARCHAR(80),
    SUSP_RACE         VARCHAR(80),
    VIC_RACE          VARCHAR(80),
    X_COORD_CD           BIGINT,
    Y_COORD_CD           BIGINT,
    Latitude             FLOAT(8, 0),
    Longitude            FLOAT(8, 0),
    DI_PID               VARCHAR(80),
    DI_Create_DT    DATETIME       DEFAULT (sysdate()) NOT NULL,
    PRIMARY KEY (CMPLNT_NUM)
)ENGINE=MYISAM
;



CREATE TABLE Stg_Criminal_Court_Summons(
    SUMMONS_KEY              BIGINT         NOT NULL,
    SUMMONS_DATE             DATE,
    OFFENSE_DESCRIPTION      VARCHAR(80),
    LAW_SECTION_NUMBER       VARCHAR(80),
    LAW_DESCRIPTION          VARCHAR(80),
    BORO                  VARCHAR(80),
    SUMMONS_CATEGORY_TYPE    VARCHAR(80),
    AGE_GROUP                   VARCHAR(80),
    SEX                      VARCHAR(80),
    RACE             VARCHAR(80),
    JURISDICTION_CODE        INT,
    PRECINCT_OF_OCCUR        INT,
    Latitude                 FLOAT(8, 0),
    Longitude                FLOAT(8, 0),
    X_COORDINATE_CD          BIGINT,
    Y_COORDINATE_CD          BIGINT,
    DI_PID                   VARCHAR(80),
    DI_Create_DT    DATETIME       DEFAULT (sysdate()) NOT NULL,
    PRIMARY KEY (SUMMONS_KEY)
)ENGINE=MYISAM
;



CREATE TABLE Stg_Shooting_Incident(
    INCIDENT_KEY               BIGINT         NOT NULL,
    OCCUR_DATE                 DATE,
    OCCUR_TIME                 VARCHAR(80),
    BORO                    VARCHAR(80),
    PRECINCT                   INT,
    JURISDICTION_CODE          INT,
    LOCATION_DESC              VARCHAR(80),
    STATISTICAL_MURDER_FLAG    VARCHAR(80),
    PERP_AGE_GROUP             VARCHAR(80),
    PERP_SEX                   VARCHAR(80),
    PERP_RACE               VARCHAR(80),
    VIC_SEX                    VARCHAR(80),
    VIC_RACE                VARCHAR(80),
    VIC_AGE_GROUP           VARCHAR(80),
    X_COORD_CD                 BIGINT,
    Y_COORD_CD                 BIGINT,
    Latitude                   FLOAT(8, 0),
    Longitude                  FLOAT(8, 0),
    DI_PID                     VARCHAR(80),
   DI_Create_DT    DATETIME       DEFAULT (sysdate()) NOT NULL,
    PRIMARY KEY (INCIDENT_KEY)
)ENGINE=MYISAM
;