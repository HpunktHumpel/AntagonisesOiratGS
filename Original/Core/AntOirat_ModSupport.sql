--==========================================================================================================================
-- USER SETTINGS (THIS IS NEEDED IN MOST CASES)
--==========================================================================================================================
-- JFD_GlobalUserSettings
------------------------------------------------------------
CREATE TABLE IF NOT EXISTS 
JFD_GlobalUserSettings (
	Type 				text 			default null,
	Value 				integer 		default 1);
--==========================================================================================================================
-- DELIVERATOR MOAR UNITS (8342b98d-80c7-4002-87bb-419646bd9b54)
-- DELIVERATOR MOAR UNITS (CORE ONLY) (860265f1-73df-47d9-b5dc-c9cdc6b1489a)
--==========================================================================================================================
--==========================================================================================================================
-- GEDEMON YNAEMP (36e88483-48fe-4545-b85f-bafc50dde315)
--==========================================================================================================================
-- StartPosition 
------------------------------------------------------------	
CREATE TABLE IF NOT EXISTS StartPosition (MapName TEXT, Civilization TEXT, Leader TEXT, X INT default 0, Y INT default 0);
INSERT INTO StartPosition
		(Civilization,					Leader,						MapName,			X,		Y)
VALUES	('CIVILIZATION_ANT_OIRAT',		'LEADER_ANT_GALDAN',		'GiantEarth',		65,		71),
		('CIVILIZATION_ANT_OIRAT',		'LEADER_ANT_GALDAN',		'GreatestEarthMap',	77,		55),
		('CIVILIZATION_ANT_OIRAT',		'LEADER_ANT_GALDAN',		'LargestEarth',		85,		89);
--==========================================================================================================================
-- JFD RULE WITH FAITH (650ff782-47b4-4b46-93fb-00bef8da8b8e)
--==========================================================================================================================
------------------------------------------------------------
-- Civilization_Titles 
------------------------------------------------------------	
--These are unique titles by Civilization. They take priority over the default Government titles. Each TXT string MUST have a _FEMININE form, although the text can be the same. i.e.
--LOC_GOVERNMENT_JFD_EMPIRE_LEADER_TITLE_ANT_OIRAT = Emperor-President
--LOC_GOVERNMENT_JFD_EMPIRE_LEADER_TITLE_ANT_OIRAT_FEMININE = Emperor-President

--NOTE: This support is only needed for Civ.

CREATE TABLE IF NOT EXISTS 
	Civilization_Titles (
	CivilizationType  				text 		 		default null,
	GovernmentType					text 	 			default null,
	LeaderTitle						text				default null,
	PolicyType  					text 		 		default null);	
	
INSERT INTO Civilization_Titles
		(CivilizationType, 			GovernmentType, 							PolicyType,				LeaderTitle)
VALUES	('CIVILIZATION_ANT_OIRAT',	'GOVERNMENT_CHIEFDOM',						null,					'LOC_GOVERNMENT_JFD_CHIEFDOM_LEADER_TITLE_ANT_OIRAT'),					--Chiefdom
		('CIVILIZATION_ANT_OIRAT',	'GOVERNMENT_JFD_HORDE',						null,					'LOC_GOVERNMENT_JFD_HORDE_LEADER_TITLE_ANT_OIRAT'),						--Horde
		('CIVILIZATION_ANT_OIRAT',	'GOVERNMENT_AUTOCRACY',						null,					'LOC_GOVERNMENT_JFD_AUTOCRACY_LEADER_TITLE_ANT_OIRAT'),					--Autocracy
		('CIVILIZATION_ANT_OIRAT',	'GOVERNMENT_OLIGARCHY',						null,					'LOC_GOVERNMENT_JFD_OLIGARCHY_LEADER_TITLE_ANT_OIRAT'),					--Oligarchy
		('CIVILIZATION_ANT_OIRAT',	'GOVERNMENT_MONARCHY',						null,					'LOC_GOVERNMENT_JFD_MONARCHY_LEADER_TITLE_ANT_OIRAT'),					--Feudal Monarchy
		('CIVILIZATION_ANT_OIRAT',	'GOVERNMENT_JFD_ABSOLUTE_MONARCHY',			null,					'LOC_GOVERNMENT_JFD_ABS_MONARCHY_LEADER_TITLE_ANT_OIRAT'),					--Absolute Monarchy
		('CIVILIZATION_ANT_OIRAT',	'GOVERNMENT_JFD_CONSTITUTIONAL_MONARCHY',	null,					'LOC_GOVERNMENT_JFD_CONS_MONARCHY_LEADER_TITLE_ANT_OIRAT'),					--Constitutional Monarchy
		('CIVILIZATION_ANT_OIRAT',	'GOVERNMENT_JFD_NOBLE_REPUBLIC',			null,					'LOC_GOVERNMENT_JFD_NOBLE_REPUBLIC_LEADER_TITLE_ANT_OIRAT'),				--Noble Republic
		('CIVILIZATION_ANT_OIRAT',	'GOVERNMENT_FASCISM',						null,					'LOC_GOVERNMENT_JFD_MILITARY_GUARDIANSHIP_LEADER_TITLE_ANT_OIRAT'),		--Military Guardianship
		('CIVILIZATION_ANT_OIRAT',	null,										'POLICY_JFD_EMPIRE',	'LOC_GOVERNMENT_JFD_EMPIRE_LEADER_TITLE_ANT_OIRAT');						--Empire
DELETE FROM Civilization_Titles WHERE CivilizationType = 'CIVILIZATION_ANT_OIRAT' AND GovernmentType IS NOT null AND GovernmentType NOT IN (SELECT GovernmentType FROM Governments);
DELETE FROM Civilization_Titles WHERE CivilizationType = 'CIVILIZATION_ANT_OIRAT' AND PolicyType IS NOT null AND PolicyType NOT IN (SELECT PolicyType FROM Policies);	