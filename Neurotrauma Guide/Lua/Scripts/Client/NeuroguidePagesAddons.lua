-- Expansion / overriding of Guide Pages
-- By only showing information that 'matters' people won't have to worry about Surgical Infection when they don't even have NT Surgery Plus.
-- This saves space on pages with less text / links unless needed

-- Check over all Neurotrauma Expansions
if NTC ~= nil then
    for val in NTC.RegisteredExpansions do
        -- Is Cybernetics Enhanced enabled? If so, enable their content
        if val.Name == "Cybernetics" then
            -- Cybernetic Arm
            NTGuide.ContentPages.Items.CyberneticArm = {
                id = "cybernetic_arm",
                category = "items",
                title = NTGuide.Localize("ntg.title.cybernetic_arm"), 
                description = NTGuide.Localize("ntg.description.cybernetic_arm"),
                applicationsuccess = NTGuide.Localize("ntg.applicationsuccess.cybernetic_arm"),
                applicationfailed = NTGuide.Localize("ntg.applicationfailed.cybernetic_arm"),
                seealso = NTGuide.Localize("ntg.seealso.cybernetic_arm"),
            }
            -- Cybernetic Leg
            NTGuide.ContentPages.Items.CyberneticLeg = {
                id = "cybernetic_leg",
                category = "items",
                title = NTGuide.Localize("ntg.title.cybernetic_leg"), 
                description = NTGuide.Localize("ntg.description.cybernetic_leg"),
                applicationsuccess = NTGuide.Localize("ntg.applicationsuccess.cybernetic_leg"),
                applicationfailed = NTGuide.Localize("ntg.applicationfailed.cybernetic_leg"),
                seealso = NTGuide.Localize("ntg.seealso.cybernetic_leg"),
            }
            -- Damaged Electronics
            NTGuide.ContentPages.Afflictions_Extremities.DamagedElectronics = {
                id = "damaged_electronics",
                category = "afflictions",
                title = NTGuide.Localize("ntg.title.damaged_electronics"), 
                description = NTGuide.Localize("ntg.description.damaged_electronics"),
                causes = NTGuide.Localize("ntg.causes.damaged_electronics"),
                effects = NTGuide.Localize("ntg.effects.damaged_electronics"), 
                treatments = NTGuide.Localize("ntg.treatments.damaged_electronics"),
                seealso = NTGuide.Localize("ntg.seealso.damaged_electronics"),
            }
            -- Bent Metal
            NTGuide.ContentPages.Afflictions_Extremities.BentMetal = {
                id = "bent_metal",
                category = "afflictions",
                title = NTGuide.Localize("ntg.title.bent_metal"), 
                description = NTGuide.Localize("ntg.description.bent_metal"),
                causes = NTGuide.Localize("ntg.causes.bent_metal"),
                effects = NTGuide.Localize("ntg.effects.bent_metal"), 
                treatments = NTGuide.Localize("ntg.treatments.bent_metal"),
                seealso = NTGuide.Localize("ntg.seealso.bent_metal"),
            }
            -- Loose Screws
            NTGuide.ContentPages.Afflictions_Extremities.LooseScrews = {
                id = "loose_screws",
                category = "afflictions",
                title = NTGuide.Localize("ntg.title.loose_screws"), 
                description = NTGuide.Localize("ntg.description.loose_screws"),
                causes = NTGuide.Localize("ntg.causes.loose_screws"),
                effects = NTGuide.Localize("ntg.effects.loose_screws"), 
                treatments = NTGuide.Localize("ntg.treatments.loose_screws"),
                seealso = NTGuide.Localize("ntg.seealso.loose_screws"),
            }
            -- Material Loss
            NTGuide.ContentPages.Afflictions_Extremities.MaterialLoss = {
                id = "material_loss",
                category = "afflictions",
                title = NTGuide.Localize("ntg.title.loose_screws"), 
                description = NTGuide.Localize("ntg.description.loose_screws"),
                causes = NTGuide.Localize("ntg.causes.loose_screws"),
                effects = NTGuide.Localize("ntg.effects.loose_screws"), 
                treatments = NTGuide.Localize("ntg.treatments.loose_screws"),
                seealso = NTGuide.Localize("ntg.seealso.loose_screws"),
            }
            -- FPGA Circuit
            NTGuide.ContentPages.Items.FPGACircuit = {
                id = "fpga_circuit",
                category = "items",
                title = NTGuide.Localize("ntg.title.fpga_circuit"), 
                description = NTGuide.Localize("ntg.description.fpga_circuit"),
                applicationsuccess = NTGuide.Localize("ntg.applicationsuccess.fpga_circuit"),
                applicationfailed = NTGuide.Localize("ntg.applicationfailed.fpga_circuit"),
            }
            -- Welding Tool
            NTGuide.ContentPages.Items.WeldingTool = {
                id = "welding_tool",
                category = "items",
                title = NTGuide.Localize("ntg.title.welding_tool"), 
                description = NTGuide.Localize("ntg.description.welding_tool"),
                applicationsuccess = NTGuide.Localize("ntg.applicationsuccess.welding_tool"),
                applicationfailed = NTGuide.Localize("ntg.applicationfailed.welding_tool"),
            }
            -- Screwdriver
            NTGuide.ContentPages.Items.Screwdriver = {
                id = "screwdriver",
                category = "items",
                title = NTGuide.Localize("ntg.title.screwdriver"), 
                description = NTGuide.Localize("ntg.description.screwdriver"),
                applicationsuccess = NTGuide.Localize("ntg.applicationsuccess.screwdriver"),
                applicationfailed = NTGuide.Localize("ntg.applicationfailed.screwdriver"),
                seealso = NTGuide.Localize("ntg.seealso.screwdriver"),
            }
            -- Steel Bar
            NTGuide.ContentPages.Items.SteelBar = {
                id = "steel_bar",
                category = "items",
                title = NTGuide.Localize("ntg.title.steel_bar"), 
                description = NTGuide.Localize("ntg.description.steel_bar"),
                applicationsuccess = NTGuide.Localize("ntg.applicationsuccess.steel_bar"),
                applicationfailed = NTGuide.Localize("ntg.applicationfailed.steel_bar"),
            }
            -- Crowbar
            NTGuide.ContentPages.Items.Crowbar = {
                id = "crowbar",
                category = "items",
                title = NTGuide.Localize("ntg.title.crowbar"), 
                description = NTGuide.Localize("ntg.description.crowbar"),
            }
            -- Cyberbrain(s)
            NTGuide.ContentPages.Items.CyberBrainImplant = {
                id = "cyberbrain_implant",
                category = "items",
                title = NTGuide.Localize("ntg.title.cyberbrain_implant"), 
                description = NTGuide.Localize("ntg.description.cyberbrain_implant"),
                applicationsuccess = NTGuide.Localize("ntg.applicationsuccess.cyberbrain_implant"),
                applicationfailed = NTGuide.Localize("ntg.applicationfailed.cyberbrain_implant"),
                seealso = NTGuide.Localize("ntg.seealso.cyberbrain_implant"),
            }
            -- Cyberlung(s)
            NTGuide.ContentPages.Items.CyberLung = {
                id = "cyberlung",
                category = "items",
                title = NTGuide.Localize("ntg.title.cyberlung"), 
                description = NTGuide.Localize("ntg.description.cyberlung"),
                applicationsuccess = NTGuide.Localize("ntg.applicationsuccess.cyberlung"),
                applicationfailed = NTGuide.Localize("ntg.applicationfailed.cyberlung"),
                seealso = NTGuide.Localize("ntg.seealso.cyberlung"),
            }
            -- Cyberheart(s)
            NTGuide.ContentPages.Items.CyberHeart = {
                id = "cyberheart",
                category = "items",
                title = NTGuide.Localize("ntg.title.cyberheart"), 
                description = NTGuide.Localize("ntg.description.cyberheart"),
                applicationsuccess = NTGuide.Localize("ntg.applicationsuccess.cyberheart"),
                applicationfailed = NTGuide.Localize("ntg.applicationfailed.cyberheart"),
                seealso = NTGuide.Localize("ntg.seealso.cyberheart"),
            }
            -- Cyberkidney(s)
            NTGuide.ContentPages.Items.CyberKidney = {
                id = "cyberkidney",
                category = "items",
                title = NTGuide.Localize("ntg.title.cyberkidney"), 
                description = NTGuide.Localize("ntg.description.cyberkidney"),
                applicationsuccess = NTGuide.Localize("ntg.applicationsuccess.cyberkidney"),
                applicationfailed = NTGuide.Localize("ntg.applicationfailed.cyberkidney"),
                seealso = NTGuide.Localize("ntg.seealso.cyberkidney"),
            }
            -- Cyberliver(s)
            NTGuide.ContentPages.Items.CyberLiver = {
                id = "cyberliver",
                category = "items",
                title = NTGuide.Localize("ntg.title.cyberliver"), 
                description = NTGuide.Localize("ntg.description.cyberliver"),
                applicationsuccess = NTGuide.Localize("ntg.applicationsuccess.cyberliver"),
                applicationfailed = NTGuide.Localize("ntg.applicationfailed.cyberliver"),
                seealso = NTGuide.Localize("ntg.seealso.cyberliver"),
            }

            -- Add to Health / Hematology scanner translation table
            table.insert(NTGuide.IdentifierToPage, {"ntc_cyberliver", "cyberliver"})
            table.insert(NTGuide.IdentifierToPage, {"ntc_cyberlung", "cyberlung"})
            table.insert(NTGuide.IdentifierToPage, {"ntc_cyberheart", "cyberbrain_implant"})
            table.insert(NTGuide.IdentifierToPage, {"ntc_cyberbrain", "cyberheart"})
            table.insert(NTGuide.IdentifierToPage, {"ntc_cyberkidney", "cyberkidney"})
        end
    end
end