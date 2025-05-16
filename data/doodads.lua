local doodadsHelper = {}

-- TODO: Michael, to add the rest of the doodads,
-- 1. Add the doodad name to the .names table
-- 2. Add the zone keys to the .zones table
-- 3. Add the zone names to the .zoneNames table
-- 4. Add the zone keys to the .zoneKeys table
-- 5. Add a folder for the doodad in the assets folder /id/ (example: /369/ for rubber tree)
-- 6. Add the png files to the folder, named the same as the zone key (example: /369/perinoor_ruins.png)
-- P.S. use archerage wiki map for spawns https://wiki.archerage.to/ru-en/db/maps/zone-27/doodad-400

doodadsHelper.zoneNames = {
    ["perinoor_ruins"] = "Perinoor Ruins",
    ["mahadevi"] = "Mahadevi",
    ["dewstone_plains"] = "Dewstone Plains",
    ["two_crowns"] = "Two Crowns",
    ["karkasse_ridgelands"] = "Karkasse Ridgelands",
    ["cinderstone_moor"] = "Cinderstone Moor",
    ["aubre_cradle"] = "Aubre Cradle",
    ["sanddeep"] = "Sanddeep",
    ["castaway_strait"] = "Castaway Strait",
    ["arcadian_sea"] = "Arcadian Sea",
    ["sunspeck_sea"] = "Sunspeck Sea",
    ["stormraw_sound"] = "Stormraw Sound",
    ["sea_of_graves"] = "Sea of Graves",
    ["freedich_island"] = "Freedich Island",
    ["gweonid_forest"] = "Gweonid Forest",
    ["marianople"] = "Marianople",
    ["solis_headlands"] = "Solis Headlands",
    ["solzreed_peninsula"] = "Solzreed Peninsula",
    ["lilyut_hills"] = "Lilyut Hills",
    ["ynystere"] = "Ynystere",
    ["white_arden"] = "White Arden",
    ["hasla"] = "Hasla",
    ["silent_forest"] = "Silent Forest",
    ["villanelle"] = "Villanelle",
    ["hellswamp"] = "Hellswamp",
    ["rokhala_mountains"] = "Rokhala Mountains",
    ["windscour_savannah"] = "Windscour Savannah",
    ["arcum_iris"] = "Arcum Iris",
    ["sunbite_wilds"] = "Sunbite Wilds",
    ["halcyona"] = "Halcyona",
    ["tigerspine_mountains"] = "Tigerspine Mountains",
    ["rookborne_basin"] = "Rookborne Basin",    
    ["heedmar"] = "Heedmar",
    ["nuimari"] = "Nuimari",
    ["marcala"] = "Marcala",
    ["calmlands"] = "Calmlands",
    ["halcyona_gulf"] = "Halcyona Gulf",
    ["feuille_sound"] = "Feuille Sound",
    ["whaleswell_straits"] = "Whaleswell Straits",
    ["airain_rock"] = "Airain Rock",
    ["mainland_auroria"] = "Mainland Auroria",
    ["reedwind"] = "Reedwind",
    ["golden_ruins"] = "Golden Ruins",
    ["falcorth_plains"] = "Falcorth Plains",
    ["ahnimar"] = "Ahnimar",
}

