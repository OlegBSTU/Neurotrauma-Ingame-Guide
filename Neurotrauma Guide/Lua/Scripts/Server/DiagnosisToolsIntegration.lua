-- Translation table. For any given affliction ID, the page they should link to.
-- Order doesnt matter, I just like them to be sorted
-- Format: Identifier, pageID
NTGuide.IdentifierToPage = {
    -- Head or Brain
    {"cerebralhypoxia", "neurotrauma"},
    {"stroke", "stroke"},
    {"opiateoverdose", "opiate_overdose"},
    {"seizure", "seizure"},
    {"coma", "coma"},
    {"concussion", "concussion"},
    {"drunk", "drunk"},

    -- Lungs
    {"respiratoryarrest", "respiratory_arrest"},
    {"lungdamage", "lung_damage"},
    {"pneumothorax", "pneumothorax"},
    {"hyperventilation", "hyperventilation"},
    {"hypoventilation", "hypoventilation"},
    {"oxygenlow", "oxygen_low"},

    -- Heart
    {"cardiacarrest", "cardiac_arrest"},
    {"tamponade", "cardiac_tamponade"},
    {"heartattack", "heart_attack"},
    {"heartdamage", "heart_damage"},
    {"tachycardia", "irregular_heartbeat"},
    {"fibrillation", "mechanic_fibrillation"},

    -- Torso
    {"t_arterialcut", "aortic_rupture"},
    {"internalbleeding", "internal_bleeding"},
    {"radiationsickness", "radiation_sickness"},
    {"kidneydamage", "kidney_damage"},
    {"liverdamage", "liver_damage"},
    {"morbusinepoisoning", "morbusine_poisoning"},
    {"cyanidepoisoning", "cyanide_poisoning"},
    {"sufforinpoisoning", "sufforin_poisoning"},
    {"organdamage", "vanilla_organ_damage"},
    {"analgesia", "analgesia"},
    {"anesthesia", "anesthesia"},

    -- Extremities
    {"ll_arterialcut", "arterial_bleeding"},
    {"rl_arterialcut", "arterial_bleeding"},
    {"la_arterialcut", "arterial_bleeding"},
    {"ra_arterialcut", "arterial_bleeding"},
    {"h_arterialcut", "arterial_bleeding"},
    {"tll_amputation", "traumatic_amputation"},
    {"trl_amputation", "traumatic_amputation"},
    {"tla_amputation", "traumatic_amputation"},
    {"tra_amputation", "traumatic_amputation"},
    {"th_amputation", "traumatic_amputation"},
    {"sll_amputation", "surgical_amputation"},
    {"srl_amputation", "surgical_amputation"},
    {"sla_amputation", "surgical_amputation"},
    {"sra_amputation", "surgical_amputation"},
    {"sh_amputation", "surgical_amputation"},
    {"gangrene", "gangrene"},
    {"gypsumcast", "plaster_cast"},
	{"arteriesclamp", "clamped_arteries"},

    -- Bones
    {"bonegrowth", "osteosynthesis_implants"},
	{"bonedeath", "bone_death"},
    {"bonedamage", "bone_damage"},
    {"ll_fracture", "fractures"},
    {"rl_fracture", "fractures"},
    {"la_fracture", "fractures"},
    {"ra_fracture", "fractures"},
    {"t_fracture", "fractures"},
    {"n_fracture", "fractures"},
    {"h_fracture", "fractures"},
    {"dislocation1", "dislocations"},
    {"dislocation2", "dislocations"},
    {"dislocation3", "dislocations"},
    {"dislocation4", "dislocations"},

    -- Any Bodypart
    {"burn", "burns"},
    {"burn_deg1", "burns"},
    {"burn_deg2", "burns"},
    {"burn_deg3", "burns"},
	{"lacerations", "open_wounds"},
	{"gunshotwound", "open_wounds"},
	{"bitewounds", "open_wounds"},
	{"explosiondamage", "open_wounds"},
    {"internaldamage", "internal_wounds"},
    {"blunttrauma", "internal_wounds"},
    {"infectedwound", "infected_wounds"},
    {"foreignbody", "foreign_bodies"},
    {"bleeding", "bleeding"},
    {"ointmented", "ointmented"},
    {"iced", "chilled"},
    {"bandaged", "bandaged"},
    {"skinointmented", "skin_ointmented"},

    -- Blood
    {"hypoxemia", "hypoxemia"},
    {"sepsis", "sepsis"},
    {"hemotransfusionshock", "hemotransfusion_shock"},
    {"bloodloss", "blood_loss"},
    {"bloodpressurelow", "hypotension"},
    {"bloodpressurehigh", "hypertension"},
    {"acidosis", "acidosis"},
    {"alkalosis", "alkalosis"},
    {"immunity", "immunity"},
    {"afimmunosuppressant", "organ_rejection"},

    -- Surgery
    {"traumaticshock", "traumatic_shock"},
    {"surgeryincision", "surgery_incision"},
	{"clampedbleeders", "clamped_bleeding"},
    {"retractedskin", "retracted_skin"},
    {"drilledbones", "drilled_bones"},
    {"bonecut", "sawed_bones"},

    -- Items
    {"afadrenaline", "adrenaline"},
    {"afantibiotics", "abx"},
    {"afsaline", "saline"},
    {"afringerssolution", "ringers_solution"},
    {"afmannitol", "mannitol"},
    {"afstreptokinase", "streptokinase"},
    {"afthiamine", "thiamine"},
    {"afpressuredrug", "sodium_nitroprusside"},
}

