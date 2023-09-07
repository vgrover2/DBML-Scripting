CREATE TABLE ABORTCODES(
	Id smallint PRIMARY KEY,
	Name varchar(65) NULL
);

CREATE TABLE ACCESSLEVELTEMPLATE(
	TemplateName varchar(64) NOT NULL,
	GAGNo int NOT NULL,
	FAGNo int NULL,
	StartDay int NOT NULL,
	EndDay int NOT NULL
); 

CREATE TABLE ACTIONTYPES(
	MsgNo smallint PRIMARY KEY,
	MsgText varchar(81) NULL
);

CREATE TABLE ADDRESS(
	SeqNo int PRIMARY KEY,
	LastName varchar(41) NOT NULL,
	FirstName varchar(41) NULL,
	MiddleName varchar(2) NULL,
	DOB int NULL,
	PersonalID varchar(16) NOT NULL,
	Title smallint NULL,
	Dept smallint NULL,
	Street varchar(48) NULL,
	City varchar(16) NULL,
	State varchar(12) NULL,
	Zip varchar(12) NULL,
	HomePhone varchar(20) NULL,
	OfficePhone varchar(20) NULL,
	PhoneExt varchar(10) NULL,
	MobilePhone varchar(20) NULL,
	Email varchar(32) NULL,
	UserField1 varchar(21) NULL,
	UserField2 varchar(21) NULL,
	FileName1 varchar(24) NULL,
	FileName2 varchar(24) NULL,
	FileName3 varchar(24) NULL
);

CREATE TABLE ALMGRPS(
	MsgNo smallint PRIMARY KEY,
	MsgText varchar(81) NULL
);

CREATE TABLE ALMVOC06(
	MsgNo smallint PRIMARY KEY,
	MsgText varchar(81) NULL
);

CREATE TABLE ALMVOC07(
	MsgNo smallint PRIMARY KEY,
	MsgText varchar(81) NULL
); 

CREATE TABLE ALMVOC08(
	MsgNo smallint PRIMARY KEY,
	MsgText varchar(81) NULL
);

CREATE TABLE ALMVOC09(
	MsgNo smallint PRIMARY KEY,
	MsgText varchar(81) NULL
); 

CREATE TABLE ALMVOC10(
	MsgNo smallint PRIMARY KEY,
	MsgText varchar(81) NULL
); 

CREATE TABLE ALMVOC11(
	MsgNo smallint NOT NULL,
	MsgText varchar(81) NULL
); 

CREATE TABLE ALMVOC12(
	MsgNo smallint PRIMARY KEY,
	MsgText varchar(81) NULL
); 

CREATE TABLE ALMVOC13(
	MsgNo smallint PRIMARY KEY,
	MsgText varchar(81) NULL
); 

CREATE TABLE ALMVOC14(
	MsgNo smallint PRIMARY KEY,
	MsgText varchar(81) NULL
); 

CREATE TABLE ALMVOC15(
	MsgNo smallint PRIMARY KEY,
	MsgText varchar(81) NULL
); 

CREATE TABLE ALMVOCAB(
	MsgNo smallint PRIMARY KEY,
	MsgText varchar(81) NULL
); 

CREATE TABLE BMSDATA(
	RtuNo smallint NOT NULL,
	AreaNo tinyint NOT NULL,
	SeqNo smallint NOT NULL,
	PointNo smallint NOT NULL,
	Type smallint NOT NULL,
	Value real NOT NULL,
	Range real NOT NULL,
	Unit varchar(9) NULL,
	OnText varchar(17) NULL,
	OffText varchar(17) NULL,
	BmpName varchar(24) NULL,
	DisplayPosition tinyint NOT NULL,
	Spare binary(8) NOT NULL,
	DeviceName varchar(24) NULL,
	Manufacturer smallint NOT NULL,
	Model varchar(16) NULL,
	SerialNo varchar(16) NULL,
	Location varchar(33) NULL,
	MiscData binary(66) NOT NULL
);

CREATE TABLE CACFG(
	MsgNo smallint PRIMARY KEY,
	MsgText varchar(81) NULL
); 

CREATE TABLE CAGRPS(
	MsgNo smallint PRIMARY KEY,
	MsgText varchar(81) NULL
); 

CREATE TABLE CALLINFOCFG(
	SiteNo smallint PRIMARY KEY,
	ActionNo smallint PRIMARY KEY,
	ActionType tinyint NULL,
	RespType tinyint NULL,
	ExRespType smallint NULL,
	Phone varchar(20) NULL,
	InfoText varchar(512) NULL,
	StartTime1 int NULL,
	StartTime2 int NULL,
	StartTime3 int NULL,
	StartTime4 int NULL,
	EndTime1 int NULL,
	EndTime2 int NULL,
	EndTime3 int NULL,
	EndTime4 int NULL,
	VoiceCode varchar(16) NULL,
	Counter smallint NULL,
	TimeToArrive tinyint NULL
);

CREATE TABLE CAMALM(
	MsgNo smallint PRIMARY KEY,
	MsgText varchar(81) NULL
);

CREATE TABLE CAMALMR(
	MsgNo smallint PRIMARY KEY,
	MsgText varchar(81) NULL
);

CREATE TABLE CAMDATA(
	RtuNo smallint NOT NULL,
	AreaNo tinyint NOT NULL,
	SeqNo smallint NOT NULL,
	PointNo smallint NOT NULL,
	Manufacturer smallint NOT NULL,
	Model varchar(16) NULL,
	SerialNo varchar(16) NULL,
	Location varchar(33) NULL,
	MiscData binary(66) NULL
); 

CREATE TABLE CAMVOCAB(
	MsgNo smallint PRIMARY KEY,
	MsgText varchar(81) NULL
);

CREATE TABLE CARDACCERRORS(
	MsgNo smallint PRIMARY KEY,
	MsgText varchar(81) NULL
);

CREATE TABLE CARDACCESSINFO(
	CardNumber varchar(17) NOT NULL,
	GAGNo int NULL,
	FAGNo int NULL
);

CREATE TABLE CARDACCFLAGS(
	MsgNo smallint PRIMARY KEY,
	MsgText varchar(81) NULL
);

CREATE TABLE CARDCODE(
	CardNumber varchar(17) PRIMARY KEY,
	CardCode int NOT NULL,
	Spare tinyint NOT NULL,
	IssueNo tinyint NOT NULL,
	Facility smallint NOT NULL,
	PrintedNo int NULL
);

