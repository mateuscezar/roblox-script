local games = {
    [11040063484] = "swordslasher"
}

local supported = games[game.PlaceId]

if supported then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/mateuscezar/roblox-script/main/games/" .. supported .. ".lua"))()
end