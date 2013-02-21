--Flames on the Runewick bridges
--Flux

require("base.common")

module("triggerfield.runewick_bridges", package.seeall)

function MoveToField( User )
	local displacement,xpos,ypos;
	--North Bridge
	for displacement = 1, 28, 3 do
		for xpos = 909, 911, 1 do
			for ypos = 760, 765, 1 do
				if User.pos == position(xpos+displacement,ypos,1) then
					local flametype;

					if displacement%2 == 0 then
						flametype = 359;
					else
						flametype = 360;
					end;

					local testthing = 910+displacement;
					local pillar1 = world:getField(position(testthing, 760,1));
					local flame1 = pillar1:getStackItem(pillar1:countItems()-1);
					local pillar2 = world:getField(position(testthing, 764,1));
					local flame2 = pillar2:getStackItem(pillar2:countItems()-1);
					if flame1.id == 2805 then
						local newflame = world:createItemFromId(flametype,1,position(testthing,760,1),true,333,nil);
						newflame.wear = 1;
						world:changeItem(newflame);
					end;
					if flame2.id == 2805 then
						local newflame = world:createItemFromId(flametype,1,position(testthing,764,1),true,333,nil);
						newflame.wear = 1;
						world:changeItem(newflame);
					end;
				end;
			end;
		end;
	end;

	--South Bridge
	for displacement = 1, 28, 3 do
		for xpos = 913, 915, 1 do
			for ypos = 830, 835, 1 do
				if User.pos == position(xpos+displacement,ypos,1) then
					local flametype;

					if displacement%2 == 0 then
						flametype = 359;
					else
						flametype = 360;
					end;

					local testthing = 913+displacement;
					local pillar1 = world:getField(position(testthing, 830,1));
					local flame1 = pillar1:getStackItem(pillar1:countItems()-1);
					local pillar2 = world:getField(position(testthing, 834,1));
					local flame2 = pillar2:getStackItem(pillar2:countItems()-1);
					if flame1.id == 2805 then
						local newflame = world:createItemFromId(flametype,1,position(testthing,830,1),true,333,nil);
						newflame.wear = 1;
						world:changeItem(newflame);
					end;
					if flame2.id == 2805 then
						local newflame = world:createItemFromId(flametype,1,position(testthing,834,1),true,333,nil);
						newflame.wear = 1;
						world:changeItem(newflame);
					end;
				end;
			end;
		end;
	end;

	--East Bridge
	for displacement = 1, 49, 3 do
		for xpos = 943, 948, 1 do
			for ypos = 770, 772, 1 do
				if User.pos == position(xpos,ypos+displacement,1) then
					if displacement%2 == 0 then
						flametype = 359;
					else
						flametype = 360;
					end;
					local testthing = 770+displacement;
					local pillar1 = world:getField(position(944, testthing,1));
					local flame1 = pillar1:getStackItem(pillar1:countItems()-1);
					local pillar2 = world:getField(position(948, testthing,1));
					local flame2 = pillar2:getStackItem(pillar2:countItems()-1);
					if flame1.id == 2805 then
						local newflame = world:createItemFromId(flametype,1,position(944, testthing,1),true,333,nil);
						newflame.wear = 1;
						world:changeItem(newflame);
					end;
					if flame2.id == 2805 then
						local newflame = world:createItemFromId(flametype,1,position(948, testthing,1),true,333,nil);
						newflame.wear = 1;
						world:changeItem(newflame);
					end;
				end;
			end;
		end;
	end;







end

