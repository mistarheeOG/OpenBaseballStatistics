--
-- Table structure for table 'AllstarFull'
--

CREATE TABLE AllstarFull (
  PlayerId varchar(9) NOT NULL,
  YearId int NOT NULL,
  GameNum int NOT NULL,
  GameId varchar(12) NULL,
  TeamId varchar(3) NULL,
  LgId varchar(2) NULL,
  GPitcher int NULL,
  StartingPos int NULL,
  PRIMARY KEY (PlayerId,YearId,GameNum)
);

-- --------------------------------------------------------

--
-- Table structure for table 'Appearances'
--

CREATE TABLE Appearances (
  YearId int NOT NULL,
  TeamId varchar(3) NOT NULL,
  LgId varchar(2) NULL,
  PlayerId varchar(9) NOT NULL,
  TotalGames int NULL,
  Started int NULL,
  Batting int NULL,
  Defense int NULL,
  Pitcher int NULL,
  Catcher int NULL,
  First int NULL,
  Second int NULL,
  Third int NULL,
  Shortstop int NULL,
  LeftField int NULL,
  CenterField int NULL,
  RightField int NULL,
  OutField int NULL,
  DesignatedHitter int NULL,
  PinchHitter int NULL,
  PinchRunner int NULL,
  PRIMARY KEY (YearId,TeamId,PlayerId)
);

-- --------------------------------------------------------

--
-- Table structure for table 'AwardsManagers'
--

CREATE TABLE AwardsManagers (
  ManagerId varchar(10) NOT NULL,
  AwardId varchar(25) NOT NULL,
  YearId int NOT NULL,
  LgId varchar(2) NOT NULL,
  Tie varchar(1) NULL,
  Notes varchar(100) NULL,
  PRIMARY KEY (YearId,AwardId,LgId,ManagerId)
);

-- --------------------------------------------------------

--
-- Table structure for table 'AwardsPlayers'
--

CREATE TABLE AwardsPlayers (
  PlayerId varchar(9) NOT NULL,
  AwardId varchar(255) NOT NULL,
  YearId int NOT NULL,
  LgId varchar(2) NOT NULL,
  Tie varchar(1) NULL,
  Notes varchar(100) NULL,
  PRIMARY KEY (YearId,AwardId,LgId,PlayerId)
);

-- --------------------------------------------------------

--
-- Table structure for table 'AwardsShareManagers'
--

CREATE TABLE AwardsShareManagers (
  AwardId varchar(25) NOT NULL,
  YearId int NOT NULL,
  LgId varchar(2) NOT NULL,
  ManagerId varchar(10) NOT NULL,
  PointsWon int NULL,
  PointsMax int NULL,
  VotesFirst int NULL,
  PRIMARY KEY (AwardId,YearId,LgId,ManagerId)
);

-- --------------------------------------------------------

--
-- Table structure for table 'AwardsSharePlayers'
--

CREATE TABLE AwardsSharePlayers (
  AwardId varchar(25) NOT NULL,
  YearId int NOT NULL,
  LgId varchar(2) NOT NULL,
  PlayerId varchar(9) NOT NULL,
  PointsWon decimal(9,3) NULL,
  PointsMax int NULL,
  VotesFirst decimal(9,3) NULL,
  PRIMARY KEY (AwardId,YearId,LgId,PlayerId)
);

-- --------------------------------------------------------

--
-- Table structure for table 'Batting'
--

CREATE TABLE Batting (
  PlayerId varchar(9) NOT NULL,
  YearId int NOT NULL,
  Stint int NOT NULL,
  TeamId varchar(3) NULL,
  LgId varchar(2) NULL,
  G int NULL,
  G_batting int NULL,
  AB int NULL,
  R int NULL,
  H int NULL,
  Doubles int NULL,
  Triples int NULL,
  HR int NULL,
  RBI int NULL,
  SB int NULL,
  CS int NULL,
  BB int NULL,
  SO int NULL,
  IBB int NULL,
  HBPitcher int NULL,
  SH int NULL,
  SF int NULL,
  GIdPitcher int NULL,
  G_old int NULL,
  PRIMARY KEY (PlayerId,YearId,Stint)
);

