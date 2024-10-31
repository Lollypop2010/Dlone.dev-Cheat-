-- New example script written by wally
-- You can suggest changes with a pull request or something

local repo = 'https://raw.githubusercontent.com/violin-suzutsuki/LinoriaLib/main/'

local Library = loadstring(game:HttpGet(repo .. 'Library.lua'))()
local ThemeManager = loadstring(game:HttpGet(repo .. 'addons/ThemeManager.lua'))()
local SaveManager = loadstring(game:HttpGet(repo .. 'addons/SaveManager.lua'))()

-- Create main window
local Window = Library:CreateWindow({
    Title = 'Dlone.dev Private',
    Center = true,
    AutoShow = true,
    TabPadding = 8
})

-- Define tabs
local Tabs = {
    Aimbot = Window:AddTab('Aimbot'),
    ESP = Window:AddTab('ESP'),
    Exploits = Window:AddTab('Exploits'),
    ['UI Settings'] = Window:AddTab('UI Settings'),
}

-- Aimbot Tab
local AimbotGroup = Tabs.Aimbot:AddLeftGroupbox('Aimbot Settings')
AimbotGroup:AddButton('Aimbot', function()
    print('Loading Aimbot script...')
    loadstring(game:HttpGet('https://raw.githubusercontent.com/lenny2010/aimbotpaid/main/.lua'))() -- Replace with the actual Aimbot script URL
end, { Tooltip = 'Activate or configure the Aimbot functionality.' })

local AimbotGroup = Tabs.Aimbot:AddLeftGroupbox('Silent Aim Settings')
AimbotGroup:AddButton('Silent Aim', function()
    print('Loading Silent Aim script...')
    loadstring(game:HttpGet('https://raw.githubusercontent.com/Lollypop2010/Silent-aim-2/refs/heads/main/.lua'))() -- Replace with the actual Aimbot script URL
end, { Tooltip = 'Activate or configure the Aimbot functionality.' })

-- ESP Tab
local ESPGroup = Tabs.ESP:AddLeftGroupbox('ESP')
ESPGroup:AddButton('Activate ESP', function()
    print('Loading ESP script...')
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Lollypop2010/ESP-for-dlone-private-/refs/heads/main/.lua"))() -- Replace with the actual ESP script URL
end, { Tooltip = 'Enable or configure ESP for player highlights.' })

ESPGroup:AddButton('Chams', function()
    print('Loading Chams script...')
    loadstring(game:HttpGet('https://raw.githubusercontent.com/lenny2010/CHAMS3/main/.lua'))() -- Replace with the actual Chams script URL
end, { Tooltip = 'Enable chams for easier visibility.' })

ESPGroup:AddButton('Distance ESP', function()
    print('Loading Distance ESP script...')
    loadstring(game:HttpGet('https://raw.githubusercontent.com/Lollypop2010/Distance-Esp-/refs/heads/main/.lua'))() -- Replace with the actual Distance ESP script URL
end, { Tooltip = 'Display distance to highlighted entities.' })

ESPGroup:AddButton('Arrow', function()
    print('Loading Arrow  script...')
    loadstring(game:HttpGet('https://raw.githubusercontent.com/Lollypop2010/arrow-esp/refs/heads/main/.lua'))() -- Replace with the actual Distance ESP script URL
end, { Tooltip = 'Arrow distance to highlighted entities.' })

-- Exploits Tab
local ExploitsGroup = Tabs.Exploits:AddLeftGroupbox('Exploits')
ExploitsGroup:AddButton('Weapon Clow', function()
    print('Loading Weapon Clow script...')
    loadstring(game:HttpGet("https://raw.githubusercontent.com/lenny2010/WeaponESP/main/.lua"))()
end)
ExploitsGroup:AddButton('Spinbot', function()
    print('Loading Spinbot script...')
    loadstring(game:HttpGet("https://raw.githubusercontent.com/lenny2010/spinbot/main/.lua"))()
end)
ExploitsGroup:AddButton('InfJump', function()
    print('Loading Infinite Jump script...')
    loadstring(game:HttpGet('https://raw.githubusercontent.com/lenny2010/infjump/main/.lua'))()
end)
ExploitsGroup:AddButton('FlyHack', function()
    print('Loading FlyHack script...')
    loadstring(game:HttpGet("https://raw.githubusercontent.com/lenny2010/flyhack/main/.lua"))()
end)
ExploitsGroup:AddButton('Anti Kick', function()
    print('Loading Anti Kick script...')
    loadstring(game:HttpGet("https://raw.githubusercontent.com/lenny2010/antikick-v2/main/.lua"))()
end)
ExploitsGroup:AddButton('Speedhack', function()
    print('Loading Speedhack script...')
    loadstring(game:HttpGet("https://raw.githubusercontent.com/lenny2010/speedhack/main/.lua"))()
end)
ExploitsGroup:AddButton('HitBox', function()
    print('Loading HitBox script...')
    loadstring(game:HttpGet("https://raw.githubusercontent.com/lenny2010/hitbox/main/.lua"))()
end)

ExploitsGroup:AddButton('RapidFire', function()
    print('Loading RapidFire script...')
    loadstring(game:HttpGet('https://raw.githubusercontent.com/Lollypop2010/rapidfire/refs/heads/main/.lua'))()
end)

ExploitsGroup:AddButton('MagicBullet', function()
    print('Loading MagicBullet script...')
    loadstring(game:HttpGet('https://raw.githubusercontent.com/Lollypop2010/MagicBullet/refs/heads/main/.lua'))()
end)

-- UI Settings Tab
local MenuGroup = Tabs['UI Settings']:AddLeftGroupbox('Menu')
MenuGroup:AddButton('Unload', function() Library:Unload() end)
MenuGroup:AddLabel('Menu bind'):AddKeyPicker('MenuKeybind', { Default = 'F5', NoUI = true, Text = 'Menu keybind' })

Library.ToggleKeybind = Options.MenuKeybind -- Custom keybind for menu toggle

-- Addons Configuration
ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ 'MenuKeybind' })

ThemeManager:SetFolder('MyScriptHub')
SaveManager:SetFolder('MyScriptHub/specific-game')

SaveManager:BuildConfigSection(Tabs['UI Settings'])
ThemeManager:ApplyToTab(Tabs['UI Settings'])
SaveManager:LoadAutoloadConfig()

-- Adding Watermark and Notification
Library:Notify('DLONE.DEV PRIVATE LOADED', 5)
Library:SetWatermarkVisibility(true)
Library:SetWatermark('DLONE.DEV PRIVATE |  Made by Dexter</>')

