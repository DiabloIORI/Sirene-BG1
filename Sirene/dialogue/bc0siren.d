BEGIN BC0SIREN

// Ajantis
CHAIN IF ~
  %BGT_VAR%
InParty("Ajantis")
See("Ajantis")
InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Ajantis",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneAjantis1","GLOBAL",0)~ THEN BC0SIREN C0SireneAjantis1
~阿詹提斯，你看我的目光并非无人察觉，我猜我知道你想说什么。就直说吧。~
DO ~SetGlobal("C0SireneAjantis1","GLOBAL",1)~
== BAJANT ~我说不出口。~
== BC0SIREN ~你只管说出你的顾虑，于我们两个都是解脱，海尔姆信徒。~
== BAJANT ~我真的说不出口，因为我自己也不知道我想说什么。~
= ~起初，我确实被你的模样弄得心生戒备。你穿着伊尔梅特信徒的行头，那是我极为敬重的；可你眼里我却看见魔种的血，那是我立誓要斩的……~
= ~我心里矛盾，不知该信什么。~
== BC0SIREN ~那么，也许我会向你证明我对公道的诚心。~
== BAJANT ~……~
= ~是，也许那能解了我心里的这团矛盾。那我们暂且不再谈这个，继续走吧。~
EXIT

CHAIN IF ~
  %BGT_VAR%
InParty("Ajantis")
See("Ajantis")
InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Ajantis",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneAjantis2","GLOBAL",0)~ THEN BC0SIREN C0SireneAjantis3
~你还只是个侍从，是么？~
DO ~SetGlobal("C0SireneAjantis2","GLOBAL",1)~
== BAJANT ~是，不过我的试炼快到了。随<CHARNAME>行走完之后，我会回光辉之心大厅，成为正式的骑士。~
== BC0SIREN ~能讲讲你的骑士团么？~
== BAJANT ~我……~
== BC0SIREN ~讲这些总不至于有害。~
== BAJANT ~好吧。光辉之心骑士团崇奉秩序与公道的神——首要是提尔、海尔姆与托姆，不过别的信仰的信徒也受欢迎。~
= ~我们这一支分为三：最尊贵骑士团，是年长的成员；骑士团本部，由四十岁以上的骑士组成；还有辅团，是给那些年纪还不足以在骑士团中真正任职的人的分支。~
= ~我就是某个辅团的成员，我的上司是可敬的凯尔顿·费尔坎大人，托姆的斗士。他是个公道的人，值得敬重。正是他要为我晋升骑士作保。~
== BC0SIREN ~我真心希望你能成，我的朋友。~
== BAJANT ~那你自己的那一支呢，女士，受苦圣战者？~
== BC0SIREN ~我从没真正属于哪个骑士团，阿詹提斯。我是在北方一个无名小村里由伊尔梅特的祭司们教出来的，可我的本事多半是自学的，只靠祈祷和信。我至今还没遇见过同支的另一个人，更别说像你们这样一整团。~
== BAJANT ~我明白了。女士，你寻的是同道之谊么，塞琳？~
== BC0SIREN ~也许。我自己也说不准，可有一天我也许会去寻你们的光辉之心骑士团。~
== BAJANT ~这……是个可敬的念头，女士；可我怕你不会被张开双臂欢迎。我如今明白得多些了，可旁人看见你，也许单凭模样就下判断。~
== BC0SIREN ~我知道。（叹气）被寻常人赶开是一回事，被同道武士这样对待又是另一回事。这正是我不得不承受的苦。~
EXIT

CHAIN IF ~
  %BGT_VAR%
InParty("Ajantis")
See("Ajantis")
InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Ajantis",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
GlobalGT("Chapter","GLOBAL",5)
Global("C0SireneAjantis2","GLOBAL",1)~ THEN BC0SIREN C0SireneAjantis3
~我们一起走了许多路，阿詹提斯。你还对我存疑么？~
DO ~SetGlobal("C0SireneAjantis2","GLOBAL",2)~
== BAJANT ~不了，女士。我相信你对一切善与公道的诚心，不亚于我见过的任何一位同道骑士。~
== BC0SIREN ~那么，你愿意考虑我先前求你的事么？~
== BAJANT ~是，我会把你的名字举荐给骑士团的上层，尽管我怕他们不会准。~
= ~我们的教长明智而公道，会考虑这事。可旁人……他们更世故，无疑会不肯，若不是为你的血，那就是为你的信仰。~
== BC0SIREN ~你肯替我出这份力，于我便够了，我的朋友。我不敢再指望更多。~
EXIT

// Alora

CHAIN IF ~
  %BGT_VAR%
InParty("Alora")
See("Alora")
InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Alora",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneAlora1","GLOBAL",0)~ THEN BALORA C0SireneAlora1
~我喜欢你，塞琳。你这么高，人却很好，还帮别人。~
DO ~SetGlobal("C0SireneAlora1","GLOBAL",1)~
== BC0SIREN ~我……嗯，谢谢你，阿萝拉。多数人夸我没这么直。或者说，根本没人夸我。~
== BALORA ~为什么呀？那些人多坏！谁会当你是个坏人？~
== BC0SIREN ~人们看一眼这对犄角，就已经替我定好了我是什么样的人。~ 
== BALORA ~那不公平！你的犄角一点也不吓人，我觉得它们挺可爱的！怎么还有人会觉得你是坏人？~
== BC0SIREN ~阿萝拉……我不是不受用，可你不知道人们对提夫林抱着怎样的偏见么？~ 
== BALORA ~不知道。毕竟我是半身人家里出来的。我家人对谁都一样不信，可我对谁都一样信！除非他们先使坏。~
== BC0SIREN ~我明白了。~
== BALORA ~你要的话，我可以做你的朋友！~
== BC0SIREN ~你真甜，亲爱的。~
EXIT

CHAIN IF ~
  %BGT_VAR%
InParty("Alora")
See("Alora")
InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Alora",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneAlora2","GLOBAL",0)~ THEN BC0SIREN C0SireneAlora2
~阿萝拉……我知道我那枚圣徽在你手上。我不生气，请还给我，好么？~
DO ~SetGlobal("C0SireneAlora2","GLOBAL",1)~
== BALORA ~（撇嘴）好——吧。我*本来*打算过些时候再还你的，你知道。~
= ~你干么戴着个两只手被红绳绑住的图案？~
== BC0SIREN ~那是伊尔梅特的符号，阿萝拉。你不知道么？~
== BALORA ~呃……不知道。我进过几回那些高个子的神殿，多半是去顺手牵羊，他们墙上总挂着自家神的大符号。可我从没见过这个。~
== BC0SIREN ~嗯。我猜你也不会见过。伊尔梅特的神殿通常比别家神的更小、更不气派。不是你会去的那种地方。~
== BALORA ~我信。可为什么是两只手？~
== BC0SIREN ~我记得动荡之年以前不是这样。伊尔梅特从前的符号是一具血淋淋的刑架，可，嗯……你能想见那在寻常百姓里多受欢迎。~
== BALORA ~哦。呃，恶心，太恶心了。要是有个神叫我整天戴着那种东西，我才不拜它。~
EXIT

// Branwen

CHAIN IF ~
  %BGT_VAR%