--=========================================================================================================================================================================

-- todo: mod checker

Timer.Wait(function()
-- NT Cybernetics Enhanced integration into Translation Table
		table.insert(NTGuide.IdentifierToPage, {"ntc_cyberliver", "cyberliver"})
		table.insert(NTGuide.IdentifierToPage, {"ntc_cyberlung", "cyberlung"})
		table.insert(NTGuide.IdentifierToPage, {"ntc_cyberheart", "cyberbrain_implant"})
		table.insert(NTGuide.IdentifierToPage, {"ntc_cyberbrain", "cyberheart"})
		table.insert(NTGuide.IdentifierToPage, {"ntc_cyberkidney", "cyberkidney"})

-- NT Eyes integration into Translation Table
		-- Charybdis & Terror eyes exist in the code, but are not on the guide and/or implemented.
		-- Eye Damage
		table.insert(NTGuide.IdentifierToPage, {"dm_human", "human_eye_damage"})
		table.insert(NTGuide.IdentifierToPage, {"dm_cyber", "cyber_eye_damage"})
		table.insert(NTGuide.IdentifierToPage, {"dm_enhanced", "enhanced_eye_damage"})
		table.insert(NTGuide.IdentifierToPage, {"dm_plastic", "plastic_eye_damage"})
		table.insert(NTGuide.IdentifierToPage, {"dm_crawler", "crawler_eye_damage"})
		table.insert(NTGuide.IdentifierToPage, {"dm_mudraptor", "mudraptor_eye_damage"})
		table.insert(NTGuide.IdentifierToPage, {"dm_hammerhead", "hammerhead_eye_damage"})
		table.insert(NTGuide.IdentifierToPage, {"dm_watcher", "watcher_eye_damage"})
		table.insert(NTGuide.IdentifierToPage, {"dm_husk", "husk_eye_damage"})
		table.insert(NTGuide.IdentifierToPage, {"dm_latcher", "latcher_eye_damage"})
		-- Lenses
		table.insert(NTGuide.IdentifierToPage, {"lt_medical", "medical_lens"})
		table.insert(NTGuide.IdentifierToPage, {"lt_electrical", "electrical_lens"})
		table.insert(NTGuide.IdentifierToPage, {"lt_night", "night_vision_lens"})
		table.insert(NTGuide.IdentifierToPage, {"lt_thermal", "thermal_lens"})
		-- Mechanical
		table.insert(NTGuide.IdentifierToPage, {"mc_deadeyes", "dead_eyes"})
		table.insert(NTGuide.IdentifierToPage, {"mc_deadeye", "dead_eye"}) 
		table.insert(NTGuide.IdentifierToPage, {"mc_retinopathy", "retinopathy"}) -- 5+
		table.insert(NTGuide.IdentifierToPage, {"mc_cataract", "cataract"}) -- 15+
		-- Surgery
		table.insert(NTGuide.IdentifierToPage, {"sr_removedeyes", "removed_eyes"})
		table.insert(NTGuide.IdentifierToPage, {"sr_removedeye", "removed_eye"}) 

-- NT Infections integration for Hematology Analyzer
		-- Antibiotics
		table.insert(NTGuide.IdentifierToPage, {"afampicillin", "unasyn"})
		table.insert(NTGuide.IdentifierToPage, {"afaugmentin", "augmentin"})
		table.insert(NTGuide.IdentifierToPage, {"afvancomycin", "vancomycin"})
		table.insert(NTGuide.IdentifierToPage, {"afgentamicin", "gentamicin"})
		table.insert(NTGuide.IdentifierToPage, {"afcotrim", "cotrimoxazole"})
		table.insert(NTGuide.IdentifierToPage, {"afimipenem", "imipenem"})
		table.insert(NTGuide.IdentifierToPage, {"afceftazidime", "ceftazidime"})
		-- Items
		table.insert(NTGuide.IdentifierToPage, {"afdextromethorphan", "dextromethorphan"})
		table.insert(NTGuide.IdentifierToPage, {"afremdesivir", "remdesivir"})
		table.insert(NTGuide.IdentifierToPage, {"afzincsupplement", "zinc_supplements"})
		table.insert(NTGuide.IdentifierToPage, {"afcorticosteroids", "hydrocortisone"})

		-- NT Infections integration for Sampling Tool
		-- Bacteremia / Blood Infection
		table.insert(NTGuide.IdentifierToPage, {"bloodinfectionlevel", "information_fighting_infections"})
		-- Infections 
		table.insert(NTGuide.IdentifierToPage, {"bloodstrep", "streptococcal_infection"})
		table.insert(NTGuide.IdentifierToPage, {"bloodstaph", "staphylococcal_infection"})
		table.insert(NTGuide.IdentifierToPage, {"bloodpseudo", "pseudomonas_infection"})
		table.insert(NTGuide.IdentifierToPage, {"bloodprovo", "provobacter_infection"})
		table.insert(NTGuide.IdentifierToPage, {"bloodaero", "aeroganella_infection"})
		table.insert(NTGuide.IdentifierToPage, {"bloodmrsa", "mrsa_infection"})
end, 2)
--===========================================================================================================================================================

