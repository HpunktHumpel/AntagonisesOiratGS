--==========================================================================================================================
-- LOADING INFO
--==========================================================================================================================
-- LoadingInfo
-------------------------------------	
INSERT INTO LoadingInfo	
		(LeaderType,					ForegroundImage,					BackgroundImage,			PlayDawnOfManAudio)
VALUES	('LEADER_ANT_GALDAN',			'LEADER_ANT_GALDAN_NEUTRAL',		'LEADER_HOJO_BACKGROUND',	0);	
--==========================================================================================================================
-- DIPLOMACY INFO
--==========================================================================================================================
-- DiplomacyInfo
-------------------------------------	
-- INSERT INTO DiplomacyInfo	
-- 			(Type,						BackgroundImage)
-- VALUES	('LEADER_ANT_GALDAN',		'FALLBACK_NEUTRAL_ANT_GALDAN.dds');
--==========================================================================================================================
-- COLOURS
--==========================================================================================================================
-- PlayerColors
-------------------------------------	
INSERT INTO PlayerColors	
		(Type,							Usage,				PrimaryColor, 							SecondaryColor,							TextColor)
VALUES	('LEADER_ANT_GALDAN',			'Unique',			'COLOR_PLAYER_ANT_OIRAT_PRIMARY',		'COLOR_PLAYER_ANT_OIRAT_SECONDARY', 	'COLOR_PLAYER_WHITE_TEXT');	

INSERT INTO Colors 
		(Type, 										Red, 	Green, 	Blue, 	Alpha)
VALUES	('COLOR_PLAYER_ANT_OIRAT_PRIMARY', 			1,		1,		1,		1),
		('COLOR_PLAYER_ANT_OIRAT_SECONDARY', 		0.137,	0.418,	0.496,	1);
--==========================================================================================================================
-- LEADERS
--==========================================================================================================================
-- Types
-------------------------------------	
INSERT INTO Types	
		(Type,							Kind)
VALUES	('LEADER_ANT_GALDAN',			'KIND_LEADER');	
-------------------------------------
-- Leaders
-------------------------------------	
INSERT INTO Leaders	
		(LeaderType,					Name,												InheritFrom,		SceneLayers)
VALUES	('LEADER_ANT_GALDAN',			'LOC_LEADER_ANT_GALDAN_NAME',						'LEADER_DEFAULT',	4);	
-------------------------------------
-- LeaderQuotes
-------------------------------------	
INSERT INTO LeaderQuotes	
		(LeaderType,					Quote)
VALUES	('LEADER_ANT_GALDAN',			'LOC_PEDIA_LEADERS_PAGE_ANT_GALDAN_QUOTE');	
-------------------------------------
-- LeaderTraits
-------------------------------------	
INSERT INTO LeaderTraits	
		(LeaderType,					TraitType)
VALUES	('LEADER_ANT_GALDAN',			'TRAIT_LEADER_ANT_BOSHUGTU_KHAN');	
-- -------------------------------------
-- HistoricalAgendas
-- -------------------------------------	
INSERT INTO HistoricalAgendas	
		(LeaderType,					AgendaType)
VALUES	('LEADER_ANT_GALDAN',			'AGENDA_ANT_SUBJUGATION_OF_KHALKHA');	
-- -------------------------------------
-- FavoredReligions
-- -------------------------------------	
INSERT INTO FavoredReligions	
		(LeaderType,					ReligionType)
VALUES	('LEADER_ANT_GALDAN',			'RELIGION_BUDDHISM');
--==========================================================================================================================
-- TRAITS
--==========================================================================================================================
-- Types
-------------------------------------	
INSERT INTO Types	
		(Type,													Kind)
VALUES	('TRAIT_LEADER_ANT_BOSHUGTU_KHAN',						'KIND_TRAIT');	
-------------------------------------			
-- Traits			
-------------------------------------				
INSERT INTO Traits				
		(TraitType,												Name,												Description)
VALUES	('TRAIT_LEADER_ANT_BOSHUGTU_KHAN',						'LOC_TRAIT_LEADER_ANT_BOSHUGTU_KHAN_NAME',			'LOC_TRAIT_LEADER_ANT_BOSHUGTU_KHAN_DESCRIPTION');
-------------------------------------
-- TraitModifiers
-------------------------------------
INSERT INTO TraitModifiers			
		(TraitType,												ModifierId)
