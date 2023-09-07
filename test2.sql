CREATE TABLE ABORTCODES
	(
	Id   SMALLINT NOT NULL,
	Name VARCHAR (65) NULL,
	PRIMARY KEY (Id)
	)

;


CREATE TABLE ACCESSLEVELTEMPLATE
	(
	TemplateName VARCHAR (64) NOT NULL,
	GAGNo        INT NOT NULL,
	FAGNo        INT NULL,
	StartDay     INT NOT NULL,
	EndDay       INT NOT NULL
	)

;

CREATE INDEX IDX_ACCESSLEVELTEMPLATE_TemplateName
	ON ACCESSLEVELTEMPLATE (TemplateName)

;

CREATE TABLE ACTIONTYPES
	(
	MsgNo   SMALLINT NOT NULL,
	MsgText VARCHAR (81) NULL,
	PRIMARY KEY (MsgNo)
	)

;

CREATE TABLE ADDRESS
	(
	SeqNo       INT NOT NULL,
	LastName    VARCHAR (41) NOT NULL,
	FirstName   VARCHAR (41) NULL,
	MiddleName  VARCHAR (2) NULL,
	DOB         INT NULL,
	PersonalID  VARCHAR (16) NOT NULL,
	Title       SMALLINT NULL,
	Dept        SMALLINT NULL,
	Street      VARCHAR (48) NULL,
	City        VARCHAR (16) NULL,
	State       VARCHAR (12) NULL,
	Zip         VARCHAR (12) NULL,
	HomePhone   VARCHAR (20) NULL,
	OfficePhone VARCHAR (20) NULL,
	PhoneExt    VARCHAR (10) NULL,
	MobilePhone VARCHAR (20) NULL,
	Email       VARCHAR (32) NULL,
	UserField1  VARCHAR (21) NULL,
	UserField2  VARCHAR (21) NULL,
	FileName1   VARCHAR (24) NULL,
	FileName2   VARCHAR (24) NULL,
	FileName3   VARCHAR (24) NULL,
	PRIMARY KEY (SeqNo)
	)
;

CREATE TABLE ALMGRPS
	(
	MsgNo   SMALLINT NOT NULL,
	MsgText VARCHAR (81) NULL,
	PRIMARY KEY (MsgNo)
	)
;

CREATE TABLE ALMPOINTSTATISTIC
	(
	EventNo  INT NOT NULL,
	A1A2     SMALLINT NULL,
	D2       TINYINT NULL,
	AlmGroup TINYINT NULL,
	FC       TINYINT NOT NULL,
	SeqNo    INT NOT NULL,
	Policed  TINYINT NULL,
	PRIMARY KEY (SeqNo)
	)
;

CREATE INDEX EVENT_IND
	ON ALMPOINTSTATISTIC (EventNo)
;

CREATE INDEX ALMPT_A1A2D2_IDX
	ON ALMPOINTSTATISTIC (A1A2, D2)
;

CREATE INDEX ALMPT_A1A2_IDX
	ON ALMPOINTSTATISTIC (A1A2)
;

CREATE TABLE ALMSEQNO
	(
	SeqNo INT NOT NULL
	)
;

CREATE TABLE ALMTYPE
	(
	MsgNo   SMALLINT NOT NULL,
	MsgText VARCHAR (81) NULL,
	PRIMARY KEY (MsgNo)
	)
;

CREATE TABLE ALMVOC_CUSTOM
	(
	RTUNumber   INT NOT NULL,
	InputNumber INT NOT NULL,
	InputName   VARCHAR (81) NULL,
	PRIMARY KEY (RTUNumber, InputNumber)
	)
;

CREATE TABLE ALMVOC01
	(
	MsgNo   SMALLINT NOT NULL,
	MsgText VARCHAR (81) NULL,
	PRIMARY KEY (MsgNo)
	)
;

