local __FILE__=tostring(debugstack(1,2,0):match("(.*):1:")) -- Always check line number in regexp and file
local me,addon=...
local fake={}
local data={
	Upgrades={
		136412,
		137207,
		137208,
		
	},
	Xp={
		141028
	},
	Equipment={
		'Success Chance Increase',
		139816,
		139801,
		139802,
		140572,
		140571,
		140573,
		140581,
		140582,
		140583,
		'Mission Time Reduction',
		139813,
		139814,
		139799,
		'Combat Ally Bonus',
		139792,
		139808,
		139809,
		139795,
		139811,
		139812,
		'Troop Affinity',
		139875,
		139876,
		139877,
		139878,
		139835,
		139836,
		139837,
		139838,
		139863,
		139864,
		139865,
		139866,
		139847,
		139848,
		139849,
		139850,
		139843,
		139844,
		139845,
		139846,
		139859,
		139860,
		139861,
		139862,
		139867,
		139868,
		139869,
		139870,
		139871,
		139872,
		139873,
		139874,
		139831,
		139832,
		139833,
		139834,
		139839,
		139840,
		139841,
		139842,
		139855,
		139856,
		139857,
		139858,
		139851,
		139852,
		139853,
		139854,
		'Legendary Equipment',
		139830,
		139828,
		139829,
		139827,
		139825,
		139826,
		139821,
		139804,
		139819,
		139824,
		139823,
		139822,
		'Consumables',
		140749,
		139419,
		140760,
		139428,
		139177,
		139420,
		138883,
		139376,
		138418,
		138412,
		139670
	},
}
function addon:GetData(key)
	key=key or "none"
	return data[key] or fake
