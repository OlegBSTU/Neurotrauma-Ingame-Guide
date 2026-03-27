-- Thank you, Ydrec.
LuaUserData.RegisterType('System.Collections.Generic.IEnumerable`1[[Barotrauma.GUIComponent]]')
LuaUserData.RegisterExtensionType('System.Linq.Enumerable')

LuaUserData.RegisterType("Barotrauma.RichTextData")

LuaUserData.RegisterType("Barotrauma.GUITextBlock+ClickableArea")
ClickableArea = LuaUserData.CreateStatic('Barotrauma.GUITextBlock+ClickableArea', true)

LuaUserData.RegisterType("Barotrauma.GUITextBlock+ClickableArea+OnClickDelegate")

LuaUserData.RegisterType('System.Collections.Generic.List`1[[Barotrauma.GUITextBlock+ClickableArea,Barotrauma]]')

LuaUserData.MakeFieldAccessible(Descriptors['Barotrauma.NetLobbyScreen'], 'chatBox')
LuaUserData.MakeFieldAccessible(Descriptors['Barotrauma.ChatBox'], 'chatBox')

LuaUserData.RegisterType('System.Collections.Immutable.ImmutableArray`1[[Barotrauma.RichTextData,Barotrauma]]')

-- Hooks to allow linking are at the bottom

-- Go over the clickable areas and determine if they should exist
function NTGuide.stripUselessAreas(ClickableAreas)
    if ClickableAreas.Count == 0 then return end
    for i = ClickableAreas.Count-1, 0, -1 do
        if not ClickableAreas[i].Data.Metadata then
            ClickableAreas.RemoveAt(i)
        end
    end
end

-- Do something with a clickable area :smirk_cat: 
function NTGuide.printlink(textBlock, area)
	-- Ensure there is text
    if not area.Data.Metadata then return end
	-- Pull metadata
    local metadata = area.Data.Metadata
	-- Ensure metadata has a link@ (otherwise this is metadata that's not ours!)
    local _, index = string.find(metadata,"link@")
    if not index then return end

    -- Turns the guide UI visible if it's not already
    if NTGuide.Menu.menu.Visible == false then 
        NTGuide.Menu.menu.Visible = true
    end
    -- Determines the target page
    local targetpage = string.sub(metadata, index+1)
    -- If the target page is already on the UI, no need to re-build
    if targetpage == NTGuide.CurrentPageID then return end
	-- Set target page and rebuild the UI
    NTGuide.CurrentPageID = targetpage
    NTGuide.PopulatePage(NTGmenuList, targetpage)
end

-- Dynamically create clickable text areas
function NTGuide.generateClickableAreas(textBlock)
    for data in textBlock.RichTextData do
		-- If there is text and it has metadata, check if the metadata has link@
        if data ~= nil and data.Metadata ~= nil and string.find(data.Metadata,"link@") then
			local area = ClickableArea.__new()
			area.Data = data
			area.OnClick = NTGuide.printlink
			area.OnSecondaryClick = NTGuide.printlink
			textBlock.ClickableAreas.Add(area)
        end
    end
end

-- Hooks
-- These actually change the scanner message to allow for clickable text
Hook.Patch('Barotrauma.NetLobbyScreen', 'NewChatMessage', function(instance, ptable)
    local TextBlock = instance.chatBox.Content.Children.Last()
    
    NTGuide.stripUselessAreas(TextBlock.ClickableAreas)
    if TextBlock.ClickableAreas.Count == 0 then return end
    for i = 0, TextBlock.ClickableAreas.Count-1, 1 do
        local area = TextBlock.ClickableAreas[i]
        if area.Data.Metadata then
            local _, index = string.find(area.Data.Metadata,"link@")
            if index then
                area.OnClick = NTGuide.printlink
                area.OnSecondaryClick = NTGuide.printlink
                TextBlock.ClickableAreas[i] = area
            end
        end
    end
end, Hook.HookMethodType.After)

Hook.Patch('Barotrauma.ChatBox', 'AddMessage', function(instance, ptable)
    
    local msgHolder = instance.chatBox.Content.Children.Last()
    msgHolder.CanBeFocused = false

    local TextBlock = msgHolder.GetChild(Int32(1))
    NTGuide.stripUselessAreas(TextBlock.ClickableAreas)
    
    if TextBlock.ClickableAreas.Count == 0 then return end
    for i = 0, TextBlock.ClickableAreas.Count-1, 1 do
        local area = TextBlock.ClickableAreas[i]
        if area.Data.Metadata then
            local _, index = string.find(area.Data.Metadata,"link@")
            if index then
                area.OnClick = NTGuide.printlink
                area.OnSecondaryClick = NTGuide.printlink
                TextBlock.ClickableAreas[i] = area
            end
        end
    end
end, Hook.HookMethodType.After)