// BGEE specific banters & stuff

// Dorn conflict
CHAIN IF WEIGHT #-1 ~Global("C0SireneDorn","GLOBAL",2)~ THEN C0SirenJ C0dorn1
~<CHARNAME>，这个人……~
DO ~SetGlobal("C0SireneDorn","GLOBAL",3)~
== DORNJ%BG1_EET_% ~你要什么，小鬼？~
== C0SirenJ ~你清楚我想说什么。别想遮掩。你也许能瞒过我们的领头人，瞒不过我。~
= ~你身上有下层位面的气息。我太熟悉了，恶徒。我拒绝与你并肩同行。~
== DORNJ%BG1_EET_% ~你以为揭我的底就能叫我慌？我不在乎。你若对我的存在有意见，就用刀来说明。我很乐意把你这种懦东西串到我的刀上。~
END
	++ ~你们两个就不能好好相处？~ EXTERN C0SirenJ C0dorn2
	++ ~对不起，塞琳，可我还需要多恩。你该怎么做就怎么做。~ EXTERN C0SirenJ C0dorn3
	++ ~反正我从没喜欢过你，多恩。~ EXTERN DORNJ%BG1_EET_% C0dorn4

CHAIN C0SirenJ C0dorn2
~我既不容他留下，也不容他就此走开再去害无辜的人。他这种人，不配得半点仁慈与怜悯。~
== DORNJ%BG1_EET_% ~下一个受苦的就是你，圣武士小子。~
== C0SirenJ ~拔刀吧，没魂的杂种。~
END
	++ ~对不起，塞琳，可我还需要多恩。你该怎么做就怎么做。~ EXTERN C0SirenJ C0dorn3
	++ ~反正我从没喜欢过你，多恩。~ EXTERN DORNJ%BG1_EET_% C0dorn4
	++ ~哦，好吧。那就来吧。~ EXTERN C0SirenJ C0dorn5

CHAIN C0SirenJ C0dorn3
~如你所愿。恕我不得不如此。愿伊尔梅特怜悯你的灵魂，<CHARNAME>。~
DO ~SetGlobal("C0SireneJoined","GLOBAL",0) LeaveParty() Enemy() Attack("Dorn")~ 
EXIT

CHAIN DORNJ%BG1_EET_% C0dorn4
~那就死吧，假仁假义的蠢货！~
DO ~SetGlobal("%bg1_eet_dornp%ARTY","GLOBAL",0) LeaveParty() Enemy() Attack("C0Sirene")~ 
EXIT

CHAIN C0SirenJ C0dorn5
~你的裁决到了！~ [C0SIR021]
DO ~SetGlobal("C0SireneDornConflict","GLOBAL",1)~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0SireneDornConflict","GLOBAL",1)~ THEN C0SirenP C0dorn6
~在你手下受苦的人，仇已报了。~
DO ~SetGlobal("C0SireneDornConflict","GLOBAL",2) JoinParty()~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0SireneDornConflict","GLOBAL",1)~ THEN DORNP%BG1_EET_% C0dorn7
~哈！软弱，跟他们一个个都一样。我着实享受了这一场。让她烂在这儿吧，<CHARNAME>。~
DO ~SetGlobal("C0SireneDornConflict","GLOBAL",2) JoinParty()~
EXIT
	
// Neera

CHAIN IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Neera",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneNeera1","GLOBAL",0)~ THEN BNEERA%BG1_EET_% C0SireneNeera1
~你知道我喜欢你哪一点么，塞琳？~
DO ~SetGlobal("C0SireneNeera1","GLOBAL",1)~
== BC0SIREN ~你说。~
== BNEERA%BG1_EET_% ~你当圣武士，是因为你自己想当。虽说这事有点怪，我也不确定适不适合你，可那是你自己选的。~
== BC0SIREN ~也不全然如此，妮拉。毕竟我是在伊尔梅特的祭司中间长大的。当时我能有的选择并不多。~
== BNEERA%BG1_EET_% ~是啊，可你的圣武士本领也不是硬塞给你的。没什么拦着你去选你想当的，对吧？~
= ~招我烦的正是我的魔法。我是说，它挺好玩，可它自己就来了，不管我喜不喜欢。~
== BC0SIREN ~可你并不想摆脱它，是吧？你若愿意，那总归是办得到的。~
== BNEERA%BG1_EET_% ~嗯，这倒是。我确实喜欢我的魔法，哪怕它老是失控，每次念完咒都把我吓一跳。~
== BC0SIREN ~我这圣武士的位分也不轻松……而魔种的血只会叫事情更糟。~
== BNEERA%BG1_EET_% ~要说安慰的话，我知道长角是什么滋味！不过……那是因为我有一回把自己变成了一只山羊。唉，那可不好玩。~
= ~还有一回，我饿了想召个馅饼，结果召出了一头深渊魔。那可真吓人。你倒不吓人，你人很好。~
EXIT

// Rasaad

CHAIN IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Rasaad",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneRasaad1","GLOBAL",0)~ THEN BRASAAD%BG1_EET_% C0SireneRasaad1
~我觉出你也是远离家乡、走了很远，我的朋友。~
DO ~SetGlobal("C0SireneRasaad1","GLOBAL",1)~ 
== BC0SIREN ~不是家乡，不过我确实远离了我的教会，这话不假。~
== BRASAAD%BG1_EET_% ~你留下的东西里，有什么是你想念的么？~
== BC0SIREN ~不，我——你怎么会问起这个，拉萨德？~
== BRASAAD%BG1_EET_% ~今天我瞧见一只颜色少见的野兔从我们跟前逃开。它那身毛叫我想到家乡的金色沙海，很快我眼里到处都是卡利姆沙漠了。~
== BC0SIREN ~你一定很想念家乡。~
== BRASAAD%BG1_EET_% ~我想念的不是卡林杉，是我的兄长。我们常坐在大沙丘的顶上，对练了一整天累得不行，就数着星星，把彼此的袖子都灌满沙子。~
== BC0SIREN ~然后他死了？~
== BRASAAD%BG1_EET_% ~……是。~
== BC0SIREN ~我但愿我也有个兄长。至少你还有可珍爱的回忆。~
EXIT