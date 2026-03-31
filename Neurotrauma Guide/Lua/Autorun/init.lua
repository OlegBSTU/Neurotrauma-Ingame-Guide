NTGuide = {} -- Neurotrauma Guide
NTGuide.Name = "Neurotrauma In-game Guide"
NTGuide.Version = "1.0"
NTGuide.VersionNum = 010000000
NTGuide.MinNTVersion = "A1.12.1"
NTGuide.MinNTVersionNum = 01120100
NTGuide.Path = table.pack(...)[1]

-- NT Integration
Timer.Wait(function() if NTC ~= nil then NTC.RegisterExpansion(NTGuide) end end, 1)

--In case neurotrauma doesnt actually register NTC or NT on CLIENTs for MP, gonna bruteforce
NTworkshopIds = {
    "3190189044",
}

function IsNTEnabled()
    for package in ContentPackageManager.EnabledPackages.All do
        for NTworkshopId in NTworkshopIds do
            if tostring(package.UgcId) == NTworkshopId then
                return true
            end
        end
    end
    return false
end

function EnableNTGuide()
    if NTC ~= nil or NT ~= nil or IsNTEnabled() then
        dofile(NTGuide.Path .. '/Lua/main.lua')

        -- Serverside / Singleplayer init
        if (Game.IsMultiplayer and SERVER) or not Game.IsMultiplayer then
                dofile(NTGuide.Path .. "/Lua/Scripts/Server/DiagnosisToolsIntegration.lua") -- Diagnostic Tools to chat linking
        end

        -- Calling UpdateEntityList in short timer crashes subeditor with too many mods
        if CLIENT and Game.IsSubEditor then
            Timer.Wait(function()
                LuaUserData.MakeMethodAccessible(Descriptors["Barotrauma.SubEditorScreen"], "UpdateEntityList")
                Game.SubEditorScreen.UpdateEntityList()
            end, 5000)
        end
        return true
    end
    return false
end

-- longer timer fallback in case NT isnt registered yet on first lua pass
if EnableNTGuide() then
    return
end

Timer.Wait(function()
    if EnableNTGuide() then
        return
    end
    print("Error loading NT In-game guide: it appears Neurotrauma isn't loaded!")
end,1000)