VALUES	('TRAIT_LEADER_ANT_BOSHUGTU_KHAN', 						'TRAIT_ANT_BOSHUGTU_FAITH_FROM_KILLS'),
		('TRAIT_LEADER_ANT_BOSHUGTU_KHAN', 						'TRAIT_ANT_BOSHUGTU_LIGHT_CAV_FAITH_PURCHASE'),
		('TRAIT_LEADER_ANT_BOSHUGTU_KHAN', 						'TRAIT_ANT_BOSHUGTU_HEAVY_CAV_FAITH_PURCHASE'),
		('TRAIT_LEADER_ANT_BOSHUGTU_KHAN', 						'TRAIT_ANT_BOSHUGTU_MISSIONARY_ON_CAPTURE');
--==========================================================================================================================
-- AGENDAS
--==========================================================================================================================
-- Agendas			
-------------------------------------				
INSERT INTO Agendas				
		(AgendaType,									Name,											Description)
VALUES	('AGENDA_ANT_SUBJUGATION_OF_KHALKHA',			'LOC_AGENDA_ANT_SUBJUGATION_OF_KHALKHA_NAME',	'LOC_AGENDA_ANT_SUBJUGATION_OF_KHALKHA_DESCRIPTION');	
-------------------------------------
-- Types
-------------------------------------	
INSERT INTO Types	
		(Type,											Kind)
VALUES	('TRAIT_AGENDA_ANT_SUBJUGATION_OF_KHALKHA',		'KIND_TRAIT');
-------------------------------------			
-- AgendaTraits			
-------------------------------------				
INSERT INTO AgendaTraits				
		(AgendaType,									TraitType)
VALUES	('AGENDA_ANT_SUBJUGATION_OF_KHALKHA',			'TRAIT_AGENDA_ANT_SUBJUGATION_OF_KHALKHA');
-------------------------------------			
-- ExclusiveAgendas			
-------------------------------------
INSERT INTO ExclusiveAgendas				
		(AgendaOne,										AgendaTwo)
VALUES	('AGENDA_ANT_SUBJUGATION_OF_KHALKHA',			'AGENDA_PARANOID'),
		('AGENDA_ANT_SUBJUGATION_OF_KHALKHA',			'AGENDA_STANDING_ARMY');				
-------------------------------------			
-- Traits			
-------------------------------------				
INSERT INTO Traits				
		(TraitType,										Name,											Description)
VALUES	('TRAIT_AGENDA_ANT_SUBJUGATION_OF_KHALKHA',		'LOC_AGENDA_ANT_SUBJUGATION_OF_KHALKHA_NAME',	'LOC_AGENDA_ANT_SUBJUGATION_OF_KHALKHA_DESCRIPTION');
-------------------------------------
-- TraitModifiers
-------------------------------------
INSERT INTO TraitModifiers			
		(TraitType,														ModifierId)
VALUES	('TRAIT_AGENDA_ANT_SUBJUGATION_OF_KHALKHA', 					'AGENDA_ANT_SUBJUGATION_OF_KHALKHA_FRIEND'),
		('TRAIT_AGENDA_ANT_SUBJUGATION_OF_KHALKHA', 					'AGENDA_ANT_SUBJUGATION_OF_KHALKHA_NOT_FRIEND'),
		('TRAIT_AGENDA_ANT_SUBJUGATION_OF_KHALKHA', 					'AGENDA_ANT_SUBJUGATION_OF_KHALKHA_NOT_FRIEND_SAME_CONTINENT');
--==========================================================================================================================
-- MODIFIERS
--==========================================================================================================================
-- Modifiers
-------------------------------------
INSERT INTO Modifiers			
		(ModifierId,													ModifierType,												SubjectRequirementSetId)
