--==========================================================================================================================
-- Units
--==========================================================================================================================
-- Types
-----------------------------------------------------------------------------------	
INSERT INTO Types	
		(Type,													Kind)
VALUES	('UNIT_ANT_OIRAT_ULAN_ZALATA',							'KIND_UNIT'),
		('ABILITY_ANT_ULAN_ATTACK_BONUS',						'KIND_ABILITY');
-----------------------------------------------------------------------------------
-- Units
-----------------------------------------------------------------------------------
INSERT INTO Units
			(UnitType,								Name, 											Description, 									TraitType,											Combat,		BaseMoves,		Cost,	AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, PurchaseYield, PromotionClass, Maintenance,		MandatoryObsoleteTech, PrereqTech)
SELECT 		'UNIT_ANT_OIRAT_ULAN_ZALATA',			'LOC_UNIT_ANT_OIRAT_ULAN_ZALATA_NAME',			'LOC_UNIT_ANT_OIRAT_ULAN_ZALATA_DESCRIPTION',	'TRAIT_CIVILIZATION_UNIT_ANT_OIRAT_ULAN_ZALATA',	Combat - 5,	BaseMoves + 1,	Cost,	AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, PurchaseYield, PromotionClass, Maintenance,		MandatoryObsoleteTech, PrereqTech
FROM Units WHERE UnitType = 'UNIT_CAVALRY';
-----------------------------------------------------------------------------------
-- UnitUpgrades
-----------------------------------------------------------------------------------
INSERT INTO UnitUpgrades
			(Unit,								UpgradeUnit)
SELECT 		'UNIT_ANT_OIRAT_ULAN_ZALATA',		UpgradeUnit
FROM UnitUpgrades WHERE Unit = 'UNIT_CAVALRY';
-----------------------------------------------------------------------------------
-- UnitAiInfos
-----------------------------------------------------------------------------------
INSERT INTO UnitAiInfos
			(UnitType,							AiType)
SELECT 		'UNIT_ANT_OIRAT_ULAN_ZALATA',		AiType
FROM UnitAiInfos WHERE UnitType = 'UNIT_CAVALRY';
-----------------------------------------------------------------------------------
-- UnitReplaces
-----------------------------------------------------------------------------------
INSERT INTO UnitReplaces
			(CivUniqueUnitType,					ReplacesUnitType)
VALUES		('UNIT_ANT_OIRAT_ULAN_ZALATA',		'UNIT_CAVALRY');
-----------------------------------------------------------------------------------
-- TypeTags
-----------------------------------------------------------------------------------
INSERT INTO TypeTags
			(Type,								Tag)
SELECT 		'UNIT_ANT_OIRAT_ULAN_ZALATA',		Tag
FROM TypeTags WHERE Type = 'UNIT_CAVALRY';

INSERT INTO TypeTags
			(Type,								Tag)
VALUES		('UNIT_ANT_OIRAT_ULAN_ZALATA',		'CLASS_ANT_ULAN_ZALATA'),
			('ABILITY_ANTI_CAVALRY',			'CLASS_ANT_ULAN_ZALATA'),
			('ABILITY_ANT_ULAN_ATTACK_BONUS',	'CLASS_ANT_ULAN_ZALATA');
-----------------------------------------------------------------------------------
-- Tags
-----------------------------------------------------------------------------------
INSERT INTO Tags
			(Tag,								Vocabulary)
VALUES		('CLASS_ANT_ULAN_ZALATA',			'ABILITY_CLASS');
--==========================================================================================================================
-- Abilities
--==========================================================================================================================
-- Types
-----------------------------------------------------------------------------------	
-------------------------------------
-- UnitAbilities
-------------------------------------
INSERT INTO UnitAbilities
			(UnitAbilityType,							Name,											Description)
VALUES		('ABILITY_ANT_ULAN_ATTACK_BONUS',			'LOC_ABILITY_ANT_ULAN_ATTACK_BONUS_NAME',		'LOC_ABILITY_ANT_ULAN_ATTACK_BONUS_DESCRIPTION');				
-------------------------------------
-- UnitAbilityModifiers
-------------------------------------
INSERT INTO UnitAbilityModifiers
			(UnitAbilityType,							ModifierId)
VALUES		('ABILITY_ANT_ULAN_ATTACK_BONUS',			'ANT_STRONGER_WHEN_ATTACKING');
--==========================================================================================================================
-- MODIFIERS
--==========================================================================================================================
-- Modifiers
-------------------------------------
INSERT INTO Modifiers			
			(ModifierId,									ModifierType,												SubjectRequirementSetId)
VALUES		('ANT_STRONGER_WHEN_ATTACKING',					'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH',						'UNIT_STRONG_WHEN_ATTACKING_REQUIREMENTS');					
-------------------------------------
-- ModifierArguments
-------------------------------------
INSERT INTO ModifierArguments
			(ModifierId,									Name,							Value)
VALUES		('ANT_STRONGER_WHEN_ATTACKING',					'Amount',						5);
-------------------------------------
-- ModifierStrings
-------------------------------------
INSERT INTO ModifierStrings
			(ModifierId,									Context,						Text)
VALUES		('ANT_STRONGER_WHEN_ATTACKING',					'Preview',						'LOC_ABILITY_STRONG_WHEN_ATTACKING_DESCRIPTION');
--==========================================================================================================================
-- Requirements
--==========================================================================================================================
-- RequirementSets
-------------------------------------
-------------------------------------
-- RequirementSetRequirements
-------------------------------------
-------------------------------------
-- Requirements
-------------------------------------
-------------------------------------
-- RequirementArguments
-------------------------------------
--==========================================================================================================================
-- Moments
--==========================================================================================================================
-------------------------------------
-- MomentIllustrations
-------------------------------------
INSERT INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,					GameDataType,						Texture)
VALUES		('MOMENT_ILLUSTRATION_UNIQUE_UNIT',			'MOMENT_DATA_UNIT',				'UNIT_ANT_OIRAT_ULAN_ZALATA',		'Moment_UniqueUnit_Ant_Ulan_Zalata.dds');
-----------------------------------------------------------------------------------
-----------------------------------------------------------------------------------