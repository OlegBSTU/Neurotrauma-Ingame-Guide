-- Expansion / overriding of Guide Pages

--===================================================================================================================================================================================================
        -- Neurotrauma: Surgery Plus Additions
            -- Surgical Infection
            NTGuide.ContentPages.Afflictions_Blood.SurgicalInfection = {
                mod = "NT: Surgery Plus",
                id = "surgical_infection", 
                category = "mechanics",
                title = NTGuide.Localize("ntg.title.surgical_infection"), 
                description = NTGuide.Localize("ntg.description.surgical_infection"), 
                effects = {NTGuide.Localize("ntg.effects.surgical_infection")},
                seealso = {NTGuide.Localize("ntg.seealso.surgical_infection")},
            }
            -- Surgical Drapes
            NTGuide.ContentPages.Items.SurgicalDrapes = {
                mod = "NT: Surgery Plus",
                id = "surgical_drapes", 
                category = "items",
                title = NTGuide.Localize("ntg.title.surgical_drapes"), 
                description = NTGuide.Localize("ntg.description.surgical_drapes"), 
                effects = {NTGuide.Localize("ntg.effects.surgical_drapes")},
                seealso = {NTGuide.Localize("ntg.seealso.surgical_drapes")},
            }
            -- Surgical Mask
            NTGuide.ContentPages.Items.SurgicalMask = {
                mod = "NT: Surgery Plus",
                id = "surgical_mask", 
                category = "items",
                title = NTGuide.Localize("ntg.title.surgical_mask"), 
                description = NTGuide.Localize("ntg.description.surgical_mask"), 
                effects = {NTGuide.Localize("ntg.effects.surgical_mask")},
                seealso = {NTGuide.Localize("ntg.seealso.surgical_mask")},
            }
            -- Surgeon Clothes
            NTGuide.ContentPages.Items.SurgeonClothes = {
                mod = "NT: Surgery Plus",
                id = "surgeon_clothes", 
                category = "items",
                title = NTGuide.Localize("ntg.title.surgeon_clothes"), 
                description = NTGuide.Localize("ntg.description.surgeon_clothes"), 
                effects = {NTGuide.Localize("ntg.effects.surgeon_clothes")},
                seealso = {NTGuide.Localize("ntg.seealso.surgeon_clothes")},
            }
            -- Mannitol Plus
            NTGuide.ContentPages.Items.MannitolPlus = {
                mod = "NT: Surgery Plus",
                id = "mannitol_plus", 
                category = "items",
                title = NTGuide.Localize("ntg.title.mannitol_plus"), 
                description = NTGuide.Localize("ntg.description.mannitol_plus"), 
                effects = {NTGuide.Localize("ntg.effects.mannitol_plus")},
                seealso = {NTGuide.Localize("ntg.seealso.mannitol_plus")},
            }
            -- Experimental Treatment
            NTGuide.ContentPages.Items.ExperimentalTreatment = {
                mod = "NT: Surgery Plus",
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
                mod = "NT: Surgery Plus",
                id = "triage_card", 
                category = "items",
                title = NTGuide.Localize("ntg.title.triage_card"), 
                description = NTGuide.Localize("ntg.description.triage_card"), 
            }
            -- Brain Jar
            NTGuide.ContentPages.Items.BrainJar = {
                mod = "NT: Surgery Plus",
                id = "brain_jar", 
                category = "items",
                title = NTGuide.Localize("ntg.title.brain_jar"), 
                description = NTGuide.Localize("ntg.description.brain_jar"), 
            }
            -- Artificial Brain
            NTGuide.ContentPages.Items.ArtificialBrain = {
                mod = "NT: Surgery Plus",
                id = "artificial_brain", 
                category = "items",
                title = NTGuide.Localize("ntg.title.artificial_brain"), 
                description = NTGuide.Localize("ntg.description.artificial_brain"), 
            }
            -- Medical Misconduct
            NTGuide.ContentPages.Items.MedicalMisconduct = {
                mod = "NT: Surgery Plus",
                id = "medical_misconduct", 
                category = "items",
                title = NTGuide.Localize("ntg.title.medical_misconduct"), 
                description = NTGuide.Localize("ntg.description.medical_misconduct"), 
            }
-- ===========================================================================================================================================================================================================
        -- Neurotrauma: Cybernetics Enhanced Additions
        -- Cybernetic Arm
            NTGuide.ContentPages.Items.CyberneticArm = {
                mod = "NT: Cybernetics Enhanced",
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
                mod = "NT: Cybernetics Enhanced",
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
                mod = "NT: Cybernetics Enhanced",
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
                mod = "NT: Cybernetics Enhanced",
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
                mod = "NT: Cybernetics Enhanced",
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
                mod = "NT: Cybernetics Enhanced",
                id = "material_loss",
                category = "afflictions",
                title = NTGuide.Localize("ntg.title.material_loss"), 
                description = NTGuide.Localize("ntg.description.material_loss"),
                causes = {NTGuide.Localize("ntg.causes.material_loss")},
                effects = {NTGuide.Localize("ntg.effects.material_loss")}, 
                treatments = {NTGuide.Localize("ntg.treatments.material_loss")},
                seealso = {NTGuide.Localize("ntg.seealso.material_loss")},
            }
            -- FPGA Circuit
            NTGuide.ContentPages.Items.FPGACircuit = {
                mod = "NT: Cybernetics Enhanced",
                id = "fpga_circuit",
                category = "items",
                title = NTGuide.Localize("ntg.title.fpga_circuit"), 
                description = NTGuide.Localize("ntg.description.fpga_circuit"),
                applicationsuccess = {NTGuide.Localize("ntg.applicationsuccess.fpga_circuit")},
                applicationfailed = {NTGuide.Localize("ntg.applicationfailed.fpga_circuit")},
            }
            -- Welding Tool
            NTGuide.ContentPages.Items.WeldingTool = {
                mod = "NT: Cybernetics Enhanced",
                id = "welding_tool",
                category = "items",
                title = NTGuide.Localize("ntg.title.welding_tool"), 
                description = NTGuide.Localize("ntg.description.welding_tool"),
                applicationsuccess = {NTGuide.Localize("ntg.applicationsuccess.welding_tool")},
                applicationfailed = {NTGuide.Localize("ntg.applicationfailed.welding_tool")},
            }
            -- Screwdriver
            NTGuide.ContentPages.Items.Screwdriver = {
                mod = "NT: Cybernetics Enhanced",
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
                mod = "NT: Cybernetics Enhanced",
                id = "steel_bar",
                category = "items",
                title = NTGuide.Localize("ntg.title.steel_bar"), 
                description = NTGuide.Localize("ntg.description.steel_bar"),
                applicationsuccess = {NTGuide.Localize("ntg.applicationsuccess.steel_bar")},
                applicationfailed = {NTGuide.Localize("ntg.applicationfailed.steel_bar")},
            }
            -- Crowbar
            NTGuide.ContentPages.Items.Crowbar = {
                mod = "NT: Cybernetics Enhanced",
                id = "crowbar",
                category = "items",
                title = NTGuide.Localize("ntg.title.crowbar"), 
                description = NTGuide.Localize("ntg.description.crowbar"),
            }
            -- Cyberbrain(s)
            NTGuide.ContentPages.Items.CyberBrainImplant = {
                mod = "NT: Cybernetics Enhanced",
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
                mod = "NT: Cybernetics Enhanced",
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
                mod = "NT: Cybernetics Enhanced",
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
                mod = "NT: Cybernetics Enhanced",
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
                mod = "NT: Cybernetics Enhanced",
                id = "cyberliver",
                category = "items",
                title = NTGuide.Localize("ntg.title.cyberliver"), 
                description = NTGuide.Localize("ntg.description.cyberliver"),
                applicationsuccess = {NTGuide.Localize("ntg.applicationsuccess.cyberliver")},
                applicationfailed = {NTGuide.Localize("ntg.applicationfailed.cyberliver")},
                seealso = {NTGuide.Localize("ntg.seealso.cyberliver")},
            }
