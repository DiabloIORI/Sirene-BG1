INTERJECT BDSCHAEL 39 C0BDSCHAEL39
== BDSCHAEL ~我还听说，本地海尔姆神殿有位伊尔梅特圣武士在帮着救治伤者……只是近来涌进城的人实在太多，她这会儿多半已经在铁王座那栋楼里了。有人告诉我，她尽量用白兜帽遮住脸，不知你有没有印象。~
DO ~SetGlobal("C0BDSCHAEL39","GLOBAL",0)~
COPY_TRANS BDSCHAEL 39

CHAIN IF WEIGHT #-1
~AreaCheck("BD0111")
IsValidForPartyDialogue("C0Sirene")
Global("C02SireneSchaelIntro","GLOBAL",0)~ THEN BDSCHAEL C0SireneSchael
~看来你寻盟友的事有了结果，<CHARNAME>。也许你愿意引见一下你的朋友？~
END
++ ~当然。塞琳，这位是沙埃尔·科尔温上尉。科尔温——这是塞琳，伊尔梅特的圣武士。别在意犄角。~ DO ~SetGlobal("C02SireneSchaelIntro","GLOBAL",1)~ EXTERN C02SIREJ C0SireneSchael1
++ ~引见的事往后再谈，时间尽有。眼下有要事得办。~ DO ~SetGlobal("C02SireneSchaelIntro","GLOBAL",1)~ EXTERN BDSCHAEL C0SireneSchael2

CHAIN C02SIREJ C0SireneSchael1
~幸会，上尉。我……希望我们能共事无碍。~
== BDSCHAEL ~幸会的该是我。在我面前不必紧张——只要你真是你说的那个身份。~
== C02SIREJ ~我明白，上尉。多谢。~
== BDSCHAEL ~好，这话说清了我就放心。那么，<CHARNAME>……~
EXTERN BDSCHAEL 222

CHAIN BDSCHAEL C0SireneSchael2
~我想你说得对。~
EXTERN BDSCHAEL 222