VALUES	('TRAIT_ANT_BOSHUGTU_FAITH_FROM_KILLS',							'MODIFIER_PLAYER_UNITS_ADJUST_POST_COMBAT_YIELD',			null),
		('TRAIT_ANT_BOSHUGTU_MISSIONARY_ON_CAPTURE',					'MODIFIER_PLAYER_CAPTURED_CITY_ATTACH_MODIFIER',			null),
		('TRAIT_ANT_BOSHUGTU_MISSIONARY_ON_CAPTURE_MODIFIER',			'MODIFIER_ANT_GRANT_UNIT_IN_CAPITAL',						null),
		('TRAIT_ANT_BOSHUGTU_LIGHT_CAV_FAITH_PURCHASE',					'MODIFIER_PLAYER_CITIES_ENABLE_UNIT_FAITH_PURCHASE',		null),
		('TRAIT_ANT_BOSHUGTU_HEAVY_CAV_FAITH_PURCHASE',					'MODIFIER_PLAYER_CITIES_ENABLE_UNIT_FAITH_PURCHASE',		null),
		('AGENDA_ANT_SUBJUGATION_OF_KHALKHA_FRIEND',					'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',				'ANT_SUBJUGATION_OF_KHALKHA_FRIEND'),
		('AGENDA_ANT_SUBJUGATION_OF_KHALKHA_NOT_FRIEND',				'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',				'ANT_SUBJUGATION_OF_KHALKHA_NOT_FRIEND'),
		('AGENDA_ANT_SUBJUGATION_OF_KHALKHA_NOT_FRIEND_SAME_CONTINENT',	'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',				'ANT_SUBJUGATION_OF_KHALKHA_NOT_FRIEND_SAME_CONTINENT');
-------------------------------------
-- ModifierArguments
-------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,													Name,							Value)
VALUES	('TRAIT_ANT_BOSHUGTU_FAITH_FROM_KILLS',							'YieldType',					'YIELD_FAITH'),
		('TRAIT_ANT_BOSHUGTU_FAITH_FROM_KILLS',							'PercentDefeatedStrength',		50),

		('TRAIT_ANT_BOSHUGTU_MISSIONARY_ON_CAPTURE',					'ModifierId',					'TRAIT_ANT_BOSHUGTU_MISSIONARY_ON_CAPTURE_MODIFIER'),
		('TRAIT_ANT_BOSHUGTU_MISSIONARY_ON_CAPTURE_MODIFIER',			'UnitType',						'UNIT_MISSIONARY'),
		('TRAIT_ANT_BOSHUGTU_MISSIONARY_ON_CAPTURE_MODIFIER',			'Amount',						1),

		('TRAIT_ANT_BOSHUGTU_LIGHT_CAV_FAITH_PURCHASE',					'Tag',							'CLASS_LIGHT_CAVALRY'),
		('TRAIT_ANT_BOSHUGTU_HEAVY_CAV_FAITH_PURCHASE',					'Tag',							'CLASS_HEAVY_CAVALRY'),
		
		('AGENDA_ANT_SUBJUGATION_OF_KHALKHA_FRIEND',					'InitialValue',					10),
		('AGENDA_ANT_SUBJUGATION_OF_KHALKHA_FRIEND',					'StatementKey',					'LOC_DIPLO_KUDO_LEADER_ANT_GALDAN_REASON_ANY'),
		('AGENDA_ANT_SUBJUGATION_OF_KHALKHA_FRIEND',					'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_ANT_SUBJUGATION_OF_KHALKHA_SAME_RELIGION_FRIEND'),

		('AGENDA_ANT_SUBJUGATION_OF_KHALKHA_NOT_FRIEND',				'InitialValue',					-5),
		('AGENDA_ANT_SUBJUGATION_OF_KHALKHA_NOT_FRIEND',				'StatementKey',					'LOC_DIPLO_WARNING_LEADER_ANT_GALDAN_REASON_ANY'),
		('AGENDA_ANT_SUBJUGATION_OF_KHALKHA_NOT_FRIEND',				'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_ANT_SUBJUGATION_OF_KHALKHA_SAME_RELIGION_NOT_FRIEND'),
		
		('AGENDA_ANT_SUBJUGATION_OF_KHALKHA_NOT_FRIEND_SAME_CONTINENT',	'InitialValue',					-15),
		('AGENDA_ANT_SUBJUGATION_OF_KHALKHA_NOT_FRIEND_SAME_CONTINENT',	'StatementKey',					'LOC_DIPLO_WARNING_LEADER_ANT_GALDAN_REASON_ANY'),
		('AGENDA_ANT_SUBJUGATION_OF_KHALKHA_NOT_FRIEND_SAME_CONTINENT',	'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_ANT_SUBJUGATION_OF_KHALKHA_SAME_RELIGION_NOT_FRIEND');
