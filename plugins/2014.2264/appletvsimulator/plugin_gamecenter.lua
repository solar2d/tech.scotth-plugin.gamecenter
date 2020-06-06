local Library = require "CoronaLibrary"

-- Create stub library for simulator
local lib = Library:new{ name='plugin.gamecenter', publisherId='tech.scotth' }

-- Default implementations
local function defaultFunction()
	print( "WARNING: The '" .. lib.name .. "' library is not available on this platform." )
end
local leaderboards = {show = defaultFunction, loadScores = defaultFunction, loadScore= defaultFunction,submit =  defaultFunction}
local achievements = {show = defaultFunction,loadAll = defaultFunction,submit = defaultFunction, reset = defaultFunction}
local challenges = {show = defaultFunction, load= defaultFunction}
local player = {name= defaultFunction, friends =defaultFunction, id =defaultFunction}
lib.init = defaultFunction
lib.isAvailable = defaultFunction
lib.showInvite = defaultFunction
lib.showDefault = defaultFunction
lib.leaderboards = leaderboards
lib.achievements = achievements
lib.challenges = challenges
lib.player = player

-- Return an instance
return lib