doodadsHelper.zoneKeys = {
    ["Perinoor Ruins"] = "perinoor_ruins",
    ["Mahadevi"] = "mahadevi",
    ["Dewstone Plains"] = "dewstone_plains",
    ["Two Crowns"] = "two_crowns",
    ["Karkasse Ridgelands"] = "karkasse_ridgelands",
    ["Cinderstone Moor"] = "cinderstone_moor",
    ["Aubre Cradle"] = "aubre_cradle",
    ["Sanddeep"] = "sanddeep",
    ["Castaway Strait"] = "castaway_strait",
    ["Arcadian Sea"] = "arcadian_sea",
    ["Sunspeck Sea"] = "sunspeck_sea",
    ["Stormraw Sound"] = "stormraw_sound",
    ["Sea of Graves"] = "sea_of_graves",
    ["Freedich Island"] = "freedich_island",
    ["Gweonid Forest"] = "gweonid_forest",
    ["Marianople"] = "marianople",
    ["Solis Headlands"] = "solis_headlands",
    ["Solzreed Peninsula"] = "solzreed_peninsula",
    ["Lilyut Hills"] = "lilyut_hills",
    ["Ynystere"] = "ynystere",
    ["White Arden"] = "white_arden",
    ["Hasla"] = "hasla",
    ["Silent Forest"] = "silent_forest",
    ["Villanelle"] = "villanelle",
    ["Hellswamp"] = "hellswamp",
    ["Rokhala Mountains"] = "rokhala_mountains",
    ["Windscour Savannah"] = "windscour_savannah",
    ["Arcum Iris"] = "arcum_iris",
    ["Sunbite Wilds"] = "sunbite_wilds",
    ["Halcyona"] = "halcyona",
    ["Tigerspine Mountains"] = "tigerspine_mountains",
    ["Rookborne Basin"] = "rookborne_basin",
    ["Heedmar"] = "heedmar",
    ["Nuimari"] = "nuimari",
    ["Marcala"] = "marcala",
    ["Calmlands"] = "calmlands",
    ["Halcyona Gulf"] = "halcyona_gulf",
    ["Feuille Sound"] = "feuille_sound",
    ["Whaleswell Straits"] = "whaleswell_straits",
    ["Airain Rock"] = "airain_rock",
    ["Mainland Auroria"] = "mainland_auroria",
    ["Reedwind"] = "reedwind",
    ["Golden Ruins"]  = "golden_ruins",
    ["Falcorth Plains"] = "falcorth_plains",
    ["Ahnimar"] = "ahnimar",
}

doodadsHelper.names = {
    -- Logging
    [322] = "Sequoia Tree",
    [367] = "Spruce Tree",
    [369] = "Rubber Tree",
    [370] = "Larch Tree",
    [371] = "Beech Tree",
    [372] = "Camphor Tree", 
    [373] = "Bamboo Tree",
    [375] = "Ebony Tree",
    [376] = "Oak Tree",
    [381] = "Ash Tree",
    [385] = "Juniper Tree",
    [386] = "Willow Tree",
    [388] = "Fir Tree",
    [393] = "Cedar Tree",
    [394] = "Hornbeam Tree",
    [398] = "Pine Tree",
    [405] = "Aspen Tree",
    
    -- Husbandry

    -- Farming
    [2246] = "Rice Plant",
    [2248] = "Millet",
    [2252] = "Barley",
    [2253] = "Corn",
    [2259] = "Potato",
    [2261] = "Carrot",
    [2262] = "Garlic",
    [2263] = "Onion",
    [2264] = "Cucumber",
    [2265] = "Tomato",

    [2247] = "Oats",
    [2251] = "Wheat",
    [2255] = "Rye",
    [2256] = "Peanut",
    [2257] = "Strawberry",
    [2266] = "Pumpkin",

    [2250] = "Quinoa",
    [2254] = "Bean",

    [461] = "Blueberry",
    
    -- Gathering
    [3511] = "Pearl Oyster",
    [406] = "Ginkgo Tree",
    [444] = "Moringa Tree",
    [1017] = "Apple Tree",
    [399] = "Avocado Tree",
    [400] = "Palm Tree",
    [402] = "Orange Tree",
    [403] = "Olive Tree",
    [404] = "Bay Tree",
    [392] = "Apricot Tree",
    [395] = "Pomegranate Tree",
    [387] = "Cherry Tree",
    [384] = "Chestnut Tree",
    [377] = "Lemon Tree",
    [380] = "Fig Tree",
    [382] = "Banana Tree",
    [383] = "Baobab Tree",
    [374] = "Jujube Tree",
    [414] = "Cottonwood Tree",

    [2267] = "Lavender",
    [2274] = "Narcissus",
    [2276] = "Azalea",
    [2277] = "Clover",
    [2278] = "Rose",
    [2279] = "Iris",
    [1640] = "Thistle",
    [453] = "Mushroom",
    [1798] = "Cotton",

    [2268] = "Rosemary",
    [2269] = "Cornflower",
    [2270] = "Lily",
    [2271] = "Sunflower",
    [2275] = "Lotus",
    [2283] = "Mint",
    [2762] = "Aloe",

    [2273] = "Cactus",
    [2281] = "Poppy",
    [2756] = "Turmeric",
    [1213] = "Saffron",
    [2761] = "Chili Pepper",
    [2764] = "Cultivated Ginseng",

    [2758] = "Black Pepper",

    -- Exploration
    [3484] = "Sunken Treasure Chest",
    [6438] = "Old Jar",
    [6340] = "Old Relic Container",

    -- Auroria Resources
    [3301] = "Mineral Water",
    [8454] = "Burning Log",
    [99991] = "Mysterious Crate", 
}

