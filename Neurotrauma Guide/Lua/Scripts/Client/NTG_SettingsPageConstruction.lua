-- Function to make the settings page auto-build based on given 'settings' information, akin to the Neurotrauma Config.
-- Since this is all client-side, we can store it locally in-guide and not worry
function NTGuide.BuildSettingsPage(MenuList)
    local list = NTGmenuList

    for key, entry in pairs(NTGuideSettings.ConfigData) do

        -- CATEGORY (header)
        if entry.type == "category" then
            local SettingsElement_Category = GUI.TextBlock(GUI.RectTransform(Vector2(1, 0.08), list.Content.RectTransform), entry.name, Color(255, 255, 237), GUI.GUIStyle.SubHeadingFont, GUI.Alignment.Center)
            SettingsElement_Category.CanBeFocused = false

        -- FLOAT
        elseif entry.type == "float" then
            local min, max = entry.range[1], entry.range[2]

            local SettingsElement_Float = GUI.TextBlock(GUI.RectTransform(Vector2(1, 0.05), list.Content.RectTransform), entry.name .. " (" .. min .. "-" .. max .. ")", Color(230, 230, 170), nil, GUI.Alignment.Center)
            SettingsElement_Float.CanBeFocused = false

            local input = GUI.NumberInput(GUI.RectTransform(Vector2(1, 0.06), list.Content.RectTransform), NumberType.Float)

            input.MinValueFloat = min
            input.MaxValueFloat = max
            input.FloatValue = entry.default or 0

            input.OnValueChanged = function ()
                entry.value = input.FloatValue
            end

        -- BOOL
        elseif entry.type == "bool" then
            -- create a TickBox
            local rect = GUI.RectTransform(Vector2(1, 0.06), list.Content.RectTransform)
            local toggle = GUI.TickBox(rect, entry.name)

            -- optional tooltip
            if entry.description then
                toggle.ToolTip = entry.description
            end

            -- initialize value
            if entry.value == nil then
                entry.value = entry.default or false
            end
            toggle.Selected = entry.value

            -- handle selection change
            toggle.OnSelected = function()
                -- update entry.value manually
                entry.value = toggle.Selected
            end
        end
    end
end