-------------------------------------
-- Types
-------------------------------------
INSERT INTO Types	
		(Type,											Kind)
VALUES	('MODIFIER_ANT_GRANT_UNIT_IN_CAPITAL',			'KIND_MODIFIER');
-------------------------------------
-- DynamicModifiers
-------------------------------------
INSERT INTO DynamicModifiers
		(ModifierType,													CollectionType,							EffectType)
VALUES	('MODIFIER_ANT_GRANT_UNIT_IN_CAPITAL',							'COLLECTION_PLAYER_CAPITAL_CITY',		'EFFECT_GRANT_UNIT_IN_CITY');
-------------------------------------
-- ModifierStrings
-------------------------------------
INSERT INTO ModifierStrings
		(ModifierId,													Context,						Text)
VALUES	('AGENDA_ANT_SUBJUGATION_OF_KHALKHA_FRIEND',					'Sample',						'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'),
		('AGENDA_ANT_SUBJUGATION_OF_KHALKHA_NOT_FRIEND',				'Sample',						'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'),
		('AGENDA_ANT_SUBJUGATION_OF_KHALKHA_NOT_FRIEND_SAME_CONTINENT',	'Sample',						'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL');	
--==========================================================================================================================
-- REQUIREMENTS
--==========================================================================================================================
-- RequirementSets
-------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,												RequirementSetType)
VALUES	('ANT_SUBJUGATION_OF_KHALKHA_FRIEND',							'REQUIREMENTSET_TEST_ALL'),
		('ANT_SUBJUGATION_OF_KHALKHA_NOT_FRIEND',						'REQUIREMENTSET_TEST_ALL'),
		('ANT_SUBJUGATION_OF_KHALKHA_NOT_FRIEND_SAME_CONTINENT',		'REQUIREMENTSET_TEST_ALL');
-------------------------------------
-- RequirementSetRequirements
-------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,												RequirementId)
VALUES	('ANT_SUBJUGATION_OF_KHALKHA_FRIEND',							'REQUIRES_PLAYER_DECLARED_FRIEND'),
		('ANT_SUBJUGATION_OF_KHALKHA_FRIEND',							'REQUIRES_SAME_RELIGION'),
		('ANT_SUBJUGATION_OF_KHALKHA_FRIEND',							'REQUIRES_MAJOR_CIV_OPPONENT'),
		('ANT_SUBJUGATION_OF_KHALKHA_FRIEND',							'REQUIRES_MET_10_TURNS_AGO'),

		('ANT_SUBJUGATION_OF_KHALKHA_NOT_FRIEND',						'REQUIRES_ANT_PLAYER_NOT_DECLARED_FRIEND'),
		('ANT_SUBJUGATION_OF_KHALKHA_NOT_FRIEND',						'REQUIRES_SAME_RELIGION'),
		('ANT_SUBJUGATION_OF_KHALKHA_NOT_FRIEND',						'REQUIRES_ANT_PLAYER_DIFFERENT_CONTINENT'),
		('ANT_SUBJUGATION_OF_KHALKHA_NOT_FRIEND',						'REQUIRES_MAJOR_CIV_OPPONENT'),
		('ANT_SUBJUGATION_OF_KHALKHA_NOT_FRIEND',						'REQUIRES_MET_10_TURNS_AGO'),

		('ANT_SUBJUGATION_OF_KHALKHA_NOT_FRIEND_SAME_CONTINENT',		'REQUIRES_ANT_PLAYER_NOT_DECLARED_FRIEND'),
		('ANT_SUBJUGATION_OF_KHALKHA_NOT_FRIEND_SAME_CONTINENT',		'REQUIRES_SAME_RELIGION'),
		('ANT_SUBJUGATION_OF_KHALKHA_NOT_FRIEND_SAME_CONTINENT',		'REQUIRES_SAME_HOME_CONTINENT'),
		('ANT_SUBJUGATION_OF_KHALKHA_NOT_FRIEND_SAME_CONTINENT',		'REQUIRES_MAJOR_CIV_OPPONENT'),
		('ANT_SUBJUGATION_OF_KHALKHA_NOT_FRIEND_SAME_CONTINENT',		'REQUIRES_MET_10_TURNS_AGO');
-------------------------------------
-- Requirements
-------------------------------------
INSERT INTO Requirements
		(RequirementId, 												RequirementType,										Inverse)
