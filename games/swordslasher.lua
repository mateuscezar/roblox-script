local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Printa Hub", "Ocean")

local P = game:GetService("Players")
local player = P.LocalPlayer
local character = player.Character
local hasTP = false

character.HumanoidRootPart.CFrame = CFrame.new(-1826.7688, 0.79692316, -129.455994)
task.wait(2)
character.HumanoidRootPart.CFrame = CFrame.new(-1826.7688, 0.79692316, -129.455994)

_G.autoclick = false
_G.autocollect = false
_G.waitDungeon = false
_G.mobFarm = {}
_G.currentMob = {}
_G.dungeonEasy = {
    ["auto"] = false,
    ["maxRoom"] = 50
}
_G.dungeonHard = {
    ["auto"] = false,
    ["maxRoom"] = 50
}
_G.inDungeon = false

local FarmTab = Window:NewTab("Farm")
local SectionFarm = FarmTab:NewSection("Farm")

function setFarm(state, mob) 
    if state then
        table.insert(_G.mobFarm, mob)
    else
        local index = table.find(_G.mobFarm, mob)

        if index then
            table.remove(_G.mobFarm, index)
            table.clear(_G.currentMob)
        end
    end
end

SectionFarm:NewToggle("Auto Click", "Auto Click", function(state)
    _G.autoclick = state
end)

SectionFarm:NewToggle("Auto Collect", "Auto Collect", function(state)
    _G.autocollect = state
end)

SectionFarm:NewButton("Ascend", "Ascend", function()
    _G.inDungeon = true
    local Event = game:GetService("ReplicatedStorage").Packages.Knit.Services.AscendService.RF.Ascend
    Event:InvokeServer()
end)


local SectionFarm1 = FarmTab:NewSection("Dark Forest")
SectionFarm1:NewToggle("Goblin", "Goblin", function(state)
    setFarm(state, "Goblin")
end)

SectionFarm1:NewToggle("Orc", "Orc", function(state)
    setFarm(state, "Orc")
end)

SectionFarm1:NewToggle("Dark Knight", "Dark Knight", function(state)
    setFarm(state, "Dark Knight")
end)

SectionFarm1:NewToggle("Dark Commander", "Dark Commander", function(state)
    setFarm(state, "Dark Commander")
end)

local SectionFarm2 = FarmTab:NewSection("Skull Cove")
SectionFarm2:NewToggle("Skeleton", "Skeleton", function(state)
    setFarm(state, "Skeleton")
end)

SectionFarm2:NewToggle("Pirate Thief", "Pirate Thief", function(state)
    setFarm(state, "Pirate Thief")
end)

SectionFarm2:NewToggle("Pirate Captain", "Pirate Captain", function(state)
    setFarm(state, "Pirate Captain")
end)

SectionFarm2:NewToggle("Pirate Admiral", "Pirate Admiral", function(state)
    setFarm(state, "Pirate Admiral")
end)

local SectionFarm3 = FarmTab:NewSection("Demon Hill")
SectionFarm3:NewToggle("Ninja", "Ninja", function(state)
    setFarm(state, "Ninja")
end)

SectionFarm3:NewToggle("Samurai", "Samurai", function(state)
    setFarm(state, "Samurai")
end)

SectionFarm3:NewToggle("Samurai Master", "Samurai Master", function(state)
    setFarm(state, "Samurai Master")
end)

SectionFarm3:NewToggle("Oni", "Oni", function(state)
    setFarm(state, "Oni")
end)

local SectionFarm4 = FarmTab:NewSection("Polar Tundra")
SectionFarm4:NewToggle("Penguin", "Penguin", function(state)
    setFarm(state, "Penguin")
end)

SectionFarm4:NewToggle("Snow Warrior", "Snow Warrior", function(state)
    setFarm(state, "Snow Warrior")
end)

SectionFarm4:NewToggle("Yeti", "Yeti", function(state)
    setFarm(state, "Yeti")
end)

SectionFarm4:NewToggle("Ice King", "Ice King", function(state)
    setFarm(state, "Ice King")
end)

local SectionFarm5 = FarmTab:NewSection("Aether City")
SectionFarm5:NewToggle("Monk", "Monk", function(state)
    setFarm(state, "Monk")
end)