InParty("Branwen")
See("Branwen")
InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Branwen",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneBranwen1","GLOBAL",0)~ THEN BBRANW C0SireneBranwen1
~说实话，我不知该拿你怎么办。~
DO ~SetGlobal("C0SireneBranwen1","GLOBAL",1)~
== BC0SIREN ~我猜是因为我的出身？~
== BBRANW ~不，不是那个。你有武艺，这我敬重；可你的信仰与我的相左。我以战争与厮杀为乐，你却一有机会就避开它。~
== BC0SIREN ~战争带来苦，而我们伊尔梅特信徒正是要避这个。~
== BBRANW ~没有苦，就没有力量。~
== BC0SIREN ~是，受得住苦的人也确实有力量，这话不假。可我们不是那残忍的洛维亚塔信徒，随自己的意把痛与折磨散给别人。~
== BBRANW ~留意你指责的口气。我并非想看见弱者受苦；可身为武者，我们得认下苦总会落到所有人身上。~
== BC0SIREN ~这点我能同意。我担别人的苦，也因此更强。~
== BBRANW ~可代价是什么？压住别人的潜力，把他们娇养着？呸！照我看，不值。~
EXIT

// Coran

CHAIN IF ~
  %BGT_VAR%
InParty("Coran")
See("Coran")
InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Coran",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneCoran1","GLOBAL",0)~ THEN BCORAN C0SireneCoran1
~你知道么，亲爱的，你不该觉得非得在我们遇见的每个人面前遮住脸。~ 
DO ~SetGlobal("C0SireneCoran1","GLOBAL",1)~
== BC0SIREN ~我想你很清楚我为什么这么做。~
== BCORAN ~你怕什么，亲爱的塞琳？你那双异样的眼睛、那副好看的颧骨，哪个男人不为之心动？~
== BC0SIREN ~人家怕的正是我真去叫他们心动。~
== BCORAN ~是；不过我怕你早已把我收在你的咒里了。~
== BC0SIREN ~哦，别说了。你就没个标准么？~
== BCORAN ~我当然有，塞琳。正因如此，我才能说我真心觉得你美，里头外头都美。~
== BC0SIREN ~我……你真这么想？~
== BCORAN ~（眨眼）这双嘴唇一辈子没对哪位女士说过谎。~
== BC0SIREN ~你在逗我，科兰，可你的话我到底还是受用。~
== BCORAN ~终于笑了！你该多笑笑，女士。笑挺衬你的。~
== BC0SIREN ~（笑）不，真的，别说了。你把我带坏了。~
EXIT

CHAIN IF ~
  %BGT_VAR%
InParty("Coran")
See("Coran")
InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Coran",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("HelpBrielbara","GLOBAL",1)
Global("C0SireneCoran1","GLOBAL",1)~ THEN BC0SIREN C0SireneCoran2
~我真不敢相信你这么没心肝。~
DO ~SetGlobal("C0SireneCoran1","GLOBAL",2)~
== BCORAN ~（叹气）这是为布丽尔那桩事么？哈娜莉救我，我还以为这事早过去了。~
== BC0SIREN ~等我看见你给那女人、更要紧的是给*你的孩子*该得的东西，这事才算过去。~
= ~我发誓，科兰。你若是个伊尔梅特信徒，哭泣之神会当场把你劈了。~
== BCORAN ~那我们不共信仰，倒是件幸事。~
== BC0SIREN ~别咧嘴了，科兰。这不好笑。~
== BCORAN ~行了，亲爱的。看着我，老实答我：你觉得我会是个好父亲么？~
== BC0SIREN ~你试过么？~
== BCORAN ~嗯……没有。可你这是在躲我的问题。~
== BC0SIREN ~你若真肯用心？谁知道。总不至于比那可怜孩子如今受的更糟。~
== BCORAN ~瞧，塞琳。布丽尔是个机灵丫头，她会想出法子的。我走了，娜玛拉反倒更好。不是你说我带坏人的么？那就别为这事把你那颗漂亮小脑袋愁坏了。~
== BC0SIREN ~你好像把整件事都当成个大笑话。~
== BCORAN ~事情太当真就乏味了。你也该试试。~
== BC0SIREN ~（叹气）我放弃了。~
EXIT

// Dynaheir

CHAIN IF ~
  %BGT_VAR%
InParty("Dynaheir")
See("Dynaheir")
InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Dynaheir",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneDynaheir1","GLOBAL",0)~ THEN BDYNAH C0SireneDynaheir1
~你是破碎之神的信徒，是么？~
DO ~SetGlobal("C0SireneDynaheir1","GLOBAL",1)~
== BC0SIREN ~是——是的，女士。~
== BDYNAH ~你不必这样拘礼，塞琳。叫狄娜希尔就好。毕竟我们是平辈。~
== BC0SIREN ~恕我，狄娜希尔女士。只是我在你面前总觉得有些……压住了。~
= ~我……不知该怎么说才好。你强大、美丽、明智，又是个娴熟的法师。我仰慕你，有时我甚至觉得自己……不配。~
== BDYNAH ~这又从何说起？你已显出你的明智与心性之坚，我敢说你的美更胜于我。你没有理由觉得不配在我面前。~
== BC0SIREN ~你太宽厚、太谦逊了，女士。我不敢像你那样看自己。~
EXIT

CHAIN IF ~
  %BGT_VAR%
InParty("Dynaheir")
See("Dynaheir")
InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Dynaheir",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneDynaheir2","GLOBAL",0)~ THEN BC0SIREN C0SireneDynaheir2
~拉舍曼的人崇奉哪些神，狄娜希尔女士？~
DO ~SetGlobal("C0SireneDynaheir2","GLOBAL",1)~
== BDYNAH ~我们像这地方的人一样崇奉许多神，可所有哈丝兰都敬三女神：芭拉、凯莉亚拉，还有那位隐者。~
== BC0Siren ~那——恕我，可我从没听过这些名字。~
== BDYNAH ~在西方，你们叫她们别的名字。我想你对她们的通用名更熟——裳提亚、梅莉凯与密斯特拉。~
== BC0Siren ~你提到别的神……伊尔梅特也在其中么？~
== BDYNAH ~很可能有。我从没见哪个拉舍曼人敬哭泣之神，可这也不算不可信。~
= ~我见过受崇奉的神，在我们游侠中很流行：露露，会说话的兽之女王；艾达丝，绿之女神；还有别的。穆尔桑提尔城里有一座献给凯兰沃的小教堂，不过我自己从没见过。~
= ~不过有些人拜的不是别的位面的神，而是土地的精魂。~
== BC0Siren ~你说的是亡者么？~
== BDYNAH ~不，这些精魂和你我一样是活的，虽说也许有些不同。有些强到受人敬奉，可他们不是通常意义的神。许多还活在我们中间，做我们的朋友和顾问。~
== BC0Siren ~拉舍曼是个古怪的地方，可听起来真迷人。我希望有一天能去看看。~
EXIT

// Edwin

CHAIN IF ~
  %BGT_VAR%
