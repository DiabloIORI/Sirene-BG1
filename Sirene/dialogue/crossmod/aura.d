CHAIN IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("C0Aura",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraSirene1","GLOBAL",0)~ THEN BC0Aura C0AuraSirene1
~哎哟！扎错地方了……哦，但愿我没扎到什么要紧的动脉……~
DO ~SetGlobal("C0AuraSirene1","GLOBAL",1)~
== BC0Siren ~奥拉，你拿这些针到底在做什么？~
== BC0Aura ~我在照着一本寿龙医书学一种治疗手法，叫做「针灸」。听着古怪，但据说真管用……哎哟！不行，这一针也不对……~
== BC0Siren ~我……我希望你不会有危险。说实话，看你那样一遍遍往自己身上扎针，我很担心。~
== BC0Aura ~别担心，我都给针消过毒了，也严格照着书上的位置来。只是……拿自己练手实在很难。每次要下针，我都先想着疼，手一抖，准头就毁了。~
== BC0Siren ~既然如此……不如在我身上练，会不会好一些？我确信无论多痛，我都能忍。~
== BC0Aura ~不行！我绝不会拜托别人这种事，何况我还不知道万一……不过，我确实很好奇……~
== BC0Siren ~需要的话，你就慢慢想。你什么时候准备好，我都在。~
EXIT

CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("C0Aura",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraSirene2","GLOBAL",1)~ THEN BC0Siren C0AuraSirene2
~嗯？怎么了，奥拉？~
DO ~SetGlobal("C0AuraSirene2","GLOBAL",2)~
== BC0Aura ~我，呃，把工具都备好了。你……你真的愿意当我的试验对象？我总觉得这样不妥。~
== BC0Siren ~不必担心，奥拉。我受过、也忍过许多苦痛，这点痛我还受得住。~
== BC0Aura ~那……好吧，既然你这么说。得请你把手甲摘下来……我先从手臂开始。脑袋和后背我还不敢试……我来了……~
== BC0Siren ~啊……~
== BC0Aura ~呀！不好，不不不，对不起！我弄疼你了吗？这本来就不该做，我就知道……~
== BC0Siren ~不……恰恰相反，我此刻只觉得肩上的紧绷正在松开。看来这法子比我俩预想的都管用。~
== BC0Aura ~当真？太好了！那说明这手法真的——等等。你刚才的意思是，你本来以为会疼？~
== BC0Siren ~我……我有那么说吗？*咳* 抱歉，我不是那个意思。~
== BC0Aura ~算了，别提了。总算奏效了，我就高兴。老实说，我都不指望它能有什么结果。~
== BC0Siren ~你为何这么说？~
== BC0Aura ~*叹气* 书里说，针灸能调理体内的「气」……可我从没见过能证明「气」真存在的东西。老实说，起初我只当它是一堆糊弄人的说辞……所以才非拿人试个明白。~
== BC0Siren ~你拿自己试的，就是这套你自己都不信的治疗手法？~
== BC0Aura ~是。然后还拿你试了。对不起，本来什么岔子都可能出。~
== BC0Siren ~你不必求我宽恕。只是……请你别再拿自己冒这样的险。我不愿见你受伤。往后你若开口，这类试手的事，由我来替你做。~
== BC0Aura ~我……好吧。谢谢你，塞琳。~
EXIT