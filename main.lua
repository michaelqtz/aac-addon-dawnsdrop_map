local api = require("api")
local doodadsHelper = require("dawnsdrop_map/data/doodads")
local dawnsdrop_map_addon = {
	name = "Dawnsdrop Map",
	author = "Michaelqt",
	version = "1.0",
	desc = "Maps for all wild plants and sunken chests."
}

local dawnsdropMapWindow

local clockTimer = 0
local clockResetTime = 10000

local function OnUpdate(dt)

end 

local function getDoodadList(category, searchText)
    local doodadListTable = {}
    for id, name in pairs(doodadsHelper.names) do
        -- Check if the category matches or if category is nil or 1 (All)
        local doodadCategory = doodadsHelper.doodadsCategory[id]
        if (category == nil or category == 1 or doodadCategory == category) then
            -- Check if searchText is nil or empty, or if it is found in the doodad's name
            local doodadName = doodadsHelper:GetDoodadName(id)
            if (searchText == nil or searchText == "" or string.find(string.lower(doodadName), string.lower(searchText))) then
                local doodadZones = doodadsHelper:GetDoodadZones(id)
                local doodadEntry = {}
                doodadEntry.text = doodadName
                doodadEntry.opened = false
                doodadEntry.child = {}
                for _, zone in pairs(doodadZones) do
                    local zoneName = doodadsHelper:GetDoodadZoneName(zone)
                    local zoneEntry = {}
                    zoneEntry.text = zoneName
                    zoneEntry.value = id
                    table.insert(doodadEntry.child, zoneEntry)
                end

                table.insert(doodadListTable, doodadEntry)
            end
        end
    end
    return doodadListTable
end

local function setSpawnMapImage(mapDdsPath)
	if mapDdsPath == nil then return end
	if dawnsdropMapWindow == nil then return end
	dawnsdropMapWindow.mapDrawable:SetTexture(mapDdsPath)
end

