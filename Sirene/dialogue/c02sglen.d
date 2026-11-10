BEGIN C02SGLEN

IF ~OR(3)
	!InParty("C0Sirene")
	Dead("c0sirene")
	!IsValidForPartyDialogue("C0Sirene")
	RandomNum(4,1)~ a0
SAY ~我说，你就是博德之门的英雄吧？众神在上，能见到你真是荣幸！~
IF ~~ EXIT
END

IF ~OR(3)
	!InParty("C0Sirene")
	Dead("c0sirene")
	!IsValidForPartyDialogue("C0Sirene")
	RandomNum(4,2)~ a1
SAY ~这么多钢要打，时间这么少，嘿。你有什么需要？~
IF ~~ EXIT
END

IF ~OR(3)
	!InParty("C0Sirene")
	Dead("c0sirene")
	!IsValidForPartyDialogue("C0Sirene")
	RandomNum(4,3)~ a2
SAY ~伊尔梅特的手啊，可有太多人要趁手的好钢。我这会儿活堆成山，可早晚会轮到你，行么？~
IF ~~ EXIT
END

IF ~OR(3)
	!InParty("C0Sirene")
	Dead("c0sirene")
	!IsValidForPartyDialogue("C0Sirene")
	RandomNum(4,4)~ a3
SAY ~这军队跟老家那儿一点也不像。~
IF ~~ EXIT
END

CHAIN IF WEIGHT #-1 ~InParty("C0Sirene")
					 See("C0Sirene")
					 IsValidForPartyDialogue("C0Sirene")
					 Global("C02SireneGlen","GLOBAL",0)~ THEN C02SGLEN b1
~嘿，没什么比拿把好锤子捶直倔钢更痛快了。见着你真好，我的<PRO_LADYLORD>。我叫格伦。那么，你需要什么？~
DO ~SetGlobal("C02SireneGlen","GLOBAL",1)~
== C02SIREJ ~在炉前干这么久，看着挺难。你过得好么，先生？~
== C02SGLEN ~还算好，嘿。炉火那热度有股劲，叫我撑得住，虽说我这条腿不大中用……哎！~
== C02SIREJ ~怎么了？~
== C02SGLEN ~你……恕我，女士，可你是……~
== C02SIREJ ~哦，别怕，朋友。我确实有一丝魔血，可我无意害你。~
== C02SGLEN ~请您恕我，女士。只是……我从前来认识一个长着那种犄角的姑娘，跟你一样。~
== C02SIREJ ~你……真的么？~
== C02SGLEN ~我以伊尔梅特发誓是真的。我们一帮孩子都怕她怕得要死。她在的时候我们连饭都不敢吃。有一回我们把她惹得极狠，她抄起根棍子把我们打得青一块紫一块。还把我腿打折了，终身没好。~
== C02SIREJ ~啊……！~
== C02SGLEN ~照我记，那会儿我大概才五岁。那真是场活噩梦。~
== C02SIREJ ~她一定真切悔过自己的作为。你……恨她么？~
== C02SGLEN ~如今？见鬼，不。那时候我是个蠢孩子。后来当兵的指望没了，我就改行打铁。那是我这辈子最好的决定。~
== C02SGLEN ~那时候，也许我以为我恨她。可如今我愿回去狠狠给自己一巴掌，像我妈常做的那样。多半是我这黑心的混账遭了报应。若能再见她，我会求她原谅。~
== C02SIREJ ~你……你对自己太狠了。~
== C02SGLEN ~也许吧。如今改也来不及了。只能指望伊尔梅特大人知道，也恕我。~
== C02SIREJ ~他知道。我确信。你是个好人，格伦。~
== C02SGLEN ~谢谢你。你知道么，你叫我想到她，女士。不过你眼神挺和善。我想……也许我该把这个给你，抵我的罪。~
== C02SGLEN ~是我自己做的，离家不久就打的。我原想若能再见那姑娘就给她，叫她看我已经恕了她，也但愿她恕我。可我如今不指望再见到她，那不如给你，既然你叫我想到她。~
DO ~GiveItem("c02amul","c0sirene")~
== C02SIREJ ~我……我不配这样的礼物，先生。全然不配……~
== C02SGLEN ~唉，就当帮我个忙，收下吧。我天天带着，它一天比一天沉。但愿它能给你带来好运。质量差，抱歉，我做它的时候还是个生手。~
== C02SIREJ ~真……美。谢谢你。~
== C02SGLEN ~不必谢，女士。毕竟在外头保我们平安的是你。现在我得去找那辆车子了。祝各位<PRO_DAYEVENING>好。~
== C02SIREJ ~再会……朋友。~
DO ~ActionOverride("C02SGLEN",EscapeArea())~ EXIT