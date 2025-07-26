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
    [35289532] = '', -- Dig
    [35888785] = 'https://raw.githubusercontent.com/rtaodev/rtao_exe/refs/heads/main/Prospecting.lua', -- Prospecting
} 

if games[creator] then 
    print("Please wait, daddyhh~ loading..")
    loadstring(game:HttpGet(games[creator]))()
else
    warn("Unsupported game.")
end
