-- Translation table. For any given affliction ID, the page they should link to.
-- Symptom need not be scannable / analyzeable; we store them just to be safe
-- Order doesnt matter, I just like them to be sorted
-- Format: Identifier, pageID
NTGuide.IdentifierToPage = {
    -- Symptoms
    {"sym_hematemesis", "vomiting_blood"},
    {"sym_paleskin", "pale_skin"},
    {"dyspnea", "shortness_of_breath"},
    {"sym_cough", "cough"},
    {"sym_nausea", "nausea"},
    {"tachycardia", "increased_heartrate"},
    {"sym_confusion", "confusion"},
    {"sym_lightheadedness", "lightheadedness"},
    {"sym_blurredvision", "blurred_vision"},
    {"sym_legswelling", "leg_swelling"},
    {"sym_wheezing", "wheezing"},
    {"sym_weakness", "weakness"},
    {"fever", "fever"},
    {"sym_sweating", "sweating"},
    {"sym_bloating", "bloating"},
    {"inflammation", "inflammation"},
    {"sym_jaundice", "jaundice"},
    {"sym_abdomdiscomfort", "abdominal_discomfort"},
    {"sym_headache", "headache"},
    {"sym_craving", "craving"},
    {"sym_palpitations", "palpitations"},
    {"spasm", "spasms"},
    {"pain_abdominal", "abdominal_pain"},
    {"pain_chest", "chest_pain"},
    {"pain_extremity", "intense_pain"},
    {"sym_vomiting", "vomiting"},

    -- Head or Brain
    {"cerebralhypoxia", "neurotrauma"},
    {"stroke", "stroke"},
    {"alcoholwithdrawal", "withdrawal"},
    {"opiatewithdrawal", "withdrawal"},
    {"chemwithdrawal", "withdrawal"},
    {"opiateoverdose", "opiate_overdose"},
    {"seizure", "seizure"},
    {"sym_unconsciousness", "unconsciousness"},
    {"coma", "coma"},
    {"t_paralysis", "spinal_cord_injury"}, -- Not sure tbh
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

-- Check the translation table above:
-- If we find an identifier we know, pass the page ID we want to open
-- Otherwise, pass none
local function IdentifierToLink(tbl, identifier, strength)
    -- Use strength to determine which page multifaceted afflictions link to
    if identifier == "bloodpressure" then
        if strength > 130 then
        identifier = "bloodpressurehigh"

        elseif strength < 70 then
        identifier = "bloodpressurelow"
        end
    end

    for _, entry in ipairs(tbl) do
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
	if IdentifierToLink then
		readoutColor = fixColor(readoutColor)
		return "‖color:" .. readoutColor .. ";metadata:link@" .. IdentifierToLink .. "‖" .. readoutString .. "‖color:end‖"
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

	-- What can we detect?
	NT.HematologyDetectable = {
		"sepsis",
		"immunity",
		"acidosis",
		"alkalosis",
		"bloodloss",
		"bloodpressure",
		"afimmunosuppressant",
		"afthiamine",
		"afadrenaline",
		"afstreptokinase",
		"afantibiotics",
		"afsaline",
		"afringerssolution",
		"afpressuredrug",
	}

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
			if strength >= prefab.ShowInHealthScannerThreshold and HF.TableContains(NT.HematologyDetectable, afflictionIdentifier) then
				
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