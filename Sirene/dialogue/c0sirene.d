// First meeting

BEGIN C0SIRENE

IF ~Global("C0SireneMetBG1","GLOBAL",0)~ THEN BEGIN j0
 SAY ~您好，我的<PRO_LADYLORD>。愿伊尔梅特的祝福与你同在。~
IF ~Alignment(Player1,MASK_EVIL)~ DO ~SetGlobal("C0SireneMetBG1","GLOBAL",1)~ + j1
IF ~!Alignment(Player1,MASK_EVIL)~ DO ~SetGlobal("C0SireneMetBG1","GLOBAL",1)~ + j2
END

IF ~~ j1
 SAY ~脚步当心，我的<PRO_LADYLORD>……我不知你意欲何为，可我不喜欢你在这儿。我不过是此处的客人，但我愿以性命守护这方圣地，这是我的职分。~
IF ~~ EXIT
END

IF ~~ j2
 SAY ~恕我这副不堪的模样。我不过是这座神殿的客人。若你此来是为见祭司，他们就在里面。~
	++ ~你看起来被打得不轻。出了什么事？~ + j3
	++ ~你是谁？~ + j4
	++ ~恕我直言，你看起来有点古怪。~ + j5
	++ ~抱歉，我这会儿没工夫说话。~ + j6
END

IF ~~ j3
 SAY ~没什么特别的……只是路上不太平。我来贝瑞戈斯特的路上，为着那些祸害剑湾的强盗受了些伤。所幸我还能走着到晨歌神殿。~
IF ~~ + j4
END

IF ~~ j4
 SAY ~我叫塞琳。我是哭泣之神伊尔梅特的信徒。不过我不是祭司。我属受苦圣战者这一支。~
	++ ~恕我，我实在忍不住留意到你的模样。~ + j5
	++ ~抱歉，我这会儿没工夫说话。~ + j6
END

IF ~~ j5
 SAY ~……是。我看我的模样没逃过你的眼。它从来逃不过，不是么？~
 = ~（叹气）我是个提夫林。魔种的血流在我血管里。我但愿不是这样，可我就是我。这过去给我添过麻烦，有过些我不愿回想的对峙。~
 = ~我真心希望不必再重演一次那样的事。我们伊尔梅特信徒求的是减轻苦，不是制造苦。~
	++ ~一个提夫林圣武士。真少见。~ + j7
	++ ~南方那些乱子，你知道些什么？~ + j8
	++ ~我说，我队里正缺个能打的。你愿意随我么？~ + j9
	++ ~告辞。~ + j6
END

IF ~~ j6
 SAY ~告辞，我的<PRO_LADYLORD>。愿伊尔梅特护你免于受苦。~
IF ~~ EXIT
END

IF ~~ j7
 SAY ~是，确实如此，我的<PRO_LADYLORD>；只是请你别再提。你的话早已不能叫我动怒，可我不愿再听一遍。~
IF ~~ + j13
END

IF ~~ j8
 SAY ~只有人人都会告诉你的那些。他们说纳什凯尔矿里出的铁被毒得毫无用处，也有人说那是恶魔的手笔。~
 = ~我试过亲自去查这件事，可我的模样招来了……麻烦。我被人赶了出来，还不是和平地赶。~
IF ~~ + j13
END

IF ~~ j9
 SAY ~这提议有意思……~
IF ~ReputationGT(Player1,9)~ + j10a
IF ~!ReputationGT(Player1,9)~ + j10b
END

IF ~~ j10a
 SAY ~嗯……单我一个人，能办成的事太少。你身上没有邪气，所以我相信你可托。你若肯要我，我愿站到你这一边。~
	++ ~当然，我相信你会是个可贵的朋友。顺说，我叫<CHARNAME>。~ + j11
	++ ~也许改日吧。~ + j12
END

IF ~~ j10b
 SAY ~我……不，恕我。我不想失礼，只是……我不确定你的路是否正派。也许……将来你若愿意有所改变……我会愿与你同行。~
IF ~~ EXIT
END

IF ~~ j11
 SAY ~那就叫<CHARNAME>了。我们走吧？~
IF ~~ DO ~SetGlobal("C0SireneJoined","LOCALS",1) JoinParty()~ EXIT
END

IF ~~ j12
 SAY ~随你。~
IF ~~ EXIT
END

IF ~~ j13
 SAY ~你还有别的想知道么？~
	++ ~你看起来被打得不轻。出了什么事？~ + j3
	++ ~你是谁来着？~ + j4
	++ ~恕我直言，你看起来有点古怪。~ + j5
	++ ~抱歉，我这会儿没工夫说话。~ + j6
END

// Talked to again, not in party

IF ~Global("C0SireneMetBG1","GLOBAL",1)~ THEN BEGIN k0
 SAY ~又见您好，我的<PRO_LADYLORD>。~
IF ~Alignment(Player1,MASK_EVIL)~ DO ~SetGlobal("C0SireneMetBG1","GLOBAL",1)~ + j1
IF ~!Alignment(Player1,MASK_EVIL)~ DO ~SetGlobal("C0SireneMetBG1","GLOBAL",1)~ + k1
END

IF ~~ k1
 SAY ~您有什么需要么？~
 	++ ~你愿意加入我的队伍么？~ + j9
	++ ~告辞。~ + j6
END
	