--==============================================================================================================================================================================================================
        -- Neurotrauma: Eyes Additions
        -- Damage Afflictions
            -- Human Eye Damage
            NTGuide.ContentPages.Afflictions_HeadORBrain.HumanEyeDamage = {
                mod = "NT: Eyes",
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
                mod = "NT: Eyes",
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
                mod = "NT: Eyes",
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
                mod = "NT: Eyes",
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
                mod = "NT: Eyes",
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
                mod = "NT: Eyes",
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
                mod = "NT: Eyes",
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
                mod = "NT: Eyes",
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
                mod = "NT: Eyes",
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
                mod = "NT: Eyes",
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
                mod = "NT: Eyes",
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
                mod = "NT: Eyes",
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
                mod = "NT: Eyes",
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
                mod = "NT: Eyes",
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
                mod = "NT: Eyes",
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
                mod = "NT: Eyes",
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
                mod = "NT: Eyes",
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
                mod = "NT: Eyes",
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
                mod = "NT: Eyes",
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
                mod = "NT: Eyes",
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
                mod = "NT: Eyes",
                id = "eye_connector",
                category = "afflictions",
                title = NTGuide.Localize("ntg.title.eye_connector"), 
                description = NTGuide.Localize("ntg.description.eye_connector"),
                causes = {NTGuide.Localize("ntg.causes.eye_connector")},
                seealso = {NTGuide.Localize("ntg.seealso.eye_connector")},
            }

            -- Cornea Incision
            NTGuide.ContentPages.Afflictions_Surgery.CorneaIncision = {
                mod = "NT: Eyes",
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
                mod = "NT: Eyes",
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
                mod = "NT: Eyes",
                id = "eye_drops",
                category = "afflictions",
                title = NTGuide.Localize("ntg.title.eye_drops"), 
                description = NTGuide.Localize("ntg.description.eye_drops"),
                causes = {NTGuide.Localize("ntg.causes.eye_drops")},
                effects = {NTGuide.Localize("ntg.effects.eye_drops")},
            }

            -- Laser Surgery
            NTGuide.ContentPages.Afflictions_Surgery.LaserSurgery = {
                mod = "NT: Eyes",
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
                mod = "NT: Eyes",
                id = "eye_removal_surgery",
                category = "procedures",
                title = NTGuide.Localize("ntg.title.eye_removal_surgery"), 
                description = NTGuide.Localize("ntg.description.eye_removal_surgery"),
                steps = {NTGuide.Localize("ntg.steps.eye_removal_surgery")},
                seealso = {NTGuide.Localize("ntg.seealso.eye_removal_surgery")},
            }

            -- Eye Transplant Surgery
            NTGuide.ContentPages.SurgicalProcedures.EyeTransplantSurgery = {
                mod = "NT: Eyes",
                id = "eye_transplant_surgery",
                category = "procedures",
                title = NTGuide.Localize("ntg.title.eye_transplant_surgery"), 
                description = NTGuide.Localize("ntg.description.eye_transplant_surgery"),
                steps = {NTGuide.Localize("ntg.steps.eye_transplant_surgery")},
                seealso = {NTGuide.Localize("ntg.seealso.eye_transplant_surgery")},
            }

            -- Cataract Surgery
            NTGuide.ContentPages.SurgicalProcedures.CataractSurgery = {
                mod = "NT: Eyes",
                id = "cataract_surgery",
                category = "procedures",
                title = NTGuide.Localize("ntg.title.cataract_surgery"), 
                description = NTGuide.Localize("ntg.description.cataract_surgery"),
                steps = {NTGuide.Localize("ntg.steps.cataract_surgery")},
                seealso = {NTGuide.Localize("ntg.seealso.cataract_surgery")},
            }

            -- Cyber Eye Repair Surgery
            NTGuide.ContentPages.SurgicalProcedures.CyberEyeRepairSurgery = {
                mod = "NT: Eyes",
                id = "cyber_eye_repair_surgery",
                category = "procedures",
                title = NTGuide.Localize("ntg.title.cyber_eye_repair_surgery"), 
                description = NTGuide.Localize("ntg.description.cyber_eye_repair_surgery"),
                steps = {NTGuide.Localize("ntg.steps.cyber_eye_repair_surgery")},
            }

            -- Lens Application Surgery 
            NTGuide.ContentPages.SurgicalProcedures.LensApplicationSurgery = {
                mod = "NT: Eyes",
                id = "lens_application_surgery",
                category = "procedures",
                title = NTGuide.Localize("ntg.title.lens_application_surgery"), 
                description = NTGuide.Localize("ntg.description.lens_application_surgery"),
                steps = {NTGuide.Localize("ntg.steps.lens_application_surgery")},
                seealso = {NTGuide.Localize("ntg.seealso.lens_application_surgery")},
            }

            -- Lens Removal Surgery
            NTGuide.ContentPages.SurgicalProcedures.LensRemovalSurgery = {
                mod = "NT: Eyes",
                id = "lens_removal_surgery",
                category = "procedures",
                title = NTGuide.Localize("ntg.title.lens_removal_surgery"), 
                description = NTGuide.Localize("ntg.description.lens_removal_surgery"),
                steps = {NTGuide.Localize("ntg.steps.lens_removal_surgery")},
            }

            -- Laser Eye Surgery
            NTGuide.ContentPages.SurgicalProcedures.LaserEyeSurgery = {
                mod = "NT: Eyes",
                id = "laser_eye_surgery",
                category = "procedures",
                title = NTGuide.Localize("ntg.title.laser_eye_surgery"), 
                description = NTGuide.Localize("ntg.description.laser_eye_surgery"),
                steps = {NTGuide.Localize("ntg.steps.laser_eye_surgery")},
            }

            -- Eye Drop Application
            NTGuide.ContentPages.SurgicalProcedures.EyeDropApplication = {
                mod = "NT: Eyes",
                id = "eye_drop_application",
                category = "procedures",
                title = NTGuide.Localize("ntg.title.eye_drop_application"), 
                description = NTGuide.Localize("ntg.description.eye_drop_application"),
                steps = {NTGuide.Localize("ntg.steps.eye_drop_application")},
            }

        -- Eye Types

            -- Human Eye 
            NTGuide.ContentPages.Items.HumanEye = {
                mod = "NT: Eyes",
                id = "human_eye",
                category = "items",
                title = NTGuide.Localize("ntg.title.human_eye"), 
                description = NTGuide.Localize("ntg.description.human_eye"),
                effects = {NTGuide.Localize("ntg.effects.human_eye")},
            }

            -- Enhanced Eye 
            NTGuide.ContentPages.Items.EnhancedEye = {
                mod = "NT: Eyes",
                id = "enhanced_eye",
                category = "items",
                title = NTGuide.Localize("ntg.title.enhanced_eye"), 
                description = NTGuide.Localize("ntg.description.enhanced_eye"),
                effects = {NTGuide.Localize("ntg.effects.enhanced_eye")},
            }

            -- Cyber Eye  
            NTGuide.ContentPages.Items.CyberEye = {
                mod = "NT: Eyes",
                id = "cyber_eye",
                category = "items",
                title = NTGuide.Localize("ntg.title.cyber_eye"), 
                description = NTGuide.Localize("ntg.description.cyber_eye"),
                effects = {NTGuide.Localize("ntg.effects.cyber_eye")},
            }

            -- Plastic Eye  
            NTGuide.ContentPages.Items.PlasticEye = {
                mod = "NT: Eyes",
                id = "plastic_eye",
                category = "items",
                title = NTGuide.Localize("ntg.title.plastic_eye"), 
                description = NTGuide.Localize("ntg.description.plastic_eye"),
                effects = {NTGuide.Localize("ntg.effects.plastic_eye")},
            }

            -- Husk Eye  
            NTGuide.ContentPages.Items.HuskEye = {
                mod = "NT: Eyes",
                id = "husk_eye",
                category = "items",
                title = NTGuide.Localize("ntg.title.husk_eye"), 
                description = NTGuide.Localize("ntg.description.husk_eye"),
                effects = {NTGuide.Localize("ntg.effects.husk_eye")},
            }

            -- Crawler Eye  
            NTGuide.ContentPages.Items.CrawlerEye = {
                mod = "NT: Eyes",
                id = "crawler_eye",
                category = "items",
                title = NTGuide.Localize("ntg.title.crawler_eye"), 
                description = NTGuide.Localize("ntg.description.crawler_eye"),
                effects = {NTGuide.Localize("ntg.effects.crawler_eye")},
            }

            -- Mudraptor Eye  
            NTGuide.ContentPages.Items.MudraptorEye = {
                mod = "NT: Eyes",
                id = "mudraptor_eye",
                category = "items",
                title = NTGuide.Localize("ntg.title.mudraptor_eye"), 
                description = NTGuide.Localize("ntg.description.mudraptor_eye"),
                effects = {NTGuide.Localize("ntg.effects.mudraptor_eye")},
            }

            -- Hammerhead Eye  
            NTGuide.ContentPages.Items.HammerheadEye = {
                mod = "NT: Eyes",
                id = "hammerhead_eye",
                category = "items",
                title = NTGuide.Localize("ntg.title.hammerhead_eye"), 
                description = NTGuide.Localize("ntg.description.hammerhead_eye"),
                effects = {NTGuide.Localize("ntg.effects.hammerhead_eye")},
            }

            -- Watcher Eye  
            NTGuide.ContentPages.Items.WatcherEye = {
                mod = "NT: Eyes",
                id = "watcher_eye",
                category = "items",
                title = NTGuide.Localize("ntg.title.watcher_eye"), 
                description = NTGuide.Localize("ntg.description.watcher_eye"),
                effects = {NTGuide.Localize("ntg.effects.watcher_eye")},
            }

            -- Latcher Eye 
            NTGuide.ContentPages.Items.LatcherEye = {
                mod = "NT: Eyes",
                id = "latcher_eye",
                category = "items",
                title = NTGuide.Localize("ntg.title.latcher_eye"), 
                description = NTGuide.Localize("ntg.description.latcher_eye"),
                effects = {NTGuide.Localize("ntg.effects.latcher_eye")},
            }

        -- Lens Types
            
            -- Medical Lens
            NTGuide.ContentPages.Items.MedicalLens = {
                mod = "NT: Eyes",
                id = "medical_lens",
                category = "items",
                title = NTGuide.Localize("ntg.title.medical_lens"), 
                description = NTGuide.Localize("ntg.description.medical_lens"),
                seealso = {NTGuide.Localize("ntg.effects.medical_lens")},
            }

            -- Electrical Lens
            NTGuide.ContentPages.Items.ElectricalLens = {
                mod = "NT: Eyes",
                id = "electrical_lens",
                category = "items",
                title = NTGuide.Localize("ntg.title.electrical_lens"), 
                description = NTGuide.Localize("ntg.description.electrical_lens"),
                seealso = {NTGuide.Localize("ntg.effects.electrical_lens")},
            }

            -- Night Vision Lens
            NTGuide.ContentPages.Items.NightvisionLens = {
                mod = "NT: Eyes",
                id = "night_vision_lens",
                category = "items",
                title = NTGuide.Localize("ntg.title.night_vision_lens"), 
                description = NTGuide.Localize("ntg.description.night_vision_lens"),
                seealso = {NTGuide.Localize("ntg.effects.night_vision_lens")},
            }

            -- Thermal Lens
            NTGuide.ContentPages.Items.ThermalLens = {
                mod = "NT: Eyes",
                id = "thermal_lens",
                category = "items",
                title = NTGuide.Localize("ntg.title.thermal_lens"), 
                description = NTGuide.Localize("ntg.description.thermal_lens"),
                seealso = {NTGuide.Localize("ntg.effects.thermal_lens")},
            }

        -- Surgery Items

            -- Eye Connector
            NTGuide.ContentPages.Items.EyeConnectorItem = {
                mod = "NT: Eyes",
                id = "eye_connector_item",
                category = "items",
                title = NTGuide.Localize("ntg.title.eye_connector_item"), 
                description = NTGuide.Localize("ntg.description.eye_connector_item"),
                seealso = {NTGuide.Localize("ntg.effects.eye_connector_item")},
            }

            -- Organic Eye Lens
            NTGuide.ContentPages.Items.OrganicEyeLens = {
                mod = "NT: Eyes",
                id = "organic_eye_lens",
                category = "items",
                title = NTGuide.Localize("ntg.title.organic_eye_lens"), 
                description = NTGuide.Localize("ntg.description.organic_eye_lens"),
                seealso = {NTGuide.Localize("ntg.effects.organic_eye_lens")},
            }

            -- Laser Surgery Tool
            NTGuide.ContentPages.Items.LaserSurgeryTool = {
                mod = "NT: Eyes",
                id = "laser_surgery_tool",
                category = "items",
                title = NTGuide.Localize("ntg.title.laser_surgery_tool"), 
                description = NTGuide.Localize("ntg.description.laser_surgery_tool"),
                seealso = {NTGuide.Localize("ntg.effects.laser_surgery_tool")},
            }

            -- Advanced Eyeball Extraction Device
            NTGuide.ContentPages.Items.TheSpoon = {
                mod = "NT: Eyes",
                id = "the_spoon",
                category = "items",
                title = NTGuide.Localize("ntg.title.the_spoon"), 
                description = NTGuide.Localize("ntg.description.the_spoon"),
            }

            -- Eye Drops
            NTGuide.ContentPages.Items.EyeDropsItem = {
                mod = "NT: Eyes",
                id = "eye_drops_item",
                category = "items",
                title = NTGuide.Localize("ntg.title.eye_drops_item"), 
                description = NTGuide.Localize("ntg.description.eye_drops_item"),
                seealso = {NTGuide.Localize("ntg.effects.eye_drops_item")},
            }

        -- Other Items

            -- Corrective Glasses
            NTGuide.ContentPages.Items.CorrectiveGlasses = {
                mod = "NT: Eyes",
                id = "corrective_glasses",
                category = "items",
                title = NTGuide.Localize("ntg.title.corrective_glasses"), 
                description = NTGuide.Localize("ntg.description.corrective_glasses"),
                effects = {NTGuide.Localize("ntg.effects.corrective_glasses")},
            }

            -- Night Vision Goggles
            NTGuide.ContentPages.Items.NightVisionGoggles = {
                mod = "NT: Eyes",
                id = "night_vision_goggles",
                category = "items",
                title = NTGuide.Localize("ntg.title.night_vision_goggles"), 
                description = NTGuide.Localize("ntg.description.night_vision_goggles"),
                effects = {NTGuide.Localize("ntg.effects.night_vision_goggles")},
            }

            -- Eye Regeneration Jar
            NTGuide.ContentPages.Items.EyeRegenerationJar = {
                mod = "NT: Eyes",
                id = "eye_regeneration_jar",
                category = "items",
                title = NTGuide.Localize("ntg.title.eye_regeneration_jar"), 
                description = NTGuide.Localize("ntg.description.eye_regeneration_jar"),
                effects = {NTGuide.Localize("ntg.effects.eye_regeneration_jar")},
            }