-- --------------------------------------------------------

--
-- Table structure for table 'BattingPost'
--

CREATE TABLE BattingPost (
  YearId int NOT NULL,
  Round varchar(10) NOT NULL,
  PlayerId varchar(9) NOT NULL,
  TeamId varchar(3) NULL,
  LgId varchar(2) NULL,
  G int NULL,
  AB int NULL,
  R int NULL,
  H int NULL,
  Doubles int NULL,
  Triples int NULL,
  HR int NULL,
  RBI int NULL,
  SB int NULL,
  CS int NULL,
  BB int NULL,
  SO int NULL,
  IBB int NULL,
  HBPitcher int NULL,
  SH int NULL,
  SF int NULL,
  GIdPitcher int NULL,
  PRIMARY KEY (YearId,Round,PlayerId)
);

-- --------------------------------------------------------

--
-- Table structure for table 'Fielding'
--

CREATE TABLE Fielding (
  PlayerId varchar(9) NOT NULL,
  YearId int NOT NULL,
  Stint int NOT NULL,
  TeamId varchar(3) NULL,
  LgId varchar(2) NULL,
  POS varchar(2) NOT NULL,
  G int NULL,
  GS int NULL,
  InnOuts int NULL,
  PO int NULL,
  A int NULL,
  E int NULL,
  DPitcher int NULL,
  PB int NULL,
  WPitcher int NULL,
  SB int NULL,
  CS int NULL,
  ZR decimal(9,3) NULL,
  PRIMARY KEY (PlayerId,YearId,Stint,POS)
);

-- --------------------------------------------------------

--
-- Table structure for table 'FieldingOF'
--

CREATE TABLE FieldingOF (
  PlayerId varchar(9) NOT NULL,
  YearId int NOT NULL,
  Stint int NOT NULL,
  Glf int NULL,
  Gcf int NULL,
  Grf int NULL,
  PRIMARY KEY (PlayerId,YearId,Stint)
);

-- --------------------------------------------------------

--
-- Table structure for table 'FieldingPost'
--

CREATE TABLE FieldingPost (
  PlayerId varchar(9) NOT NULL,
  YearId int NOT NULL,
  TeamId varchar(3) NULL,
  LgId varchar(2) NULL,
  Round varchar(10) NOT NULL,
  POS varchar(2) NOT NULL,
  G int NULL,
  GS int NULL,
  InnOuts int NULL,
  PO int NULL,
  A int NULL,
  E int NULL,
  DPitcher int NULL,
  TPitcher int NULL,
  PB int NULL,
  SB int NULL,
  CS int NULL,
  PRIMARY KEY (PlayerId,YearId,Round,POS)
);

-- --------------------------------------------------------

--
-- Table structure for table 'HallOfFame'
--

CREATE TABLE HallOfFame (
  HofId varchar(10) NOT NULL,
  Yearid int NOT NULL,
  VotedBy varchar(64) NOT NULL DEFAULT '',
  Ballots int NULL,
  Needed int NULL,
  Votes int NULL,
  Inducted varchar(1) NULL,
  Category varchar(20) NULL,
  Needed_note varchar(20) NULL,
  PRIMARY KEY (HofId,YearId,VotedBy)
);

-- --------------------------------------------------------

--
-- Table structure for table 'Managers'
--

CREATE TABLE Managers (
  ManagerId varchar(10) NULL,
  YearId int NOT NULL,
  TeamId varchar(3) NOT NULL,
  LgId varchar(2) NULL,
  Inseason int NOT NULL,
  G int NULL,
  W int NULL,
  L int NULL,
  Rank int NULL,
  PlyrMgr varchar(1) NULL,
  PRIMARY KEY (YearId,TeamId,Inseason)
);

-- --------------------------------------------------------

--
-- Table structure for table 'ManagersHalf'
--