SectionFarm5:NewToggle("Angel", "Angel", function(state)
    setFarm(state, "Angel")
end)

SectionFarm5:NewToggle("Guardian", "Guardian", function(state)
    setFarm(state, "Guardian")
end)

SectionFarm5:NewToggle("Zeus the God", "Zeus the God", function(state)
    setFarm(state, "Zeus the God")
end)

local SectionFarm6 = FarmTab:NewSection("Underworld")
SectionFarm6:NewToggle("Imp", "Imp", function(state)
    setFarm(state, "Imp")
end)

SectionFarm6:NewToggle("Demon", "Demon", function(state)
    setFarm(state, "Demon")
end)

SectionFarm6:NewToggle("Lava Golem", "Lava Golem", function(state)
    setFarm(state, "Lava Golem")
end)

SectionFarm6:NewToggle("Red Devil", "Red Devil", function(state)
    setFarm(state, "Red Devil")
end)

local SectionFarm7 = FarmTab:NewSection("Ancient Sands")
SectionFarm7:NewToggle("Mummy", "Mummy", function(state)
    setFarm(state, "Mummy")
end)

SectionFarm7:NewToggle("Royal Warrior", "Royal Warrior", function(state)
    setFarm(state, "Royal Warrior")
end)

SectionFarm7:NewToggle("Desert Beast", "Desert Beast", function(state)
    setFarm(state, "Desert Beast")
end)

SectionFarm7:NewToggle("King Pharaoh", "King Pharaoh", function(state)
    setFarm(state, "King Pharaoh")
end)

local SectionFarm8 = FarmTab:NewSection("Enchanted Woods")
SectionFarm8:NewToggle("Satyr", "Satyr", function(state)
    setFarm(state, "Satyr")
end)

SectionFarm8:NewToggle("Cyclops", "Cyclops", function(state)
    setFarm(state, "Cyclops")
end)

SectionFarm8:NewToggle("Purple Dragon", "Purple Dragon", function(state)
    setFarm(state, "Purple Dragon")
end)

SectionFarm8:NewToggle("Adurite Warden", "Adurite Warden", function(state)
    setFarm(state, "Adurite Warden")
end)

local SectionFarm9 = FarmTab:NewSection("Mystic Mines")
SectionFarm9:NewToggle("Mushy", "Mushy", function(state)
    setFarm(state, "Mushy")
end)

SectionFarm9:NewToggle("Zombie Miner", "Zombie Miner", function(state)
    setFarm(state, "Zombie Miner")
end)

SectionFarm9:NewToggle("Golem", "Golem", function(state)
    setFarm(state, "Golem")
end)

SectionFarm9:NewToggle("Necromancer", "Necromancer", function(state)
    setFarm(state, "Necromancer")
end)

local SectionFarm10 = FarmTab:NewSection("Sacred Land")
SectionFarm10:NewToggle("Power Force", "Power Force", function(state)
    setFarm(state, "Power Force")
end)

SectionFarm10:NewToggle("Paladin", "Paladin", function(state)
    setFarm(state, "Paladin")
end)

SectionFarm10:NewToggle("Warlock", "Warlock", function(state)
    setFarm(state, "Warlock")
end)

SectionFarm10:NewToggle("Spirit Lord", "Spirit Lord", function(state)
    setFarm(state, "Spirit Lord")
end)

local SectionFarm11 = FarmTab:NewSection("Marine Castle")
SectionFarm11:NewToggle("Marine", "Marine", function(state)
    setFarm(state, "Marine")
end)

SectionFarm11:NewToggle("Barbarian Pirate", "Barbarian Pirate", function(state)
    setFarm(state, "Barbarian Pirate")
end)

SectionFarm11:NewToggle("Madman", "Madman", function(state)
    setFarm(state, "Madman")
end)

SectionFarm11:NewToggle("Skye Knight", "Skye Knight", function(state)
    setFarm(state, "Skye Knight")
end)

local DungeonTab = Window:NewTab("Dungeon")
local SectionDungeon = DungeonTab:NewSection("Dungeon")

local labelEasy = SectionDungeon:NewLabel("Easy - Time: " .. game:GetService("Workspace").Resources.DungeonLobby.Timers["Dungeon 1"].Timer.TextLabel.Text)

