BEGIN C02SIREP

IF ~AreaCheck("bd4700")
GlobalLT("bd_plot","global",570)~ r0
SAY ~不管你要不要我，<CHARNAME>，我都会与你一同对抗这邪恶！~
IF ~~ DO ~SetGlobal("C02SireneKickedmdd1330","global",1)
SetGlobal("bd_joined","locals",0)~ EXIT
END

IF WEIGHT #-1 ~Global("C0SireneAngered","GLOBAL",1)~ angry
SAY ~别管我，<CHARNAME>。我会继续为营地尽我的力，可我不肯做你那些卑劣行径的帮凶。~
IF ~~ EXIT
END

IF ~OR(2)
	AreaCheck("BD0120")
	AreaCheck("BD0130")
	GlobalGT("bd_joined","LOCALS",0)~ p1
SAY ~我更愿意留在你身边，<CHARNAME>。你真要我此刻离开？~
 	++ ~只是暂且。留在这儿等我回来。~ + p2
	+ ~OR(2)
		!Range("ff_camp",999)
		NextTriggerObject("ff_camp")
		!IsOverMe("c0sirene")~ + ~只是暂且。回到入口那儿等我。~ + p3
 	++ ~不，留在我身边。~ + p0
END

IF ~~ p0
 SAY ~那好。我们走？~
IF ~~ DO ~JoinParty()~ EXIT
END
 
IF ~~ p2
 SAY ~是……我照你的吩咐做。~
IF ~~ DO ~SetGlobal("bd_joined","LOCALS",0)~ EXIT
END

IF ~~ p3
 SAY ~随你……在这危险的地方多加小心，<CHARNAME>。告辞。~
IF ~~ DO ~SetGlobal("bd_joined","LOCALS",0) EscapeAreaMove("BD0120",837,1777,NE)~ EXIT
END

IF ~OR(2)
AreaCheck("BD0120")
AreaCheck("BD0130")
Global("bd_joined","LOCALS",0)~ p4
 SAY ~你需要我么，我的朋友？~ [C0SIR011]
	++ ~我需要。你愿意回到我身边么？~ + p5
	++ ~你的剑在这地方会是件受欢迎的助力，塞琳。~ + p5
	++ ~现在不用。~ + p6
END

IF ~~ p5
 SAY ~我听你调遣，我的朋友。我们走吧。~
IF ~~ DO ~SetGlobal("bd_joined","LOCALS",1) JoinParty()~ EXIT
END

IF ~~ p6
 SAY ~我明白了……若这是你的意思。~
IF ~~ EXIT
END

IF ~GlobalGT("bd_joined","LOCALS",0)~ q1
SAY ~你不再想要我同行了么，<CHARNAME>？你若允许，我愿留在你身边。~
 	++ ~只是暂且。留在这儿等我回来。~ + q2
 	+ ~NextTriggerObject("ff_camp") IsOverMe("c0sirene")~ + ~我需要你在营地待一阵子，塞琳，等我再需要你。~ + q3
 	+ ~GlobalGT("bd_npc_camp_chapter","global",1)
	   GlobalLT("bd_npc_camp_chapter","global",5)
	   OR(2)
	   !Range("ff_camp",999)
	   NextTriggerObject("ff_camp")
	   !IsOverMe("c0sirene")~ + ~我需要你回营地待着，塞琳，等我再需要你。~ DO ~SetGlobal("bd_npc_camp","locals",1)~ + q4
 	++ ~既然如此，留下吧。~ + q0
END

IF ~~ q0
SAY ~多谢。我们继续走？~
IF ~~ DO ~JoinParty()~ EXIT
END

IF ~~ q2
SAY ~好吧……虽说我不喜欢在这地方等着，我还是信你的判断。~
IF ~~ DO ~SetGlobal("bd_joined","LOCALS",0)~ EXIT
END

IF ~~ q3
SAY ~是，随你的意思……我等你回来，我的朋友。~
IF ~~ DO ~SetGlobal("bd_joined","LOCALS",0)~ EXIT
END

IF ~~ q4
SAY ~是，随你的意思……我在营地等您回来，我的朋友。~
IF ~~ DO ~SetGlobal("bd_joined","LOCALS",0)~ EXIT
END

IF ~Global("bd_joined","LOCALS",0)~ q5
 SAY ~你需要我么，我的朋友？若这是你的意思，我急着回到你身边。~ [C0SIR011]
	++ ~是的。我要你在我身边，塞琳。~ + q6
	++ ~那就随我来。~ + q6
	++ ~现在不用。~ + p6
END

IF ~~ q6
SAY ~是，我听你调遣。带路吧。~
IF ~~ DO ~SetGlobal("bd_joined","LOCALS",1) JoinParty()~ EXIT
END

IF WEIGHT #-1 ~AreaCheck("bd0104")
Global("chapter","global",13)
Global("bd_jail_visitors","bd0104",5)
Global("C02SireneRomanceActive","global",2)~ postgame
SAY ~<CHARNAME>……~
+ ~Global("bd_player_exiled","global",0)~ + ~你要什么，塞琳？~ DO ~SetGlobal("bd_jail_visitors","bd0104",6) SetGlobal("bd_visit_player","locals",1)~ + postgamebad
+ ~!Global("bd_player_exiled","global",0)~ + ~你要什么，塞琳？~ DO ~SetGlobal("bd_jail_visitors","bd0104",6) SetGlobal("bd_visit_player","locals",1)~ + postgamegood
+ ~Global("bd_player_exiled","global",0)~ + ~你好。~ DO ~SetGlobal("bd_jail_visitors","bd0104",6) SetGlobal("bd_visit_player","locals",1)~ + postgamebad
+ ~!Global("bd_player_exiled","global",0)~ + ~你好。~ DO ~SetGlobal("bd_jail_visitors","bd0104",6) SetGlobal("bd_visit_player","locals",1)~ + postgamegood
+ ~Global("bd_player_exiled","global",0)~ + ~别烦我。~ DO ~SetGlobal("bd_jail_visitors","bd0104",6) SetGlobal("bd_visit_player","locals",1)~ + postgamebad1
+ ~!Global("bd_player_exiled","global",0)~ + ~别烦我。~ DO ~SetGlobal("bd_jail_visitors","bd0104",6) SetGlobal("bd_visit_player","locals",1)~ + postgamegood1
END

