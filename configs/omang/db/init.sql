-- ALTER SESSION SET CONTAINER = ORCLPDB1;
CREATE USER omang IDENTIFIED BY "some-password";

CREATE USER bdr IDENTIFIED BY "some-password";

-- ALTER SESSION SET CONTAINER = ORCLPDB1;
GRANT CONNECT TO omang;

GRANT CONNECT TO bdr;

GRANT CREATE SESSION TO omang;

GRANT CREATE SESSION TO bdr;

GRANT RESOURCE TO omang;

GRANT RESOURCE TO bdr;

ALTER USER omang QUOTA 100M ON USERS;

ALTER USER bdr QUOTA 100M ON USERS;

-- ALTER SESSION SET CONTAINER = ORCLPDB1;
-- ALTER SESSION SET CURRENT_SCHEMA = omang;
--Create table
CREATE TABLE omang.OMANG_CITIZEN(
	DECEASED_DTE timestamp NULL,
	FIRST_NME VARCHAR2(50) NOT NULL,
	BIRTH_DTE_UNKNOWN VARCHAR2(50) NOT NULL,
	DISTRICT_NME VARCHAR2(50) NOT NULL,
	OCCUPATION_DESCR VARCHAR2(50) NOT NULL,
	BIRTH_PLACE_NME VARCHAR2(50) NOT NULL,
	CHANGE_DTE timestamp NOT NULL,
	DISTRICT_CDE VARCHAR2(50) NOT NULL,
	SEX VARCHAR2(50) NOT NULL,
	SPOUSE_NME VARCHAR2(50) NULL,
	CITIZEN_STATUS_CDE VARCHAR2(50) NOT NULL,
	DEATH_CERT_NO VARCHAR2(50) NULL,
	BIRTH_DTE timestamp NOT NULL,
	DECEASED_DTE_UNKNOWN VARCHAR2(50) NULL,
	CITIZEN_STATUS_DTE timestamp NOT NULL,
	SURNME VARCHAR2(50) NOT NULL,
	OCCUPATION_CDE VARCHAR2(50) NOT NULL,
	MARITAL_STATUS_CDE VARCHAR2(50) NOT NULL,
	EXPIRY_DTE timestamp NOT NULL,
	PERSON_STATUS VARCHAR2(50) NOT NULL,
	MARITAL_STATUS_DESCR VARCHAR2(50) NOT NULL,
	ID_NO VARCHAR2(50) NOT NULL,
	POSTAL_ADDR VARCHAR2(200),
	RESIDENTIAL_ADDR VARCHAR2(200)
);

--Insert into table
INSERT INTO
	omang.OMANG_CITIZEN (
		DECEASED_DTE,
		FIRST_NME,
		BIRTH_DTE_UNKNOWN,
		DISTRICT_NME,
		OCCUPATION_DESCR,
		BIRTH_PLACE_NME,
		CHANGE_DTE,
		DISTRICT_CDE,
		SEX,
		SPOUSE_NME,
		CITIZEN_STATUS_CDE,
		DEATH_CERT_NO,
		BIRTH_DTE,
		DECEASED_DTE_UNKNOWN,
		CITIZEN_STATUS_DTE,
		SURNME,
		OCCUPATION_CDE,
		MARITAL_STATUS_CDE,
		EXPIRY_DTE,
		PERSON_STATUS,
		MARITAL_STATUS_DESCR,
		ID_NO
	)
VALUES
	(
		NULL,
		'OLEBILE',
		'False',
		'CENTRAL-TUTUME',
		'NOT IN THE LABOUR FORCE (STUDENT)',
		'FRANCISTOW',
		TO_TIMESTAMP('2009-06-18', 'YYYY-MM-DD'),
		'18',
		'M',
		NULL,
		'CITZ',
		NULL,
		TO_TIMESTAMP('1992-08-27', 'YYYY-MM-DD'),
		NULL,
		TO_TIMESTAMP('2009-06-18', 'YYYY-MM-DD'),
		'SURNAME3',
		'28',
		'SGL',
		TO_TIMESTAMP('2019-05-27', 'YYYY-MM-DD'),
		'LIVE',
		'Single',
		'210711926'
	);
