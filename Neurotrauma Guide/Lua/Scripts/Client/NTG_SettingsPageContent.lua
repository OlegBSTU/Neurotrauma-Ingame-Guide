-- Same setup as the NT config.
NTGuideSettings = {Entries = {}}

    -- NTG_Float1 = {
	-- 	name = "FloatPlaceholder",
	-- 	default = 1,
	-- 	range = { 0, 100 },
	-- 	type = "float",
	-- },

NTGuideSettings.ConfigData = {

	-- General Settings
    NTG_Customization = { 
        NTGuide.Localize("ntg.categoryname.customization"),
        type = "category" ,
    },

	NTG_DoColouredModOrigin = {
		name = NTGuide.Localize("ntg.settingname.docolouredmodorigin"),
		default = true,
		type = "bool",
		description = NTGuide.Localize("ntg.settingdescription.docolouredmodorigin"),
	},

	NTG_DoModOrigin = {
		name = NTGuide.Localize("ntg.settingname.domodorigin"),
		default = true,
		type = "bool",
		description = NTGuide.Localize("ntg.settingdescription.domodorigin"),
	},
}