doodadsHelper.zones = {
    [99991] = {"mainland_auroria", "reedwind", "golden_ruins",},
    [6340] = {"sunspeck_sea"},
    [6438] = {"sunspeck_sea"},
    [2758] = {"dewstone_plains", "two_crowns", "perinoor_ruins", "hasla"},
    [461] = {"gweonid_forest", "dewstone_plains", "two_crowns",},
    [2764] = {"dewstone_plains", "rookborne_basin"},
    [2761] = {"dewstone_plains", "two_crowns"},
    [1213] = {"dewstone_plains", "solis_headlands", "two_crowns", "windscour_savannah", "hasla"},
    [2756] = {"arcum_iris"},
    [2281] = {"dewstone_plains", "lilyut_hills", "two_crowns", "white_arden",},
    [2273] = {"arcum_iris", "sunbite_wilds"},
    [2254] = {"dewstone_plains", "two_crowns", "airain_rock", "karkasse_ridgelands",},
    [2250] = {"gweonid_forest", "dewstone_plains", "two_crowns", "white_arden"},
    [2762] = {"dewstone_plains", "two_crowns", "windscour_savannah",},
    [2283] = {"sunbite_wilds", "windscour_savannah"},
    [2275] = {"rookborne_basin", "hasla", "ahnimar"},
    [2271] = {"dewstone_plains", "arcum_iris", "halcyona"},
    [2270] = {"gweonid_forest", "two_crowns", "villanelle", "hasla", "tigerspine_mountains"},
    [2269] = {"halcyona", "hasla", "ahnimar", "rokhala_mountains",},
    [2268] = {"lilyut_hills", "two_crowns", "karkasse_ridgelands", "cinderstone_moor", "sanddeep",},
    [2266] = {"mahadevi", "white_arden", "hellswamp"},
    [2257] = {"gweonid_forest", "solzreed_peninsula", "hasla"},
    [2256] = {"dewstone_plains", "two_crowns", "mahadevi", "perinoor_ruins", "hellswamp"},
    [2255] = {"airain_rock"},
    [2251] = {"solis_headlands", "sunbite_wilds", "windscour_savannah"},
    [2247] = {"halcyona", "silent_forest",},
    [1798] = {"perinoor_ruins", "sanddeep", "rokhala_mountains",},
    [453] = {"cinderstone_moor", "ahnimar"},
    [1640] = {"dewstone_plains", "hasla", "tigerspine_mountains", "rokhala_mountains"},
    [2279] = {"marianople", "white_arden", "rokhala_mountains"},
    [2278] = {"dewstone_plains", "two_crowns", "ynystere", "white_arden", "hasla",},
    [2277] = {"solzreed_peninsula", "two_crowns", "falcorth_plains", "ynystere", "hasla", "tigerspine_mountains"},
    [2276] = {"marianople", "lilyut_hills", "cinderstone_moor", "rokhala_mountains"},
    [2274] = {"dewstone_plains"},
    [2267] = {"sunbite_wilds"},
    [2265] = {"tigerspine_mountains"},
    [2264] = {"mahadevi", "sanddeep"},
    [2263] = {"gweonid_forest"},
    [2262] = {"aubre_cradle", "silent_forest"},
    [2261] = {"falcorth_plains", "ynystere", "cinderstone_moor", "ahnimar"},
    [2259] = {"windscour_savannah", "perinoor_ruins", "aubre_cradle", "hasla", "hellswamp",},
    [2253] = {"karkasse_ridgelands", "aubre_cradle"},
    [2252] = {"solzreed_peninsula", "lilyut_hills", "airain_rock", "karkasse_ridgelands",},
    [322] = {"dewstone_plains", "two_crowns", "rokhala_mountains"},
    [367] = {"dewstone_plains", "two_crowns", },
    [369] = {"perinoor_ruins", "mahadevi", },
    [370] = {"dewstone_plains", "two_crowns", "karkasse_ridgelands", "cinderstone_moor", "aubre_cradle", },
    [371] = {"gweonid_forest", "marianople", "dewstone_plains", "solis_headlands", "solzreed_peninsula", "lilyut_hills", "ynystere", "white_arden", "cinderstone_moor", "hasla"},
    [372] = {"dewstone_plains", "two_crowns", "hasla", "silent_forest"},
    [373] = {"dewstone_plains", "two_crowns", "villanelle", "hasla"},
    [374] = {"solis_headlands", "mahadevi", "perinoor_ruins"},
    [375] = {"dewstone_plains", "two_crowns", "mahadevi", "hasla", "silent_forest", "hellswamp"},
    [376] = {"gweonid_forest", "solzreed_peninsula", "lilyut_hills", "perinoor_ruins", "white_arden", "hasla"},
    [377] = {"arcum_iris", "mahadevi", "sunbite_wilds", "halcyona"},
    [380] = {"white_arden", "cinderstone_moor", "hellswamp"},
    [381] = {"gweonid_forest", "dewstone_plains", "solzreed_peninsula", "lilyut_hills", "rookborne_basin", "white_arden", "tigerspine_mountains"},
    [382] = {"mahadevi", "sanddeep"},
    [383] = {"windscour_savannah"}, 
    [384] = {"dewstone_plains", "lilyut_hills", "two_crowns", "villanelle"},
    [385] = {"hellswamp"},
    [386] = {"gweonid_forest", "lilyut_hills"},
    [387] = {"dewstone_plains", "two_crowns", "villanelle"},
    [388] = {"solzreed_peninsula", "two_crowns", "ahnimar"},
    [392] = {"marianople", "dewstone_plains", "two_crowns"},
    [393] = {"marianople", "tigerspine_mountains", "ahnimar", "rokhala_mountains"},
    [394] = {"gweonid_forest", "solzreed_peninsula", "lilyut_hills"},
    [395] = {"silent_forest"},
    [398] = {"dewstone_plains", "two_crowns", "tigerspine_mountains"},
    [399] = {"perinoor_ruins", "sanddeep"},
    [400] = {"dewstone_plains", "solis_headlands", "mahadevi", "perinoor_ruins", "sanddeep"},
    [402] = {"ynystere"},
    [403] = {"marianople", "solis_headlands", "lilyut_hills", "ynystere", "cinderstone_moor"},
    [404] = {"two_crowns", "mahadevi", "cinderstone_moor"},
    [405] = {"airain_rock", "white_arden"},
    [406] = {"dewstone_plains"},
    [444] = {"arcum_iris", "windscour_savannah"},
    [1017] = {"gweonid_forest", "marianople", "falcorth_plains", "rookborne_basin", "rokhala_mountains",},
    [414] = {"dewstone_plains", "solis_headlands", "solzreed_peninsula"},
    [2246] = {"villanelle", "aubre_cradle", "halcyona"},
    [2248] = {"dewstone_plains", "falcorth_plains", "rookborne_basin"},

    [3511] = {"sanddeep", "castaway_strait", "arcadian_sea", "sunspeck_sea", "stormraw_sound", "sea_of_graves", "freedich_island"},
    [3484] = {"castaway_strait", "arcadian_sea", "halcyona_gulf", "feuille_sound", "sunspeck_sea", "stormraw_sound", "whaleswell_straits"},
    [3301] = {"heedmar", "nuimari",},
    [8454] = {"marcala", "calmlands",},
}