-- =========================================================================================================================================================================================================
        -- Neurotrauma: Infections Additions 
        -- Information Pages
            -- How the new infections work
            NTGuide.ContentPages.Information.InfectionChanges = {
                mod = "NT: Infections",
                id = "information_infection_changes",
                category = "information",
                title = NTGuide.Localize("ntg.title.information_infection_changes"), 
                description = NTGuide.Localize("ntg.description.information_infection_changes"),
                seealso = {NTGuide.Localize("ntg.seealso.information_infection_changes")},
            }

            -- Fighting off infections
            NTGuide.ContentPages.Information.FightingInfections = {
                mod = "NT: Infections",
                id = "information_fighting_infections",
                category = "information",
                title = NTGuide.Localize("ntg.title.information_fighting_infections"), 
                description = NTGuide.Localize("ntg.description.information_fighting_infections"),
                seealso = {NTGuide.Localize("ntg.seealso.information_fighting_infections")},
            }

            -- Using Antibiotics
            NTGuide.ContentPages.Information.UsingAntibiotics = {
                mod = "NT: Infections",
                id = "information_using_antibiotics",
                category = "information",
                title = NTGuide.Localize("ntg.title.information_using_antibiotics"), 
                description = NTGuide.Localize("ntg.description.information_using_antibiotics"),
                seealso = {NTGuide.Localize("ntg.seealso.information_using_antibiotics")},
            }

            -- Diagnosing Bacterial Infections
            NTGuide.ContentPages.Information.DiagnosingBacterialInfections = {
                mod = "NT: Infections",
                id = "information_diagnosing_bacteria",
                category = "information",
                title = NTGuide.Localize("ntg.title.information_diagnosing_bacteria"), 
                description = NTGuide.Localize("ntg.description.information_diagnosing_bacteria"),
                seealso = {NTGuide.Localize("ntg.seealso.information_diagnosing_bacteria")},
            }


                -- Communicable diseases (NTSP)
                NTGuide.ContentPages.Information.DiagnosingViralInfections = {
                    mod = "NT: Infections",
                    id = "information_diagnosing_viruses",
                    category = "information",
                    title = NTGuide.Localize("ntg.title.information_diagnosing_viruses_ntsp"), 
                    description = NTGuide.Localize("ntg.description.information_diagnosing_viruses_ntsp"),
                    seealso = {NTGuide.Localize("ntg.seealso.information_diagnosing_viruses_ntsp")},
                }

                -- -- Communicable diseases (No NTSP)
                -- NTGuide.ContentPages.Information.DiagnosingViralInfections = {
                --     id = "information_diagnosing_viruses",
                --     category = "information",
                --     title = NTGuide.Localize("ntg.title.information_diagnosing_viruses"), 
                --     description = NTGuide.Localize("ntg.description.information_diagnosing_viruses"),
                --     seealso = {NTGuide.Localize("ntg.seealso.information_diagnosing_viruses")},
                -- }


            -- Vaccines
            NTGuide.ContentPages.Information.VaccinesInformation = {
                mod = "NT: Infections",
                id = "information_vaccines",
                category = "information",
                title = NTGuide.Localize("ntg.title.information_vaccines"), 
                description = NTGuide.Localize("ntg.description.information_vaccines"),
                seealso = {NTGuide.Localize("ntg.seealso.information_vaccines")},
            }

            -- UPDATE ABX

        -- Bacterial Infections
            -- Streptococcal Infection
            NTGuide.ContentPages.Afflictions_AnyBodypart.StreptococcalInfection = {
                mod = "NT: Infections",
                id = "streptococcal_infection",
                category = "afflictions",
                title = NTGuide.Localize("ntg.title.streptococcal_infection"), 
                description = NTGuide.Localize("ntg.description.streptococcal_infection"),
                susceptible = {NTGuide.Localize("ntg.susceptible.streptococcal_infection")},
                effects = {NTGuide.Localize("ntg.effects.streptococcal_infection")},
                seealso = {NTGuide.Localize("ntg.seealso.streptococcal_infection")},
            }

            -- Staphylococcal Infection
            NTGuide.ContentPages.Afflictions_AnyBodypart.StaphylococcalInfection = {
                mod = "NT: Infections",
                id = "staphylococcal_infection",
                category = "afflictions",
                title = NTGuide.Localize("ntg.title.staphylococcal_infection"), 
                description = NTGuide.Localize("ntg.description.staphylococcal_infection"),
                susceptible = {NTGuide.Localize("ntg.susceptible.staphylococcal_infection")},
                effects = {NTGuide.Localize("ntg.effects.staphylococcal_infection")},
                seealso = {NTGuide.Localize("ntg.seealso.staphylococcal_infection")},
            }

            -- MRSA Infection
            NTGuide.ContentPages.Afflictions_AnyBodypart.MRSAInfection = {
                mod = "NT: Infections",
                id = "mrsa_infection",
                category = "afflictions",
                title = NTGuide.Localize("ntg.title.mrsa_infection"), 
                description = NTGuide.Localize("ntg.description.mrsa_infection"),
                requirements = {NTGuide.Localize("ntg.requirements.mrsa_infection")},
                susceptible = {NTGuide.Localize("ntg.susceptible.mrsa_infection")},
                effects = {NTGuide.Localize("ntg.effects.mrsa_infection")},
                seealso = {NTGuide.Localize("ntg.seealso.mrsa_infection")},
            }

            -- Pseudomonas Infection
            NTGuide.ContentPages.Afflictions_AnyBodypart.PseudomonasInfection = {
                mod = "NT: Infections",
                id = "pseudomonas_infection",
                category = "afflictions",
                title = NTGuide.Localize("ntg.title.pseudomonas_infection"), 
                description = NTGuide.Localize("ntg.description.pseudomonas_infection"),
                susceptible = {NTGuide.Localize("ntg.susceptible.pseudomonas_infection")},
                effects = {NTGuide.Localize("ntg.effects.pseudomonas_infection")},
                seealso = {NTGuide.Localize("ntg.seealso.pseudomonas_infection")},
            }

            -- Provobacter Infection
            NTGuide.ContentPages.Afflictions_AnyBodypart.ProvobacterInfection = {
                mod = "NT: Infections",
                id = "provobacter_infection",
                category = "afflictions",
                title = NTGuide.Localize("ntg.title.provobacter_infection"), 
                description = NTGuide.Localize("ntg.description.provobacter_infection"),
                susceptible = {NTGuide.Localize("ntg.susceptible.provobacter_infection")},
                effects = {NTGuide.Localize("ntg.effects.provobacter_infection")},
                seealso = {NTGuide.Localize("ntg.seealso.provobacter_infection")},
            }

            -- Aeroganella Infection
            NTGuide.ContentPages.Afflictions_AnyBodypart.AeroganellaInfection = {
                mod = "NT: Infections",
                id = "aeroganella_infection",
                category = "afflictions",
                title = NTGuide.Localize("ntg.title.aeroganella_infection"), 
                description = NTGuide.Localize("ntg.description.aeroganella_infection"),
                susceptible = {NTGuide.Localize("ntg.susceptible.aeroganella_infection")},
                effects = {NTGuide.Localize("ntg.effects.aeroganella_infection")},
                seealso = {NTGuide.Localize("ntg.seealso.aeroganella_infection")},
            }

        -- Antibiotics
            -- Unasyn
            NTGuide.ContentPages.Items.Unasyn = {
                mod = "NT: Infections",
                id = "unasyn",
                category = "items",
                title = NTGuide.Localize("ntg.title.unasyn"), 
                description = NTGuide.Localize("ntg.description.unasyn"),
                effectiveness = {NTGuide.Localize("ntg.effectiveness.unasyn")},
                applicationsuccess = {NTGuide.Localize("ntg.applicationsuccess.unasyn")},
                applicationfailed = {NTGuide.Localize("ntg.applicationfailed.unasyn")},
                seealso = {NTGuide.Localize("ntg.seealso.unasyn")},
            }

            -- Augmentin
            NTGuide.ContentPages.Items.Augmentin = {
                mod = "NT: Infections",
                id = "augmentin",
                category = "items",
                title = NTGuide.Localize("ntg.title.augmentin"), 
                description = NTGuide.Localize("ntg.description.augmentin"),
                effectiveness = {NTGuide.Localize("ntg.effectiveness.augmentin")},
                applicationsuccess = {NTGuide.Localize("ntg.applicationsuccess.augmentin")},
                applicationfailed = {NTGuide.Localize("ntg.applicationfailed.augmentin")},
                seealso = {NTGuide.Localize("ntg.seealso.augmentin")},
            }

            -- Vancomycin
            NTGuide.ContentPages.Items.Vancomycin = {
                mod = "NT: Infections",
                id = "vancomycin",
                category = "items",
                title = NTGuide.Localize("ntg.title.vancomycin"), 
                description = NTGuide.Localize("ntg.description.vancomycin"),
                effectiveness = {NTGuide.Localize("ntg.effectiveness.vancomycin")},
                applicationsuccess = {NTGuide.Localize("ntg.applicationsuccess.vancomycin")},
                applicationfailed = {NTGuide.Localize("ntg.applicationfailed.vancomycin")},
                seealso = {NTGuide.Localize("ntg.seealso.vancomycin")},
            }

            -- Gentamicin
            NTGuide.ContentPages.Items.Gentamicin = {
                mod = "NT: Infections",
                id = "gentamicin",
                category = "items",
                title = NTGuide.Localize("ntg.title.gentamicin"), 
                description = NTGuide.Localize("ntg.description.gentamicin"),
                effectiveness = {NTGuide.Localize("ntg.effectiveness.gentamicin")},
                applicationsuccess = {NTGuide.Localize("ntg.applicationsuccess.gentamicin")},
                applicationfailed = {NTGuide.Localize("ntg.applicationfailed.gentamicin")},
                seealso = {NTGuide.Localize("ntg.seealso.gentamicin")},
            }

            -- Co-trimoxazole
            NTGuide.ContentPages.Items.Cotrimoxazole = {
                mod = "NT: Infections",
                id = "cotrimoxazole",
                category = "items",
                title = NTGuide.Localize("ntg.title.cotrimoxazole"), 
                description = NTGuide.Localize("ntg.description.cotrimoxazole"),
                effectiveness = {NTGuide.Localize("ntg.effectiveness.cotrimoxazole")},
                applicationsuccess = {NTGuide.Localize("ntg.applicationsuccess.cotrimoxazole")},
                applicationfailed = {NTGuide.Localize("ntg.applicationfailed.cotrimoxazole")},
                seealso = {NTGuide.Localize("ntg.seealso.cotrimoxazole")},
            }

            -- Primaxin
            NTGuide.ContentPages.Items.Primaxin = {
                mod = "NT: Infections",
                id = "primaxin",
                category = "items",
                title = NTGuide.Localize("ntg.title.primaxin"), 
                description = NTGuide.Localize("ntg.description.primaxin"),
                effectiveness = {NTGuide.Localize("ntg.effectiveness.primaxin")},
                applicationsuccess = {NTGuide.Localize("ntg.applicationsuccess.primaxin")},
                applicationfailed = {NTGuide.Localize("ntg.applicationfailed.primaxin")},
                seealso = {NTGuide.Localize("ntg.seealso.primaxin")},
            }

            -- Ceftazidime
            NTGuide.ContentPages.Items.Ceftazidime = {
                mod = "NT: Infections",
                id = "ceftazidime",
                category = "items",
                title = NTGuide.Localize("ntg.title.ceftazidime"), 
                description = NTGuide.Localize("ntg.description.ceftazidime"),
                effectiveness = {NTGuide.Localize("ntg.effectiveness.ceftazidime")},
                applicationsuccess = {NTGuide.Localize("ntg.applicationsuccess.ceftazidime")},
                applicationfailed = {NTGuide.Localize("ntg.applicationfailed.ceftazidime")},
                seealso = {NTGuide.Localize("ntg.seealso.ceftazidime")},
            }

        -- Tools 
            -- Sampler Tool
            NTGuide.ContentPages.Items.SamplerTool = {
                mod = "NT: Infections",
                id = "sampler_tool",
                category = "items",
                title = NTGuide.Localize("ntg.title.sampler_tool"), 
                description = NTGuide.Localize("ntg.description.sampler_tool"),
                seealso = {NTGuide.Localize("ntg.effects.sampler_tool")},
            }

            -- Culture Tube
            NTGuide.ContentPages.Items.CultureTube = {
                mod = "NT: Infections",
                id = "culture_tube",
                category = "items",
                title = NTGuide.Localize("ntg.title.culture_tube"), 
                description = NTGuide.Localize("ntg.description.culture_tube"),
                seealso = {NTGuide.Localize("ntg.effects.culture_tube")},
            }

            -- Viral Transport Medium
            NTGuide.ContentPages.Items.ViralTransportMedium = {
                mod = "NT: Infections",
                id = "viral_transport_medium",
                category = "items",
                title = NTGuide.Localize("ntg.title.viral_transport_medium"), 
                description = NTGuide.Localize("ntg.description.viral_transport_medium"),
                seealso = {NTGuide.Localize("ntg.effects.viral_transport_medium")},
            }

            -- Sample Analyzer
            NTGuide.ContentPages.Items.SampleAnalyzer = {
                mod = "NT: Infections",
                id = "sample_analyzer",
                category = "items",
                title = NTGuide.Localize("ntg.title.sample_analyzer"), 
                description = NTGuide.Localize("ntg.description.sample_analyzer"),
                seealso = {NTGuide.Localize("ntg.effects.sample_analyzer")},
            }

        -- Symptoms
            -- Purulent Drainage
            NTGuide.ContentPages.Afflictions_AnyBodypart.PurulentDrainage = {
                mod = "NT: Infections",
                id = "purulent_drainage",
                category = "afflictions",
                title = NTGuide.Localize("ntg.title.purulent_drainage"), 
                description = NTGuide.Localize("ntg.description.purulent_drainage"),
                requirements = {NTGuide.Localize("ntg.requirements.purulent_drainage")},
                possiblecauses = {NTGuide.Localize("ntg.causes.purulent_drainage")},
                seealso = {NTGuide.Localize("ntg.seealso.purulent_drainage")},
            }

            -- Abscess
            NTGuide.ContentPages.Afflictions_AnyBodypart.Abscess = {
                mod = "NT: Infections",
                id = "abscess",
                category = "afflictions",
                title = NTGuide.Localize("ntg.title.abscess"), 
                description = NTGuide.Localize("ntg.description.abscess"),
                requirements = {NTGuide.Localize("ntg.requirements.abscess")},
                possiblecauses = {NTGuide.Localize("ntg.causes.abscess")},
                seealso = {NTGuide.Localize("ntg.seealso.abscess")},
            }

            -- Inflammation [BASE OVERRIDE, ADDENDUM: NT Infections]
            NTGuide.ContentPages.Symptoms.Inflammation = {
                mod = "NT: Infections",
                id = "inflammation", 
                category = "afflictions",
                title = NTGuide.Localize("ntg.title.inflammation_infc"), 
                description = NTGuide.Localize("ntg.description.inflammation_infc"), 
                causes = {NTGuide.Localize("ntg.causes.inflammation_infc")},
                treatments = {NTGuide.Localize("ntg.treatments.inflammation_infc")},
            }

        -- Diseases
            -- Necrotizing Fasciitis
            NTGuide.ContentPages.Afflictions_AnyBodypart.NectrotizingFasciitis = {
                mod = "NT: Infections",
                id = "necrotizing_fasciitis",
                category = "afflictions",
                title = NTGuide.Localize("ntg.title.necrotizing_fasciitis"), 
                description = NTGuide.Localize("ntg.description.necrotizing_fasciitis"),
                requirements = {NTGuide.Localize("ntg.requirements.necrotizing_fasciitis")},
                treatments = {NTGuide.Localize("ntg.treatments.necrotizing_fasciitis")},
                effects = {NTGuide.Localize("ntg.effects.necrotizing_fasciitis")},
            }

            -- Pneumonia
            NTGuide.ContentPages.Afflictions_Lungs.Pneumonia = {
                mod = "NT: Infections",
                id = "pneumonia",
                category = "afflictions",
                title = NTGuide.Localize("ntg.title.pneumonia"), 
                description = NTGuide.Localize("ntg.description.pneumonia"),
                requirements = {NTGuide.Localize("ntg.requirements.pneumonia")},
                treatments = {NTGuide.Localize("ntg.treatments.pneumonia")},
                effects = {NTGuide.Localize("ntg.effects.pneumonia")},
            }

        -- Viral Infections
            -- Europan Cough
            NTGuide.ContentPages.Afflictions_HeadORBrain.EuropanCough = {
                mod = "NT: Infections",
                id = "europan_cough",
                category = "afflictions",
                title = NTGuide.Localize("ntg.title.europan_cough"), 
                description = NTGuide.Localize("ntg.description.europan_cough"),
                susceptible = {NTGuide.Localize("ntg.susceptible.europan_cough")},
                treatments = {NTGuide.Localize("ntg.treatments.europan_cough")},
                effects = {NTGuide.Localize("ntg.effects.europan_cough")},
                seealso = {NTGuide.Localize("ntg.seealso.europan_cough")},
            }

            -- Influenza
            NTGuide.ContentPages.Afflictions_HeadORBrain.Influenza = {
                mod = "NT: Infections",
                id = "influenza",
                category = "afflictions",
                title = NTGuide.Localize("ntg.title.influenza"), 
                description = NTGuide.Localize("ntg.description.influenza"),
                susceptible = {NTGuide.Localize("ntg.susceptible.influenza")},
                treatments = {NTGuide.Localize("ntg.treatments.influenza")},
                effects = {NTGuide.Localize("ntg.effects.influenza")},
                seealso = {NTGuide.Localize("ntg.seealso.influenza")},
            }

            -- Common Cold
            NTGuide.ContentPages.Afflictions_HeadORBrain.CommonCold = {
                mod = "NT: Infections",
                id = "common_cold",
                category = "afflictions",
                title = NTGuide.Localize("ntg.title.common_cold"), 
                description = NTGuide.Localize("ntg.description.common_cold"),
                susceptible = {NTGuide.Localize("ntg.susceptible.common_cold")},
                effects = {NTGuide.Localize("ntg.effects.common_cold")},
                treatments = {NTGuide.Localize("ntg.treatments.common_cold")},
                seealso = {NTGuide.Localize("ntg.seealso.common_cold")},
            }

        -- Effects
            -- Methicillin-resistance risk
            NTGuide.ContentPages.Afflictions_Torso.MethicillinResistanceRisk = {
                mod = "NT: Infections",
                id = "methicillin_resistance_risk",
                category = "afflictions",
                title = NTGuide.Localize("ntg.title.methicillin_resistance_risk"), 
                description = NTGuide.Localize("ntg.description.methicillin_resistance_risk"),
                causes = {NTGuide.Localize("ntg.causes.methicillin_resistance_risk")},
                effects = {NTGuide.Localize("ntg.effects.methicillin_resistance_risk")},
                treatments = {NTGuide.Localize("ntg.treatments.methicillin_resistance_risk")},
            }

        -- Procedures
            -- Debridement
            NTGuide.ContentPages.SurgicalProcedures.Debridement = {
                mod = "NT: Infections",
                id = "debridement",
                category = "procedures",
                title = NTGuide.Localize("ntg.title.debridement"), 
                description = NTGuide.Localize("ntg.description.debridement"),
                steps = {NTGuide.Localize("ntg.steps.debridement")},
                seealso = {NTGuide.Localize("ntg.seealso.debridement")},
            }

            -- Sample Collection
            NTGuide.ContentPages.SurgicalProcedures.SampleCollection = {
                mod = "NT: Infections",
                id = "sample_collection",
                category = "procedures",
                title = NTGuide.Localize("ntg.title.sample_collection"), 
                description = NTGuide.Localize("ntg.description.sample_collection"),
                stepsbacterial = {NTGuide.Localize("ntg.stepsbacterial.sample_collection")},
                stepsviral = {NTGuide.Localize("ntg.stepsviral.sample_collection")},
                seealso = {NTGuide.Localize("ntg.seealso.sample_collection")},
            }

        -- Other Items
            -- Vaccines (Items)
            NTGuide.ContentPages.Items.Vaccines = {
                mod = "NT: Infections",
                id = "vaccines",
                category = "items",
                title = NTGuide.Localize("ntg.title.vaccines"), 
                description = NTGuide.Localize("ntg.description.vaccines"),
                seealso = {NTGuide.Localize("ntg.seealso.vaccines")},
            }

            -- Weaponized Bacteria
            NTGuide.ContentPages.Items.WeaponizedBacteria = {
                mod = "NT: Infections",
                id = "weaponized_bacteria",
                category = "items",
                title = NTGuide.Localize("ntg.title.weaponized_bacteria"), 
                description = NTGuide.Localize("ntg.description.weaponized_bacteria"),
                applicationsuccess = {NTGuide.Localize("ntg.applicationsuccess.weaponized_bacteria")},
                applicationfailed = {NTGuide.Localize("ntg.applicationfailed.weaponized_bacteria")},
                seealso = {NTGuide.Localize("ntg.seealso.weaponized_bacteria")},
            }

            -- Remdesivir
            NTGuide.ContentPages.Items.Remdesivir = {
                mod = "NT: Infections",
                id = "remdesivir",
                category = "items",
                title = NTGuide.Localize("ntg.title.remdesivir"), 
                description = NTGuide.Localize("ntg.description.remdesivir"),
                effectiveness = {NTGuide.Localize("ntg.effectiveness.remdesivir")},
                applicationsuccess = {NTGuide.Localize("ntg.applicationsuccess.remdesivir")},
                applicationfailed = {NTGuide.Localize("ntg.applicationfailed.remdesivir")},
            }
            
            -- Dextromethorphan
            NTGuide.ContentPages.Items.Dextromethorphan = {
                mod = "NT: Infections",
                id = "dextromethorphan",
                category = "items",
                title = NTGuide.Localize("ntg.title.dextromethorphan"), 
                description = NTGuide.Localize("ntg.description.dextromethorphan"),
                applicationsuccess = {NTGuide.Localize("ntg.applicationsuccess.dextromethorphan")},
                applicationfailed = {NTGuide.Localize("ntg.applicationfailed.dextromethorphan")},
                effects = {NTGuide.Localize("ntg.effects.dextromethorphan")},
            }
            
            -- Zinc Supplements
            NTGuide.ContentPages.Items.ZincSupplements = {
                mod = "NT: Infections",
                id = "zinc_supplements",
                category = "items",
                title = NTGuide.Localize("ntg.title.zinc_supplements"), 
                description = NTGuide.Localize("ntg.description.zinc_supplements"),
                effectiveness = {NTGuide.Localize("ntg.effectiveness.zinc_supplements")},
                applicationsuccess = {NTGuide.Localize("ntg.applicationsuccess.zinc_supplements")},
                applicationfailed = {NTGuide.Localize("ntg.applicationfailed.zinc_supplements")},
                effects = {NTGuide.Localize("ntg.effects.zinc_supplements")},
            }

            -- Hydrocortisone
            NTGuide.ContentPages.Items.Hydrocortisone = {
                mod = "NT: Infections",
                id = "hydrocortisone",
                category = "items",
                title = NTGuide.Localize("ntg.title.hydrocortisone"), 
                description = NTGuide.Localize("ntg.description.hydrocortisone"),
                applicationsuccess = {NTGuide.Localize("ntg.applicationsuccess.hydrocortisone")},
                applicationfailed = {NTGuide.Localize("ntg.applicationfailed.hydrocortisone")},
                effects = {NTGuide.Localize("ntg.effects.hydrocortisone")},
            }

