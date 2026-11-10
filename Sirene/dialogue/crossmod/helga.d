CHAIN IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("X3Helga",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneX3Helga1","GLOBAL",0)~ THEN X3HelgaB SireneHelga1
~我在你身上看见一位强悍的战士，伊尔梅特信徒。添上几分烈怒，你在战场上会立下更大的名号。~
DO ~SetGlobal("C0SireneX3Kale1","GLOBAL",1)~
== BC0Siren ~烈怒……我从不敢引以为荣地去使。但凡能不使，我便不使。~
== X3HelgaB ~我看你没那么天真。邪恶就得被打倒，而这事靠剑来做，不靠盾。~
== BC0Siren ~我打，是为了护。打倒恶徒、斩除邪恶……那是许多人抢着去做的差事。我见过太多无辜者倒下，声音无人听见。我是为他们而战，也不指望我的手段能教人畏惧。~
== X3HelgaB ~呸，你把你的惧怕都留给你要救的人么？随你便吧，我只看见一柄用错了的剑。~
EXIT