InParty("Edwin")
See("Edwin")
InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
AreaType([FOREST])
Global("C0SireneEdwin1_BG1","GLOBAL",0)~ THEN BEDWIN%BG1_EET_% C0SireneEdwin1
~告诉我，小鬼，你们这一族真天生就有施法的本事么？~
DO ~SetGlobal("C0SireneEdwin1_BG1","GLOBAL",1)~
== BC0SIREN ~也许。我不知道。我从没遇见过另一个同族的人，我自己也没去习法术。~
== BEDWIN%BG1_EET_% ~白费了天分。把血里赐给你的东西丢掉，去扮个虔诚谄媚的狂信徒，抡一大块钢。（这个无疑是他们中最蠢的。）~
== BC0SIREN ~我看着你，艾德温，我感谢众神，我没落成个法师。~
EXIT

// Eldoth

CHAIN IF ~
  %BGT_VAR%
InParty("Eldoth")
!InParty("Skie")
See("Eldoth")
InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Eldoth",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneEldoth1","GLOBAL",0)~ THEN BELDOT C0SireneEldoth1
~你知道么，亲爱的，你把你那副*绝妙的*身段藏在那身难看的甲后面了。真可惜，实在可惜。若不是上回在溪边扎营时我擅自看了你几眼，我永远不会知道。~
DO ~SetGlobal("C0SireneEldoth1","GLOBAL",1)~
== BC0SIREN ~你在笑话我，埃尔多斯。你若有真看过，就该知道我满身是疤和淤伤。~
== BELDOT ~啊，那些被叫作伊尔梅特信徒的野蛮人的愚蠢自伤仪式。是，我看见了，可你的好看让它瞧着照样好看。~
== BC0SIREN ~闭嘴，埃尔多斯。~
== BELDOT ~你知道么，我知道哪儿能找着一条衬你眼睛的裙子。露背、露腿，用的还是很贵的透明料子。本是为交际花做的，所以正好合你。~
== BC0SIREN ~那我就穿着去你的葬礼，若你想这样的话。~
== BELDOT ~啊，死亡的威胁。我从没遇见过以会编花样出名的圣武士。~
== BC0SIREN ~你侮辱了我的信仰，就没了再要更多的资格，埃尔多斯，滚。~
= ~哦，再偷看我洗澡，我就把你的眼睛挖出来。伊尔梅特的教义也许不许无用的暴行，可我想他会恕我，替你除去你用来作恶的器具。~
= ~话说回来，我想我还另有东西可以除去，效果更好。~
EXIT

// Faldorn

CHAIN IF ~
  %BGT_VAR%
InParty("Faldorn")
See("Faldorn")
InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Faldorn",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneFaldorn","GLOBAL",0)~ THEN BFALDO C0SireneFaldorn
~我讨厌你，不合自然的东西。你身上透着失衡。~
DO ~SetGlobal("C0SireneFaldorn","GLOBAL",1)~ 
== BC0SIREN ~我跟你保证，感觉是相互的。~
== BFALDO ~你有人形，血却是外来的。你不属于这里。你该自己走开。~
== BC0SIREN ~我的血不是我选的，暗影德鲁伊，别的东西倒未必。~
== BFALDO ~吼！不合自然的东西该从这世上除去！~
== BC0SIREN ~按你们那套说法，许多无辜的人也该如此。所以恕我不把你这套放在心上。~
== BFALDO ~你是脏东西。帮那些伤害、利用大地母亲来图利的人，还拿他们的苦当借口。他们活该，那群蠢货！~
== BC0SIREN ~我警告你，法尔多恩。骂我本人我受得住，可我的信仰我拿命来护。~
== BFALDO ~……~
= ~呸，你不值得我费工夫。<CHARNAME>，把这自命清高的鬼东西从我眼前带走！~
EXIT

// Garrick

CHAIN IF ~
  %BGT_VAR%
InParty("Garrick")
See("Garrick")
InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Garrick",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
HPPercentLT(Myself,75)
Global("C0SireneGarrick1","GLOBAL",0)~ THEN BC0SIREN C0SireneGarrick1
~换一首吧，亲爱的吟游诗人。我想我需要点什么安神的，好把这些淤伤从脑子里挪开。~
DO ~SetGlobal("C0SireneGarrick1","GLOBAL",1)~ 
== BGARRI ~当然，女士。那《罗尔维拉的最后一骑》如何？你上回好像挺喜欢这曲子。~ 
== BC0SIREN ~就那首吧，加里克。~
== BGARRI ~我花点工夫调调琴。~
== BC0SIREN ~众神，我的肩膀疼。这一天真够累的，不是么？~
== BGARRI ~确实够累。~
= ~你看起来酸痛得厉害，女士。我本想用一套很久以前跟一位推拿师学的手法，可……我这双手摆弄琴还算灵巧，一落到人皮上就跟骡子蹄子一样笨。~
== BC0SIREN ~哈，我从没想过。你琴弹得够好。~
== BGARRI ~你知道么，塞琳女士，看你在战阵里的样子，倒给了我下一首曲子的灵感。一首写你功绩的歌。《殉道女士之歌》行么？~
== BC0SIREN ~伊尔梅特信徒不爱夸耀自己的作为；可你若拿我当了灵感，我也不拦你。~
= ~只要你别在歌里叫我“女士”。~
EXIT

CHAIN IF ~
  %BGT_VAR%
InParty("Garrick")
See("Garrick")
InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Garrick",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneGarrick1","GLOBAL",1)
Global("C0SireneGarrick2","GLOBAL",0)~ THEN BGARRI C0SireneGarrick2
~塞琳女士！我，呃，把我说的那首谣曲的头两节写出来了……~
= ~我想请你看看。看看，呃，它是不是走对了方向。~
DO ~SetGlobal("C0SireneGarrick2","GLOBAL",1)~ 
== BC0SIREN ~看一看也无妨。~
== BGARRI ~……~
== BC0SIREN ~……~
== BGARRI ~那么……你觉得怎样？~
== BC0SIREN ~这……是首情诗，加里克，至少我这么以为。你从没告诉我你要这么写。~
== BGARRI ~嗯，你看，情歌受欢迎，在上层人当中尤其。~
== BC0SIREN ~我明白了。可我想我不认得哪位“加威克爵士”。能解释一下么？~
== BGARRI ~呃，这个……~
= ~呃，不，不。这样全然不行。我重写，女士，下一回一定完美，你等着看！~
EXIT

// Imoen

CHAIN IF ~
  %BGT_VAR%