CREATE TABLE CARDDETAIL(
	CardNumber varchar(17) PRIMARY KEY,
	LastName varchar(41) NULL,
	FirstName varchar(41) NULL,
	MidleName varchar(2) NULL,
	DOB int NULL,
	PersonalID varchar(16) NULL,
	Title smallint NULL,
	Street varchar(48) NULL,
	City varchar(16) NULL,
	State varchar(12) NULL,
	Zip varchar(12) NULL,
	HomePhone varchar(20) NULL,
	OfficePhone varchar(20) NULL,
	PhoneExt varchar(10) NULL,
	Dept smallint NULL,
	ModOperator varchar(32) NULL,
	ModTime int NULL,
	ModDate int NULL,
	UserField1 varchar(41) NULL,
	UserField2 varchar(41) NULL,
	UserField3 varchar(41) NULL,
	UserField4 varchar(41) NULL,
	UserField5 varchar(41) NULL,
	UserField6 varchar(41) NULL,
	UserField7 varchar(41) NULL,
	UserField8 varchar(41) NULL,
	UserField9 varchar(21) NULL,
	UserField10 varchar(21) NULL,
	UserField11 varchar(21) NULL,
	UserField12 varchar(21) NULL,
	UserField13 varchar(21) NULL,
	UserField14 varchar(21) NULL,
	UserField15 varchar(21) NULL,
	UserField16 varchar(21) NULL
);

CREATE TABLE CARDHOLDER(
	LastName varchar(21) NULL,
	FirstName varchar(21) NULL,
	MidleName char(2) NULL,
	DOB smallint NULL,
	PersonalID varchar(16) NULL,
	Title smallint NULL,
	Street varchar(48) NULL,
	City varchar(16) NULL,
	State varchar(12) NULL,
	Zip varchar(12) NULL,
	HomePhone varchar(20) NULL,
	OfficePhone varchar(20) NULL,
	PhoneExt varchar(10) NULL,
	Dept varchar(20) NULL,
	CardCode int NOT NULL,
	CardSrNo int NOT NULL,
	CardIssueNo tinyint NOT NULL,
	CardType tinyint NULL,
	PIN binary(4) NULL,
	DuressPIN binary(4) NULL,
	FacilityCode int NOT NULL,
	Flags1 tinyint NULL,
	Flags2 tinyint NULL,
	Flags3 tinyint NULL,
	ValidDateFrom smallint NOT NULL,
	ValidDateTo smallint NOT NULL,
	ReaderGroup1 tinyint NULL,
	ReaderGroup2 tinyint NULL,
	ReaderGroup3 tinyint NULL,
	ReaderGroup4 tinyint NULL,
	ReaderGroup5 tinyint NULL,
	ReaderGroup6 tinyint NULL,
	ReaderGroup7 tinyint NULL,
	ReaderGroup8 tinyint NULL,
	TimeGroup1 tinyint NULL,
	TimeGroup2 tinyint NULL,
	TimeGroup3 tinyint NULL,
	TimeGroup4 tinyint NULL,
	TimeGroup5 tinyint NULL,
	TimeGroup6 tinyint NULL,
	TimeGroup7 tinyint NULL,
	TimeGroup8 tinyint NULL,
	Status tinyint NULL,
	SiteGroup smallint NULL,
	ModOperator varchar(32) NULL,
	ModTime smallint NULL,
	ModDate smallint NULL,
	UserField1 varchar(21) NULL,
	UserField2 varchar(21) NULL,
	UserField3 varchar(21) NULL,
	UserField4 varchar(21) NULL,
	UserField5 varchar(21) NULL,
	UserField6 varchar(21) NULL,
	UserField7 varchar(21) NULL,
	UserField8 varchar(21) NULL,
	UserField9 varchar(21) NULL,
	UserField10 varchar(21) NULL,
	UserField11 varchar(21) NULL,
	UserField12 varchar(21) NULL,
	UserField13 varchar(21) NULL,
	UserField14 varchar(21) NULL,
	UserField15 varchar(21) NULL,
	UserField16 varchar(21) NULL,
	SiteGroup1 smallint NULL,
	SiteGroup2 smallint NULL,
	SiteGroup3 smallint NULL,
	SiteGroup4 smallint NULL,
	SiteGroup5 smallint NULL,
	SiteGroup6 smallint NULL,
	SiteGroup7 smallint NULL,
	SiteGroup8 smallint NULL
);

CREATE TABLE CARDINFO(
	CardNumber varchar(17) PRIMARY KEY,
	CardSrNo int NULL,
	CardType tinyint NULL,
	PIN binary(4) NULL,
	DuressPIN binary(4) NULL,
	Flags1 tinyint NULL,
	Flags2 tinyint NULL,
	Flags3 tinyint NULL,
	ValidDateFrom int NULL,
	ValidDateTo int NULL,
	Status tinyint NULL,
	SiteGroup smallint NULL,
	Days tinyint NULL,
	Spare smallint NULL
); 

CREATE TABLE CARDSTATUSTYPES(
	Id smallint PRIMARY KEY,
	Name varchar(65) NULL
);

CREATE TABLE CARDSTS(
	CardCode int PRIMARY KEY,
	CardHigh tinyint NULL,
	IssueNo tinyint NOT NULL,
	Facility smallint NOT NULL,
	PrintedNo int NOT NULL,
	SiteNo smallint NOT NULL,
	TransactionType tinyint NOT NULL,
	ReaderNo tinyint NULL,
	HH tinyint NOT NULL,
	MM tinyint NOT NULL,
	SS tinyint NOT NULL,
	DayMonth smallint NOT NULL,
	Status tinyint NOT NULL,
	Year smallint NOT NULL,
	AreaNo tinyint NULL,
	YMD int NULL,
	CardNumber varchar(17) NOT NULL
); 

CREATE TABLE CARDTYPES(
	Id smallint PRIMARY KEY,
	Name varchar(65) NULL
); 

CREATE TABLE CARDUSERDEFS(
	Id smallint PRIMARY KEY,
	Name varchar(65) NULL
); 

CREATE TABLE CARDUSERTYPES(
	Id smallint PRIMARY KEY,
	Name varchar(65) NULL
); 

CREATE TABLE CASTS(
	MsgNo smallint PRIMARY KEY,
	MsgText varchar(81) NULL
); 

CREATE TABLE CCTVVOCAB(
	MsgNo smallint PRIMARY KEY,
	MsgText varchar(81) NULL
);

CREATE TABLE CFGCHG(
	MsgNo smallint PRIMARY KEY,
	MsgText varchar(81) NULL
);

