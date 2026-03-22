-- Allow changes to the wrappedText variable 
LuaUserData.MakeFieldAccessible(Descriptors['Barotrauma.GUITextBlock'], 'wrappedText')

NTGuide.Menu = NTGuide.Menu or {}
NTGuide.Menu.PageHistory = NTGuide.Menu.PageHistory or {}

NTGuide.CurrentPageID = {}
NTGuide.SearchablePages = {}
NTGuide.PagesByID = {}

-- Function to find all content pages within a large table and can handle sub-tables.
-- This way, we can have 'category' tables for easier sorting
local function ScanForPage(page)
    -- All pages SHOULD be part of the NTGuide.ContentPages table. If something else somehow ends up here, skip it
    if type(page) ~= "table" then return end

    -- All content pages must have an ID; therefor, if we find an ID then this must be a content page we want to index
    if page.id then
        NTGuide.PagesByID[page.id] = page

        -- We don't want the main page in the search bar, and we only really care about the title (this will be shown to players), ID (to navigate) and category (to sort pages with same types)
        if page.id ~= "main_page" and page.title then
            table.insert(NTGuide.SearchablePages, {name = page.title, id = page.id, category = page.category or "" })
        end
    end

    -- For each table in the larger ContentPagesTable, run the scan functionality above
    for _, v in pairs(page) do
        if type(v) == "table" then ScanForPage(v) end
    end
end

-- Sort these tables so we don't have to go over a gorbillion pages every time we try and search something
local function IndexKnownPages(ContentPageTable)
    -- Get ALL pages within the NTGuide.ContentPages table and index them for fast access
    ScanForPage(ContentPageTable)

    -- Sort them alphabetically so order of input into the table doesn't matter + it looks better
    table.sort(NTGuide.SearchablePages, function(a, b) 
        return a.name:lower() < b.name:lower() 
    end)

    -- Give this indexed table back for use later
    return NTGuide.SearchablePages
end

-- Run the indexing code on initialization
local IndexedContentPages = IndexKnownPages(NTGuide.ContentPages)

-- Function to find a page if we kinow the ID
local function GetPageByID(id)
    return NTGuide.PagesByID[id]
end

-- Function to update the search results when the search bar gets used
local function UpdateSearchResults()
    -- Ensure we start with a blank slate
    local previousSearchText = ""
    -- Determine what the actual search is
    local searchText = NTGuide.Menu.searchBox.Text:lower()
    -- If the current search is the same as the previous one, do nothing
    if searchText == previousSearchText then return end
    -- If the current search wás unique, make that the new 'previous' one
    previousSearchText = searchText

    -- Add what we're looking for to table to use later
    local filteredResults = {}
    for _, page in ipairs(IndexedContentPages) do
        if page.name:lower():find(searchText) then
            table.insert(filteredResults, page)
        end
    end

    -- Clear everything before re-doing it
    NTGmenuList.Content:ClearChildren()

    -- Throw an 'error' if the results yield nothin'
    if #filteredResults == 0 then
        local textblock_NoSearchResults = GUI.TextBlock(GUI.RectTransform(Vector2(1, 0.08), NTGmenuList.Content.RectTransform), NTGuide.Localize("ntg.pagefounderror"))
        return
    end

    -- Sort results alphabetically; first the category, then the names
    table.sort(filteredResults, function(a, b)
        if a.category ~= b.category then return a.category < b.category end
        return a.name:lower() < b.name:lower()
    end)

    local currentCategory = ""

    -- Subdivide search output into categories to reduce vomit of text when searching
    for result, page in ipairs(filteredResults) do
        if page.category ~= currentCategory then
            currentCategory = page.category
            -- Same code as for the textblock_Subheaders
            local textblock_PageCategory = GUI.TextBlock(GUI.RectTransform(Vector2(1, 0.06), NTGmenuList.Content.RectTransform), "---  " .. NTGuide.Localize("ntg.category." .. currentCategory) .. "  ---", nil, GUI.GUIStyle.SubHeadingFont)
            textblock_PageCategory.TextAlignment = GUI.Alignment.Center
            textblock_PageCategory.CanBeFocused = false
        end     

    -- Add a button for each result, directing to the page
        local button_SearchResult = GUI.Button(GUI.RectTransform(Vector2(1, 0.04), NTGmenuList.Content.RectTransform), page.name, GUI.Alignment.Center, "GUIButtonSmall", Color(255, 255, 255, 0))
        button_SearchResult.OnClicked = function()
            -- Set the page we want to go to
            NTGuide.CurrentPageID = {page.id}
            -- Wipe the searchbox so it doesn't try and show results again
            NTGuide.Menu.searchBox.Text = ""
            -- Re-build the UI
            NTGuide.PopulatePage(NTGmenuList, page.id)
        end
    end
