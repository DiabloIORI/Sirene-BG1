CHAIN IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("X3Kale",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneX3Kale1","GLOBAL",0)~ THEN IF_FILE_EXISTS X3KaleB SireneKale1
~塞琳，你知道么，你有时候该吼一嗓子试试。~
DO ~SetGlobal("C0SireneX3Kale1","GLOBAL",1)~
== BC0Siren ~什——什么？~
== X3KaleB ~吼。就像打仗那样。你一嗓子喊得响亮，再挥出去，力道能翻倍。千真万确，每个英雄都这么干。~
== BC0Siren ~这倒……就算真是如此，我打是为了护住同伴，不是为了砍碎敌人。~
== X3KaleB ~嗤，得了吧。我使一柄大剑，你使一柄更大的剑。咱俩没什么相同处，可都是前线上顶能打的老粗，你不觉得么？~
== BC0Siren ~确实，说到这点，你也许能明白我为何打仗时偏好沉静。我不愿在战阵里迷失自己，害别人受伤。~
== X3KaleB ~哈，你们这些骑士坯子，为芝麻点大的事倔得要死。当真引不动你试一句：“尝一口魔种的死法！”就一次？~
== BC0Siren ~不了，多谢。~
EXIT