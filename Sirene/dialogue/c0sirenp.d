BEGIN C0SIRENP

IF ~Global("C0SireneJoined","LOCALS",1)~ p1
 SAY ~你真要我走么，<CHARNAME>？~
 	++ ~是，眼下。~ + p2
 	++ ~不，我改主意了。~ + p3
END
 
IF ~~ p2
 SAY ~随你。我暂且回晨歌神殿去。你在那儿能找到我。~
IF ~~ DO ~SetGlobal("C0SireneJoined","LOCALS",0) EscapeAreaMove("%bg1_eet_symbol%3400",1255,1150,2)~ EXIT
END

IF ~~ p3
 SAY ~那好。我们走？~
IF ~~ DO ~JoinParty()~ EXIT
END

IF ~Global("C0SireneJoined","LOCALS",0)~ p4
 SAY ~又见面了，<CHARNAME>。我仍愿意与你继续同行。~
	++ ~我也是。走吧。~ + p5
	++ ~还不到时候。~ + p6
END

IF ~~ p5
 SAY ~是，随你。~
IF ~~ DO ~SetGlobal("C0SireneJoined","LOCALS",1) JoinParty()~ EXIT
END

IF ~~ p6
 SAY ~听你这么说，我很失望。~
IF ~~ EXIT
END