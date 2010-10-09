--------------------------------------------------------------------------------
-- NPC Name: Private Milenus                                             None --
-- NPC Job:  none                                                             --
--                                                                            --
-- NPC Race: human                      NPC Position:  118, 618, 0            --
-- NPC Sex:  male                       NPC Direction: south                  --
--                                                                            --
-- Author:   not set                                                          --
--                                                                            --
-- Last parsing: August 30, 2010                         easyNPC Parser v1.01 --
--------------------------------------------------------------------------------

--[[SQL
INSERT INTO "npc" ("npc_type", "npc_posx", "npc_posy", "npc_posz", "npc_faceto", "npc_name", "npc_script", "npc_sex", "npc_hair", "npc_beard", "npc_hairred", "npc_hairgreen", "npc_hairblue", "npc_skinred", "npc_skingreen", "npc_skinblue") 
VALUES (0, 118, 618, 0, 4, 'Private Milenus', 'npc.private_milenus', 0, 0, 0, 255, 255, 255, 255, 255, 255);
---]]

-- require("npc.base.basic")
-- require("npc.base.condition.language")
-- require("npc.base.consequence.inform")
-- require("npc.base.talk")
-- require("npc.base.guards_static")
-- module("npc.private_milenus", package.seeall)

-- function initNpc()
-- --npc.base.guards_static.Init(thisNPC, 1, position(114, 639, 0), 3, position(114, 634, 0));
-- mainNPC = npc.base.basic.baseNPC();
-- local talkingNPC = npc.base.talk.talkNPC(mainNPC);
-- if (true) then
-- local talkEntry = npc.base.talk.talkNPCEntry();
-- talkEntry:addTrigger("Help");
-- talkEntry:addConsequence(npc.base.consequence.inform.inform("[Game Help] This NPC is a town guard of Cadomyr. Keyphrases: who are you, profession."));
-- talkingNPC:addTalkingEntry(talkEntry);
-- end;
-- if (true) then
-- local talkEntry = npc.base.talk.talkNPCEntry();
-- talkEntry:addTrigger("Hilfe");
-- talkEntry:addConsequence(npc.base.consequence.inform.inform("[Spielhilfe] Dieser NPC ist ein Stadtw�chter von Cadomyr. Schl�sselw�rter: wer bist du, beruf."));
-- talkingNPC:addTalkingEntry(talkEntry);
-- end;
-- if (true) then
-- local talkEntry = npc.base.talk.talkNPCEntry();
-- talkEntry:addTrigger("Hello");
-- talkEntry:addTrigger("Greetings");
-- talkEntry:addTrigger("Be greeted");
-- talkEntry:addTrigger("Greet");
-- talkEntry:addTrigger("Hail");
-- talkEntry:addTrigger("Good day");
-- talkEntry:addTrigger("Good morning");
-- talkEntry:addTrigger("Good evening");
-- talkEntry:addResponse("Hello.");
-- talkEntry:addResponse("#me just gives a brief nod.");
-- talkEntry:addResponse("Greetings to you.");
-- talkingNPC:addTalkingEntry(talkEntry);
-- end;
-- if (true) then
-- local talkEntry = npc.base.talk.talkNPCEntry();
-- talkEntry:addTrigger("Gr��e");
-- talkEntry:addTrigger("Gru�");
-- talkEntry:addTrigger("Seid gegr��t");
-- talkEntry:addTrigger("Guten Tag");
-- talkEntry:addTrigger("Guten Abend");
-- talkEntry:addTrigger("Mahlzeit");
-- talkEntry:addTrigger("Tach");
-- talkEntry:addTrigger("Moin");
-- talkEntry:addTrigger("mit dir");
-- talkEntry:addResponse("Hallo.");
-- talkEntry:addResponse("#me nickt nur kurz.");
-- talkEntry:addResponse("Seid gegr��t.");
-- talkingNPC:addTalkingEntry(talkEntry);
-- end;
-- if (true) then
-- local talkEntry = npc.base.talk.talkNPCEntry();
-- talkEntry:addTrigger("Hiho");
-- talkEntry:addTrigger("Hallo");
-- talkEntry:addTrigger("Hey");
-- talkEntry:addTrigger("Greebas");
-- talkEntry:addTrigger("Greebs");
-- talkEntry:addCondition(npc.base.condition.language.language("english"));
-- talkEntry:addResponse("Hello.");
-- talkEntry:addResponse("#me just gives a brief nod.");
-- talkEntry:addResponse("Greetings to you.");
-- talkingNPC:addTalkingEntry(talkEntry);
-- end;
-- if (true) then
-- local talkEntry = npc.base.talk.talkNPCEntry();
-- talkEntry:addTrigger("Hiho");
-- talkEntry:addTrigger("Hallo");
-- talkEntry:addTrigger("Hey");
-- talkEntry:addTrigger("Greebas");
-- talkEntry:addTrigger("Greebs");
-- talkEntry:addCondition(npc.base.condition.language.language("german"));
-- talkEntry:addResponse("Hallo.");
-- talkEntry:addResponse("#me nickt nur kurz.");
-- talkEntry:addResponse("Seid gegr��t.");
-- talkingNPC:addTalkingEntry(talkEntry);
-- end;
-- if (true) then
-- local talkEntry = npc.base.talk.talkNPCEntry();
-- talkEntry:addTrigger("Farewell");
-- talkEntry:addTrigger("Good bye");
-- talkEntry:addTrigger("Bye");
-- talkEntry:addTrigger("Fare thee well");
-- talkEntry:addResponse("Farewell.");
-- talkEntry:addResponse("Good bye.");
-- talkingNPC:addTalkingEntry(talkEntry);
-- end;
-- if (true) then
-- local talkEntry = npc.base.talk.talkNPCEntry();
-- talkEntry:addTrigger("Tsch��");
-- talkEntry:addTrigger("Tsch�ss");
-- talkEntry:addTrigger("Wiedersehen");
-- talkEntry:addTrigger("Gehabt euch wohl");
-- talkEntry:addResponse("Auf Wiedersehen.");
-- talkEntry:addResponse("Bis zum n�chsten Mal.");
-- talkingNPC:addTalkingEntry(talkEntry);
-- end;
-- if (true) then
-- local talkEntry = npc.base.talk.talkNPCEntry();
-- talkEntry:addTrigger("Ciao");
-- talkEntry:addTrigger("Adieu");
-- talkEntry:addTrigger("Au revoir");
-- talkEntry:addTrigger("Farebba");
-- talkEntry:addTrigger("See you");
-- talkEntry:addCondition(npc.base.condition.language.language("english"));
-- talkEntry:addResponse("Farewell.");
-- talkEntry:addResponse("Good bye.");
-- talkingNPC:addTalkingEntry(talkEntry);
-- end;
-- if (true) then
-- local talkEntry = npc.base.talk.talkNPCEntry();
-- talkEntry:addTrigger("Ciao");
-- talkEntry:addTrigger("Adieu");
-- talkEntry:addTrigger("Au revoir");
-- talkEntry:addTrigger("Farebba");
-- talkEntry:addTrigger("See you");
-- talkEntry:addResponse("Auf Wiedersehen.");
-- talkEntry:addResponse("Bis zum n�chsten Mal.");
-- talkingNPC:addTalkingEntry(talkEntry);
-- end;
-- if (true) then
-- local talkEntry = npc.base.talk.talkNPCEntry();
-- talkEntry:addTrigger("How are you");
-- talkEntry:addTrigger("How feel");
-- talkEntry:addTrigger("How do you do");
-- talkEntry:addResponse("I'm on duty. How should I feel?.");
-- talkEntry:addResponse("Everyday it's the same anyway.");
-- talkingNPC:addTalkingEntry(talkEntry);
-- end;
-- if (true) then
-- local talkEntry = npc.base.talk.talkNPCEntry();
-- talkEntry:addTrigger("Wie geht");
-- talkEntry:addTrigger("Wie f�hlst");
-- talkEntry:addTrigger("Wie ist es ergangen");
-- talkEntry:addTrigger("Wie Befinden");
-- talkEntry:addResponse("Ich bin im Dienst. Wie soll es mir da gehen?.");
-- talkEntry:addResponse("Ist jeden Tag sowieso immer dasselbe.");
-- talkingNPC:addTalkingEntry(talkEntry);
-- end;
-- if (true) then
-- local talkEntry = npc.base.talk.talkNPCEntry();
-- talkEntry:addTrigger("your name");
-- talkEntry:addTrigger("who are you");
-- talkEntry:addTrigger("who art thou");
-- talkEntry:addResponse("My name is %NPCNAME. I am guarding this town entrance.");
-- talkEntry:addResponse("I am %NPCNAME, town guard of Cadomyr.");
-- talkingNPC:addTalkingEntry(talkEntry);
-- end;
-- if (true) then
-- local talkEntry = npc.base.talk.talkNPCEntry();
-- talkEntry:addTrigger("dein name");
-- talkEntry:addTrigger("wer bist du");
-- talkEntry:addTrigger("wer seid ihr");
-- talkEntry:addTrigger("wie hei�t");
-- talkEntry:addResponse("Mein Name ist %NPCNAME. Ich bewache diesen Eingang zur Stadt.");
-- talkEntry:addResponse("Ich bin %NPCNAME, Stadtwache von Cadomyr.");
-- talkingNPC:addTalkingEntry(talkEntry);
-- end;
-- if (true) then
-- local talkEntry = npc.base.talk.talkNPCEntry();
-- talkEntry:addTrigger("what sell");
-- talkEntry:addTrigger("what buy");
-- talkEntry:addTrigger("list wares");
-- talkEntry:addTrigger("price of");
-- talkEntry:addResponse("I am no trader.");
-- talkEntry:addResponse("If you are looking for a trader, go to the market place.");
-- talkingNPC:addTalkingEntry(talkEntry);
-- end;
-- if (true) then
-- local talkEntry = npc.base.talk.talkNPCEntry();
-- talkEntry:addTrigger("was verkauf");
-- talkEntry:addTrigger("was kauf");
-- talkEntry:addTrigger("warenliste");
-- talkEntry:addTrigger("preis von");
-- talkEntry:addResponse("Ich bin kein H�ndler.");
-- talkEntry:addResponse("Wenn Ihr einen H�ndler sucht, dann geht zum Marktplatz.");
-- talkingNPC:addTalkingEntry(talkEntry);
-- end;
-- if (true) then
-- local talkEntry = npc.base.talk.talkNPCEntry();
-- talkEntry:addTrigger("tell something");
-- talkEntry:addResponse("I'm on duty and I am not paid for small talk.");
-- talkEntry:addResponse("I am a town guard, not a story teller.");
-- talkingNPC:addTalkingEntry(talkEntry);
-- end;
-- if (true) then
-- local talkEntry = npc.base.talk.talkNPCEntry();
-- talkEntry:addTrigger("erz�hl was");
-- talkEntry:addTrigger("erz�hl etwas");
-- talkEntry:addResponse("Ich bin im Dienst und werde nicht f�r eine nette Plauderei bezahlt.");
-- talkEntry:addResponse("Ich bin eine Stadtwache und kein Geschichtenerz�hler.");
-- talkingNPC:addTalkingEntry(talkEntry);
-- end;
-- if (true) then
-- local talkEntry = npc.base.talk.talkNPCEntry();
-- talkEntry:addTrigger("profession");
-- talkEntry:addResponse("I am a town guard of Cadomyr.");
-- talkEntry:addResponse("I serve the noble Queen as a town guard.");
-- talkingNPC:addTalkingEntry(talkEntry);
-- end;
-- if (true) then
-- local talkEntry = npc.base.talk.talkNPCEntry();
-- talkEntry:addTrigger("beruf");
-- talkEntry:addResponse("Ich bin ein Stadtw�chter von Cadomyr.");
-- talkEntry:addResponse("Ich diene der edlen K�nigin als ein Stadtw�chter.");
-- talkingNPC:addTalkingEntry(talkEntry);
-- end;
-- if (true) then
-- local talkEntry = npc.base.talk.talkNPCEntry();
-- talkEntry:addTrigger("job");
-- talkEntry:addCondition(npc.base.condition.language.language("english"));
-- talkEntry:addResponse("I am a town guard of Cadomyr.");
-- talkEntry:addResponse("I serve the noble Queen as a town guard.");
-- talkingNPC:addTalkingEntry(talkEntry);
-- end;
-- if (true) then
-- local talkEntry = npc.base.talk.talkNPCEntry();
-- talkEntry:addTrigger("job");
-- talkEntry:addResponse("Ich bin ein Stadtw�chter von Cadomyr.");
-- talkEntry:addResponse("Ich diene der edlen K�nigin als ein Stadtw�chter.");
-- talkingNPC:addTalkingEntry(talkEntry);
-- end;
-- if (true) then
-- local talkEntry = npc.base.talk.talkNPCEntry();
-- talkEntry:addTrigger("Gobaith");
-- talkEntry:addTrigger("Gobiath");
-- talkEntry:addCondition(npc.base.condition.language.language("english"));
-- talkEntry:addResponse("Gob...what?");
-- talkEntry:addResponse("I don't know Gobaith.");
-- talkingNPC:addTalkingEntry(talkEntry);
-- end;
-- if (true) then
-- local talkEntry = npc.base.talk.talkNPCEntry();
-- talkEntry:addTrigger("Gobaith");
-- talkEntry:addTrigger("Gobiath");
-- talkEntry:addResponse("Gob...was?");
-- talkEntry:addResponse("Ich kenne kein Gobaith.");
-- talkingNPC:addTalkingEntry(talkEntry);
-- end;
-- --[[
-- if (true) then
-- local talkEntry = npc.base.talk.talkNPCEntry();
-- talkEntry:addTrigger("I am");
-- talkEntry:addTrigger("my name");
-- talkEntry:addResponse("ENGLISH1.");
-- talkEntry:addResponse("ENGLISH2.");
-- talkEntry:addResponse("ENGLISH3.");
-- talkingNPC:addTalkingEntry(talkEntry);
-- end;
-- if (true) then
-- local talkEntry = npc.base.talk.talkNPCEntry();
-- talkEntry:addTrigger("Ich bin");
-- talkEntry:addTrigger("mein Name");
-- talkEntry:addResponse("GERMAN1.");
-- talkEntry:addResponse("GERMAN2.");
-- talkEntry:addResponse("GERMAN3.");
-- talkingNPC:addTalkingEntry(talkEntry);
-- end;
-- if (true) then
-- local talkEntry = npc.base.talk.talkNPCEntry();
-- talkEntry:addTrigger("YOURTRIGGER1");
-- talkEntry:addResponse("ENGLISH1.");
-- talkEntry:addResponse("ENGLISH2.");
-- talkEntry:addResponse("ENGLISH3.");
-- talkingNPC:addTalkingEntry(talkEntry);
-- end;
-- if (true) then
-- local talkEntry = npc.base.talk.talkNPCEntry();
-- talkEntry:addTrigger("YOURTRIGGER2");
-- talkEntry:addResponse("ENGLISH1.");
-- talkEntry:addResponse("ENGLISH2.");
-- talkEntry:addResponse("ENGLISH3.");
-- talkingNPC:addTalkingEntry(talkEntry);
-- end;
-- if (true) then
-- local talkEntry = npc.base.talk.talkNPCEntry();
-- talkEntry:addTrigger("YOURTRIGGER3");
-- talkEntry:addResponse("ENGLISH1.");
-- talkEntry:addResponse("ENGLISH2.");
-- talkEntry:addResponse("ENGLISH3.");
-- talkingNPC:addTalkingEntry(talkEntry);
-- end;
-- if (true) then
-- local talkEntry = npc.base.talk.talkNPCEntry();
-- talkEntry:addTrigger("YOURTRIGGER4");
-- talkEntry:addResponse("ENGLISH1.");
-- talkEntry:addResponse("ENGLISH2.");
-- talkEntry:addResponse("ENGLISH3.");
-- talkingNPC:addTalkingEntry(talkEntry);
-- end;
-- if (true) then
-- local talkEntry = npc.base.talk.talkNPCEntry();
-- talkEntry:addTrigger("YOURTRIGGER5");
-- talkEntry:addResponse("ENGLISH1.");
-- talkEntry:addResponse("ENGLISH2.");
-- talkEntry:addResponse("ENGLISH3.");
-- talkingNPC:addTalkingEntry(talkEntry);
-- end;
-- if (true) then
-- local talkEntry = npc.base.talk.talkNPCEntry();
-- talkEntry:addTrigger("DEINTRIGGER1");
-- talkEntry:addResponse("GERMAN1.");
-- talkEntry:addResponse("GERMAN2.");
-- talkEntry:addResponse("GERMAN3.");
-- talkingNPC:addTalkingEntry(talkEntry);
-- end;
-- if (true) then
-- local talkEntry = npc.base.talk.talkNPCEntry();
-- talkEntry:addTrigger("DEINTRIGGER2");
-- talkEntry:addResponse("GERMAN1.");
-- talkEntry:addResponse("GERMAN2.");
-- talkEntry:addResponse("GERMAN3.");
-- talkingNPC:addTalkingEntry(talkEntry);
-- end;
-- if (true) then
-- local talkEntry = npc.base.talk.talkNPCEntry();
-- talkEntry:addTrigger("DEINTRIGGER3");
-- talkEntry:addResponse("GERMAN1.");
-- talkEntry:addResponse("GERMAN2.");
-- talkEntry:addResponse("GERMAN3.");
-- talkingNPC:addTalkingEntry(talkEntry);
-- end;
-- if (true) then
-- local talkEntry = npc.base.talk.talkNPCEntry();
-- talkEntry:addTrigger("DEINTRIGGER4");
-- talkEntry:addResponse("GERMAN1.");
-- talkEntry:addResponse("GERMAN2.");
-- talkEntry:addResponse("GERMAN3.");
-- talkingNPC:addTalkingEntry(talkEntry);
-- end;
-- if (true) then
-- local talkEntry = npc.base.talk.talkNPCEntry();
-- talkEntry:addTrigger("DEINTRIGGER5");
-- talkEntry:addResponse("GERMAN1.");
-- talkEntry:addResponse("GERMAN2.");
-- talkEntry:addResponse("GERMAN3.");
-- talkingNPC:addTalkingEntry(talkEntry);
-- end;
-- if (true) then
-- local talkEntry = npc.base.talk.talkNPCEntry();
-- talkEntry:addTrigger("Elvaine");
-- talkEntry:addTrigger("Morgan");
-- talkEntry:addTrigger("archmage");
-- talkEntry:addTrigger("Erzmagier");
-- talkEntry:addCondition(npc.base.condition.language.language("english"));
-- talkEntry:addResponse("ENGLISH1.");
-- talkEntry:addResponse("ENGLISH2.");
-- talkEntry:addResponse("ENGLISH3.");
-- talkingNPC:addTalkingEntry(talkEntry);
-- end;
-- if (true) then
-- local talkEntry = npc.base.talk.talkNPCEntry();
-- talkEntry:addTrigger("Elvaine");
-- talkEntry:addTrigger("Morgan");
-- talkEntry:addTrigger("archmage");
-- talkEntry:addTrigger("Erzmagier");
-- talkEntry:addResponse("GERMAN1.");
-- talkEntry:addResponse("GERMAN2.");
-- talkEntry:addResponse("GERMAN3.");
-- talkingNPC:addTalkingEntry(talkEntry);
-- end;
-- if (true) then
-- local talkEntry = npc.base.talk.talkNPCEntry();
-- talkEntry:addTrigger("Runewick");
-- talkEntry:addCondition(npc.base.condition.language.language("english"));
-- talkEntry:addResponse("ENGLISH1.");
-- talkEntry:addResponse("ENGLISH2.");
-- talkEntry:addResponse("ENGLISH3.");
-- talkingNPC:addTalkingEntry(talkEntry);
-- end;
-- if (true) then
-- local talkEntry = npc.base.talk.talkNPCEntry();
-- talkEntry:addTrigger("Runewick");
-- talkEntry:addResponse("GERMAN1.");
-- talkEntry:addResponse("GERMAN2.");
-- talkEntry:addResponse("GERMAN3.");
-- talkingNPC:addTalkingEntry(talkEntry);
-- end;
-- if (true) then
-- local talkEntry = npc.base.talk.talkNPCEntry();
-- talkEntry:addTrigger("Valerio");
-- talkEntry:addTrigger("Guilianni");
-- talkEntry:addTrigger("Don");
-- talkEntry:addCondition(npc.base.condition.language.language("english"));
-- talkEntry:addResponse("ENGLISH1.");
-- talkEntry:addResponse("ENGLISH2.");
-- talkEntry:addResponse("ENGLISH3.");
-- talkingNPC:addTalkingEntry(talkEntry);
-- end;
-- if (true) then
-- local talkEntry = npc.base.talk.talkNPCEntry();
-- talkEntry:addTrigger("Valerio");
-- talkEntry:addTrigger("Guilianni");
-- talkEntry:addTrigger("Don");
-- talkEntry:addResponse("GERMAN1.");
-- talkEntry:addResponse("GERMAN2.");
-- talkEntry:addResponse("GERMAN3.");
-- talkingNPC:addTalkingEntry(talkEntry);
-- end;
-- if (true) then
-- local talkEntry = npc.base.talk.talkNPCEntry();
-- talkEntry:addTrigger("Galmair");
-- talkEntry:addCondition(npc.base.condition.language.language("english"));
-- talkEntry:addResponse("ENGLISH1.");
-- talkEntry:addResponse("ENGLISH2.");
-- talkEntry:addResponse("ENGLISH3.");
-- talkingNPC:addTalkingEntry(talkEntry);
-- end;
-- if (true) then
-- local talkEntry = npc.base.talk.talkNPCEntry();
-- talkEntry:addTrigger("Galmair");
-- talkEntry:addResponse("GERMAN1.");
-- talkEntry:addResponse("GERMAN2.");
-- talkEntry:addResponse("GERMAN3.");
-- talkingNPC:addTalkingEntry(talkEntry);
-- end;
-- if (true) then
-- local talkEntry = npc.base.talk.talkNPCEntry();
-- talkEntry:addTrigger("rosaline");
-- talkEntry:addTrigger("k�nigin");
-- talkEntry:addTrigger("queen");
-- talkEntry:addTrigger("edwards");
-- talkEntry:addCondition(npc.base.condition.language.language("english"));
-- talkEntry:addResponse("ENGLISH1.");
-- talkEntry:addResponse("ENGLISH2.");
-- talkEntry:addResponse("ENGLISH3.");
-- talkingNPC:addTalkingEntry(talkEntry);
-- end;
-- if (true) then
-- local talkEntry = npc.base.talk.talkNPCEntry();
-- talkEntry:addTrigger("rosaline");
-- talkEntry:addTrigger("k�nigin");
-- talkEntry:addTrigger("queen");
-- talkEntry:addTrigger("edwards");
-- talkEntry:addResponse("GERMAN1.");
-- talkEntry:addResponse("GERMAN2.");
-- talkEntry:addResponse("GERMAN3.");
-- talkingNPC:addTalkingEntry(talkEntry);
-- end;
-- if (true) then
-- local talkEntry = npc.base.talk.talkNPCEntry();
-- talkEntry:addTrigger("Cadomyr");
-- talkEntry:addCondition(npc.base.condition.language.language("english"));
-- talkEntry:addResponse("ENGLISH1.");
-- talkEntry:addResponse("ENGLISH2.");
-- talkEntry:addResponse("ENGLISH3.");
-- talkingNPC:addTalkingEntry(talkEntry);
-- end;
-- if (true) then
-- local talkEntry = npc.base.talk.talkNPCEntry();
-- talkEntry:addTrigger("Cadomyr");
-- talkEntry:addResponse("GERMAN1.");
-- talkEntry:addResponse("GERMAN2.");
-- talkEntry:addResponse("GERMAN3.");
-- talkingNPC:addTalkingEntry(talkEntry);
-- end;
-- if (true) then
-- local talkEntry = npc.base.talk.talkNPCEntry();
-- talkEntry:addTrigger("albar");
-- talkEntry:addCondition(npc.base.condition.language.language("english"));
-- talkEntry:addResponse("ENGLISH1.");
-- talkEntry:addResponse("ENGLISH2.");
-- talkEntry:addResponse("ENGLISH3.");
-- talkingNPC:addTalkingEntry(talkEntry);
-- end;
-- if (true) then
-- local talkEntry = npc.base.talk.talkNPCEntry();
-- talkEntry:addTrigger("albar");
-- talkEntry:addCondition(npc.base.condition.language.language("german"));
-- talkEntry:addResponse("GERMAN1.");
-- talkEntry:addResponse("GERMAN2.");
-- talkEntry:addResponse("GERMAN3.");
-- talkingNPC:addTalkingEntry(talkEntry);
-- end;
-- if (true) then
-- local talkEntry = npc.base.talk.talkNPCEntry();
-- talkEntry:addTrigger("gynk");
-- talkEntry:addTrigger("gync");
-- talkEntry:addCondition(npc.base.condition.language.language("english"));
-- talkEntry:addResponse("ENGLISH1.");
-- talkEntry:addResponse("ENGLISH2.");
-- talkEntry:addResponse("ENGLISH3.");
-- talkingNPC:addTalkingEntry(talkEntry);
-- end;
-- if (true) then
-- local talkEntry = npc.base.talk.talkNPCEntry();
-- talkEntry:addTrigger("gync");
-- talkEntry:addTrigger("gynk");
-- talkEntry:addCondition(npc.base.condition.language.language("german"));
-- talkEntry:addResponse("GERMAN1.");
-- talkEntry:addResponse("GERMAN2.");
-- talkEntry:addResponse("GERMAN3.");
-- talkingNPC:addTalkingEntry(talkEntry);
-- end;
-- if (true) then
-- local talkEntry = npc.base.talk.talkNPCEntry();
-- talkEntry:addTrigger("salkama");
-- talkEntry:addCondition(npc.base.condition.language.language("english"));
-- talkEntry:addResponse("ENGLISH1.");
-- talkEntry:addResponse("ENGLISH2.");
-- talkEntry:addResponse("ENGLISH3.");
-- talkingNPC:addTalkingEntry(talkEntry);
-- end;
-- if (true) then
-- local talkEntry = npc.base.talk.talkNPCEntry();
-- talkEntry:addTrigger("salkama");
-- talkEntry:addCondition(npc.base.condition.language.language("german"));
-- talkEntry:addResponse("GERMAN1.");
-- talkEntry:addResponse("GERMAN2.");
-- talkEntry:addResponse("GERMAN3.");
-- talkingNPC:addTalkingEntry(talkEntry);
-- end;
-- if (true) then
-- local talkEntry = npc.base.talk.talkNPCEntry();
-- talkEntry:addTrigger("god");
-- talkEntry:addResponse("ENGLISH1.");
-- talkEntry:addResponse("ENGLISH2.");
-- talkEntry:addResponse("ENGLISH3.");
-- talkingNPC:addTalkingEntry(talkEntry);
-- end;
-- if (true) then
-- local talkEntry = npc.base.talk.talkNPCEntry();
-- talkEntry:addTrigger("Gott");
-- talkEntry:addTrigger("G�tter");
-- talkEntry:addResponse("GERMAN1.");
-- talkEntry:addResponse("GERMAN2.");
-- talkEntry:addResponse("GERMAN3.");
-- talkingNPC:addTalkingEntry(talkEntry);
-- end;
-- if (true) then
-- local talkEntry = npc.base.talk.talkNPCEntry();
-- talkEntry:addTrigger("Adron");
-- talkEntry:addCondition(npc.base.condition.language.language("english"));
-- talkEntry:addResponse("ENGLISH1.");
-- talkEntry:addResponse("ENGLISH2.");
-- talkEntry:addResponse("ENGLISH3.");
-- talkingNPC:addTalkingEntry(talkEntry);
-- end;
-- if (true) then
-- local talkEntry = npc.base.talk.talkNPCEntry();
-- talkEntry:addTrigger("Adron");
-- talkEntry:addResponse("GERMAN1.");
-- talkEntry:addResponse("GERMAN2.");
-- talkEntry:addResponse("GERMAN3.");
-- talkingNPC:addTalkingEntry(talkEntry);
-- end;
-- if (true) then
-- local talkEntry = npc.base.talk.talkNPCEntry();
-- talkEntry:addTrigger("Bragon");
-- talkEntry:addTrigger("Br�gon");
-- talkEntry:addCondition(npc.base.condition.language.language("english"));
-- talkEntry:addResponse("ENGLISH1.");
-- talkEntry:addResponse("ENGLISH2.");
-- talkEntry:addResponse("ENGLISH3.");
-- talkingNPC:addTalkingEntry(talkEntry);
-- end;
-- if (true) then
-- local talkEntry = npc.base.talk.talkNPCEntry();
-- talkEntry:addTrigger("Bragon");
-- talkEntry:addTrigger("Br�gon");
-- talkEntry:addResponse("GERMAN1.");
-- talkEntry:addResponse("GERMAN2.");
-- talkEntry:addResponse("GERMAN3.");
-- talkingNPC:addTalkingEntry(talkEntry);
-- end;
-- if (true) then
-- local talkEntry = npc.base.talk.talkNPCEntry();
-- talkEntry:addTrigger("Cherga");
-- talkEntry:addCondition(npc.base.condition.language.language("english"));
-- talkEntry:addResponse("ENGLISH1.");
-- talkEntry:addResponse("ENGLISH2.");
-- talkEntry:addResponse("ENGLISH3.");
-- talkingNPC:addTalkingEntry(talkEntry);
-- end;
-- if (true) then
-- local talkEntry = npc.base.talk.talkNPCEntry();
-- talkEntry:addTrigger("Cherga");
-- talkEntry:addResponse("GERMAN1.");
-- talkEntry:addResponse("GERMAN2.");
-- talkEntry:addResponse("GERMAN3.");
-- talkingNPC:addTalkingEntry(talkEntry);
-- end;
-- if (true) then
-- local talkEntry = npc.base.talk.talkNPCEntry();
-- talkEntry:addTrigger("Elara");
-- talkEntry:addCondition(npc.base.condition.language.language("english"));
-- talkEntry:addResponse("ENGLISH1.");
-- talkEntry:addResponse("ENGLISH2.");
-- talkEntry:addResponse("ENGLISH3.");
-- talkingNPC:addTalkingEntry(talkEntry);
-- end;
-- if (true) then
-- local talkEntry = npc.base.talk.talkNPCEntry();
-- talkEntry:addTrigger("Elara");
-- talkEntry:addResponse("GERMAN1.");
-- talkEntry:addResponse("GERMAN2.");
-- talkEntry:addResponse("GERMAN3.");
-- talkingNPC:addTalkingEntry(talkEntry);
-- end;
-- if (true) then
-- local talkEntry = npc.base.talk.talkNPCEntry();
-- talkEntry:addTrigger("Eldan");
-- talkEntry:addCondition(npc.base.condition.language.language("english"));
-- talkEntry:addResponse("ENGLISH1.");
-- talkEntry:addResponse("ENGLISH2.");
-- talkEntry:addResponse("ENGLISH3.");
-- talkingNPC:addTalkingEntry(talkEntry);
-- end;
-- if (true) then
-- local talkEntry = npc.base.talk.talkNPCEntry();
-- talkEntry:addTrigger("Eldan");
-- talkEntry:addResponse("GERMAN1.");
-- talkEntry:addResponse("GERMAN2.");
-- talkEntry:addResponse("GERMAN3.");
-- talkingNPC:addTalkingEntry(talkEntry);
-- end;
-- if (true) then
-- local talkEntry = npc.base.talk.talkNPCEntry();
-- talkEntry:addTrigger("Findari");
-- talkEntry:addCondition(npc.base.condition.language.language("english"));
-- talkEntry:addResponse("ENGLISH1.");
-- talkEntry:addResponse("ENGLISH2.");
-- talkEntry:addResponse("ENGLISH3.");
-- talkingNPC:addTalkingEntry(talkEntry);
-- end;
-- if (true) then
-- local talkEntry = npc.base.talk.talkNPCEntry();
-- talkEntry:addTrigger("Findari");
-- talkEntry:addResponse("GERMAN1.");
-- talkEntry:addResponse("GERMAN2.");
-- talkEntry:addResponse("GERMAN3.");
-- talkingNPC:addTalkingEntry(talkEntry);
-- end;
-- if (true) then
-- local talkEntry = npc.base.talk.talkNPCEntry();
-- talkEntry:addTrigger("Irmorom");
-- talkEntry:addCondition(npc.base.condition.language.language("english"));
-- talkEntry:addResponse("ENGLISH1.");
-- talkEntry:addResponse("ENGLISH2.");
-- talkEntry:addResponse("ENGLISH3.");
-- talkingNPC:addTalkingEntry(talkEntry);
-- end;
-- if (true) then
-- local talkEntry = npc.base.talk.talkNPCEntry();
-- talkEntry:addTrigger("Irmorom");
-- talkEntry:addResponse("GERMAN1.");
-- talkEntry:addResponse("GERMAN2.");
-- talkEntry:addResponse("GERMAN3.");
-- talkingNPC:addTalkingEntry(talkEntry);
-- end;
-- if (true) then
-- local talkEntry = npc.base.talk.talkNPCEntry();
-- talkEntry:addTrigger("Malachin");
-- talkEntry:addTrigger("Malach�n");
-- talkEntry:addCondition(npc.base.condition.language.language("english"));
-- talkEntry:addResponse("ENGLISH1.");
-- talkEntry:addResponse("ENGLISH2.");
-- talkEntry:addResponse("ENGLISH3.");
-- talkingNPC:addTalkingEntry(talkEntry);
-- end;
-- if (true) then
-- local talkEntry = npc.base.talk.talkNPCEntry();
-- talkEntry:addTrigger("Malachin");
-- talkEntry:addTrigger("Malach�n");
-- talkEntry:addResponse("GERMAN1.");
-- talkEntry:addResponse("GERMAN2.");
-- talkEntry:addResponse("GERMAN3.");
-- talkingNPC:addTalkingEntry(talkEntry);
-- end;
-- if (true) then
-- local talkEntry = npc.base.talk.talkNPCEntry();
-- talkEntry:addTrigger("Moshran");
-- talkEntry:addCondition(npc.base.condition.language.language("english"));
-- talkEntry:addResponse("ENGLISH1.");
-- talkEntry:addResponse("ENGLISH2.");
-- talkEntry:addResponse("ENGLISH3.");
-- talkingNPC:addTalkingEntry(talkEntry);
-- end;
-- if (true) then
-- local talkEntry = npc.base.talk.talkNPCEntry();
-- talkEntry:addTrigger("Moshran");
-- talkEntry:addResponse("GERMAN1.");
-- talkEntry:addResponse("GERMAN2.");
-- talkEntry:addResponse("GERMAN3.");
-- talkingNPC:addTalkingEntry(talkEntry);
-- end;
-- if (true) then
-- local talkEntry = npc.base.talk.talkNPCEntry();
-- talkEntry:addTrigger("Nargun");
-- talkEntry:addTrigger("Narg�n");
-- talkEntry:addTrigger("Narg�n");
-- talkEntry:addCondition(npc.base.condition.language.language("english"));
-- talkEntry:addResponse("ENGLISH1.");
-- talkEntry:addResponse("ENGLISH2.");
-- talkEntry:addResponse("ENGLISH3.");
-- talkingNPC:addTalkingEntry(talkEntry);
-- end;
-- if (true) then
-- local talkEntry = npc.base.talk.talkNPCEntry();
-- talkEntry:addTrigger("Nargun");
-- talkEntry:addTrigger("Narg�n");
-- talkEntry:addTrigger("Narg�n");
-- talkEntry:addResponse("GERMAN1.");
-- talkEntry:addResponse("GERMAN2.");
-- talkEntry:addResponse("GERMAN3.");
-- talkingNPC:addTalkingEntry(talkEntry);
-- end;
-- if (true) then
-- local talkEntry = npc.base.talk.talkNPCEntry();
-- talkEntry:addTrigger("Oldra");
-- talkEntry:addCondition(npc.base.condition.language.language("english"));
-- talkEntry:addResponse("ENGLISH1.");
-- talkEntry:addResponse("ENGLISH2.");
-- talkEntry:addResponse("ENGLISH3.");
-- talkingNPC:addTalkingEntry(talkEntry);
-- end;
-- if (true) then
-- local talkEntry = npc.base.talk.talkNPCEntry();
-- talkEntry:addTrigger("Oldra");
-- talkEntry:addResponse("GERMAN1.");
-- talkEntry:addResponse("GERMAN2.");
-- talkEntry:addResponse("GERMAN3.");
-- talkingNPC:addTalkingEntry(talkEntry);
-- end;
-- if (true) then
-- local talkEntry = npc.base.talk.talkNPCEntry();
-- talkEntry:addTrigger("Ronagan");
-- talkEntry:addCondition(npc.base.condition.language.language("english"));
-- talkEntry:addResponse("ENGLISH1.");
-- talkEntry:addResponse("ENGLISH2.");
-- talkEntry:addResponse("ENGLISH3.");
-- talkingNPC:addTalkingEntry(talkEntry);
-- end;
-- if (true) then
-- local talkEntry = npc.base.talk.talkNPCEntry();
-- talkEntry:addTrigger("Ronagan");
-- talkEntry:addResponse("GERMAN1.");
-- talkEntry:addResponse("GERMAN2.");
-- talkEntry:addResponse("GERMAN3.");
-- talkingNPC:addTalkingEntry(talkEntry);
-- end;
-- if (true) then
-- local talkEntry = npc.base.talk.talkNPCEntry();
-- talkEntry:addTrigger("Sirani");
-- talkEntry:addCondition(npc.base.condition.language.language("english"));
-- talkEntry:addResponse("ENGLISH1.");
-- talkEntry:addResponse("ENGLISH2.");
-- talkEntry:addResponse("ENGLISH3.");
-- talkingNPC:addTalkingEntry(talkEntry);
-- end;
-- if (true) then
-- local talkEntry = npc.base.talk.talkNPCEntry();
-- talkEntry:addTrigger("Sirani");
-- talkEntry:addResponse("GERMAN1.");
-- talkEntry:addResponse("GERMAN2.");
-- talkEntry:addResponse("GERMAN3.");
-- talkingNPC:addTalkingEntry(talkEntry);
-- end;
-- if (true) then
-- local talkEntry = npc.base.talk.talkNPCEntry();
-- talkEntry:addTrigger("Tanora");
-- talkEntry:addTrigger("Zelphia");
-- talkEntry:addCondition(npc.base.condition.language.language("english"));
-- talkEntry:addResponse("ENGLISH1.");
-- talkEntry:addResponse("ENGLISH2.");
-- talkEntry:addResponse("ENGLISH3.");
-- talkingNPC:addTalkingEntry(talkEntry);
-- end;
-- if (true) then
-- local talkEntry = npc.base.talk.talkNPCEntry();
-- talkEntry:addTrigger("Tanora");
-- talkEntry:addTrigger("Zelphia");
-- talkEntry:addResponse("GERMAN1.");
-- talkEntry:addResponse("GERMAN2.");
-- talkEntry:addResponse("GERMAN3.");
-- talkingNPC:addTalkingEntry(talkEntry);
-- end;
-- if (true) then
-- local talkEntry = npc.base.talk.talkNPCEntry();
-- talkEntry:addTrigger("Ushara");
-- talkEntry:addCondition(npc.base.condition.language.language("english"));
-- talkEntry:addResponse("ENGLISH1.");
-- talkEntry:addResponse("ENGLISH2.");
-- talkEntry:addResponse("ENGLISH3.");
-- talkingNPC:addTalkingEntry(talkEntry);
-- end;
-- if (true) then
-- local talkEntry = npc.base.talk.talkNPCEntry();
-- talkEntry:addTrigger("Ushara");
-- talkEntry:addResponse("GERMAN1.");
-- talkEntry:addResponse("GERMAN2.");
-- talkEntry:addResponse("GERMAN3.");
-- talkingNPC:addTalkingEntry(talkEntry);
-- end;
-- if (true) then
-- local talkEntry = npc.base.talk.talkNPCEntry();
-- talkEntry:addTrigger("Zhambra");
-- talkEntry:addCondition(npc.base.condition.language.language("english"));
-- talkEntry:addResponse("ENGLISH1.");
-- talkEntry:addResponse("ENGLISH2.");
-- talkEntry:addResponse("ENGLISH3.");
-- talkingNPC:addTalkingEntry(talkEntry);
-- end;
-- if (true) then
-- local talkEntry = npc.base.talk.talkNPCEntry();
-- talkEntry:addTrigger("Zhambra");
-- talkEntry:addResponse("GERMAN1.");
-- talkEntry:addResponse("GERMAN2.");
-- talkEntry:addResponse("GERMAN3.");
-- talkingNPC:addTalkingEntry(talkEntry);
-- end;
-- if (true) then
-- local talkEntry = npc.base.talk.talkNPCEntry();
-- talkEntry:addTrigger("quest");
-- talkEntry:addCondition(npc.base.condition.language.language("english"));
-- talkEntry:addResponse("ENGLISH1.");
-- talkEntry:addResponse("ENGLISH2.");
-- talkEntry:addResponse("ENGLISH3.");
-- talkingNPC:addTalkingEntry(talkEntry);
-- end;
-- if (true) then
-- local talkEntry = npc.base.talk.talkNPCEntry();
-- talkEntry:addTrigger("quest");
-- talkEntry:addCondition(npc.base.condition.language.language("german"));
-- talkEntry:addResponse("GERMAN1.");
-- talkEntry:addResponse("GERMAN2.");
-- talkEntry:addResponse("GERMAN3.");
-- talkingNPC:addTalkingEntry(talkEntry);
-- end;
-- if (true) then
-- local talkEntry = npc.base.talk.talkNPCEntry();
-- talkEntry:addTrigger("task");
-- talkEntry:addTrigger("adventure");
-- talkEntry:addResponse("ENGLISH1.");
-- talkEntry:addResponse("ENGLISH2.");
-- talkEntry:addResponse("ENGLISH3.");
-- talkingNPC:addTalkingEntry(talkEntry);
-- end;
-- if (true) then
-- local talkEntry = npc.base.talk.talkNPCEntry();
-- talkEntry:addTrigger("Auftrag");
-- talkEntry:addTrigger("Aufgabe");
-- talkEntry:addTrigger("Abenteuer");
-- talkEntry:addResponse("GERMAN1.");
-- talkEntry:addResponse("GERMAN2.");
-- talkEntry:addResponse("GERMAN3.");
-- talkingNPC:addTalkingEntry(talkEntry);
-- end;
-- if (true) then
-- local talkEntry = npc.base.talk.talkNPCEntry();
-- talkEntry:addTrigger("Yes");
-- talkEntry:addResponse("ENGLISH1.");
-- talkEntry:addResponse("ENGLISH2.");
-- talkEntry:addResponse("ENGLISH3.");
-- talkingNPC:addTalkingEntry(talkEntry);
-- end;
-- if (true) then
-- local talkEntry = npc.base.talk.talkNPCEntry();
-- talkEntry:addTrigger("Ja");
-- talkEntry:addResponse("GERMAN1.");
-- talkEntry:addResponse("GERMAN2.");
-- talkEntry:addResponse("GERMAN3.");
-- talkingNPC:addTalkingEntry(talkEntry);
-- end;
-- if (true) then
-- local talkEntry = npc.base.talk.talkNPCEntry();
-- talkEntry:addTrigger("No");
-- talkEntry:addResponse("ENGLISH1.");
-- talkEntry:addResponse("ENGLISH2.");
-- talkEntry:addResponse("ENGLISH3.");
-- talkingNPC:addTalkingEntry(talkEntry);
-- end;
-- if (true) then
-- local talkEntry = npc.base.talk.talkNPCEntry();
-- talkEntry:addTrigger("Nein");
-- talkEntry:addResponse("GERMAN1.");
-- talkEntry:addResponse("GERMAN2.");
-- talkEntry:addResponse("GERMAN3.");
-- talkingNPC:addTalkingEntry(talkEntry);
-- end;
-- talkingNPC:addCycleText("GERMAN.", "ENGLISH.");
-- talkingNPC:addCycleText("GERMAN.", "ENGLISH.");
-- talkingNPC:addCycleText("GERMAN.", "ENGLISH.");
-- talkingNPC:addCycleText("GERMAN.", "ENGLISH.");
-- talkingNPC:addCycleText("GERMAN.", "ENGLISH.");
-- talkingNPC:addCycleText("GERMAN.", "ENGLISH.");
-- talkingNPC:addCycleText("GERMAN.", "ENGLISH.");
-- talkingNPC:addCycleText("GERMAN.", "ENGLISH.");
-- talkingNPC:addCycleText("GERMAN.", "ENGLISH.");
-- talkingNPC:addCycleText("GERMAN.", "ENGLISH.");
-- ]]
-- mainNPC:addLanguage(0);
-- mainNPC:addLanguage(1);
-- mainNPC:setDefaultLanguage(0);
-- mainNPC:setLookat("Ein st�mmiger Mann, der die Uniform eines Soldaten von Cadomyr tr�gt.", "A sturdy man who is wearing the uniform of a soldat of Cadomyr.");
-- mainNPC:setUseMessage("Fass mich nicht an!", "Do not touch me!");
-- mainNPC:setConfusedMessage("#me schaut dich verwirrt an.", "#me looks at you confused.");
-- mainNPC:setAutoIntroduceMode(true);
-- mainNPC:initDone();

-- end;

-- function receiveText(texttype, message, speaker)
	-- mainNPC:receiveText(speaker, message);
	-- --npc.base.guards_static.CheckAdminCommand(thisNPC,speaker,message);
-- end;
-- function nextCycle()
	-- mainNPC:nextCycle();
	-- --[[
	-- if not guards_init then
		-- -- init after 10 cycles
		-- guards_init = 10;
		-- gCount = 0;
	-- end
	-- if guards_init == 0 then
		-- guards_init = -1;
		-- --npc.base.guards_static.Init(thisNPC, 1, position(118,624,0), 5);
	-- elseif guards_init > 0 then
		-- guards_init = guards_init - 1;
	-- end
	-- if gCount == 4 and guards_init == 0 then
		-- gCount = 0;
		-- npc.base.guards_static.CheckForEnemies(thisNPC);
	-- else
		-- gCount = gCount + 1;
	-- end]]
-- end;
-- function lookAtNpc(char, mode) mainNPC:lookAt(char, mode); end;
-- function useNPC(char, counter, param) mainNPC:use(char); end;
-- initNpc();
-- initNpc = nil;
-- -- END