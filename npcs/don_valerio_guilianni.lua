-- INSERT INTO npc VALUES (nextval('npc_seq'),1,358,235,0,4,false,'Don Valerio Guilianni','npc_don_valerio_guilianni.lua',0);

require("npcs.base.autonpcfunctions")
module("npcs.don_valerio_guilianni")

function useNPC(user,counter,param)
    thisNPC:increaseSkill(1,"common language",100);
    thisNPC:talkLanguage(CCharacter.say, CPlayer.german, "Finger weg!");
    thisNPC:talkLanguage(CCharacter.say, CPlayer.english, "Don't you touch me!");
end

function initializeNpc()
    if TraderFirst then
        return true;
    end

    npcs.base.autonpcfunctions.InitTalkLists();

    -- ********* START DYNAMIC PART ********

    QuestID = 0;
    -- NPC by Estralis Seborian
    -- Help
    npcs.base.autonpcfunctions.AddTraderTrigger("Help","");
    npcs.base.autonpcfunctions.AddConsequence("inform","[Game Help] This NPC is Don Valerio Guilianni of Galmair. Keyphrases: TRIGGERS.");
    npcs.base.autonpcfunctions.AddTraderTrigger("Hilfe","");
    npcs.base.autonpcfunctions.AddConsequence("inform","[Spielhilfe] Dieser NPC ist Don Valerio Guilianni von Galmair. Schl�sselw�rter: TRIGGERS.");
    -- General speech
    npcs.base.autonpcfunctions.AddTraderTrigger("Hello","ENGLISH1.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Greetings");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Be greeted");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Hail");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Good day");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Good morning");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Good evening");
    npcs.base.autonpcfunctions.AddAdditionalText("ENGLISH2.");
    npcs.base.autonpcfunctions.AddAdditionalText("ENGLISH3.");
    npcs.base.autonpcfunctions.AddTraderTrigger("Gr��e","GERMAN1.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Gru�");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Seid gegr��t");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Guten Tag");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Guten Abend");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Mahlzeit");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Tach");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Moin");
    npcs.base.autonpcfunctions.AddAdditionalText("GERMAN2.");
    npcs.base.autonpcfunctions.AddAdditionalText("GERMAN3.");
    npcs.base.autonpcfunctions.AddTraderTrigger("Hiho","ENGLISH1.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Hallo");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Hey");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Greebas");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Greebs");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddAdditionalText("ENGLISH2.");
    npcs.base.autonpcfunctions.AddAdditionalText("ENGLISH3.");
    npcs.base.autonpcfunctions.AddTraderTrigger("Hiho","GERMAN1.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Hallo");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Hey");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Greebas");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Greebs");
    npcs.base.autonpcfunctions.AddCondition("lang","german");
    npcs.base.autonpcfunctions.AddAdditionalText("GERMAN2.");
    npcs.base.autonpcfunctions.AddAdditionalText("GERMAN3.");
    npcs.base.autonpcfunctions.AddTraderTrigger("Farewell","ENGLISH1.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Good bye");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Bye");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Fare thy well");
    npcs.base.autonpcfunctions.AddAdditionalText("ENGLISH2.");
    npcs.base.autonpcfunctions.AddAdditionalText("ENGLISH3.");
    npcs.base.autonpcfunctions.AddTraderTrigger("Tsch��","GERMAN1.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Tsch�ss");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Wiedersehen");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Gehabt euch wohl");
    npcs.base.autonpcfunctions.AddAdditionalText("GERMAN2.");
    npcs.base.autonpcfunctions.AddAdditionalText("GERMAN3.");
    npcs.base.autonpcfunctions.AddTraderTrigger("Ciao","ENGLISH1.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Adieu");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Au revoir");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddAdditionalText("ENGLISH2.");
    npcs.base.autonpcfunctions.AddAdditionalText("ENGLISH3.");
    npcs.base.autonpcfunctions.AddTraderTrigger("Ciao","GERMAN1.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Adieu");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Au revoir");
    npcs.base.autonpcfunctions.AddCondition("lang","german");
    npcs.base.autonpcfunctions.AddAdditionalText("GERMAN2.");
    npcs.base.autonpcfunctions.AddAdditionalText("GERMAN3.");
    npcs.base.autonpcfunctions.AddTraderTrigger("How are you","ENGLISH1.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("How feel");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("How do you do");
    npcs.base.autonpcfunctions.AddAdditionalText("ENGLISH2.");
    npcs.base.autonpcfunctions.AddAdditionalText("ENGLISH3.");
    npcs.base.autonpcfunctions.AddTraderTrigger("Wie geht","GERMAN1.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Wie f�hlst");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Wie ist es ergangen");
    npcs.base.autonpcfunctions.AddAdditionalText("GERMAN2.");
    npcs.base.autonpcfunctions.AddAdditionalText("GERMAN3.");
    npcs.base.autonpcfunctions.AddTraderTrigger("your name","ENGLISH1.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("who are you");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("who art thou");
    npcs.base.autonpcfunctions.AddAdditionalText("ENGLISH2.");
    npcs.base.autonpcfunctions.AddAdditionalText("ENGLISH3.");
    npcs.base.autonpcfunctions.AddTraderTrigger("dein name","GERMAN1.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("wer bist du");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("wer seid ihr");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("wie hei�t");
    npcs.base.autonpcfunctions.AddAdditionalText("GERMAN2.");
    npcs.base.autonpcfunctions.AddAdditionalText("GERMAN3.");
    -- Catching typical NPC phrases
    npcs.base.autonpcfunctions.AddTraderTrigger("what sell","ENGLISH1.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("what buy");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("list wares");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("price of");
    npcs.base.autonpcfunctions.AddAdditionalText("ENGLISH2.");
    npcs.base.autonpcfunctions.AddAdditionalText("ENGLISH3.");
    npcs.base.autonpcfunctions.AddTraderTrigger("was verkauf","GERMAN1.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("was kauf");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("warenliste");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("preis von");
    npcs.base.autonpcfunctions.AddAdditionalText("GERMAN2.");
    npcs.base.autonpcfunctions.AddAdditionalText("GERMAN3.");
    npcs.base.autonpcfunctions.AddTraderTrigger("tell something","ENGLISH1.");
    npcs.base.autonpcfunctions.AddAdditionalText("ENGLISH2.");
    npcs.base.autonpcfunctions.AddAdditionalText("ENGLISH3.");
    npcs.base.autonpcfunctions.AddTraderTrigger("erz�hl was","GERMAN1.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("erz�hl etwas");
    npcs.base.autonpcfunctions.AddAdditionalText("GERMAN2.");
    npcs.base.autonpcfunctions.AddAdditionalText("GERMAN3.");
    -- Small talk: The talk here should focus on possible questions. Feel free to add more!
    npcs.base.autonpcfunctions.AddTraderTrigger("profession","ENGLISH1.");
    npcs.base.autonpcfunctions.AddAdditionalText("ENGLISH2.");
    npcs.base.autonpcfunctions.AddAdditionalText("ENGLISH3.");
    npcs.base.autonpcfunctions.AddTraderTrigger("beruf","GERMAN1.");
    npcs.base.autonpcfunctions.AddAdditionalText("GERMAN2.");
    npcs.base.autonpcfunctions.AddAdditionalText("GERMAN3.");
    npcs.base.autonpcfunctions.AddTraderTrigger("job","GERMAN1.");
    npcs.base.autonpcfunctions.AddCondition("lang","german");
    npcs.base.autonpcfunctions.AddAdditionalText("GERMAN2.");
    npcs.base.autonpcfunctions.AddAdditionalText("GERMAN3.");
    npcs.base.autonpcfunctions.AddTraderTrigger("job","ENGLISH1.");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddAdditionalText("ENGLISH2.");
    npcs.base.autonpcfunctions.AddAdditionalText("ENGLISH3.");
    npcs.base.autonpcfunctions.AddTraderTrigger("Gobaith","ENGLISH1.");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddAdditionalText("ENGLISH2.");
    npcs.base.autonpcfunctions.AddAdditionalText("ENGLISH3.");
    npcs.base.autonpcfunctions.AddTraderTrigger("Gobaith","GERMAN1.");
    npcs.base.autonpcfunctions.AddCondition("lang","german");
    npcs.base.autonpcfunctions.AddAdditionalText("GERMAN2.");
    npcs.base.autonpcfunctions.AddAdditionalText("GERMAN3.");
    -- More small talk; add at least five triggers
    npcs.base.autonpcfunctions.AddTraderTrigger("ENGLISH1.","ENGLISH1.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("ENGLISH2.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("ENGLISH3.");
    npcs.base.autonpcfunctions.AddAdditionalText("ENGLISH2.");
    npcs.base.autonpcfunctions.AddAdditionalText("ENGLISH3.");
    npcs.base.autonpcfunctions.AddTraderTrigger("ENGLISH1.","ENGLISH1.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("ENGLISH2.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("ENGLISH3.");
    npcs.base.autonpcfunctions.AddAdditionalText("ENGLISH2.");
    npcs.base.autonpcfunctions.AddAdditionalText("ENGLISH3.");
    npcs.base.autonpcfunctions.AddTraderTrigger("ENGLISH1.","ENGLISH1.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("ENGLISH2.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("ENGLISH3.");
    npcs.base.autonpcfunctions.AddAdditionalText("ENGLISH2.");
    npcs.base.autonpcfunctions.AddAdditionalText("ENGLISH3.");
    npcs.base.autonpcfunctions.AddTraderTrigger("ENGLISH1.","ENGLISH1.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("ENGLISH2.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("ENGLISH3.");
    npcs.base.autonpcfunctions.AddAdditionalText("ENGLISH2.");
    npcs.base.autonpcfunctions.AddAdditionalText("ENGLISH3.");
    npcs.base.autonpcfunctions.AddTraderTrigger("ENGLISH1.","ENGLISH1.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("ENGLISH2.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("ENGLISH3.");
    npcs.base.autonpcfunctions.AddAdditionalText("ENGLISH2.");
    npcs.base.autonpcfunctions.AddAdditionalText("ENGLISH3.");
    npcs.base.autonpcfunctions.AddTraderTrigger("GERMAN1.","GERMAN1.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("GERMAN2.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("GERMAN3.");
    npcs.base.autonpcfunctions.AddAdditionalText("GERMAN2.");
    npcs.base.autonpcfunctions.AddAdditionalText("GERMAN3.");
    npcs.base.autonpcfunctions.AddTraderTrigger("GERMAN1.","GERMAN1.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("GERMAN2.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("GERMAN3.");
    npcs.base.autonpcfunctions.AddAdditionalText("GERMAN2.");
    npcs.base.autonpcfunctions.AddAdditionalText("GERMAN3.");
    npcs.base.autonpcfunctions.AddTraderTrigger("GERMAN1.","GERMAN1.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("GERMAN2.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("GERMAN3.");
    npcs.base.autonpcfunctions.AddAdditionalText("GERMAN2.");
    npcs.base.autonpcfunctions.AddAdditionalText("GERMAN3.");
    npcs.base.autonpcfunctions.AddTraderTrigger("GERMAN1.","GERMAN1.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("GERMAN2.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("GERMAN3.");
    npcs.base.autonpcfunctions.AddAdditionalText("GERMAN2.");
    npcs.base.autonpcfunctions.AddAdditionalText("GERMAN3.");
    npcs.base.autonpcfunctions.AddTraderTrigger("GERMAN1.","GERMAN1.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("GERMAN2.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("GERMAN3.");
    npcs.base.autonpcfunctions.AddAdditionalText("GERMAN2.");
    npcs.base.autonpcfunctions.AddAdditionalText("GERMAN3.");
    -- Faction stuff
    npcs.base.autonpcfunctions.AddTraderTrigger("Elvaine","ENGLISH1.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Morgan");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("archmage");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Erzmagier");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddAdditionalText("ENGLISH2.");
    npcs.base.autonpcfunctions.AddAdditionalText("ENGLISH3.");
    npcs.base.autonpcfunctions.AddTraderTrigger("Elvaine","GERMAN1.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Morgan");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("archmage");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Erzmagier");
    npcs.base.autonpcfunctions.AddCondition("lang","german");
    npcs.base.autonpcfunctions.AddAdditionalText("GERMAN2.");
    npcs.base.autonpcfunctions.AddAdditionalText("GERMAN3.");
    npcs.base.autonpcfunctions.AddTraderTrigger("Runewick","ENGLISH1.");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddAdditionalText("ENGLISH2.");
    npcs.base.autonpcfunctions.AddAdditionalText("ENGLISH3.");
    npcs.base.autonpcfunctions.AddTraderTrigger("Runewick","GERMAN1.");
    npcs.base.autonpcfunctions.AddCondition("lang","german");
    npcs.base.autonpcfunctions.AddAdditionalText("GERMAN2.");
    npcs.base.autonpcfunctions.AddAdditionalText("GERMAN3.");
    npcs.base.autonpcfunctions.AddTraderTrigger("Valerio","ENGLISH1.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Guilianni");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Don");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddAdditionalText("ENGLISH2.");
    npcs.base.autonpcfunctions.AddAdditionalText("ENGLISH3.");
    npcs.base.autonpcfunctions.AddTraderTrigger("Valerio","GERMAN1.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Guilianni");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Don");
    npcs.base.autonpcfunctions.AddCondition("lang","german");
    npcs.base.autonpcfunctions.AddAdditionalText("GERMAN2.");
    npcs.base.autonpcfunctions.AddAdditionalText("GERMAN3.");
    npcs.base.autonpcfunctions.AddTraderTrigger("Galmair","ENGLISH1.");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddAdditionalText("ENGLISH2.");
    npcs.base.autonpcfunctions.AddAdditionalText("ENGLISH3.");
    npcs.base.autonpcfunctions.AddTraderTrigger("Galmair","GERMAN1.");
    npcs.base.autonpcfunctions.AddCondition("lang","german");
    npcs.base.autonpcfunctions.AddAdditionalText("GERMAN2.");
    npcs.base.autonpcfunctions.AddAdditionalText("GERMAN3.");
    npcs.base.autonpcfunctions.AddTraderTrigger("rosaline","ENGLISH1.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("k�nigin");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("queen");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("edwards");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddAdditionalText("ENGLISH2.");
    npcs.base.autonpcfunctions.AddAdditionalText("ENGLISH3.");
    npcs.base.autonpcfunctions.AddTraderTrigger("rosaline","GERMAN1.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("k�nigin");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("queen");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("edwards");
    npcs.base.autonpcfunctions.AddCondition("lang","german");
    npcs.base.autonpcfunctions.AddAdditionalText("GERMAN2.");
    npcs.base.autonpcfunctions.AddAdditionalText("GERMAN3.");
    npcs.base.autonpcfunctions.AddTraderTrigger("Cadomyr","ENGLISH1.");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddAdditionalText("ENGLISH2.");
    npcs.base.autonpcfunctions.AddAdditionalText("ENGLISH3.");
    npcs.base.autonpcfunctions.AddTraderTrigger("Cadomyr","GERMAN1.");
    npcs.base.autonpcfunctions.AddCondition("lang","german");
    npcs.base.autonpcfunctions.AddAdditionalText("GERMAN2.");
    npcs.base.autonpcfunctions.AddAdditionalText("GERMAN3.");
    -- Main land factions
    npcs.base.autonpcfunctions.AddTraderTrigger("albar","ENGLISH1.");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddAdditionalText("ENGLISH2.");
    npcs.base.autonpcfunctions.AddAdditionalText("ENGLISH3.");
    npcs.base.autonpcfunctions.AddTraderTrigger("albar","GERMAN1.");
    npcs.base.autonpcfunctions.AddCondition("lang","german");
    npcs.base.autonpcfunctions.AddAdditionalText("GERMAN2.");
    npcs.base.autonpcfunctions.AddAdditionalText("GERMAN3.");
    npcs.base.autonpcfunctions.AddTraderTrigger("gynk","ENGLISH1.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("gync");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddAdditionalText("ENGLISH2.");
    npcs.base.autonpcfunctions.AddAdditionalText("ENGLISH3.");
    npcs.base.autonpcfunctions.AddTraderTrigger("gync","GERMAN1.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("gynk");
    npcs.base.autonpcfunctions.AddCondition("lang","german");
    npcs.base.autonpcfunctions.AddAdditionalText("GERMAN2.");
    npcs.base.autonpcfunctions.AddAdditionalText("GERMAN3.");
    npcs.base.autonpcfunctions.AddTraderTrigger("salkama","ENGLISH1.");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddAdditionalText("ENGLISH2.");
    npcs.base.autonpcfunctions.AddAdditionalText("ENGLISH3.");
    npcs.base.autonpcfunctions.AddTraderTrigger("salkama","GERMAN1.");
    npcs.base.autonpcfunctions.AddCondition("lang","german");
    npcs.base.autonpcfunctions.AddAdditionalText("GERMAN2.");
    npcs.base.autonpcfunctions.AddAdditionalText("GERMAN3.");
    -- Gods; gods are relevant, so the faction leader has to have an opinion on ALL gods
    npcs.base.autonpcfunctions.AddTraderTrigger("Adron","ENGLISH1.");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddAdditionalText("ENGLISH2.");
    npcs.base.autonpcfunctions.AddAdditionalText("ENGLISH3.");
    npcs.base.autonpcfunctions.AddTraderTrigger("Adron","GERMAN1.");
    npcs.base.autonpcfunctions.AddAdditionalText("GERMAN2.");
    npcs.base.autonpcfunctions.AddAdditionalText("GERMAN3.");
    npcs.base.autonpcfunctions.AddTraderTrigger("Bragon","ENGLISH1.");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddAdditionalText("ENGLISH2.");
    npcs.base.autonpcfunctions.AddAdditionalText("ENGLISH3.");
    npcs.base.autonpcfunctions.AddTraderTrigger("Bragon","GERMAN1.");
    npcs.base.autonpcfunctions.AddAdditionalText("GERMAN2.");
    npcs.base.autonpcfunctions.AddAdditionalText("GERMAN3.");
    npcs.base.autonpcfunctions.AddTraderTrigger("Cherga","ENGLISH1.");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddAdditionalText("ENGLISH2.");
    npcs.base.autonpcfunctions.AddAdditionalText("ENGLISH3.");
    npcs.base.autonpcfunctions.AddTraderTrigger("Cherga","GERMAN1.");
    npcs.base.autonpcfunctions.AddAdditionalText("GERMAN2.");
    npcs.base.autonpcfunctions.AddAdditionalText("GERMAN3.");
    npcs.base.autonpcfunctions.AddTraderTrigger("Elara","ENGLISH1.");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddAdditionalText("ENGLISH2.");
    npcs.base.autonpcfunctions.AddAdditionalText("ENGLISH3.");
    npcs.base.autonpcfunctions.AddTraderTrigger("Elara","GERMAN1.");
    npcs.base.autonpcfunctions.AddAdditionalText("GERMAN2.");
    npcs.base.autonpcfunctions.AddAdditionalText("GERMAN3.");
    npcs.base.autonpcfunctions.AddTraderTrigger("Eldan","ENGLISH1.");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddAdditionalText("ENGLISH2.");
    npcs.base.autonpcfunctions.AddAdditionalText("ENGLISH3.");
    npcs.base.autonpcfunctions.AddTraderTrigger("Eldan","GERMAN1.");
    npcs.base.autonpcfunctions.AddAdditionalText("GERMAN2.");
    npcs.base.autonpcfunctions.AddAdditionalText("GERMAN3.");
    npcs.base.autonpcfunctions.AddTraderTrigger("Findari","ENGLISH1.");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddAdditionalText("ENGLISH2.");
    npcs.base.autonpcfunctions.AddAdditionalText("ENGLISH3.");
    npcs.base.autonpcfunctions.AddTraderTrigger("Findari","GERMAN1.");
    npcs.base.autonpcfunctions.AddAdditionalText("GERMAN2.");
    npcs.base.autonpcfunctions.AddAdditionalText("GERMAN3.");
    npcs.base.autonpcfunctions.AddTraderTrigger("Irmorom","ENGLISH1.");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddAdditionalText("ENGLISH2.");
    npcs.base.autonpcfunctions.AddAdditionalText("ENGLISH3.");
    npcs.base.autonpcfunctions.AddTraderTrigger("Irmorom","GERMAN1.");
    npcs.base.autonpcfunctions.AddAdditionalText("GERMAN2.");
    npcs.base.autonpcfunctions.AddAdditionalText("GERMAN3.");
    npcs.base.autonpcfunctions.AddTraderTrigger("Malachin","ENGLISH1.");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddAdditionalText("ENGLISH2.");
    npcs.base.autonpcfunctions.AddAdditionalText("ENGLISH3.");
    npcs.base.autonpcfunctions.AddTraderTrigger("Malachin","GERMAN1.");
    npcs.base.autonpcfunctions.AddAdditionalText("GERMAN2.");
    npcs.base.autonpcfunctions.AddAdditionalText("GERMAN3.");
    npcs.base.autonpcfunctions.AddTraderTrigger("Moshran","ENGLISH1.");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddAdditionalText("ENGLISH2.");
    npcs.base.autonpcfunctions.AddAdditionalText("ENGLISH3.");
    npcs.base.autonpcfunctions.AddTraderTrigger("Moshran","GERMAN1.");
    npcs.base.autonpcfunctions.AddAdditionalText("GERMAN2.");
    npcs.base.autonpcfunctions.AddAdditionalText("GERMAN3.");
    npcs.base.autonpcfunctions.AddTraderTrigger("Nargun","ENGLISH1.");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddAdditionalText("ENGLISH2.");
    npcs.base.autonpcfunctions.AddAdditionalText("ENGLISH3.");
    npcs.base.autonpcfunctions.AddTraderTrigger("Nargun","GERMAN1.");
    npcs.base.autonpcfunctions.AddAdditionalText("GERMAN2.");
    npcs.base.autonpcfunctions.AddAdditionalText("GERMAN3.");
    npcs.base.autonpcfunctions.AddTraderTrigger("Oldra","ENGLISH1.");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddAdditionalText("ENGLISH2.");
    npcs.base.autonpcfunctions.AddAdditionalText("ENGLISH3.");
    npcs.base.autonpcfunctions.AddTraderTrigger("Oldra","GERMAN1.");
    npcs.base.autonpcfunctions.AddAdditionalText("GERMAN2.");
    npcs.base.autonpcfunctions.AddAdditionalText("GERMAN3.");
    npcs.base.autonpcfunctions.AddTraderTrigger("Ronagan","ENGLISH1.");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddAdditionalText("ENGLISH2.");
    npcs.base.autonpcfunctions.AddAdditionalText("ENGLISH3.");
    npcs.base.autonpcfunctions.AddTraderTrigger("Ronagan","GERMAN1.");
    npcs.base.autonpcfunctions.AddAdditionalText("GERMAN2.");
    npcs.base.autonpcfunctions.AddAdditionalText("GERMAN3.");
    npcs.base.autonpcfunctions.AddTraderTrigger("Sirani","ENGLISH1.");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddAdditionalText("ENGLISH2.");
    npcs.base.autonpcfunctions.AddAdditionalText("ENGLISH3.");
    npcs.base.autonpcfunctions.AddTraderTrigger("Sirani","GERMAN1.");
    npcs.base.autonpcfunctions.AddAdditionalText("GERMAN2.");
    npcs.base.autonpcfunctions.AddAdditionalText("GERMAN3.");
    npcs.base.autonpcfunctions.AddTraderTrigger("Tanora","ENGLISH1.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Zelphia");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddAdditionalText("ENGLISH2.");
    npcs.base.autonpcfunctions.AddAdditionalText("ENGLISH3.");
    npcs.base.autonpcfunctions.AddTraderTrigger("Tanora","GERMAN1.");
    npcs.base.autonpcfunctions.AddAdditionalText("GERMAN2.");
    npcs.base.autonpcfunctions.AddAdditionalText("GERMAN3.");
    npcs.base.autonpcfunctions.AddTraderTrigger("Ushara","ENGLISH1.");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddAdditionalText("ENGLISH2.");
    npcs.base.autonpcfunctions.AddAdditionalText("ENGLISH3.");
    npcs.base.autonpcfunctions.AddTraderTrigger("Ushara","GERMAN1.");
    npcs.base.autonpcfunctions.AddAdditionalText("GERMAN2.");
    npcs.base.autonpcfunctions.AddAdditionalText("GERMAN3.");
    npcs.base.autonpcfunctions.AddTraderTrigger("Zhambra","ENGLISH1.");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddAdditionalText("ENGLISH2.");
    npcs.base.autonpcfunctions.AddAdditionalText("ENGLISH3.");
    npcs.base.autonpcfunctions.AddTraderTrigger("Zhambra","GERMAN1.");
    npcs.base.autonpcfunctions.AddAdditionalText("GERMAN2.");
    npcs.base.autonpcfunctions.AddAdditionalText("GERMAN3.");
    -- Catching quest triggers
    npcs.base.autonpcfunctions.AddTraderTrigger("quest","ENGLISH1.");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddAdditionalText("ENGLISH2.");
    npcs.base.autonpcfunctions.AddAdditionalText("ENGLISH3.");
    npcs.base.autonpcfunctions.AddTraderTrigger("quest","GERMAN1.");
    npcs.base.autonpcfunctions.AddCondition("lang","german");
    npcs.base.autonpcfunctions.AddAdditionalText("GERMAN2.");
    npcs.base.autonpcfunctions.AddAdditionalText("GERMAN3.");
    npcs.base.autonpcfunctions.AddTraderTrigger("task","ENGLISH1.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("adventure");
    npcs.base.autonpcfunctions.AddAdditionalText("ENGLISH2.");
    npcs.base.autonpcfunctions.AddAdditionalText("ENGLISH3.");
    npcs.base.autonpcfunctions.AddTraderTrigger("Auftrag","GERMAN1.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Aufgabe");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Abenteuer");
    npcs.base.autonpcfunctions.AddAdditionalText("GERMAN2.");
    npcs.base.autonpcfunctions.AddAdditionalText("GERMAN3.");
    -- Last catch: Think about keyphrases the player might say and that are not caught until here
    npcs.base.autonpcfunctions.AddTraderTrigger("Yes","ENGLISH1.");
    npcs.base.autonpcfunctions.AddAdditionalText("ENGLISH2.");
    npcs.base.autonpcfunctions.AddAdditionalText("ENGLISH3.");
    npcs.base.autonpcfunctions.AddTraderTrigger("Ja","GERMAN1.");
    npcs.base.autonpcfunctions.AddAdditionalText("GERMAN2.");
    npcs.base.autonpcfunctions.AddAdditionalText("GERMAN3.");
    npcs.base.autonpcfunctions.AddTraderTrigger("No","ENGLISH1.");
    npcs.base.autonpcfunctions.AddAdditionalText("ENGLISH2.");
    npcs.base.autonpcfunctions.AddAdditionalText("ENGLISH3.");
    npcs.base.autonpcfunctions.AddTraderTrigger("Nein","GERMAN1.");
    npcs.base.autonpcfunctions.AddAdditionalText("GERMAN2.");
    npcs.base.autonpcfunctions.AddAdditionalText("GERMAN3.");
    -- Cycletext: Please add at least(!) ten cycletext messages. The more, the better. You can use emotes (#me is green), too.
    npcs.base.autonpcfunctions.AddCycleText("GERMAN.","ENGLISH.");
    npcs.base.autonpcfunctions.AddCycleText("GERMAN.","ENGLISH.");
    npcs.base.autonpcfunctions.AddCycleText("GERMAN.","ENGLISH.");
    npcs.base.autonpcfunctions.AddCycleText("GERMAN.","ENGLISH.");
    npcs.base.autonpcfunctions.AddCycleText("GERMAN.","ENGLISH.");
    npcs.base.autonpcfunctions.AddCycleText("GERMAN.","ENGLISH.");
    npcs.base.autonpcfunctions.AddCycleText("GERMAN.","ENGLISH.");
    npcs.base.autonpcfunctions.AddCycleText("GERMAN.","ENGLISH.");
    npcs.base.autonpcfunctions.AddCycleText("GERMAN.","ENGLISH.");
    npcs.base.autonpcfunctions.AddCycleText("GERMAN.","ENGLISH.");
    -- ********* END DYNAMIC PART ********
    TradSpeakLang={0,1};
    TradStdLang=0;

    npcs.base.autonpcfunctions.increaseLangSkill(TradSpeakLang);
    thisNPC.activeLanguage=TradStdLang;

end

function nextCycle()  -- ~10 times per second
    initializeNpc();
    npcs.base.autonpcfunctions.SpeakerCycle();
end

function receiveText(texttype, message, originator)
    if npcs.base.autonpcfunctions.BasicNPCChecks(originator,2) then
        if npcs.base.autonpcfunctions.LangOK(originator,TradSpeakLang) then
            npcs.base.autonpcfunctions.TellSmallTalk(message,originator);
        else
            npcs.base.autonpcfunctions.Confused(
               "#me sieht dich leicht verwirrt an",
               "#me looks at you a little confused"
            );
        end
    end
end