SectionDungeon:NewSlider("Room", "Max Room", 50, 1, function(s) -- 500 (MaxValue) | 0 (MinValue)
    _G.dungeonEasy["maxRoom"] = s
end)

SectionDungeon:NewToggle("Auto", "Auto Dungeon", function(state)
    _G.dungeonEasy["auto"] = state
end)

local labelHard = SectionDungeon:NewLabel("Hard - Time: " .. game:GetService("Workspace").Resources.DungeonLobby.Timers["Dungeon 2"].Timer.TextLabel.Text)

SectionDungeon:NewSlider("Room", "Max Room", 50, 1, function(s) -- 500 (MaxValue) | 0 (MinValue)
    _G.dungeonHard["maxRoom"] = s
end)

SectionDungeon:NewToggle("Auto", "Auto Dungeon", function(state)
    _G.dungeonHard["auto"] = state
end)

spawn(function()
    while wait() do
        labelEasy:UpdateLabel("Easy - Time: " .. game:GetService("Workspace").Resources.DungeonLobby.Timers["Dungeon 1"].Timer.TextLabel.Text)
        labelHard:UpdateLabel("Hard - Time: " .. game:GetService("Workspace").Resources.DungeonLobby.Timers["Dungeon 2"].Timer.TextLabel.Text)
    end
end)


local TeleportTab = Window:NewTab("Teleport")
local SectionTeleport = TeleportTab:NewSection("Maps")

SectionTeleport:NewButton("Dark Forest", "Dark Forest", function()
    character.HumanoidRootPart.CFrame = CFrame.new(326.810577, 152.836624, -0.961914062)
end)

SectionTeleport:NewButton("Skull Cove", "Skull Cove", function()
    character.HumanoidRootPart.CFrame = CFrame.new(2233.59473, 152.430176, -574.853088)
end)

SectionTeleport:NewButton("Demon Hill", "Demon Hill", function()
    character.HumanoidRootPart.CFrame = CFrame.new(3947.69507, 152.810577, -384.167938)
end)

SectionTeleport:NewButton("Polar Tundra", "Polar Tundra", function()
    character.HumanoidRootPart.CFrame = CFrame.new(5964.94043, 152.809448, -537.954102)
end)

SectionTeleport:NewButton("Aether City", "Aether City", function()
    character.HumanoidRootPart.CFrame = CFrame.new(8952.48242, 611.561646, -514.549316)
end)

SectionTeleport:NewButton("Underworld", "Underworld", function()
    character.HumanoidRootPart.CFrame = CFrame.new(13587.9443, 157.138901, 86.2605591)
end)

SectionTeleport:NewButton("Ancient Sands", "Ancient Sands", function()
    character.HumanoidRootPart.CFrame = CFrame.new(535.251953, 153.198135, -2911.28906)
end)

SectionTeleport:NewButton("Enchanted Woods", "Enchanted Woods", function()
    character.HumanoidRootPart.CFrame = CFrame.new(4034.58862, 151.372162, -4377.16846)
end)

SectionTeleport:NewButton("Mystic Mines", "Mystic Mines", function()
    character.HumanoidRootPart.CFrame = CFrame.new(7191.89258, -110.154427, -4666.94141)
end)

SectionTeleport:NewButton("Sacred Land", "Sacred Land", function()
    character.HumanoidRootPart.CFrame = CFrame.new(9395.21387, 153.198166, -4391.26611)
end)

SectionTeleport:NewButton("Marine Castle", "Marine Castle", function()
    character.HumanoidRootPart.CFrame = CFrame.new(13201.4434, 170.114197, -3440.21313)
end)

local MiscTab = Window:NewTab("Misc")
local SectionMisc = MiscTab:NewSection("Claim")

SectionMisc:NewButton("Chest", "Claim Chest", function()
    for i = 10,1,-1 
    do 
        local chest = "Chest " .. i
        game:GetService("ReplicatedStorage").Packages.Knit.Services.ChestService.RF.ClaimChest:InvokeServer(chest)
        task.wait(0.1)
    end
end)

SectionMisc:NewButton("Ticket", "Claim Ticket", function()
    for i = 10,1,-1 
    do 
        local ticket = "Free Ticket " .. i
        game:GetService("ReplicatedStorage").Packages.Knit.Services.ChestService.RF.ClaimChest:InvokeServer(ticket)
        task.wait(0.1)
    end
end)