IF ~~ postgamebad
SAY ~我不知什么话能叫你满意，<CHARNAME>。也许我连来这一趟都是错的，我该闭口不言，把你忘了。可……我还是来了。~
++ ~斯基不是我杀的。求你了，别人都可以疑我，可你必须知道这一点。~ + postgamebad2
++ ~若见我只会给你这般痛，你又为何来？来怪我犯了桩你明知不是我犯的罪？~ + postgamebad2
++ ~你在这儿了。就这些的话，你现在可以走了。~ + postgamebad1
END

IF ~~ postgamebad1
SAY ~好吧。我本想在你这儿寻最后一丝指望……可看来我来，只是为看你把它踩在脚下碾碎。~
= ~告辞，<CHARNAME>。愿这一刻为我们两个好，成为最后一面。~
IF ~~ DO ~EscapeArea()~ EXIT
END

IF ~~ postgamebad2
SAY ~我什么都不知道。我只知道，我曾在乎过一个人，甚至可能爱上过一个<PRO_MANWOMAN>，而<PRO_MANWOMAN>此刻就戴着镣铐在我面前，因最重的谋杀之罪被判了刑。~
= ~不论真相是什么，我都帮不了你，<CHARNAME>。我只能祈祷这一切只是场残酷的噩梦，我醒来时又能见到你——我以为的那个你。~
++ ~那是真的。我们……我们是真实过的。可这不是。求你，你不能就这样丢下我。~ + postgamebad3
++ ~对不起。不管你怎样看我，我是真心对不起。~ + postgamebad3
++ ~那就走吧，去睡吧。也许你能如愿，把我——真正的我——留在这里受苦。~ + postgamebad1
END

IF ~~ postgamebad3
SAY ~不。我为你我过去的一切道歉，<CHARNAME>。若这一切都没发生，也许我会留在你身边，为你而*死*。~
= ~可那不过是场幻想，不是么？我本该知道的。你会坠入你祖血的黑暗，而我会杀了你，然后在悲痛里杀了自己。现在？现在都无关紧要了。~
= ~我们最好再不相见，<CHARNAME>。忘了我，也许有一天我也会忘了你。告辞。愿伊尔梅特护你免受不义之苦。~
IF ~~ DO ~EscapeArea()~ EXIT
END

IF ~~ postgamegood
SAY ~我对不起，<CHARNAME>。真、真对不起……我若更警觉、更谨慎些……也许我们就不会站在这里。我负了你。原谅我……~
++ ~没有什么可原谅的。这本是你不可能预见的。~ + postgamegood2
++ ~那你就是说，你认定我无辜。至少这让我松了口气。~ + postgamegood2
++ ~不论别的什么会发生，我都很高兴再见到你……再一次。~ + postgamegood2
++ ~你要说的就这些？走吧，塞琳。我不想再见到你。~ + postgamegood5
END

IF ~~ postgamegood1
SAY ~求你，我的——<CHARNAME>，至少听我这一次——若你当真愿意，你就再不会见到我。~
IF ~~ + postgamegood
END

IF ~~ postgamegood2
SAY ~凡是认得你的人——真正认得你、像我这样认得你的人——都不会相信你做出那样可怕的事。可我知道……真正判了你的，不是那件事。~
= ~那些把你称作英雄的人，那些从没真正认得你的人……他们怕的是你是什么。怕你会变成什么。~
++ ~我的血。永远是我这该死的血。~ + postgamegood4
++ ~那……你呢？你也怕这个么？~ + postgamegood3
++ ~我不想听这些。走吧，塞琳，再也不要回来。~ + postgamegood5
END

IF ~~ postgamegood3
SAY ~不，<CHARNAME>，我不怕……这安慰也算微薄。~
IF ~~ + postgamegood4
END

IF ~~ postgamegood4
SAY ~若在我能力之内，我会不惜一切来救你，<CHARNAME>。可我做不到。没有你，我连求见议会的资格都没有……而我这份血，只会成为不利于我的话柄。~
= ~我不能留在这里，<CHARNAME>。这对我们两个都太危险。我本愿在你身边活，也在你身边死……可若还有一线指望，就只能是这一条路。原谅我。~
++ ~我明白，塞琳。走吧，尽快出城。知道你平安，我也能安心。~ + postgamegood5
++ ~真是这个缘由，还是你已经把我当作救不回来的人了？~ + postgamegood5
++ ~我……那就算到此为止了。告辞，塞琳。~ + postgamegood5
++ ~那么，你也像其余的人一样抛下我。我本该料到的。滚开，别让我看见你。~ + postgamegood5
END

IF ~~ postgamegood5
SAY ~……~
= ~这也许是我们最后一面了。我但愿能更多一些……~
= ~让我最后碰你一次，我亲爱的<CHARNAME>……好叫我知道，那不只是场幻想。~
= ~……告辞。愿……愿伊尔梅特引你走过往后的试炼。~
IF ~~ DO ~EscapeArea()~ EXIT
END