end
--[[

dbOHCperChar = {
	"GameTooltip/GarrisonMissionListTooltipThreatsFrame", -- [299]
	"GameTooltip/GarrisonMissionListTooltipThreatsFrame", -- [301]
	"GameTooltip/GarrisonMissionListTooltipThreatsFrame", -- [303]
	"GameTooltip/GarrisonMissionListTooltipThreatsFrame", -- [367]
	"GameTooltip/GarrisonMissionListTooltipThreatsFrame", -- [369]
	"GameTooltip/GarrisonMissionListTooltipThreatsFrame", -- [371]
	"GarrisonFollowerTooltip/GarrisonFollowerTooltip.PortraitFrame", -- [421]
	"GarrisonFollowerTooltip/GarrisonFollowerTooltip.PortraitFrame", -- [425]
	"GarrisonFollowerTooltip/UNK_0", -- [422]
	"GarrisonFollowerTooltip/UNK_0", -- [426]
	"GarrisonFollowerTooltip/UNK_0", -- [427]
	"GarrisonMissionListTooltipThreatsFrame/UNK_0", -- [298]
	"GarrisonMissionListTooltipThreatsFrame/UNK_0", -- [300]
	"GarrisonMissionListTooltipThreatsFrame/UNK_0", -- [302]
	"GarrisonMissionListTooltipThreatsFrame/UNK_0", -- [366]
	"GarrisonMissionListTooltipThreatsFrame/UNK_0", -- [368]
	"GarrisonMissionListTooltipThreatsFrame/UNK_0", -- [370]
	"OrderHallCommandBar/OrderHallCommandBar.CurrencyHitTest", -- [173]
	"OrderHallCommandBar/OrderHallCommandBar.CurrencyHitTest", -- [1]
	"OrderHallCommandBar/OrderHallCommandBar.CurrencyHitTest", -- [87]
	"OrderHallCommandBar/OrderHallCommandBar.WorldMapButton", -- [13]
	"OrderHallCommandBar/OrderHallCommandBar.WorldMapButton", -- [174]
	"OrderHallCommandBar/OrderHallCommandBar.WorldMapButton", -- [88]
	"OrderHallFollowerOptionDropDown/OrderHallFollowerOptionDropDownButton", -- [324]
	"OrderHallFollowerOptionDropDown/OrderHallFollowerOptionDropDownButton", -- [411]
	"OrderHallMissionFrame.FollowerTab.AbilitiesFrame/OrderHallMissionFrame.FollowerTab.AbilitiesFrame.CombatAllySpell1", -- [311]
	"OrderHallMissionFrame.FollowerTab.AbilitiesFrame/OrderHallMissionFrame.FollowerTab.AbilitiesFrame.CombatAllySpell2", -- [312]
	"OrderHallMissionFrame.FollowerTab.ModelCluster.Child/OrderHallMissionFrame.FollowerTab.ModelCluster.Child.Model1", -- [327]
	"OrderHallMissionFrame.FollowerTab.ModelCluster.Child/OrderHallMissionFrame.FollowerTab.ModelCluster.Child.Shadows", -- [307]
	"OrderHallMissionFrame.FollowerTab.ModelCluster/OrderHallMissionFrame.FollowerTab.ModelCluster.Child", -- [308]
	"OrderHallMissionFrame.FollowerTab/OrderHallMissionFrame.FollowerTab.AbilitiesFrame", -- [313]
	"OrderHallMissionFrame.FollowerTab/OrderHallMissionFrame.FollowerTab.DurabilityFrame", -- [304]
	"OrderHallMissionFrame.FollowerTab/OrderHallMissionFrame.FollowerTab.ItemAverageLevel", -- [315]
	"OrderHallMissionFrame.FollowerTab/OrderHallMissionFrame.FollowerTab.ModelCluster", -- [309]
	"OrderHallMissionFrame.FollowerTab/OrderHallMissionFrame.FollowerTab.PortraitFrame", -- [306]
	"OrderHallMissionFrame.FollowerTab/OrderHallMissionFrame.FollowerTab.QualityFrame", -- [305]
	"OrderHallMissionFrame.FollowerTab/OrderHallMissionFrame.FollowerTab.Source", -- [314]
	"OrderHallMissionFrame.FollowerTab/OrderHallMissionFrame.FollowerTab.XPBar", -- [310]
	"OrderHallMissionFrame.MissionTab.MissionPage.BuffsFrame/UNK_0", -- [418]
	"OrderHallMissionFrame.MissionTab.MissionPage.Enemy1/OrderHallMissionFrame.MissionTab.MissionPage.Enemy1.MechanicEffect", -- [386]
	"OrderHallMissionFrame.MissionTab.MissionPage.Enemy1/OrderHallMissionFrame.MissionTab.MissionPage.Enemy1.PortraitFrame", -- [384]
	"OrderHallMissionFrame.MissionTab.MissionPage.Enemy1/UNK_0", -- [385]
	"OrderHallMissionFrame.MissionTab.MissionPage.Enemy2/OrderHallMissionFrame.MissionTab.MissionPage.Enemy2.MechanicEffect", -- [390]
	"OrderHallMissionFrame.MissionTab.MissionPage.Enemy2/OrderHallMissionFrame.MissionTab.MissionPage.Enemy2.PortraitFrame", -- [388]
	"OrderHallMissionFrame.MissionTab.MissionPage.Enemy2/UNK_0", -- [389]
	"OrderHallMissionFrame.MissionTab.MissionPage.Enemy3/OrderHallMissionFrame.MissionTab.MissionPage.Enemy3.MechanicEffect", -- [394]
	"OrderHallMissionFrame.MissionTab.MissionPage.Enemy3/OrderHallMissionFrame.MissionTab.MissionPage.Enemy3.PortraitFrame", -- [392]
	"OrderHallMissionFrame.MissionTab.MissionPage.Enemy3/UNK_0", -- [393]
	"OrderHallMissionFrame.MissionTab.MissionPage.Follower1/OrderHallMissionFrame.MissionTab.MissionPage.Follower1.PortraitFrame", -- [396]
	"OrderHallMissionFrame.MissionTab.MissionPage.Follower2/OrderHallMissionFrame.MissionTab.MissionPage.Follower2.Durability", -- [416]
	"OrderHallMissionFrame.MissionTab.MissionPage.Follower2/OrderHallMissionFrame.MissionTab.MissionPage.Follower2.PortraitFrame", -- [398]
	"OrderHallMissionFrame.MissionTab.MissionPage.Follower3/OrderHallMissionFrame.MissionTab.MissionPage.Follower3.Durability", -- [417]
	"OrderHallMissionFrame.MissionTab.MissionPage.Follower3/OrderHallMissionFrame.MissionTab.MissionPage.Follower3.PortraitFrame", -- [400]
	"OrderHallMissionFrame.MissionTab.MissionPage.RewardsFrame/OrderHallMissionFrame.MissionTab.MissionPage.RewardsFrame.MissionXPTooltipHitBox", -- [381]
	"OrderHallMissionFrame.MissionTab.MissionPage.RewardsFrame/OrderHallMissionFrame.MissionTab.MissionPage.RewardsFrame.OvermaxItem", -- [378]
	"OrderHallMissionFrame.MissionTab.MissionPage.RewardsFrame/OrderHallMissionFrame.MissionTab.MissionPage.RewardsFrame.OvermaxItem", -- [415]
	"OrderHallMissionFrame.MissionTab.MissionPage.RewardsFrame/OrderHallMissionFrame.MissionTab.MissionPage.RewardsFrame.OvermaxItem", -- [420]
	"OrderHallMissionFrame.MissionTab.MissionPage.RewardsFrame/OrderHallMissionFrame.MissionTab.MissionPage.RewardsFrame.Reward1", -- [379]
	"OrderHallMissionFrame.MissionTab.MissionPage.RewardsFrame/OrderHallMissionFrame.MissionTab.MissionPage.RewardsFrame.Reward2", -- [380]
	"OrderHallMissionFrame.MissionTab.MissionPage.RewardsFrame/OrderHallMissionFrame.MissionTab.MissionPage.RewardsFrame.TooltipHitBox", -- [382]
	"OrderHallMissionFrame.MissionTab.MissionPage.Stage/OrderHallMissionFrame.MissionTab.MissionPage.Stage.MissionEnvIcon", -- [374]
	"OrderHallMissionFrame.MissionTab.MissionPage.Stage/OrderHallMissionFrame.MissionTab.MissionPage.Stage.MissionInfo", -- [373]
	"OrderHallMissionFrame.MissionTab.MissionPage/OrderHallMissionFrame.MissionTab.MissionPage.BuffsFrame", -- [419]
	"OrderHallMissionFrame.MissionTab.MissionPage/OrderHallMissionFrame.MissionTab.MissionPage.CloseButton", -- [372]
	"OrderHallMissionFrame.MissionTab.MissionPage/OrderHallMissionFrame.MissionTab.MissionPage.CostFrame", -- [377]
	"OrderHallMissionFrame.MissionTab.MissionPage/OrderHallMissionFrame.MissionTab.MissionPage.EmptyFollowerModel", -- [402]
	"OrderHallMissionFrame.MissionTab.MissionPage/OrderHallMissionFrame.MissionTab.MissionPage.Enemy1", -- [387]
	"OrderHallMissionFrame.MissionTab.MissionPage/OrderHallMissionFrame.MissionTab.MissionPage.Enemy2", -- [391]
	"OrderHallMissionFrame.MissionTab.MissionPage/OrderHallMissionFrame.MissionTab.MissionPage.Enemy3", -- [395]
	"OrderHallMissionFrame.MissionTab.MissionPage/OrderHallMissionFrame.MissionTab.MissionPage.Follower1", -- [397]
	"OrderHallMissionFrame.MissionTab.MissionPage/OrderHallMissionFrame.MissionTab.MissionPage.Follower2", -- [399]
	"OrderHallMissionFrame.MissionTab.MissionPage/OrderHallMissionFrame.MissionTab.MissionPage.Follower3", -- [401]
	"OrderHallMissionFrame.MissionTab.MissionPage/OrderHallMissionFrame.MissionTab.MissionPage.ItemLevelHitboxFrame", -- [414]
	"OrderHallMissionFrame.MissionTab.MissionPage/OrderHallMissionFrame.MissionTab.MissionPage.RewardsFrame", -- [383]
	"OrderHallMissionFrame.MissionTab.MissionPage/OrderHallMissionFrame.MissionTab.MissionPage.Stage", -- [375]
	"OrderHallMissionFrame.MissionTab.MissionPage/OrderHallMissionFrame.MissionTab.MissionPage.StartMissionButton", -- [376]
	"OrderHallMissionFrame.MissionTab/OrderHallMissionFrame.MissionTab.MissionPage", -- [403]
	"OrderHallMissionFrame.MissionTab/OrderHallMissionFrameMissions", -- [280]
	"OrderHallMissionFrame.MissionTab/OrderHallMissionFrameMissions", -- [351]
	"OrderHallMissionFrame.MissionTab/UNK_0", -- [281]
	"OrderHallMissionFrame.MissionTab/UNK_0", -- [282]
	"OrderHallMissionFrame.MissionTab/UNK_0", -- [283]
	"OrderHallMissionFrame.MissionTab/UNK_0", -- [284]
	"OrderHallMissionFrame.MissionTab/UNK_0", -- [285]
	"OrderHallMissionFrame.MissionTab/UNK_0", -- [286]
	"OrderHallMissionFrame.MissionTab/UNK_0", -- [287]
	"OrderHallMissionFrame.MissionTab/UNK_0", -- [288]
	"OrderHallMissionFrame.MissionTab/UNK_0", -- [289]
	"OrderHallMissionFrame.MissionTab/UNK_0", -- [290]
	"OrderHallMissionFrame.MissionTab/UNK_0", -- [291]
	"OrderHallMissionFrame.MissionTab/UNK_0", -- [292]
	"OrderHallMissionFrame.MissionTab/UNK_0", -- [293]
	"OrderHallMissionFrame.MissionTab/UNK_0", -- [352]
	"OrderHallMissionFrame.MissionTab/UNK_0", -- [353]
	"OrderHallMissionFrame.MissionTab/UNK_0", -- [354]
	"OrderHallMissionFrame.MissionTab/UNK_0", -- [355]
	"OrderHallMissionFrame.MissionTab/UNK_0", -- [356]
	"OrderHallMissionFrame.MissionTab/UNK_0", -- [357]
	"OrderHallMissionFrame.MissionTab/UNK_0", -- [358]
	"OrderHallMissionFrame.MissionTab/UNK_0", -- [359]
	"OrderHallMissionFrame.MissionTab/UNK_0", -- [360]
	"OrderHallMissionFrame.MissionTab/UNK_0", -- [361]
	"OrderHallMissionFrame.MissionTab/UNK_0", -- [362]
	"OrderHallMissionFrame.MissionTab/UNK_0", -- [363]
	"OrderHallMissionFrame.MissionTab/UNK_0", -- [364]
	"OrderHallMissionFrame/OrderHallMissionFrame.ClassHallIcon", -- [253]
	"OrderHallMissionFrame/OrderHallMissionFrame.CloseButton", -- [251]
	"OrderHallMissionFrame/OrderHallMissionFrame.FollowerTab", -- [316]
	"OrderHallMissionFrame/OrderHallMissionFrame.GarrCorners", -- [252]
	"OrderHallMissionFrame/OrderHallMissionFrame.MissionTab", -- [294]
	"OrderHallMissionFrame/OrderHallMissionFrame.MissionTab", -- [365]
	"OrderHallMissionFrame/OrderHallMissionFrameFollowers", -- [326]
	"OrderHallMissionFrame/OrderHallMissionFrameFollowers", -- [413]
	"OrderHallMissionFrame/OrderHallMissionFrameTab1", -- [254]
	"OrderHallMissionFrame/OrderHallMissionFrameTab1", -- [296]
	"OrderHallMissionFrame/OrderHallMissionFrameTab2", -- [255]
	"OrderHallMissionFrame/OrderHallMissionFrameTab2", -- [297]
	"OrderHallMissionFrame/OrderHallMissionFrameTab3", -- [256]
	"OrderHallMissionFrameFollowers/OrderHallFollowerOptionDropDown", -- [325]
	"OrderHallMissionFrameFollowers/OrderHallFollowerOptionDropDown", -- [412]
	"OrderHallMissionFrameFollowers/OrderHallMissionFrameFollowers.MaterialFrame", -- [322]
	"OrderHallMissionFrameFollowers/OrderHallMissionFrameFollowers.MaterialFrame", -- [409]
	"OrderHallMissionFrameFollowers/OrderHallMissionFrameFollowers.SearchBox", -- [323]
	"OrderHallMissionFrameFollowers/OrderHallMissionFrameFollowers.SearchBox", -- [410]
	"OrderHallMissionFrameFollowers/OrderHallMissionFrameFollowersListScrollFrame", -- [321]
	"OrderHallMissionFrameFollowers/OrderHallMissionFrameFollowersListScrollFrame", -- [408]
	"OrderHallMissionFrameFollowersListScrollFrame/OrderHallMissionFrameFollowersListScrollFrameScrollBar", -- [320]
	"OrderHallMissionFrameFollowersListScrollFrame/OrderHallMissionFrameFollowersListScrollFrameScrollBar", -- [407]
	"OrderHallMissionFrameFollowersListScrollFrame/OrderHallMissionFrameFollowersListScrollFrameScrollChild", -- [317]
	"OrderHallMissionFrameFollowersListScrollFrame/OrderHallMissionFrameFollowersListScrollFrameScrollChild", -- [404]
	"OrderHallMissionFrameFollowersListScrollFrameScrollBar/OrderHallMissionFrameFollowersListScrollFrameScrollBarScrollDownButton", -- [319]
	"OrderHallMissionFrameFollowersListScrollFrameScrollBar/OrderHallMissionFrameFollowersListScrollFrameScrollBarScrollDownButton", -- [406]
	"OrderHallMissionFrameFollowersListScrollFrameScrollBar/OrderHallMissionFrameFollowersListScrollFrameScrollBarScrollUpButton", -- [318]
	"OrderHallMissionFrameFollowersListScrollFrameScrollBar/OrderHallMissionFrameFollowersListScrollFrameScrollBarScrollUpButton", -- [405]
	"OrderHallMissionFrameMissions.CombatAllyUI.Available/OrderHallMissionFrameMissions.CombatAllyUI.Available.AddFollowerButton", -- [277]
	"OrderHallMissionFrameMissions.CombatAllyUI.Available/OrderHallMissionFrameMissions.CombatAllyUI.Available.AddFollowerButton", -- [348]
	"OrderHallMissionFrameMissions.CombatAllyUI/OrderHallMissionFrameMissions.CombatAllyUI.Available", -- [278]
	"OrderHallMissionFrameMissions.CombatAllyUI/OrderHallMissionFrameMissions.CombatAllyUI.Available", -- [349]
	"OrderHallMissionFrameMissions/OrderHallMissionFrameMissions.CombatAllyUI", -- [279]
	"OrderHallMissionFrameMissions/OrderHallMissionFrameMissions.CombatAllyUI", -- [350]
	"OrderHallMissionFrameMissions/OrderHallMissionFrameMissions.MaterialFrame", -- [276]
	"OrderHallMissionFrameMissions/OrderHallMissionFrameMissions.MaterialFrame", -- [347]
	"OrderHallMissionFrameMissions/OrderHallMissionFrameMissionsListScrollFrame", -- [273]
	"OrderHallMissionFrameMissions/OrderHallMissionFrameMissionsListScrollFrame", -- [344]
	"OrderHallMissionFrameMissions/OrderHallMissionFrameMissionsTab1", -- [274]
	"OrderHallMissionFrameMissions/OrderHallMissionFrameMissionsTab1", -- [345]
	"OrderHallMissionFrameMissions/OrderHallMissionFrameMissionsTab2", -- [275]
	"OrderHallMissionFrameMissions/OrderHallMissionFrameMissionsTab2", -- [346]
	"OrderHallMissionFrameMissionsListScrollFrame/OrderHallMissionFrameMissionsListScrollFrameScrollBar", -- [272]
	"OrderHallMissionFrameMissionsListScrollFrame/OrderHallMissionFrameMissionsListScrollFrameScrollBar", -- [343]
	"OrderHallMissionFrameMissionsListScrollFrame/OrderHallMissionFrameMissionsListScrollFrameScrollChild", -- [269]
	"OrderHallMissionFrameMissionsListScrollFrame/OrderHallMissionFrameMissionsListScrollFrameScrollChild", -- [340]
	"OrderHallMissionFrameMissionsListScrollFrameButton1/UNK_0", -- [257]
	"OrderHallMissionFrameMissionsListScrollFrameButton1/UNK_0", -- [328]
	"OrderHallMissionFrameMissionsListScrollFrameButton2/UNK_0", -- [259]
	"OrderHallMissionFrameMissionsListScrollFrameButton2/UNK_0", -- [330]
	"OrderHallMissionFrameMissionsListScrollFrameButton3/UNK_0", -- [261]
	"OrderHallMissionFrameMissionsListScrollFrameButton3/UNK_0", -- [332]
	"OrderHallMissionFrameMissionsListScrollFrameButton4/UNK_0", -- [263]
	"OrderHallMissionFrameMissionsListScrollFrameButton4/UNK_0", -- [334]
	"OrderHallMissionFrameMissionsListScrollFrameButton5/UNK_0", -- [265]
	"OrderHallMissionFrameMissionsListScrollFrameButton5/UNK_0", -- [336]
	"OrderHallMissionFrameMissionsListScrollFrameButton6/UNK_0", -- [267]
	"OrderHallMissionFrameMissionsListScrollFrameButton6/UNK_0", -- [338]
	"OrderHallMissionFrameMissionsListScrollFrameScrollBar/OrderHallMissionFrameMissionsListScrollFrameScrollBarScrollDownButton", -- [271]
	"OrderHallMissionFrameMissionsListScrollFrameScrollBar/OrderHallMissionFrameMissionsListScrollFrameScrollBarScrollDownButton", -- [342]
	"OrderHallMissionFrameMissionsListScrollFrameScrollBar/OrderHallMissionFrameMissionsListScrollFrameScrollBarScrollUpButton", -- [270]
	"OrderHallMissionFrameMissionsListScrollFrameScrollBar/OrderHallMissionFrameMissionsListScrollFrameScrollBarScrollUpButton", -- [341]
	"OrderHallMissionFrameMissionsListScrollFrameScrollChild/OrderHallMissionFrameMissionsListScrollFrameButton1", -- [258]
	"OrderHallMissionFrameMissionsListScrollFrameScrollChild/OrderHallMissionFrameMissionsListScrollFrameButton1", -- [329]
	"OrderHallMissionFrameMissionsListScrollFrameScrollChild/OrderHallMissionFrameMissionsListScrollFrameButton2", -- [260]
	"OrderHallMissionFrameMissionsListScrollFrameScrollChild/OrderHallMissionFrameMissionsListScrollFrameButton2", -- [331]
	"OrderHallMissionFrameMissionsListScrollFrameScrollChild/OrderHallMissionFrameMissionsListScrollFrameButton3", -- [262]
	"OrderHallMissionFrameMissionsListScrollFrameScrollChild/OrderHallMissionFrameMissionsListScrollFrameButton3", -- [333]
	"OrderHallMissionFrameMissionsListScrollFrameScrollChild/OrderHallMissionFrameMissionsListScrollFrameButton4", -- [264]
	"OrderHallMissionFrameMissionsListScrollFrameScrollChild/OrderHallMissionFrameMissionsListScrollFrameButton4", -- [335]
	"OrderHallMissionFrameMissionsListScrollFrameScrollChild/OrderHallMissionFrameMissionsListScrollFrameButton5", -- [266]
	"OrderHallMissionFrameMissionsListScrollFrameScrollChild/OrderHallMissionFrameMissionsListScrollFrameButton5", -- [337]
	"OrderHallMissionFrameMissionsListScrollFrameScrollChild/OrderHallMissionFrameMissionsListScrollFrameButton6", -- [268]
	"OrderHallMissionFrameMissionsListScrollFrameScrollChild/OrderHallMissionFrameMissionsListScrollFrameButton6", -- [339]
	"UIParent/GameMenuFrame", -- [440]
	"UIParent/GarrisonFollowerMissionAbilityWithoutCountersTooltip", -- [424]
	"UIParent/GarrisonFollowerTooltip", -- [423]
	"UIParent/GarrisonFollowerTooltip", -- [428]
	"UIParent/OrderHallCommandBar", -- [14]
	"UIParent/OrderHallCommandBar", -- [175]
	"UIParent/OrderHallCommandBar", -- [89]
	"UIParent/OrderHallMissionFrame", -- [295]
}
GarrisonFollowerOptions[followerid].strings=
RETURN_TO_START = "Return to your Class Hall to start this mission"
FOLLOWER_ADDED_TOAST = "Follower Gained"
TROOP_ADDED_UPGRADED_TOAST = "Upgraded Troop Gained"
TRAITS_LABEL = "Equipment Slots"
FOLLOWER_COUNT_LABEL = "Champions"
FOLLOWER_ADDED_UPGRADED_TOAST = "Upgraded Follower Gained"
FOLLOWER_COUNT_STRING = "Champions: %s%d/%d%s"
CONFIRM_EQUIPMENT = "Are you sure you want to equip your follower with %s?"
TROOP_ADDED_TOAST = "Troop Gained"
LANDING_COMPLETE = "Complete - Return to your Class Hall"

followerListCounterInnerSpacing = 4
minQualityLevelToShowLevel = 0
showSpikyBordersOnSpecializationAbilities = true
hideMissionTypeInLandingPage = true
missionCompleteUseNeutralChest = true
followerPageShowGear = false
followerListCounterScale = 1.15
isPrimaryFollowerType = true
garrisonType = 3
missionPageMaxCountersInFollowerFrame = 3
missionPageMaxCountersInFollowerFrameBeforeScaling = 2
hideCountersInAbilityFrame = true
usesOvermaxMechanic = true
showCategoriesInFollowerList = true
missionFrame = "OrderHallMissionFrame"
missionTooltipShowPartialCountersAsFull = true
showCautionSignOnMissionFollowersSmallBias = false
displayCounterAbilityInPlaceOfMechanic = true
showSingleMissionCompleteAnimation = true
followerPageShowSourceText = false
missionPageAssignTroopSound = "UI_Mission_SlotTroop"
minFollowersForThreatCountersFrame = 1.#INF
partyNotFullText = "You do not have enough Champions to start this mission."
followerListCounterOuterSpacingX = 8
missionAbilityTooltipFrame = "GarrisonFollowerMissionAbilityWithoutCountersTooltip"
abilityTooltipFrame = "GarrisonFollowerAbilityWithoutCountersTooltip"
missionPageMechanicYOffset = -32
followerListCounterNumPerRow = 2
traitAbilitiesAreEquipment = true
missionFollowerSortFunc = function: 000000003F78CD70
followerListCounterOuterSpacingY = 4
useAbilityTooltipStyleWithoutCounters = true
missionFollowerInitSortFunc = function: 00007FF788B90998
missionPageAssignFollowerSound = "UI_Mission_SlotChampion"
showSingleMissionCompleteFollower = false
showILevelOnFollower = false
showILevelInFollowerList = true
missionPageShowXPInMissionInfo = true
}

GARRISON_MISSION_NPC_OPEN,followerType
GARRISON_MISSION_COMPLETE_RESPONSE,missionID,canComplete,success,bool(?),table(?)
GARRISON_FOLLOWER_DURABILITY_CHANGED,followerType,followerID,number(Durability left?)
GARRISON_FOLLOWER_XP_CHANGED,followerType,followerID,gainedxp,oldxp,oldlevel,oldquality (gained is 0 for maxed)
GARRISON_MISSION_BONUS_ROLL_COMPLETE,missionID,bool(Success?)
If succeeded then
GARRISON_MISSION_BONUS_ROLL_LOOT,itemId
GARRISON_MISSION_LIST_UPDATE,missionType
GARRISON_FOLLOWER_XP_CHANGED,followerType,followerID,gainedxp,oldxp,oldlevel,oldquality (gained is 0 for maxed)
If troops lost:
GARRISON_FOLLOWER_REMOVED,followerType
GARRISON_FOLLOWER_LIST_UPDATE,followerType


--]]