CREATE TABLE ManagersHalf (
  ManagerId varchar(10) NOT NULL,
  YearId int NOT NULL,
  TeamId varchar(3) NOT NULL,
  LgId varchar(2) NULL,
  Inseason int NULL,
  Half int NOT NULL,
  G int NULL,
  W int NULL,
  L int NULL,
  Rank int NULL,
  PRIMARY KEY (YearId,TeamId,ManagerId,Half)
);

-- --------------------------------------------------------

--
-- Table structure for table 'Master'
--

CREATE TABLE Master (
  LahmanId int NOT NULL,
  PlayerId varchar(10) NULL,
  ManagerId varchar(10) NULL,
  HofId varchar(10) NULL,
  BirthYear int NULL,
  BirthMonth int NULL,
  BirthDay int NULL,
  BirthCountry varchar(50) NULL,
  BirthState varchar(2) NULL,
  BirthCity varchar(50) NULL,
  DeathYear int NULL,
  DeathMonth int NULL,
  DeathDay int NULL,
  DeathCountry varchar(50) NULL,
  DeathState varchar(2) NULL,
  DeathCity varchar(50) NULL,
  NameFirst varchar(50) NULL,
  NameLast varchar(50) NULL,
  NameNote varchar(255) NULL,
  NameGiven varchar(255) NULL,
  NameNick varchar(255) NULL,
  Weight int NULL,
  Height decimal(9,3) NULL,
  Bats varchar(1) NULL,
  Throws varchar(1) NULL,
  Debut varchar(10) NULL,
  FinalGame varchar(10) NULL,
  College varchar(50) NULL,
  Lahman40Id varchar(9) NULL,
  Lahman45Id varchar(9) NULL,
  RetroId varchar(9) NULL,
  HoltzId varchar(9) NULL,
  BbrefId varchar(9) NULL,
  PRIMARY KEY (LahmanId)
);

-- --------------------------------------------------------

--
-- Table structure for table 'Pitching'
--

CREATE TABLE Pitching (
  PlayerId varchar(9) NOT NULL,
  YearId int NOT NULL,
  Stint int NOT NULL,
  TeamId varchar(3) NULL,
  LgId varchar(2) NULL,
  W int NULL,
  L int NULL,
  G int NULL,
  GS int NULL,
  CG int NULL,
  SHO int NULL,
  SV int NULL,
  IPouts int NULL,
  H int NULL,
  ER int NULL,
  HR int NULL,
  BB int NULL,
  SO int NULL,
  BAOpp decimal(9,3) NULL,
  ERA decimal(9,3) NULL,
  IBB int NULL,
  WPitcher int NULL,
  HBPitcher int NULL,
  BK int NULL,
  BFPitcher int NULL,
  GF int NULL,
  R int NULL,
  SH int NULL,
  SF int NULL,
  GIdPitcher int NULL,
  PRIMARY KEY (PlayerId,YearId,Stint)
);

-- --------------------------------------------------------

--
-- Table structure for table 'PitchingPost'
--

CREATE TABLE PitchingPost (
  PlayerId varchar(9) NOT NULL,
  YearId int NOT NULL,
  Round varchar(10) NOT NULL,
  TeamId varchar(3) NULL,
  LgId varchar(2) NULL,
  W int NULL,
  L int NULL,
  G int NULL,
  GS int NULL,
  CG int NULL,
  SHO int NULL,
  SV int NULL,
  IPouts int NULL,
  H int NULL,
  ER int NULL,
  HR int NULL,
  BB int NULL,
  SO int NULL,
  BAOpp decimal(9,3) NULL,
  ERA decimal(9,3) NULL,
  IBB int NULL,
  WPitcher int NULL,
  HBPitcher int NULL,
  BK int NULL,
  BFPitcher int NULL,
  GF int NULL,
  R int NULL,
  SH int NULL,
  SF int NULL,
  GIdPitcher int NULL,
  PRIMARY KEY (PlayerId,YearId,Round)
);

-- --------------------------------------------------------

--
-- Table structure for table 'Salaries'
--