InParty("IMOEN2")
See("IMOEN2")
InParty("C0Sirene")
See("C0Sirene")
!StateCheck("IMOEN2",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneImoen1_BG1","GLOBAL",0)~ THEN BIMOEN C0SireneImoen1
~（戳）我这样戳它们，是什么感觉？~
DO ~SetGlobal("C0SireneImoen1_BG1","GLOBAL",1)~
== BC0SIREN ~（戳爱蒙的额头）就这样。~
== BIMOEN ~就这样？呃，那真无聊。我还以为它们会更敏感些呢。你一直都长着它们么？~
== BC0SIREN ~（笑）照我的监护人们说，我还是小孩的时候，额上的皮就已经在裂开了。那些敢跟我说话的男孩叫我山羊。~
== BIMOEN ~那……那疼么？~
== BC0SIREN ~是，可祭司们叫我别怕那痛，要把它当作我的一部分记着。~
== BIMOEN ~你在这上头真怪。凡伤着我的东西我都躲得远远的，除了陷阱吧，不过我也只想法子拆了它们。可我还记得我手指被老鼠夹夹住那回。~
= ~你知道被那玩意儿夹住有多疼么？哎哟。（打了个寒战）~
EXIT

CHAIN IF ~
  %BGT_VAR%
InParty("IMOEN2")
See("IMOEN2")
InParty("C0Sirene")
See("C0Sirene")
!StateCheck("IMOEN2",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneImoen2_BG1","GLOBAL",0)~ THEN BC0SIREN C0SireneImoen2
~爱蒙，你非得一扎营就翻我的东西么？我相信你不会拿值钱的，可你知道里头除必需品什么都没有，你还是来烦。~
DO ~SetGlobal("C0SireneImoen2_BG1","GLOBAL",1)~
== BIMOEN ~嗯，我反正无聊，又睡得晚，就把我们所有人的东西都翻一遍。你包里有什么我如今都能背出来！~
== BC0SIREN ~（笑）我为你骄傲。~
== BIMOEN ~我倒不是贪心什么的。可我觉得要是我每晚不磨磨手艺，就会生锈，你知道么？~
== BC0SIREN ~我想这话你说得对。那就接着练吧。~
EXIT

CHAIN IF ~
  %BGT_VAR%
InParty("IMOEN2")
See("IMOEN2")
InParty("C0Sirene")
See("C0Sirene")
!StateCheck("IMOEN2",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Class("IMOEN2",MAGE_ALL)
Global("C0SireneImoen3_BG1","GLOBAL",0)~ THEN BC0SIREN C0SireneImoen3
~一个见习法师了，是么？我得承认，这是长进，虽然我说不清长了多少。~
DO ~SetGlobal("C0SireneImoen3_BG1","GLOBAL",1)~
== BIMOEN ~对。我会想念偷东西的日子，可这个更好玩！~
== BC0SIREN ~可要小心。你不是在受正式的训练吧？~
== BIMOEN IF ~
  %BGT_VAR%
Class(Player1,MAGE_ALL)~ THEN ~嗯，<CHARNAME>教了我一些戈里安在烛堡教<PRO_HIMHER>的东西。也没多难，你知道。~
== BIMOEN IF ~
  %BGT_VAR%
InParty("Dynaheir") !Class(Player1,MAGE_ALL)~ THEN ~嗯，狄娜希尔教了我几样，可她太严，所以我决定自己来。~
== BIMOEN IF ~
  %BGT_VAR%
InParty("Xan") !InParty("Dynaheir")~ THEN ~嗯，我缠过撒恩要几招，可他只给了我一个他那怪眼神就走开了。混蛋。~
== BIMOEN IF ~
  %BGT_VAR%
InParty("Neera") !InParty("Dynaheir") !InParty("Xan")~ THEN ~我想问妮拉，可我不知道她对魔法怎么运作懂得比我多么。你知道，狂乱魔法那些。~
== BIMOEN IF ~
  %BGT_VAR%
InParty("Edwin") !InParty("Dynaheir") !InParty("Neera") !InParty("Xan")~ THEN ~嗯，我缠过艾德温要几招，可，嗯，他就是艾德温。~
== BIMOEN IF ~
  %BGT_VAR%
InParty("Xzar") !InParty("Edwin") !InParty("Dynaheir") !InParty("Neera") !InParty("Xan")~ THEN ~我想问克萨，可他，嗯，你知道的……~
== BIMOEN IF ~
  %BGT_VAR%
!Class(Player1,MAGE_ALL) !InParty("Xzar") !InParty("Edwin") !InParty("Dynaheir") !InParty("Neera") !InParty("Xan")~ THEN ~嗯，没有；可像我这样的新手法师能造成什么损害呢？~
== BC0SIREN ~嗯。无论如何要小心，爱蒙。我相信你在魔法上至少会比在开锁上负责些，虽说我该更明白。~
== BIMOEN ~嘿！~
EXIT

// Jaheira

CHAIN IF ~
  %BGT_VAR%
InParty("Jaheira")
See("Jaheira")
InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SIRENEJaheira1_BG1","GLOBAL",0)~ THEN BJAHEI C0SireneJaheira1
~你好像不太舒服，塞琳。有哪里不适么？~
DO ~SetGlobal("C0SIRENEJaheira1_BG1","GLOBAL",1)~
== BC0SIREN ~没什么，贾希拉。就是肩膀有点酸。会过去的。~
== BJAHEI ~你上一场无疑用力过头了。你这身量的人不该抡这么重的兵器。让我治一治。~
== BC0SIREN ~哦，不用，没事。我撑得住。~
== BJAHEI ~胡说。你得保持完好，以防突然开战。我可以调一盒药膏，下次扎营时你敷在肩上。~
== BC0SIREN ~我很感激，贾希拉；可我更愿意让这痛自己走完。我当伊尔梅特侍从那些年，学会了忍许多这样的小痛，我的师长们还鼓励我去辨清不同的感觉。~
== BJAHEI ~哼。随你，不过你日后若来抱怨酸痛更厉害了，我就提醒你这回的话。~
EXIT

CHAIN IF ~
  %BGT_VAR%
InParty("Jaheira")
See("Jaheira")
InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SIRENEJaheira2_BG1","GLOBAL",0)~ THEN BC0SIREN C0SireneJaheira2
~德鲁伊怎么看提夫林，贾希拉？~
DO ~SetGlobal("C0SIRENEJaheira2_BG1","GLOBAL",1)~
== BJAHEI ~我不能替所有德鲁伊说话，塞琳。你非要问，我只能给你我自己的看法。~
== BC0SIREN ~那就够了。~
== BJAHEI ~你不全然属于自然的秩序，这是事实。可是……我不认为你就不可能有所归属。~
== BC0SIREN ~我？有所归属？怎么……~
== BJAHEI ~别忘了你体内也流着人的血。接纳那一面。~
== BC0SIREN ~可即便如此，我也不是人。~
== BJAHEI ~不错，可就连人所造的东西，也许终有一天能融进自然的循环，孩子。你也许永远不能真正归属，可你的孩子呢，你的后代呢？~
== BC0SIREN ~这话说得好……我会记着。~
EXIT

CHAIN IF ~
  %BGT_VAR%
InParty("Jaheira")
See("Jaheira")
InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SIRENEJaheira3_BG1","GLOBAL",0)~ THEN BJAHEI C0SireneJaheira3
~……这一种是斑点毒菌。很常见的菌，可照样致命。你若独自在林中挨饿，留心这花纹。~
DO ~SetGlobal("C0SIRENEJaheira3_BG1","GLOBAL",1)~
== BC0SIREN ~是，是……我明白。~
== BJAHEI ~你已经在打瞌睡了？我记得是你来找我要草药学问的。~
== BC0SIREN ~是我，这话不假；可我……是想学草药能治病的那一面，不是毒。~ 
== BJAHEI ~认得毒的症状与性质，跟知道解法一样要紧，孩子。这道理你总懂吧？~
== BC0SIREN ~你说得对。请继续。~
== BJAHEI ~改日吧，也许。你的精神在散了。你为什么这样急着要我教你？~
== BC0SIREN ~我去贝瑞戈斯特的路上遇过一个人，在遇见<CHARNAME>之前。他苦得很，可又不是哪处受伤。我试着照料他，可我连他得了什么病都认不出。他后来死了，死得极痛苦。~
= ~他的魂近来在我梦里来过。他什么也没说，可我从他眼里看见了我自己的失手。~
== BJAHEI ~你救不了他，你为此自责。~
== BC0SIREN ~是。那人在我照看之下，我若懂得多些，本可以救他。~
== BJAHEI ~这可以理解；可你该知道，不是所有病都能治好。有时候大地母亲要她的孩子回来。~
== BC0SIREN ~我没法就这样认下。眼看着人受苦而我救不了，这太可怕了，贾希拉。~
== BJAHEI ~你也不可能救每一个人，塞琳。你难道要为你任其死去的每个人自责？~
== BC0SIREN ~不，我——我不能。恕我，贾希拉，我需要一点自己的时间。~
EXIT

// Kagain

CHAIN IF ~
  %BGT_VAR%
InParty("Kagain")
See("Kagain")
InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Kagain",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneKagain1","GLOBAL",0)~ THEN BKAGAI C0SireneKagain1
~你们这些圣武士全是白喘气的。~ 
DO ~SetGlobal("C0SireneKagain1","GLOBAL",1)~
== BC0SIREN ~恕我？我做了什么得罪你，凯根？~
== BKAGAI ~你没半点野心，也不爱财。你干的就是哄着穷人，说些好听的话。好像他们能拿你说的话当饭吃，哈！~
== BC0SIREN ~我确实没法亲手喂他们，可指望给人活下去的力气。放弃，就是认了死。~
== BKAGAI ~这世上没有真指望，女人，只有钱，还有那些能抓多少就抓多少的人。你越早明白这个，越活得久，能看见你的孩子长大。~
== BC0SIREN ~听你说的，好像我们活在个凄凉的世界里。你不信人人都有成事的机会？~
== BKAGAI ~穷人是有过机会的，他们丢了。在这烂世界里，只有顾着自己的人才赢。你若不认这个，那就躺下跟他们一道去吧，嗯？~
EXIT

// Khalid

CHAIN IF ~
  %BGT_VAR%
InParty("Khalid")
See("Khalid")
InParty("Jaheira")
InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Khalid",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneKhalid1","GLOBAL",0)~ THEN BKHALI C0SireneKhalid1
~你——你的剑——剑带松了，塞琳。~
DO ~SetGlobal("C0SireneKhalid1","GLOBAL",1)~
== BC0SIREN ~什么？哦，真是。谢谢你，卡立德。我这一疏忽，下一场里可要付出大代价。~
== BKHALI ~有——有什么叫你烦心么，我的朋友？~
== BC0SIREN ~（叹气）我想是有的，只是难说清。我觉得心里有种……翻搅。~
== BKHALI ~把——把忧虑分给朋友，从——从来不会有害。~
== BC0SIREN ~也许。我又在想我的出身了，卡立德，想它和我想要成为的人如何相冲。你觉得我走错了吗？~
== BKHALI ~我——我不知道。可我想我懂——懂你的感受。~
= ~过——过去我也曾觉得自己的存在是个错，可——可我已经很久没那样想了。~
== BC0SIREN ~是什么改变了你？~
== BKHALI ~找——找到一个在乎你的人。贾希拉重——重拾了我对自己的信心，虽——虽说……（微笑）她替我重建自信的时候，有时也会很——很严。~
== BC0SIREN ~那……你是个走运的人，卡立德。~
EXIT

CHAIN IF ~
  %BGT_VAR%
InParty("Khalid")
See("Khalid")
InParty("Jaheira")
InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Khalid",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneKhalid2","GLOBAL",0)~ THEN BC0SIREN C0SireneKhalid2
~卡立德，你说话为什么结巴？你是个好武士，这不合你。~ 
DO ~SetGlobal("C0SireneKhalid2","GLOBAL",1)~
== BKHALI ~这——这跟战场上的胆气没——没关系，塞琳。我——我从小就这样。~
== BC0SIREN ~我——我明白了。那我抱歉问了。你的童年难么？~
== BKHALI ~我——我父亲不要一个私——私生子。他很……残——残忍。~
== BC0SIREN ~啊……卡立德，你不必再说。我不该提起这样难的记忆。~
== BKHALI ~这——这些记忆不再伤我了，塞琳。等我心里有了更——更新、更好的记忆，就不了。（微笑）~
== BC0SIREN ~我明白。我不说假话，卡立德，我起初很难在你和贾希拉之间找到相合之处，可……你们两个是天造地设。~
= ~我希望你们两人都长寿，日子丰足。~
EXIT