-- Check the translation table above:
-- If we find an identifier we know, pass the page ID we want to open
-- Otherwise, pass none
local function IdentifierToLink(IdentifierToPage, identifier, strength)
    -- Use strength to determine which page multifaceted afflictions link to
    if identifier == "bloodpressure" then
        if strength > 130 then
        identifier = "bloodpressurehigh"

        elseif strength < 70 then
        identifier = "bloodpressurelow"
        end
    end

    for _, entry in ipairs(IdentifierToPage) do
        if entry[1] == identifier then
            return entry[2]
        end
    end

    return
end

-- Attempt to counter colour changing for RichTextData containing Metadata
-- Works, though still not perfect. Any number below 128 will be clamped and thus made lighter
local function fixColor(readoutColor)
	-- Pull individual RGBA values from passed colour
	local r,g,b,a = readoutColor:match("(%d+),(%d+),(%d+),?(%d*)")
	r,g,b,a = tonumber(r), tonumber(g), tonumber(b), tonumber(a) or 255

	-- The C# code for Clickable Areas does Color.Lerp(currentTextColor, Color.White, 0.5f)
	-- With 'white' being 255 R/G/B/A, we pass the current colour and force it down while ensuring it is always >=0 or <=255
	local function invColorLerp(x)
		return HF.Clamp(HF.Lerp(x, 255, -1), 0, 255)
	end

	-- Returns the readoutColour decreased in such a way that the subsequent White Lerp pulls it back to the original amount
	return invColorLerp(r) .. "," .. invColorLerp(g) .. "," .. invColorLerp(b) .. "," .. a
end

-- Improved readout formatting
local function formatLine(readoutColor, IdentifierToLink, afflictionName, afflictionStrength)
	local readoutString = afflictionName .. ": " .. afflictionStrength .. "%"
	if IdentifierToLink ~= nil then
		readoutColor = fixColor(readoutColor)
		return "‖color:" .. readoutColor .. ";metadata:link@" .. IdentifierToLink .. "‖" .. readoutString .. "‖end‖"
	else
		return "‖color:" .. readoutColor .. "‖" .. readoutString .. "‖color:end‖"
	end
end


