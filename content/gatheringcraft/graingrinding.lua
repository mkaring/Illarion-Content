--[[
Illarion Server

This program is free software: you can redistribute it and/or modify it under
the terms of the GNU Affero General Public License as published by the Free
Software Foundation, either version 3 of the License, or (at your option) any
later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY
WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A
PARTICULAR PURPOSE.  See the GNU Affero General Public License for more
details.

You should have received a copy of the GNU Affero General Public License along
with this program.  If not, see <http://www.gnu.org/licenses/>.
]]

-- mill (250)

-- grain (259) --> flour (2)

-- additional tool: wooden shovel (312)

local common = require("base.common")
local gathering = require("content.gathering")

module("content.gatheringcraft.graingrinding", package.seeall)

function StartGathering(User, SourceItem, ltstate)

	gathering.InitGathering();
	local graingrinding = gathering.graingrinding;

	common.ResetInterruption( User, ltstate );
	if ( ltstate == Action.abort ) then -- work interrupted
        User:talk(Character.say, "#me unterbricht "..common.GetGenderText(User, "seine", "ihre").." Arbeit.", "#me interrupts "..common.GetGenderText(User, "his", "her").." work.")
		return
	end

	if not common.CheckItem( User, SourceItem ) then -- security check
		return
	end

	-- additional tool item is needed
	if (User:countItemAt("all",312)==0) then
		common.HighInformNLS( User,
		"Du brauchst eine Holzkelle um Getreide zu mahlen.",
		"You need a wooden shovel for grinding grain." );
		return
	end
	local toolItem = User:getItemAt(5);
	if ( toolItem.id ~= 312 ) then
		toolItem = User:getItemAt(6);
		if ( toolItem.id ~= 312 ) then
			common.HighInformNLS( User,
			"Du musst die Holzkelle in der Hand haben!",
			"You have to hold the wooden shovel in your hand!" );
			return
		end
	end

	if not common.FitForWork( User ) then -- check minimal food points
		return
	end

	common.TurnTo( User, SourceItem.pos ); -- turn if necessary

	-- any other checks?

	if (User:countItemAt("all",259)==0) then -- check for items to work on
		common.HighInformNLS( User,
		"Du brauchst Getreide um es zu mahlen.",
		"You need grain for grinding it." );
		return;
	end

	if ( ltstate == Action.none ) then -- currently not working -> let's go
		graingrinding.SavedWorkTime[User.id] = graingrinding:GenWorkTime(User,toolItem);
		User:startAction( graingrinding.SavedWorkTime[User.id], 0, 0, 0, 0);
		User:talk(Character.say, "#me beginnt Getreide zu mahlen.", "#me starts to grind grain.")
		return
	end

	-- since we're here, we're working

	if graingrinding:FindRandomItem(User) then
		return
	end

	User:learn( graingrinding.LeadSkill, graingrinding.SavedWorkTime[User.id], graingrinding.LearnLimit);
	User:eraseItem( 259, 1 ); -- erase the item we're working on
	local amount = 1; -- set the amount of items that are produced
	local notCreated = User:createItem( 2, amount, 333, nil ); -- create the new produced items
	if ( notCreated > 0 ) then -- too many items -> character can't carry anymore
		world:createItemFromId( 2, notCreated, User.pos, true, 333, nil );
		common.HighInformNLS(User,
		"Du kannst nichts mehr halten und der Rest f�llt zu Boden.",
		"You can't carry any more and the rest drops to the ground.");
	else -- character can still carry something
		if (User:countItemAt("all",259)>0) then  -- there are still items we can work on
			graingrinding.SavedWorkTime[User.id] = graingrinding:GenWorkTime(User,toolItem);
			User:startAction( graingrinding.SavedWorkTime[User.id], 0, 0, 0, 0);
		else -- no items left
			common.HighInformNLS(User,
			"Du hast kein Getreide mehr.",
			"You have no grain anymore.");
		end
	end

	if common.GatheringToolBreaks( User, toolItem, graingrinding:GenWorkTime(User,toolItem) ) then -- damage and possibly break the tool
		common.HighInformNLS(User,
		"Deine alte Holzkelle zerbricht.",
		"Your old wooden shovel breaks.");
		return
	end
end
