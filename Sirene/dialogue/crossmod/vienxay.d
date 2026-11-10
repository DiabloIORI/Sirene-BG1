CHAIN IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("X3Vien",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneX3Vien1","GLOBAL",0)~ THEN X3VienB SireneVienxay1
~一个魔物，竟替别人担起苦来。你就这般恨自己，恨到要把身子扔给任何人，只为给自己的血换一星半点的怜惜？~
DO ~SetGlobal("C0SireneX3Vien1","GLOBAL",1)~
== BC0SIREN ~我不是为怜惜舍自己，维恩克赛，是为职分。~
== X3VienB ~你永远不会被爱。你永远是个怪物，而你的信念只叫你更弱。你的职分不过是锁链。~
== X3VIENB ~你若多照着自己的血行事，倒也许能学着更强些、活下来——就像我当年被不义地逐出我荣耀的家园时所做的那样。~
== BC0SIREN ~你很残忍，维恩克赛，我也不觉得能劝你明白我为何如此行事、为何替别人受痛。~
== X3VIENB ~你劝不动，也不必费心。至少，这还算受得住。~
== BC0SIREN ~为什么？~
== X3VIENB ~因为有你在一旁，至少我知道总有人会替我去死，好让最了不起的人永远活下去。~
EXIT