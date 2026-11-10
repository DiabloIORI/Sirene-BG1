BEGIN C02SIRB

CHAIN IF WEIGHT #-1
~IsValidForPartyDialogue("C0Sirene")
Global("C02SireneMystery","GLOBAL",1)~ THEN C02SIRB a1
~致敬，行路的各位，请稍等。我来寻你们当中的一个人。~
== C02SIREJ ~你穿着伊尔梅特大人的颜色，朝圣者。你来此为何？~
== C02SIRB ~我寻一位信仰的斗士。你是伊尔梅特的塞琳么？~
== C02SIREJ ~是……我是。我不知教中旁人也知道我。你需要什么，兄弟？~
== C02SIREJ ~等等……有哪里不对。你……~
END
++ ~怎么了，塞琳？~ EXTERN C02SIREJ a1.1
++ ~有什么不对么？~ EXTERN C02SIREJ a1.1
++ ~我们没工夫耽搁。~ EXTERN C02SIREJ a1.2

CHAIN C02SIREJ a1.2
~等等，<CHARNAME>。这祭司有些异样……~
EXTERN C02SIREJ a1.1

CHAIN C02SIREJ a1.1
~你穿着伊尔梅特信徒的行头，我却从你身上觉不出任何气息，善恶都无。可……我知道你不是你自称的那个人。~
== C02SIRB ~嘿，厉害。你已经推出这么多了，是么？~
== C02SIREJ ~我读不出你的意图，可另有什么东西对你起了反应……我的血。你是谁？~
== C02SIRB ~我的名字无关紧要。只需说，我和你一样，出自凶险的血脉。~
== C02SIREJ ~也许吧。你找我做什么？~
== C02SIRB ~我什么都不要。我不过来……评判你，为我自己的利害，也为我女神的。~
== C02SIREJ ~你的女神？果然如我所料，那你并非伊尔梅特的真信徒。~
== C02SIRB ~不错。我的虔信归于塔罗娜。~
== C02SIREJ ~塔罗娜……！~
== C02SIRB ~看来你熟她的名。~
== C02SIREJ ~你若当真敬毒之女士，那你就是我的死敌，我该当场把你杀了。~
== C02SIRB ~静些，亲爱的。我无意与你为敌……至少眼下。疫之主确实有意叫你倾覆，可要紧的是*我*对你的兴趣。~
== C02SIREJ ~你的兴趣……？你既无意杀我，那还有什么别的兴趣？~
== C02SIRB ~你不知道？啊，你当然不会知道。很久以前我们见过一面，那时我还是另一个人。塞琳，有许多事你必定想不起来……凶手、弑亲者、生于不幸。~
== C02SIREJ ~什么？你在说什么？~
== C02SIRB ~嘿……我最想看的莫过于你在绝望与困惑中死去，可我女主眼下要你活着，好叫你活着尝那份疑的痛。为我自己，我照她的意办……~
== C02SIREJ ~不，你不能带着这些问题就走。告诉我！~
== C02SIRB ~你也许终究会明白，若你能活过这一遭。在那之前，塞琳……告辞。~
DO ~DisplayStringHead(Myself,@0)
ForceSpell(Myself,DRYAD_TELEPORT)
CreateCreatureObjectDoor("c02demkn",Player1,0,0,0)
Wait(2)
ActionOverride("c02demkn",ReallyForceSpell("c02demkn",WIZARD_FIRE_SHIELD_RED))
ActionOverride("c02demkn",ReallyForceSpell("c02demkn",WIZARD_HASTE))
ActionOverride("c02demkn",ReallyForceSpell("c02demkn",WIZARD_STONE_SKIN))
ActionOverride("c02demkn",ReallyForceSpell("c02demkn",WIZARD_IMPROVED_MANTLE))
ActionOverride("c02demkn",ForceSpell("c02demkn",WIZARD_SUN_FIRE))~
EXIT