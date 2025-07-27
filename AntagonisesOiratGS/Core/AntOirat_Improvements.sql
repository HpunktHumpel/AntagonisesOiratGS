--==========================================================================================================================
-- IMPROVEMENTS
--==========================================================================================================================
-- Types
-----------------------------------------------------------------------------------	
INSERT INTO Types	
			(Type,										Kind)
VALUES		('IMPROVEMENT_ANT_GER',						'KIND_IMPROVEMENT');
-----------------------------------------------------------------------------------
-- Improvements
-----------------------------------------------------------------------------------
INSERT INTO Improvements	
		(ImprovementType,			Name,								Description,								Icon, 							TraitType, 									PrereqTech,		SameAdjacentValid,	PlunderType, PlunderAmount, Buildable, Housing, TilesRequired)
SELECT	'IMPROVEMENT_ANT_GER',		'LOC_IMPROVEMENT_ANT_GER_NAME',		'LOC_IMPROVEMENT_ANT_GER_DESCRIPTION',		'ICON_IMPROVEMENT_ANT_GER',		'TRAIT_CIVILIZATION_IMPROVEMENT_ANT_GER',	PrereqTech,		0,					PlunderType, PlunderAmount, Buildable, Housing,	TilesRequired
FROM Improvements WHERE ImprovementType = 'IMPROVEMENT_KURGAN';
-----------------------------------------------------------------------------------
-- Improvement_Adjacencies
-----------------------------------------------------------------------------------
INSERT INTO Improvement_Adjacencies
		(ImprovementType,			YieldChangeId)
VALUES	('IMPROVEMENT_ANT_GER',		'Ant_Ger_PastureProduction1'),
		('IMPROVEMENT_ANT_GER',		'Ant_Ger_PastureProduction2');
-----------------------------------------------------------------------------------
-- Improvement_ValidFeatures
-----------------------------------------------------------------------------------
-----------------------------------------------------------------------------------
-- Improvement_ValidTerrains
-----------------------------------------------------------------------------------
INSERT INTO Improvement_ValidTerrains
			(ImprovementType,							TerrainType)
VALUES 		('IMPROVEMENT_ANT_GER',						'TERRAIN_DESERT'),
			('IMPROVEMENT_ANT_GER',						'TERRAIN_TUNDRA'),
			('IMPROVEMENT_ANT_GER',						'TERRAIN_PLAINS'),
			('IMPROVEMENT_ANT_GER',						'TERRAIN_GRASS'),
			('IMPROVEMENT_ANT_GER',						'TERRAIN_SNOW');
-----------------------------------------------------------------------------------
-- Improvement_ValidBuildUnits
-----------------------------------------------------------------------------------
INSERT INTO Improvement_ValidBuildUnits
			(ImprovementType,							UnitType)
VALUES 		('IMPROVEMENT_ANT_GER',						'UNIT_BUILDER');
-----------------------------------------------------------------------------------
-- Improvement_YieldChanges
-----------------------------------------------------------------------------------
INSERT INTO Improvement_YieldChanges	
		(ImprovementType,				YieldType,						YieldChange)
VALUES	('IMPROVEMENT_ANT_GER',			'YIELD_FAITH',					1),
		('IMPROVEMENT_ANT_GER',			'YIELD_PRODUCTION',				1);
-----------------------------------------------------------------------------------
-- Improvement_BonusYieldChanges
-----------------------------------------------------------------------------------
-----------------------------------------------------------------------------------
-- Improvement_Tourism
-----------------------------------------------------------------------------------
-----------------------------------------------------------------------------------
-- Adjacency_YieldChanges
-----------------------------------------------------------------------------------
INSERT INTO Adjacency_YieldChanges
		(ID,							Description,								YieldType,				YieldChange,	TilesRequired,		AdjacentImprovement,		PrereqCivic)
VALUES	('Ant_Ger_PastureProduction1',	'Placeholder',								'YIELD_PRODUCTION',		1,				1,					'IMPROVEMENT_PASTURE',		'CIVIC_MILITARY_TRAINING'),
		('Ant_Ger_PastureProduction2',	'Placeholder',								'YIELD_PRODUCTION',		1,				1,					'IMPROVEMENT_PASTURE',		'CIVIC_URBANIZATION'),
		('Ant_HS_UyangiinGerFaith',		'LOC_DISTRICT_ANT_UYANGIIN_GER_FAITH',		'YIELD_FAITH',			1,				1,					'IMPROVEMENT_ANT_GER',		null);
-----------------------------------------------------------------------------------
-- District_Adjacencies
-----------------------------------------------------------------------------------
INSERT INTO District_Adjacencies
		(DistrictType,					YieldChangeId)
VALUES	('DISTRICT_HOLY_SITE',			'Ant_HS_UyangiinGerFaith'),
		('DISTRICT_LAVRA',				'Ant_HS_UyangiinGerFaith');
--==========================================================================================================================
-- MODIFIERS
--==========================================================================================================================
-- Modifiers
-------------------------------------
-- Modifiers
-------------------------------------
-------------------------------------
-- ModifierArguments
-------------------------------------
-------------------------------------
-- ImprovementModifiers
-------------------------------------
--==========================================================================================================================
-- Moments
--==========================================================================================================================
-------------------------------------
-- MomentIllustrations
-------------------------------------
INSERT INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,					GameDataType,					Texture)
VALUES		('MOMENT_ILLUSTRATION_UNIQUE_IMPROVEMENT',	'MOMENT_DATA_IMPROVEMENT',		'IMPROVEMENT_ANT_GER',			'Moment_UniqueImprovement_Ant_Ger.dds');
-----------------------------------------------------------------------------------
-----------------------------------------------------------------------------------