-- SectionFarm:NewButton("Teste", "Teste Info", function()
--     print(tostring(_G.currentMob[1]))
-- end)


local autoFarm = function()
    
    while wait() do

        if #_G.mobFarm > 0 or _G.inDungeon == true then
            local npcs = game:GetService("Workspace").Live.NPCs.Client:GetChildren()

            if #_G.currentMob == 0 then

                if _G.inDungeon == true then

                    if #npcs > 0 then
                        table.insert(_G.currentMob, npcs[1])
                        hasTP = false
                    else
                        print("continua")
                    end

                else

                    for _, name in pairs(_G.mobFarm) do

                        for i, v in pairs(npcs) do
                            if v.HumanoidRootPart.NPCTag.NameLabel.Text == name and #_G.currentMob == 0 then
                                table.insert(_G.currentMob, v)
                                hasTP = false
                                break
                            end
                        end
                    end  

                end
                
            else
                local hasMob = false
                for i, v in pairs(npcs) do
                    if tostring(_G.currentMob[1]) == tostring(v) and not hasMob then
                        hasMob = true
                        break
                    end
                end

                if hasMob then
                    if not hasTP and not _G.waitDungeon then
                        hasTP = true
                        character.HumanoidRootPart.CFrame = _G.currentMob[1].HumanoidRootPart.CFrame + Vector3.new(0, 2, 5)
                    end
                else
                    table.clear(_G.currentMob)
                end
            end

        end
        
    end
end

local autoClick = function()
    while wait() do
        if _G.autoclick == true then
            if(#_G.currentMob > 0) then
                game:GetService("ReplicatedStorage").Packages.Knit.Services.ClickService.RF.Click:InvokeServer(tostring(_G.currentMob[1]))
            else
                game:GetService("ReplicatedStorage").Packages.Knit.Services.ClickService.RF.Click:InvokeServer()
            end
        end
    end
end

local autoCollect = function()
    while wait() do
        if _G.autocollect == true then
            for i,v in pairs(game:GetService("Workspace").Live.Pickups:GetChildren()) do
                -- if v.Name == "Currency" then
                --     v.CFrame = character.HumanoidRootPart.CFrame
                -- end
                v.CFrame = character.HumanoidRootPart.CFrame
            end    
        end
    end
end

local autoDungeon = function()

    while wait() do
        if _G.dungeonEasy["auto"] == true and _G.inDungeon == false and #game:GetService("Workspace").Live.Dungeons:GetChildren() > 0 then
            local timer = game:GetService("Workspace").Resources.DungeonLobby.Timers["Dungeon 1"].Timer.TextLabel.Text
            if(timer == "00:06" or timer == "00:05" or timer == "00:04" or timer == "00:03" or timer == "00:02") then
                _G.waitDungeon = true
                character.HumanoidRootPart.CFrame = game:GetService("Workspace").Resources.DungeonLobby.JoinParts["Dungeon 1"].CFrame + Vector3.new(0, 2, 0)
            end

            if(timer == "00:00" and _G.waitDungeon == true) then
                print("setou")
                _G.waitDungeon = false
                _G.inDungeon = true
            end
        end

        if _G.dungeonHard["auto"] == true and _G.inDungeon == false and #game:GetService("Workspace").Live.Dungeons:GetChildren() > 0 then
            local timer = game:GetService("Workspace").Resources.DungeonLobby.Timers["Dungeon 2"].Timer.TextLabel.Text
            if(timer == "00:06" or timer == "00:05" or timer == "00:04" or timer == "00:03" or timer == "00:02") then
                _G.waitDungeon = true
                character.HumanoidRootPart.CFrame = game:GetService("Workspace").Resources.DungeonLobby.JoinParts["Dungeon 2"].CFrame + Vector3.new(0, 2, 0)
            end

            if(timer == "00:00" and _G.waitDungeon == true) then
                print("setou")
                _G.waitDungeon = false
                _G.inDungeon = true
            end
        end
    end
end

spawn(autoClick)
spawn(autoCollect)
spawn(autoFarm)
spawn(autoDungeon)