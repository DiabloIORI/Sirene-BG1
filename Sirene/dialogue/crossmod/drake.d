CHAIN IF ~InParty("C0Drake")
See("C0Drake")
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneDrake1","GLOBAL",0)~ THEN BC0Siren C0SireneDrake1
~怎么了，德雷克？你看我的样子，像在看什么稀罕物。我身上哪一点让你笑得这样？~
DO ~SetGlobal("C0SireneDrake1","GLOBAL",1)~
== BC0Drake ~也没什么，仁慈女士。你的意思是，我还是头一个觉得你有趣的人？~
== BC0Siren ~我不希望被同在一条路上的人这样打量。~
== BC0Drake ~是吗？那我便赔个不是——若我忘了你也是活人，也有心思和感受。往后我自会收敛些。~
== BC0Siren ~知道这个，我也没觉得好受多少，德雷克。（叹气）不过我想，我也拦不住你。~
EXIT

CHAIN IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneDrake1","GLOBAL",1)~ THEN BC0Drake C0SireneDrake2
~别这样，仁慈女士，有什么好愁眉苦脸的？我们这不还没死么。~
DO ~SetGlobal("C0SireneDrake1","GLOBAL",2)~
== BC0Siren ~你为什么这样叫我？~
== BC0Drake ~你不觉得这称呼挺抬举人吗？~
== BC0Siren ~不，可想想……我做过的那些事，这称呼实在不相称。这一路杀伐里，哪有什么仁慈。~
== BC0Drake ~哈！说得也是，可你也不见得比我们谁更有罪。~
== BC0Siren ~是，只是我似乎比别人更压得慌，压在自己做过的事上。~
== BC0Drake ~我想，但凡还有点良心的人，夺人性命之后都会悔，不管对方多卑劣；可我还没见过谁像你这样，事过这么久还把这份心思背在身上。~
== BC0Siren ~你觉得这很好笑？~
== BC0Drake ~不，我倒觉得挺可敬。换作我，未必撑得住。~
== BC0Siren ~……我明白了。我……谢谢你，德雷克。~
EXIT

CHAIN IF ~InParty("C0Drake")
See("C0Drake")
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneDrake1","GLOBAL",2)~ THEN BC0Siren C0SireneDrake3
~德雷克，你在光辉之心骑士团里地位不低，可你看上去一点也不满足。~
DO ~SetGlobal("C0SireneDrake1","GLOBAL",3)~
== BC0Drake ~我可没你想的那么受敬重，仁慈女士。后辈里头人缘是不错，可旁人觉得我这性子……不好相处。~
== BC0Siren ~为什么？~
== BC0Drake ~唉，做事该怎么做，和我们被告知该怎么做，总有几处对不上。我怎么都习惯不了。~
== BC0Siren ~你是想说，骑士团并没有看上去那么高尚？~
== BC0Drake ~不，他们本意是好的，这我信。只是……我们太看重个人的荣誉，有时候看得过了头。在安姆这样的地方，想保住良心干净，荣誉……可不是那么好守的。~
== BC0Siren ~我明白了……~
== BC0Drake ~要是你真知道我做过些什么，也许此刻就不会这么敬重我了。这话我就说到这里。~
EXIT