// Kivan

CHAIN IF ~
  %BGT_VAR%
InParty("Kivan")
See("Kivan")
InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Kivan",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneKivan1","GLOBAL",0)~ THEN BKIVAN C0SireneKivan1
~你常往我这边看，塞琳。能问为什么么？~
DO ~SetGlobal("C0SireneKivan1","GLOBAL",1)~
== BC0SIREN ~恕我，基万。说实话，我早想和你说话，只是不知怎样开口最好。~
== BKIVAN ~我不在乎斟酌过的词句。你有什么就说。~
== BC0SIREN ~你背着一副很重的担子，基万，它叫你苦得很。你愿意说出来么？~
== BKIVAN ~怎么分，伊尔梅特信徒？我知道你把自己的特权当作替人担苦，可你真能懂我的感受么？~
= ~不。你不能。你从没失去过心坎上亲近的人，但愿你也永远不要失去。~
== BC0SIREN ~我想帮你，基万，可只有你肯让我帮才行。~
== BKIVAN ~这不是我肯不肯的问题；除了死，没什么能缓我心里的痛。~
EXIT

CHAIN IF ~
  %BGT_VAR%
InParty("Kivan")
See("Kivan")
InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Kivan",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneKivan1","GLOBAL",1)~ THEN BC0SIREN C0SireneKivan2
~也许我不能分担你的重担，基万，可我仍想帮你。我们能谈谈么？~
DO ~SetGlobal("C0SireneKivan1","GLOBAL",2)~
== BKIVAN ~谈什么？~
== BC0SIREN ~什么都行。有个耳朵听着，比你想的有用。说你的家乡、你的家人，若这能叫你舒服些。~
== BKIVAN ~……~
= ~你愿意听，我就讲德赫里安娜。~
== BC0SIREN ~（微笑）那是我的荣幸，我的朋友。~
== BKIVAN ~好吧……改日，等我们扎营。~
EXIT

CHAIN IF ~
  %BGT_VAR%
InParty("Kivan")
See("Kivan")
InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Kivan",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
HPPercentLT("Kivan",25)
Global("C0SireneKivan3","GLOBAL",0)~ THEN BKIVAN C0SireneKivan3
~（呻吟）我的时候到了么？德赫里安娜，我的爱人，我很快就能见到你了……~
DO ~SetGlobal("C0SireneKivan3","GLOBAL",1)~
= IF ~
  %BGT_VAR%