-- Health Scanner and Hematology Analyzer Overrides
-- ===========================================================================================
-- This part requires NT to be loaded, since we use their HF's
-- As for overriding: just force this function to load afterwards and we ((should)) be OK
Timer.Wait(function()
	NT.ItemMethods.healthscanner = function(item, usingCharacter, targetCharacter, limb)
		local limbtype = HF.NormalizeLimbType(limb.type)

		local containedItem = item.OwnInventory.GetItemAt(0)
		if containedItem == nil then
			return
		end
		local hasVoltage = containedItem.Condition > 0

		if hasVoltage then
			-- Define base colours for config
			local BaseColor = "127,255,255"
			local NameColor = "127,255,255"
			local LowColor = "127,255,255"
			local MedColor = "127,255,255"
			local HighColor = "127,255,255"
			local VitalColor = "127,255,255"
			local RemovalColor = "127,255,255"
			local CustomColor = "127,255,255"

			-- Config changeable colours
			if NTConfig.Get("NTSCAN_enablecoloredscanner", 1) then
				BaseColor = table.concat(NTConfig.Get("NTSCAN_basecolor", 1), ",")
				NameColor = table.concat(NTConfig.Get("NTSCAN_namecolor", 1), ",")
				LowColor = table.concat(NTConfig.Get("NTSCAN_lowcolor", 1), ",")
				MedColor = table.concat(NTConfig.Get("NTSCAN_medcolor", 1), ",")
				HighColor = table.concat(NTConfig.Get("NTSCAN_highcolor", 1), ",")
				VitalColor = table.concat(NTConfig.Get("NTSCAN_vitalcolor", 1), ",")
				RemovalColor = table.concat(NTConfig.Get("NTSCAN_removalcolor", 1), ",")
				CustomColor = table.concat(NTConfig.Get("NTSCAN_customcolor", 1), ",")
			end

			-- Config changeable values
			local LowMedThreshold = NTConfig.Get("NTSCAN_lowmedThreshold", 1)
			local MedHighThreshold = NTConfig.Get("NT_medhighThreshold", 1)
			local VitalCategory = NTConfig.Get("NTSCAN_VitalCategory", 1)
			local RemovalCategory = NTConfig.Get("NTSCAN_RemovalCategory", 1)
			local CustomCategory = NTConfig.Get("NTSCAN_CustomCategory", 1)
			local PressureCategory = { "bloodpressure" }
			local IgnoredCategory = NTConfig.Get("NTSCAN_IgnoredCategory", 1)

			-- Spawn a sound effect item on the character is being scanned
			HF.GiveItem(targetCharacter, "ntsfx_selfscan")
			-- Decrease battery by 5 condition (not a percentage)
			containedItem.Condition = containedItem.Condition - 5
			-- Apply radiation sickness to the user + the one it was used on
			HF.AddAffliction(targetCharacter, "radiationsickness", 1, usingCharacter)
			HF.AddAffliction(usingCharacter, "radiationsickness", 0.6)

			-- Affliction Readout Printing
			-- Will end up looking like this (example): ‖color:127,255,255‖ Affliction readout for ‖color:end‖‖color:127,255,255‖[targetCharacter.Name]‖color:end‖‖color:127,255,255‖ on limb [targetlimb]:\n‖color:end‖
			local startReadout = "‖color:" .. BaseColor .. "‖" .. "Affliction readout for " .. "‖color:end‖" .. "‖color:" .. NameColor .. "‖" .. targetCharacter.Name .. "‖color:end‖" .. "‖color:" .. BaseColor .. "‖" .. " on limb " .. HF.LimbTypeToString(limbtype) .. ":\n" .. "‖color:end‖"
			
			-- Define the things we want in the readout
			local LowPressureReadout = ""
			local HighPressureReadout = ""
			local LowStrengthReadout = ""
			local MediumStrengthReadout = ""
			local HighStrengthReadout = ""
			local VitalReadout = ""
			local RemovalReadout = ""
			local CustomReadout = ""

			-- Get all afflictions on a character
			local afflictionlist = targetCharacter.CharacterHealth.GetAllAfflictions()
			-- Set base amount of afflictions to display
			local afflictionsdisplayed = 0
			-- For each affliction in the list of afflictions:
			for value in afflictionlist do
				-- Get their strength (not a percentage)
				local strength = HF.Round(value.Strength)
				-- Pull their prefab
				local prefab = value.Prefab
				-- Set a variable for the limb this affliction is on
				local limb = targetCharacter.CharacterHealth.GetAfflictionLimb(value)
				-- Fallback
				local afflimbtype = LimbType.Torso

				if not prefab.LimbSpecific then
					afflimbtype = prefab.IndicatorLimb
				elseif limb ~= nil then
					afflimbtype = limb.type
				end

				-- NT Guide Linking
				-- Pass the affliction the scanner has found into a function to check against a translation table
				-- Page ID gets inserted into the metadata; if there is nothing after the link@ statement, the rest of the linking code does nothing
				local afflictionIdentifier = value.Identifier
				local IdentifierToLink = IdentifierToLink(NTGuide.IdentifierToPage, afflictionIdentifier, strength)

				afflimbtype = HF.NormalizeLimbType(afflimbtype)

				-- If current strength of an affliction is above the scanner threshold, we want to print it
				if strength >= prefab.ShowInHealthScannerThreshold and afflimbtype == limbtype then
					-- Low Readout
					if
						(strength < LowMedThreshold)
						and not HF.TableContains(VitalCategory, afflictionIdentifier)
						and not HF.TableContains(RemovalCategory, afflictionIdentifier)
						and not HF.TableContains(PressureCategory, afflictionIdentifier)
						and not HF.TableContains(CustomCategory, afflictionIdentifier)
						and not HF.TableContains(IgnoredCategory, afflictionIdentifier)
					then
						LowStrengthReadout = LowStrengthReadout .. "\n" .. formatLine(LowColor, IdentifierToLink, prefab.name.Value, strength)
					end
					-- Medium Readout
					if
						(strength >= LowMedThreshold)
						and (strength < MedHighThreshold)
						and not HF.TableContains(VitalCategory, afflictionIdentifier)
						and not HF.TableContains(RemovalCategory, afflictionIdentifier)
						and not HF.TableContains(PressureCategory, afflictionIdentifier)
						and not HF.TableContains(CustomCategory, afflictionIdentifier)
						and not HF.TableContains(IgnoredCategory, afflictionIdentifier)
					then
						MediumStrengthReadout = MediumStrengthReadout .. "\n" .. formatLine(MedColor, IdentifierToLink, prefab.name.Value, strength)
					end
					-- High Readout
					if
						(strength >= MedHighThreshold)
						and not HF.TableContains(VitalCategory, afflictionIdentifier)
						and not HF.TableContains(RemovalCategory, afflictionIdentifier)
						and not HF.TableContains(PressureCategory, afflictionIdentifier)
						and not HF.TableContains(CustomCategory, afflictionIdentifier)
						and not HF.TableContains(IgnoredCategory, afflictionIdentifier)
					then
						HighStrengthReadout = HighStrengthReadout .. "\n" .. formatLine(HighColor, IdentifierToLink, prefab.name.Value, strength)
					end
					-- Vital readout
					if
						HF.TableContains(VitalCategory, afflictionIdentifier)
						and not HF.TableContains(IgnoredCategory, afflictionIdentifier)
					then
						VitalReadout = VitalReadout .. "\n" .. formatLine(VitalColor, IdentifierToLink, prefab.name.Value, strength)
					end
					-- Removed readout
					if
						HF.TableContains(RemovalCategory, afflictionIdentifier)
						and not HF.TableContains(IgnoredCategory, afflictionIdentifier)
					then
						RemovalReadout = RemovalReadout .. "\n" .. formatLine(RemovalColor, IdentifierToLink, prefab.name.Value, strength)
					end
					-- Custom readout
					if 
						HF.TableContains(CustomCategory, afflictionIdentifier)
						and not HF.TableContains(IgnoredCategory, afflictionIdentifier)
					then
						CustomReadout = CustomReadout .. "\n" .. formatLine(CustomColor, IdentifierToLink, prefab.name.Value, strength)
					end
					-- Blood pressure readout
					if
						HF.TableContains(PressureCategory, afflictionIdentifier)
						and ((strength > 130) or (strength < 70))
						and not HF.TableContains(IgnoredCategory, afflictionIdentifier)
					then
						HighPressureReadout = HighPressureReadout .. "\n" .. formatLine(HighColor, IdentifierToLink, prefab.name.Value, strength)
					elseif HF.TableContains(PressureCategory, afflictionIdentifier) then
						LowPressureReadout = LowPressureReadout .. "\n" .. formatLine(LowColor, IdentifierToLink, prefab.name.Value, strength)
					end

					-- Tally how many unique afflictions are displayed
					afflictionsdisplayed = afflictionsdisplayed + 1
				end
			end

			-- If no afflictions are displayed, give a fallback
			-- Since Blood Pressure exists; this should never happen
			if afflictionsdisplayed <= 0 then
				LowStrengthReadout = LowStrengthReadout .. "\nNo afflictions! Good work!"
			end

			-- 2 seconds after we start our scan, print all the readouts
			Timer.Wait(function()
				HF.DMClient(
					HF.CharacterToClient(usingCharacter),

					startReadout
					.. LowPressureReadout
					.. HighPressureReadout
					.. LowStrengthReadout
					.. MediumStrengthReadout
					.. HighStrengthReadout
					.. VitalReadout
					.. RemovalReadout 
					.. CustomReadout
				)
			end, 2000)
		end
	end

	-- We do not override this table, or else NTC.AddHematologyAffliction doesn't work
	-- NT.HematologyDetectable = {
	-- 	"sepsis",
	-- 	"immunity",
	-- 	"acidosis",
	-- 	"alkalosis",
	-- 	"bloodloss",
	-- 	"bloodpressure",
	-- 	"afimmunosuppressant",
	-- 	"afthiamine",
	-- 	"afadrenaline",
	-- 	"afstreptokinase",
	-- 	"afantibiotics",
	-- 	"afsaline",
	-- 	"afringerssolution",
	-- 	"afpressuredrug",
	-- }

	NT.ItemMethods.bloodanalyzer = function(item, usingCharacter, targetCharacter, limb)
		-- Only work if no cooldown
		if item.Condition < 50 then
			return
		end

		-- Skill-based blood loss induction
		local success = HF.GetSkillRequirementMet(usingCharacter, "medical", 30)
		local bloodlossinduced = success and 1 or 3
		HF.AddAffliction(targetCharacter, "bloodloss", bloodlossinduced, usingCharacter)

		-- Donor Card spawning logic
		local containedItem = item.OwnInventory.GetItemAt(0)
		local hasCartridge = containedItem ~= nil
			and (containedItem.Prefab.Identifier.Value == "bloodcollector" or containedItem.HasTag("donorCard"))
		
		if hasCartridge then
			HF.RemoveItem(containedItem)
			local bloodtype = NT.GetBloodtype(targetCharacter)
			local targetIDCard = targetCharacter.Inventory.GetItemAt(0)
			if targetIDCard ~= nil and targetIDCard.OwnInventory.GetItemAt(0) == nil then
				HF.PutItemInsideItem(targetIDCard, bloodtype .. "card")
			else
				HF.PutItemInsideItem(item, bloodtype .. "card")
			end
		end

		-- Define base colours for config
		local BaseColor = "127,255,255"
		local NameColor = "127,255,255"
		local LowColor = "127,255,255"
		local MedColor = "127,255,255"
		local HighColor = "127,255,255"
		local VitalColor = "127,255,255"
		local RemovalColor = "127,255,255"
		local CustomColor = "127,255,255"

		-- Config changeable colours
		if NTConfig.Get("NTSCAN_enablecoloredscanner", 1) then
			BaseColor = table.concat(NTConfig.Get("NTSCAN_basecolor", 1), ",")
			NameColor = table.concat(NTConfig.Get("NTSCAN_namecolor", 1), ",")
			LowColor = table.concat(NTConfig.Get("NTSCAN_lowcolor", 1), ",")
			MedColor = table.concat(NTConfig.Get("NTSCAN_medcolor", 1), ",")
			HighColor = table.concat(NTConfig.Get("NTSCAN_highcolor", 1), ",")
			VitalColor = table.concat(NTConfig.Get("NTSCAN_vitalcolor", 1), ",")
			RemovalColor = table.concat(NTConfig.Get("NTSCAN_removalcolor", 1), ",")
			CustomColor = table.concat(NTConfig.Get("NTSCAN_customcolor", 1), ",")
		end

		-- Config changeable values
		local LowMedThreshold = NTConfig.Get("NTSCAN_lowmedThreshold", 1)
		local MedHighThreshold = NTConfig.Get("NT_medhighThreshold", 1)
		local VitalCategory = NTConfig.Get("NTSCAN_VitalCategory", 1)
		local RemovalCategory = NTConfig.Get("NTSCAN_RemovalCategory", 1)
		local CustomCategory = NTConfig.Get("NTSCAN_CustomCategory", 1)
		local PressureCategory = { "bloodpressure" }
		local IgnoredCategory = NTConfig.Get("NTSCAN_IgnoredCategory", 1)

		-- Start of the readout
		local bloodtypePrefabName = AfflictionPrefab.Prefabs[NT.GetBloodtype(targetCharacter)].Name.Value
		local startReadout = "‖color:" .. NameColor .. "‖" .. "Bloodtype: " .. bloodtypePrefabName .. "‖color:end‖" .. "\n‖color:" .. BaseColor .. "‖" .. "Affliction readout for the blood of " .. "‖color:end‖" .. "‖color:" .. NameColor .. "‖" .. targetCharacter.Name .. "‖color:end‖" .. "‖color:" .. BaseColor .. "‖:\n" .. "‖color:end‖"

		local LowPressureReadout = ""
		local HighPressureReadout = ""
		local LowStrengthReadout = ""
		local MediumStrengthReadout = ""
		local HighStrengthReadout = ""
		local VitalReadout = ""
		local RemovalReadout = ""
		local CustomReadout = ""

		local afflictionlist = targetCharacter.CharacterHealth.GetAllAfflictions()
		local afflictionsdisplayed = 0

		for value in afflictionlist do
			local strength = HF.Round(value.Strength)
			local prefab = value.Prefab
			local afflictionIdentifier = value.Identifier

			-- Only list the afflictions above
			if strength > 2 and HF.TableContains(NT.HematologyDetectable, afflictionIdentifier) then
				
				-- NT Guide Linker
				local IdentifierToLink = IdentifierToLink(NTGuide.IdentifierToPage, afflictionIdentifier, strength)

				-- Low Readout
				if (strength < LowMedThreshold)
					and not HF.TableContains(VitalCategory, afflictionIdentifier)
					and not HF.TableContains(RemovalCategory, afflictionIdentifier)
					and not HF.TableContains(PressureCategory, afflictionIdentifier)
					and not HF.TableContains(CustomCategory, afflictionIdentifier)
					and not HF.TableContains(IgnoredCategory, afflictionIdentifier)
				then
					LowStrengthReadout = LowStrengthReadout .. "\n" .. formatLine(LowColor, IdentifierToLink, prefab.name.Value, strength)
				end
				-- Medium Readout
				if (strength >= LowMedThreshold)
					and (strength < MedHighThreshold)
					and not HF.TableContains(VitalCategory, afflictionIdentifier)
					and not HF.TableContains(RemovalCategory, afflictionIdentifier)
					and not HF.TableContains(PressureCategory, afflictionIdentifier)
					and not HF.TableContains(CustomCategory, afflictionIdentifier)
					and not HF.TableContains(IgnoredCategory, afflictionIdentifier)
				then
					MediumStrengthReadout = MediumStrengthReadout .. "\n" .. formatLine(MedColor, IdentifierToLink, prefab.name.Value, strength)
				end
				-- High Readout
				if (strength >= MedHighThreshold)
					and not HF.TableContains(VitalCategory, afflictionIdentifier)
					and not HF.TableContains(RemovalCategory, afflictionIdentifier)
					and not HF.TableContains(PressureCategory, afflictionIdentifier)
					and not HF.TableContains(CustomCategory, afflictionIdentifier)
					and not HF.TableContains(IgnoredCategory, afflictionIdentifier)
				then
					HighStrengthReadout = HighStrengthReadout .. "\n" .. formatLine(HighColor, IdentifierToLink, prefab.name.Value, strength)
				end
				-- Vital readout
				if HF.TableContains(VitalCategory, afflictionIdentifier)
					and not HF.TableContains(IgnoredCategory, afflictionIdentifier)
				then
					VitalReadout = VitalReadout .. "\n" .. formatLine(VitalColor, IdentifierToLink, prefab.name.Value, strength)
				end
				-- Removed readout
				if HF.TableContains(RemovalCategory, afflictionIdentifier)
					and not HF.TableContains(IgnoredCategory, afflictionIdentifier)
				then
					RemovalReadout = RemovalReadout .. "\n" .. formatLine(RemovalColor, IdentifierToLink, prefab.name.Value, strength)
				end
				-- Custom readout
				if HF.TableContains(CustomCategory, afflictionIdentifier)
					and not HF.TableContains(IgnoredCategory, afflictionIdentifier)
				then
					CustomReadout = CustomReadout .. "\n" .. formatLine(CustomColor, IdentifierToLink, prefab.name.Value, strength)
				end
				-- Blood pressure readout
				if HF.TableContains(PressureCategory, afflictionIdentifier)
					and ((strength > 130) or (strength < 70))
					and not HF.TableContains(IgnoredCategory, afflictionIdentifier)
				then
					HighPressureReadout = HighPressureReadout .. "\n" .. formatLine(HighColor, IdentifierToLink, prefab.name.Value, strength)
				elseif HF.TableContains(PressureCategory, afflictionIdentifier) then
					LowPressureReadout = LowPressureReadout .. "\n" .. formatLine(LowColor, IdentifierToLink, prefab.name.Value, strength)
				end

				afflictionsdisplayed = afflictionsdisplayed + 1
			end
		end

		-- Add a message in case there is nothing to display
		if afflictionsdisplayed <= 0 then
			LowStrengthReadout = LowStrengthReadout .. "\nNo blood pressure detected..."
		end

			HF.DMClient(
				HF.CharacterToClient(usingCharacter),
				startReadout
				.. LowPressureReadout
				.. HighPressureReadout
				.. LowStrengthReadout
				.. MediumStrengthReadout
				.. HighStrengthReadout
				.. VitalReadout
				.. RemovalReadout 
				.. CustomReadout
			)
	end
end,1000)

