--
-- Project: Trades Math Calculator
-- Description: 
--
-- Version: 1.0
-- Managed with http://CoronaProjectManager.com
--
-- Copyright 2013 . All Rights Reserved.
-- 
--Require
local widget = require ( "widget" )
local storyboard = require( "storyboard" )
local scene = storyboard.newScene()

local function returnHomeEvent( event )
    local phase = event.phase 

    if "ended" == phase then
        storyboard.gotoScene( "menu" )
    end
end
	local screenGroup = self.view
	{
		left = 100,
		top = 411,
		width = 130,
		height = 40,
		id = "returnButt",
		label = "Menu",
		onRelease = returnHomeEvent,		
		}
function scene:enterScene( event )
        local group = self.view

end
   local group = self.view

end



return scene