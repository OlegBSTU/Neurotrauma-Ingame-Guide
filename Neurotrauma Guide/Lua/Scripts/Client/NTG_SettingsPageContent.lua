-- Same setup as the NT config.
NTGuideSettings = {Entries = {}}

NTGuideSettings.ConfigData = {

    NTG_Header1 = { 
        name = "HeaderPlaceholder", 
        type = "category" ,
    },

    NTG_Float1 = {
		name = "FloatPlaceholder",
		default = 1,
		range = { 0, 100 },
		type = "float",
	},

	NTG_Bool1 = {
		name = "BoolPlaceholder",
		default = true,
		type = "bool",
	},
}