VALUES	('REQUIRES_ANT_PLAYER_NOT_DECLARED_FRIEND',						'REQUIREMENT_DECLARED_FRIEND',							1),
		('REQUIRES_ANT_PLAYER_DIFFERENT_CONTINENT',						'REQUIREMENT_PLAYER_SHARES_HOME_CONTINENT',				1);
-------------------------------------
-- RequirementArguments
-------------------------------------
--==========================================================================================================================
-- AI
--==========================================================================================================================
-- AiListTypes
-------------------------------------	
INSERT INTO AiListTypes	
		(ListType)
VALUES	('Ant_Galdan_Wonders'),
		('Ant_Galdan_Civics'),
		('Ant_Galdan_Techs'),
		('Ant_Galdan_PreferEncampments'),
		('Ant_Galdan_PreferWar');
-------------------------------------
-- AiLists
-------------------------------------	
INSERT INTO AiLists	
		(ListType,								AgendaType,											System)
VALUES	('Ant_Galdan_Wonders',					'TRAIT_AGENDA_ANT_SUBJUGATION_OF_KHALKHA',			'Buildings'),
		('Ant_Galdan_Civics',					'TRAIT_AGENDA_ANT_SUBJUGATION_OF_KHALKHA',			'Civics'),
		('Ant_Galdan_Techs',					'TRAIT_AGENDA_ANT_SUBJUGATION_OF_KHALKHA',			'Technologies'),
		('Ant_Galdan_PreferEncampments',		'TRAIT_AGENDA_ANT_SUBJUGATION_OF_KHALKHA',			'Districts'),
		('Ant_Galdan_PreferWar',				'TRAIT_AGENDA_ANT_SUBJUGATION_OF_KHALKHA',			'Strategies'),
		('ExpansionistCitySettlement',			'TRAIT_AGENDA_ANT_SUBJUGATION_OF_KHALKHA',			'SettlementPreferences'),
		('FaithLoverFaithPreference',			'TRAIT_AGENDA_ANT_SUBJUGATION_OF_KHALKHA',			'Yields');
-------------------------------------		
-- AiFavoredItems
-------------------------------------
INSERT INTO AiFavoredItems	
		(ListType,							Item)
VALUES	('Ant_Galdan_PreferEncampments',	'DISTRICT_ENCAMPMENT'),

		('Ant_Galdan_Wonders',				'BUILDING_ALHAMBRA'),
		('Ant_Galdan_Wonders',				'BUILDING_STONEHENGE'),
		('Ant_Galdan_Wonders',				'BUILDING_MAHABODHI_TEMPLE'),
		('Ant_Galdan_Wonders',				'BUILDING_HAGIA_SOPHIA'),
		('Ant_Galdan_Wonders',				'BUILDING_POTALA_PALACE'),
		('Ant_Galdan_Wonders',				'BUILDING_TERRACOTTA_ARMY'),

		('Ant_Galdan_Civics',				'CIVIC_THEOLOGY'),
		('Ant_Galdan_Civics',				'CIVIC_MILITARY_TRADITION'),
		('Ant_Galdan_Civics',				'CIVIC_MILITARY_TRAINING'),
		('Ant_Galdan_Civics',				'CIVIC_MERCENARIES'),
		
		('Ant_Galdan_Techs',				'TECH_ANIMAL_HUSBANDRY'),
		('Ant_Galdan_Techs',				'TECH_ASTROLOGY'),
		('Ant_Galdan_Techs',				'TECH_MILITARY_SCIENCE');	
-------------------------------------		
-- AiFavoredItems: Favoured Victory Strategy
-------------------------------------
INSERT INTO AiFavoredItems	
		(ListType,						Item,									Value)
VALUES	('Ant_Galdan_PreferWar',		'VICTORY_STRATEGY_MILITARY_VICTORY',	-1);			
--==========================================================================================================================
-- CivilizationLeaders
--==========================================================================================================================
INSERT INTO CivilizationLeaders
		(LeaderType, 				CivilizationType,			CapitalName)
VALUES  ('LEADER_ANT_GALDAN',		'CIVILIZATION_ANT_OIRAT',	'LOC_CITY_NAME_ANT_OIRAT_GHULJA');
--==========================================================================================================================
--==========================================================================================================================