-- North Bridge Triggers
-- INSERT INTO triggerfields VALUES (909,760,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (909,761,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (909,762,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (909,763,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (909,764,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (909,765,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (910,760,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (910,761,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (910,762,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (910,763,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (910,764,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (910,765,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (911,760,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (911,761,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (911,762,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (911,763,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (911,764,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (911,765,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (912,760,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (912,761,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (912,762,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (912,763,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (912,764,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (912,765,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (913,760,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (913,761,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (913,762,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (913,763,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (913,764,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (913,765,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (914,760,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (914,761,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (914,762,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (914,763,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (914,764,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (914,765,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (915,760,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (915,761,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (915,762,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (915,763,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (915,764,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (915,765,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (916,760,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (916,761,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (916,762,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (916,763,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (916,764,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (916,765,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (917,760,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (917,761,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (917,762,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (917,763,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (917,764,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (917,765,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (918,760,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (918,761,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (918,762,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (918,763,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (918,764,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (918,765,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (919,760,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (919,761,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (919,762,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (919,763,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (919,764,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (919,765,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (920,760,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (920,761,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (920,762,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (920,763,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (920,764,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (920,765,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (921,760,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (921,761,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (921,762,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (921,763,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (921,764,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (921,765,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (922,760,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (922,761,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (922,762,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (922,763,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (922,764,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (922,765,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (923,760,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (923,761,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (923,762,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (923,763,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (923,764,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (923,765,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (924,760,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (924,761,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (924,762,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (924,763,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (924,764,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (924,765,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (925,760,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (925,761,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (925,762,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (925,763,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (925,764,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (925,765,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (926,760,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (926,761,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (926,762,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (926,763,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (926,764,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (926,765,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (927,760,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (927,761,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (927,762,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (927,763,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (927,764,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (927,765,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (928,760,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (928,761,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (928,762,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (928,763,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (928,764,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (928,765,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (929,760,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (929,761,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (929,762,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (929,763,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (929,764,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (929,765,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (930,760,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (930,761,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (930,762,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (930,763,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (930,764,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (930,765,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (931,760,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (931,761,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (931,762,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (931,763,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (931,764,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (931,765,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (932,760,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (932,761,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (932,762,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (932,763,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (932,764,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (932,765,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (933,760,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (933,761,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (933,762,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (933,763,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (933,764,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (933,765,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (934,760,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (934,761,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (934,762,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (934,763,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (934,764,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (934,765,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (935,760,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (935,761,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (935,762,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (935,763,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (935,764,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (935,765,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (936,760,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (936,761,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (936,762,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (936,763,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (936,764,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (936,765,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (937,760,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (937,761,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (937,762,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (937,763,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (937,764,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (937,765,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (938,760,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (938,761,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (938,762,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (938,763,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (938,764,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (938,765,1,'triggerfield.runewick_bridges');

-- East Bridge Triggers
-- INSERT INTO triggerfields VALUES (943,770,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (944,770,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (945,770,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (946,770,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (947,770,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (948,770,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (943,771,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (944,771,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (945,771,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (946,771,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (947,771,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (948,771,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (943,772,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (944,772,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (945,772,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (946,772,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (947,772,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (948,772,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (943,773,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (944,773,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (945,773,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (946,773,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (947,773,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (948,773,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (943,774,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (944,774,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (945,774,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (946,774,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (947,774,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (948,774,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (943,775,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (944,775,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (945,775,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (946,775,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (947,775,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (948,775,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (943,776,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (944,776,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (945,776,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (946,776,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (947,776,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (948,776,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (943,777,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (944,777,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (945,777,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (946,777,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (947,777,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (948,777,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (943,778,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (944,778,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (945,778,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (946,778,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (947,778,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (948,778,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (943,779,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (944,779,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (945,779,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (946,779,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (947,779,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (948,779,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (943,780,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (944,780,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (945,780,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (946,780,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (947,780,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (948,780,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (943,781,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (944,781,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (945,781,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (946,781,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (947,781,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (948,781,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (943,782,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (944,782,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (945,782,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (946,782,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (947,782,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (948,782,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (943,783,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (944,783,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (945,783,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (946,783,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (947,783,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (948,783,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (943,784,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (944,784,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (945,784,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (946,784,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (947,784,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (948,784,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (943,785,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (944,785,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (945,785,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (946,785,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (947,785,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (948,785,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (943,786,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (944,786,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (945,786,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (946,786,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (947,786,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (948,786,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (943,787,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (944,787,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (945,787,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (946,787,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (947,787,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (948,787,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (943,788,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (944,788,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (945,788,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (946,788,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (947,788,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (948,788,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (943,789,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (944,789,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (945,789,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (946,789,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (947,789,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (948,789,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (943,790,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (944,790,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (945,790,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (946,790,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (947,790,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (948,790,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (943,791,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (944,791,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (945,791,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (946,791,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (947,791,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (948,791,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (943,792,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (944,792,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (945,792,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (946,792,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (947,792,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (948,792,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (943,793,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (944,793,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (945,793,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (946,793,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (947,793,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (948,793,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (943,794,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (944,794,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (945,794,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (946,794,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (947,794,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (948,794,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (943,795,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (944,795,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (945,795,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (946,795,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (947,795,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (948,795,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (943,796,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (944,796,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (945,796,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (946,796,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (947,796,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (948,796,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (943,797,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (944,797,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (945,797,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (946,797,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (947,797,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (948,797,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (943,798,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (944,798,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (945,798,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (946,798,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (947,798,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (948,798,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (943,799,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (944,799,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (945,799,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (946,799,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (947,799,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (948,799,1,'triggerfield.runewick_bridges');