CREATE TABLE CMDSHORTCUTDATA(
	RtuNo smallint NOT NULL,
	AreaNo tinyint NOT NULL,
	SeqNo smallint NOT NULL,
	Name varchar(33) NOT NULL,
	BmpName varchar(32) NOT NULL,
	Cmd1_Spare1 int NOT NULL,
	Cmd1_SiteGroup smallint NOT NULL,
	Cmd1_Spare2 int NULL,
	Cmd1_PointGroup smallint NULL,
	Cmd1_CommandName varchar(66) NOT NULL,
	Cmd1_PointType tinyint NOT NULL,
	Cmd1_CommandType tinyint NOT NULL,
	Cmd1_SubType tinyint NOT NULL,
	Cmd1_TimeUntil smallint NOT NULL,
	Cmd2_Spare1 int NOT NULL,
	Cmd2_SiteGroup smallint NOT NULL,
	Cmd2_Spare2 int NULL,
	Cmd2_PointGroup smallint NULL,
	Cmd2_CommandName varchar(66) NOT NULL,
	Cmd2_PointType tinyint NOT NULL,
	Cmd2_CommandType tinyint NOT NULL,
	Cmd2_SubType tinyint NOT NULL,
	Cmd2_TimeUntil smallint NOT NULL
);

CREATE TABLE COMALM(
	MsgNo smallint PRIMARY KEY,
	MsgText varchar(81) NULL
); 

CREATE TABLE COMALMR(
	MsgNo smallint PRIMARY KEY,
	MsgText varchar(81) NULL
); 


CREATE TABLE COMMGRPS(
	MsgNo smallint PRIMARY KEY,
	MsgText varchar(81) NULL
); 

CREATE TABLE CONSOLESTATUS(
	MsgNo smallint PRIMARY KEY,
	MsgText varchar(81) NULL
); 

CREATE TABLE CONSOLETYPES(
	MsgNo smallint PRIMARY KEY,
	MsgText varchar(81) NULL
); 

CREATE TABLE ControllerInfos(
	RtuNo smallint PRIMARY KEY,
	RtuType tinyint NULL,
	PanelType tinyint NULL,
	NetType tinyint NULL,
	VocabList tinyint NULL,
	NetAddress varchar(16) NULL,
	LineCardNum varchar(10) NULL,
	LineCard_A1 varchar(16) NULL,
	LineCard_A2 varchar(16) NULL,
	LineCard_B1 varchar(16) NULL,
	LineCard_B2 varchar(16) NULL,
	EMCSIP varchar(16) NULL,
	Version_1 varchar(6) NULL,
	Version_2 varchar(6) NULL,
	SerialNumber varchar(17) NULL,
	UserField1 varchar(21) NULL,
	UserField2 varchar(21) NULL,
	UserField3 varchar(21) NULL,
	UserField4 varchar(21) NULL
); 

CREATE TABLE CPUDEV(
	MsgNo smallint PRIMARY KEY,
	MsgText varchar(81) NULL
); 


CREATE TABLE CRDATA(
	RtuNo smallint NOT NULL,
	AreaNo tinyint NOT NULL,
	SeqNo smallint NOT NULL,
	PointNo smallint NOT NULL,
	Model smallint NULL,
	SerialNo varchar(16) NULL,
	Location varchar(33) NULL,
	MiscData2 binary(15) NULL,
	CatnType smallint NULL,
	FloorRange smallint NULL,
	MiscData binary(66) NULL
);

CREATE TABLE CRTYPE(
	MsgNo smallint PRIMARY KEY,
	MsgText varchar(81) NULL
); 

CREATE TABLE DefaultAccessItemsSearchCriteria(
	SearchItemId tinyint PRIMARY KEY,
	OperatorId int NULL,
	SearchCategory int NULL,
	SubSearchCategory int NULL,
	SearchOperator varchar(10) NULL,
	SearchBy int NULL,
	Value varchar(100) NULL
);

CREATE TABLE DELETECARDS(
	CardNumber varchar(17) NOT NULL,
	LastName varchar(41) NULL,
	FirstName varchar(41) NULL,
	MidleName varchar(2) NULL,
	DOB int NULL,
	PersonalID varchar(16) NULL,
	Title smallint NULL,
	Street varchar(48) NULL,
	City varchar(16) NULL,
	State varchar(12) NULL,
	Zip varchar(12) NULL,
	HomePhone varchar(20) NULL,
	OfficePhone varchar(20) NULL,
	PhoneExt varchar(10) NULL,
	Dept smallint NULL,
	ModOperator varchar(32) NULL,
	ModTime int NULL,
	ModDate int NULL,
	UserField1 varchar(41) NULL,
	UserField2 varchar(41) NULL,
	UserField3 varchar(41) NULL,
	UserField4 varchar(41) NULL,
	UserField5 varchar(41) NULL,
	UserField6 varchar(41) NULL,
	UserField7 varchar(41) NULL,
	UserField8 varchar(41) NULL,
	UserField9 varchar(21) NULL,
	UserField10 varchar(21) NULL,
	UserField11 varchar(21) NULL,
	UserField12 varchar(21) NULL,
	UserField13 varchar(21) NULL,
	UserField14 varchar(21) NULL,
	UserField15 varchar(21) NULL,
	UserField16 varchar(21) NULL,
	CardSrNo int NULL,
	CardType tinyint NULL,
	PIN binary(4) NULL,
	DuressPIN binary(4) NULL,
	Flags1 tinyint NULL,
	Flags2 tinyint NULL,
	Flags3 tinyint NULL,
	ValidDateFrom int NULL,
	ValidDateTo int NULL,
	Status tinyint NULL,
	GAGNo int NULL,
	FAGNo int NULL,
	TempGAGNo int NULL,
	TempFAGNo int NULL,
	StartTempDate int NULL,
	EndTempDate int NULL,
	DeleteDate datetime NOT NULL
);

CREATE TABLE DEPARTMENT(
	Id smallint PRIMARY KEY,
	Name varchar(65) NULL
);

CREATE TABLE DEVICETYPE(
	MsgNo smallint PRIMARY KEY,
	MsgText varchar(81) NULL
);

CREATE TABLE DVCDATA(
	RtuNo smallint NOT NULL,
	AreaNo tinyint NOT NULL,
	SeqNo smallint NOT NULL,
	PointNo smallint NOT NULL,
	Model smallint NULL,
	SerialNo varchar(16) NULL,
	Location varchar(33) NULL,
	Address varchar(32) NULL,
	Data binary(14) NULL,
	UserName varchar(32) NULL,
	Password binary(32) NULL,
	Address2 varchar(32) NULL,
	MiscData binary(66) NULL
);

