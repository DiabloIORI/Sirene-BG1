CHAIN IF ~InParty("V#1WHI")
See("V#1WHI")
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
!StateCheck("V#1WHI",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneWhite1","GLOBAL",0)~ THEN BC0Siren C0SireneWhite1
~你提过自己是在一座神殿里长大的，怀特。那你怎么会没有信仰？~
DO ~SetGlobal("V#C0SireneWhite1","GLOBAL",1)~
== V#1WHIB ~没有祭司在，那也算不上什么神殿。我母亲教过我，可她从没使劲把那些信仰、礼拜的东西往我脑子里灌。~
== BC0Siren ~我明白了。可你从没感到过呼召？我发觉，自从我有了可以为之活着的因由，我自己的路反倒更清楚了。~
== V#1WHIB ~听着不错，可那不是我的路子。我更愿意做我自己的主。~
== BC0Siren ~信仰并不是你把它说成的那副脚镣，怀特。~
== V#1WHIB ~不是吗？我是说——看看你。你天天拿命去护那些你并不欠他们什么的人，而他们还因你的血怕你。若不是你的宗教要求你如此，你何必这么做？~
== BC0Siren ~这……我想确是如此，可是……哪怕起初只是职分，我护别人，是因为我真心愿意。侍奉伊尔梅特我主，我不后悔。~
== V#1WHIB ~我懂。可我不需要什么更高的力量来告诉我该做什么。我要护谁，就护我喜欢的人，因为我想护。谁也别想说别的。~
== BC0Siren ~你想怎样便怎样，这该是你自己的意志。只是……我希望你能找到一种合你心意的信仰。~
EXIT

CHAIN IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
!StateCheck("V#1WHI",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneWhite2","GLOBAL",0)~ THEN V#1WHIB C0SireneWhite2
~你……也跟旁人不同，是不是？我留意到了。男人还是女人，于你都无妨。还是我说错了？~
DO ~SetGlobal("V#C0SireneWhite2","GLOBAL",1)~
== BC0Siren ~我……不，你没说错。那又如何？~
== V#1WHIB ~没什么。我承认我还有点羡慕。我并不为自己的偏好羞耻，可你……你可以爱任何你想爱的人。~
== BC0Siren ~是，我可以；只是我若有这份心，我怀疑没几个会回我。~
== V#1WHIB ~换作我，我就不那么在意。我要是有魔种的血、旁人因此避我，那他们就压根不配我的心意。~
== BC0Siren ~这话你说来轻巧，只是……真做起来，比听着难。~
== V#1WHIB ~抱歉，我大概不该擅自揣度。我只是照自己惯常的样子来想。你是打小就知道么？~
== BC0Siren ~我说不上来，怀特，因为我连自己都记不清了……我想我一直是被人心里的善所引，不论那是什么样的人。~
== V#1WHIB ~这倒有意思。别人喜欢什么，通常不关我的事；可你肯跟我说这些，我还是感激。~
EXIT