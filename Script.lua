--[[
RTaO_Dev All Script 
]]

repeat task.wait() until game.Players.LocalPlayer and game.Players.LocalPlayer.Character
if not game:IsLoaded() then
    game.Loaded:Wait()
end

print("Supported game!")
local creator = game.CreatorId

local games = {
    [4372130] = 'https://raw.githubusercontent.com/rtaodev/rtao_exe/refs/heads/main/BloxFruit.lua', --BloxFruit
    [35102746] = 'https://raw.githubusercontent.com/rtaodev/rtao_exe/refs/heads/main/fish_It_v1.lua', -- Fish It
    [35888785] = 'https://raw.githubusercontent.com/rtaodev/rtao_exe/main/Prospecting.lua', -- Prospecting
    [6042520] = 'https://raw.githubusercontent.com/rtaodev/rtao_exe/refs/heads/main/99nights_byrtao_v2.lua', -- 99 Nights in the Forest
} 

if games[creator] then 
    print("Please wait, daddyhh~ loading..")
    loadstring(game:HttpGet(games[creator]))()
else
    warn("Unsupported game.")
end