CREATE TABLE DVRACT(
	MsgNo smallint PRIMARY KEY,
	MsgText varchar(81) NULL
);

CREATE TABLE ELEMTYPE(
	MsgNo smallint PRIMARY KEY,
	MsgText varchar(81) NULL
);

CREATE TABLE EMPPRIVI(
	MsgNo smallint PRIMARY KEY,
	MsgText varchar(81) NULL
); 

CREATE TABLE EVENTACTIONSTATUS(
	MsgNo smallint PRIMARY KEY,
	MsgText varchar(81) NULL
); 

CREATE TABLE EVENTCALLSTATUS(
	MsgNo smallint PRIMARY KEY,
	MsgText varchar(81) NULL
); 

CREATE TABLE EVENTCODES(
	Id smallint PRIMARY KEY,
	Name varchar(65) NULL
); 

CREATE TABLE EventResponseText(
	YMD int NOT NULL,
	HMS int NOT NULL,
	EventNo int NOT NULL,
	AlarmGroup tinyint NOT NULL,
	StatusCode tinyint NOT NULL,
	ActionType tinyint NOT NULL,
	ResponseType tinyint NOT NULL,
	Phone varchar(20) NULL,
	MessageText varchar(2000) NULL,
	SiteNo smallint NULL,
	OperatorNo smallint NULL,
	ConsoleNo tinyint NULL,
	FC tinyint NULL
); 

CREATE TABLE EVENTTYPES(
	MsgNo smallint PRIMARY KEY,
	MsgText varchar(81) NULL
); 

CREATE TABLE EVENTYPE(
	MsgNo smallint PRIMARY KEY,
	MsgText varchar(81) NULL
); 

CREATE TABLE EXPANDED(
	NoteNo smallint PRIMARY KEY,
	Text text NULL
);

CREATE TABLE EXTDISOL(
	MsgNo smallint PRIMARY KEY,
	MsgText varchar(81) NULL
);

CREATE TABLE EXTISOL(
	MsgNo smallint PRIMARY KEY,
	MsgText varchar(81) NULL
); 

CREATE TABLE EXTPDESC(
	NoteNo smallint PRIMARY KEY,
	Text text NULL
);  

CREATE TABLE FAT(
	FatNo int PRIMARY KEY,
	Name varchar(64) NOT NULL
); 

CREATE TABLE FATCFG(
	FatNo int PRIMARY KEY,
	SiteNo smallint PRIMARY KEY,
	FalNo smallint PRIMARY KEY
); 

CREATE TABLE FCSTRGS(
	MsgNo smallint PRIMARY KEY,
	MsgText varchar(81) NULL
); 


CREATE TABLE FIELDDATA(
	FieldId smallint PRIMARY KEY,
	FieldName varchar(50) NOT NULL,
	SqlSelect varchar(100) NOT NULL,
	CRFormula varchar(100) NOT NULL,
	ValueSource varchar(50) NOT NULL,
	SubGroups varchar(50) NULL,
	DataType smallint NOT NULL,
	Length smallint NULL
); 

CREATE TABLE FLOOR(
	SiteNo smallint PRIMARY KEY,
	FloorNo tinyint PRIMARY KEY,
	Name varchar(33) NULL
); 

CREATE TABLE FLOORACCESSLEVEL(
	SiteNo smallint PRIMARY KEY,
	FalNo smallint PRIMARY KEY,
	Name varchar(64) NOT NULL
);

CREATE TABLE FLOORACCESSLEVELCFG(
	SiteNo smallint PRIMARY KEY,
	FalNo smallint PRIMARY KEY,
	id smallint PRIMARY KEY,
	FloorGroup smallint NOT NULL,
	TZoneGroup smallint NOT NULL
); 

CREATE TABLE FLOORGROUP(
	SiteNo smallint PRIMARY KEY,
	GroupNo smallint PRIMARY KEY,
	GroupName varchar(33) NOT NULL,
	FloorList1 int NULL,
	FloorList2 int NULL,
	FloorList3 int NULL,
	FloorList4 int NULL
);

CREATE TABLE FORMAT(
	MsgNo smallint PRIMARY KEY,
	MsgText varchar(81) NULL
); 

CREATE TABLE GLOBALACCESSGROUP(
	GagNo int PRIMARY KEY,
	Name varchar(64) NOT NULL,
	SiteGroup smallint NOT NULL
); 

CREATE TABLE GLOBALACCESSGROUPCFG(
	GagNo int NOT NULL,
	GrgNo int NOT NULL
); 

CREATE TABLE GLOBALREADERGROUP(
	GrgNo int PRIMARY KEY,
	Name varchar(64) NOT NULL
);

CREATE TABLE GLOBALREADERGROUPCFG(
	GrgNo int NOT NULL,
	SiteNo smallint NOT NULL,
	ReaderNo tinyint NOT NULL,
	TZoneNo tinyint NOT NULL
);

CREATE TABLE GMSALM(
	MsgNo smallint PRIMARY KEY,
	MsgText varchar(81) NULL
); 

CREATE TABLE GMSCMD(
	MsgNo smallint PRIMARY KEY,
	MsgText varchar(81) NULL
); 

CREATE TABLE GMSERROR(
	MsgNo smallint PRIMARY KEY,
	MsgText varchar(81) NULL
);

CREATE TABLE GMSGRPS(
	MsgNo smallint PRIMARY KEY,
	MsgText varchar(81) NULL
);

CREATE TABLE GMSMOD(
	MsgNo smallint PRIMARY KEY,
	MsgText varchar(81) NULL
); 

CREATE TABLE GMSSALM(
	MsgNo smallint PRIMARY KEY,
	MsgText varchar(81) NULL
);

CREATE TABLE GmsServerConfig(
	Configuration varchar(64) NULL,
	Name varchar(64) NULL,
	Value varchar(1024) NULL
);

CREATE TABLE GmsStringTables(
	TableName varchar(64) NULL,
	FileTime datetime NULL
);

CREATE TABLE GMSSTS(
	MsgNo smallint PRIMARY KEY,
	MsgText varchar(81) NULL
); 

CREATE TABLE HOLIDAYCFG(
	SeqNo tinyint PRIMARY KEY,
	Year smallint NOT NULL,
	Month tinyint NOT NULL,
	Day tinyint NOT NULL,
	Description varchar(33) NULL,
	Flag tinyint NULL,
	Mask tinyint NULL
); 

CREATE TABLE IALMGRPS(
	MsgNo smallint PRIMARY KEY,
	MsgText varchar(81) NULL
);

