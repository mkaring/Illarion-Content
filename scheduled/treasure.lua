require("base.treasure")
require("base.common")

module("scheduled.treasure", package.seeall)

-- INSERT INTO scheduledscripts VALUES('scheduled.treasure', 4, 4, 'treasureCheck');



function treasureCheck()
    local Jupiter = base.common.CheckIfOnline("Jupiter")
    local treasurePositions = base.treasure.treasurePositions;
	local treasureCategory = base.treasure.treasureCategory
    
	if Jupiter then Jupiter:inform("length treasurePositions: " .. #treasurePositions) end
	for i=1,#treasurePositions do
	    local thePos = treasurePositions[i]
		if base.treasure.CheckMonsters( thePos ) then
			world:gfx(16,thePos);
			world:makeSound(13,thePos);
			base.treasure.SpawnTreasure(treasureCategory[thePos], thePos)
		end
	end

end