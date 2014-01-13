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
require("content.chardescription")
require("base.lookat")

module("item.id_2874_mirror", package.seeall)
-- belongs also to item id 2873

-- UPDATE common SET com_script='item.id_2874_mirror' WHERE com_itemid = 2874;

function LookAtItem(User, Item)
    local lookAt = base.lookat.GenerateLookAt(User, Item)
    lookAt = quest.irundar.mirror.LookAt(User, Item, lookAt)
    world:itemInform(User, Item, lookAt)
end

function UseItem(User, SourceItem)
	local output = "";
	local lang = User:getPlayerLanguage();
	local qual,dura = content.chardescription.getClothesFactor(User);
	local ft = content.chardescription.getFigureText(User:increaseAttrib("body_height",0),User:increaseAttrib("weight",0),User:increaseAttrib("strength",0), lang);
	if(lang == 0) then
		output = "Du bist ";
		output = output..content.chardescription.getAgeText(User:getRace(), User:increaseAttrib("age", 0), lang);
		if(ft ~= nil) then
			output = output..", "..ft;
		end
		output = output.." und "..content.chardescription.getHPText(User:increaseAttrib("hitpoints",0), lang)..". ";
		output = output.."Deine Kleidung wirkt "..content.chardescription.getClothesQualText(qual, lang).." und "..content.chardescription.getClothesDuraText(dura, lang)..".";
	else
		output = "You are ";
		output = output..content.chardescription.getAgeText(User:getRace(), User:increaseAttrib("age", 0), lang);
		if(ft ~= nil) then
			output = output..", "..content.chardescription.getFigureText(User:increaseAttrib("body_height",0),User:increaseAttrib("weight",0),User:increaseAttrib("strength",0), lang);
		end
		output = output.." and "..content.chardescription.getHPText(User:increaseAttrib("hitpoints",0), lang)..". ";
		output = output.."Your clothes look "..content.chardescription.getClothesQualText(qual, lang).." and "..content.chardescription.getClothesDuraText(dura, lang)..".";
	end
	User:inform(output);
end