CREATE TABLE INSTRUCTIONS(
	SiteNo smallint PRIMARY KEY,
	ActionNo smallint PRIMARY KEY,
	Text varchar(255) NULL
); 

CREATE TABLE INTALM(
	MsgNo smallint PRIMARY KEY,
	MsgText varchar(81) NULL
);

CREATE TABLE INTALMR(
	MsgNo smallint PRIMARY KEY,
	MsgText varchar(81) NULL
);

CREATE TABLE INTDISOL(
	MsgNo smallint PRIMARY KEY,
	MsgText varchar(81) NULL
);

CREATE TABLE INTERCOMDATA(
	RtuNo smallint NOT NULL,
	AreaNo tinyint NOT NULL,
	SeqNo smallint NOT NULL,
	DeviceID smallint NOT NULL,
	Location varchar(33) NULL,
	MiscData binary(2) NULL
); 

CREATE TABLE INTERCOMRESPONSE(
	MsgNo smallint PRIMARY KEY,
	MsgText varchar(81) NULL
); 

CREATE TABLE INTISOL(
	MsgNo smallint PRIMARY KEY,
	MsgText varchar(81) NULL
); 

CREATE TABLE IPDATA(
	RtuNo smallint NOT NULL,
	AreaNo tinyint NOT NULL,
	SeqNo smallint NOT NULL,
	PointNo smallint NOT NULL,
	Type smallint NULL,
	Manufacturer smallint NULL,
	Model varchar(16) NULL,
	SerialNo varchar(16) NULL,
	Location varchar(33) NULL,
	MiscData binary(70) NULL
); 

CREATE TABLE IPTYPE(
	MsgNo smallint PRIMARY KEY,
	MsgText varchar(81) NULL
); 

CREATE TABLE IVRCMDS(
	MsgNo smallint PRIMARY KEY,
	MsgText varchar(81) NULL
);

CREATE TABLE KBDATA(
	RtuNo smallint NOT NULL,
	AreaNo tinyint NOT NULL,
	SeqNo smallint NOT NULL,
	PointNo smallint NOT NULL,
	Model smallint NULL,
	SerialNo varchar(16) NULL,
	Location varchar(33) NULL,
	MiscData binary(66) NULL
);

CREATE TABLE KBTYPE(
	MsgNo smallint PRIMARY KEY,
	MsgText varchar(81) NULL
);

CREATE TABLE LINKEDCARDS(
	CardNumber varchar(17) PRIMARY KEY,
	Dependant varchar(17) PRIMARY KEY
);

CREATE TABLE LOG_CARD(
	WD tinyint NULL,
	YMD int NULL,
	HMS int NULL,
	UserNo1 tinyint NULL,
	FC tinyint NOT NULL,
	A1A2 smallint NULL,
	Port tinyint NULL,
	D1 tinyint NULL,
	D2 tinyint NULL,
	D3 tinyint NULL,
	D4 tinyint NULL,
	D5 tinyint NULL,
	D6 tinyint NULL,
	D7 tinyint NULL,
	D8 tinyint NULL,
	D9 tinyint NULL,
	D10 tinyint NULL,
	D11 tinyint NULL,
	ConsoleNo tinyint NULL,
	EventNo int NULL,
	Priority tinyint NULL,
	User1 tinyint NULL,
	User2 tinyint NULL,
	Spare tinyint NULL,
	SeqNo int NOT NULL,
	D12_15 int NULL,
	D16_17 smallint NULL,
	CardNumber char(17) NULL
); 

CREATE TABLE LOGDATA(
	WD tinyint NULL,
	YMD int NULL,
	HMS int NULL,
	UserNo1 tinyint NULL,
	FC tinyint NOT NULL,
	A1A2 smallint NULL,
	Port tinyint NULL,
	D1 tinyint NULL,
	D2 tinyint NULL,
	D3 tinyint NULL,
	D4 tinyint NULL,
	D5 tinyint NULL,
	D6 tinyint NULL,
	D7 tinyint NULL,
	D8 tinyint NULL,
	D9 tinyint NULL,
	D10 tinyint NULL,
	D11 tinyint NULL,
	ConsoleNo tinyint NULL,
	EventNo int NULL,
	Priority tinyint NULL,
	User1 tinyint NULL,
	User2 tinyint NULL,
	Spare tinyint NULL,
	SeqNo int PRIMARY KEY,
	D12_15 int NULL,
	D16_17 smallint NULL
);

CREATE TABLE LOGSEQUENCE(
	YMD int PRIMARY KEY,
	SeqNo int PRIMARY KEY
);

CREATE TABLE MANUFACTURER(
	MsgNo smallint PRIMARY KEY,
	MsgText varchar(81) NULL
);

CREATE TABLE MAPDATA(
	RtuNo smallint NOT NULL,
	AreaNo tinyint NOT NULL,
	SeqNo smallint NOT NULL,
	MapData binary(18) NULL
);

CREATE TABLE MBACT(
	MsgNo smallint PRIMARY KEY,
	MsgText varchar(81) NULL
);

CREATE TABLE MODEGRPS(
	MsgNo smallint PRIMARY KEY,
	MsgText varchar(81) NULL
); 

CREATE TABLE MODEIN(
	MsgNo smallint PRIMARY KEY,
	MsgText varchar(81) NULL
); 

CREATE TABLE MODEOUT(
	MsgNo smallint PRIMARY KEY,
	MsgText varchar(81) NULL
);

CREATE TABLE MSGBOARD(
	Type tinyint NULL,
	Author smallint NULL,
	Destination int NULL,
	TextIndex int NULL,
	CreateDate int NULL,
	CreateTime int NULL,
	ValidFromDate int NULL,
	ValidFromTime int NULL,
	ValidToDate int NULL,
	ValidToTime int NULL,
	DeliveryDate int NULL,
	DeliveryTime int NULL,
	Reader smallint NULL,
	MessageId varchar(12) PRIMARY KEY,
	Subject varchar(128) NULL,
	SiteNo smallint NULL
);

CREATE TABLE MSGTEXT(
	TextIndex int PRIMARY KEY,
	Content varchar(2048) NULL
);

CREATE TABLE NETAGRPS(
	MsgNo smallint PRIMARY KEY,
	MsgText varchar(81) NULL
);

CREATE TABLE NETALM(
	MsgNo smallint PRIMARY KEY,
	MsgText varchar(81) NULL
);

CREATE TABLE NETALMR(
	MsgNo smallint PRIMARY KEY,
	MsgText varchar(81) NULL
); 

CREATE TABLE NETCMD(
	MsgNo smallint PRIMARY KEY,
	MsgText varchar(81) NULL
); 