end

-- Modular page construction, semi-inspired by the NT Config
function NTGuide.PopulatePage(NTGmenuList, pageID)
    -- Table to enable proper wrapping of textblocks + scale button accordingly
    NTGuide.Menu.ActiveTextBlocks = {}

    -- Get the page we're supposed to build + prevent faulty ID from causing issues
    local page = GetPageByID(pageID)
    if not page then return end

    -- KILL!! the currently created page
    NTGmenuList.Content:ClearChildren()
    NTGuide.Menu.ActiveTextBlocks = {} -- Empty the text blocks (we will give new ones)

    -- Change the title to the new page
    NTGuide.Menu.titleBlock.Text = page.title

    -- Change the description likewise
    local textblock_PageDescription = GUI.TextBlock(GUI.RectTransform(Vector2(1, 0), NTGmenuList.Content.RectTransform),"\n" .. tostring(page.description), nil, nil, GUI.Alignment.Left, true)
    -- Prevent hovering / clicking on text from showing that bleak background color change
    textblock_PageDescription.CanBeFocused = false
    textblock_PageDescription.Wrap = true
    textblock_PageDescription.CalculateHeightFromText()

    -- Build the sections (that are not already made / not supposed to be shown) dynamically
    for section, value in pairs(page) do
        if type(value) == "table" and section ~= "id" and section ~= "title" and section ~= "description" and section ~= "category" then
            
            -- Auto-generates subheaders based on localization data
            local textblock_PageSubheader = GUI.TextBlock(GUI.RectTransform(Vector2(1, 0.08), NTGmenuList.Content.RectTransform), "———  " .. NTGuide.Localize("ntg.section." .. section) .. ":  ———", nil, GUI.GUIStyle.SubHeadingFont)
            -- Make it look nice
            textblock_PageSubheader.TextAlignment = GUI.Alignment.Center
            textblock_PageSubheader.CanBeFocused = false
            textblock_PageSubheader.TextColor = Color(110, 154, 125, 255)

            -- OK hear me out
            -- First, take the localized string from the XML file then use [brackets] to determine *where* we must link to, be sure to clean up the string so we don't fumble because of an extra space or whatever
            -- In case we want multiple buttons linking to multiple pages, seperate them with a ' | ' vertical bar
            -- Take whatever is after the [ID] and use that as the text to be overlayed on top of the button, i.e. 'Internal Bleeding (50% or more)
            -- In case we have text that does not have an ID, render it regardless just without the button; pages like Cardiac Arrest refer to 'CPR' which leads nowhere, for example
            for _, localizedString in ipairs(value) do
                for part in tostring(localizedString):gmatch("([^|]+)") do
                    local trimmedString = part:match("^%s*(.-)%s*$")
                    
                    if trimmedString and trimmedString ~= "" then
                        local id, LinkButtonDescription = trimmedString:match("^%[(.-)%]%s*(.-)%s*$")
                        
                        if id and LinkButtonDescription then
                            if GetPageByID(id) then
                                -- Whatever. Go my buttons.
                                -- Create a textblock that can wrap and hold text (since button text doesn't wrap easily)
                                local textblock_LinkButtonHolder = GUI.TextBlock(GUI.RectTransform(Vector2(1, 0), NTGmenuList.Content.RectTransform), "", nil, nil, GUI.Alignment.TopLeft)
                                -- Fetch the description we should 'overlay' on the button that sends us to another page
                                textblock_LinkButtonHolder.Text = "• " .. LinkButtonDescription
                                textblock_LinkButtonHolder.Wrap = true
                                -- Remove the background colour when hovering over a textblock. We cannot have CanBeFocused set to false (or HoverTextColor would break) so we just make it transparent
                                textblock_LinkButtonHolder.HoverColor = Color(0,0,0,0)
                                -- Make the text show up a light blue to indicate it can be clicked
                                textblock_LinkButtonHolder.HoverTextColor = Color(119, 212, 190,255)
                                -- Put the textblocks into a table to force-update their height (or text will bleed across one another)
                                table.insert(NTGuide.Menu.ActiveTextBlocks, textblock_LinkButtonHolder)

                                -- Create the actual button that links pages together. Vector(1,1) so it's the same size as the textblock (though this needs to be force updated)
                                -- todo: actually force update it :333
                                local button_LinkToPage = GUI.Button(GUI.RectTransform(Vector2(1, 1), textblock_LinkButtonHolder.RectTransform), "", GUI.Alignment.Center, "GUIButtonSmall")
                                -- Set all colours to transparent so it looks like you're clicking the text
                                button_LinkToPage.Color = Color(0,0,0,0)
                                button_LinkToPage.HoverColor = Color(0,0,0,0)
                                button_LinkToPage.PressedColor = Color(0,0,0,0)

                                -- If the button is clicked, change the 'page' we are at and just refresh the page + push it to history
                                button_LinkToPage.OnClicked = function()
                                        if NTGuide.CurrentPageID[1] ~= NTGuide.Menu.PageHistory[#NTGuide.Menu.PageHistory] then
                                            table.insert(NTGuide.Menu.PageHistory, NTGuide.CurrentPageID[1])
                                        end

                                        if #NTGuide.Menu.PageHistory > 20 then table.remove(NTGuide.Menu.PageHistory, 1) end

                                        NTGuide.CurrentPageID = {id}
                                        -- Rebuild the page once we know the target
                                        NTGuide.PopulatePage(NTGmenuList, id)
                                end
                            end
                        else
                            -- If the XML Localization doesn't find an ID to link to, the text that we want to display is not part of a button
                            local textblock_PlainText = GUI.TextBlock(GUI.RectTransform(Vector2(1, 0), NTGmenuList.Content.RectTransform), "• " .. trimmedString)
                            textblock_PlainText.Wrap = true
                            -- Prevents the clicking on textboxes that change the background. Ugly.
                            textblock_PlainText.CanBeFocused = false
                            table.insert(NTGuide.Menu.ActiveTextBlocks, textblock_PlainText)
                        end

                        -- Once we have all the textblocks with buttons that we want to show ready, force them to update their height to prevent text bleed
                        for _, textblock in ipairs(NTGuide.Menu.ActiveTextBlocks) do
                                textblock.CalculateHeightFromText()
                        end
                    end
                end
            end
        end
    end
end

-- The actual GUI window / menu; the idea is identical to the Neurotrauma Config look
NTGuide.Menu.BasicList = function()
    -- Screen-wide frame [L0 / Invisible]
    NTGuide.Menu.frame = GUI.Frame(GUI.RectTransform(Vector2(1, 1)), nil)
    NTGuide.Menu.frame.CanBeFocused = false
    -- Menu-background put into the frame [L1 / Invisible]
    NTGuide.Menu.menu = GUI.Frame(GUI.RectTransform(Vector2(1 + 0.2 / GUI.xScale, 1 + 0.3), NTGuide.Menu.frame.RectTransform, GUI.Anchor.Center), nil)
    NTGuide.Menu.menu.Visible = false
    -- Menu-background (Green) [L1 / Visible]
    local menuContent = GUI.Frame(GUI.RectTransform(Vector2(0.35, 0.6), NTGuide.Menu.menu.RectTransform, GUI.Anchor.Center))
    -- Main Layout [L2 / Invisible]
    local mainGuideLayout = GUI.LayoutGroup(GUI.RectTransform(Vector2(0.95, 0.95), menuContent.RectTransform, GUI.Anchor.Center, GUI.Pivot.Center), false)
    -- Cosmetic background [L2 / Visible]
    local guideBackground = GUI.Frame(GUI.RectTransform(Vector2(1, 0.99), mainGuideLayout.RectTransform, GUI.Anchor.Center), "InnerFrame")
    -- Layout to handle text stuff [L3 / Invisible]
    local innerGuideLayout = GUI.LayoutGroup(GUI.RectTransform(Vector2(0.95, 0.95), guideBackground.RectTransform, GUI.Anchor.TopCenter), false)
    -- Title at the top of the page
    NTGuide.Menu.titleBlock = GUI.TextBlock(GUI.RectTransform(Vector2(1, 0.07), innerGuideLayout.RectTransform), " ", nil, GUI.GUIStyle.LargeFont)
    NTGuide.Menu.titleBlock.TextAlignment = GUI.Alignment.Center
    -- Search box, below title
    NTGuide.Menu.searchBox = GUI.TextBox(GUI.RectTransform(Vector2(1, 0.04), innerGuideLayout.RectTransform, GUI.Anchor.TopCenter), "")
    -- menuList, handling all the sections of the page; headers, description, buttons etc.
    NTGmenuList = GUI.ListBox(GUI.RectTransform(Vector2(1, 0.88), innerGuideLayout.RectTransform, GUI.Anchor.TopCenter))
    NTGmenuList.RectTransform.AbsoluteOffset = Point(0, 10)

    -- Back button at the bottom of the page
    local backButton = GUI.Button(GUI.RectTransform(Vector2(1, 0.05), innerGuideLayout.RectTransform, GUI.Anchor.BottomCenter), NTGuide.Localize("ntg.button.back"))
    backButton.OnClicked = function()
        -- Is there somewhere to go back to?
        -- If so, remove that page from history and return to it
        if #NTGuide.Menu.PageHistory > 0 then
            local lastPageID = table.remove(NTGuide.Menu.PageHistory)
            NTGuide.CurrentPageID = {lastPageID}
            NTGuide.PopulatePage(NTGmenuList, lastPageID)
        else
            -- Otherwise, just default to the main page
            NTGuide.CurrentPageID = {"main_page"}
            NTGuide.PopulatePage(NTGmenuList, "main_page")
        end
    end

    -- If the searchbar changes, re-do all the search bar code
    NTGuide.Menu.searchBox.OnTextChangedDelegate = UpdateSearchResults
    -- On first initialization, open the main page
    NTGuide.PopulatePage(NTGmenuList, "main_page")
    return NTGmenuList
end

-- Make it actually appear on initialization
-- This HAS to be able to be done better :wilted_flower:
local function ConstructUI()
    NTGuide.Menu.BasicList()
end

ConstructUI()

-- Make the button appear
-- Shamelessly ripped from EvilFactory's examples
local function ToggleGuideButton()
    local button = GUI.Button(GUI.RectTransform(Vector2(0.05, 0.05), NTGuide.Menu.frame.RectTransform, GUI.Anchor.TopRight), "Guide", GUI.Alignment.Center, "GUIButtonSmall")
    button.OnClicked = function()
        NTGuide.Menu.menu.Visible = not NTGuide.Menu.menu.Visible
    end
end

ToggleGuideButton()

-- Hooks to allow updates
Hook.Patch("Barotrauma.SubEditorScreen", "AddToGUIUpdateList", function()
    NTGuide.Menu.frame.AddToGUIUpdateList()
end)

Hook.Patch("Barotrauma.GameScreen", "AddToGUIUpdateList", function()
    NTGuide.Menu.frame.AddToGUIUpdateList()
end)

Hook.Patch("Barotrauma.GUI", "TogglePauseMenu", {}, function(instance, ptable)
    if not GUI.PauseMenuOpen and NTGuide.Menu.menu.Visible then
        NTGuide.Menu.menu.Visible = false
        ptable.PreventExecution = true
    end
end, Hook.HookMethodType.Before)