local function OnLoad()
	local settings = api.GetSettings("dawnsdrop_map")
	local doodadCategories = doodadsHelper.categories
	local currentCategory = 1



	dawnsdropMapWindow = api.Interface:CreateWindow("dawnsdropMapWindow", "Dawnsdrop Map")
	dawnsdropMapWindow:AddAnchor("CENTER", "UIParent", 0, 0)
	dawnsdropMapWindow:SetExtent(900, 600)
	
	-- mapDrawable:SetCoords(0, 0, 2000, 2000)
	-- mapDrawable:SetExtent(600, 600)
	local categoryList = W_CTRL.CreateScrollListBox("categoryList", dawnsdropMapWindow)
	categoryList:SetExtent(dawnsdropMapWindow:GetWidth() - 700, dawnsdropMapWindow:GetHeight() - 128)
	categoryList:AddAnchor("TOPLEFT", dawnsdropMapWindow, 0, 90)
	categoryList.content:UseChildStyle(true)
	categoryList.content:EnableSelectParent(false)
	categoryList.content:SetInset(5, 5, 8, 5)
	categoryList.content.itemStyle:SetFontSize(FONT_SIZE.LARGE)
	categoryList.content.childStyle:SetFontSize(FONT_SIZE.MIDDLE)
	categoryList.content.itemStyle:SetAlign(ALIGN_LEFT)
	categoryList.content:SetTreeTypeIndent(true, 20)
	categoryList.content:SetHeight(FONT_SIZE.MIDDLE)
	categoryList.content:ShowTooltip(true)
	categoryList.content:SetSubTextOffset(20, 0, true)
	local color = FONT_COLOR.TITLE
	categoryList.content:SetDefaultItemTextColor(color[1], color[2], color[3], color[4])
	color = FONT_COLOR.DEFAULT
	categoryList.content.childStyle:SetColor(color[1], color[2], color[3], color[4])

	local doodadListTable = getDoodadList()
	categoryList:SetItemTrees(doodadListTable)

	function categoryList:OnSelChanged()
		local selectedItem = categoryList:GetSelectedIndex()
		if index == 0 or index == -1 then return end 

		local value = categoryList:GetSelectedValue()
		if value == 0 then return end
		-- api.Log:Info("Selected value: " .. tostring(value))
		-- Get the map path for the selected value
		local id = value
		local zone = doodadsHelper:GetDoodadZoneKey(categoryList:GetSelectedText())
		local mapDdsPath = doodadsHelper:GetDoodadZoneFilePath(id, zone)
		-- Set the map drawable to the new path
		setSpawnMapImage(mapDdsPath)

	end
	dawnsdropMapWindow.categoryList = categoryList

	-- local opened = categoryList.content:CreateOpenedImageDrawable(BUTTON_TEXTURE_PATH.GRID)
	-- opened:SetCoords(0, 0, 21, 14)
	-- opened:SetExtent(21, 14)
	-- local closed = categoryList.content:CreateClosedImageDrawable(BUTTON_TEXTURE_PATH.GRID)
	-- closed:SetCoords(44, 0, 13, 21)
	-- closed:SetExtent(13, 21)

	local mapDrawable = dawnsdropMapWindow:CreateImageDrawable("yes", "overlay")
	mapDrawable:AddAnchor("TOPLEFT", categoryList, "TOPRIGHT", 10, 10)
	mapDrawable:AddAnchor("BOTTOMRIGHT", dawnsdropMapWindow, -10, -10)
	dawnsdropMapWindow.mapDrawable = mapDrawable
	setSpawnMapImage(doodadsHelper:GetDoodadZoneFilePath("_doodad_id", "grim-miss-him"))

	-- Category dropdown and search text box 
	local doodadCategoryBtn = api.Interface:CreateComboBox(dawnsdropMapWindow)
    doodadCategoryBtn:AddAnchor("TOPLEFT", dawnsdropMapWindow, 10, 50)
    doodadCategoryBtn:SetWidth(180)
    doodadCategoryBtn.style:SetFontSize(FONT_SIZE.LARGE)
    doodadCategoryBtn.dropdownItem = doodadCategories
    doodadCategoryBtn:Select(currentCategory)
	-- Doodad Name Search
    local doodadSearchTextEdit = W_CTRL.CreateEdit("doodadSearchTextEdit", dawnsdropMapWindow)
    doodadSearchTextEdit:SetExtent(280, 24)
    doodadSearchTextEdit:AddAnchor("TOPLEFT", dawnsdropMapWindow, 200, 50)
    doodadSearchTextEdit.style:SetFontSize(FONT_SIZE.XLARGE)
    -- Doodad Name Search OnTextChanged
    function doodadSearchTextEdit:OnTextChanged()
        local searchText = doodadSearchTextEdit:GetText()
        if #searchText > 2 or #searchText == 0 then 
            local doodadListTable = getDoodadList(doodadCategoryBtn:GetSelectedIndex(), searchText)
			categoryList:SetItemTrees(doodadListTable)
        end 
	end
	doodadSearchTextEdit:SetHandler("OnTextChanged", doodadSearchTextEdit.OnTextChanged)
	-- Doodad Category SelectedProc
    function doodadCategoryBtn:SelectedProc()
        local doodadListTable = getDoodadList(doodadCategoryBtn:GetSelectedIndex(), doodadSearchTextEdit:GetText())
		categoryList:SetItemTrees(doodadListTable)
    end 

	dawnsdropMapWindow:Show(true)

    api.On("UPDATE", OnUpdate)
	api.SaveSettings()
end

local function OnUnload()
	api.On("UPDATE", function() return end)
	if dawnsdropMapWindow ~= nil then 
		dawnsdropMapWindow:Show(false)
		dawnsdropMapWindow = nil
	end
end

dawnsdrop_map_addon.OnLoad = OnLoad
dawnsdrop_map_addon.OnUnload = OnUnload

return dawnsdrop_map_addon
