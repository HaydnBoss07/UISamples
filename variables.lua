local client = game.Players.LocalPlayer
local nation = client.leaderstats.Country
local capital = workspace.CountryData[nation].Capital
local modlist = {286073467,165881970,178076512,36942410,731826417,582785312,889073499,199611834,42416882,33857533,197873406,63603700,40658655}
local whitelist = {} --scan through all games and get their jobIDs as long as a mod isnt there
local blacklist = {} --servers where mod is detected or someone threatens to report you
--add value after these ^^^ whenever using them while programming
--many scripts in this repository wont work without setVariables!!