--==============================================================================================================================================================================================

-- NT: Infections Sampling Tool Override
Timer.Wait(function()
-- Sampler Tool Item
    NT.ItemMethods.cultureanalyzer = function(item, usingCharacter, targetCharacter, limb)
		-- Check if culture tube / viral transport medium is slotted
        local containedItem = item.OwnInventory.GetItemAt(0)
        if containedItem ~= nil then
			-- 'Fill' the contained item by setting condition to 100
            local function postSpawnFunc(args)
                args.item.Condition = args.condition
            end
			-- If a viral transport medium is slotted
            if containedItem.HasTag("viraltest") then
                local params = {condition=100}
                local name = NTI.GetCurrentVirus(targetCharacter)

                if name ~= nil then
                    local info = NTI.Viruses[name]
                    HF.GiveItemPlusFunction(info.samplename,postSpawnFunc,params,usingCharacter)
                else
                    HF.GiveItemPlusFunction("emptyviralunk",postSpawnFunc,params,usingCharacter)
                end

                HF.DMClient(HF.CharacterToClient(usingCharacter),"Sampler tool\n\nSwab sample found.",Color(127,255,127,255))

			-- If a culture tube is slotted
            else
		
                local params = {condition=100}
                local name = nil
                local pus = HF.GetAfflictionStrengthLimb(targetCharacter, limb.type, "pusyellow", 0) + HF.GetAfflictionStrengthLimb(targetCharacter, limb.type, "pusgreen", 0)

                if pus > 0 then
                    name = NTI.GetCurrentBacteria(targetCharacter, limb.type)
                    HF.DMClient(HF.CharacterToClient(usingCharacter),"Sampler tool\n\nPus sample found.",Color(127,255,127,255))
                elseif HF.HasAfflictionLimb(targetCharacter, "abscess", limb.type, 0) then
                    name = NTI.GetCurrentBacteria(targetCharacter, limb.type)
                    HF.AddAfflictionLimb(targetCharacter,"lacerations",limb.type,4,usingCharacter)
                    HF.DMClient(HF.CharacterToClient(usingCharacter),"Sampler tool\n\nPus sample found.",Color(127,255,127,255))
                elseif HF.HasAfflictionLimb(targetCharacter, "retractedskin", limb.type, 0) then
                    name = NTI.GetCurrentBacteria(targetCharacter, limb.type)
                    HF.AddAfflictionLimb(targetCharacter,"lacerations",limb.type,8,usingCharacter)
                    HF.DMClient(HF.CharacterToClient(usingCharacter),"Sampler tool\n\nTissue sample found.",Color(127,255,127,255))
                else
                    name = NTI.GetCurrentBacteriaBloodRandom(targetCharacter)
                    HF.DMClient(HF.CharacterToClient(usingCharacter),"Sampler tool\n\nBlood sample found.",Color(127,255,127,255))
                end

                if name ~= nil then
                    local info = NTI.Bacterias[name]
                    HF.GiveItemPlusFunction(info.samplename,postSpawnFunc,params,usingCharacter)
                else
                    HF.GiveItemPlusFunction("emptytubeunk",postSpawnFunc,params,usingCharacter)
                end
            end

            HF.RemoveItem(containedItem)
        else
			-- If nothing is slotted, we're getting a blood sample.
            local string = "Sampler tool\nBloodwork readout:\n"
            local total = 0
            local infections = {}

            for key, info in pairs(NTI.Bacterias) do
                local strength = HF.GetAfflictionStrength(targetCharacter, info.bloodname, 0)

                if strength > 0 then
                    infections[key] = strength
                    total = total + strength
                end
            end

            if total <= 0 then
                string = string .. "\nNo bacterial presence in blood."
            else
                local bacteremia = targetCharacter.CharacterHealth.GetAffliction("bloodinfectionlevel")
                local bil = HF.GetAfflictionStrength(targetCharacter, "bloodinfectionlevel", 0)
				-- Bacteremia / Blood Infection levels
                if bacteremia ~= nil then 
					string = string .. "\n‖metadata:link@information_fighting_infections‖" .. bacteremia.Prefab.Name.Value .. ": " .. HF.Round(bil) .. "%" .. "‖end‖" 
				end
				
				-- Other infections (Rewritten)
            for key, value in pairs(infections) do
				local readoutColor = "127,255,127,255"

				local affliction = targetCharacter.CharacterHealth.GetAffliction(NTI.Bacterias[key].bloodname)
				-- Get affliction Name / ID
				local afflictionName = affliction.Prefab.Name.Value
				local afflictionIdentifier = affliction.Prefab.Identifier.Value

				-- Pull pageID from translation table and embed into string
				local IdentifierToLink = IdentifierToLink(NTGuide.IdentifierToPage, afflictionIdentifier)
				-- Get strength%
				local strength = HF.Round((value / total) * 100)
				-- Add amended string to total print at the end
				string = string .. "\n" .. formatLine(readoutColor, IdentifierToLink, afflictionName, strength)
			end
        end

            --this is a stopgap solution to diagnosing pneumonia. will probably change in the future
            if HF.GetAfflictionStrength(targetCharacter, "pneumonia", 0) > 0 then
                string = string .. "\n\nLung Biopsy Positive For:"
				
                local index = HF.Round(HF.GetAfflictionStrength(targetCharacter, "pneumoniabacteria", 0))
                if index > 0 then
                    info = NTI.BacteriasIndex[index]
                    local affliction = targetCharacter.CharacterHealth.GetAffliction(info.bloodname)
					-- Pull pageID from translation table and embed into string
					local IdentifierToLink = IdentifierToLink(NTGuide.IdentifierToPage, affliction.Prefab.Identifier.Value)
					-- Add amended string to total print at the end
                    string = string .. " ‖metadata:link@" .. IdentifierToLink .. "‖" .. affliction.Prefab.Name.Value .. "‖end‖"
                end

                index = HF.Round(HF.GetAfflictionStrength(targetCharacter, "pneumoniavirus", 0))
                if index > 0 then
                    info = NTI.VirusesIndex[index]
                    local affliction = targetCharacter.CharacterHealth.GetAffliction(info.name)
					-- Pull pageID from translation table and embed into string
					local IdentifierToLink = IdentifierToLink(NTGuide.IdentifierToPage, affliction.Prefab.Identifier.Value)
					-- Add amended string to total print at the end
                    string = string .. " ‖metadata:link@" .. IdentifierToLink .. "‖" .. affliction.Prefab.Name.Value .. "‖end‖"
                end
            end

            HF.DMClient(HF.CharacterToClient(usingCharacter),string,Color(127,255,127,255))
        end
    end
end,1000)