Dead("Tazok")~ THEN ~不！我不配再见你一面，德赫里安娜，在塔佐克倒在我脚边之前！~
== BC0SIREN ~别动，我的朋友。你不会倒下的，只要我还有一口气。~
== BKIVAN ~（咳）~
== BC0SIREN ~好了。试试看能不能觉出你的手脚。~
DO ~ForceSpell("Kivan",PALADIN_LAY_ON_HANDS)~
== BKIVAN ~我很久什么都觉不出来了。~
== BC0SIREN ~基万……~
== BKIVAN ~谢谢你帮我，塞琳；可也许你该让我倒下。~
== BC0SIREN ~我绝不会那样做。~
== BKIVAN ~你治好了我的身子，可我心上的疤还在。~
== BC0SIREN ~但愿我也有本事治好那些……~
= ~若能，我愿把你的苦拿走，基万。可我不能。这超出我的能力，多半也超出任何人的。我真心抱歉。~
== BKIVAN ~没人该受我不得不受的这份痛。~
EXIT

// Minsc

CHAIN IF ~
  %BGT_VAR%
InParty("Minsc")
See("Minsc")
InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneMinsc1_BG1","GLOBAL",0)~ THEN BMINSC%BG1_EET_% C0SireneMinsc1
~嗨，塞琳小女士，布布有个问题要问你……~
DO ~SetGlobal("C0SireneMinsc1_BG1","GLOBAL",1)~
== BC0SIREN ~你的仓鼠要问我什么？明斯克，你有什么话就说。~
== BMINSC%BG1_EET_% ~不，明斯克没什么要问这位长犄角的怪女士的！嗯，也许有，可问题是布布先想到的！明斯克只是个传话的。~
== BC0SIREN ~你是个怪人，明斯克。说吧。~
== BMINSC%BG1_EET_% ~布布问明斯克这个问题，可明斯克答不上来。这位小女士怎么抡得动一把够明斯克使的大剑？明斯克告诉布布，也许我们这位朋友比她看着的更强，可她总不能比明斯克更强吧！~
== BC0SIREN ~不在剑的重量，明斯克，在你使它的法门。~
== BMINSC%BG1_EET_% ~啊哈！明智的话，我的朋友。明斯克和布布会好好琢磨你的话，专心想着我们朝恶人的脑袋挥剑的那个法门！~
EXIT

CHAIN IF ~
  %BGT_VAR%
InParty("Minsc")
See("Minsc")
InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneMinsc2_BG1","GLOBAL",0)~ THEN BMINSC%BG1_EET_% C0SireneMinsc2
~塞琳，布布告诉明斯克，你是个圣……圣……圣武士。对么？~
DO ~SetGlobal("C0SireneMinsc2_BG1","GLOBAL",1)~
== BC0SIREN ~是圣武士，明斯克。是，我是。你觉得这怪么？~
== BMINSC%BG1_EET_% ~不，一点也不！明斯克觉得，不管是各种身形尺寸的男人，还是长犄角、眼睛古怪的女士，只要一生把靴子踹在恶的屁股上，那就是好事！~
= ~明斯克脑子里刚冒出个念头，他已经想了好几个钟头了，可他觉得只有圣武士答得上来。~
== BC0SIREN ~嗯，是什么？~
== BMINSC%BG1_EET_% ~明斯克的问题是：“什么是公道？”~
== BC0SIREN ~公道？明斯克，你从前把这词提过许多回。怎么会不知道它是什么意思？~
== BMINSC%BG1_EET_% ~这正是明斯克的难处，我的朋友！明斯克和布布维护公道已经很久，可从没停下来想过它是什么意思。~
== BC0SIREN ~我想我给不了你正确答案，明斯克。这是你得自己去弄明白的东西。~
== BMINSC%BG1_EET_% ~狄娜希尔也对明斯克说过一样的话。狄娜希尔明智，可她不圣武士。塞琳也明智，明斯克本以为她会有话教我们。~
== BC0SIREN ~我不明智，明斯克。公道是……我自己也说不准的东西。我不是提尔信徒，可我一生都在给人他们该得的对待。哪里有错处，我就尽力用它我有的力量把事扳正。也许这就是公道？~
== BMINSC%BG1_EET_% ~那就是明斯克和布布这些年一起做的事了！谢谢你，我的朋友。明斯克满意了。~
EXIT

// Montaron

CHAIN IF ~
  %BGT_VAR%
InParty("Montaron")
See("Montaron")
InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Montaron",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneMontaron1","GLOBAL",0)~ THEN BC0SIREN C0SireneMontaron1
~蒙塔隆，你取人性命的那份轻巧，叫我心里不安。~
DO ~SetGlobal("C0SireneMontaron1","GLOBAL",1)~
== BMONTA ~嗯，那我倒庆幸我不在乎你们这些假正经怎么想，嗯？~
== BC0SIREN ~你不怕你死的那天有什么惩罚等着你？~
== BMONTA ~不，我从不想到将来，除了盘算下一个猎物的时候，嘿嘿。~
EXIT

CHAIN IF ~
  %BGT_VAR%
InParty("Montaron")
See("Montaron")
InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Montaron",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneMontaron2","GLOBAL",0)~ THEN BC0SIREN C0SireneMontaron1
~我看见你对你上一个……杀的人做了什么，可我几乎不敢肯定你给了他一个了结。~
DO ~SetGlobal("C0SireneMontaron2","GLOBAL",1)~
== BMONTA ~哈！我一手好活儿。看他死，几乎有点可惜。~
== BC0SIREN ~那叫人作呕。没必要把他残成那样。~
== BMONTA ~没必要，也许；可在我看来挺美。~
== BC0SIREN ~我极不愿说这话，可你非要杀，就杀得干净。我不许你糟践尸身，哪怕是敌人的。~
== BMONTA ~你要没胆看我干活，有个省事的法子，婆娘。滚一边去。~
EXIT

// Quayle

CHAIN IF ~
  %BGT_VAR%
InParty("Quayle")
See("Quayle")
InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Quayle",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneQuayle","GLOBAL",0)~ THEN BQUAYL C0SireneQuayle
~喂，提夫林。我好奇，谁会蠢到把别人的苦揽到自己身上？~
DO ~SetGlobal("C0SireneQuayle","GLOBAL",1)~
== BC0SIREN ~说话小心，侏儒。~
== BQUAYL ~我已经尽量收着我的辞藻了，免得我这惊人的词汇量压垮你。你就答问题吧。~
== BC0SIREN ~因为那是我的职分，也因为我能担。~
== BQUAYL ~哦，我不怀疑你能受痛，证据就在我眼前。你脑袋虽空——我估摸你那对犄角占了里头本来就没多少的地方——可你*确实*挨得住打。~
= ~可到底为什么，一个不傻的人会让自己受伤？~
== BC0SIREN ~好叫像你这样的傻瓜不必受伤。~
== BQUAYL ~我？哈，算了吧。我太聪明了，不会把自己摆到那种地步。~
EXIT

// Safana

CHAIN IF ~
  %BGT_VAR%
