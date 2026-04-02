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
        name = "Guide Customization", 
        type = "category" ,
    },

	NTG_DoColouredModOrigin = {
		name = "Coloured Mod Origin",
		default = true,
		type = "bool",
		description = "Should the Mod-of-Origin affix have a unique colour based on the mod?",
	},

	NTG_DoModOrigin = {
		name = "Mod Origin",
		default = true,
		type = "bool",
		description = "Should the Mod-of-Origin be displayed?",
	},
}