--Seeding OMANG Data
INSERT INTO omang.OMANG_CITIZEN (DECEASED_DTE, FIRST_NME, BIRTH_DTE_UNKNOWN, DISTRICT_NME, OCCUPATION_DESCR, BIRTH_PLACE_NME, CHANGE_DTE, DISTRICT_CDE, SEX, SPOUSE_NME, CITIZEN_STATUS_CDE, DEATH_CERT_NO, BIRTH_DTE, DECEASED_DTE_UNKNOWN, CITIZEN_STATUS_DTE, SURNME, OCCUPATION_CDE, MARITAL_STATUS_CDE, EXPIRY_DTE, PERSON_STATUS, MARITAL_STATUS_DESCR, ID_NO) VALUES (NULL, 'OLEBILE','', 'CENTRAL-TUTUME', 'NOT IN THE LABOUR FORCE (STUDENT)', 'FRANCISTOW', TO_TIMESTAMP('2009-06-18', 'YYYY-MM-DD'), '18', 'M', NULL, 'CITZ', NULL, TO_TIMESTAMP('1992-08-27', 'YYYY-MM-DD'), NULL, TO_TIMESTAMP('2009-06-18', 'YYYY-MM-DD'), 'SURNAME3', '28', 'SGL', TO_TIMESTAMP('2019-05-27', 'YYYY-MM-DD'), 'LIVE', 'Single', '210713925');
INSERT INTO omang.OMANG_CITIZEN (DECEASED_DTE, FIRST_NME, BIRTH_DTE_UNKNOWN, DISTRICT_NME, OCCUPATION_DESCR, BIRTH_PLACE_NME, CHANGE_DTE, DISTRICT_CDE, SEX, SPOUSE_NME, CITIZEN_STATUS_CDE, DEATH_CERT_NO, BIRTH_DTE, DECEASED_DTE_UNKNOWN, CITIZEN_STATUS_DTE, SURNME, OCCUPATION_CDE, MARITAL_STATUS_CDE, EXPIRY_DTE, PERSON_STATUS, MARITAL_STATUS_DESCR, ID_NO) VALUES (NULL, 'ARABANG', '', 'NORTH-EAST', 'NOT IN THE LABOUR FORCE (STUDENT)', 'FRANCISTOW', TO_TIMESTAMP('2015-05-20', 'YYYY-MM-DD'), '19', 'M', NULL, 'CITZ', NULL, TO_TIMESTAMP('1999-05-02', 'YYYY-MM-DD'), NULL, TO_TIMESTAMP('2015-05-20', 'YYYY-MM-DD'), 'SURNAME1', '28', 'SGL', TO_TIMESTAMP('2025-05-18', 'YYYY-MM-DD'), 'LIVE', 'Single', '237720129');
INSERT INTO omang.OMANG_CITIZEN (DECEASED_DTE, FIRST_NME, BIRTH_DTE_UNKNOWN, DISTRICT_NME, OCCUPATION_DESCR, BIRTH_PLACE_NME, CHANGE_DTE, DISTRICT_CDE, SEX, SPOUSE_NME, CITIZEN_STATUS_CDE, DEATH_CERT_NO, BIRTH_DTE, DECEASED_DTE_UNKNOWN, CITIZEN_STATUS_DTE, SURNME, OCCUPATION_CDE, MARITAL_STATUS_CDE, EXPIRY_DTE, PERSON_STATUS, MARITAL_STATUS_DESCR, ID_NO) VALUES (NULL, 'EMMANUEL','', 'CENTRAL-TUTUME', 'NOT IN THE LABOUR FORCE (STUDENT)', 'FRANCISTOW', TO_TIMESTAMP('2011-01-25', 'YYYY-MM-DD'), '18', 'M', NULL, 'CITZ', NULL, TO_TIMESTAMP('1994-11-30', 'YYYY-MM-DD'), NULL, TO_TIMESTAMP('2011-01-25', 'YYYY-MM-DD'), 'SURNAME5', '28', 'SGL', TO_TIMESTAMP('2020-12-22', 'YYYY-MM-DD'), 'LIVE', 'Single', '249718716');
INSERT INTO omang.OMANG_CITIZEN (DECEASED_DTE, FIRST_NME, BIRTH_DTE_UNKNOWN, DISTRICT_NME, OCCUPATION_DESCR, BIRTH_PLACE_NME, CHANGE_DTE, DISTRICT_CDE, SEX, SPOUSE_NME, CITIZEN_STATUS_CDE, DEATH_CERT_NO, BIRTH_DTE, DECEASED_DTE_UNKNOWN, CITIZEN_STATUS_DTE, SURNME, OCCUPATION_CDE, MARITAL_STATUS_CDE, EXPIRY_DTE, PERSON_STATUS, MARITAL_STATUS_DESCR, ID_NO) VALUES (TO_TIMESTAMP('2009-06-18', 'YYYY-MM-DD'), 'IPONENG', '', 'NORTH-EAST', 'NOT IN THE LABOUR FORCE (STUDENT)', 'FRANCISTOW', TO_TIMESTAMP('2012-10-05', 'YYYY-MM-DD'), '19', 'M', NULL, 'CITZ', NULL, TO_TIMESTAMP('1995-01-29', 'YYYY-MM-DD'), NULL, TO_TIMESTAMP('2012-10-05', 'YYYY-MM-DD'), 'SURNAME2', '28', 'SGL', TO_TIMESTAMP('2022-10-04', 'YYYY-MM-DD'), 'DEAD', 'Single', '255717018');
INSERT INTO omang.OMANG_CITIZEN (DECEASED_DTE, FIRST_NME, BIRTH_DTE_UNKNOWN, DISTRICT_NME, OCCUPATION_DESCR, BIRTH_PLACE_NME, CHANGE_DTE, DISTRICT_CDE, SEX, SPOUSE_NME, CITIZEN_STATUS_CDE, DEATH_CERT_NO, BIRTH_DTE, DECEASED_DTE_UNKNOWN, CITIZEN_STATUS_DTE, SURNME, OCCUPATION_CDE, MARITAL_STATUS_CDE, EXPIRY_DTE, PERSON_STATUS, MARITAL_STATUS_DESCR, ID_NO) VALUES (NULL, 'CAROLINE', '', 'FRANCISTOW', 'NOT IN THE LABOUR FORCE (STUDENT)', 'FRANCISTOW', TO_TIMESTAMP('2017-01-13', 'YYYY-MM-DD'), '02', 'F', NULL, 'CITZ', NULL, TO_TIMESTAMP('1987-01-13', 'YYYY-MM-DD'), NULL, TO_TIMESTAMP('2017-01-13', 'YYYY-MM-DD'), 'SURNAME10', '28', 'SGL', TO_TIMESTAMP('2027-01-10', 'YYYY-MM-DD'), 'LIVE', 'Single', '258630218');
INSERT INTO omang.OMANG_CITIZEN (DECEASED_DTE, FIRST_NME, BIRTH_DTE_UNKNOWN, DISTRICT_NME, OCCUPATION_DESCR, BIRTH_PLACE_NME, CHANGE_DTE, DISTRICT_CDE, SEX, SPOUSE_NME, CITIZEN_STATUS_CDE, DEATH_CERT_NO, BIRTH_DTE, DECEASED_DTE_UNKNOWN, CITIZEN_STATUS_DTE, SURNME, OCCUPATION_CDE, MARITAL_STATUS_CDE, EXPIRY_DTE, PERSON_STATUS, MARITAL_STATUS_DESCR, ID_NO) VALUES (NULL, 'JAMES', '', 'NORTH-EAST', 'NOT IN THE LABOUR FORCE (STUDENT)', 'FRANCISTOW', TO_TIMESTAMP('2011-02-17', 'YYYY-MM-DD'), '19', 'F', NULL, 'CITZ', NULL, TO_TIMESTAMP('1993-01-21', 'YYYY-MM-DD'), NULL, TO_TIMESTAMP('2011-02-17', 'YYYY-MM-DD'), 'SURNAME4', '28', 'MAR', TO_TIMESTAMP('2021-02-16', 'YYYY-MM-DD'), 'LIVE', 'Married', '259575714');
INSERT INTO omang.OMANG_CITIZEN (DECEASED_DTE, FIRST_NME, BIRTH_DTE_UNKNOWN, DISTRICT_NME, OCCUPATION_DESCR, BIRTH_PLACE_NME, CHANGE_DTE, DISTRICT_CDE, SEX, SPOUSE_NME, CITIZEN_STATUS_CDE, DEATH_CERT_NO, BIRTH_DTE, DECEASED_DTE_UNKNOWN, CITIZEN_STATUS_DTE, SURNME, OCCUPATION_CDE, MARITAL_STATUS_CDE, EXPIRY_DTE, PERSON_STATUS, MARITAL_STATUS_DESCR, ID_NO) VALUES (NULL, 'OLORATO', '', 'CENTRAL-SEROWE', 'BOOK-KEEPERS, CASHIERS AND RELATED WORKERS', 'FRANCISTOW', TO_TIMESTAMP('2016-04-26', 'YYYY-MM-DD'), '14', 'F', NULL, 'CITZ', NULL, TO_TIMESTAMP('1988-09-16', 'YYYY-MM-DD'), NULL, TO_TIMESTAMP('2016-04-26', 'YYYY-MM-DD'), 'SURNAME7', '33', 'SGL', TO_TIMESTAMP('2026-04-25', 'YYYY-MM-DD'), 'LIVE', 'Single', '264522418');
INSERT INTO omang.OMANG_CITIZEN (DECEASED_DTE, FIRST_NME, BIRTH_DTE_UNKNOWN, DISTRICT_NME, OCCUPATION_DESCR, BIRTH_PLACE_NME, CHANGE_DTE, DISTRICT_CDE, SEX, SPOUSE_NME, CITIZEN_STATUS_CDE, DEATH_CERT_NO, BIRTH_DTE, DECEASED_DTE_UNKNOWN, CITIZEN_STATUS_DTE, SURNME, OCCUPATION_CDE, MARITAL_STATUS_CDE, EXPIRY_DTE, PERSON_STATUS, MARITAL_STATUS_DESCR, ID_NO) VALUES (NULL, 'THATO', '', 'CENTRAL-TUTUME', 'TRANSPORT CONDUCTORS', 'FRANCISTOW', TO_TIMESTAMP('2016-10-24', 'YYYY-MM-DD'), '18', 'M', NULL, 'CITZ', NULL, TO_TIMESTAMP('1988-03-14', 'YYYY-MM-DD'), NULL, TO_TIMESTAMP('2016-10-24', 'YYYY-MM-DD'), 'SURNAME8', '36', 'SGL', TO_TIMESTAMP('2026-10-18', 'YYYY-MM-DD'), 'LIVE', 'Single', '272118515');
INSERT INTO omang.OMANG_CITIZEN (DECEASED_DTE, FIRST_NME, BIRTH_DTE_UNKNOWN, DISTRICT_NME, OCCUPATION_DESCR, BIRTH_PLACE_NME, CHANGE_DTE, DISTRICT_CDE, SEX, SPOUSE_NME, CITIZEN_STATUS_CDE, DEATH_CERT_NO, BIRTH_DTE, DECEASED_DTE_UNKNOWN, CITIZEN_STATUS_DTE, SURNME, OCCUPATION_CDE, MARITAL_STATUS_CDE, EXPIRY_DTE, PERSON_STATUS, MARITAL_STATUS_DESCR, ID_NO) VALUES (NULL, 'MONTY', '', 'NORTH-EAST', 'NOT IN THE LABOUR FORCE (STUDENT)', 'FRANCISTOW', TO_TIMESTAMP('2009-08-12', 'YYYY-MM-DD'), '19', 'M', NULL, 'CITZ', NULL, TO_TIMESTAMP('1990-07-13', 'YYYY-MM-DD'), NULL, TO_TIMESTAMP('2009-08-12', 'YYYY-MM-DD'), 'SURNAME6', '28', 'SGL', TO_TIMESTAMP('2017-01-05', 'YYYY-MM-DD'), 'LIVE', 'Single', '286817514');
INSERT INTO omang.OMANG_CITIZEN (DECEASED_DTE, FIRST_NME, BIRTH_DTE_UNKNOWN, DISTRICT_NME, OCCUPATION_DESCR, BIRTH_PLACE_NME, CHANGE_DTE, DISTRICT_CDE, SEX, SPOUSE_NME, CITIZEN_STATUS_CDE, DEATH_CERT_NO, BIRTH_DTE, DECEASED_DTE_UNKNOWN, CITIZEN_STATUS_DTE, SURNME, OCCUPATION_CDE, MARITAL_STATUS_CDE, EXPIRY_DTE, PERSON_STATUS, MARITAL_STATUS_DESCR, ID_NO) VALUES (NULL, 'KA', '', 'NORTH-EAST', 'WORKERS REPORTING UNIDENTIFIABLE OCCUPATIONS', 'FRANCISTOW', TO_TIMESTAMP('2015-09-22', 'YYYY-MM-DD'), '19', 'F', NULL, 'CITZ', NULL, TO_TIMESTAMP('1988-09-11', 'YYYY-MM-DD'), NULL, TO_TIMESTAMP('2015-09-22', 'YYYY-MM-DD'), 'SURNAME9', '25', 'SGL', TO_TIMESTAMP('2025-09-21', 'YYYY-MM-DD'), 'LIVE', 'Single', '373823112');