InParty("Safana")
See("Safana")
InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Safana",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneSafana1","GLOBAL",0)~ THEN BSAFAN C0SireneSafana1
~哦，你倒是个机灵人，亲爱的；可别以为你逃过了我的眼。~
DO ~SetGlobal("C0SireneSafana1","GLOBAL",1)~
== BC0SIREN ~我怀疑你没安好心；你到底在暗示什么，萨法娜？~
== BSAFAN ~你扮个假正经，扮得还挺像；可我知道你打男人身边过时给的那眼神。~
== BC0SIREN ~什么？我不知你在说什么，我想我也不想知道。~
== BSAFAN ~你其实很盼着有个男人胆大到把你收了吧？~
== BC0SIREN ~这太荒唐了。就算我有心去勾引谁，看一眼我的犄角和眼睛，他们也该清醒过来。~
== BSAFAN ~别这么肯定，亲爱的。某些男人迷恋什么，你*一点概念*都没有。还是说，你其实想要的是另一个女人的触碰，嗯？~
= ~你知道么，我一向更中意有男人味儿的类型，可我也能教你几手……~
== BC0SIREN ~我——哦，闭嘴，贱货，别烦我！~
EXIT

// Shar-Teel

CHAIN IF ~
  %BGT_VAR%
InParty("Sharteel")
See("Sharteel")
InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Sharteel",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneSharteel","GLOBAL",0)~ THEN BSHART C0SireneSharteel
~你为什么去帮路上遇见的男人？让那些恶心的猪受苦吧，我说！~
DO ~SetGlobal("C0SireneSharteel","GLOBAL",1)~
== BC0SIREN ~帮所有人是我的职分，我也从中得着满足。~
== BSHART ~你丢我们这一群的脸，圣武士。你替男人那副可怜相添柴——好像我们不过是他们的下等物，该随叫随到地伺候。~
== BC0SIREN ~若有必要，我能护住自己，对任何男人都一样。你说错了。~
== BSHART ~那就证明。你若比我强，我就收回这话。~
== BC0SIREN ~我不会对你举刀，莎缇尔。对旁人，我也许会显出怒意；可对你，我只有怜悯。~
EXIT

// Skie

CHAIN IF ~
  %BGT_VAR%
InParty("Skie")
See("Skie")
InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Skie",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneSkie1","GLOBAL",0)~ THEN BSKIE C0SireneSkie1
~谢——谢谢你上一场替我挡敌人，塞琳。~
DO ~SetGlobal("C0SireneSkie1","GLOBAL",1)~
== BC0SIREN ~不必，丝琪，不过我倒仍希望不必如此。你要想跟上我们，剑术得长进。~
== BSKIE ~哦，我试呢，可我就是受不了砍人出血那种恶心的感觉……哦，我受不了！我弓使还不错，这不够么？~
== BC0SIREN ~箭用完了呢？我未必每次都丢得下一切来护你，尤其我们还有别的同伴。~
== BSKIE ~我知道，可我还是怕……要是我打起来断了腿，或者弄乱了头发，或者……~
== BC0SIREN ~若这些比我们所有人的命都重要，那这行日子也许不适合你。~
== BSKIE ~不！我知道我做得到！下一次，我用我的剑面对敌人，我会赢。那时你就知道你错了，塞琳。~
== BC0SIREN ~我看见了，我才会知道，丝琪。也别想用力过头来补。~
EXIT

CHAIN IF ~
  %BGT_VAR%
InParty("Skie")
InParty("Eldoth")
See("Skie")
InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Eldoth",CD_STATE_NOTVALID)
!StateCheck("Skie",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneSkie2","GLOBAL",0)~ THEN BC0SIREN C0SireneSkie1
~丝琪，我们得谈谈。~
DO ~SetGlobal("C0SireneSkie2","GLOBAL",1)~
== BSKIE ~什么事，塞琳？要是又说我剑术，我跟你说我一直在练，如今我一个人能打一只大地精，甚至一个强盗，我——~
== BC0SIREN ~不，不是那个。可我确实叫过你别用力过头补，是吧？~
== BSKIE ~哦，对，我忘了。你想谈什么？~
== BC0SIREN ~你的……男人，虽说我连这么叫他都不愿意。~
== BSKIE ~埃尔多斯？哦，他是不是很迷人？~
== BC0SIREN ~别荒唐了。你看不见我看见的那个人么？~
== BSKIE ~你看他的时候，看见的是谁，塞琳？~
== BC0SIREN ~我在他身上看不见一点好，再说他也不是个值得的情人。上一回我们歇在酒馆，他拿店里女侍的胸脯说荤话，满堂都听得见。别告诉我你没听见。~
== BSKIE ~哦……我不知道，我大概已经回房了。可他有时候爱逗人。他答应过他在乎我。~
== BC0SIREN ~丝琪，我是圣武士。我不该一概而论，可好人恶人我分得出。身为伊尔梅特的信徒，我对这类事更敏感。你还来得及退开，趁没失去超出你想象的东西之前，去找个更好的。~
= ~他会叫你受苦的，丝琪。~
== BSKIE ~不！别那样苛责他！他心里是好的，我知道！求你，塞琳，别再跟我说他了。我——我受不了。~
EXIT

// Tiax

CHAIN IF ~
  %BGT_VAR%
InParty("Tiax")
See("Tiax")
InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Tiax",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneTiax","GLOBAL",0)~ THEN BTIAX C0SireneTiax
~你，娼妇！伟大的泰亚克斯已判你的信仰与你的神为假！~
DO ~SetGlobal("C0SireneTiax","GLOBAL",1)~
== BC0SIREN ~你这会儿又在胡扯什么疯话，塞瑞克信徒？~
== BTIAX ~伟大的泰亚克斯从不疯，他说的每一句都是真话！伊尔梅特不是神，是个僭称者；他的信徒连同其后裔，都注定在泰亚克斯征服费茹之后做他的奴隶！~
== BC0SIREN ~就凭这等亵渎，我本该毁了你；可我怀疑你说的这些话根本没经过你的脑子。~
== BTIAX ~是，是，伟大的泰亚克斯有那份心智，不必负担思考就能开口！在你的卑下里发抖吧，他却容你发抖。~
== BC0SIREN ~我受够了。~
== BTIAX ~你现在可以走开，可你会后悔。总有一天泰亚克斯会找到你的神，在你面前证明他的虚假！~
== BC0SIREN ~住口，疯子！~
EXIT

// Viconia

CHAIN IF ~
  %BGT_VAR%
InParty("Viconia")
See("Viconia")
InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneViconia1BG1","GLOBAL",0)~ THEN BVICON C0SireneViconia1
~你叫我恶心，艾尔格凯瑞斯（魔裔贱货）。~
DO ~SetGlobal("C0SireneViconia1BG1","GLOBAL",1)~
== BC0SIREN ~我还没与你为敌，维康妮亚，虽说你着实试我的耐性。~
== BVICON ~我只是在想。论血，你胜于那些你那样温柔照料的杂种里维尔。你确实不是卓尔，可竟堕落到脏东西的地步？~
== BC0SIREN ~留意你的黑舌头，莎尔信徒。~
== BVICON ~不然呢？你要拿刀叫我闭嘴？你没那脊梁。~
== BC0SIREN ~别当我做不到。我既有仁慈也有耐性，可你正把它们磨薄。~
EXIT

CHAIN IF ~
  %BGT_VAR%