CREATE TABLE NETLCMD(
	MsgNo smallint PRIMARY KEY,
	MsgText varchar(81) NULL
);

CREATE TABLE NETSGRPS(
	MsgNo smallint PRIMARY KEY,
	MsgText varchar(81) NULL
);

CREATE TABLE NETSTSR(
	MsgNo smallint PRIMARY KEY,
	MsgText varchar(81) NULL
);

CREATE TABLE NETSTUS(
	MsgNo smallint PRIMARY KEY,
	MsgText varchar(81) NULL
);

CREATE TABLE NETTYPE(
	MsgNo smallint PRIMARY KEY,
	MsgText varchar(81) NULL
);

CREATE TABLE NETWRSP(
	MsgNo smallint PRIMARY KEY,
	MsgText varchar(81) NULL
); 

CREATE TABLE OPDATA(
	RtuNo smallint NOT NULL,
	AreaNo tinyint NOT NULL,
	SeqNo smallint NOT NULL,
	PointNo smallint NOT NULL,
	Type smallint NULL,
	Location varchar(33) NULL,
	MiscData binary(66) NULL
);

CREATE TABLE OPERATORS(
	OperatorNo smallint PRIMARY KEY,
	Password binary(25) NULL,
	Login varchar(33) NULL,
	ObjectName varchar(61) NULL,
	PinNum int NULL,
	LastName varchar(21) NULL,
	Initial varchar(7) NULL,
	Address varchar(51) NULL,
	Phone varchar(21) NULL,
	UserAccess1 int NULL,
	UserAccess2 int NULL,
	UserAccess3 int NULL,
	UserAccess4 int NULL,
	UserAccess5 int NULL,
	UserAccess6 int NULL,
	UserAccess7 int NULL,
	UserAccess8 int NULL,
	UserAccess9 int NULL,
	UserAccess10 int NULL,
	UserAccess11 int NULL,
	UserAccess12 int NULL,
	UserAccess13 int NULL,
	UserAccess14 int NULL,
	UserAccess15 int NULL,
	UserAccess16 int NULL,
	StartRange smallint NULL,
	EndRange smallint NULL,
	ExpiryDate int NULL,
	Valid_Type smallint NULL,
	Status smallint NULL,
	Timer smallint NULL,
	DisplayName varchar(32) NULL,
	VoiceCode varchar(9) NULL,
	UserAccess17 int NULL,
	UserAccess18 int NULL,
	UserAccess19 int NULL,
	UserAccess20 int NULL,
	UserAccess21 int NULL,
	UserAccess22 int NULL,
	UserAccess23 int NULL,
	UserAccess24 int NULL,
	UserAccess25 int NULL,
	UserAccess26 int NULL,
	UserAccess27 int NULL,
	UserAccess28 int NULL,
	UserAccess29 int NULL,
	UserAccess30 int NULL,
	UserAccess31 int NULL,
	UserAccess32 int NULL,
	ProfileName varchar(65) NULL,
	CustomizeName varchar(65) NULL,
	MobilePhone varchar(21) NULL,
	Email varchar(51) NULL,
	LogonHours int NULL,
	PasswordExpiryDate int NULL,
	StartCard int NULL,
	EndCard int NULL,
	GlobalPointGroup smallint NULL,
	SiteMapNum smallint NULL,
	AreaMapNum smallint NULL,
	Reserved2 int NULL
); 

CREATE TABLE OPGRPS(
	MsgNo smallint PRIMARY KEY,
	MsgText varchar(81) NULL
); 

CREATE TABLE OPPASSWDS(
	SeqNo int PRIMARY KEY,
	UserId smallint NOT NULL,
	Password binary(25) NOT NULL
); 

CREATE TABLE OPTYPE(
	MsgNo smallint PRIMARY KEY,
	MsgText varchar(81) NULL
); 

CREATE TABLE OUTVOCAB(
	MsgNo smallint PRIMARY KEY,
	MsgText varchar(81) NULL
); 

CREATE TABLE PAGERALM(
	MsgNo smallint PRIMARY KEY,
	MsgText varchar(81) NULL
);

CREATE TABLE PARTITIONCARDGROUP(
	GroupId int PRIMARY KEY,
	Name varchar(64) NULL
); 

CREATE TABLE PARTITIONCARDGROUPCFG(
	GroupId int PRIMARY KEY,
	GroupNo tinyint PRIMARY KEY,
	StartCard int NULL,
	EndCard int NULL,
	StartCode varchar(17) NULL,
	EndCode varchar(17) NULL
);

CREATE TABLE PARTITIONCARDTYPE(
	GroupId int PRIMARY KEY,
	Name varchar(64) NULL
);

CREATE TABLE PARTITIONCARDTYPECFG(
	GroupId int PRIMARY KEY,
	GroupNo tinyint PRIMARY KEY,
	StartGroup tinyint NULL,
	EndGroup tinyint NULL
); 

CREATE TABLE PARTITIONREADERS(
	GroupId int PRIMARY KEY,
	Name varchar(64) NOT NULL
);

CREATE TABLE PARTITIONREADERSCFG(
	GroupId int NOT NULL,
	SiteNo smallint NOT NULL,
	ReaderNo tinyint NOT NULL,
	AreaNo tinyint NOT NULL
);

CREATE TABLE PARTITIONTABLECREATED(
	OperatorNo smallint PRIMARY KEY,
	SiteGroup smallint NOT NULL,
	ReaderGroup int NOT NULL,
	TZoneGroup int NOT NULL,
	CardTypeGroup int NOT NULL,
	CardGroup int NOT NULL
);

CREATE TABLE PARTITIONTIMEGROUP(
	GroupId int PRIMARY KEY,
	Name varchar(64) NULL
);

CREATE TABLE PARTITIONTIMEGROUPCFG(
	GroupId int NOT NULL,
	TZoneNo tinyint NULL
); 

CREATE TABLE PARTITIONUSERS(
	OperatorNo smallint PRIMARY KEY,
	ReaderGroup int NOT NULL,
	TZoneGroup int NOT NULL,
	CardTypeGroup int NOT NULL,
	CardGroup int NOT NULL
);

CREATE TABLE PDATA(
	RtuNo smallint NOT NULL,
	AreaNo tinyint NOT NULL,
	SeqNo smallint NOT NULL,
	PointNo smallint NOT NULL,
	Model smallint NULL,
	SerialNo varchar(16) NULL,
	Location varchar(33) NULL,
	MiscData binary(162) NULL
); 

