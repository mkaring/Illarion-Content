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
-- INSERT INTO "quests" ("qst_id", "qst_script") VALUES (707, 'quest.zlatxhol_707_cadomyr');

local common = require("base.common")
local factions = require("base.factions")
local M = {}

local GERMAN = Player.german
local ENGLISH = Player.english

-- Insert the quest title here, in both languages
local Title = {}
Title[GERMAN] = "Das Glasblasen und T�pfern"
Title[ENGLISH] = "Glass blowing and pottery"

-- Insert an extensive description of each status here, in both languages
-- Make sure that the player knows exactly where to go and what to do
local Description = {}
Description[GERMAN] = {}
Description[ENGLISH] = {}
Description[GERMAN][1] = "Sammle zehn Klumpen Lehm in den Lehmgr�ben s�dlich der Stadttore und bringe es zu Zlatxhol in der Werkstatt von Cadomyr. Lehm sammelst du, in dem die Schaufel in die Hand nimmst und sie bei einer Lehmgrube benutzt."
Description[ENGLISH][1] = "Collect ten clumps of clay at the clay pit south outside the gates for Zlatxhol in the workshop of Cadomyr. You can collect the clay if you take the shovel in your hand and use it on a spot where there is a clay pit in the mud."
Description[GERMAN][2] = "Geh zu Zlatxhol in der Werkstatt von Cadomyr, er hat bestimmt noch eine Aufgabe f�r dich."
Description[ENGLISH][2] = "Go to Zlatxhol in the workshop of Cadomyr, he is sure to have another task for you."
Description[GERMAN][3] = "Stelle zehn Ziegel am Brennzofen f�r Zlatxhol in Cadomyr her. Um Ziegel herzustellen, musst du die Zange in die Hand nehmen und den Brennofen benutzen."
Description[ENGLISH][3] = "Produce ten bricks in the glass melting oven for Zlatxhol in Cadomyr. To produce the bricks, you have to take the tongs in your hand and use the kiln."
Description[GERMAN][4] = "Geh zu Zlatxhol in der Werkstatt von Cadomyr, er hat bestimmt noch eine Aufgabe f�r dich."
Description[ENGLISH][4] = "Go to Zlatxhol in the workshop of Cadomyr, he is sure to have another task for you."
Description[GERMAN][5] = "Sammel zehn Haufen groben Sand. Geh zum Sieb in der Werkstatt und mach daraus Quarzsand und zeig anschlie�end den Sand Zlatxhol in der Werkstatt von Cadomyr. Sand kann man in der W�ste in den Sandgruben mit der Schaufel, die Zlatxhol dir gab, ausgraben. Hat man erst etwas groben Sand, kann man mit der Holzkelle am Sieb Quarzsand herstellen. Dazu musst du das Sieb benutzen w�hrend du die Kelle in der Hand h�ltst."
Description[ENGLISH][5] = "Collect ten piles coarse sand and go to the sieve in the workshop to turn these into quartz sand, and show the result to Zlatxhol in the workshop of Cadomyr. You can dig coarse sand in the desert in sand pits with the big shovel Zlatxhol gave you before. Once you have enough coarse sand, you can use the wooden shovel to sieve the quartz sand. To produce quartz sand take the wooden shovel in your hand and use the sieve whilst standing in front of it."
Description[GERMAN][6] = "Geh zu Zlatxhol in der Werkstatt von Cadomyr, er hat bestimmt noch eine Aufgabe f�r dich."
Description[ENGLISH][6] = "Go to Zlatxhol in the workshop of Cadomyr, he is sure to have another task for you."
Description[GERMAN][7] = "Stell zehn Glasbl�cke f�r Zlatxhol in der Werkstatt von Cadomyr her. Um Glasbl�cke herzustellen brauchst du Quarzsand, hast du diesen brauchst du noch Asche. Asche l�sst sich produzieren, indem du Holzscheite an einem Glasschmelzofen verbrennst. Nun nimmst du das Glasblasrohr in die Hand und benutzt den Ofen um Glasbl�cke herzustellen." 
Description[ENGLISH][7] = "Produce ten glass ingots for Zlatxhol in the workshop of Cadomyr. To produce glass ingots you need quartz sand and ash. To produce ash you need to use the glass melting oven. When you have enough ash and quartz sand, take the glass blowing pipe in your hand and use the oven."
Description[GERMAN][8] = "Geh zu Zlatxhol in der Werkstatt von Cadomyr, er hat bestimmt noch eine Aufgabe f�r dich."
Description[ENGLISH][8] = "Go to Zlatxhol in the workshop of Cadomyr, he is sure to have another task for you."
Description[GERMAN][9] = "Stell f�nf gro�e leere Flaschen mit den Glasbl�cken f�r Zlatxhol her und zeig ihm die Flaschen. Um die Flaschen herzustellen nimmst du das Glasblasrohr in die Hand und benutzt dieses w�hrend du vor dem Glasschmelzofen stehst."
Description[ENGLISH][9] = "Produce five large empty bottles from glass ingots using the glass blowing pipe at the glass melting oven and show them to Zlatxhol. To produce the bottles go to the glass melting oven and take the glass blowing pipe in your hand and then use it."
Description[GERMAN][10] = "Du hast alle Aufgaben von Zlatxhol erf�llt."
Description[ENGLISH][10] = "You have fulfilled all the tasks for Zlatxhol."


-- Insert the position of the quest start here (probably the position of an NPC or item)
Start = {134, 593, 0}


-- For each status insert a list of positions where the quest will continue, i.e. a new status can be reached there
local QuestTarget = {}
QuestTarget[1] = {position(134, 593, 0), position(106, 644, 0)} -- Clay Pit
QuestTarget[2] = {position(134, 593, 0)} 
QuestTarget[3] = {position(134, 593, 0), position(143, 584, 0)} -- Kiln
QuestTarget[4] = {position(134, 593, 0)} 
QuestTarget[5] = {position(134, 593, 0), position(122, 644, 0)} -- Sand Pit
QuestTarget[6] = {position(134, 593, 0)} 
QuestTarget[7] = {position(134, 593, 0), position(143, 586, 0)} -- Glass melting oven
QuestTarget[8] = {position(134, 593, 0)} 
QuestTarget[9] = {position(134, 593, 0), position(143, 586, 0)} -- Glass melting oven
QuestTarget[10] = {position(134, 593, 0)} 

-- Insert the quest status which is reached at the end of the quest
local FINAL_QUEST_STATUS = 10


function M.QuestTitle(user)
    return common.GetNLS(user, Title[GERMAN], Title[ENGLISH])
end

function M.QuestDescription(user, status)
    local german = Description[GERMAN][status] or ""
    local english = Description[ENGLISH][status] or ""

    return common.GetNLS(user, german, english)
end

function M.QuestStart()
    return Start
end

function M.QuestTargets(user, status)
    return QuestTarget[status]
end

function M.QuestFinalStatus()
    return FINAL_QUEST_STATUS
end

function M.QuestAvailability(user, status)
    if factions.isCadomyrCitizen(user) and status == 0 then
        return Player.questAvailable
    else
        return Player.questNotAvailable
    end
end

return M
