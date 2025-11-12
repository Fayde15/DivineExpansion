-- Creating the boon functions itself
game.TraitData.Tyche_Boon = {
InheritFrom = { "BaseTrait", "EarthBoon" },
Elements = { "Earth" }, -- Need to add this even if you inherit
Name = "Tyche_Attack_Boon",
BoonInfoTitle = "Tyche_Attack",
 Icon = "Boon_Ares_27",
  Slot = "Melee",
 TraitOrderingValueCache = 50,
  Cost = 30,
   BlockStacking = false,
  RarityLevels = {
      Common = {
           Multiplier = 1.00,
      },
      Rare = {
            Multiplier = 1.50,
        },
       Epic = {
           Multiplier = 2.00,
       },
      Heroic = {
         Multiplier = 2.50,
       },
        AddOutgoingDamageModifiers =
		{
			ValidWeapons = WeaponSets.HeroPrimaryWeapons,
			ConditionalValidWeapon = 
			{
				TraitName = "TransformPrimaryTalent",
				WeaponName = "WeaponTransformAttack"
			},
			ProximityThreshold = 430,
			ProximityThresholdExclusionBoon = "AllCloseBoon",
			ProximityMultiplier = 
			{ 
				BaseValue = 6.0,
				SourceIsMultiplier = true,

				AbsoluteStackValues =
				{
					[1] = 1.25,
					[2] = 1.15,
					[3] = 1.10,
				},
			},
			ReportValues = 
			{ 
				ReportedWeaponMultiplier = "ProximityMultiplier",
			},
		},
		StatLines =
		{
			"NearbyDamageStatDisplay1",
		},
		ExtractValues =
		{
			{
					Key = "ReportedWeaponMultiplier",
					ExtractAs = "TooltipDamageBonus",
					Format = "PercentDelta",
			},
		},
		WeaponDataOverride = 
		{
			WeaponSuitCharged = 
			{
				BlockGraphic = "SuitDeflect_Aphrodite",
			}
		},
    }