CREATE TABLE PHOTOS(
	CardCode int NULL,
	IssueNo tinyint NULL,
	Facility smallint NULL,
	BLOB image NULL
);

CREATE TABLE QUERYDATA(
	QueryId smallint PRIMARY KEY,
	FieldId smallint NOT NULL,
	SubGroup smallint NOT NULL,
	Data varchar(100) NULL,
	Comparator smallint NOT NULL,
	Operator smallint NULL,
	Parenthesis smallint NULL,
	ParenthesisCount smallint NULL
);

CREATE TABLE RAPALMTYPE(
	MsgNo smallint PRIMARY KEY,
	MsgText varchar(81) NULL
);

CREATE TABLE RAPTYPE(
	MsgNo smallint PRIMARY KEY,
	MsgText varchar(81) NULL
);

CREATE TABLE RDRCMD(
	MsgNo smallint PRIMARY KEY,
	MsgText varchar(81) NULL
);

CREATE TABLE RDRTYPE(
	MsgNo smallint PRIMARY KEY,
	MsgText varchar(81) NULL
);

CREATE TABLE READERGROUP(
	SiteNo smallint PRIMARY KEY,
	GroupNo tinyint PRIMARY KEY,
	GroupName varchar(33) NOT NULL,
	ReaderList int NULL,
	ReaderList32 int NULL,
	FloorGroup tinyint NULL
);

CREATE TABLE READERGROUPX(
	SiteNo smallint PRIMARY KEY,
	GroupNo tinyint PRIMARY KEY,
	GroupId tinyint PRIMARY KEY,
	ReaderList int NULL
);

CREATE TABLE RESCODE(
	MsgNo smallint PRIMARY KEY,
	MsgText varchar(81) NULL
);

CREATE TABLE RESERVEDSITEGROUP(
	SiteGroup int(1,1) NOT NULL,
	SiteRange varchar(max) NULL
);

CREATE TABLE RESERVEDSITERANGE(
	SiteGroup int NOT NULL,
	GroupNo smallint NOT NULL,
	StartSite smallint NULL,
	EndSite smallint NULL
);

CREATE TABLE RESPONSETYPES(
	MsgNo smallint PRIMARY KEY,
	MsgText varchar(81) NULL
);

CREATE TABLE RESPONSEWORDS(
	MsgNo smallint PRIMARY KEY,
	MsgText varchar(81) NULL
);

CREATE TABLE RTUCFG(
	MsgNo smallint PRIMARY KEY,
	MsgText varchar(81) NULL
);

CREATE TABLE RTUDATA(
	RtuNo smallint NOT NULL,
	RAP tinyint NULL,
	LCNO tinyint NULL,
	NetType tinyint NULL,
	DialupType tinyint NULL,
	DialbackNo binary(10) NULL,
	DisasterNo binary(10) NULL,
	NetAdd1 varchar(16) NULL,
	NetAdd2 varchar(16) NULL,
	NCPLineNo binary(8) NULL,
	Ver1_2 binary(4) NULL,
	Flags binary(8) NULL,
	UserField1 binary(21) NULL,
	UserField2 binary(21) NULL,
	UserField3 binary(21) NULL,
	UserField4 binary(21) NULL
);

CREATE TABLE RTUDEVICES(
	MsgNo smallint PRIMARY KEY,
	MsgText varchar(81) NULL
); 

CREATE TABLE RTUGMS(
	MsgNo smallint PRIMARY KEY,
	MsgText varchar(81) NULL
);

CREATE TABLE RTUPSPCR(
	MsgNo smallint PRIMARY KEY,
	MsgText varchar(81) NULL
);

CREATE TABLE RTUPSPEC(
	MsgNo smallint PRIMARY KEY,
	MsgText varchar(81) NULL
);

CREATE TABLE RTURSP(
	MsgNo smallint PRIMARY KEY,
	MsgText varchar(81) NULL
);

CREATE TABLE RTUSTUS(
	MsgNo smallint PRIMARY KEY,
	MsgText varchar(81) NULL
);

CREATE TABLE RTUSYS(
	MsgNo smallint PRIMARY KEY,
	MsgText varchar(81) NULL
);

CREATE TABLE RTUTYPE(
	MsgNo smallint PRIMARY KEY,
	MsgText varchar(81) NULL
);

CREATE TABLE RTUUSERNAMES(
	YMD int NOT NULL,
	HMS int NOT NULL,
	RtuNo smallint NOT NULL,
	UserId tinyint NOT NULL,
	UserName varchar(21) NULL
); 

CREATE TABLE ServerStatus(
	ServerStatus tinyint NULL,
	TimeOfChange datetime NULL
); 

CREATE TABLE ServerStatusBackLog(
	Id bigint(0,1) NOT NULL,
	TimeWhenInActive datetime NULL,
	TimeWhenActive datetime NULL
); 

CREATE TABLE SITE_RANGE(
	SiteGroup smallint NOT NULL,
	GroupNo smallint NOT NULL,
	StartSite smallint NULL,
	EndSite smallint NULL
); 

CREATE TABLE SITE_READER(
	SiteNo smallint PRIMARY KEY,
	ReaderNo smallint PRIMARY KEY,
	ReaderName varchar(33) NULL
);

CREATE TABLE SITECONTACT(
	RtuNo smallint PRIMARY KEY,
	AreaNo tinyint PRIMARY KEY,
	ContactNo tinyint PRIMARY KEY,
	Name varchar(32) NULL,
	Position varchar(20) NULL,
	Phone varchar(20) NULL,
	HomePhone varchar(20) NULL,
	MobilePhone varchar(20) NULL,
	VoiceCode varchar(9) NULL,
	Street varchar(48) NULL,
	Town varchar(36) NULL,
	State varchar(36) NULL,
	Zip varchar(11) NULL
);