CREATE TABLE Salaries (
  YearId int NOT NULL,
  TeamId varchar(3) NOT NULL,
  LgId varchar(2) NOT NULL,
  PlayerId varchar(9) NOT NULL,
  Salary decimal(9,3) NULL,
  PRIMARY KEY (YearId,TeamId,LgId,PlayerId)
);

-- --------------------------------------------------------

--
-- Table structure for table 'Schools'
--

CREATE TABLE Schools (
  SchoolId varchar(15) NOT NULL,
  SchoolName varchar(255) NULL,
  SchoolCity varchar(55) NULL,
  SchoolState varchar(55) NULL,
  SchoolNick varchar(55) NULL,
  PRIMARY KEY (SchoolId)
);

-- --------------------------------------------------------

--
-- Table structure for table 'SchoolsPlayers'
--

CREATE TABLE SchoolsPlayers (
  PlayerId varchar(9) NOT NULL,
  SchoolId varchar(15) NOT NULL,
  YearMin int NULL,
  YearMax int NULL,
  PRIMARY KEY (PlayerId,SchoolId)
);

-- --------------------------------------------------------

--
-- Table structure for table 'SeriesPost'
--

CREATE TABLE SeriesPost (
  YearId int NOT NULL,
  Round varchar(5) NOT NULL,
  TeamIdwinner varchar(3) NULL,
  LgIdwinner varchar(2) NULL,
  TeamIdloser varchar(3) NULL,
  LgIdloser varchar(2) NULL,
  Wins int NULL,
  Losses int NULL,
  Ties int NULL,
  PRIMARY KEY (YearId,Round)
);

-- --------------------------------------------------------

--
-- Table structure for table 'Teams'
--

CREATE TABLE Teams (
  YearId int NOT NULL,
  LgId varchar(2) NOT NULL,
  TeamId varchar(3) NOT NULL,
  FranchId varchar(3) NULL,
  DivId varchar(1) NULL,
  Rank int NULL,
  G int NULL,
  Ghome int NULL,
  W int NULL,
  L int NULL,
  DivWin varchar(1) NULL,
  WCWin varchar(1) NULL,
  LgWin varchar(1) NULL,
  WSWin varchar(1) NULL,
  R int NULL,
  AB int NULL,
  H int NULL,
  Doubles int NULL,
  Triples int NULL,
  HR int NULL,
  BB int NULL,
  SO int NULL,
  SB int NULL,
  CS int NULL,
  HBPitcher int NULL,
  SF int NULL,
  RA int NULL,
  ER int NULL,
  ERA decimal(9,3) NULL,
  CG int NULL,
  SHO int NULL,
  SV int NULL,
  IPouts int NULL,
  HA int NULL,
  HRA int NULL,
  BBA int NULL,
  SOA int NULL,
  E int NULL,
  DPitcher int NULL,
  FP decimal(9,3) NULL,
  Name varchar(50) NULL,
  Park varchar(255) NULL,
  Attendance int NULL,
  BPF int NULL,
  PPF int NULL,
  TeamIdBR varchar(3) NULL,
  TeamIdlahman45 varchar(3) NULL,
  TeamIdretro varchar(3) NULL,
  PRIMARY KEY (YearId,LgId,TeamId)
);

-- --------------------------------------------------------

--
-- Table structure for table 'TeamsFranchises'
--

CREATE TABLE TeamsFranchises (
  FranchId varchar(3) NOT NULL,
  FranchName varchar(50) NULL,
  Active varchar(2) NULL,
  NAassoc varchar(3) NULL,
  PRIMARY KEY (FranchId)
);

-- --------------------------------------------------------

--
-- Table structure for table 'TeamsHalf'
--

CREATE TABLE TeamsHalf (
  YearId int NOT NULL,
  LgId varchar(2) NOT NULL,
  TeamId varchar(3) NOT NULL,
  Half varchar(1) NOT NULL,
  DivId varchar(1) NULL,
  DivWin varchar(1) NULL,
  Rank int NULL,
  G int NULL,
  W int NULL,
  L int NULL,
  PRIMARY KEY (YearId,TeamId,LgId,Half)
);