--==================================================================================================================================================================================
        -- Neurotrauma: Grafting Additions

        -- Tools
            -- DNA Litigation Enhancer (Med50)
            NTGuide.ContentPages.Items.DNALitigationEnhancer = {
                mod = "NT: Grafting",
                id = "dna_litigation_enhancer",
                category = "items",
                title = NTGuide.Localize("ntg.title.dna_litigation_enhancer"), 
                description = NTGuide.Localize("ntg.description.dna_litigation_enhancer"),
                applicationsuccess = {NTGuide.Localize("ntg.applicationsuccess.dna_litigation_enhancer")},
                applicationfailed = {NTGuide.Localize("ntg.applicationfailed.dna_litigation_enhancer")},
                effects = {NTGuide.Localize("ntg.effects.dna_litigation_enhancer")},
            }

            -- DNA Splicer (Med50)
            NTGuide.ContentPages.Items.DNASplicer = {
                mod = "NT: Grafting",
                id = "dna_splicer",
                category = "items",
                title = NTGuide.Localize("ntg.title.dna_splicer"), 
                description = NTGuide.Localize("ntg.description.dna_splicer"),
                applicationsuccess = {NTGuide.Localize("ntg.applicationsuccess.dna_splicer")},
                applicationfailed = {NTGuide.Localize("ntg.applicationfailed.dna_splicer")},
                effects = {NTGuide.Localize("ntg.effects.dna_splicer")},
            }

            -- Alien Scalpel (Med30)
            NTGuide.ContentPages.Items.AlienScalpel = {
                mod = "NT: Grafting",
                id = "alien_scalpel",
                category = "items",
                title = NTGuide.Localize("ntg.title.alien_scalpel"), 
                description = NTGuide.Localize("ntg.description.alien_scalpel"),
                applicationsuccess = {NTGuide.Localize("ntg.applicationsuccess.alien_scalpel")},
                applicationfailed = {NTGuide.Localize("ntg.applicationfailed.alien_scalpel")},
            }

            -- Alien Incubator
            NTGuide.ContentPages.Items.AlienIncubator = {
                mod = "NT: Grafting",
                id = "alien_incubator",
                category = "items",
                title = NTGuide.Localize("ntg.title.alien_incubator"), 
                description = NTGuide.Localize("ntg.description.alien_incubator"),
                seealso = {NTGuide.Localize("ntg.seealso.alien_incubator")},
            }

            -- Stem Cells
            NTGuide.ContentPages.Items.StemCells = {
                mod = "NT: Grafting",
                id = "stem_cells",
                category = "items",
                title = NTGuide.Localize("ntg.title.stem_cells"), 
                description = NTGuide.Localize("ntg.description.stem_cells"),
                seealso = {NTGuide.Localize("ntg.seealso.stem_cells")},
            }

        -- Procedures 
            -- Crawler Tail Grafting
            NTGuide.ContentPages.SurgicalProcedures.CrawlerTailGrafting = {
                mod = "NT: Grafting",
                id = "crawler_tail_grafting",
                category = "grafting",
                title = NTGuide.Localize("ntg.title.crawler_tail_grafting"), 
                description = NTGuide.Localize("ntg.description.crawler_tail_grafting"),
                steps = {NTGuide.Localize("ntg.steps.crawler_tail_grafting")},
                seealso = {NTGuide.Localize("ntg.seealso.crawler_tail_grafting")},
            }

            -- Crawler Lungs Grafting
            NTGuide.ContentPages.SurgicalProcedures.CrawlerLungGrafting = {
                mod = "NT: Grafting",
                id = "crawler_lung_grafting",
                category = "grafting",
                title = NTGuide.Localize("ntg.title.crawler_lung_grafting"), 
                description = NTGuide.Localize("ntg.description.crawler_lung_grafting"),
                steps = {NTGuide.Localize("ntg.steps.crawler_lung_grafting")},
                seealso = {NTGuide.Localize("ntg.seealso.crawler_lung_grafting")},
            }


            -- -- Fractal Guardian Eye Grafting // NT EYES ENABLED
            -- NTGuide.ContentPages.SurgicalProcedures.FractalEyeGrafting = {
            --     id = "fractal_eye_grafting",
            --     category = "grafting",
            --     title = NTGuide.Localize("ntg.title.fractal_eye_grafting_nte"), 
            --     description = NTGuide.Localize("ntg.description.fractal_eye_grafting_nte"),
            -- }

             -- Fractal Guardian Eye Grafting // NT EYES DISABLED
            NTGuide.ContentPages.SurgicalProcedures.FractalEyeGrafting = {
                mod = "NT: Grafting",
                id = "fractal_eye_grafting",
                category = "grafting",
                title = NTGuide.Localize("ntg.title.fractal_eye_grafting"), 
                description = NTGuide.Localize("ntg.description.fractal_eye_grafting"),
                steps = {NTGuide.Localize("ntg.steps.fractal_eye_grafting")},
                seealso = {NTGuide.Localize("ntg.seealso.fractal_eye_grafting")},
            }

            -- Husk Arm Grafting
            NTGuide.ContentPages.SurgicalProcedures.HuskArmGrafting = {
                mod = "NT: Grafting",
                id = "husk_arm_grafting",
                category = "grafting",
                title = NTGuide.Localize("ntg.title.husk_arm_grafting"), 
                description = NTGuide.Localize("ntg.description.husk_arm_grafting"),
                steps = {NTGuide.Localize("ntg.steps.husk_arm_grafting")},
                seealso = {NTGuide.Localize("ntg.seealso.husk_arm_grafting")},
            }

            -- Husk Heart Grafting
            NTGuide.ContentPages.SurgicalProcedures.HuskHeartGrafting = {
                mod = "NT: Grafting",
                id = "husk_heart_grafting",
                category = "grafting",
                title = NTGuide.Localize("ntg.title.husk_heart_grafting"), 
                description = NTGuide.Localize("ntg.description.husk_heart_grafting"),
                steps = {NTGuide.Localize("ntg.steps.husk_heart_grafting")},
                seealso = {NTGuide.Localize("ntg.seealso.husk_heart_grafting")},
            }

            -- Mantis Liver Grafting
            NTGuide.ContentPages.SurgicalProcedures.MantisLiverGrafting = {
                mod = "NT: Grafting",
                id = "mantis_liver_grafting",
                category = "grafting",
                title = NTGuide.Localize("ntg.title.mantis_liver_grafting"), 
                description = NTGuide.Localize("ntg.description.mantis_liver_grafting"),
                steps = {NTGuide.Localize("ntg.steps.mantis_liver_grafting")},
                seealso = {NTGuide.Localize("ntg.seealso.mantis_liver_grafting")},
            }

            -- Mudraptor Lungs Grafting
            NTGuide.ContentPages.SurgicalProcedures.MudraptorLungsGrafting = {
                mod = "NT: Grafting",
                id = "mudraptor_lungs_grafting",
                category = "grafting",
                title = NTGuide.Localize("ntg.title.mudraptor_lungs_grafting"), 
                description = NTGuide.Localize("ntg.description.mudraptor_lungs_grafting"),
                steps = {NTGuide.Localize("ntg.steps.mudraptor_lungs_grafting")},
                seealso = {NTGuide.Localize("ntg.seealso.mudraptor_lungs_grafting")},
            }

            -- Mudraptor Head Grafting
            NTGuide.ContentPages.SurgicalProcedures.MudraptorHeadGrafting = {
                mod = "NT: Grafting",
                id = "mudraptor_head_grafting",
                category = "grafting",
                title = NTGuide.Localize("ntg.title.mudraptor_head_grafting"), 
                description = NTGuide.Localize("ntg.description.mudraptor_head_grafting"),
                steps = {NTGuide.Localize("ntg.steps.mudraptor_head_grafting")},
                seealso = {NTGuide.Localize("ntg.seealso.mudraptor_head_grafting")},
            }

            -- Broodmother Liver Grafting
            NTGuide.ContentPages.SurgicalProcedures.BroodmotherLiverGrafting = {
                mod = "NT: Grafting",
                id = "broodmother_liver_grafting",
                category = "grafting",
                title = NTGuide.Localize("ntg.title.broodmother_liver_grafting"), 
                description = NTGuide.Localize("ntg.description.broodmother_liver_grafting"),
                steps = {NTGuide.Localize("ntg.steps.broodmother_liver_grafting")},
                seealso = {NTGuide.Localize("ntg.seealso.broodmother_liver_grafting")},
            }

            -- Tiger Thresher Jaw Grafting
            NTGuide.ContentPages.SurgicalProcedures.TigerThresherJawGrafting = {
                mod = "NT: Grafting",
                id = "tthresher_jaw_grafting",
                category = "grafting",
                title = NTGuide.Localize("ntg.title.tthresher_jaw_grafting"), 
                description = NTGuide.Localize("ntg.description.tthresher_jaw_grafting"),
                steps = {NTGuide.Localize("ntg.steps.tthresher_jaw_grafting")},
                seealso = {NTGuide.Localize("ntg.seealso.tthresher_jaw_grafting")},
            }

            -- Tiger Thresher Tail Grafting
            NTGuide.ContentPages.SurgicalProcedures.TigerThresherTailGrafting = {
                mod = "NT: Grafting",
                id = "tthresher_tail_grafting",
                category = "grafting",
                title = NTGuide.Localize("ntg.title.tthresher_tail_grafting"), 
                description = NTGuide.Localize("ntg.description.tthresher_tail_grafting"),
                steps = {NTGuide.Localize("ntg.steps.tthresher_tail_grafting")},
                seealso = {NTGuide.Localize("ntg.seealso.tthresher_tail_grafting")},
            }

            -- Bone Thresher Jaw Grafting
            NTGuide.ContentPages.SurgicalProcedures.BoneThresherJawGrafting = {
                mod = "NT: Grafting",
                id = "bthresher_tail_grafting",
                category = "grafting",
                title = NTGuide.Localize("ntg.title.bthresher_tail_grafting"), 
                description = NTGuide.Localize("ntg.description.bthresher_tail_grafting"),
                steps = {NTGuide.Localize("ntg.steps.bthresher_tail_grafting")},
                seealso = {NTGuide.Localize("ntg.seealso.bthresher_tail_grafting")},
            }

            -- Hammerhead Skin Grafting
            NTGuide.ContentPages.SurgicalProcedures.HammerheadSkinGrafting = {
                mod = "NT: Grafting",
                id = "hammerhead_skin_grafting",
                category = "grafting",
                title = NTGuide.Localize("ntg.title.hammerhead_skin_grafting"), 
                description = NTGuide.Localize("ntg.description.hammerhead_skin_grafting"),
                steps = {NTGuide.Localize("ntg.steps.hammerhead_skin_grafting")},
                seealso = {NTGuide.Localize("ntg.seealso.hammerhead_skin_grafting")},
            }

            -- Hammerhead Limb Grafting
            NTGuide.ContentPages.SurgicalProcedures.HammerheadLimbGrafting = {
                mod = "NT: Grafting",
                id = "hammerhead_limb_grafting",
                category = "grafting",
                title = NTGuide.Localize("ntg.title.hammerhead_limb_grafting"), 
                description = NTGuide.Localize("ntg.description.hammerhead_limb_grafting"),
                steps = {NTGuide.Localize("ntg.steps.hammerhead_limb_grafting")},
                seealso = {NTGuide.Localize("ntg.seealso.hammerhead_limb_grafting")},
            }

            -- Moloch Shell Grafting
            NTGuide.ContentPages.SurgicalProcedures.MolochShellGrafting = {
                mod = "NT: Grafting",
                id = "moloch_shell_grafting",
                category = "grafting",
                title = NTGuide.Localize("ntg.title.moloch_shell_grafting"), 
                description = NTGuide.Localize("ntg.description.moloch_shell_grafting"),
                steps = {NTGuide.Localize("ntg.steps.moloch_shell_grafting")},
                seealso = {NTGuide.Localize("ntg.seealso.moloch_shell_grafting")},
            }

            -- Viperling Liver Grafting
            NTGuide.ContentPages.SurgicalProcedures.ViperlingLiverGrafting = {
                mod = "NT: Grafting",
                id = "viperling_liver_grafting",
                category = "grafting",
                title = NTGuide.Localize("ntg.title.viperling_liver_grafting"), 
                description = NTGuide.Localize("ntg.description.viperling_liver_grafting"),
                steps = {NTGuide.Localize("ntg.steps.viperling_liver_grafting")},
                seealso = {NTGuide.Localize("ntg.seealso.viperling_liver_grafting")},
            }


            -- -- Watcher Eye Grafting // NT EYES ENABLED
            -- NTGuide.ContentPages.SurgicalProcedures.WatcherEyeGrafting = {
            --     id = "watcher_eye_grafting",
            --     category = "grafting",
            --     title = NTGuide.Localize("ntg.title.watcher_eye_grafting_nte"), 
            --     description = NTGuide.Localize("ntg.description.watcher_eye_grafting_nte"),
            -- }

            -- Watcher Eye Grafting // NT EYES DISABLED
            NTGuide.ContentPages.SurgicalProcedures.WatcherEyeGrafting = {
                mod = "NT: Grafting",
                id = "watcher_eye_grafting",
                category = "grafting",
                title = NTGuide.Localize("ntg.title.watcher_eye_grafting"), 
                description = NTGuide.Localize("ntg.description.watcher_eye_grafting"),
                steps = {NTGuide.Localize("ntg.steps.watcher_eye_grafting")},
                seealso = {NTGuide.Localize("ntg.seealso.watcher_eye_grafting")},
            }


            -- Charybdis Jaw Grafting
            NTGuide.ContentPages.SurgicalProcedures.CharybdisJawGrafting = {
                mod = "NT: Grafting",
                id = "charybdis_jaw_grafting",
                category = "grafting",
                title = NTGuide.Localize("ntg.title.charybdis_jaw_grafting"), 
                description = NTGuide.Localize("ntg.description.charybdis_jaw_grafting"),
                steps = {NTGuide.Localize("ntg.steps.charybdis_jaw_grafting")},
                seealso = {NTGuide.Localize("ntg.seealso.charybdis_jaw_grafting")},
            }

            -- Latcher Heart Grafting
            NTGuide.ContentPages.SurgicalProcedures.LatcherHeartGrafting = {
                mod = "NT: Grafting",
                id = "latcher_heart_grafting",
                category = "grafting",
                title = NTGuide.Localize("ntg.title.latcher_heart_grafting"), 
                description = NTGuide.Localize("ntg.description.latcher_heart_grafting"),
                steps = {NTGuide.Localize("ntg.steps.latcher_heart_grafting")},
                seealso = {NTGuide.Localize("ntg.seealso.latcher_heart_grafting")},
            }

            -- Latcher Tongue Grafting
            NTGuide.ContentPages.SurgicalProcedures.LatcherTongueGrafting = {
                mod = "NT: Grafting",
                id = "latcher_tongue_grafting",
                category = "grafting",
                title = NTGuide.Localize("ntg.title.latcher_tongue_grafting"), 
                description = NTGuide.Localize("ntg.description.latcher_tongue_grafting"),
                steps = {NTGuide.Localize("ntg.steps.latcher_tongue_grafting")},
                seealso = {NTGuide.Localize("ntg.seealso.latcher_tongue_grafting")},
            }

            -- Endworm Skin Graft
            NTGuide.ContentPages.SurgicalProcedures.EndwormSkinGrafting = {
                mod = "NT: Grafting",
                id = "endworm_skin_grafting",
                category = "grafting",
                title = NTGuide.Localize("ntg.title.endworm_skin_grafting"), 
                description = NTGuide.Localize("ntg.description.endworm_skin_grafting"),
                steps = {NTGuide.Localize("ntg.steps.endworm_skin_grafting")},
                seealso = {NTGuide.Localize("ntg.seealso.endworm_skin_grafting")},
            }

            -- Orangeboy Tail Grafting
            NTGuide.ContentPages.SurgicalProcedures.OrangeboyTailGrafting = {
                mod = "NT: Grafting",
                id = "orangeboy_tail_grafting",
                category = "grafting",
                title = NTGuide.Localize("ntg.title.orangeboy_tail_grafting"), 
                description = NTGuide.Localize("ntg.description.orangeboy_tail_grafting"),
                steps = {NTGuide.Localize("ntg.steps.orangeboy_tail_grafting")},
                seealso = {NTGuide.Localize("ntg.seealso.orangeboy_tail_grafting")},
            }

        -- General Information

            -- Obtaining Graft Transplants
            NTGuide.ContentPages.Information.ObtainingGraftingTransplants = {
                mod = "NT: Grafting",
                id = "information_obtaining_grafting_transplants",
                category = "information",
                title = NTGuide.Localize("ntg.title.information_obtaining_grafting_transplants"), 
                description = NTGuide.Localize("ntg.description.information_obtaining_grafting_transplants"),
                seealso = {NTGuide.Localize("ntg.seealso.information_obtaining_grafting_transplants")},
            }

            -- Repairing Cracked Moloch Shell
            NTGuide.ContentPages.Information.RepairingMolochShell = {
                mod = "NT: Grafting",
                id = "information_repairing_moloch_shell",
                category = "information",
                title = NTGuide.Localize("ntg.title.information_repairing_moloch_shell"), 
                description = NTGuide.Localize("ntg.description.information_repairing_moloch_shell"),
                seealso = {NTGuide.Localize("ntg.seealso.information_repairing_moloch_shell")},
            }
            
            -- Aiming Latcher Tongue
            NTGuide.ContentPages.Information.AimLatcherTongue = {
                mod = "NT: Grafting",
                id = "information_aim_latcher_tongue",
                category = "information",
                title = NTGuide.Localize("ntg.title.information_aim_latcher_tongue"), 
                description = NTGuide.Localize("ntg.description.information_aim_latcher_tongue"),
                seealso = {NTGuide.Localize("ntg.seealso.information_aim_latcher_tongue")},
            }
            
            -- Removing Grafting Limit
            NTGuide.ContentPages.Information.RemoveGraftingLimit = {
                mod = "NT: Grafting",
                id = "information_remove_grafting_limit",
                category = "information",
                title = NTGuide.Localize("ntg.title.information_remove_grafting_limit"), 
                description = NTGuide.Localize("ntg.description.information_remove_grafting_limit"),
            }
