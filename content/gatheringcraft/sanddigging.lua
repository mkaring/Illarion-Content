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

-- SAND_PIT = 1208

-- additional tool: shovel ( 24 )

local common = require("base.common")
local gathering = require("content.gathering")

module("content.gatheringcraft.sanddigging", package.seeall)

function StartGathering(User, SourceItem, ltstate)

    gathering.InitGathering();
    local sanddigging = gathering.sanddigging;

    common.ResetInterruption( User, ltstate );
    if ( ltstate == Action.abort ) then -- work interrupted
        User:talk(Character.say, "#me unterbricht "..common.GetGenderText(User, "seine", "ihre").." Arbeit.", "#me interrupts "..common.GetGenderText(User, "his", "her").." work.")
        return
    end

    if not common.CheckItem( User, SourceItem ) then -- security check
        return
    end

    -- additional tool item is needed
    if (User:countItemAt("all",24)==0) then
        common.HighInformNLS( User,
        "Du brauchst eine Schaufel um zu graben.",
        "You need a shovel for digging." );
        return
    end
    local toolItem = User:getItemAt(5);
    if ( toolItem.id ~=24 ) then
        toolItem = User:getItemAt(6);
        if ( toolItem.id ~= 24 ) then
            common.HighInformNLS( User,
            "Du musst die Schaufel in der Hand haben!",
            "You have to hold the shovel in your hand!" );
            return
        end
    end

    if not common.FitForWork( User ) then -- check minimal food points
        return
    end

    common.TurnTo( User, SourceItem.pos ); -- turn if necessary

    -- check the amount
    local MaxAmount = 20
    local changeItem = false;
    local amountStr = SourceItem:getData("amount");
    local amount = 0;
    if ( amountStr ~= "" ) then
        amount = tonumber(amountStr);
    elseif ( SourceItem.wear == 255 ) then
        amount = MaxAmount;
    end


    -- currently not working -> let's go
    if ( ltstate == Action.none ) then
        sanddigging.SavedWorkTime[User.id] = sanddigging:GenWorkTime(User,toolItem);
        User:startAction( sanddigging.SavedWorkTime[User.id], 0, 0, 0, 0);
        User:talk(Character.say, "#me beginnt nach Sand zu graben.", "#me starts to dig for sand.")
        return
    end

    -- since we're here, we're working

    if sanddigging:FindRandomItem(User) then
        if ( changeItem ) then
            world:changeItem(SourceItem);
        end
        return
    end

    User:learn( sanddigging.LeadSkill, sanddigging.SavedWorkTime[User.id], sanddigging.LearnLimit);
    amount = amount - 1;
    -- update the amount
    SourceItem:setData("amount", "" .. amount);
    world:changeItem(SourceItem)

    local created = common.CreateItem(User, 726, 1, 333, nil) -- create the new produced items
    if created then -- character can still carry something
        if amount > 0 then
            sanddigging.SavedWorkTime[User.id] = sanddigging:GenWorkTime(User,toolItem)
            User:changeSource(SourceItem);
            User:startAction( sanddigging.SavedWorkTime[User.id], 0, 0, 0, 0)
        end
    end

    if amount == 0 then
        SourceItem:setData("amount","")
        SourceItem.id = 3632
        SourceItem.wear = 4
        world:changeItem(SourceItem)
        User:inform( "An dieser Stelle gibt es nicht mehrs zu holen.", "There isn't anything left in this pit.", Character.highPriority);
        return
    end

    if common.ToolBreaks( User, toolItem, sanddigging:GenWorkTime(User,toolItem) ) then -- damage and possibly break the tool
        common.HighInformNLS(User,
        "Deine alte Schaufel zerbricht.",
        "Your old shovel breaks.");
        return
    end

end
