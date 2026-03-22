NTGuide = {} -- Neurotrauma Guide
NTGuide.Name = "Neurotrauma In-game Guide"
NTGuide.Version = "1.0"
NTGuide.VersionNum = 010000000
NTGuide.MinNTVersion = "A1.12.1"
NTGuide.MinNTVersionNum = 01120100
NTGuide.Path = table.pack(...)[1]


-- Clientside init
if CLIENT then
    Timer.Wait(function()
        dofile(NTGuide.Path .. "/Lua/Scripts/Client/NeuroguidePages.lua") -- Content pages
        dofile(NTGuide.Path .. "/Lua/Scripts/Client/NeuroguidePagesAddons.lua") -- Addon Content pages
        dofile(NTGuide.Path .. "/Lua/Scripts/Client/Neuroguide.lua") -- Construction code
        dofile(NTGuide.Path .. "/Lua/Scripts/Client/NeuroguideChatLink.lua") -- Clientside code to enable chat linking
    end, 1)
end

-- Serverside / Singleplayer init
if (Game.IsMultiplayer and SERVER) or not Game.IsMultiplayer then
    -- Neurotrauma integration
    Timer.Wait(function()
        if NTC ~= nil then
            NTC.RegisterExpansion(NTGuide)
        end
    end, 1)

    Timer.Wait(function()
        dofile(NTGuide.Path .. "/Lua/Scripts/Server/HealthscannerIntegration.lua") -- Health Scanner to Guide linking
    end, 1)
end