CREATE TABLE bdr.V_BIRTH(
	BIRTH_CERTIFICATE VARCHAR2(50) NULL,
	BIRTH_CERTIFICATE_OLD VARCHAR2(50) NULL,
	DISTRICT_OF_BIRTH VARCHAR2(50) NULL,
	DISTRICT_OF_BIRTH_NAME VARCHAR2(50) NULL,
	TYPE_OF_BIRTH VARCHAR2(50) NULL,
	ID_NUMBER VARCHAR2(50) NOT NULL,
	REGISTRATION_NUMBER VARCHAR2(50) NULL,
	FORENAME VARCHAR2(50) NOT NULL,
	SURNAME VARCHAR2(50) NOT NULL,
	OTHER_NAME VARCHAR2(50) NULL,
	NATIONALITY VARCHAR2(50) NULL,
	DATE_OF_BIRTH timestamp NULL,
	SEX VARCHAR2(50) NOT NULL,
	TOWN_VILL VARCHAR2(200) NULL,
	WARD_STREET VARCHAR2(200) NULL,
	DATE_OF_REGISTRATION timestamp NULL,
	DISTRICT_OF_REGISTRATION VARCHAR2(50) NULL,
	FATHER_ID_NUMBER VARCHAR2(50) NULL,
	FATHER_FORENAME VARCHAR2(50) NULL,
	FATHER_SURNAME VARCHAR2(50) NULL,
	FATHER_OTHER_NAME VARCHAR2(50) NULL,
	FATHER_NATIONALITY VARCHAR2(50) NULL,
	MOTHER_ID_NUMBER VARCHAR2(50) NULL,
	MOTHER_FORENAME VARCHAR2(50) NULL,
	MOTHER_SURNAME VARCHAR2(50) NULL,
	MOTHER_OTHER_NAME VARCHAR2(50) NULL,
	MOTHER_NATIONALITY VARCHAR2(50) NULL,
	MOTHER_AGE VARCHAR2(50) NULL,
	MOTHER_MARITAL_STATUS VARCHAR2(50) NULL,
	DATE_OF_ISSUE timestamp NULL,
	DATE_OF_COLLECTION timestamp NULL,
	YEAR_OF_REGISTRATION VARCHAR2(50) NULL
);

INSERT INTO
	bdr.V_BIRTH (
		BIRTH_CERTIFICATE,
		BIRTH_CERTIFICATE_OLD,
		DISTRICT_OF_REGISTRATION,
		DISTRICT_OF_BIRTH_NAME,
		DISTRICT_OF_BIRTH,
		TYPE_OF_BIRTH,
		ID_NUMBER,
		REGISTRATION_NUMBER,
		FORENAME,
		SURNAME,
		OTHER_NAME,
		NATIONALITY,
		DATE_OF_BIRTH,
		SEX,
		TOWN_VILL,
		WARD_STREET,
		DATE_OF_REGISTRATION,
		FATHER_ID_NUMBER,
		FATHER_FORENAME,
		FATHER_SURNAME,
		FATHER_OTHER_NAME,
		FATHER_NATIONALITY,
		MOTHER_ID_NUMBER,
		MOTHER_FORENAME,
		MOTHER_SURNAME,
		MOTHER_OTHER_NAME,
		MOTHER_NATIONALITY,
		DATE_OF_ISSUE,
		YEAR_OF_REGISTRATION,
		DATE_OF_COLLECTION,
		MOTHER_AGE,
		MOTHER_MARITAL_STATUS
	)
VALUES
	(
		'654651651651',
		'65461651',
		'18',
		'CENTRAL-TUTUME',
		'18',
		NULL,
		'23423423422',
		'324239022390',
		'OLEBILE',
		'SURNAME3',
		NULL,
		'BW',
		TO_TIMESTAMP('1992-08-27', 'YYYY-MM-DD'),
		'M',
		'FRANCISTOW',
		NULL,
		TO_TIMESTAMP('2009-06-18', 'YYYY-MM-DD'),
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		TO_TIMESTAMP('2009-06-18', 'YYYY-MM-DD'),
		'2009',
		TO_TIMESTAMP('2019-05-27', 'YYYY-MM-DD'),
		'60',
		NULL
	);
--Seeding births