InParty("Viconia")
See("Viconia")
InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneViconia2_BG1","GLOBAL",1)~ THEN BVICON C0SireneViconia2
~艾尔格凯瑞斯，这样正气凛然地与自己的天性相斗，难么？~
DO ~SetGlobal("C0SireneViconia2_BG1","GLOBAL",2)~
== BC0SIREN ~你在乎么？~
== BVICON ~说实话我不在乎，只是好奇，而且我得说，有点觉得有趣。~
== BC0SIREN ~……~
== BVICON ~你就没有冲动么？不觉得自己胜于周围的里维尔？没有欺骗、腐化、毁灭的诱惑？什么都没有？~
== BC0SIREN ~我若在道上看见个黑暗的东西，我会毁了它；不过我把它叫作“净化”。~
== BVICON ~我失望了。我还当魔种的血在你身上流得更深。如今我看你不过是又一个过分虔诚的里维尔，可怜脑子里除了空气别无所有。~
== BC0SIREN ~（低吼）再多一句，你就活不到后悔的时候。~
EXIT

// Xan

CHAIN IF ~
  %BGT_VAR%
InParty("Xan")
See("Xan")
InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Xan",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneXan1","GLOBAL",0)~ THEN BXANNN C0SireneXan1
~我确实可怜你，你知道么？~
DO ~SetGlobal("C0SireneXan1","GLOBAL",1)~
== BC0SIREN ~你有什么理由可怜我？~
== BXANNN ~你的信仰扎在一桩无望的事上。这理由还不够么？~
= ~你们这一支教派要对抗世上的苦，可人生除了苦与无望别无他物。这难道不是场绝望的仗？~
== BC0SIREN ~绝望也许是，可只要我们还在，我们就一场一场、一个人一个人地打下去。这不够，可值得。~
== BXANNN ~可敬，却天真。~
== BC0SIREN ~你是个言辞苛刻、看法古怪的人，撒恩；可我相信你并不残忍。你为什么这样厌恶帮人？~
== BXANNN ~撇开你的血，你的寿数仍是人。你的眼界跟任何一个人一样窄、一样短。你帮一个人，就以为改变了什么，却看不见更大的图景。这就是人类的愚昧。你们的努力注定落空，我们所有人都一样。~
== BC0SIREN ~我……够了，别烦我，精灵！我不会跟你这种虚无之徒争我的信仰！~
== BXANNN ~（叹气）随你，我不强求。~
EXIT

CHAIN IF ~
  %BGT_VAR%
InParty("Xan")
See("Xan")
InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Xan",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneXan1","GLOBAL",1)~ THEN BC0SIREN C0SireneXan2
~我想我明白你为什么这样苦，撒恩。~
DO ~SetGlobal("C0SireneXan1","GLOBAL",2)~
== BXANNN ~哦？说来听听。~
== BC0SIREN ~你像我一样被誓言缚住去服侍，可你的不是出于自选。你身上背着一副很重的担子，一副你不想要的担子。~
== BXANNN ~（叹气）敏锐。是，我这把剑把我缚在守护精灵族的命上，直到我死；而死后我在阿梵多不会有未来。~
== BC0SIREN ~你不觉得守护同族这份职分有什么意义么？~
== BXANNN ~我凭什么觉得？我是个月之战者，可我也只是个被最下等的狗头人和一个怯懦的塞瑞克祭司抓住的弱法师。你觉得我还担得起我的职分么？~
= ~我发誓，若只由我选，我绝不会沾那把剑。~
== BC0SIREN ~你不过是个大懦夫。~
== BXANNN ~（叹气）~
EXIT

CHAIN IF ~
  %BGT_VAR%
InParty("Xan")
See("Xan")
InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Xan",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneXan1","GLOBAL",2)~ THEN BC0SIREN C0SireneXan2
~撒恩……上一场争吵，我该向你道歉。~
DO ~SetGlobal("C0SireneXan1","GLOBAL",3)~
== BXANNN ~你，向我道歉。这可不像你。~
== BC0SIREN ~我觉得我们一开始就走岔了。我叫你懦夫，那是我失格。~
= ~也许你对职分的热忱不如我对我的，可那仍是错的。不管你怎么说，你对职分的尽心不比我少，而我当时没看出来。~
== BXANNN ~啊……这真出人意料。你既然要道歉，那我也该还你一份。毕竟这场争吵是我起的头。也许我对你的信仰评判得……过于苛刻了。~
= ~我的信念没变——对抗苦是桩无望的努力。可不管代价地担下别人的苦，还不抱怨……这值得敬佩。我没那份胆气。~
= ~我起初不懂这一点，是我的愚。我请你原谅。~
== BC0SIREN ~（微笑）你这一族也许有超出他们自己所知的天赋，我的朋友。~
== BXANNN ~无关紧要。我们的劫数也许延后，可终究难免。~
EXIT

// Xzar 

CHAIN IF ~
  %BGT_VAR%
InParty("Xzar")
See("Xzar")
InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Xzar",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneXzar1","GLOBAL",0)~ THEN BC0SIREN C0SireneXzar1
~*抽鼻* 伊尔梅特的仁慈，这是什么臭味？克萨！~
DO ~SetGlobal("C0SireneXzar1","GLOBAL",1)~
== BXZAR ~嗯？~
== BC0SIREN ~我还以为是你身上来的。你包里到底装了什么，众神的名在上？闻着像里头死了什么东西。~
== BXZAR ~嗯，是死了，上上个布里立格（疯语）。你要我介绍你认识么？~
== BC0SIREN ~……不。不，克萨，求你别。~
== BXZAR ~跟尸体打个招呼吧！哦，她走开了。真无礼，哼！~
EXIT

// Yeslick

CHAIN IF ~
  %BGT_VAR%
InParty("C0Sirene")
See("C0Sirene")
InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Yeslick",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneYeslick1","GLOBAL",0)~ THEN BYESLI C0SireneYeslick1
~我这辈子见过不少怪事，可一个圣武士？你？~
DO ~SetGlobal("C0SireneYeslick1","GLOBAL",1)~
== BC0SIREN ~就是这样。有问题么？~
== BYESLI ~啊……不，不。我只是难以相信。~
== BC0SIREN ~证据就在你眼前，叶斯里克，在我的信仰和我的剑里。若我的话不能叫你安心，那我的作为会。~
== BYESLI ~说得在理；不过我可盯着你呢。~
EXIT

CHAIN IF ~
  %BGT_VAR%
InParty("C0Sirene")
See("C0Sirene")
InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Yeslick",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneYeslick1","GLOBAL",1)~ THEN BYESLI C0SireneYeslick2
~我，呃，一直在想我们上回说的话，小姑娘，我想我欠你一个道歉。~
DO ~SetGlobal("C0SireneYeslick1","GLOBAL",2)~
== BC0SIREN ~是因为你对我显出的不信么？不必，叶斯里克。我早就惯了。~
== BYESLI ~可我觉得我还是得说出来。你已证明你是哭泣之神的真信徒，不管你模样看着怎样。~
= ~我是个老矮人，开明、体谅别人是我的本分，不管他们表面上看着怎样。~
= ~我敬重你，孩子。你情愿撇下对你同族的偏见，去做那些会判你的人的保护者。这是条少有人肯走的难路。我真心请你原谅。~
== BC0SIREN ~我不怪你，我的朋友，我接受你的道歉。很少有人能越过对我出身的疑心。~
== BYESLI ~谢谢你，小丫头。你前头的路有光明的前程，别担心。~
EXIT