doodadsHelper.categories = {
    "All", 
    "Logging",
    "Husbandry",
    "Farming",
    "Gathering",
    "Exploration",
    "Auroria Resources",
}

doodadsHelper.doodadsCategory = {
    [322] = 2, -- Logging
    [367] = 2, -- Logging
    [369] = 2, -- Logging
    [370] = 2, -- Logging
    [371] = 2, -- Logging
    [372] = 2, -- Logging
    [373] = 2, -- Logging
    [375] = 2, -- Logging
    [376] = 2, -- Logging
    [381] = 2, -- Logging
    [385] = 2, -- Logging
    [386] = 2, -- Logging
    [388] = 2, -- Logging
    [393] = 2, -- Logging
    [394] = 2, -- Logging
    [398] = 2, -- Logging
    [405] = 2, -- Logging

    [2246] = 4, -- Farming
    [2248] = 4, -- Farming
    [2252] = 4, -- Farming
    [2253] = 4, -- Farming
    [2259] = 4, -- Farming
    [2261] = 4, -- Farming
    [2262] = 4, -- Farming
    [2263] = 4, -- Farming
    [2264] = 4, -- Farming
    [2265] = 4, -- Farming
    [2247] = 4, -- Farming
    [2251] = 4, -- Farming
    [2255] = 4, -- Farming
    [2256] = 4, -- Farming
    [2257] = 4, -- Farming
    [2266] = 4, -- Farming
    [2250] = 4, -- Farming
    [2254] = 4, -- Farming

    [461] = 4, -- Farming

    [3511] = 5, -- Gathering
    [406] = 5, -- Gathering
    [444] = 5, -- Gathering
    [1017] = 5, -- Gathering
    [399] = 5, -- Gathering
    [400] = 5, -- Gathering
    [402] = 5, -- Gathering
    [403] = 5, -- Gathering
    [404] = 5, -- Gathering
    [392] = 5, -- Gathering
    [395] = 5, -- Gathering
    [387] = 5, -- Gathering
    [384] = 5, -- Gathering
    [377] = 5, -- Gathering
    [380] = 5, -- Gathering
    [382] = 5, -- Gathering
    [383] = 5, -- Gathering
    [374] = 5, -- Gathering
    [414] = 5, -- Gathering

    [2267] = 5, -- Gathering
    [2274] = 5, -- Gathering
    [2276] = 5, -- Gathering
    [2277] = 5, -- Gathering
    [2278] = 5, -- Gathering
    [2279] = 5, -- Gathering
    [1640] = 5, -- Gathering
    [453] = 5, -- Gathering
    [1798] = 5, -- Gathering

    [2268] = 5, -- Gathering
    [2269] = 5, -- Gathering
    [2270] = 5, -- Gathering
    [2271] = 5, -- Gathering
    [2275] = 5, -- Gathering
    [2283] = 5, -- Gathering
    [2762] = 5, -- Gathering

    [2273] = 5, -- Gathering
    [2281] = 5, -- Gathering
    [2756] = 5, -- Gathering
    [1213] = 5, -- Gathering
    [2761] = 5, -- Gathering
    [2764] = 5, -- Gathering

    [2758] = 5, -- Gathering

    [3484] = 6, -- Exploration
    [6438] = 6, -- Exploration
    [6340] = 6, -- Exploration

    [3301] = 7, -- Auroria Resources
    [8454] = 7, -- Auroria Resources
    [99991] = 7, -- Auroria Resources
}

function doodadsHelper:GetDoodadName(doodadId)
    return self.names[doodadId] or "Unknown Doodad"
end

function doodadsHelper:GetDoodadZones(doodadId)
    return self.zones[doodadId] or {}
end

function doodadsHelper:GetDoodadZoneFilePath(doodadId, zone, fileType)
    if fileType == nil then
        fileType = "png"
    end
    return api.baseDir .. "/dawnsdrop_map/assets/" .. doodadId .. "/" .. zone .. "." .. fileType
end 

function doodadsHelper:GetDoodadZoneName(zone)
    return self.zoneNames[zone] or "Unknown Zone"
end

function doodadsHelper:GetDoodadZoneKey(zoneName)
    return self.zoneKeys[zoneName] or "Unknown Zone Key"
end

return doodadsHelper