INSERT INTO bdr.V_BIRTH (BIRTH_CERTIFICATE, BIRTH_CERTIFICATE_OLD, DISTRICT_OF_REGISTRATION, DISTRICT_OF_BIRTH_NAME, DISTRICT_OF_BIRTH, TYPE_OF_BIRTH, ID_NUMBER, REGISTRATION_NUMBER, FORENAME, SURNAME, OTHER_NAME, NATIONALITY, DATE_OF_BIRTH, SEX, TOWN_VILL, WARD_STREET, DATE_OF_REGISTRATION, FATHER_ID_NUMBER, FATHER_FORENAME, FATHER_SURNAME, FATHER_OTHER_NAME, FATHER_NATIONALITY, MOTHER_ID_NUMBER, MOTHER_FORENAME, MOTHER_SURNAME, MOTHER_OTHER_NAME, MOTHER_NATIONALITY, DATE_OF_ISSUE, YEAR_OF_REGISTRATION, DATE_OF_COLLECTION, MOTHER_AGE, MOTHER_MARITAL_STATUS) VALUES ('LB23/12375938/1994', 'LB77411/94', 23, 'KGALAGADI', 23, 'Live Birth', 623717491, 1239345, 'ERNEST', 'MOTHIBI', 'JOH', 'BW', TO_TIMESTAMP('1994-08-04', 'YYYY-MM-DD'), 'Male', 'WERDA', 'WERDA CLINIC', TO_TIMESTAMP('1994-09-08', 'YYYY-MM-DD'), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MOTHIBI', NULL, 'Motswana', TO_TIMESTAMP('2013-01-22', 'YYYY-MM-DD'), 1994, TO_TIMESTAMP('2015-07-09', 'YYYY-MM-DD'), 24, 'Single');
INSERT INTO bdr.V_BIRTH (BIRTH_CERTIFICATE, BIRTH_CERTIFICATE_OLD, DISTRICT_OF_REGISTRATION, DISTRICT_OF_BIRTH_NAME, DISTRICT_OF_BIRTH, TYPE_OF_BIRTH, ID_NUMBER, REGISTRATION_NUMBER, FORENAME, SURNAME, OTHER_NAME, NATIONALITY, DATE_OF_BIRTH, SEX, TOWN_VILL, WARD_STREET, DATE_OF_REGISTRATION, FATHER_ID_NUMBER, FATHER_FORENAME, FATHER_SURNAME, FATHER_OTHER_NAME, FATHER_NATIONALITY, MOTHER_ID_NUMBER, MOTHER_FORENAME, MOTHER_SURNAME, MOTHER_OTHER_NAME, MOTHER_NATIONALITY, DATE_OF_ISSUE, YEAR_OF_REGISTRATION, DATE_OF_COLLECTION, MOTHER_AGE, MOTHER_MARITAL_STATUS) VALUES ('LB23/12375714/1994', 'LB77410/94', 23, 'KGALAGADI', 23, 'Live Birth', 423717290, 1239323, 'AMOGELANG', 'JOHANE', 'JOH', 'BW', TO_TIMESTAMP('1994-08-02', 'YYYY-MM-DD'), 'Male', 'TSABONG', NULL, TO_TIMESTAMP('1994-09-08', 'YYYY-MM-DD'), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'JOHANE', NULL, NULL, NULL, 1994, NULL, 49, 'Single');
INSERT INTO bdr.V_BIRTH (BIRTH_CERTIFICATE, BIRTH_CERTIFICATE_OLD, DISTRICT_OF_REGISTRATION, DISTRICT_OF_BIRTH_NAME, DISTRICT_OF_BIRTH, TYPE_OF_BIRTH, ID_NUMBER, REGISTRATION_NUMBER, FORENAME, SURNAME, OTHER_NAME, NATIONALITY, DATE_OF_BIRTH, SEX, TOWN_VILL, WARD_STREET, DATE_OF_REGISTRATION, FATHER_ID_NUMBER, FATHER_FORENAME, FATHER_SURNAME, FATHER_OTHER_NAME, FATHER_NATIONALITY, MOTHER_ID_NUMBER, MOTHER_FORENAME, MOTHER_SURNAME, MOTHER_OTHER_NAME, MOTHER_NATIONALITY, DATE_OF_ISSUE, YEAR_OF_REGISTRATION, DATE_OF_COLLECTION, MOTHER_AGE, MOTHER_MARITAL_STATUS) VALUES ('LB23/12375527/1994', 'LB77409/94', 23, 'KGALAGADI', 23, 'Live Birth', 523727088, 1239304, 'LESEDI', 'BARUI', 'JOH', 'BW', TO_TIMESTAMP('1994-08-01', 'YYYY-MM-DD'), 'Female', 'TSABONG', NULL, TO_TIMESTAMP('1994-09-08', 'YYYY-MM-DD'), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BARUI', NULL, NULL, NULL, 1994, NULL, 15, 'Single');
INSERT INTO bdr.V_BIRTH (BIRTH_CERTIFICATE, BIRTH_CERTIFICATE_OLD, DISTRICT_OF_REGISTRATION, DISTRICT_OF_BIRTH_NAME, DISTRICT_OF_BIRTH, TYPE_OF_BIRTH, ID_NUMBER, REGISTRATION_NUMBER, FORENAME, SURNAME, OTHER_NAME, NATIONALITY, DATE_OF_BIRTH, SEX, TOWN_VILL, WARD_STREET, DATE_OF_REGISTRATION, FATHER_ID_NUMBER, FATHER_FORENAME, FATHER_SURNAME, FATHER_OTHER_NAME, FATHER_NATIONALITY, MOTHER_ID_NUMBER, MOTHER_FORENAME, MOTHER_SURNAME, MOTHER_OTHER_NAME, MOTHER_NATIONALITY, DATE_OF_ISSUE, YEAR_OF_REGISTRATION, DATE_OF_COLLECTION, MOTHER_AGE, MOTHER_MARITAL_STATUS) VALUES ('LB23/12375374/1994', 'LB77408/94', 23, 'KGALAGADI', 23, 'Live Birth', 23726993, 1239289, 'LETTICIA', 'MAELE', 'JOH', 'BW', TO_TIMESTAMP('1994-07-31', 'YYYY-MM-DD'), 'Female', 'TSABONG', NULL, TO_TIMESTAMP('1994-09-08', 'YYYY-MM-DD'), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MAELE', NULL, NULL, NULL, 1994, NULL, 40, 'Married');
INSERT INTO bdr.V_BIRTH (BIRTH_CERTIFICATE, BIRTH_CERTIFICATE_OLD, DISTRICT_OF_REGISTRATION, DISTRICT_OF_BIRTH_NAME, DISTRICT_OF_BIRTH, TYPE_OF_BIRTH, ID_NUMBER, REGISTRATION_NUMBER, FORENAME, SURNAME, OTHER_NAME, NATIONALITY, DATE_OF_BIRTH, SEX, TOWN_VILL, WARD_STREET, DATE_OF_REGISTRATION, FATHER_ID_NUMBER, FATHER_FORENAME, FATHER_SURNAME, FATHER_OTHER_NAME, FATHER_NATIONALITY, MOTHER_ID_NUMBER, MOTHER_FORENAME, MOTHER_SURNAME, MOTHER_OTHER_NAME, MOTHER_NATIONALITY, DATE_OF_ISSUE, YEAR_OF_REGISTRATION, DATE_OF_COLLECTION, MOTHER_AGE, MOTHER_MARITAL_STATUS) VALUES ('LB23/12375260/1994', 'LB77407/94', 23, 'KGALAGADI', 23, 'Live Birth', 922717791, 1239278, 'NICK', 'DIANE', 'JOH', 'BW', TO_TIMESTAMP('1994-07-25', 'YYYY-MM-DD'), 'Male', 'WERDA', 'WERDA CLINIC', TO_TIMESTAMP('1994-09-08', 'YYYY-MM-DD'), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'DIANE', NULL, 'Motswana', TO_TIMESTAMP('2010-03-31', 'YYYY-MM-DD'), 1994, NULL, 38, 'Single');
INSERT INTO bdr.V_BIRTH (BIRTH_CERTIFICATE, BIRTH_CERTIFICATE_OLD, DISTRICT_OF_REGISTRATION, DISTRICT_OF_BIRTH_NAME, DISTRICT_OF_BIRTH, TYPE_OF_BIRTH, ID_NUMBER, REGISTRATION_NUMBER, FORENAME, SURNAME, OTHER_NAME, NATIONALITY, DATE_OF_BIRTH, SEX, TOWN_VILL, WARD_STREET, DATE_OF_REGISTRATION, FATHER_ID_NUMBER, FATHER_FORENAME, FATHER_SURNAME, FATHER_OTHER_NAME, FATHER_NATIONALITY, MOTHER_ID_NUMBER, MOTHER_FORENAME, MOTHER_SURNAME, MOTHER_OTHER_NAME, MOTHER_NATIONALITY, DATE_OF_ISSUE, YEAR_OF_REGISTRATION, DATE_OF_COLLECTION, MOTHER_AGE, MOTHER_MARITAL_STATUS) VALUES ('LB23/12375117/1994', 'LB77406/94', 23, 'KGALAGADI', 23, 'Live Birth', 422717689, 1239263, 'OMPHILE', 'BATSWANA', 'JOH', 'BW', TO_TIMESTAMP('1994-07-20', 'YYYY-MM-DD'), 'Male', 'BOKSPITS', NULL, TO_TIMESTAMP('1994-09-08', 'YYYY-MM-DD'), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BATSWANA', NULL, NULL, NULL, 1994, NULL, 20, 'Single');
INSERT INTO bdr.V_BIRTH (BIRTH_CERTIFICATE, BIRTH_CERTIFICATE_OLD, DISTRICT_OF_REGISTRATION, DISTRICT_OF_BIRTH_NAME, DISTRICT_OF_BIRTH, TYPE_OF_BIRTH, ID_NUMBER, REGISTRATION_NUMBER, FORENAME, SURNAME, OTHER_NAME, NATIONALITY, DATE_OF_BIRTH, SEX, TOWN_VILL, WARD_STREET, DATE_OF_REGISTRATION, FATHER_ID_NUMBER, FATHER_FORENAME, FATHER_SURNAME, FATHER_OTHER_NAME, FATHER_NATIONALITY, MOTHER_ID_NUMBER, MOTHER_FORENAME, MOTHER_SURNAME, MOTHER_OTHER_NAME, MOTHER_NATIONALITY, DATE_OF_ISSUE, YEAR_OF_REGISTRATION, DATE_OF_COLLECTION, MOTHER_AGE, MOTHER_MARITAL_STATUS) VALUES ('LB23/12374991/1994', 'LB77405/94', 23, 'KGALAGADI', 23, 'Live Birth', 222717595, 1239251, 'MOOKETSI', 'MAEBA', 'JOH', 'BW', TO_TIMESTAMP('1994-07-15', 'YYYY-MM-DD'), 'Male', NULL, NULL, TO_TIMESTAMP('1994-09-08', 'YYYY-MM-DD'), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MAEBA', NULL, NULL, NULL, 1994, NULL, 26, 'Single');
INSERT INTO bdr.V_BIRTH (BIRTH_CERTIFICATE, BIRTH_CERTIFICATE_OLD, DISTRICT_OF_REGISTRATION, DISTRICT_OF_BIRTH_NAME, DISTRICT_OF_BIRTH, TYPE_OF_BIRTH, ID_NUMBER, REGISTRATION_NUMBER, FORENAME, SURNAME, OTHER_NAME, NATIONALITY, DATE_OF_BIRTH, SEX, TOWN_VILL, WARD_STREET, DATE_OF_REGISTRATION, FATHER_ID_NUMBER, FATHER_FORENAME, FATHER_SURNAME, FATHER_OTHER_NAME, FATHER_NATIONALITY, MOTHER_ID_NUMBER, MOTHER_FORENAME, MOTHER_SURNAME, MOTHER_OTHER_NAME, MOTHER_NATIONALITY, DATE_OF_ISSUE, YEAR_OF_REGISTRATION, DATE_OF_COLLECTION, MOTHER_AGE, MOTHER_MARITAL_STATUS) VALUES ('LB23/12374813/1994', 'LB77404/94', 23, 'KGALAGADI', 23, 'Live Birth', 422727393, 1239233, 'OLORATO', 'PHIRI', 'JOH', 'BW', TO_TIMESTAMP('1994-07-11', 'YYYY-MM-DD'), 'Female', 'WERDA', NULL, TO_TIMESTAMP('1994-09-08', 'YYYY-MM-DD'), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PHIRI', NULL, NULL, NULL, 1994, NULL, 22, 'Single');
INSERT INTO bdr.V_BIRTH (BIRTH_CERTIFICATE, BIRTH_CERTIFICATE_OLD, DISTRICT_OF_REGISTRATION, DISTRICT_OF_BIRTH_NAME, DISTRICT_OF_BIRTH, TYPE_OF_BIRTH, ID_NUMBER, REGISTRATION_NUMBER, FORENAME, SURNAME, OTHER_NAME, NATIONALITY, DATE_OF_BIRTH, SEX, TOWN_VILL, WARD_STREET, DATE_OF_REGISTRATION, FATHER_ID_NUMBER, FATHER_FORENAME, FATHER_SURNAME, FATHER_OTHER_NAME, FATHER_NATIONALITY, MOTHER_ID_NUMBER, MOTHER_FORENAME, MOTHER_SURNAME, MOTHER_OTHER_NAME, MOTHER_NATIONALITY, DATE_OF_ISSUE, YEAR_OF_REGISTRATION, DATE_OF_COLLECTION, MOTHER_AGE, MOTHER_MARITAL_STATUS) VALUES ('LB23/12374662/1994', 'LB77403/94', 23, 'KGALAGADI', 23, 'Live Birth', 922727191, 1239218, 'NATASHIA', 'PHIRING', 'JOH', 'BW', TO_TIMESTAMP('1994-06-28', 'YYYY-MM-DD'), 'Female', 'BOKSPITS', 'BOKSPITS CLINIC', TO_TIMESTAMP('1994-09-08', 'YYYY-MM-DD'), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PHIRING', NULL, 'Motswana', TO_TIMESTAMP('2011-09-20', 'YYYY-MM-DD'), 1994, NULL, 17, 'Single');
INSERT INTO bdr.V_BIRTH (BIRTH_CERTIFICATE, BIRTH_CERTIFICATE_OLD, DISTRICT_OF_REGISTRATION, DISTRICT_OF_BIRTH_NAME, DISTRICT_OF_BIRTH, TYPE_OF_BIRTH, ID_NUMBER, REGISTRATION_NUMBER, FORENAME, SURNAME, OTHER_NAME, NATIONALITY, DATE_OF_BIRTH, SEX, TOWN_VILL, WARD_STREET, DATE_OF_REGISTRATION, FATHER_ID_NUMBER, FATHER_FORENAME, FATHER_SURNAME, FATHER_OTHER_NAME, FATHER_NATIONALITY, MOTHER_ID_NUMBER, MOTHER_FORENAME, MOTHER_SURNAME, MOTHER_OTHER_NAME, MOTHER_NATIONALITY, DATE_OF_ISSUE, YEAR_OF_REGISTRATION, DATE_OF_COLLECTION, MOTHER_AGE, MOTHER_MARITAL_STATUS) VALUES ('LB23/12374537/1994', 'LB77402/94', 23, 'KGALAGADI', 23, 'Live Birth', 622727091, 1239205, 'MICHELLE', 'BABA', 'JOH', 'BW', TO_TIMESTAMP('1994-06-26', 'YYYY-MM-DD'), 'Female', 'BOKSPITS', NULL, TO_TIMESTAMP('1994-09-08', 'YYYY-MM-DD'), NULL, NULL, NULL, NULL, 'Motswana', NULL, NULL, 'BABA', NULL, 'Motswana', TO_TIMESTAMP('2011-07-13', 'YYYY-MM-DD'), 1994, TO_TIMESTAMP('2015-07-09', 'YYYY-MM-DD'), 42, 'Single');



CREATE TABLE bdr.V_DEATH(
	DEATH_CERTIFICATE VARCHAR2(50) NULL,
	DISTRICT_OF_REGISTRATION VARCHAR2(50) NULL,
	DISTRICT_OF_DEATH VARCHAR2(50) NULL,
	DISTRICT_OF_DEATH_NAME VARCHAR2(50) NULL,
	ID_NUMBER VARCHAR2(50) NOT NULL,
	REGISTRATION_NUMBER VARCHAR2(50) NULL,
	FORENAME VARCHAR2(50) NOT NULL,
	SURNAME VARCHAR2(50) NOT NULL,
	OTHER_NAME VARCHAR2(50) NULL,
	NATIONALITY VARCHAR2(50) NULL,
	OCCUPATION VARCHAR2(50) NULL,
	DATE_OF_DEATH timestamp NULL,
	SEX VARCHAR2(50) NOT NULL,
	TOWN_VILL VARCHAR2(200) NULL,
	WARD_STREET VARCHAR2(200) NULL,
	PLACE_OF_DEATH VARCHAR2(50) NULL,
	DATE_OF_REGISTRATION timestamp NULL,
	AGE_DAYS VARCHAR2(50) NULL,
	AGE_MONTHS VARCHAR2(50) NULL,
	AGE_YEARS VARCHAR2(50) NULL,
	CODE_ICD10 VARCHAR2(50) NULL,
	CAUSE_OF_DEATH VARCHAR2(100) NULL,
	DATE_OF_ISSUE timestamp NULL,
	YEAR_OF_REGISTRATION VARCHAR2(50) NULL,
	TYPE_OF_RELATIONSHIP VARCHAR2(50) NULL,
	ID_NUMBER_NEXT_OF_KIN VARCHAR2(50) NULL,
	MOTHER_NATIONALITY VARCHAR2(50) NULL,
	FORENAME_NEXT_OF_KIN VARCHAR2(50) NULL,
	SURNAME_NEXT_OF_KIN VARCHAR2(50) NULL,
	OTHER_NAME_NEXT_OF_KIN VARCHAR2(50) NULL,
	NATIONALITY_NEXT_OF_KIN VARCHAR2(50) NULL,
	DATE_OF_COLLECTION timestamp NULL
);

INSERT INTO
	bdr.V_DEATH (
		DEATH_CERTIFICATE,
		DISTRICT_OF_REGISTRATION,
		DISTRICT_OF_DEATH_NAME,
		DISTRICT_OF_DEATH,
		ID_NUMBER,
		REGISTRATION_NUMBER,
		FORENAME,
		SURNAME,
		OTHER_NAME,
		NATIONALITY,
		OCCUPATION,
		DATE_OF_DEATH,
		SEX,
		TOWN_VILL,
		WARD_STREET,
		PLACE_OF_DEATH,
		DATE_OF_REGISTRATION,
		AGE_DAYS,
		AGE_MONTHS,
		AGE_YEARS,
		CODE_ICD10,
		CAUSE_OF_DEATH,
		DATE_OF_ISSUE,
		YEAR_OF_REGISTRATION,
		TYPE_OF_RELATIONSHIP,
		ID_NUMBER_NEXT_OF_KIN,
		FORENAME_NEXT_OF_KIN,
		SURNAME_NEXT_OF_KIN,
		OTHER_NAME_NEXT_OF_KIN,
		NATIONALITY_NEXT_OF_KIN,
		DATE_OF_COLLECTION
	)
VALUES
	(
		'654651651651',
		'18',
		'CENTRAL-TUTUME',
		'18',
		'23423423422',
		'324239022390',
		'OLEBILE',
		'SURNAME3',
		TO_TIMESTAMP('2019-05-27', 'YYYY-MM-DD'),
		'BW',
		'NOT IN THE LABOUR FORCE (STUDENT)',
		NULL,
		'M',
		'FRANCISTOW',
		NULL,
		NULL,
		TO_TIMESTAMP('2009-06-18', 'YYYY-MM-DD'),
		30,
		0,
		0,
		NULL,
		NULL,
		TO_TIMESTAMP('2019-05-27', 'YYYY-MM-DD'),
		'2009',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		TO_TIMESTAMP('2009-06-18', 'YYYY-MM-DD')
	);
--Seeding Deaths
INSERT INTO bdr.V_DEATH (DEATH_CERTIFICATE, DISTRICT_OF_REGISTRATION, DISTRICT_OF_DEATH_NAME, DISTRICT_OF_DEATH, ID_NUMBER, REGISTRATION_NUMBER, FORENAME, SURNAME, OTHER_NAME, NATIONALITY, OCCUPATION, DATE_OF_DEATH, SEX, TOWN_VILL, WARD_STREET, PLACE_OF_DEATH, DATE_OF_REGISTRATION, AGE_DAYS, AGE_MONTHS, AGE_YEARS, CODE_ICD10, CAUSE_OF_DEATH, DATE_OF_ISSUE, YEAR_OF_REGISTRATION, TYPE_OF_RELATIONSHIP, ID_NUMBER_NEXT_OF_KIN, FORENAME_NEXT_OF_KIN, SURNAME_NEXT_OF_KIN, OTHER_NAME_NEXT_OF_KIN, NATIONALITY_NEXT_OF_KIN, DATE_OF_COLLECTION) VALUES ('D12/00013755/2001', 2, 'CENTRAL-TUTUME', 18, 830123806, 313991, 'ACE', 'PHATSIMO', 'ANNAH', 'Motswana', 'COOKER', TO_TIMESTAMP('2003-07-05', 'YYYY-MM-DD'), 'Female', 'FRANCISTOW', 'GAMBISA WARD MATOBO', 'Other', TO_TIMESTAMP('2003-07-10', 'YYYY-MM-DD'), NULL, NULL, 51, NULL, 'Unknow', TO_TIMESTAMP('2003-07-30', 'YYYY-MM-DD'), 2003, 'BROTHER/SISTER', 951523210, NULL, NULL, NULL, NULL, TO_TIMESTAMP('2003-07-31', 'YYYY-MM-DD'));
INSERT INTO bdr.V_DEATH (DEATH_CERTIFICATE, DISTRICT_OF_REGISTRATION, DISTRICT_OF_DEATH_NAME, DISTRICT_OF_DEATH, ID_NUMBER, REGISTRATION_NUMBER, FORENAME, SURNAME, OTHER_NAME, NATIONALITY, OCCUPATION, DATE_OF_DEATH, SEX, TOWN_VILL, WARD_STREET, PLACE_OF_DEATH, DATE_OF_REGISTRATION, AGE_DAYS, AGE_MONTHS, AGE_YEARS, CODE_ICD10, CAUSE_OF_DEATH, DATE_OF_ISSUE, YEAR_OF_REGISTRATION, TYPE_OF_RELATIONSHIP, ID_NUMBER_NEXT_OF_KIN, FORENAME_NEXT_OF_KIN, SURNAME_NEXT_OF_KIN, OTHER_NAME_NEXT_OF_KIN, NATIONALITY_NEXT_OF_KIN, DATE_OF_COLLECTION) VALUES ('D12/00013782/2001', 2, 'CENTRAL-TUTUME', 18, 23319908, 276293, 'DAVE', 'MAU', NULL, 'Motswana', 'STOCK CONTROLLER', TO_TIMESTAMP('2003-07-11', 'YYYY-MM-DD'), 'Male', 'FRANCISTOW', 'BLOCK 2', 'Home', TO_TIMESTAMP('2003-07-30', 'YYYY-MM-DD'), NULL, NULL, 43, NULL, 'Unknow', TO_TIMESTAMP('2003-07-30', 'YYYY-MM-DD'), 2003, 'BROTHER/SISTER', 978530707, NULL, NULL, NULL, NULL, TO_TIMESTAMP('2003-07-31', 'YYYY-MM-DD'));
INSERT INTO bdr.V_DEATH (DEATH_CERTIFICATE, DISTRICT_OF_REGISTRATION, DISTRICT_OF_DEATH_NAME, DISTRICT_OF_DEATH, ID_NUMBER, REGISTRATION_NUMBER, FORENAME, SURNAME, OTHER_NAME, NATIONALITY, OCCUPATION, DATE_OF_DEATH, SEX, TOWN_VILL, WARD_STREET, PLACE_OF_DEATH, DATE_OF_REGISTRATION, AGE_DAYS, AGE_MONTHS, AGE_YEARS, CODE_ICD10, CAUSE_OF_DEATH, DATE_OF_ISSUE, YEAR_OF_REGISTRATION, TYPE_OF_RELATIONSHIP, ID_NUMBER_NEXT_OF_KIN, FORENAME_NEXT_OF_KIN, SURNAME_NEXT_OF_KIN, OTHER_NAME_NEXT_OF_KIN, NATIONALITY_NEXT_OF_KIN, DATE_OF_COLLECTION) VALUES ('D12/00013817/2001', 2, 'FRANCISTOW', 2, 803726206, 50231, 'NEO', 'DAVIS', NULL, 'Motswana', NULL, TO_TIMESTAMP('2003-07-28', 'YYYY-MM-DD'), 'Female', 'FRANCISTOW', 'KUBUNG WARD', 'Home', TO_TIMESTAMP('2003-07-28', 'YYYY-MM-DD'), NULL, NULL, 32, NULL, 'Diarrhoea And Dehydration due to Retroviral Infectio', TO_TIMESTAMP('2003-07-30', 'YYYY-MM-DD'), 2003, 'UNCLE/ANY OTHER RELATIVE', 419325003, NULL, NULL, NULL, NULL, TO_TIMESTAMP('2006-04-25', 'YYYY-MM-DD'));
INSERT INTO bdr.V_DEATH (DEATH_CERTIFICATE, DISTRICT_OF_REGISTRATION, DISTRICT_OF_DEATH_NAME, DISTRICT_OF_DEATH, ID_NUMBER, REGISTRATION_NUMBER, FORENAME, SURNAME, OTHER_NAME, NATIONALITY, OCCUPATION, DATE_OF_DEATH, SEX, TOWN_VILL, WARD_STREET, PLACE_OF_DEATH, DATE_OF_REGISTRATION, AGE_DAYS, AGE_MONTHS, AGE_YEARS, CODE_ICD10, CAUSE_OF_DEATH, DATE_OF_ISSUE, YEAR_OF_REGISTRATION, TYPE_OF_RELATIONSHIP, ID_NUMBER_NEXT_OF_KIN, FORENAME_NEXT_OF_KIN, SURNAME_NEXT_OF_KIN, OTHER_NAME_NEXT_OF_KIN, NATIONALITY_NEXT_OF_KIN, DATE_OF_COLLECTION) VALUES ('D10/00013737/2001', 10, 'BAROLONG', 10, 747517104, 458620, 'ONE', 'DAVIS', 'SAM', 'Motswana', 'FARMER', TO_TIMESTAMP('2003-07-27', 'YYYY-MM-DD'), 'Male', 'ODHOPE', 'ON THE WAY TO THE HOSPITAL', 'Other', TO_TIMESTAMP('2003-07-29', 'YYYY-MM-DD'), NULL, NULL, 78, NULL, 'Unknow', TO_TIMESTAMP('2003-07-30', 'YYYY-MM-DD'), 2003, 'SON/DAUGHTER', 552817604, NULL, NULL, NULL, NULL, TO_TIMESTAMP('2003-08-01', 'YYYY-MM-DD'));
INSERT INTO bdr.V_DEATH (DEATH_CERTIFICATE, DISTRICT_OF_REGISTRATION, DISTRICT_OF_DEATH_NAME, DISTRICT_OF_DEATH, ID_NUMBER, REGISTRATION_NUMBER, FORENAME, SURNAME, OTHER_NAME, NATIONALITY, OCCUPATION, DATE_OF_DEATH, SEX, TOWN_VILL, WARD_STREET, PLACE_OF_DEATH, DATE_OF_REGISTRATION, AGE_DAYS, AGE_MONTHS, AGE_YEARS, CODE_ICD10, CAUSE_OF_DEATH, DATE_OF_ISSUE, YEAR_OF_REGISTRATION, TYPE_OF_RELATIONSHIP, ID_NUMBER_NEXT_OF_KIN, FORENAME_NEXT_OF_KIN, SURNAME_NEXT_OF_KIN, OTHER_NAME_NEXT_OF_KIN, NATIONALITY_NEXT_OF_KIN, DATE_OF_COLLECTION) VALUES ('D14/00013808/2001', 4, 'SELEBI-PHIKWE', 4, 973531301, 798242, 'ONE', 'MARANG', NULL, 'Motswana', 'NIL', TO_TIMESTAMP('2003-07-21', 'YYYY-MM-DD'), 'Female', 'SELEBI PHIKWE', 'SELEBI PHIKWE G. HOSPITAL', 'Health Facility', TO_TIMESTAMP('2003-07-30', 'YYYY-MM-DD'), NULL, NULL, 33, NULL, 'Acute Respiratory Tract Infectio', TO_TIMESTAMP('2006-11-06', 'YYYY-MM-DD'), 2003, 'HUSBAND/WIFE', 417822606, NULL, NULL, NULL, NULL, TO_TIMESTAMP('2013-10-26', 'YYYY-MM-DD'));
INSERT INTO bdr.V_DEATH (DEATH_CERTIFICATE, DISTRICT_OF_REGISTRATION, DISTRICT_OF_DEATH_NAME, DISTRICT_OF_DEATH, ID_NUMBER, REGISTRATION_NUMBER, FORENAME, SURNAME, OTHER_NAME, NATIONALITY, OCCUPATION, DATE_OF_DEATH, SEX, TOWN_VILL, WARD_STREET, PLACE_OF_DEATH, DATE_OF_REGISTRATION, AGE_DAYS, AGE_MONTHS, AGE_YEARS, CODE_ICD10, CAUSE_OF_DEATH, DATE_OF_ISSUE, YEAR_OF_REGISTRATION, TYPE_OF_RELATIONSHIP, ID_NUMBER_NEXT_OF_KIN, FORENAME_NEXT_OF_KIN, SURNAME_NEXT_OF_KIN, OTHER_NAME_NEXT_OF_KIN, NATIONALITY_NEXT_OF_KIN, DATE_OF_COLLECTION) VALUES ('D14/00013823/2001', 4, 'SELEBI-PHIKWE', 4, 579521502, 798858, 'DIPHALANA', 'PHIRI', NULL, 'Motswana', 'NIL', TO_TIMESTAMP('2003-07-20', 'YYYY-MM-DD'), 'Male', 'SELEBI PHIKWE', 'SELEBI PHIKWE G. HOSPITAL', 'Health Facility', TO_TIMESTAMP('2003-07-29', 'YYYY-MM-DD'), NULL, NULL, 47, NULL, 'Viral Encephalopathy due to Retroviral Infectio', TO_TIMESTAMP('2003-08-05', 'YYYY-MM-DD'), 2003, 'HUSBAND/WIFE', 646424104, NULL, NULL, NULL, NULL, TO_TIMESTAMP('2013-10-26', 'YYYY-MM-DD'));
INSERT INTO bdr.V_DEATH (DEATH_CERTIFICATE, DISTRICT_OF_REGISTRATION, DISTRICT_OF_DEATH_NAME, DISTRICT_OF_DEATH, ID_NUMBER, REGISTRATION_NUMBER, FORENAME, SURNAME, OTHER_NAME, NATIONALITY, OCCUPATION, DATE_OF_DEATH, SEX, TOWN_VILL, WARD_STREET, PLACE_OF_DEATH, DATE_OF_REGISTRATION, AGE_DAYS, AGE_MONTHS, AGE_YEARS, CODE_ICD10, CAUSE_OF_DEATH, DATE_OF_ISSUE, YEAR_OF_REGISTRATION, TYPE_OF_RELATIONSHIP, ID_NUMBER_NEXT_OF_KIN, FORENAME_NEXT_OF_KIN, SURNAME_NEXT_OF_KIN, OTHER_NAME_NEXT_OF_KIN, NATIONALITY_NEXT_OF_KIN, DATE_OF_COLLECTION) VALUES ('D10/00013743/2001', 10, 'BAROLONG', 10, 440416505, 446957, 'AMO', 'PHIRING', NULL, 'Motswana', 'UNEMPLOYED', TO_TIMESTAMP('2003-07-25', 'YYYY-MM-DD'), 'Male', 'TSWAANYANENG', 'IKPOLENG WARD', 'Home', TO_TIMESTAMP('2003-07-29', 'YYYY-MM-DD'), NULL, NULL, 59, NULL, 'Unknow', TO_TIMESTAMP('2003-07-30', 'YYYY-MM-DD'), 2003, 'BROTHER/SISTER', 518013006, NULL, NULL, NULL, NULL, TO_TIMESTAMP('2003-08-01', 'YYYY-MM-DD'));
INSERT INTO bdr.V_DEATH (DEATH_CERTIFICATE, DISTRICT_OF_REGISTRATION, DISTRICT_OF_DEATH_NAME, DISTRICT_OF_DEATH, ID_NUMBER, REGISTRATION_NUMBER, FORENAME, SURNAME, OTHER_NAME, NATIONALITY, OCCUPATION, DATE_OF_DEATH, SEX, TOWN_VILL, WARD_STREET, PLACE_OF_DEATH, DATE_OF_REGISTRATION, AGE_DAYS, AGE_MONTHS, AGE_YEARS, CODE_ICD10, CAUSE_OF_DEATH, DATE_OF_ISSUE, YEAR_OF_REGISTRATION, TYPE_OF_RELATIONSHIP, ID_NUMBER_NEXT_OF_KIN, FORENAME_NEXT_OF_KIN, SURNAME_NEXT_OF_KIN, OTHER_NAME_NEXT_OF_KIN, NATIONALITY_NEXT_OF_KIN, DATE_OF_COLLECTION) VALUES ('D19/00013871/2001', 9, 'NGWAKETSE', 9, 463929300, 682237, 'AMEGELANG', 'BAHUMI', NULL, 'Motswana', 'STOCK LADY', TO_TIMESTAMP('2003-07-28', 'YYYY-MM-DD'), 'Female', 'KANYE', 'KANYE SDA HOSPITAL', 'Health Facility', TO_TIMESTAMP('2003-07-30', 'YYYY-MM-DD'), NULL, NULL, 27, NULL, 'Retroviral Infection Plus Pneumocystis Carinii Pneumonia due to Chronic Gastroenteritis', TO_TIMESTAMP('2003-07-31', 'YYYY-MM-DD'), 2003, 'MOTHER', 432529311, NULL, NULL, NULL, NULL, TO_TIMESTAMP('2003-08-01', 'YYYY-MM-DD'));
INSERT INTO bdr.V_DEATH (DEATH_CERTIFICATE, DISTRICT_OF_REGISTRATION, DISTRICT_OF_DEATH_NAME, DISTRICT_OF_DEATH, ID_NUMBER, REGISTRATION_NUMBER, FORENAME, SURNAME, OTHER_NAME, NATIONALITY, OCCUPATION, DATE_OF_DEATH, SEX, TOWN_VILL, WARD_STREET, PLACE_OF_DEATH, DATE_OF_REGISTRATION, AGE_DAYS, AGE_MONTHS, AGE_YEARS, CODE_ICD10, CAUSE_OF_DEATH, DATE_OF_ISSUE, YEAR_OF_REGISTRATION, TYPE_OF_RELATIONSHIP, ID_NUMBER_NEXT_OF_KIN, FORENAME_NEXT_OF_KIN, SURNAME_NEXT_OF_KIN, OTHER_NAME_NEXT_OF_KIN, NATIONALITY_NEXT_OF_KIN, DATE_OF_COLLECTION) VALUES ('D19/00013791/2001', 9, 'NGWAKETSE', 9, 309431507, 97856, 'MAANO', 'MAELE', NULL, 'Motswana', 'UNEMPLOYED', TO_TIMESTAMP('2003-07-13', 'YYYY-MM-DD'), 'Female', 'KANYE', 'TSIMA WARD', 'Home', TO_TIMESTAMP('2003-07-14', 'YYYY-MM-DD'), NULL, NULL, 57, NULL, 'Chronic Renal Failure', TO_TIMESTAMP('2003-07-31', 'YYYY-MM-DD'), 2003, 'SON/DAUGHTER', 116914006, NULL, NULL, NULL, NULL, TO_TIMESTAMP('2003-08-01', 'YYYY-MM-DD'));
INSERT INTO bdr.V_DEATH (DEATH_CERTIFICATE, DISTRICT_OF_REGISTRATION, DISTRICT_OF_DEATH_NAME, DISTRICT_OF_DEATH, ID_NUMBER, REGISTRATION_NUMBER, FORENAME, SURNAME, OTHER_NAME, NATIONALITY, OCCUPATION, DATE_OF_DEATH, SEX, TOWN_VILL, WARD_STREET, PLACE_OF_DEATH, DATE_OF_REGISTRATION, AGE_DAYS, AGE_MONTHS, AGE_YEARS, CODE_ICD10, CAUSE_OF_DEATH, DATE_OF_ISSUE, YEAR_OF_REGISTRATION, TYPE_OF_RELATIONSHIP, ID_NUMBER_NEXT_OF_KIN, FORENAME_NEXT_OF_KIN, SURNAME_NEXT_OF_KIN, OTHER_NAME_NEXT_OF_KIN, NATIONALITY_NEXT_OF_KIN, DATE_OF_COLLECTION) VALUES ('D19/00013853/2001', 9, 'NGWAKETSE', 9, 430812700, 310977, 'MAANO', 'OAGENG', NULL, 'Motswana', 'BRICK LAYER', TO_TIMESTAMP('2003-07-28', 'YYYY-MM-DD'), 'Male', 'KANYE', 'KANYE SDA HOSPITAL', 'Health Facility', TO_TIMESTAMP('2003-07-29', 'YYYY-MM-DD'), NULL, NULL, 36, NULL, 'Cardiac Arrest due to Severe Anemia', TO_TIMESTAMP('2003-07-31', 'YYYY-MM-DD'), 2003, 'UNCLE/ANY OTHER RELATIVE', 43218303, NULL, NULL, NULL, NULL, TO_TIMESTAMP('2003-07-31', 'YYYY-MM-DD'));