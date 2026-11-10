CHAIN IF ~InParty("L#1Verr")
See("L#1Verr")
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
!StateCheck("L#1Verr",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneVerr","GLOBAL",0)~ THEN BC0Siren C0SireneVerr1
~罗刹，你那些自私的行径害许多人受了苦。我明知问了也是白问，可你对其中哪一桩，就没有半分愧疚？~
DO ~SetGlobal("C0SireneVerr","GLOBAL",1)~
== L#1VerrB ~会受伤的，只有我奉命要杀的人，和挡我路的人。~
== BC0Siren ~是，和我料的一样。我不知道自己为何还指望有别的答案……可你真的就不知羞耻么？~
== L#1VerrB ~提夫林，有多少人因你而受苦？那些与我们狭路相逢的强盗和劫掠者，也有自己的性命和所爱的人。知道他们再不能回家皆因你而起，你夜里还睡得着么？~
== BC0Siren ~夺人性命我从不觉得快意，但那都是为了那些被枉杀的人。我祈祷他们的灵魂得赎——这一点，你连自己都说不上。~
== L#1VerrB ~你的祈祷……你真以为那有用？不过是些空话和套话。~
== BC0Siren ~光靠言语，确实无用；可信仰给言语添了分量。这你不懂。我料你永远也不会懂。~
== L#1VerrB ~那就祈祷吧，若你非得这样打发时间。我不教你该怎么活——哪怕我觉着你是在糟蹋这条命。~
EXIT

CHAIN IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
!StateCheck("L#1Verr",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneVerr","GLOBAL",1)~ THEN L#1VerrB C0SireneVerr2
~你也许把太多工夫花在赞美伊尔梅特、低念祷词上，可我不得不承认你是名好战士。又快又强，这叫我意外。~
DO ~SetGlobal("C0SireneVerr","GLOBAL",2)~
== BC0Siren ~我真正的力量不在身上，在心里。我的信仰和意志救过我，是刀刃救不了的地方。我主的指引给我的力量胜过任何剑、甲、盾——侍奉伊尔梅特，我真心为荣。~
== L#1VerrB ~以班恩的一切罪孽起誓，你竟真信这个？~
== BC0Siren ~是，我信。~
== BC0Siren ~你要嘲弄便嘲弄吧，罗刹，我不会改我的路。~
== L#1VerrB ~那就不改。证明给我看，你差不多算个自由的东西。~
== BC0Siren ~维拉萨，你若不是一个恶的灵，我倒会怜悯你。你同你的刀爪一样空洞、没有生气，没有操守，也没有体恤。你可以披上人的脸、学人的做派，可没有信仰——不论信神还是信一个理——你终究不过是头畜生。~
== BC0Siren ~至于我，我会祈祷你有一天得赎，纵使毫无指望。~
== L#1VerrB ~得赎？哈！那该由谁来赎我？你么？这是白费工夫，不过你要嘟囔几句就嘟囔吧。~
EXIT

CHAIN IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
!StateCheck("L#1Verr",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneMatch","GLOBAL",1)
OR(2)
Global("L#1VerrRomanceActive","GLOBAL",1)
Global("L#1VerrRomanceActive","GLOBAL",2)
Global("C0SireneVerr","GLOBAL",2)~ THEN L#1VerrB C0SireneVerr3
~你知道么，你祈祷也好、礼拜也好，有一点你和我像……你对好看的<PRO_MALEFEMALE>倒是很有眼力，嗯？~
DO ~SetGlobal("C0SireneVerr","GLOBAL",3)~
== BC0Siren ~我不知你在说什么。我和你那……放浪全然不同。~
== L#1VerrB IF ~Gender(Player1,MALE)~ THEN ~你以为我没瞧见你盯着咱们英俊的领头人看么，女人？得了吧，我又不瞎。~
== L#1VerrB IF ~Gender(Player1,FEMALE)~ THEN ~你以为我没瞧见你盯着咱们美丽的领头人看么，女人？得了吧，我又不瞎。~
== BC0Siren ~我没有……我……<CHARNAME>是位值得敬慕的<PRO_MANWOMAN>。我若看向<PRO_HIMHER>，那是出于敬重。我绝不妄自揣度，以为自己于<PRO_HIMHER>能重于<PRO_HESHE>所愿。~
== L#1VerrB ~拉万娜的蛋蛋，你怎么能这样活着，我真想不通。你要是个男人，我非问问你有没有那话儿！你屁股里那根棍子是不是捅得太深，把你的乐子都掏光了？~
== BC0Siren ~罗刹，我若始终不曾坠入那吞了你的纵欲之坑，那还远远不够早。把你那些脏话扔到别处去。~
== L#1VerrB ~啊，好吧。反正我也腻了。~
== L#1VerrB IF ~GlobalGT("L#1VerrRomanceTalk","GLOBAL",8)
OR(2)
Global("L#1VerrRomanceActive","GLOBAL",1)
Global("L#1VerrRomanceActive","GLOBAL",2)~ THEN ~既然我知道<PRO_HESHE>真正要的是什么，你就算想跟<CHARNAME>有点什么也没戏了。不过，要是我讲一两句我们的私事给你听，你也许能好受些，嗯？<PRO_HISHER>舌在我嘴里是什么滋味，<PRO_HESHE>怎么和我共享汗水与热度，我进得有多深——~
== BC0Siren IF ~GlobalGT("L#1VerrRomanceTalk","GLOBAL",8)
OR(2)
Global("L#1VerrRomanceActive","GLOBAL",1)
Global("L#1VerrRomanceActive","GLOBAL",2)~ THEN ~滚——滚开，畜生！再多一个字，我就替伊尔梅特讨回早该讨的公道，我发誓！~
EXIT