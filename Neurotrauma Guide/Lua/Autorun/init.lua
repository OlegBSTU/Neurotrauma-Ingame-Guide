NTGuide = {} -- Neurotrauma Guide
NTGuide.Name = "Neurotrauma In-game Guide"
NTGuide.Version = "1.0"
NTGuide.VersionNum = 010000000
NTGuide.MinNTVersion = "A1.12.1"
NTGuide.MinNTVersionNum = 01120100
NTGuide.Path = table.pack(...)[1]

-- Neurotrauma integration
Timer.Wait(function()
    if NTC ~= nil then
        NTC.RegisterExpansion(NTGuide)
    else
        print("\n /// Neurotrauma In-game Guide ///\nNeurotrauma is not currently loaded!\n")
	end
end, 1)

-- Clientside init
if Client then
    Timer.Wait(function()
        dofile(NTGuide.Path .. "/Lua/Scripts/Client/NeuroguidePages.lua") -- Content pages
        dofile(NTGuide.Path .. "/Lua/Scripts/Client/Neuroguide.lua") -- Construction code
    end, 1)
end

-- Serverside / Singleplayer init
if (Game.IsMultiplayer and SERVER) or not Game.IsMultiplayer then
    Timer.Wait(function()
        dofile(NTGuide.Path .. "/Lua/Scripts/Server/HealthscannerIntegration.lua") -- Health Scanner to Guide Linking
    end, 1)
end