CREATE TABLE SITEDATA(
	RtuNo smallint PRIMARY KEY,
	AreaNo tinyint PRIMARY KEY,
	SecLevel tinyint NULL,
	State varchar(36) NULL,
	Zip varchar(11) NULL,
	BSB varchar(13) NULL,
	Street varchar(48) NULL,
	Town varchar(36) NULL,
	Phone varchar(20) NULL,
	Spare binary(3) NULL,
	Spare1 varchar(13) NULL,
	SiteName varchar(56) NULL,
	MapIndex varchar(40) NULL,
	NearCorner varchar(40) NULL,
	AHPhone varchar(20) NULL,
	PolicePhone varchar(20) NULL,
	ServiceCo varchar(64) NULL,
	TechPhone varchar(20) NULL,
	GuardCo varchar(64) NULL,
	GuardPhone varchar(20) NULL,
	PatrolCo varchar(64) NULL,
	PatrolPhone varchar(20) NULL,
	ATMCo varchar(64) NULL,
	ATMPhone varchar(20) NULL,
	CleanerCo varchar(64) NULL,
	CleanerPhone varchar(20) NULL,
	Fax varchar(20) NULL,
	PanelData binary(16) NULL,
	PoliceName varchar(64) NULL,
	InstallerCo varchar(64) NULL,
	InstallerPhone varchar(20) NULL,
	FBName varchar(64) NULL,
	FBPhone varchar(20) NULL,
	Ambulance varchar(64) NULL,
	AmbulancePhone varchar(20) NULL,
	PMSCo varchar(64) NULL,
	PMSPhone varchar(20) NULL,
	URN varchar(17) NULL,
	URN2 varchar(17) NULL,
	Address2 varchar(48) NULL,
	UserField1 varchar(40) NULL,
	UserField2 varchar(40) NULL,
	UserField3 varchar(40) NULL,
	UserField4 varchar(40) NULL,
	UserField5 varchar(40) NULL,
	UserField6 varchar(40) NULL,
	UserField7 varchar(40) NULL,
	UserField8 varchar(40) NULL
);

CREATE TABLE SITEGROUP(
	GroupNo smallint PRIMARY KEY,
	GroupName varchar(81) NOT NULL,
	GroupRange varchar(max) NULL
);

CREATE TABLE STAFFS(
	Mode smallint NULL,
	StaffId smallint PRIMARY KEY,
	Name varchar(32) NULL,
	Position varchar(20) NULL,
	Phone varchar(20) NULL,
	HomePhone varchar(20) NULL,
	MobilePhone varchar(20) NULL,
	VoiceCode varchar(9) NULL,
	Street varchar(48) NULL,
	Town varchar(36) NULL,
	State varchar(36) NULL,
	Zip varchar(11) NULL
);

CREATE TABLE STAFFTYPES(
	MsgNo smallint PRIMARY KEY,
	MsgText varchar(81) NULL
);

CREATE TABLE STSGRPS(
	MsgNo smallint PRIMARY KEY,
	MsgText varchar(81) NULL
);

CREATE TABLE SUSPCMDS(
	MsgNo smallint PRIMARY KEY,
	MsgText varchar(81) NULL
);

CREATE TABLE SYSCMDS(
	MsgNo smallint PRIMARY KEY,
	MsgText varchar(81) NULL
);

CREATE TABLE TASKCFG(
	TaskName varchar(65) NOT NULL,
	SiteGroup smallint NULL,
	SchType smallint NULL,
	SchDays smallint NULL,
	SchTime smallint NULL,
	UnschTime smallint NULL,
	EventType smallint NULL,
	RevEventType smallint NULL,
	EventParm smallint NULL,
	PGName varchar(33) NULL,
	EventParm1 tinyint NULL,
	Status tinyint NULL,
	FileIndex smallint NOT NULL,
	AppName varchar(256) NULL,
	AppParams varchar(256) NULL,
	RunOnActiveServerOnly tinyint NULL,
	AutoDelete tinyint NULL
);

CREATE TABLE TASKTYPE(
	MsgNo smallint NOT NULL,
	MsgText varchar(81) NULL
);

CREATE TABLE TEMPCARDACCESSINFO(
	CardNumber varchar(17) NOT NULL,
	GAGNo int NULL,
	FAGNo int NULL,
	StartDay int NULL,
	EndDay int NULL
); 

CREATE TABLE TEMPORARYCARDS(
	CardNumber varchar(17) PRIMARY KEY,
	Dependant varchar(17) NOT NULL
);

CREATE TABLE TITLES(
	Id smallint PRIMARY KEY,
	Name varchar(65) NULL
);

CREATE TABLE TZONEGROUP(
	GroupNo tinyint PRIMARY KEY,
	GroupName varchar(33) NOT NULL,
	TimeZones binary(44) NULL,
	TimeZones2 binary(44) NULL,
	TimeZones3 binary(44) NULL
);

CREATE TABLE UALMTYPE(
	MsgNo smallint PRIMARY KEY,
	MsgText varchar(81) NULL
);

CREATE TABLE USERTEXT(
	MsgNo smallint PRIMARY KEY,
	MsgText varchar(81) NULL
);

CREATE TABLE USRREPDATA(
	ReportId smallint PRIMARY KEY,
	ReportName varchar(50) NOT NULL,
	TemplateName varchar(50) NOT NULL,
	ReportTitle varchar(100) NULL,
	QueryData varchar(100) NULL,
	SortData varchar(50) NULL,
	FC varchar(50) NULL,
	D1 varchar(50) NULL,
	D2 varchar(50) NULL,
	D3 varchar(50) NULL
);

CREATE TABLE VIDEOANALYTICS(
	MsgNo smallint PRIMARY KEY,
	MsgText varchar(81) NULL
);

CREATE TABLE VISITORS(
	CardCode int PRIMARY KEY,
	CardSrNo int NOT NULL,
	LastName varchar(21) NULL,
	FirstName varchar(21) NULL,
	MidleName char(2) NULL,
	Company varchar(48) NULL,
	Street varchar(48) NULL,
	City varchar(16) NULL,
	State varchar(12) NULL,
	Zip varchar(12) NULL,
	ValidDateFrom smallint NOT NULL,
	ValidTimeFrom smallint NOT NULL,
	ValidDateTo smallint NOT NULL,
	ValidTimeTo smallint NOT NULL,
	Host varchar(48) NULL,
	Dept smallint NULL,
	PhoneExt varchar(20) NULL,
	ModOperator varchar(32) NULL,
	ModTime smallint NULL,
	ModDate smallint NULL,
	UserField1 varchar(21) NULL,
	UserField2 varchar(21) NULL,
	UserField3 varchar(21) NULL,
	UserField4 varchar(21) NULL,
	UserField5 varchar(21) NULL,
	UserField6 varchar(21) NULL,
	UserField7 varchar(21) NULL,
	UserField8 varchar(21) NULL,
	SiteNo smallint NULL
);

CREATE TABLE VISITORSTS(
	CardCode int PRIMARY KEY,
	SiteNo smallint NOT NULL,
	InDate int NOT NULL,
	InTime int NOT NULL,
	OutDate int NOT NULL,
	OutTime int NOT NULL
);

CREATE TABLE ZIPCODE(
	Zip varchar(12) PRIMARY KEY,
	City varchar(16) NOT NULL,
	State varchar(12) NOT NULL
);







