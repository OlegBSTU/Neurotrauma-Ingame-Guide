-- Expansion / overriding of Guide Pages
-- By only showing information that 'matters' people won't have to worry about Surgical Infection when they don't even have NT Surgery Plus.
-- This saves space on pages with less text / links unless needed

-- Check over all Neurotrauma Expansions
if NTC ~= nil then
    for val in NTC.RegisteredExpansions do
        -- If NT Surgery Plus is enabled, we want to add new pages for their additions
        if val.Name == "NT Surgery Plus" then
            -- Surgical Infection
            NTGuide.ContentPages.Afflictions_Blood.SurgicalInfection = {
                id = "surgical_infection", 
                category = "mechanics",
                title = NTGuide.Localize("ntg.title.surgical_infection"), 
                description = NTGuide.Localize("ntg.description.surgical_infection"), 
                effects = {NTGuide.Localize("ntg.effects.surgical_infection")},
                seealso = {NTGuide.Localize("ntg.seealso.surgical_infection")},
            }
            -- Surgical Drapes
            NTGuide.ContentPages.Items.SurgicalDrapes = {
                id = "surgical_drapes", 
                category = "items",
                title = NTGuide.Localize("ntg.title.surgical_drapes"), 
                description = NTGuide.Localize("ntg.description.surgical_drapes"), 
                effects = {NTGuide.Localize("ntg.effects.surgical_drapes")},
                seealso = {NTGuide.Localize("ntg.seealso.surgical_drapes")},
            }
            -- Surgical Mask
            NTGuide.ContentPages.Items.SurgicalMask = {
                id = "surgical_mask", 
                category = "items",
                title = NTGuide.Localize("ntg.title.surgical_mask"), 
                description = NTGuide.Localize("ntg.description.surgical_mask"), 
                effects = {NTGuide.Localize("ntg.effects.surgical_mask")},
                seealso = {NTGuide.Localize("ntg.seealso.surgical_mask")},
            }
            -- Surgeon Clothes
            NTGuide.ContentPages.Items.SurgeonClothes = {
                id = "surgeon_clothes", 
                category = "items",
                title = NTGuide.Localize("ntg.title.surgeon_clothes"), 
                description = NTGuide.Localize("ntg.description.surgeon_clothes"), 
                effects = {NTGuide.Localize("ntg.effects.surgeon_clothes")},
                seealso = {NTGuide.Localize("ntg.seealso.surgeon_clothes")},
            }
            -- Mannitol Plus
            NTGuide.ContentPages.Items.MannitolPlus = {
                id = "mannitol_plus", 
                category = "items",
                title = NTGuide.Localize("ntg.title.mannitol_plus"), 
                description = NTGuide.Localize("ntg.description.mannitol_plus"), 
                effects = {NTGuide.Localize("ntg.effects.mannitol_plus")},
                seealso = {NTGuide.Localize("ntg.seealso.mannitol_plus")},
            }
            -- Experimental Treatment
            NTGuide.ContentPages.Items.ExperimentalTreatment = {
                id = "experimental_treatment", 
                category = "items",
                title = NTGuide.Localize("ntg.title.experimental_treatment"), 
                description = NTGuide.Localize("ntg.description.experimental_treatment"), 
                positiveeffects = {NTGuide.Localize("ntg.positiveeffects.experimental_treatment")},
                negativeeffects = {NTGuide.Localize("ntg.negativeeffects.experimental_treatment")},
                seealso = {NTGuide.Localize("ntg.seealso.experimental_treatment")},
            }
            -- Triage Card(s)
            NTGuide.ContentPages.Items.TriageCard = {
                id = "triage_card", 
                category = "items",
                title = NTGuide.Localize("ntg.title.triage_card"), 
                description = NTGuide.Localize("ntg.description.triage_card"), 
            }
            -- Brain Jar
            NTGuide.ContentPages.Items.BrainJar = {
                id = "brain_jar", 
                category = "items",
                title = NTGuide.Localize("ntg.title.brain_jar"), 
                description = NTGuide.Localize("ntg.description.brain_jar"), 
            }
            -- Artificial Brain
            NTGuide.ContentPages.Items.ArtificialBrain = {
                id = "artificial_brain", 
                category = "items",
                title = NTGuide.Localize("ntg.title.artificial_brain"), 
                description = NTGuide.Localize("ntg.description.artificial_brain"), 
            }
            -- Medical Misconduct
            NTGuide.ContentPages.Items.MedicalMisconduct = {
                id = "medical_misconduct", 
                category = "items",
                title = NTGuide.Localize("ntg.title.medical_misconduct"), 
                description = NTGuide.Localize("ntg.description.medical_misconduct"), 
            }

        
        -- Is Cybernetics Enhanced enabled? If so, enable their content
        elseif val.Name == "Cybernetics" then
            -- Cybernetic Arm
            NTGuide.ContentPages.Items.CyberneticArm = {
                id = "cybernetic_arm",
                category = "items",
                title = NTGuide.Localize("ntg.title.cybernetic_arm"), 
                description = NTGuide.Localize("ntg.description.cybernetic_arm"),
                applicationsuccess = {NTGuide.Localize("ntg.applicationsuccess.cybernetic_arm")},
                applicationfailed = {NTGuide.Localize("ntg.applicationfailed.cybernetic_arm")},
                seealso = {NTGuide.Localize("ntg.seealso.cybernetic_arm")},
            }
            -- Cybernetic Leg
            NTGuide.ContentPages.Items.CyberneticLeg = {
                id = "cybernetic_leg",
                category = "items",
                title = NTGuide.Localize("ntg.title.cybernetic_leg"), 
                description = NTGuide.Localize("ntg.description.cybernetic_leg"),
                applicationsuccess = {NTGuide.Localize("ntg.applicationsuccess.cybernetic_leg")},
                applicationfailed = {NTGuide.Localize("ntg.applicationfailed.cybernetic_leg")},
                seealso = {NTGuide.Localize("ntg.seealso.cybernetic_leg")},
            }
            -- Damaged Electronics
            NTGuide.ContentPages.Afflictions_Extremities.DamagedElectronics = {
                id = "damaged_electronics",
                category = "afflictions",
                title = NTGuide.Localize("ntg.title.damaged_electronics"), 
                description = NTGuide.Localize("ntg.description.damaged_electronics"),
                causes = {NTGuide.Localize("ntg.causes.damaged_electronics")},
                effects = {NTGuide.Localize("ntg.effects.damaged_electronics")}, 
                treatments = {NTGuide.Localize("ntg.treatments.damaged_electronics")},
                seealso = {NTGuide.Localize("ntg.seealso.damaged_electronics")},
            }
            -- Bent Metal
            NTGuide.ContentPages.Afflictions_Extremities.BentMetal = {
                id = "bent_metal",
                category = "afflictions",
                title = NTGuide.Localize("ntg.title.bent_metal"), 
                description = NTGuide.Localize("ntg.description.bent_metal"),
                causes = {NTGuide.Localize("ntg.causes.bent_metal")},
                effects = {NTGuide.Localize("ntg.effects.bent_metal")}, 
                treatments = {NTGuide.Localize("ntg.treatments.bent_metal")},
                seealso = {NTGuide.Localize("ntg.seealso.bent_metal")},
            }
            -- Loose Screws
            NTGuide.ContentPages.Afflictions_Extremities.LooseScrews = {
                id = "loose_screws",
                category = "afflictions",
                title = NTGuide.Localize("ntg.title.loose_screws"), 
                description = NTGuide.Localize("ntg.description.loose_screws"),
                causes = {NTGuide.Localize("ntg.causes.loose_screws")},
                effects = {NTGuide.Localize("ntg.effects.loose_screws")}, 
                treatments = {NTGuide.Localize("ntg.treatments.loose_screws")},
                seealso = {NTGuide.Localize("ntg.seealso.loose_screws")},
            }
            -- Material Loss
            NTGuide.ContentPages.Afflictions_Extremities.MaterialLoss = {
                id = "material_loss",
                category = "afflictions",
                title = NTGuide.Localize("ntg.title.loose_screws"), 
                description = NTGuide.Localize("ntg.description.loose_screws"),
                causes = {NTGuide.Localize("ntg.causes.loose_screws")},
                effects = {NTGuide.Localize("ntg.effects.loose_screws")}, 
                treatments = {NTGuide.Localize("ntg.treatments.loose_screws")},
                seealso = {NTGuide.Localize("ntg.seealso.loose_screws")},
            }
            -- FPGA Circuit
            NTGuide.ContentPages.Items.FPGACircuit = {
                id = "fpga_circuit",
                category = "items",
                title = NTGuide.Localize("ntg.title.fpga_circuit"), 
                description = NTGuide.Localize("ntg.description.fpga_circuit"),
                applicationsuccess = {NTGuide.Localize("ntg.applicationsuccess.fpga_circuit")},
                applicationfailed = {NTGuide.Localize("ntg.applicationfailed.fpga_circuit")},
            }
            -- Welding Tool
            NTGuide.ContentPages.Items.WeldingTool = {
                id = "welding_tool",
                category = "items",
                title = NTGuide.Localize("ntg.title.welding_tool"), 
                description = NTGuide.Localize("ntg.description.welding_tool"),
                applicationsuccess = {NTGuide.Localize("ntg.applicationsuccess.welding_tool")},
                applicationfailed = {NTGuide.Localize("ntg.applicationfailed.welding_tool")},
            }
            -- Screwdriver
            NTGuide.ContentPages.Items.Screwdriver = {
                id = "screwdriver",
                category = "items",
                title = NTGuide.Localize("ntg.title.screwdriver"), 
                description = NTGuide.Localize("ntg.description.screwdriver"),
                applicationsuccess = {NTGuide.Localize("ntg.applicationsuccess.screwdriver")},
                applicationfailed = {NTGuide.Localize("ntg.applicationfailed.screwdriver")},
                seealso = {NTGuide.Localize("ntg.seealso.screwdriver")},
            }
            -- Steel Bar
            NTGuide.ContentPages.Items.SteelBar = {
                id = "steel_bar",
                category = "items",
                title = NTGuide.Localize("ntg.title.steel_bar"), 
                description = NTGuide.Localize("ntg.description.steel_bar"),
                applicationsuccess = {NTGuide.Localize("ntg.applicationsuccess.steel_bar")},
                applicationfailed = {NTGuide.Localize("ntg.applicationfailed.steel_bar")},
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
                applicationsuccess = {NTGuide.Localize("ntg.applicationsuccess.cyberbrain_implant")},
                applicationfailed = {NTGuide.Localize("ntg.applicationfailed.cyberbrain_implant")},
                seealso = {NTGuide.Localize("ntg.seealso.cyberbrain_implant")},
            }
            -- Cyberlung(s)
            NTGuide.ContentPages.Items.CyberLung = {
                id = "cyberlung",
                category = "items",
                title = NTGuide.Localize("ntg.title.cyberlung"), 
                description = NTGuide.Localize("ntg.description.cyberlung"),
                applicationsuccess = {NTGuide.Localize("ntg.applicationsuccess.cyberlung")},
                applicationfailed = {NTGuide.Localize("ntg.applicationfailed.cyberlung")},
                seealso = {NTGuide.Localize("ntg.seealso.cyberlung")},
            }
            -- Cyberheart(s)
            NTGuide.ContentPages.Items.CyberHeart = {
                id = "cyberheart",
                category = "items",
                title = NTGuide.Localize("ntg.title.cyberheart"), 
                description = NTGuide.Localize("ntg.description.cyberheart"),
                applicationsuccess = {NTGuide.Localize("ntg.applicationsuccess.cyberheart")},
                applicationfailed = {NTGuide.Localize("ntg.applicationfailed.cyberheart")},
                seealso = {NTGuide.Localize("ntg.seealso.cyberheart")},
            }
            -- Cyberkidney(s)
            NTGuide.ContentPages.Items.CyberKidney = {
                id = "cyberkidney",
                category = "items",
                title = NTGuide.Localize("ntg.title.cyberkidney"), 
                description = NTGuide.Localize("ntg.description.cyberkidney"),
                applicationsuccess = {NTGuide.Localize("ntg.applicationsuccess.cyberkidney")},
                applicationfailed = {NTGuide.Localize("ntg.applicationfailed.cyberkidney")},
                seealso = {NTGuide.Localize("ntg.seealso.cyberkidney")},
            }
            -- Cyberliver(s)
            NTGuide.ContentPages.Items.CyberLiver = {
                id = "cyberliver",
                category = "items",
                title = NTGuide.Localize("ntg.title.cyberliver"), 
                description = NTGuide.Localize("ntg.description.cyberliver"),
                applicationsuccess = {NTGuide.Localize("ntg.applicationsuccess.cyberliver")},
                applicationfailed = {NTGuide.Localize("ntg.applicationfailed.cyberliver")},
                seealso = {NTGuide.Localize("ntg.seealso.cyberliver")},
            }

            -- Add relevant scannable afflictions to the Health Scanner / Hematology Analyzer translation table
            table.insert(NTGuide.IdentifierToPage, {"ntc_cyberliver", "cyberliver"})
            table.insert(NTGuide.IdentifierToPage, {"ntc_cyberlung", "cyberlung"})
            table.insert(NTGuide.IdentifierToPage, {"ntc_cyberheart", "cyberbrain_implant"})
            table.insert(NTGuide.IdentifierToPage, {"ntc_cyberbrain", "cyberheart"})
            table.insert(NTGuide.IdentifierToPage, {"ntc_cyberkidney", "cyberkidney"})

            -- Is Neurotrauma Eyes active?
        elseif val.Name == "Eyes" then
        -- Damage Afflictions
            -- Human Eye Damage
            NTGuide.ContentPages.Afflictions_HeadORBrain.HumanEyeDamage = {
                id = "human_eye_damage",
                category = "afflictions",
                title = NTGuide.Localize("ntg.title.human_eye_damage"), 
                description = NTGuide.Localize("ntg.description.human_eye_damage"),
                causes = {NTGuide.Localize("ntg.causes.human_eye_damage")},
                effects = {NTGuide.Localize("ntg.effects.human_eye_damage")},
                treatments = {NTGuide.Localize("ntg.treatments.human_eye_damage")},  
                seealso = {NTGuide.Localize("ntg.seealso.human_eye_damage")},
            }
            -- Enhanced Eye Damage
            NTGuide.ContentPages.Afflictions_HeadORBrain.EnhancedEyeDamage = {
                id = "enhanced_eye_damage",
                category = "afflictions",
                title = NTGuide.Localize("ntg.title.enhanced_eye_damage"), 
                description = NTGuide.Localize("ntg.description.enhanced_eye_damage"),
                causes = {NTGuide.Localize("ntg.causes.enhanced_eye_damage")},
                effects = {NTGuide.Localize("ntg.effects.enhanced_eye_damage")},
                treatments = {NTGuide.Localize("ntg.treatments.enhanced_eye_damage")},  
                seealso = {NTGuide.Localize("ntg.seealso.enhanced_eye_damage")},
            }
            
            -- Cyber Eye Damage 
            NTGuide.ContentPages.Afflictions_HeadORBrain.CyberEyeDamage = {
                id = "cyber_eye_damage",
                category = "afflictions",
                title = NTGuide.Localize("ntg.title.cyber_eye_damage"), 
                description = NTGuide.Localize("ntg.description.cyber_eye_damage"),
                causes = {NTGuide.Localize("ntg.causes.cyber_eye_damage")},
                effects = {NTGuide.Localize("ntg.effects.cyber_eye_damage")},
                treatments = {NTGuide.Localize("ntg.treatments.cyber_eye_damage")},  
                seealso = {NTGuide.Localize("ntg.seealso.cyber_eye_damage")},
            }
            
            -- Plastic Eye Damage 
            NTGuide.ContentPages.Afflictions_HeadORBrain.PlasticEyeDamage = {
                id = "plastic_eye_damage",
                category = "afflictions",
                title = NTGuide.Localize("ntg.title.plastic_eye_damage"), 
                description = NTGuide.Localize("ntg.description.plastic_eye_damage"),
                causes = {NTGuide.Localize("ntg.causes.plastic_eye_damage")},
                effects = {NTGuide.Localize("ntg.effects.plastic_eye_damage")},
                treatments = {NTGuide.Localize("ntg.treatments.plastic_eye_damage")},  
                seealso = {NTGuide.Localize("ntg.seealso.plastic_eye_damage")},
            }
            
            -- Husk Eye Damage 
            NTGuide.ContentPages.Afflictions_HeadORBrain.HuskEyeDamage = {
                id = "husk_eye_damage",
                category = "afflictions",
                title = NTGuide.Localize("ntg.title.husk_eye_damage"), 
                description = NTGuide.Localize("ntg.description.husk_eye_damage"),
                causes = {NTGuide.Localize("ntg.causes.husk_eye_damage")},
                effects = {NTGuide.Localize("ntg.effects.husk_eye_damage")},
                treatments = {NTGuide.Localize("ntg.treatments.husk_eye_damage")},  
                seealso = {NTGuide.Localize("ntg.seealso.husk_eye_damage")},
            }
            
            -- Crawler Eye Damage 
            NTGuide.ContentPages.Afflictions_HeadORBrain.CrawlerEyeDamage = {
                id = "crawler_eye_damage",
                category = "afflictions",
                title = NTGuide.Localize("ntg.title.crawler_eye_damage"), 
                description = NTGuide.Localize("ntg.description.crawler_eye_damage"),
                causes = {NTGuide.Localize("ntg.causes.crawler_eye_damage")},
                effects = {NTGuide.Localize("ntg.effects.crawler_eye_damage")},
                treatments = {NTGuide.Localize("ntg.treatments.crawler_eye_damage")},  
                seealso = {NTGuide.Localize("ntg.seealso.crawler_eye_damage")},
            }
            
            -- Mudraptor Eye Damage 
            NTGuide.ContentPages.Afflictions_HeadORBrain.MudraptorEyeDamage = {
                id = "mudraptor_eye_damage",
                category = "afflictions",
                title = NTGuide.Localize("ntg.title.mudraptor_eye_damage"), 
                description = NTGuide.Localize("ntg.description.mudraptor_eye_damage"),
                causes = {NTGuide.Localize("ntg.causes.mudraptor_eye_damage")},
                effects = {NTGuide.Localize("ntg.effects.mudraptor_eye_damage")},
                treatments = {NTGuide.Localize("ntg.treatments.mudraptor_eye_damage")},  
                seealso = {NTGuide.Localize("ntg.seealso.mudraptor_eye_damage")},
            }
            
            -- Hammerhead Eye Damage 
            NTGuide.ContentPages.Afflictions_HeadORBrain.HammerheadEyeDamage = {
                id = "hammerhead_eye_damage",
                category = "afflictions",
                title = NTGuide.Localize("ntg.title.hammerhead_eye_damage"), 
                description = NTGuide.Localize("ntg.description.hammerhead_eye_damage"),
                causes = {NTGuide.Localize("ntg.causes.hammerhead_eye_damage")},
                effects = {NTGuide.Localize("ntg.effects.hammerhead_eye_damage")},
                treatments = {NTGuide.Localize("ntg.treatments.hammerhead_eye_damage")},  
                seealso = {NTGuide.Localize("ntg.seealso.hammerhead_eye_damage")},
            }
            
            -- Watcher Eye Damage 
            NTGuide.ContentPages.Afflictions_HeadORBrain.WatcherEyeDamage = {
                id = "watcher_eye_damage",
                category = "afflictions",
                title = NTGuide.Localize("ntg.title.watcher_eye_damage"), 
                description = NTGuide.Localize("ntg.description.watcher_eye_damage"),
                causes = {NTGuide.Localize("ntg.causes.watcher_eye_damage")},
                effects = {NTGuide.Localize("ntg.effects.watcher_eye_damage")},
                treatments = {NTGuide.Localize("ntg.treatments.watcher_eye_damage")},  
                seealso = {NTGuide.Localize("ntg.seealso.watcher_eye_damage")},
            }
            
            -- Latcher Eye Damage
            NTGuide.ContentPages.Afflictions_HeadORBrain.LatcherEyeDamage = {
                id = "latcher_eye_damage",
                category = "afflictions",
                title = NTGuide.Localize("ntg.title.latcher_eye_damage"), 
                description = NTGuide.Localize("ntg.description.latcher_eye_damage"),
                causes = {NTGuide.Localize("ntg.causes.latcher_eye_damage")},
                effects = {NTGuide.Localize("ntg.effects.latcher_eye_damage")},
                treatments = {NTGuide.Localize("ntg.treatments.latcher_eye_damage")},  
                seealso = {NTGuide.Localize("ntg.seealso.latcher_eye_damage")},
            }
            
        -- Mechanic Afflictions

            -- Dead Eyes
            NTGuide.ContentPages.Afflictions_HeadORBrain.DeadEyes = {
                id = "dead_eyes",
                category = "afflictions",
                title = NTGuide.Localize("ntg.title.dead_eyes"), 
                description = NTGuide.Localize("ntg.description.dead_eyes"),
                causes = {NTGuide.Localize("ntg.causes.dead_eyes")},
                effects = {NTGuide.Localize("ntg.effects.dead_eyes")},
                treatments = {NTGuide.Localize("ntg.treatments.dead_eyes")},  
            }
            
            -- Dead Eye
            NTGuide.ContentPages.Afflictions_HeadORBrain.DeadEye = {
                id = "dead_eye",
                category = "afflictions",
                title = NTGuide.Localize("ntg.title.dead_eye"), 
                description = NTGuide.Localize("ntg.description.dead_eye"),
                causes = {NTGuide.Localize("ntg.causes.dead_eye")},
                effects = {NTGuide.Localize("ntg.effects.dead_eye")},
                treatments = {NTGuide.Localize("ntg.treatments.dead_eye")},  
            }
            
            -- Retinopathy 
            NTGuide.ContentPages.Afflictions_HeadORBrain.Retinopathy = {
                id = "retinopathy",
                category = "afflictions",
                title = NTGuide.Localize("ntg.title.retinopathy"), 
                description = NTGuide.Localize("ntg.description.retinopathy"),
                causes = {NTGuide.Localize("ntg.causes.retinopathy")},
                effects = {NTGuide.Localize("ntg.effects.retinopathy")},
                treatments = {NTGuide.Localize("ntg.treatments.retinopathy")},  
                seealso = {NTGuide.Localize("ntg.seealso.retinopathy")},
            }
            
            -- Cataract 
            NTGuide.ContentPages.Afflictions_HeadORBrain.Cataract = {
                id = "cataract",
                category = "afflictions",
                title = NTGuide.Localize("ntg.title.cataract"), 
                description = NTGuide.Localize("ntg.description.cataract"),
                causes = {NTGuide.Localize("ntg.causes.cataract")},
                effects = {NTGuide.Localize("ntg.effects.cataract")},
                treatments = {NTGuide.Localize("ntg.treatments.cataract")},  
            }

            -- Vision Sickness 
            NTGuide.ContentPages.Afflictions_HeadORBrain.VisionSickness = {
                id = "vision_sickness",
                category = "afflictions",
                title = NTGuide.Localize("ntg.title.vision_sickness"), 
                description = NTGuide.Localize("ntg.description.vision_sickness"),
                causes = {NTGuide.Localize("ntg.causes.vision_sickness")},
                effects = {NTGuide.Localize("ntg.effects.vision_sickness")},
                treatments = {NTGuide.Localize("ntg.treatments.vision_sickness")},  
            }

            -- Mismatch 
            NTGuide.ContentPages.Afflictions_HeadORBrain.Mismatch = {
                id = "mismatch",
                category = "afflictions",
                title = NTGuide.Localize("ntg.title.mismatch"), 
                description = NTGuide.Localize("ntg.description.mismatch"),
                causes = {NTGuide.Localize("ntg.causes.mismatch")},
                effects = {NTGuide.Localize("ntg.effects.mismatch")},
                treatments = {NTGuide.Localize("ntg.treatments.mismatch")},  
            }

        -- Surgery Afflictions

            -- Removed Eyes
            NTGuide.ContentPages.Afflictions_Surgery.RemovedEyes = {
                id = "removed_eyes",
                category = "afflictions",
                title = NTGuide.Localize("ntg.title.removed_eyes"), 
                description = NTGuide.Localize("ntg.description.removed_eyes"),
                causes = {NTGuide.Localize("ntg.causes.removed_eyes")},
                effects = {NTGuide.Localize("ntg.effects.removed_eyes")},
                treatments = {NTGuide.Localize("ntg.treatments.removed_eyes")},  
            }

            -- Removed Eye
            NTGuide.ContentPages.Afflictions_Surgery.RemovedEye = {
                id = "removed_eye",
                category = "afflictions",
                title = NTGuide.Localize("ntg.title.removed_eye"), 
                description = NTGuide.Localize("ntg.description.removed_eye"),
                causes = {NTGuide.Localize("ntg.causes.removed_eye")},
                effects = {NTGuide.Localize("ntg.effects.removed_eye")},
                treatments = {NTGuide.Localize("ntg.treatments.removed_eye")},  
            }
            
            -- Held Eyelids
            NTGuide.ContentPages.Afflictions_Surgery.HeldEyelids = {
                id = "held_eyelids",
                category = "afflictions",
                title = NTGuide.Localize("ntg.title.held_eyelids"), 
                description = NTGuide.Localize("ntg.description.held_eyelids"),
                causes = {NTGuide.Localize("ntg.causes.held_eyelids")},
                effects = {NTGuide.Localize("ntg.effects.held_eyelids")},
                seealso = {NTGuide.Localize("ntg.seealso.held_eyelids")},
            }

            -- Popped Eyes
            NTGuide.ContentPages.Afflictions_Surgery.PoppedEyes = {
                id = "popped_eyes",
                category = "afflictions",
                title = NTGuide.Localize("ntg.title.popped_eyes"), 
                description = NTGuide.Localize("ntg.description.popped_eyes"),
                causes = {NTGuide.Localize("ntg.causes.popped_eyes")},
                effects = {NTGuide.Localize("ntg.effects.popped_eyes")},
                seealso = {NTGuide.Localize("ntg.seealso.popped_eyes")},
            }

            -- Eye Connector
            NTGuide.ContentPages.Afflictions_Surgery.EyeConnector = {
                id = "eye_connector",
                category = "afflictions",
                title = NTGuide.Localize("ntg.title.eye_connector"), 
                description = NTGuide.Localize("ntg.description.eye_connector"),
                causes = {NTGuide.Localize("ntg.causes.eye_connector")},
                seealso = {NTGuide.Localize("ntg.seealso.eye_connector")},
            }

            -- Cornea Incision
            NTGuide.ContentPages.Afflictions_Surgery.CorneaIncision = {
                id = "cornea_incision",
                category = "afflictions",
                title = NTGuide.Localize("ntg.title.cornea_incision"), 
                description = NTGuide.Localize("ntg.description.cornea_incision"),
                causes = {NTGuide.Localize("ntg.causes.cornea_incision")},
                effects = {NTGuide.Localize("ntg.effects.cornea_incision")},
                seealso = {NTGuide.Localize("ntg.seealso.cornea_incision")},
            }

            -- Emulsification
            NTGuide.ContentPages.Afflictions_Surgery.Emulsification = {
                id = "emulsification",
                category = "afflictions",
                title = NTGuide.Localize("ntg.title.emulsification"), 
                description = NTGuide.Localize("ntg.description.emulsification"),
                causes = {NTGuide.Localize("ntg.causes.emulsification")},
                effects = {NTGuide.Localize("ntg.effects.emulsification")},
                seealso = {NTGuide.Localize("ntg.seealso.emulsification")},
            }

            -- Eye Drops
            NTGuide.ContentPages.Afflictions_Surgery.EyeDrops = {
                id = "eye_drops",
                category = "afflictions",
                title = NTGuide.Localize("ntg.title.eye_drops"), 
                description = NTGuide.Localize("ntg.description.eye_drops"),
                causes = {NTGuide.Localize("ntg.causes.eye_drops")},
                effects = {NTGuide.Localize("ntg.effects.eye_drops")},
            }

            -- Laser Surgery
            NTGuide.ContentPages.Afflictions_Surgery.LaserSurgery = {
                id = "laser_surgery",
                category = "afflictions",
                title = NTGuide.Localize("ntg.title.laser_surgery"), 
                description = NTGuide.Localize("ntg.description.laser_surgery"),
                causes = {NTGuide.Localize("ntg.causes.laser_surgery")},
                effects = {NTGuide.Localize("ntg.effects.laser_surgery")},
            }

        -- Eye Surgeries

            -- Eye Removal Surgery
            NTGuide.ContentPages.SurgicalProcedures.EyeRemovalSurgery = {
                id = "eye_removal_surgery",
                category = "procedures",
                title = NTGuide.Localize("ntg.title.eye_removal_surgery"), 
                description = NTGuide.Localize("ntg.description.eye_removal_surgery"),
                steps = {NTGuide.Localize("ntg.steps.eye_removal_surgery")},
                seealso = {NTGuide.Localize("ntg.seealso.eye_removal_surgery")},
            }

            -- Eye Transplant Surgery
            NTGuide.ContentPages.SurgicalProcedures.EyeTransplantSurgery = {
                id = "eye_transplant_surgery",
                category = "procedures",
                title = NTGuide.Localize("ntg.title.eye_transplant_surgery"), 
                description = NTGuide.Localize("ntg.description.eye_transplant_surgery"),
                steps = {NTGuide.Localize("ntg.steps.eye_transplant_surgery")},
                seealso = {NTGuide.Localize("ntg.seealso.eye_transplant_surgery")},
            }

            -- Cataract Surgery
            NTGuide.ContentPages.SurgicalProcedures.CataractSurgery = {
                id = "cataract_surgery",
                category = "procedures",
                title = NTGuide.Localize("ntg.title.cataract_surgery"), 
                description = NTGuide.Localize("ntg.description.cataract_surgery"),
                steps = {NTGuide.Localize("ntg.steps.cataract_surgery")},
                seealso = {NTGuide.Localize("ntg.seealso.cataract_surgery")},
            }

            -- Cyber Eye Repair Surgery
            NTGuide.ContentPages.SurgicalProcedures.CyberEyeRepairSurgery = {
                id = "cyber_eye_repair_surgery",
                category = "procedures",
                title = NTGuide.Localize("ntg.title.cyber_eye_repair_surgery"), 
                description = NTGuide.Localize("ntg.description.cyber_eye_repair_surgery"),
                steps = {NTGuide.Localize("ntg.steps.cyber_eye_repair_surgery")},
            }

            -- Lens Application Surgery 
            NTGuide.ContentPages.SurgicalProcedures.LensApplicationSurgery = {
                id = "lens_application_surgery",
                category = "procedures",
                title = NTGuide.Localize("ntg.title.lens_application_surgery"), 
                description = NTGuide.Localize("ntg.description.lens_application_surgery"),
                steps = {NTGuide.Localize("ntg.steps.lens_application_surgery")},
                seealso = {NTGuide.Localize("ntg.seealso.lens_application_surgery")},
            }

            -- Lens Removal Surgery
            NTGuide.ContentPages.SurgicalProcedures.LensRemovalSurgery = {
                id = "lens_removal_surgery",
                category = "procedures",
                title = NTGuide.Localize("ntg.title.lens_removal_surgery"), 
                description = NTGuide.Localize("ntg.description.lens_removal_surgery"),
                steps = {NTGuide.Localize("ntg.steps.lens_removal_surgery")},
            }

            -- Laser Eye Surgery
            NTGuide.ContentPages.SurgicalProcedures.LaserEyeSurgery = {
                id = "laser_eye_surgery",
                category = "procedures",
                title = NTGuide.Localize("ntg.title.laser_eye_surgery"), 
                description = NTGuide.Localize("ntg.description.laser_eye_surgery"),
                steps = {NTGuide.Localize("ntg.steps.laser_eye_surgery")},
            }

            -- Eye Drop Application
            NTGuide.ContentPages.SurgicalProcedures.EyeDropApplication = {
                id = "eye_drop_application",
                category = "procedures",
                title = NTGuide.Localize("ntg.title.eye_drop_application"), 
                description = NTGuide.Localize("ntg.description.eye_drop_application"),
                steps = {NTGuide.Localize("ntg.steps.eye_drop_application")},
            }

        -- Eye Types

            -- Human Eye 
            NTGuide.ContentPages.Items.HumanEye = {
                id = "human_eye",
                category = "items",
                title = NTGuide.Localize("ntg.title.human_eye"), 
                description = NTGuide.Localize("ntg.description.human_eye"),
                effects = {NTGuide.Localize("ntg.effects.human_eye")},
            }

            -- Enhanced Eye 
            NTGuide.ContentPages.Items.EnhancedEye = {
                id = "enhanced_eye",
                category = "items",
                title = NTGuide.Localize("ntg.title.enhanced_eye"), 
                description = NTGuide.Localize("ntg.description.enhanced_eye"),
                effects = {NTGuide.Localize("ntg.effects.enhanced_eye")},
            }

            -- Cyber Eye  
            NTGuide.ContentPages.Items.CyberEye = {
                id = "cyber_eye",
                category = "items",
                title = NTGuide.Localize("ntg.title.cyber_eye"), 
                description = NTGuide.Localize("ntg.description.cyber_eye"),
                effects = {NTGuide.Localize("ntg.effects.cyber_eye")},
            }

            -- Plastic Eye  
            NTGuide.ContentPages.Items.PlasticEye = {
                id = "plastic_eye",
                category = "items",
                title = NTGuide.Localize("ntg.title.plastic_eye"), 
                description = NTGuide.Localize("ntg.description.plastic_eye"),
                effects = {NTGuide.Localize("ntg.effects.plastic_eye")},
            }

            -- Husk Eye  
            NTGuide.ContentPages.Items.HuskEye = {
                id = "husk_eye",
                category = "items",
                title = NTGuide.Localize("ntg.title.husk_eye"), 
                description = NTGuide.Localize("ntg.description.husk_eye"),
                effects = {NTGuide.Localize("ntg.effects.husk_eye")},
            }

            -- Crawler Eye  
            NTGuide.ContentPages.Items.CrawlerEye = {
                id = "crawler_eye",
                category = "items",
                title = NTGuide.Localize("ntg.title.crawler_eye"), 
                description = NTGuide.Localize("ntg.description.crawler_eye"),
                effects = {NTGuide.Localize("ntg.effects.crawler_eye")},
            }

            -- Mudraptor Eye  
            NTGuide.ContentPages.Items.MudraptorEye = {
                id = "mudraptor_eye",
                category = "items",
                title = NTGuide.Localize("ntg.title.mudraptor_eye"), 
                description = NTGuide.Localize("ntg.description.mudraptor_eye"),
                effects = {NTGuide.Localize("ntg.effects.mudraptor_eye")},
            }

            -- Hammerhead Eye  
            NTGuide.ContentPages.Items.HammerheadEye = {
                id = "hammerhead_eye",
                category = "items",
                title = NTGuide.Localize("ntg.title.hammerhead_eye"), 
                description = NTGuide.Localize("ntg.description.hammerhead_eye"),
                effects = {NTGuide.Localize("ntg.effects.hammerhead_eye")},
            }

            -- Watcher Eye  
            NTGuide.ContentPages.Items.WatcherEye = {
                id = "watcher_eye",
                category = "items",
                title = NTGuide.Localize("ntg.title.watcher_eye"), 
                description = NTGuide.Localize("ntg.description.watcher_eye"),
                effects = {NTGuide.Localize("ntg.effects.watcher_eye")},
            }

            -- Latcher Eye 
            NTGuide.ContentPages.Items.LatcherEye = {
                id = "latcher_eye",
                category = "items",
                title = NTGuide.Localize("ntg.title.latcher_eye"), 
                description = NTGuide.Localize("ntg.description.latcher_eye"),
                effects = {NTGuide.Localize("ntg.effects.latcher_eye")},
            }

        -- Lens Types
            
            -- Medical Lens
            NTGuide.ContentPages.Items.MedicalLens = {
                id = "medical_lens",
                category = "items",
                title = NTGuide.Localize("ntg.title.medical_lens"), 
                description = NTGuide.Localize("ntg.description.medical_lens"),
                seealso = {NTGuide.Localize("ntg.effects.medical_lens")},
            }

            -- Electrical Lens
            NTGuide.ContentPages.Items.ElectricalLens = {
                id = "electrical_lens",
                category = "items",
                title = NTGuide.Localize("ntg.title.electrical_lens"), 
                description = NTGuide.Localize("ntg.description.electrical_lens"),
                seealso = {NTGuide.Localize("ntg.effects.electrical_lens")},
            }

            -- Night Vision Lens
            NTGuide.ContentPages.Items.NightvisionLens = {
                id = "night_vision_lens",
                category = "items",
                title = NTGuide.Localize("ntg.title.night_vision_lens"), 
                description = NTGuide.Localize("ntg.description.night_vision_lens"),
                seealso = {NTGuide.Localize("ntg.effects.night_vision_lens")},
            }

            -- Thermal Lens
            NTGuide.ContentPages.Items.ThermalLens = {
                id = "thermal_lens",
                category = "items",
                title = NTGuide.Localize("ntg.title.thermal_lens"), 
                description = NTGuide.Localize("ntg.description.thermal_lens"),
                seealso = {NTGuide.Localize("ntg.effects.thermal_lens")},
            }

        -- Surgery Items

            -- Eye Connector
            NTGuide.ContentPages.Items.EyeConnectorItem = {
                id = "eye_connector_item",
                category = "items",
                title = NTGuide.Localize("ntg.title.eye_connector_item"), 
                description = NTGuide.Localize("ntg.description.eye_connector_item"),
                seealso = {NTGuide.Localize("ntg.effects.eye_connector_item")},
            }

            -- Organic Eye Lens
            NTGuide.ContentPages.Items.OrganicEyeLens = {
                id = "organic_eye_lens",
                category = "items",
                title = NTGuide.Localize("ntg.title.organic_eye_lens"), 
                description = NTGuide.Localize("ntg.description.organic_eye_lens"),
                seealso = {NTGuide.Localize("ntg.effects.organic_eye_lens")},
            }

            -- Laser Surgery Tool
            NTGuide.ContentPages.Items.LaserSurgeryTool = {
                id = "laser_surgery_tool",
                category = "items",
                title = NTGuide.Localize("ntg.title.laser_surgery_tool"), 
                description = NTGuide.Localize("ntg.description.laser_surgery_tool"),
                seealso = {NTGuide.Localize("ntg.effects.laser_surgery_tool")},
            }

            -- Advanced Eyeball Extraction Device
            NTGuide.ContentPages.Items.TheSpoon = {
                id = "the_spoon",
                category = "items",
                title = NTGuide.Localize("ntg.title.the_spoon"), 
                description = NTGuide.Localize("ntg.description.the_spoon"),
            }

            -- Eye Drops
            NTGuide.ContentPages.Items.EyeDropsItem = {
                id = "eye_drops_item",
                category = "items",
                title = NTGuide.Localize("ntg.title.eye_drops_item"), 
                description = NTGuide.Localize("ntg.description.eye_drops_item"),
                seealso = {NTGuide.Localize("ntg.effects.eye_drops_item")},
            }

        -- Other Items

            -- Corrective Glasses
            NTGuide.ContentPages.Items.CorrectiveGlasses = {
                id = "corrective_glasses",
                category = "items",
                title = NTGuide.Localize("ntg.title.corrective_glasses"), 
                description = NTGuide.Localize("ntg.description.corrective_glasses"),
                effects = {NTGuide.Localize("ntg.effects.corrective_glasses")},
            }

            -- Night Vision Goggles
            NTGuide.ContentPages.Items.NightVisionGoggles = {
                id = "night_vision_goggles",
                category = "items",
                title = NTGuide.Localize("ntg.title.night_vision_goggles"), 
                description = NTGuide.Localize("ntg.description.night_vision_goggles"),
                effects = {NTGuide.Localize("ntg.effects.night_vision_goggles")},
            }

            -- Eye Regeneration Jar
            NTGuide.ContentPages.Items.EyeRegenerationJar = {
                id = "eye_regeneration_jar",
                category = "items",
                title = NTGuide.Localize("ntg.title.eye_regeneration_jar"), 
                description = NTGuide.Localize("ntg.description.eye_regeneration_jar"),
                effects = {NTGuide.Localize("ntg.effects.eye_regeneration_jar")},
            }

            -- Put the scannable afflictions into the linking table, as before
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
        end
    end
end