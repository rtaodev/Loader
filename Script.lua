--[[
 ██████╗░  ████████╗   █████╗    █████╗░░░░░
 ██╔══██╗  ╚══██╔══╝  ██╔══██╗  ██╔══██╗░░░░
 ██████╔╝  ░░░██║░░░  ███████║  ██║░░██║░░░░
 ██╔══██╗  ░░░██║░░░  ██╔══██║  ██║░░██║░░░
 ██║░░██║  ░░░██║░░░  ██║░░██║  ╚█████╔╝░░░
 ╚═╝░░╚═╝  ░░░╚═╝░░░  ╚═╝░░╚═╝   ╚════╝░░░                                                                                            
]] 

repeat task.wait() until game.Players.LocalPlayer and game.Players.LocalPlayer.Character
if not game:IsLoaded() then
    game.Loaded:Wait()
end

print("Supported game!")
local creator = game.CreatorId

local games = {
    [4372130] = 'https://raw.githubusercontent.com/rtaodev/rtao_exe/main/BloxFruit.lua', --BloxFruit
    [35102746] = 'https://raw.githubusercontent.com/rtaodev/rtao_exe/main/FishIt_R1.lua', -- Fish It
    [35888785] = 'https://raw.githubusercontent.com/rtaodev/rtao_exe/main/Prospecting.lua', -- Prospecting
    [6042520] = 'https://raw.githubusercontent.com/rtaodev/rtao_exe/main/99nights_rtaodev_v9.lua', -- 99 Nights in the Forest
    [35789249] = 'https://pandadevelopment.net/virtual/file/b02a8b6346ea8b36', -- Grow a Garden
} 

if games[creator] then 
    print("Please wait, rtao dev loading..")
    loadstring(game:HttpGet(games[creator]))()
else
    warn("Unsupported game.")
end
