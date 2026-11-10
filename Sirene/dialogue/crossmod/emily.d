I_C_T X3EHK3 1 C0SireneX3EHK31
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~猎人，我从前也遇到过你们这样的。那些对我心存疑虑的人，我同情；可你们的动机半点不高尚。退下吧——我不会犹豫，护我自己，也护我的同伴！~
== X3EHK3 ~你这番话全是谎，魔物。正好证明了你本性狡诈。~
END

I_C_T X32EHK3S 0 C0SireneX32EHK3S0
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) Global("C0SireneX3EHK31","GLOBAL",1)~ THEN ~这些人身上的颜色，跟我们先前打过的猎人一样。虽然我希望不是，但他们恐怕同样听不进道理。~
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) !Global("C0SireneX3EHK31","GLOBAL",1)~ THEN ~这种猎人我从前也领教过。他们从不听道理……只怕这一回，也得以血收场。~
END
