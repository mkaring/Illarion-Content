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
--ID 581, Dog
--ID 582, Vicious Dog
--ID 583, Watchdog
--ID 584, Docile Stray Dog

local dogs = require("monster.race_58_dog.base")
local hostileWildlife = require("monster.base.behaviour.hostileWildlife")

local M = dogs.generateCallbacks()
--return hostileWildlife.addCallbacks(M)
return M