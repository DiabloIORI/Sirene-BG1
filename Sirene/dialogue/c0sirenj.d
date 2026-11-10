BEGIN C0SIRENJ

// ---------------------------------------------
// Friendship Track
// ---------------------------------------------

// 1.
CHAIN IF ~Global("C0SireneTalksBG1","GLOBAL",2)~ THEN C0SIRENJ t1
~我觉得我该代表那些在矿里受苦的人谢您，我的<PRO_LADYLORD>。您做了一件可敬的事。~
DO ~IncrementGlobal("C0SireneTalksBG1","GLOBAL",1)
RealSetGlobalTimer("C0SireneTalksBG1Timer","GLOBAL",2700)~
END
	++ ~那不算什么。~ + t1.1
	++ ~多谢夸奖。~ + t1.2
	++ ~那是达成目的的必要手段。~ + t1.3
	++ ~我不太想谈这个。~ + t1.4

APPEND C0SIRENJ

IF ~~ t1.1
 SAY ~我想那些被您从惨淡结局里救下来的人不会这么看。（微笑）~
IF ~~ + t1.4
END

IF ~~ t1.2
 SAY ~这不算什么麻烦，我的<PRO_LADYLORD>。至少您受得起这一句。~
IF ~~ + t1.4
END

IF ~~ t1.3
 SAY ~是，当然。无论如何，您已证明自己是位可敬的<PRO_MANWOMAN>。~
IF ~~ + t1.4
END

IF ~~ t1.4
 SAY ~说实话，我很高兴。起初我还怀疑自己随你同行是不是做对了，可你打消了我的顾虑；我为自己曾有过疑虑而该道歉。~
 = ~我……不惯与同伴同行。我不知你前头有什么样的任务，可只要是正当的，我就留在你身边。希望我们共事顺利，我的<PRO_LADYLORD>。~
	++ ~我也如此，塞琳。~ + t1.6
	++ ~别那么叫我。我叫<CHARNAME>。~ + t1.7
	++ ~你跟我们在一起的时候，最好也出份力。~ + t1.8
END

IF ~~ t1.5
 SAY ~说得在理。无论如何，你已赢得了我的敬重。~
IF ~~ EXIT
END

IF ~~ t1.6
 SAY ~听你这么说，我很高兴。~
IF ~~ + t1.9
END

IF ~~ t1.7
 SAY ~（微笑）若你更愿意这样。~
IF ~~ + t1.9
END

IF ~~ t1.8
 SAY ~这你不必费心，<CHARNAME>。~
IF ~~ + t1.9
END

IF ~~ t1.9
 SAY ~我想我占用你够多时间了，我的朋友。带路吧。~
IF ~~ EXIT
END
END

// 2. triggers in any city or town area, and probably the major road areas too

CHAIN IF ~Global("C0SireneTalksBG1","GLOBAL",4)~ THEN C0SIRENJ t2
~我从没说过，我多感激你肯让我随你同行，<CHARNAME>。~
= ~许多人看见我的犄角，就不会给我机会。~
DO ~IncrementGlobal("C0SireneTalksBG1","GLOBAL",1)
RealSetGlobalTimer("C0SireneTalksBG1Timer","GLOBAL",2700)~
END
	++ ~你的出身常给你添麻烦么？~ + t2.1
	++ ~我从小受的教，是不因一个人的种族而存偏见。~ + t2.2
	+ ~Global("C0SireneMatch","GLOBAL",1)~ + ~其实我倒觉得它们相当好看。~ + t2.3
	++ ~我带你同行，是因为我觉得你有用。别的我不在乎。~ + t2.4

APPEND C0SIRENJ

IF ~~ t2.1
 SAY ~……是。比我愿意回想的还要频繁。~
IF ~~ + t2.5 
END

IF ~~ t2.2
 SAY ~这话叫人欣慰。那你当年是被一位明智的师长教大的。~
IF ~~ + t2.5 
END

IF ~~ t2.3 
 SAY ~（笑）你说的话真讨喜，<CHARNAME>。但愿旁人也这么想。~
IF ~~ + t2.5 
END

IF ~~ t2.4
 SAY ~……说得在理。~
IF ~~ DO ~SetGlobal("C0SireneMatch","GLOBAL",2)~ EXIT
END

IF ~~ t2.5 
 SAY ~我在剑湾游历时，被许多城镇赶出来过。我说过，我甚至被拒于纳什凯尔矿外。若不是你解开了那桩谜案，我只怕得用更孤注一掷的法子。~
	++ ~什么样的孤注一掷？~ + t2.6
	++ ~你不能就那么放着不管么？~ + t2.7
	++ ~以你的本事，没有我也解得开。~ + t2.8
	++ ~你对自己的本事倒有信心。~ + t2.9
END

IF ~~ t2.6
 SAY ~嗯，我听说贝瑞戈斯特住着一位强力的法师。我打算为那趟求一个法术伪装。（微笑）~
= ~凯尔达斯大人坚持说那不成。塔兰提尔是个独来独往的法师，就算他是镇长，对那人也说不上什么话。可我倒愿意赌一赌他会不会发一回善心。~ 
IF ~~ + t2.10
END

IF ~~ t2.7
 SAY ~不，我不能。毕竟那会有违我作为圣武士的职分。~
IF ~~ + t2.10
END

IF ~~ t2.8
 SAY ~你太客气了，<CHARNAME>。我并没那份天分，我跟你说实话。你的潜力比我大得多，不知多少倍。~
IF ~~ + t2.10
END

IF ~~ t2.9
 SAY ~这不叫信心。叫执念更合适。~
IF ~~ + t2.10
END
 
IF ~~ t2.10
 SAY ~这话从我这种人嘴里说出来，你也许觉得怪；可我确实尽力守着我这伊尔梅特受难者位分的价值。~
 = ~这……是件相当孤单的差事，因为我在行旅中极少遇见同信的人；遇见的那些又都避着我，叫我骗子、欺瞒者。~
	++ ~你到底是怎么当上圣武士的？~ + t2.11
	++ ~听起来很难。~ + t2.12
	++ ~你没有家人么？~ + t2.13
END

IF ~~ t2.11
 SAY ~这不是什么了不起的故事，我的朋友……我的过去就和你料想的一样。北方有位游方的伊尔梅特朝圣者发现了我，把我从冻饿几乎必死里救了下来。~
 = ~他把我带到很南边，泰瑟尔城外一座哭泣之神的神殿，在那里和其他孤儿一起养大。说实话，他们的名字我记得没几个。我们……从没亲近过，因为周围的人都当我是受了咒的。~
 = ~我小时候性子急、又莽撞。我的师长们说我没那副性情做个像样的伊尔梅特祭司，于是我的监护人建议我改走武职。（微笑）我不后悔，只是……~
IF ~~ + t2.14
END
 
IF ~~ t2.12
 SAY ~这话我听过太多次，已经伤不着我了；不过某种意义上，是的，仍然难。~
 = ~我到现在仍觉得奇怪：别家信仰的人能聚在一处、彼此作伴，可我们……~
IF ~~ + t2.14 
END
 
IF ~~ t2.13
 SAY ~不……我是被伊尔梅特的祭司们当孤儿养大的，多半是因为我这份魔血被父母丢弃。他们在哪儿、是否还活着、究竟在不在乎我……我说不上。~
IF ~~ + t2.14 
END

IF ~~ t2.14 
 SAY ~我常觉得自己没有一个地方真能叫做家。我想，眼下这里就是那地方了，只要你还肯留我。~
	++ ~你想留多久，就与我们同留多久。~ + t2.15
	+ ~Class(Player1,PALADIN_ALL)~ + ~我绝不会赶走一位同道圣武士。~ + t2.15
	++ ~你可以与我们同行，不过我说不准能多久。~ + t2.16
END
 
IF ~~ t2.15
 SAY ~谢谢你，<CHARNAME>。~
IF ~~ EXIT
END
 
IF ~~ t2.16
 SAY ~这于我也够了。~
IF ~~ EXIT
END
END

// 3.
CHAIN IF ~Global("C0SireneTalksBG1","GLOBAL",6)~ THEN C0SIRENJ t3
~抱歉我又吵你耳朵了，<CHARNAME>；只是……我可以问问你的来历么？~
= ~你提过你是烛堡出身，不是么？那地方我知道得少，只听说在那儿安家的人很少离开。可以讲讲出了什么事么？~
DO ~IncrementGlobal("C0SireneTalksBG1","GLOBAL",1)
RealSetGlobalTimer("C0SireneTalksBG1Timer","GLOBAL",2700)~
END
	++ ~我的养父戈里安被一个不明来历的人杀了。我要找他报仇。~ + t3.1
	++ ~还能有什么别的原因让一个年轻的<PRO_MANWOMAN>离乡？冒险、情爱、伙伴，随你说。~ + t3.2
	++ ~我想多了解史书上记不下的那个外面的世界。~ + t3.3
	++ ~这不是我自己选的。~ + t3.4
	++ ~我不知道。就是这样发生的事之一。~ + t3.4

APPEND C0SIRENJ

IF ~~ t3.1
 SAY ~比我预料的更残酷的缘由。我为你的损失感到难过。~
IF ~~ + t3.5
END

IF ~~ t3.2
 SAY ~我当然明白。虽说我对伊尔梅特有职分，有时我也确实只是渴着路上的那种意气。~
IF ~~ + t3.5
END

IF ~~ t3.3
 SAY ~（微笑）知识是件怪东西，我的朋友。你也许会被它整个淹进去。~
IF ~~ + t3.5
END

IF ~~ t3.4
 SAY ~那么，就只是命运的一个转折？~
IF ~~ + t3.5
END

IF ~~ t3.5
 SAY ~我还没到成年，就离开家乡上路朝圣了。如今已过了许多年，可我离乡那天的情形，清楚得就像昨天。我知道离开家、不知能否再回去的滋味。~
 = ~恕我，我的朋友。我又只顾谈我自己了。你的家人呢？他们是烛堡的学者么？还是和我一样，是个孤儿？~
	++ ~我什么都不知道。我记事起就是戈里安养大的。~ + t3.6
	++ ~戈里安是我唯一的亲人。~ + t3.6
END

IF ~~ t3.6
 SAY ~那么在这点上，我们算是同类……不过至少你还有个能叫父亲的人。我没那么幸运。~
 = ~朋友呢？我神殿里有许多一同受养的同伴。烛堡里还有别的孩子么？~
    + ~InParty("IMOEN%BG1_EET_IMOEN%")~ + ~有爱蒙。~ + t3.7
	++ ~在烛堡，我有几个儿时的朋友。~ + t3.7
	++ ~比起别的孩子，我一向更喜欢和大人待着。~ + t3.7
	++ ~有的，可我们不亲近。我算是孤单的那一类。~ + t3.7
END

IF ~~ t3.7
 SAY ~我明白了。~
 = ~某种意义上，我很意外。我们各有不同，<CHARNAME>，可我觉得我们在许多地方很像。我希望我们能互相当作朋友。~
 = ~了解一位朋友的童年，叫我……自我感觉好一些吧。谢谢你耐着性子听我说。~
IF ~~ EXIT
END

END

// 4.
CHAIN IF ~Global("C0SireneTalksBG1","GLOBAL",8)~ THEN C0SIRENJ t4
~<CHARNAME>，我可以问么……有个父亲是什么滋味？你们亲近么？~
DO ~IncrementGlobal("C0SireneTalksBG1","GLOBAL",1)
RealSetGlobalTimer("C0SireneTalksBG1Timer","GLOBAL",2700)~
END
	++ ~是养父，塞琳。~ + t4.1
	++ ~戈里安和我信念不同。我们常争，可我仍爱他。~ + t4.2
	++ ~他严厉，却心善。我不能要求更多了。~ + t4.2
	++ ~我恨他！永远是规矩和说教，从不给我自己选择的机会……~ + t4.3
	++ ~我从没当他是我的父亲。~ + t4.4

APPEND C0SIRENJ

IF ~~ t4.1
 SAY ~是……当然。~
 = ~恕我多问。我只是想知道，你和戈里安的关系，比起我和我的监护人们如何。~
IF ~~ + t4.5
END

IF ~~ t4.2
 SAY ~听你这么说，我很高兴。我但愿也曾认得一位父亲般的人，哪怕只是有时候能和他吵几句。~
IF ~~ + t4.5
END

IF ~~ t4.3
 SAY ~我……不能说懂你的感受；可我仍得说，有时候我们做的选择未必全然是最好的。~
IF ~~ + t4.5
END 
 
IF ~~ t4.4
 SAY ~当真？那也许在这点上我们相似。我从没把养我的祭司们当家人。~ 
IF ~~ + t4.5
END

IF ~~ t4.5
 SAY ~我自己被养大的经历……往轻里说，也是孤单的。虽说是祭司们养我，可我一直被当作受养的孤儿，不是家人。~
 = ~别的孩子多半因为我的模样当我是受了咒的，避着我。那些不避的……就扔石头、骂我。~
	++ ~我自己在烛堡那几个孩子里，也从来不受欢迎。~ + t4.6
	++ ~你……还手过么？~ + t4.7
	++ ~太可怕了！祭司们就没管么？~ + t4.8
	++ ~我这会儿不想谈这个。~ + t4.9
END

IF ~~ t4.6
 SAY ~那不可能，我的朋友。（微笑）你不像那种人。~
IF ~~ + t4.10
END

IF ~~ t4.7
 SAY ~是，还手过。我不以此为荣，可我小时候没那么多的拘束。~
IF ~~ + t4.10
END

IF ~~ t4.8
 SAY ~若我告诉他们，他们也许会管；可我倔，而且我想我已经明白，他们的残忍出自恐惧，不是恶意。我不怪他们。~
IF ~~ + t4.10
END

IF ~~ t4.9
 SAY ~是，随你。~
IF ~~ EXIT
END

IF ~~ t4.10
 SAY ~有一天，三个欺我的男孩笑我被父母丢弃，我跟他们打了。我把其中一个打得很重，那伤他一辈子也没全好。~
 = ~我当然受了罚。伊尔梅特信徒是宽厚的，可我越了界，那罚我该受。~
	++ ~你一句为自己辩解的话也没说？~ + t4.11
	++ ~我从没想过你是会动手的人，塞琳。~ + t4.12
	++ ~太可怕了……你后悔么？~ + t4.13
	++ ~真可惜。我们能走了么？~ + t4.14
END

IF ~~ t4.11
 SAY ~我认为我没有辩解的权利。我因怒出手，就这些。我没什么可说，也认了后果。~
IF ~~ + t4.12
END
 
IF ~~ t4.12
 SAY ~也许我的师长们以为圣武士的身份能收住我的性子。也或许他们觉得，我露出的那点暴烈，最好用在武技训练上。~
 = ~我承认，有时我仍难管住自己更野的那一面。我尽力了，可我体内那恶的血流得很深。~
	++ ~别误会，我只是惊讶你竟真的当上了圣武士。~ + t4.15
	++ ~与自己天生的冲动相斗，很难么？~ + t4.16
	+ ~Global("C0SireneMatch","GLOBAL",1)~ + ~你想的话，在我面前露出野的那一面也行，我不介意。~ + t4.17
END

IF ~~ t4.13
 SAY ~当然。如今我更明白事理，更难些；可那时我就知道那是错的。~
IF ~~ + t4.12
END

IF ~~ t4.14
 SAY ~是……是，我们该走了。抱歉我提起这个。~
IF ~~ EXIT
END

IF ~~ t4.15
 SAY ~当时我是这么想，我教会里许多更刻薄的年长者也这么想。他们说那是件无望的事，就算伊尔梅特肯收我为斗士，我的同道也永远不会接纳我。~ 
IF ~~ + t4.18
END

IF ~~ t4.16
 SAY ~我承认，本可以更糟。据说我有魔种的祖血，所以至少我还向着秩序，虽说谈不上无私。~
IF ~~ + t4.18
END

IF ~~ t4.17
 SAY ~（笑）你不该拿我的处境取笑，<CHARNAME>；可怪的是……这倒有用。~
IF ~~ + t4.18
END

IF ~~ t4.18
 SAY ~我忍不住想，我的教会其实是高兴我走的。我若没自己选择离开，镇民早晚也一定会把我赶走……我并不想念那地方，可离开时仍难，因为我知道肯接纳我的地方不多。~
	++ ~你是个好人。我相信这世上总有你的地方。~ + t4.19
	++ ~嗯，若真没你的地方，你就跟我们在一起。~ + t4.19
	+ ~!Global("C0SireneMatch","GLOBAL",1)~ + ~我可以做你的朋友。~ + t4.20
	+ ~Global("C0SireneMatch","GLOBAL",1)~ + ~我可以做你的朋友。~ + t4.21
	++ ~我能说什么？也许这世上本没有为你准备的地方。~ + t4.22
END

IF ~~ t4.19
 SAY ~这已超出我所能指望的了，我的朋友。~
IF ~~ EXIT
END

IF ~~ t4.20
 SAY ~你的友谊于我是真正的馈赠，<CHARNAME>。~
IF ~~ EXIT
END

IF ~~ t4.21
 SAY ~你的友谊于我是真正的馈赠，<CHARNAME>。我但愿……~
 = ~不，算了。也许只是一时的幻想。刚才闪过我脑子的念头，我不敢说。我们继续吧。~
IF ~~ EXIT
END

IF ~~ t4.22
 SAY ~也许你说得对。~
IF ~~ EXIT
END
END

// 5
CHAIN IF ~Global("C0SireneTalksBG1","GLOBAL",10)~ THEN C0SIRENJ t5
~唉，我本以为这些淤伤会退得快些，可它们还在。~
DO ~IncrementGlobal("C0SireneTalksBG1","GLOBAL",1)
RealSetGlobalTimer("C0SireneTalksBG1Timer","GLOBAL",2700)~
END
	+ ~NumInPartyGT(2)~ + ~你打仗时太不计后果了，塞琳。~ + t5.1
	+ ~NumInPartyLT(3)~ + ~你打仗时太不计后果了，塞琳。~ + t5.2
	++ ~疼么？~ + t5.3
	+ ~Global("C0SireneMatch","GLOBAL",1)~ + ~它们倒也没怎么减损你的好看。~ + t5.4
	++ ~让它们治好吧。~ + t5.5

APPEND C0SIRENJ

IF ~~ t5.1
 SAY ~为别人受苦，是伊尔梅特信徒的职分，<CHARNAME>。我不后悔这些伤，只要我们的同伴免了它们。~
IF ~~ + t5.5  
END 
 
IF ~~ t5.2
 SAY ~为别人受苦，是伊尔梅特信徒的职分，<CHARNAME>。我不后悔这些伤，只要你免了它们。~
IF ~~ + t5.5  
END

IF ~~ t5.3
 SAY ~不疼。嗯，也许会疼，可这类痛我惯了。~
IF ~~ + t5.5
END

IF ~~ t5.4
 SAY ~（微笑）你只是想叫我好受些，<CHARNAME>。~
IF ~~ + t5.5  
END

IF ~~ t5.5 
 SAY ~（叹气）说实话，<CHARNAME>，我提起这个，是因为这些伤让我想起了我们初遇。你记得么？~
 	++ ~记得。你说你被强盗伤了。~ + t5.6
 	++ ~不太记得。你受伤太频繁了。~ + t5.7
 	++ ~没工夫闲聊。~ + t5.8
END

IF ~~ t5.6
 SAY ~是，只是我怕当时只说了半真的话。~
IF ~~ + t5.9
END

IF ~~ t5.7
 SAY ~我记得。照我的记忆，我说我是在与强盗交战时受了伤。那不是全部实话。~
IF ~~ + t5.9 
END

IF ~~ t5.8
 SAY ~说得在理。~
IF ~~ EXIT
END

IF ~~ t5.9
 SAY ~我去贝瑞戈斯特的路上确实中了几箭，这话不假；可那还不是最糟的。~
 = ~实际上，我是被驻在城里的燃焰之拳打了一顿。~
	++ ~你跟拳会动手了？你做了什么错事么？~ + t5.10
	++ ~他们没杀你，我倒意外。~ + t5.11
	++ ~我还以为你该是守法的化身呢。~ + t5.12
	++ ~剩下的话我不想听了。~ + t5.8
END

IF ~~ t5.10
 SAY ~不，我没有。我想又是一场因我模样而起的误会。~
IF ~~ + t5.13
END

IF ~~ t5.11
 SAY ~是，不过要不是我运气好及时到了拉珊德神殿，也许就死了。~
IF ~~ + t5.13
END

IF ~~ t5.12
 SAY ~……真好笑，<CHARNAME>。~ 
IF ~~ + t5.13
END

IF ~~ t5.13
 SAY ~我本想在燃焰巫师旅店住一夜。我哪知道那酒馆是拳会的人常去的，偏偏我倒霉，就在那里遇上了三个。~
 = ~其中一个兵手臂上受了很痛的伤。我没多想，还穿着甲就上前，想帮他一把。~
 = ~我本该想到别这么做，至少也该遮掩一下我的模样。我的样子很快被注意到了，另外两个兵以为我要毒害那人，就对我动了手。~
	++ ~只有两个动手的？以你的本事，护住自己本该轻而易举。~ + t5.14
	++ ~你就一点没还手？~ + t5.15
	++ ~这话我听够了。~ + t5.8
END

IF ~~ t5.14
SAY ~我不敢试，<CHARNAME>。我怕还手只会重演我小时候的那次错，所以我任他们打，逃出了旅店。~
IF ~~ + t5.16
END

IF ~~ t5.15
 SAY ~没有。我怕还手只会重演我小时候的那次错，所以我任他们打，逃出了旅店。~
IF ~~ + t5.16
END

IF ~~ t5.16
 SAY ~因为那场打，我丢了许多行装，逃出城界之后就被丢下等死。我一路爬到晨歌神殿，那里一个侍从发现了我，把我抬进了他们的疗养堂。~
	++ ~我们相遇的时候，你为什么要在这事上撒谎？~ + t5.17
	++ ~太惨了。~ + t5.18
	++ ~可怜的故事，可我们真该走了。~ + t5.8
END

IF ~~ t5.17
 SAY ~我……自己也不知道缘由。那谎话就是顺口出来了……也许我怕告诉你我和拳会有过不快，你会怎样反应；也许我不想自取其辱。~
IF ~~ + t5.18
END

IF ~~ t5.18
 SAY ~（叹气）这是桩我必须学着认下的可怕真相；我倒不愿意因我血里的罪名去死。~
	++ ~你的出身不是罪名，塞琳。~ + t5.19
	+ ~Global("C0SireneMatch","GLOBAL",1)~ + ~我不在乎你血里有什么，塞琳，我只在乎你。~ + t5.20
	++ ~随你吧。你说完了么……~ + t5.21
END

IF ~~ t5.19
 SAY ~你这么说，可旁人也会这么想么？~
 = ~不，这样揣想毫无意义。恕我占了你这么多时间，我的朋友。~
IF ~~ EXIT
END

IF ~~ t5.20
 SAY ~我……~
 = ~（她似乎被你的话实实在在惊住了，转过身去掩住脸。）~
IF ~~ EXIT
END

IF ~~ t5.21
 SAY ~……是。是，我是。~
IF ~~ EXIT
END
END

// 6 - on resting in an inn
CHAIN IF ~Global("C0SireneTalksBG1","GLOBAL",12)~ THEN C0SIRENJ t6
~终于有张床可睡，这滋味真好，我的朋友。我几乎忘了那是什么感觉。~
= ~若你愿意，<CHARNAME>，过来陪我坐一会儿。我还不困，想聊几句。~
DO ~IncrementGlobal("C0SireneTalksBG1","GLOBAL",1)
RealSetGlobalTimer("C0SireneTalksBG1Timer","GLOBAL",2700)~
END
	++ ~我很乐意。~ + t6.4
	++ ~当然，要是带酒的话。~ + t6.1
	+ ~Global("C0SireneMatch","GLOBAL",1)~ + ~一位美人相邀，我怎么好拒？~ + t6.2
	++ ~不了，多谢。我挺累的。~ + t6.3

APPEND C0SIRENJ

IF ~~ t6.1
 SAY ~当然。不过别喝太多，免得明早后悔。~
IF ~~ + t6.4
END

IF ~~ t6.2
 SAY ~（微笑）我并不是那个意思，<CHARNAME>；不过你这么说，我倒受宠若惊。~ 
IF ~~ + t6.4
END

IF ~~ t6.3
 SAY ~随你，我的朋友。好好歇息。~
IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ t6.4
 SAY ~我们一起经过了许多，不是么？这是我头一回有这种感觉；如今我把你当亲近的朋友。这是第一次，我觉得有个人可以信。~
	+ ~Global("C0SireneMatch","Global",1)~ + ~只是朋友么，女士？~ + t6.5
	+ ~!Global("C0SireneMatch","Global",1)~ + ~只是朋友么，女士？~ + t6.6
	++ ~我也有同感，塞琳。你是位可贵的朋友，也是个好人。~ + t6.7
	++ ~塞琳，你是可信的同伴，可“亲近的朋友”说得过头了些。~ + t6.8
END

IF ~~ t6.5
 SAY ~不，嗯……是，可是……（叹气）你这样问，我自己也不知该怎么答。~
IF ~~ + t6.9
END

IF ~~ t6.6
 SAY ~……~
 = ~是，若你能恕我说这话。~
IF ~~ + t6.9
END

IF ~~ t6.7
 SAY ~（笑）你叫我脸红了，我的朋友。我不惯听这样直白的称赞。~
IF ~~ + t6.9
END

IF ~~ t6.8
 SAY ~你真是这个意思？~
 = ~那我便是看错了。恕我。我想我该回房了。~
IF ~~ DO ~SetGlobal("C0SireneMatch","Global",3) SetGlobal("C0SireneTalksStopped","GLOBAL",1)~ EXIT
END

IF ~~ t6.9
 SAY ~你一定累了，<CHARNAME>。这回我们随便聊些什么吧。~
	++ ~我不觉得有什么不行。~ + t6.10
	++ ~你这么说，我反倒不知该聊什么。~ + t6.11
	+ ~Global("C0SireneMatch","Global",1)~ + ~那就聊你吧。~ + t6.12
END

IF ~~ t6.10
 SAY ~我想起个头，可不知聊什么。也许还是你先开口好。~
IF ~~ + t6.13
END

IF ~~ t6.11
 SAY ~（笑）我懂这感觉，<CHARNAME>。~
IF ~~ + t6.13
END

IF ~~ t6.12
 SAY ~（笑）关于我你知道一些，我的朋友；不过我猜你说的不是那个意思。~
IF ~~ + t6.13
END

IF ~~ t6.13
 SAY ~你说吧，<CHARNAME>。这里都是朋友之间。~
 	++ ~我想我过去的日子。烛堡、戈里安，还有那一切。~ + t6.14
	+ ~!Class(Player1,PALADIN_ALL)~ + ~你有过疑惑么？~ + t6.15
	+ ~Class(Player1,PALADIN_ALL)~ + ~你有过疑惑么？~ + t6.15a
	++ ~我想我爱上了我们某个同伴……~ + t6.16
	++ ~你好像太容易交到朋友了。~ + t6.17
	++ ~再想想，我其实不想聊了。~ + t6.3
END

IF ~~ t6.14
 SAY ~我羡慕你，<CHARNAME>，你知道么？虽说你受了许多苦，可你有值得留住的东西。~
 = ~这话也许不该我说，可我觉得你比多数人幸运。把它们好好放在心里，我的朋友。你拥有的许多东西，换别的<PRO_MANWOMAN>会拿命去换。~
IF ~~ + t6.20
END

IF ~~ t6.15
 SAY ~我……有时会。不，常会。一个带着魔血的圣武士，要认下自己是谁，于我很难。~
 = ~明知不该，我仍常想，走这条路是不是个错。~
IF ~~ + t6.20
END

IF ~~ t6.15a
 SAY ~我倒要问你同样的话，<CHARNAME>。我从没机会问另一位圣武士。~
 = ~一个带着魔血的圣武士，要认下自己是谁，于我很难。明知不该，我仍常想，走这条路是不是个错。可我又想，我是不是只拿自己的出身当托词……~
 = ~你也像我一样为难么？~
	++ ~是。~ + t6.15b
	++ ~我不知道……有时候。~ + t6.15b
	++ ~不。我从没怀疑过我的职分。~ + t6.15c
END

IF ~~ t6.15b
 SAY ~我明白了。某种意义上，这叫人宽心……我很高兴不是只有我一个面对这些惧怕。~
IF ~~ + t6.20
END

IF ~~ t6.15c
 SAY ~我明白了。（叹气）那你的信念比我坚定。我敬重你这一点。~
IF ~~ + t6.20
END

IF ~~ t6.16
 SAY ~（笑）这倒不是我原想聊的，可你肯告诉我，那个走运的人是谁么？~
 	++ ~嗯，是……（告诉她是谁）~ + t6.18
	+ ~Global("C0SireneMatch","GLOBAL",1)~ + ~呃，这个……我说不出口。~ + t6.19
	++ ~我还是不说了。~ + t6.19
END

IF ~~ t6.17
 SAY ~嗯……也许吧。可像我这样出身的人，这么说很奇怪么？~
 = ~也许这是我个人的软弱——这样急切地需要友谊。~
 = ~这有错么，<CHARNAME>？~
	++ ~一点也不，我也一样。~ + t6.17a
	++ ~我说不准。~ + t6.17b
	++ ~也许吧。你有时候确实太容易信人。~ + t6.17c
END

IF ~~ t6.17a
 SAY ~（微笑）那我很高兴遇见了你。~
IF ~~ + t6.20
END

IF ~~ t6.17b
 SAY ~（叹气）我本也没指望有答案。至少，谢谢你愿意听。~
IF ~~ + t6.20
END

IF ~~ t6.17c
 SAY ~也许你说得对。谢谢你的坦白。~
IF ~~ + t6.20
END

IF ~~ t6.18
 SAY ~我明白了。（微笑）你信我到肯说出来，我很感激，我的朋友。放心，我不会泄露你的秘密。~
IF ~~ DO ~SetGlobal("C0SireneMatch","GLOBAL",2)~ EXIT
END

IF ~~ t6.19
 SAY ~（她挑起了一边眉毛。）~
 = ~说得在理；只是你有时候真是个古怪的<PRO_MANWOMAN>，你知道么？~
IF ~~ + t6.20
END

IF ~~ t6.20
 SAY ~……~
 = ~谢谢你作伴，<CHARNAME>。时候不早了，我们该回房了。~
	++ ~先喝了这最后一杯？~ + t6.21
	++ ~你说得对。明天会是漫长的一天。~ + t6.22
	++ ~再聊一会儿也无妨。~ + t6.23
	+ ~Gender(Player1,MALE) Global("C0SireneMatch","GLOBAL",1)~ + ~今晚你愿意留在我这儿么？~ + t6.24a
	+ ~Gender(Player1,FEMALE) Global("C0SireneMatch","GLOBAL",1)~ + ~今晚你愿意留在我这儿么？~ + t6.24b
	++ ~好。~ + t6.25
END

IF ~~ t6.21
 SAY ~我若拒绝，倒显得无礼了……~
= ~敬你，<CHARNAME>。~ 
IF ~~ + t6.25
END

IF ~~ t6.22
 SAY ~是，我知道。~
IF ~~ + t6.25
END

IF ~~ t6.23
 SAY ~（笑）也许对你无妨，可我若明天带着疲乏上阵，那可就是场灾祸了。只好谢绝。~
IF ~~ + t6.25
END

IF ~~ t6.24a
 SAY ~我……不能，<CHARNAME>。~
 = ~（她移开目光，像是怕与你对视。）~
 = ~（叹气）你不该这样试探我，<CHARNAME>。我不怪你，只是……请你别再提起。~ 
IF ~~ + t6.25
END

IF ~~ t6.24b
 SAY ~我……不能，<CHARNAME>。~
 = ~（她移开目光，像是怕与你对视。）~
	++ ~是因为我是个女人么？~ + t6.26
END

IF ~~ t6.25
 SAY ~我不再耽搁你了，我的朋友。好好歇息。~
IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ t6.26
 SAY ~不，跟那个无关，我只是……~
 = ~（叹气）你不该这样试探我，<CHARNAME>。我不怪你，只是……请你别再提起。~ 
IF ~~ + t6.25
END
END

// 7

CHAIN IF ~Global("C0SireneTalksBG1","GLOBAL",14)~ THEN C0SIRENJ t7
~<CHARNAME>，你在烛堡受过教养，常读书么？~
DO ~IncrementGlobal("C0SireneTalksBG1","GLOBAL",1)
RealSetGlobalTimer("C0SireneTalksBG1Timer","GLOBAL",2700)~
END
	+ ~Class(Player1,BARD_ALL)~ + ~当然。吟游诗人要应付种种场面，什么学问都得有。~ + t7.1
	+ ~Class(Player1,MAGE_ALL)~ + ~当然。不过多半是法术典籍和古老传说。~ + t7.1
	+ ~CheckStatGT(Player1,9,INT)~ + ~当然。那儿也没别的什么可做。~ + t7.2
	+ ~CheckStatGT(Player1,9,INT)~ + ~我讨厌读书。戈里安天天逼我读。~ + t7.3
	+ ~CheckStatGT(Player1,9,INT)~ + ~不太读。我更喜欢动手动脚的人。~ + t7.2
	+ ~CheckStatLT(Player1,10,INT)~ + ~嗯，我，呃……其实我不识字。~ + t7.4
	++ ~我这会儿不想说话。~ + t7.0
	
APPEND C0SIRENJ

IF ~~ t7.0
 SAY ~随你。那不过是一时的念头。~
IF ~~ EXIT
END

IF ~~ t7.1
 SAY ~是，我该想到的。~
IF ~~ + t7.2
END

IF ~~ t7.2
 SAY ~我不过是好奇才问。我教会的藏书室里书很多，我闲时常常好奇地把它们借出来读。~
 = ~当然，我那些一同受养的伙伴多半不爱读书。他们更喜欢在野地里玩闹、打斗，可读书于我是种惬意的安宁。~
	++ ~说起来，你说话的方式挺特别。你是从书上学的么？~ + t7.5
	++ ~你爱读什么样的书？~ + t7.6
	+ ~CheckStatGT(Player1,9,INT)~ + ~我想我明白你的意思。没有什么比一本好书更叫我心静的。~ + t7.7
	+ ~CheckStatLT(Player1,10,INT)~ + ~我知道。说实话，我有些后悔自己一直没学识字。那能省掉我许多焦躁。~ + t7.8	
	++ ~算了。我不太想聊读书的事。~ + t7.0
END

IF ~~ t7.3
 SAY ~（笑）是这样么？我看得出它怎么变成一桩苦差。~
IF ~~ + t7.2
END

IF ~~ t7.4
 SAY ~你真是这个意思？那我恕我，那问题问得刻薄了。别惭愧，我的朋友。我自己也算不上好读者。~
IF ~~ + t7.2
END

IF ~~ t7.5
 SAY ~是，是从书上学。虽说祭司们教过我通用语，我却觉得书才是我真正的老师。它们感觉……找不到更好的说法，它们感觉没那么疏远。~
IF ~~ + t7.6
END

IF ~~ t7.6
 SAY ~教会里的书有不少门类。传奇、史书、宗教，可有一样……~
 = ~（微笑）说出来也许孩子气，可我最爱读的是史诗和童话。我猜是它们多半都有个好结局，才把我迷住了。~
 = ~也许我是在羡慕这个。也也许我至今还是个孩子。（叹气）~
	++ ~一点也不。我自己也喜欢好结局。~ + t7.9
	++ ~你仍有可能写出你自己的好结局。~ + t7.10
	+ ~Global("C0SireneMatch","GLOBAL",1)~ + ~我自己就爱骑士与少女的那些故事。~ + t7.11
	++ ~你有没有把自己想过是那些英雄之一？~ + t7.12
END

IF ~~ t7.7
 SAY ~是，那你就完全明白我的话了，<CHARNAME>。~
IF ~~ + t7.6
END

IF ~~ t7.8
 SAY ~学什么都不算晚，<CHARNAME>。毕竟你前头还有许多年。~
IF ~~ + t7.6
END

IF ~~ t7.9
 SAY ~确实。可惜我们在真的日子里没那么多。~
IF ~~ + t7.13
END

IF ~~ t7.10
 SAY ~也许……我指望不高，可你也许说得对，<CHARNAME>。~
IF ~~ + t7.13
END

IF ~~ t7.11
 SAY ~（笑）我想你此刻或许正身在这样一个故事里。~
 = ~（她迟疑了一下，仿佛不确定自己说了什么，随后又笑了起来。）~
 = ~如今我落到了拿人取笑的地步。是你的影响，<CHARNAME>，我确信。~
IF ~~ + t7.13
END

IF ~~ t7.12
 SAY ~哦，想过许多回，别怀疑。姑娘家总有许多幻想……~
IF ~~ + t7.13
END

IF ~~ t7.13
 SAY ~有时我也会责备自己，<CHARNAME>。毕竟我们的日子不是童话……~
 = ~我们在活着时不得不受的苦与痛，都太真了，作为伊尔梅特的仆人，这我知道。可我仍希望我们受的这一切艰辛，都值得。你怎么想，<CHARNAME>？~
	++ ~我说不准。~ + t7.14
	+ ~!Global("C0SireneMatch","GLOBAL",1)~ + ~有理由走下去。我确信有。~ + t7.15
	+ ~Global("C0SireneMatch","GLOBAL",1)~ + ~有理由走下去。我确信有。~ + t7.15a
	++ ~你太理想了。~ + t7.16
	++ ~塞琳，只有你相信，才有指望。~ + t7.17
END

IF ~~ t7.14
 SAY ~那我们唯一能做的，就是撑下去，不是么？~
IF ~~ + t7.18
END

IF ~~ t7.15
 SAY ~我但愿……~
IF ~~ + t7.18
END

IF ~~ t7.15a
 SAY ~（微笑）你的理想主义是件美的东西，我的朋友。我们只能指望它是真的。~
IF ~~ + t7.18
END

IF ~~ t7.16
 SAY ~也许我是……~
IF ~~ + t7.18
END

IF ~~ t7.17
 SAY ~那也许也是真的，我想……~
IF ~~ + t7.18
END

IF ~~ t7.18
 SAY ~我占你够多时间了，<CHARNAME>。谢谢你。与你说话总是件愉快的事。~
IF ~~ EXIT
END
END

// 8. Chapter 4

CHAIN IF ~Global("C0SireneTalksBG1Chapter4","GLOBAL",2)~ THEN C0SIRENJ t8
~看来我们的敌人终于察觉到了我们的搅动，我的朋友。事情怕是要变了。~
DO ~SetGlobal("C0SireneTalksBG1Chapter4","GLOBAL",3)
RealSetGlobalTimer("C0SireneTalksBG1Timer","GLOBAL",2700)~
END
	++ ~你才想明白？从刺客开始找上我，我就看出来了。~ + t8.1
	++ ~是，既如此，我们的任务也许更难了。~ + t8.2
	++ ~那又怎样？让他们知道、让他们怕吧，我正朝他们去。~ + t8.3
	++ ~那我们就处在下风了，因为我们仍不知敌人究竟是谁、在哪儿。~ + t8.4
	++ ~我这会儿不想说话。~ + t8.0

APPEND C0SIRENJ

IF ~~ t8.0
 SAY ~随你。~
IF ~~ EXIT
END

IF ~~ t8.1
 SAY ~说实话，我没想到这两者可能是相关的。若真如此，也许他们早就在等你出手了。~
IF ~~ + t8.5
END

IF ~~ t8.2
 SAY ~也许；不过总体说这也许还是好事，因为这意味我们确实成了他们的威胁。~
IF ~~ + t8.5
END

IF ~~ t8.3
 SAY ~（微笑）我怕你是要走向自负了，<CHARNAME>；不过我承认，想到敌人腿发抖，倒也叫人舒坦。~
IF ~~ + t8.5
END

IF ~~ t8.4
 SAY ~恐怕这是令人难受的实情。（叹气）~
IF ~~ + t8.5
END

IF ~~ t8.5
 SAY ~你担心么，<CHARNAME>？~
	++ ~我为何要担心？~ + t8.6
	++ ~也许。有一点。~ + t8.7
	++ ~不。~ + t8.8
END

IF ~~ t8.6
 SAY ~你现在面对的不只是强盗或狗头人。我们对敌人的底细所知不多，可他们已显出能耐。刺客、强盗、塞瑞克信徒……都在他们指使之下。~
 = ~也许这不是说这话的好时候，可我一路行旅，寻的是需要帮助的人。去毁掉邪恶……虽说我把它当职分，可我们前头这桩大事，我仍不惯。~
 = ~当然，我不会说自己怯懦，可我也不是勇气的典范。说出来惭愧。~
	++ ~你比你自己想的强。我们做得到。~ + t8.9
	++ ~你要是怕，我都说不清我心里是什么滋味。~ + t8.10
	++ ~也许你终究不是干这行的料？~ + t8.11
	+ ~Global("C0SireneMatch","GLOBAL",1)~ + ~（鼓励地握住她的手。）~ + t8.12
END

IF ~~ t8.7
 SAY ~承认这一点并不丢人，<CHARNAME>。~
IF ~~ + t8.6
END

IF ~~ t8.8
 SAY ~是这样么？那你比我勇敢。~
IF ~~ + t8.6
END

IF ~~ t8.9
 SAY ~我真希望如此。~
IF ~~ EXIT
END

IF ~~ t8.10
 SAY ~我感觉到的不是恐惧，<CHARNAME>，是不安。~
IF ~~ EXIT
END

IF ~~ t8.11
 SAY ~别这么说！我不是那个意思——~
 = ~（叹气）恕我，<CHARNAME>。话说急了。只是别再这么说。~
IF ~~ EXIT
END

IF ~~ t8.12
 SAY ~（她几乎要缩回手，最终还是握住了你的手。）~
 = ~谢谢你支持我，<CHARNAME>。~
IF ~~ EXIT
END
END

// 9  Chapter 5

CHAIN IF ~Global("C0SireneTalksBG1Chapter5","GLOBAL",2)~ THEN C0SIRENJ t9
~（叹气）我从没这么高兴看到事情了结。不过我猜我们的麻烦才刚开始。~
= ~我怕我们要面对一场超出想象的邪恶，<CHARNAME>。你不安么？~
DO ~SetGlobal("C0SireneTalksBG1Chapter5","GLOBAL",3)
RealSetGlobalTimer("C0SireneTalksBG1Timer","GLOBAL",2700)~
END
	++ ~是。看来这整场危机也掺着权谋。~ + t9.1
	++ ~想到敌人一直在我们眼皮底下行事，我承认这很吓人。~ + t9.2
	++ ~不太担心。再来一个达瓦恩那样的，我们杀了就是。~ + t9.3
	
APPEND C0SIRENJ

IF ~~ t9.1
 SAY ~若真是如此，那事情就复杂了不知多少，<CHARNAME>。权谋不是兵器能打的，我如今也不知哪一步最好。~
IF ~~ + t9.4
END

IF ~~ t9.2
 SAY ~确实。我原以为这整桩事简单得多，可看来到今天为止我们所见的一切，都是有人在背后布的局。~
IF ~~ + t9.4
END

IF ~~ t9.3
 SAY ~（叹气）但愿有那么容易，我的朋友。~
IF ~~ + t9.4
END

IF ~~ t9.4
 SAY ~<CHARNAME>，眼下我只能信你的带领。我从没面对过这样大、这样狡诈的邪恶。你若不在，我面对这一切只会束手无策。~
	++ ~我们得往博德之门去。看来敌人都藏在那儿。~ + t9.5
	++ ~你若觉得撑不住，随时可以走。~ + t9.6
	++ ~（叹气）我希望邪恶有时候能简单些。~ + t9.7
END

IF ~~ t9.5
 SAY ~是，就是这些信里提到的铁王座。我无法想象那是个什么样的恶的组织，竟能布出奴役和劫掠这样的勾当。~
IF ~~ + t9.8
END

IF ~~ t9.6
 SAY ~我不能走。面对这些东西是我的职分，尽管我从没料到会这般……艰难。~
IF ~~ + t9.8
END

IF ~~ t9.7
 SAY ~是；不过我怕若事情简单，也就不会有这一半的危险了，可惜。~
IF ~~ + t9.8
END

IF ~~ t9.8
 SAY ~我在剑湾与安姆之间行走的日子不久，<CHARNAME>，可我已看得够明白：博德之门与安姆之间的紧绷，远在这场危机开始之前就存在了。~
 = ~若事情照这样下去，开战是无疑的；而这叫我糊涂……什么样的人，好也罢恶也罢，会情愿去挑起一场战争？~
	++ ~疯子，反社会的人。他们必须被拦下。~ + t9.9
	++ ~我说不准。~ + t9.10
	++ ~总有人能从这种事里得利。~ + t9.11
	++ ~我不太在乎。~ + t9.12
END

IF ~~ t9.9
 SAY ~如你所说，<CHARNAME>。~
IF ~~ + t9.10
END

IF ~~ t9.10
 SAY ~（叹气）我本不该指望事情能这么轻易了结。纳什凯尔、斗篷森林、博德之门……我们还要走多远，<CHARNAME>，才能终于看到这一切的尽头？~
 = ~我向伊尔梅特立誓的时候，没料到事情会变得这样复杂。我这么想，是天真了。~
 = ~我从前也打倒过恶人，可他们的恶出自贪婪、恐惧、复仇……可*这一桩*，我看不出背后有什么因由。~
 = ~照我看，这是为恶而恶。我从前不信世上有这种东西。~
	++ ~这是个可怕的念头，我同意。~ + t9.13
	++ ~那你对从前杀过的人，觉得后悔么？~ + t9.14
	++ ~这其中的道义，我不太想谈。~ + t9.12
END

IF ~~ t9.11
 SAY ~可怕的念头，可我想是真的。只是真正恶的人才不管代价。~
IF ~~ + t9.10
END

IF ~~ t9.12
 SAY ~（叹气）那我就把这些念头留给自己。我不想拿我的忧虑给你添担子。~
IF ~~ EXIT
END

IF ~~ t9.13
 SAY ~我想，人心还有太多我不懂的地方。~
 = ~想说的我都说了，我的朋友。往后不论是什么，我都会帮你，不管要付什么代价。~
IF ~~ EXIT
END

IF ~~ t9.14
 SAY ~不！伊尔梅特不许，我不敢想这种事。不过既然你提起来，我不能不认，疑虑确实缠着我。我想，人心还有太多我不懂的地方。~
 = ~想说的我都说了，我的朋友。往后不论是什么，我都会帮你，不管要付什么代价。~
IF ~~ EXIT 
END

END

// 10  Baldur's Gate

CHAIN IF ~Global("C0SireneTalksBG1BaldursGate","GLOBAL",2)~ THEN C0SIRENJ t10
~终于到了博德之门。（叹气）我承认这是座美丽的城，可一眼就能看见它上头压着的那道暗影。~
DO ~SetGlobal("C0SireneTalksBG1BaldursGate","GLOBAL",3)
RealSetGlobalTimer("C0SireneTalksBG1Timer","GLOBAL",2700)~
END
	++ ~确实。有哪里不对。~ + t10.1
	++ ~你在说什么？~ + t10.2
	++ ~我什么都没看见。~ + t10.2
	++ ~你看见南边那座大建筑了么？~ + t10.3
	++ ~不是时候，塞琳。~ EXIT

APPEND C0SIRENJ

IF ~~ t10.1
 SAY ~人们在怕。他们怕打仗，却不知道真正的危险。~
IF ~~ + t10.4
END

IF ~~ t10.2
 SAY ~我说的是恐惧，<CHARNAME>。你没看见么？人们在怕，而且不打算遮掩。他们怕打仗，却不知道真正的危险。~
IF ~~ + t10.4
END

IF ~~ t10.3
 SAY ~我看见了。那墙黑得像铁本身……那一定是铁王座。敌人就在近处。~
 = ~可看看这些人。他们眼里满是对战争的恐惧。~
IF ~~ + t10.4
END

IF ~~ t10.4
 SAY ~我怕损害已经造成了，<CHARNAME>。~
	++ ~别这么说。还有机会。~ + t10.5
	++ ~也许吧，可我们仍得试。~ + t10.6
	++ ~我们仍能拦住他们，叫他们造不出更多。~ + t10.6
	++ ~你说我们该怎么办？~ + t10.7
	++ ~那就没工夫耽搁了。~ EXIT
END

IF ~~ t10.5
 SAY ~我希望你说得对。~
IF ~~ + t10.7
END

IF ~~ t10.6
 SAY ~是……你说得对。就算我们的努力成空，我们也还得试。~
IF ~~ + t10.7
END

IF ~~ t10.7
 SAY ~我们得赶紧，<CHARNAME>，在一切尽失之前找出这背后挑动邪恶的人。想到安姆与博德之门真打起来会是什么结果，我就不寒而栗。~
	++ ~可王座背后站着法度。我们不能不假思索就动手。~ + t10.8
	++ ~那也许正是他们等着我们做的。~ + t10.8
	++ ~我打算就这么做。~ EXIT
END

IF ~~ t10.8
 SAY ~不……不，这话确实。恕我，我说得欠考虑了。我相信你最明白，我的朋友。~
IF ~~ EXIT
END
END

// 11. Entering Candlekeep.

CHAIN IF ~Global("C0SireneTalksBG1Candlekeep","GLOBAL",2)~ THEN C0SIRENJ t11
~那么，这就是烛堡的大书库了。真是宏伟。~
DO ~SetGlobal("C0SireneTalksBG1Candlekeep","GLOBAL",3)
RealSetGlobalTimer("C0SireneTalksBG1Timer","GLOBAL",2700)~
END
	++ ~我想念这地方。~ + t11.1
	++ ~你等着看它其余的部分吧。~ + t11.2
	++ ~而且乏味。~ + t11.3
	++ ~我但愿是在别的情形下回来。~ + t11.4
	++ ~现在不是谈这个的时候。~ + t11.0

APPEND C0SIRENJ

IF ~~ t11.0
 SAY ~是。我们要找的人就在这些门廊里，我没忘。带路吧。~
IF ~~ EXIT
END

IF ~~ t11.1
 SAY ~你回这个家，走了很长的路，不是么？~
IF ~~ + t11.5
END

IF ~~ t11.2
 SAY ~（笑）我屏息等着呢，<CHARNAME>。~
IF ~~ + t11.5
END

IF ~~ t11.3
 SAY ~是，毕竟你比我懂；不过无论如何，我倒想把这地方逛个遍。~
IF ~~ + t11.5
END

IF ~~ t11.4
 SAY ~我也是。~
IF ~~ + t11.5
END

IF ~~ t11.5
 SAY ~我刚才想到我的教会……那儿跟这儿一点也不像，我也不会把它叫作我的家。~
 = ~这些门廊里的宁静秩序，有一种美与神圣，像是砌进了石头本身。你也许觉不出来，可我这时，头一回觉得安宁。~
	++ ~再多留一阵吧。那些僧人的诵唱到头来会把你逼疯。~ + t11.6
	++ ~我知道。关于这地方，我有许多可珍爱的回忆。~ + t11.7
	++ ~我一点也不知道你在说什么。~ + t11.8
	++ ~我们不是来这儿歇息的，塞琳。~ + t11.0
END

IF ~~ t11.6
 SAY ~（她有点勉强地笑了。）~
 = ~也许你说得对。日子久了，我也许会觉得不安，可……~
IF ~~ + t11.7
END

IF ~~ t11.7	
 SAY ~我希望我们能多留一阵……或者，等我们对抗铁王座的事了结了，再回来。~
	++ ~当然。~ + t11.9
	++ ~也许吧。往后也许有更要紧的事。~ + t11.10
	+ ~Global("C0SireneMatch","GLOBAL",1)~ + ~只要叫你高兴，什么都行。~ + t11.11
	++ ~不行。我早就想离开这地方了，一直想。~ + t11.12
END

IF ~~ t11.8
 SAY ~不，我有时候也不想，一样。~
IF ~~ + t11.7
END

IF ~~ t11.9
 SAY ~谢谢你，我的朋友。可更要紧的事先等着我们。~
IF ~~ EXIT
END

IF ~~ t11.10
 SAY ~这也是实情。（叹气）那我们就去把此行的目的办完吧。~
IF ~~ EXIT
END

IF ~~ t11.11
 SAY ~（她微微红了脸。）谢谢你，<CHARNAME>。~
IF ~~ EXIT
END

IF ~~ t11.12
 SAY ~（叹气）若这是你的意思，我不逼你。~
IF ~~ EXIT
END
END

// 12. Gorion's Letter

CHAIN IF ~Global("C0SireneTalksBG1Bhaalspawn","GLOBAL",2)~ THEN C0SIRENJ t12
~<CHARNAME>，我们能谈谈么？~
DO ~SetGlobal("C0SireneTalksBG1Bhaalspawn","GLOBAL",3)
RealSetGlobalTimer("C0SireneTalksBG1Timer","GLOBAL",2700)~
END
	++ ~……~ + t12.1
	++ ~谈什么？那封信？~ + t12.2
	++ ~没什么好说的。~ + t12.3

APPEND C0SIRENJ

IF ~~ t12.1
 SAY ~我不会评判你。你以为我有那个资格么？哈，我若评判，倒显得伪善。~
 = ~不，我太清楚被评判是什么滋味，也太清楚那能叫一个无依无信的人受多少苦。~
IF ~~ + t12.4
END

IF ~~ t12.2
 SAY ~是。关于……那个。~
IF ~~ + t12.1
END

IF ~~ t12.3
 SAY ~无论如何，若你愿意，请给我一会儿耳朵。~
IF ~~ + t12.1
END

IF ~~ t12.4
 SAY ~可是……这远超出我所习惯的。你现在是在朋友当中，可若旁人知道了……~
	++ ~……那我就会落到你这样的地步？~ + t12.5
	++ ~他们不会知道。我担保。~ + t12.6
	++ ~那又怎样？我就要他们知道。~ + t12.7
	++ ~我不想谈这个。还不想。~ + t12.8
END

IF ~~ t12.5
 SAY ~（叹气）是，正是如此。~ 
IF ~~ + t12.9
END

IF ~~ t12.6
 SAY ~这事你瞒不了一辈子，<CHARNAME>。你也许没有我这样的犄角和魔眼，可……~
IF ~~ + t12.9
END

IF ~~ t12.7
 SAY ~你当真这么想？巴尔在世时可不是小角色，<CHARNAME>。若旁人知道了，会有许多人要你的命。那是你想过的日子么？~ 
IF ~~ + t12.9
END

IF ~~ t12.8
 SAY ~我明白。只是求你，别独自闷着受苦。若这份知情的重担叫你难受，就说出来。~
IF ~~ EXIT
END

IF ~~ t12.9
 SAY ~恕我，<CHARNAME>。我想不出什么话能替你卸下你此刻必有的感受。作为伊尔梅特的仆人，却无力替你卸下重担……我实在不喜欢这种无用的感觉。~ 
 = ~若这有用的话，我愿留在你身边，不管这桩真相如何。至少，我可以试着把你留在正路上，虽说我不敢狂妄到替你定夺。像你这样的人身上竟有恶的种子，这念头确实可怕……可我不会弃了我的职分。~
	++ ~谢谢你，塞琳。~ + t12.10
	++ ~不必如此。~ + t12.11
	++ ~你以为我在乎？站回队里去。~ + t12.12
END

IF ~~ t12.10
 SAY ~这不算什么问题，<CHARNAME>。~
IF ~Alignment(Player1,MASK_GOOD)~ + t12.13
IF ~!Alignment(Player1,MASK_GOOD)~ EXIT
END

IF ~~ t12.11
 SAY ~可这是我的意思，<CHARNAME>。~
IF ~Alignment(Player1,MASK_GOOD)~ + t12.13
IF ~!Alignment(Player1,MASK_GOOD)~ EXIT
END

IF ~~ t12.12
 SAY ~随你。~
IF ~~ EXIT
END

IF ~~ t12.13
 SAY ~我相信你，我的朋友。你是个好人，我确信你不会做违背自己天性的事。也许将来会变，可……不，那念头我都不敢想。~
IF ~~ EXIT
END
END

// 12. Post-Candlekeep, in Baldur's Gate
CHAIN IF ~Global("C0SireneTalksBG1","GLOBAL",16)~ THEN C0SIRENJ t12
~这座城里的权谋之网越织越密，<CHARNAME>。你不觉得压人么？~
= ~我若处在你这一步，往后也不知该走哪条路。我想我只能信你，希望这就够了。~
DO ~IncrementGlobal("C0SireneTalksBG1","GLOBAL",1)
RealSetGlobalTimer("C0SireneTalksBG1Timer","GLOBAL",2700)~
END
	++ ~你太抬举我了。~ + t13.1
	++ ~我会带我们走过去的，我保证。~ + t13.2
	++ ~我也有同感。我心里有一部分只想一走了之，把这一切都丢下。~ + t13.3
	
APPEND C0SIRENJ

IF ~~ t13.1
 SAY ~（微笑）也许你把自己看低了。~
IF ~~ + t13.4
END

IF ~~ t13.2
 SAY ~我信你，我的领头人。~
IF ~~ + t13.4
END

IF ~~ t13.3
 SAY ~你要走，也没什么拦着你。当然，我显然是希望你不走的。~
IF ~~ + t13.4
END

IF ~~ t13.4
 SAY ~虽说一路有难处，你却没把我们带错过路。我承认，自你那桩不快的真相之后，我心里有一部分以为事情会不一样，可……我很少这样高兴自己错了。~
 = ~我只希望我们这些努力不会成空。说不定，一切都已经太晚了。~
	++ ~若是太晚，我们再把它扶正就是。~ + t13.5
	++ ~不会的。我就是知道。~ + t13.5
	++ ~就算是，又怎样？~ + t13.6
	++ ~是；而且可怕的是，我们的对手把牌打得这样好，把我们全都圈进了他的局里……~ + t13.7
END

IF ~~ t13.5
 SAY ~哈，你有时候太自信了，我的朋友，几乎叫人不安。可你的话确实给了我指望。~
IF ~~ + t13.8
END

IF ~~ t13.6
 SAY ~我怕我们找的人若成了事，往后会有的苦。~
IF ~~ + t13.8
END

IF ~~ t13.7
 SAY ~我同意。我们必须快走，免得被将死。~
IF ~~ + t13.8
END

IF ~~ t13.8
 SAY ~唉，我从没想过自己真会想念做孤独朝圣者游走剑湾的那些日子——做些帮人的小事，替人担苦。人们说得对……失去了，才知道当初的好处。~
	++ ~说实话，我也从没想过我会想念烛堡。~ + t13.9
	++ ~如今我们有更大的事要担心。~ + t13.10
	++ ~回头永远不嫌晚。~ + t13.11
	++ ~我们该继续走。~ + t13.12
END
	
IF ~~ t13.9
 SAY ~你竟还说得出口，想到你回来时经历的那桩可怖的事……记忆确实扎得深……~
IF ~~ + t13.13
END

IF ~~ t13.10
 SAY ~是……你说得对。我们终于快到结尾了，最危险的敌人正等着我们。~
IF ~~ + t13.13
END

IF ~~ t13.11
 SAY ~哦，我毫不怀疑我若真想，是可以走的。可伊尔梅特会宽恕我么？~
 = ~（笑）我不该想这些。毕竟我早就认了，我的愿望都是转瞬的，尤其如今。~
IF ~~ + t13.13
END

IF ~~ t13.12
 SAY ~你说得对。~
IF ~~ + t13.13
END

IF ~~ t13.13
 SAY ~看看我，话这么多，明明还有更要紧的事。谢谢你抽出时间，<CHARNAME>……这让我心里安了些。我确实喜欢与你说话。~
IF ~Global("C0SireneMatch","GLOBAL",1)~ + t13.14
IF ~!Global("C0SireneMatch","GLOBAL",1)~ EXIT
END

IF ~~ t13.14
 SAY ~有时我想……不，这念头先搁着。我留着改日再说。继续吧，我勇敢又明智的领头人。~
IF ~~ EXIT
END

END

// 13.
CHAIN IF ~Global("C0SireneTalksBG1Undercity","GLOBAL",1)~ THEN C0SIRENJ t13
~终局在等着。你……的兄长在等着你，<CHARNAME>。你感觉如何？~
DO ~IncrementGlobal("C0SireneTalksBG1Undercity","GLOBAL",2)~
END
	++ ~别那么叫他。~ + t14.0
	++ ~不舒服。~ + t14.1
	++ ~高兴。戈里安能报仇了。~ + t14.2
	++ ~没什么。他该被拉下来。这就是事实。~ + t14.3
	++ ~你觉得我该是什么感觉？~ + t14.4

APPEND C0SIRENJ

IF ~~ t14.0
 SAY ~恕我。我知道，知道自己与那男人共有一脉血，纵是神血，也难。可我还是想问你。~
	++ ~不舒服。~ + t14.1
	++ ~高兴。戈里安能报仇了。~ + t14.2
	++ ~没什么。他该被拉下来。这就是事实。~ + t14.3
	++ ~你觉得我该是什么感觉？~ + t14.4
END

IF ~~ t14.1
 SAY ~你有这个资格。毕竟血脉的牵连，不论是人还是神，都会揪着你的良心，哪怕你告诉自己不是，不是么？~
 = ~你做得到，我的朋友。我知道，因为你已证明你的心性比我强。若有人叫我杀我的兄长，若我有……~ 
IF ~~ + t14.5
END

IF ~~ t14.2
 SAY ~你很快就会得到这机会。我本该祈祷你得着你求的那份慰藉，可若是我……~
IF ~~ + t14.5
END

IF ~~ t14.3
 SAY ~那你就是比我信念更坚的<PRO_MANWOMAN>。若是我去杀我自己的兄长……~
IF ~~ + t14.5
END

IF ~~ t14.4
 SAY ~这不是我该说的，<CHARNAME>。若有人叫我杀我血亲的兄长，哪怕我从没见过他，哪怕他跟这人一样恶……~
IF ~~ + t14.5
END

IF ~~ t14.5
 SAY ~我做不了。至少不能轻易做。我也许会打倒他，然后看进他眼里，想问个为什么，为失去我从不认得的家人而悲伤。~
 = ~可这谈的又不是我，不是么？眼下我的事无关紧要。你的任务要紧得多。万一事情……不如我指望的那样收场，我要为你这一路来的友谊谢你。~
	++ ~我该谢你陪我这一路。~ + t14.6
	++ ~你也会被记作英雄。~ + t14.7
	+ ~Global("C0SireneMatch","GLOBAL",1)~ + ~于我，你不只是朋友，塞琳。~ + t14.8
	++ ~总有一天你也会有机会做个要紧的人。~ + t14.9
END

IF ~~ t14.6
 SAY ~我不会想别的，我的朋友。~
IF ~~ + t14.10
END

IF ~~ t14.7
 SAY ~我心里有一部分仍不信，可你让它听起来真像是可能的，<CHARNAME>。~
IF ~~ + t14.10
END

IF ~~ t14.8
 SAY ~（微笑）谢谢你，<CHARNAME>。~
IF ~~ + t14.10
END

IF ~~ t14.9
 SAY ~是，也许。~
IF ~~ + t14.10
END

IF ~~ t14.10
 SAY ~等这一切过去……若你肯答应，我想自己再单独行走一段。不是我不喜欢你的陪伴，<CHARNAME>，很少有人会不喜欢——我只是需要些自己的时间。我不想变得离不开你，虽说在你麾下一直是件乐事。~
	++ ~我不觉得有什么不行。~ + t14.11
	++ ~也许还需要你的帮忙。~ + t14.12
	+ ~Global("C0SireneMatch","GLOBAL",1)~ + ~可是……我不想你走。~ + t14.14
	++ ~经历了这些，你就想走？~ + t14.13
END

IF ~~ t14.11
 SAY ~我很感激。~
 = ~这不是告别，<CHARNAME>，绝不是。我们会再见的，我确信。~
IF ~~ + t14.15
END

IF ~~ t14.12
 SAY ~（微笑）你如今朋友已经不少了，<CHARNAME>；不过你需要我的时候，还有我。~
IF ~~ + t14.15
END

IF ~~ t14.13
 SAY ~我不是离开，<CHARNAME>，不是真的离开。你需要我的时候，还有我。~
IF ~~ + t14.15
END

IF ~~ t14.14
 SAY ~我明白，<CHARNAME>。我心里有一部分也想留下，可我想分开一阵子最好。~
 = ~这不是告别，我的朋友。这感觉真怪，可我已经……在乎你了。我知道我们会再见。~
 = ~（她迟疑着把你拉近，吻了你的脸颊，把什么东西塞进你手里。）~
IF ~~ + t14.15
END

IF ~~ t14.15
 SAY ~拿着——把这根红绳系在你执剑那只手的腕上，作个念想。伊尔梅特的符号会赐你他的祝福。也许是个粗陋的表记，可若你的心是正的，你就会成事。~
 = ~愿我们活到看得见明天……我的朋友。~
IF ~~ EXIT
END
END

// ---------------------------------------------
// INTERJECTIONS
// ---------------------------------------------

// Marl

INTERJECT MARL 2 C0SireneMARL
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN 
~等等，<CHARNAME>！求你，别伤这个人，他明明在哀痛。~
END
++ ~好。你去劝他。~ DO ~SetGlobal("C0SireneMarl","GLOBAL",1)~ EXTERN C0SIRENJ C0SireneMARL1
++ ~是他先动的手！~ EXTERN MARL C0SireneMARL2

INTERJECT MARL 7 C0SireneMARL
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN 
~等等，<CHARNAME>！求你，别伤这个人，他明明在哀痛。~
END
++ ~好。你去劝他。~ DO ~SetGlobal("C0SireneMarl","GLOBAL",1)~ EXTERN C0SIRENJ C0SireneMARL1
++ ~是他先动的手！~ EXTERN MARL C0SireneMARL2

INTERJECT MARL 8 C0SireneMARL8
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN 
~等等，<CHARNAME>！求你，别伤这个人，他明明在哀痛。~
END
++ ~好。你去劝他。~ DO ~SetGlobal("C0SireneMarl","GLOBAL",1)~ EXTERN C0SIRENJ C0SireneMARL1
++ ~是他先动的手！~ EXTERN MARL C0SireneMARL2

INTERJECT MARL 14 C0SireneMARL14
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN 
~等等，<CHARNAME>！求你，别伤这个人，他明明在哀痛。~
END
++ ~好。你去劝他。~ DO ~SetGlobal("C0SireneMarl","GLOBAL",1)~ EXTERN C0SIRENJ C0SireneMARL1
++ ~是他先动的手！~ EXTERN MARL C0SireneMARL2

CHAIN C0SirenJ C0SireneMARL1
~求你，好人。我觉出你拿怒气掩着极大的痛，可我恳求你，静一静。~
DO ~SetGlobal("C0SireneMarl","GLOBAL",2)~
== MARL ~你？！你就是前几天被拳会打出城的那个鬼东西！我凭什么听你的？~
== C0SIRENJ ~我是伊尔梅特的信徒，替人减苦是我的差事。请信我，我无意害你。~
== MARL ~……~
== C0SIRENJ ~你失了亲近的人，我看得出。可拿这样的暴怒来显你的悲痛，永远换不来安宁。~
== MARL ~我……可我的儿子——~
== C0SIRENJ ~他愿意看你用这种法子辱没他的记忆么？~
== MARL ~……~
== DUNKIN ~听这位女士的吧，玛尔。镇长也跟你说过一样的话，记得么？~
== MARL ~……好吧。别在我眼前就行。~
DO ~ChangeClass(Myself,INNOCENT)
AddexperienceParty(900)
AddJournalEntry(27254,INFO)~
== C0SIRENJ ~平安去吧。愿伊尔梅特赐福于你，也赐福你儿子在另一个世界。~
END
++ ~干得好。~ EXTERN C0SIRENJ C0SireneMARL3
++ ~我以为你不擅长与人打交道，塞琳。~ EXTERN C0SIRENJ C0SireneMARL4
++ ~真可惜。我正手痒想打一场。~ EXTERN C0SIRENJ C0SireneMARL5

APPEND MARL

IF ~~ C0SireneMARL2
 SAY ~我要把你埋进土里！~
IF ~~ DO ~Enemy()~ EXIT
END
END

APPEND C0SIRENJ

IF ~~ C0SireneMARL3
 SAY ~不，我该谢你，<CHARNAME>，谢你留情。~
IF ~~ EXIT
END

IF ~~ C0SireneMARL4
 SAY ~也许吧；不过这是我的职分，我只好暂且搁下。我们别扰这人了，<CHARNAME>。~
IF ~~ EXIT
END

IF ~~ C0SireneMARL5
 SAY ~也许吧，可我不愿看见无辜者的血流出来，尤其不愿是你流的。~
IF ~~ EXIT
END

END

// Bjornin

I_C_T BJORNI 1 C0SireneBJORNI1
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~我们当然会去，不过海尔姆的兄弟，我先帮你治伤。~
== BJORNI ~嗯，你，一个伊尔梅特的圣武士？怪了……不过你的好意我领了，真不必。给那些半食人魔一点公道尝尝，我自会精神抖擞地好起来。~
END

// Silke

INTERJECT CUTSILK 2 C0SireneCUTSILK2
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN 
~够了！你那点假话骗不过圣武士，女巫。~
EXTERN CUTSILK 4

// Stark & Thalantyr

I_C_T PERMID 1 C0SirenePERMID1
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~我从贝瑞戈斯特的镇长那儿知道一点法师塔兰提尔的事，<CHARNAME>。他是个强力的巫师，独居，但为人公道。闯他的私域是桩罪过。~
== PERMID ~呃，随便吧，你想怎么着就怎么着。~
END

I_C_T THALAN 0 C0SireneTHALAN0
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~日安，塔兰提尔师父。凯尔达斯大人问您好。~
== THALAN ~嗯？姑娘，你是教会来的么？我不知拉珊德信徒如今还收提夫林做侍从了。~
== C0SIRENJ ~不，先生。我不过是那神殿的客人；只是镇长托我，若我走这条道，就替他捎个话给您。~
== THALAN ~哼，那人竟不肯亲自来送，倒托行路的人带。我当这是对我个人的轻慢。~
== C0SIRENJ ~那么……那封信呢，先生？~
== THALAN ~他既然随手交给什么路过的人，这信也重要不到哪儿去。搁那边桌上吧。我自个儿有空再看。~
== C0SIRENJ ~呃……随您。~
== THALAN ~这才是好姑娘。那么，若没有别的要紧事，我再请你走一趟。~
END

// Zeke & Branwen

I_C_T ZEKE 0 C0SireneZEKE0
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~这女人该被放出来，<CHARNAME>；可那骗子显然是在借这情形占便宜。我们在神殿能用更公道的价买到治伤的卷轴，这钱花得更值。~
END

I_C_T BRANWE 2 C0SireneBRANWE2
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~只有恶人才会情愿叫别人落到那样的下场。~
== BRANWE IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~我正是这个想法，姐妹。~
END

// Zordral

I_C_T ZORDRAL 0 C0SireneZORDRAL0
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~等等，<CHARNAME>。这人也许是在吓唬，可万一真个动手，风险太大了。也许我们能想个法子劝住他。~
END

// Kelddath

I_C_T KELDDA 0 C0SireneKELDDA0
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~多谢您的圣洁款待，凯尔达斯大人。我在此的这些日子，您待我极为宽厚。~
== KELDDA ~这不算什么，孩子。晨主的大厅永远欢迎伊尔梅特信徒。你随意来去。~
== C0SIRENJ ~谢谢您，大人。~
== KELDDA ~望向黎明吧，好圣武士。~
END

// Prism & Greywolf

I_C_T PRISM 4 C0SirenePRISM4
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~伊尔梅特在上，这般惊人的美，可代价……你的身体损得厉害，雕塑师。慢下来，不然你必会累死。~
== PRISM ~我早已是个死人了，女士。我这具行尸还在续我的活计，虽然此刻我觉出它已在衰败。~
END

I_C_T PRISM 7 C0SirenePRISM7
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~安息吧，匠师，要知道你留下了无可比拟的美的遗产。~
== PRISM ~谢谢你……~
END

I_C_T PRISM 3 C0SirenePRISM3
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~不，<CHARNAME>，你不行！我愿以性命护住这人！~
DO ~SetGlobal("C0SireneJoined","GLOBAL",0) LeaveParty() Enemy()~
END

INTERJECT GREYWO 2 C0SireneGREYWO2
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN
~你不能取这人的命，赏金猎人！你打算干的不是公道！~
EXTERN GREYWO 6

// Mulahey

I_C_T MULAHE 0 C0SireneMULAHE0
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~伊尔梅特在上，这个塞瑞克信徒不但透着恶，还透着满身的肮脏。我此刻就想打倒他，可怎么做由你定。~
END

// Tranzig

I_C_T TRANZI 7 C0SireneTRANZI7
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN 
~他不过是某个更大邪恶的走狗，<CHARNAME>，被恐惧驱着。饶他一命吧，虽说这也许超出他该得的。~
== TRANZI ~是，是！你若饶我，我改过自新，我发誓！~
END

// Joseph's wife

I_C_T FTOWN2%BG1_EET_% 8 C0SireneFTOWN2
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN 
~对不起，我们能做的只这些。愿伊尔梅特赐福他的灵魂在另一个世界，也赐福你的。~
== FTOWN2%BG1_EET_% ~是，我们确实会需要他的祝福……~
END

// Brage

I_C_T BRAGE 2 C0SireneBRAGE2
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~缠着他的那些苦与痛，清清楚楚在他眼里，<CHARNAME>！放下手，他也许还有救。~
END

I_C_T NALIN 3 C0SireneNALIN3
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~是，本该如此，纳林兄弟。好好照料他那颗不安的灵魂。~
END

// Viconia

I_C_T FLAM2 1 C0SireneFLAM2
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN 
~你连审都不审，就把她判死？~
== FLAM2 ~不会有什么审判。单凭她是个卓尔，法度就会要她的命。~
== C0SIRENJ ~那可不行。~
END

// Gallor

INTERJECT GALLOR 1 C0SireneGALLOR1
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN
~你为了件你连底细都不知道的魔法物件，就要杀无辜的人？这事我们绝不沾手。~
EXTERN GALLOR 2

// Brun

I_C_T FARMBR 1 C0SireneFARMBR1
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~一个无助的人求援，我绝不会转身不管，<CHARNAME>。~
END

I_C_T FARMBR 10 C0SireneFARMBR10
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~我敬你的明智，<CHARNAME>。~
END

I_C_T FARMBR 15 C0SireneFARMBR15
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~我敬你的明智，<CHARNAME>。~
END

// Sonner & Tenya

I_C_T TENYA 5 C0SireneTENYA5
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN 
~伊尔梅特主张对孩童施仁，<CHARNAME>，哪怕他们的教养……可疑。~
== TENYA ~求你，我没有别的法子了。~
END

I_C_T SONNER 11 C0SireneSONNER11
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN 
~十足的腌臜。你要我们为你的小算盘去杀孩子。~
== SONNER ~我们不过是讨生活的穷渔夫。逼到绝处，只好用绝法子。~
END

// Firewine Bridge

I_C_T KNIGHT%BG1_EET_% 1 C0SireneKNIGHT1
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN
~安息吧，受折磨的亡魂。~
== KNIGHT%BG1_EET_% ~是……终于……~
END

I_C_T OGRMA3 0 C0SireneOGRMA3
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN 
~你的乐子到头了，嗜杀的畜生！~
== OGRMA3 ~哈哈哈，才刚开始！~
END

// Laurel

I_C_T LAUREL 1 C0SireneLAUREL1
== LAUREL IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~等等，我怎么看见你队伍里有个魔血的东西？你自己说说，受了咒的家伙！~
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~我与你无争，海尔姆信徒。我是伊尔梅特教会的塞琳，与你一样是个斗士。~
== LAUREL IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~当真？那这世上真是到处都有奇迹。好吧，我不找你麻烦。~
== LAUREL IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~那么，你愿意帮我打这群狂乱者，以证明你的心意么？~
END

I_C_T LAUREL 2 C0SireneLAUREL2
== LAUREL IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~等等，我怎么看见你队伍里有个魔血的东西？你自己说说，受了咒的家伙！~
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~我与你无争，海尔姆信徒。我是伊尔梅特教会的塞琳，与你一样是个斗士。~
== LAUREL IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~当真？那这世上真是到处都有奇迹。好吧，我不找你麻烦。~
== LAUREL IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~那么，你愿意帮我打这群狂乱者，以证明你的心意么？~
END

// Kirian

I_C_T KIRIAN 5 C0SireneKIRIAN5
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~我本该不赞成这场打，可怪的是……我并不反对。~
== KIRIAN ~上吧，伙计们！~
END

// Korax

I_C_T KORAX 3 C0SireneKORAX3
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN 
~这……不明智，<CHARNAME>。亡灵不能指望他们一直忠心，尤其当他们饥饿上来的时候。~
== KORAX ~科拉克斯饿，可我不吃朋友！我保证！~
END

// Mutamin

I_C_T MUTAMI 1 C0SireneMUTAMI1
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~没魂的杂种！领受伊尔梅特的公道吧！~
== MUTAMI ~再见啦，这下你死了！~
END

// Bassilus

I_C_T BASSIL 2 C0SireneBASSIL2
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN 
~哭泣之神在上，这么多受折磨的尸身……我们得把这个疯子拉下来，<CHARNAME>。~
END

// Lena & Samuel

I_C_T LENA 3 C0SireneLENA3
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN 
~这人不管犯了什么罪，都不该这样死。~
== LENA ~（呜咽）可怜的塞缪尔……~
END

// Albert

I_C_T ALBERT 10 C0SireneAlbert10
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN 
~一个魔鬼加一条地狱犬？我倒没料到会见到这个。~
== ALBERT ~嘿，你的眼睛像母亲。你是表亲么？改日来我们家坐坐！~
END

// Cloakwood

I_C_T TIBER 2 C0SireneTIBER2
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN 
~我不愿想一个没本事的年轻人独自在这满是蜘蛛的地方会出什么事，<CHARNAME>。他虽说蠢，我们也该帮他。~
== TIBER ~我真是个蠢货！求你，帮帮我们……~
END

I_C_T CENTEO 0 C0SireneCENTEO0
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN 
~哦，这……恕我，<CHARNAME>，可……这真叫人作呕。我看不下去。~
END

// Mines

I_C_T DRASUS 0 C0SireneDRASUS0
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~我猜你自以为比他强？我看你也构不成什么威胁。~
== DRASUS ~闭嘴，婆娘。~
END

I_C_T TIPIAN 1 C0SireneTIPIAN1
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~伊尔梅特护你，可怜人。~
== TIPIAN ~是，愿他真护你。~
END

I_C_T TIPIAN 2 C0SireneTIPIAN2
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~达瓦恩？那就是那个赞成奴役这等可怕勾当的残暴之人的名字……放心，我们会给他该得的惩罚。~
== TIPIAN ~再快也不嫌快。~
END

I_C_T OGRMA2 0 C0SireneOGREMA20
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~卖苦的脏东西！你再也不能折磨另一个无辜的人了！~
END

I_C_T2 DAVAEO 0 C0SireneDAVAEO0
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~你要为你的罪付出代价，法师！~
END

// Rill

INTERJECT SLAVLEAD 3 C0SireneSLAVLEAD3
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN 
~<CHARNAME>，一百金币于我们算什么？尤其换这么多条命。你若不肯给他们逃命的法子，我给。拿去。~
EXTERN SLAVLEAD 4

I_C_T SLAVFREE 1 C0SireneSLAVFREE1
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~你疯了，<CHARNAME>，白白送掉这么多条命。祈祷我们的路别再相交。~
DO ~SetGlobal("C0SIRENJoinedBG1","GLOBAL",0) LeaveParty() EscapeArea()~
== SLAVFREE ~众神咒你！~
END

APPEND MINEC2

IF WEIGHT #-100 ~PartyHasItem("MISC83") InParty("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN BEGIN C0SireneMINEC20
  SAY ~嘿，又见面了。我看你拿到钥匙了。跟主人那一场一定打得血淋淋，你们能活着过来，必是硬手。那好，把钥匙给我，这事就了结。哦，还有一件事，你跟瑞尔谈过了吧？好叫所有奴隶都能活着出去。~
  ++ ~管别的奴隶做什么？！快开闸门，好叫我们淹了这里，赶紧出去。~ + 9
  + ~!Global("FREESLAV","GLOBAL",1) !Global("C0SireneCloakwoodDrowned","GLOBAL",1)~ + ~是，我们跟瑞尔谈过了。你不必担心你的朋友。他们都会平安。钥匙在这儿，来吧。~ DO ~SetGlobal("C0SireneCloakwoodDrowned","GLOBAL",1)~ EXTERN C0SIRENJ slaveinterjection
  + ~Global("FREESLAV","GLOBAL",1)~ + ~是，我们跟瑞尔谈过了。你不必担心你的朋友。他们都会平安。钥匙在这儿，来吧。~ + 10
  ++ ~我们还不想这就把矿淹了。在这儿待着，我们也许过后会回来找你。~ + 11
END
END

APPEND C0SIRENJ

IF ~~ slaveinterjection
 SAY ~住手，<CHARNAME>！你骗了这人！我们若现在淹了矿，底下的所有魂都要送命。~
IF ~~ THEN EXTERN MINEC2 9
END

END

// Scar

I_C_T SCAR 2 C0SireneSCAR2
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN
~拳会竟落到要找外人来办它的事？看来事情越来越糟了。~
== SCAR ~你连一半都不知道，女士。~
END

// Petrine

I_C_T2 PETRIN 1 C0SirenePETRIN1
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~光是看着就叫人心里发痛，<CHARNAME>。虽说我反对行窃，可这一回也许情有可原。~
END

I_C_T2 PETRIN 3 C0SirenePETRIN3
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~可怜的孩子。我想不出我们还能为她做什么。~
END

// Alatos

I_C_T ALATOS 9 C0SireneALATOS9
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~这倒不像我料想的那些盗贼的龌龊差事。哈鲁安人当然有权守着他们的秘密，只是我忍不住觉得这些盗贼仍不可信。~
END

// Shaella

I_C_T SHAELL 1 C0SireneSHAELL1
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~还有莱兰信徒？我还以为他们的信仰在动荡之年后就断绝了。~
END

// Varci

I_C_T VARCI 5  C0SireneVARCI5
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN
~带路吧，年轻人。我想知道是什么叫你来找我们。~
== VARCI ~这边来！~
END

// Tremain

I_C_T TREMAI 3  C0SireneTREMAI
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN
~只因少年莽撞就受这样的罚，不合宜。我们若就这么走开，便是白送一条无辜的命，<CHARNAME>。我劝你帮帮这可怜人。~
== TREMAI ~多谢你的怜悯，伊尔梅特信徒；可我不会逼你替我定夺。~
END

I_C_T CASSON 0 C0SireneCASSON0
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN
~赞美众神的仁慈，他活着。~
END

// Ragefast, Ramazith, and Abela

I_C_T RAMAZI 6 C0SireneRAMAZI6
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN 
~别听这法师的，<CHARNAME>。我觉出他心怀恶意，不可信。~
== RAMAZI ~你弄错了，我跟你说。~
END

I_C_T ABELA 4 C0SireneAbela4
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN 
~我不能赞同这巫师的作为，可他并非恶人，<CHARNAME>，只是个孤独太久的人。你把这事和平了结，是件好事。~
== ABELA ~可怜的、可怜的雷吉法斯特……~
END

I_C_T2 ABELA 8 C0SireneAbela8
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN 
~我不喜欢这样，<CHARNAME>。雷吉法斯特是个愚蠢的老头，可另一个法师的意图明摆着是恶的。我为那宁芙的性命担心。~
END

I_C_T RAMAZI 15 C0SireneRAMAZI15
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN 
~伊尔梅特在上！我还当他是好色之心，可这……这糟了不知多少倍！我们不能让这种事发生！~ 
== RAMAZI ~省下你那套假仁假义的说教吧，圣武士。~
END

I_C_T ABELA 12 C0SireneAbela12
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN 
~伊尔梅特的仁慈在上！你不会是当真吧！这事我绝不答应。~
DO ~SetGlobal("C0SIRENEJoined","GLOBAL",0) LeaveParty() Enemy()~
== ABELA ~哼！~
END

// Undercellar

CHAIN IF ~Global("C0SireneUndercellar","GLOBAL",1)~ THEN C0SIRENJ C0SIRENECELLAR1
~这是个肮脏的堕落窝，<CHARNAME>。我希望我们不会在这儿待太久。~
DO ~SetGlobal("C0SireneUndercellar","GLOBAL",2)~
END
	++ ~我还以为以你的出身，在这种地方会自在些。~ + C0SIRENECELLAR2
	++ ~说实话，我的感觉完全一样。~ + C0SIRENECELLAR3
	++ ~随便吧。~ EXIT
	++ ~其实我原想在这儿过一夜的。~ + C0SIRENECELLAR4

CHAIN C0SIRENJ C0SIRENECELLAR2
~其实我是自在，可这只会叫事情更糟。~
= ~带路吧，<CHARNAME>，可要快，免得我忍不住动手砸东西。~
EXIT

CHAIN C0SIRENJ C0SIRENECELLAR3	
~那样的话，我希望我们的事越快办完越好。~
EXIT

CHAIN C0SIRENJ C0SIRENECELLAR4
~我真心希望你在说笑。~
= ~至少想一想，那些……*咳*……在此提供服务的人，会染上什么病吧。~
EXIT

// Ghorak

INTERJECT GHORAK 1 C0SireneGHORAK1
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN 
~哦，伊尔梅特在上……我从没见过这样残忍的折磨。求你，让我们缓解你的痛，可怜人。~
EXTERN GHORAK 2

I_C_T2 GHORAK 3 C0SireneGHORAK3
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~是，这才是真正的善行，<CHARNAME>。~
END

// Bentan

I_C_T BENTAN 0 C0SireneBENTAN0
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN 
~是，兄弟，我是破碎之神的斗士。~
== BENTAN ~你？！可你是……呃，咳。你这些同伴又怎么说？~
END

INTERJECT BENTAN 8 C0SireneBENTAN8
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN 
~（叹气）我们信仰里年长些的信徒有时会……有些别扭，<CHARNAME>。别太把他的话说在心里。~
== BENTAN ~嗯。也许你还太年轻，还不能奉我们的信仰。~
DO ~EscapeArea()~
EXIT

// Priest of Ilmater

I_C_T2 PRIILMU 0 C0SirenePRIILMU0
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN 
~是，兄弟。愿我们受创的肉身得洗净。~
END

I_C_T2 PRIILMU 4 C0SirenePRIILMU4
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN 
~什么？你身为伊尔梅特的仆人，竟敢？！~
END

// Phandalyn

CHAIN IF WEIGHT #-100
~InParty("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN PHANDA C0SirenePHANDA
~我觉出你队伍里有恶，朋友。我不能容许你或你那些恶的同伴威胁博德之门的良民。~
== C0SIRENJ ~住手，海尔姆的斗士！你弄错了，你感到的是我这份魔血祖脉，可我与你无争。我是受苦圣战者的塞琳，伊尔梅特的圣武士，这些是我的同伴，在我信护之下。~
== PHANDA ~当真？我看得出你没撒谎，尽管我难以相信。好吧，你与你的同伴可以过去，伊尔梅特信徒。~
DO ~EscapeArea()~
== C0SIRENJ IF ~InParty([0.0.0.0.0.0.MASK_EVIL])~ THEN ~我极不愿为我们队里那些心怀恶意的人辩护，可我怕这位骑士会逼我们动手，而我不愿伤他。~
EXIT

// Candlekeep

I_C_T2 WILLIA%BG1_EET_% 10 C0SireneWILLIA10
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN 
~（轻笑）我从没料到你会做这种事，我的朋友。如今我得记着把斗篷随时带在手边了，以防万一。~
== WILLIA%BG1_EET_% ~（笑了笑，走开了）~
END

I_C_T2 RIELTA 0 C0SireneRIELTA0
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN 
~<CHARNAME>，小心行事。在这儿打起来，只会给我们添麻烦。~
END

INTERJECT POGHM9 4 C0SirenePOGHM94
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN 
~等等，<CHARNAME>。这祭司身上欺瞒与恶的气息太强，掩不住。你到底是谁？！~
EXTERN POGHM9 3

INTERJECT POGHM9 5 C0SirenePOGHM95
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN 
~等等，<CHARNAME>。这祭司身上欺瞒与恶的气息太强，掩不住。你到底是谁？！~
EXTERN POGHM9 3

INTERJECT POGHM9 6 C0SirenePOGHM96
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN 
~等等，<CHARNAME>。这祭司身上欺瞒与恶的气息太强，掩不住。你到底是谁？！~
EXTERN POGHM9 3

I_C_T SHISTA 0 C0SireneSHISTA0
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN 
~有哪里不对。这武僧周身绕着散不去的恶气，<CHARNAME>。我建议你盘问他，他不像表面那样。~
END

I_C_T ELMINS4 0 C0SireneELMINS4
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~别听他们撒谎，<CHARNAME>，他们身上那股恶臭，跟我们先前遇过的一样。~
== ELMINS4 ~这全是幻象，孩子，若你肯容我解释。~
END

// Neb

I_C_T NEB%BG1_EET_% 2 C0SireneNeb
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN 
~一个杀孩子的人……若不是碍着规矩，我此刻就要把这脏东西带去处断。~
END

// Rashad

INTERJECT RASHAD 0 C0SireneRASHAD0
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN 
~你那些祭司的行头掩不住你真正的心意，下毒的人。~
EXTERN RASHAD 1

// Krystin & Slythe

APPEND C0SIRENJ

IF ~Global("C0SireneKrystinSlythe","GLOBAL",1)~ C0SireneAssassins
 SAY ~破碎之神在上，这些死并没叫我舒坦，只留下一嘴苦味。我们离开这儿吧。~
IF ~~ DO ~SetGlobal("C0SireneKrystinSlythe","GLOBAL",2)~ EXIT
END
END

// Tamoko

I_C_T TAMOKO 20 C0SireneTAMOKO20
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN 
~她苦得很，<CHARNAME>。不是身上，是心里和魂里。我说不上于她生与死哪个更仁慈。~
END

// Low Reputation

CHAIN IF ~Global("C0SireneLowRep","GLOBAL",1)~ THEN C0SIRENJ C0SireneRep01
~<CHARNAME>，我觉得你把我们带上了错路。~
DO ~SetGlobal("C0SireneLowRep","GLOBAL",2)~
= ~我暂时不下判断，但我劝你转个向，往好处走。~
EXIT

CHAIN IF ~Global("C0SireneRepBreak","GLOBAL",1)~ THEN C0SIRENJ C0SireneRep02
~那么，你并不打算改道。既如此，我便告辞。愿伊尔梅特怜悯你的灵魂——因为我们若再相见，我不会。~
DO ~SetGlobal("C0SireneRepBreak","GLOBAL",2) SetGlobal("C0SIRENJoinedBG1","GLOBAL",0) LeaveParty() EscapeArea()~ 
EXIT

// Corsone

INTERJECT CORSON 2 C0SireneCORSON2
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN 
~等等，<CHARNAME>。先别让他走开。我觉出他话里有假，心里有恶意。~
== CORSON ~你弄错了，女人。我心里只有悲痛，别的没有。~
END
++ ~嗯，我这位朋友毕竟是圣武士。你何不自己解释解释？~ EXTERN CORSON 3
++ ~让他走吧，塞琳。一个德鲁伊为何要害自己的兄弟？我为你致哀。~ EXTERN CORSON 5

// TotSC

I_C_T2 DEATH1 0 C0SireneDEATH10
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN 
~众神在上，一个恶魔骑士……~
END

I_C_T2 DEATH2 0 C0SireneDEATH20
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN 
~这……东西是对正道的扭曲，<CHARNAME>。我们不能让它活着。~
END

I_C_T2 DURLAGT 0 C0SireneDURLAGT0
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN 
~这是……杜拉格的魂？还是只是他从前自己的回响，像这受咒地方的其余一切一样被弃下了？~
END

I_C_T2 TRACEA 1 C0SireneTRACEA1
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN 
~魔鬼来了，<CHARNAME>，我在血里觉出来了。我们得把它逐出这个位面！~
END

I_C_T2 TRACEA 2 C0SireneTRACEA2
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN 
~魔鬼来了，<CHARNAME>，我在血里觉出来了。我们得把它逐出这个位面！~
END

I_C_T2 TRACEA 3 C0SireneTRACEA3
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN 
~魔鬼来了，<CHARNAME>，我在血里觉出来了。我们得把它逐出这个位面！~
END

I_C_T2 TRACEA 4 C0SireneTRACEA4
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN 
~魔鬼来了，<CHARNAME>，我在血里觉出来了。我们得把它逐出这个位面！~
END

I_C_T2 TRACEA 5 C0SireneTRACEA5
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN 
~魔鬼来了，<CHARNAME>，我在血里觉出来了。我们得把它逐出这个位面！~
END

I_C_T2 KAISH 27 C0SireneKAISH27
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN 
~不……伊尔梅特在上，这是*不对*的。凯莎，我们不能像你这样活！你必须解了这诅咒！~
END

APPEND C0SIRENJ

IF ~Global("C0SireneShipwreck","GLOBAL",1)~ C0SireneShipwrecked
 SAY ~*咳* 嗯……这趟可不像我料想的。我本指望我头一回渡海冒险别那么……凶险。~
 = ~我想我们该庆幸还活着。也许这岛上有人能帮我们。~
IF ~~ DO ~SetGlobal("C0SireneShipwreck","GLOBAL",2)~ EXIT
END

IF ~Global("C0SireneJealous","GLOBAL",1)~ C0SireneJealous
 SAY ~……~
IF ~Gender(Player1,MALE)~ DO ~SetGlobal("C0SireneJealous","GLOBAL",2)~ + C0SireneJealousMale
IF ~Gender(Player1,FEMALE)~ DO ~SetGlobal("C0SireneJealous","GLOBAL",2)~ + C0SireneJealousFemale
END

IF ~~ C0SireneJealousMale
 SAY ~看来那位年轻姑娘很中意你，<CHARNAME>。~
 ++ ~是，我想她是。~ + C0SireneJealous2
 ++ ~你吃醋了？~ + C0SireneJealous3
END

IF ~~ C0SireneJealousFemale
 SAY ~看来那位年轻男子很中意你，<CHARNAME>。~
 ++ ~是，我想他是。~ + C0SireneJealous2
 ++ ~你吃醋了？~ + C0SireneJealous3
END

IF ~~ C0SireneJealous2
 SAY ~（叹气）这样显出自信，我想是挺可佩服的。我做不到，若——不，我是想说——~
 = ~（她摇摇头，移开了目光。）~
 ++ ~你本想说什么？~ + C0SireneJealous4
 ++ ~我们走吧。~ EXIT
END

IF ~~ C0SireneJealous3
 SAY ~（脸红）不、不，你怎会这么想？我只是觉得——我是说，并不是说——~
 = ~（叹气）求你，别理我。~
IF ~~ EXIT
END

IF ~~ C0SireneJealous4
 SAY ~没、没什么！我们走吧，求你。~
IF ~~ EXIT
END

IF ~Global("C0SireneKilledDKnight","GLOBAL",1)~ C0SireneKilledDKnight
 SAY ~毁掉那脏东西，我们得了大胜，<CHARNAME>；可……我心里仍是不安。~
 = ~也许这是我主伊尔梅特的指引，可我怕我们还没看到这事的尽头。~
IF ~~ DO ~SetGlobal("C0SireneKilledDKnight","GLOBAL",2)~ EXIT
END

IF ~Global("C0SireneKilledAec","GLOBAL",1)~ C0SireneKilledAec
 SAY ~（喘息）我们……我们今天做了一桩大事，<CHARNAME>，把那恶魔逐出了这个界域。（微笑）打得漂亮，我的朋友。我不会忘了这一刻。~
IF ~~ DO ~SetGlobal("C0SireneKilledAec","GLOBAL",2)~ EXIT
END
END

// ---------------------------------------------
// Player Initiated Dialogue
// ---------------------------------------------

APPEND C0SIRENJ

IF ~IsGabber(Player1) CombatCounter(0) !Detect([ENEMY]) %BGT_VAR%~ THEN BEGIN pid
 SAY ~你需要我？~ [C0SIR011]
	+ ~Global("C0SireneMatch","GLOBAL",1)~ + ~（调情）~ + flirtmenu
	+ ~HPPercentGT(Myself,74) RandomNum(4,1)~ + ~你好么？~ + a1
	+ ~HPPercentGT(Myself,74) RandomNum(4,2)~ + ~你好么？~ + a2
	+ ~HPPercentGT(Myself,74) RandomNum(4,3)~ + ~你好么？~ + a3
	+ ~HPPercentGT(Myself,74) RandomNum(4,4)~ + ~你好么？~ + a4
	+ ~HPPercentLT(Myself,75) HPPercentGT(Myself,49) RandomNum(4,1)~ + ~你好么？~ + b1
	+ ~HPPercentLT(Myself,75) HPPercentGT(Myself,49) RandomNum(4,2)~ + ~你好么？~ + b2
	+ ~HPPercentLT(Myself,75) HPPercentGT(Myself,49) RandomNum(4,3)~ + ~你好么？~ + b3
	+ ~HPPercentLT(Myself,75) HPPercentGT(Myself,49) RandomNum(4,4)~ + ~你好么？~ + b4
	+ ~HPPercentLT(Myself,50)~ + ~你好么？~ + c1
	+ ~Global("C0SireneMatch","GLOBAL",1) GlobalLT("C0SireneTalksBG1","GLOBAL",11)~ + ~你觉得我们能不能不止做朋友？~ + romance1
	+ ~Global("C0SireneMatch","GLOBAL",1) GlobalGT("C0SireneTalksBG1","GLOBAL",10) GlobalLT("C0SireneTalksBG1","GLOBAL",17)~ + ~你觉得我们能不能不止做朋友？~ + romance2
	+ ~Global("C0SireneMatch","GLOBAL",1) GlobalGT("C0SireneTalksBG1","GLOBAL",16)~ + ~你觉得我们能不能不止做朋友？~ + romance3
	+ ~Global("C0SireneMatch","GLOBAL",2)~ + ~你觉得我们能不能不止做朋友？~ + romance4
	+ ~!Global("C0SireneTalksBG1Stopped","GLOBAL",1)~ + ~路上你少说点话。~ + pausedialog
	+ ~Global("C0SireneTalksBG1Stopped","GLOBAL",1)~ + ~你若要再跟我说话，我不介意。~ + startdialog
	++ ~你的嗓子有问题么？~ + stringfix	
	++ ~现在不用。~ EXIT
END

IF ~~ flirtmenu
SAY ~你需要什么，<CHARNAME>？~
+ ~RandomNum(3,1)~ + ~（对她微笑）~ + f1.1
+ ~RandomNum(3,2)~ + ~（对她微笑）~ + f1.2
+ ~RandomNum(3,3)~ + ~（对她微笑）~ + f1.3
+ ~RandomNum(3,1)~ + ~（握住她的手）~ + f2.1
+ ~RandomNum(3,2)~ + ~（握住她的手）~ + f2.2
+ ~RandomNum(3,3)~ + ~（握住她的手）~ + f2.3
+ ~RandomNum(3,1)~ + ~（看着她）~ + f3.1
+ ~RandomNum(3,2)~ + ~（看着她）~ + f3.2
+ ~RandomNum(3,3)~ + ~（看着她）~ + f3.3
+ ~RandomNum(3,1)~ + ~（拂去她斗篷上的尘土）~ + f4.1
+ ~RandomNum(3,2)~ + ~（拂去她斗篷上的尘土）~ + f4.2
+ ~RandomNum(3,3)~ + ~（拂去她斗篷上的尘土）~ + f4.3
+ ~RandomNum(3,1)~ + ~（替她揉肩）~ + f5.1
+ ~RandomNum(3,2)~ + ~（替她揉肩）~ + f5.2
+ ~RandomNum(3,3)~ + ~（替她揉肩）~ + f5.3
+ ~RandomNum(3,1)
HPPercentLT("C0Sirene",100)
OR(2)
Class(Player1,DRUID_ALL)
Class(Player1,PALADIN_ALL)
Class(Player1,CLERIC_ALL)~ + ~（替她治伤）~ + f6.1
+ ~RandomNum(3,2)
HPPercentLT("C0Sirene",100)
OR(2)
Class(Player1,DRUID_ALL)
Class(Player1,PALADIN_ALL)
Class(Player1,CLERIC_ALL)~ + ~（替她治伤）~ + f6.2
+ ~RandomNum(3,3)
HPPercentLT("C0Sirene",100)
OR(2)
Class(Player1,DRUID_ALL)
Class(Player1,PALADIN_ALL)
Class(Player1,CLERIC_ALL)~ + ~（替她治伤）~ + f6.3
+ ~RandomNum(3,1)~ + ~（提出替她背包）~ + f7.1
+ ~RandomNum(3,2)~ + ~（提出替她背包）~ + f7.2
+ ~RandomNum(3,3)~ + ~（提出替她背包）~ + f7.3
+ ~RandomNum(3,1)
Class(Player1,BARD_ALL)~ + ~（给她唱首歌）~ + f8.1
+ ~RandomNum(3,2)
Class(Player1,BARD_ALL)~ + ~（给她唱首歌）~ + f8.2
+ ~RandomNum(3,3)
Class(Player1,BARD_ALL)~ + ~（给她唱首歌）~ + f8.3
+ ~RandomNum(3,1)~ + ~（走路时擦过她的肩）~ + f9.1
+ ~RandomNum(3,2)~ + ~（走路时擦过她的肩）~ + f9.2
+ ~!Race(Player1,GNOME)
!Race(Player1,DWARF)
!Race(Player1,HALFLING) RandomNum(3,3)~ + ~（走路时擦过她的肩）~ + f9.3
+ ~RandomNum(3,1)~ + ~谢谢你护我。~ + f10.1
+ ~RandomNum(3,2)~ + ~谢谢你护我。~ + f10.2
+ ~RandomNum(3,3)~ + ~谢谢你护我。~ + f10.3
+ ~RandomNum(3,1)~ + ~你觉得我怎样？~ + f11.1
+ ~ReputationGT(Player1,12) RandomNum(3,2)~ + ~你觉得我怎样？~ + f11.2
+ ~RandomNum(3,3)~ + ~你觉得我怎样？~ + f11.3
+ ~AreaType(FOREST) RandomNum(3,1)~ + ~（送她一朵花）~ + f12.1
+ ~AreaType(FOREST) RandomNum(3,2)~ + ~（送她一朵花）~ + f12.2
+ ~AreaType(FOREST) RandomNum(3,3)~ + ~（送她一朵花）~ + f12.3
+ ~Gender(Player1,FEMALE) RandomNum(3,1)~ + ~（替她梳头）~ + f13.1a
+ ~Gender(Player1,FEMALE) RandomNum(3,2)~ + ~（替她梳头）~ + f13.2
+ ~Gender(Player1,FEMALE) RandomNum(3,3)~ + ~（替她梳头）~ + f13.3
+ ~Gender(Player1,MALE) RandomNum(3,1)~ + ~（替她梳头）~ + f13.1b
+ ~Gender(Player1,MALE) RandomNum(3,2)~ + ~（替她梳头）~ + f13.2
+ ~Gender(Player1,MALE) RandomNum(3,3)~ + ~（替她梳头）~ + f13.3
+ ~RandomNum(3,1)~ + ~（吻她的手）~ + f14.1
+ ~RandomNum(3,2)~ + ~（吻她的手）~ + f14.2
+ ~RandomNum(3,3)~ + ~（吻她的手）~ + f14.3
++ ~没事。~ EXIT
END

IF ~~ f1.1
SAY ~（塞琳有些紧张地回你一个笑。）~
IF ~~ EXIT
END

IF ~~ f1.2
SAY ~什么事叫你笑了，我的朋友？有好事么？~
IF ~~ EXIT
END

IF ~~ f1.3
SAY ~（塞琳红了脸，转过头去。）~
IF ~~ EXIT
END

IF ~~ f2.1
SAY ~（塞琳被你的触碰惊得抽回手，认出是你之后又松了下来。）~
= ~啊！恕我，<CHARNAME>，我还以为……不，忘了罢。~
IF ~~ EXIT
END

IF ~~ f2.2
SAY ~（塞琳似乎犹豫着该放松还是抽回，终究还是让你握着她的手走。）~
IF ~~ EXIT
END

IF ~~ f2.3
SAY ~<CHARNAME>，我……我不是孩子。我不用人扶也能走。~
IF ~~ EXIT
END

IF ~~ f3.1
SAY ~（你看着塞琳走在你身侧，低着头看地面。她没注意到你在看她。）~
IF ~~ EXIT
END

IF ~~ f3.2
SAY ~（塞琳最惹眼的，除了额上的犄角，就是她高高的颧骨和微微发亮的绿眼，还有左脸上那道细疤。）~
IF ~~ EXIT
END

IF ~~ f3.3
SAY ~（你过了好一会儿才发觉塞琳也在看你。她像要说什么，却咬了咬下唇，窘迫地移开目光。）~
IF ~~ EXIT
END

IF ~~ f4.1
SAY ~（你把塞琳的白斗篷理平，拂掉褶缝里积下的尘屑。）~
= ~啊……谢谢你，<CHARNAME>。~
IF ~~ EXIT
END

IF ~~ f4.2
SAY ~（你替她清斗篷的时候，塞琳伸手摸上你的脸，用拇指擦掉你颊上的一点污。）~
IF ~~ EXIT
END

IF ~~ f4.3
SAY ~*叹气* 要是血渍也能这样轻易擦掉就好了，<CHARNAME>……~
IF ~~ EXIT
END

IF ~~ f5.1
SAY ~（你动手去卸塞琳的肩甲，她却握住了你的手。）~
= ~<CHARNAME>……你不必的。不过，谢谢你。~
IF ~~ EXIT
END

IF ~~ f5.2
SAY ~（队伍小歇的时候，塞琳卸下了足够的甲，好让你替她揉按。）~
= ~（你觉出她的筋肉紧绷打结，你揉开的时候，她舒了一口气。）~
= ~（你弄完，塞琳握住你的手，吻了吻。）~
IF ~~ EXIT
END

IF ~~ f5.3
SAY ~（笑）我怕我的甲碍事，<CHARNAME>。也许等我们扎营吧。~
IF ~~ EXIT
END

IF ~~ f6.1
SAY ~你太客气了，<CHARNAME>……~
IF ~~ DO ~ForceSpell("C0Sirene",CLERIC_CURE_LIGHT_WOUNDS)~ EXIT
END

IF ~~ f6.2
SAY ~不，求你别把法术耗在我身上。我自己的伤自己能治……还有人比我更需要它们。~
IF ~~ EXIT
END

IF ~~ f6.3
SAY ~（伤口开始合上，塞琳松了口气。）~
IF ~~ DO ~ForceSpell("C0Sirene",CLERIC_CURE_LIGHT_WOUNDS)~ EXIT
END

IF ~~ f7.1
SAY ~不，不用，这点我背得动，不过谢谢你。~
IF ~~ EXIT
END

IF ~~ f7.2
SAY ~（塞琳有点不情愿地把背包递给你。）~
= ~我但愿能拒，可这一天实在太长了……恕我软弱，<CHARNAME>。~
IF ~~ EXIT
END

IF ~~ f7.3
SAY ~我很感激，<CHARNAME>；可我不想再给你添担子。~
IF ~~ EXIT
END

IF ~~ f8.1
SAY ~哦……那首歌听着耳熟……可我想不起在哪儿听过。我能再听一遍么？~
IF ~~ EXIT
END

IF ~~ f8.2
SAY ~你的声音真美，<CHARNAME>。~
IF ~~ EXIT
END

IF ~~ f8.3
SAY ~（塞琳专心地听你唱，到副歌时跟着哼起来。）~
IF ~~ EXIT
END

IF ~~ f9.1
SAY ~我倒不介意就这样走一阵子，<CHARNAME>……*脸红* 若……若你不介意的话。~
IF ~~ EXIT
END

IF ~~ f9.2
SAY ~（塞琳碰了碰你的手臂，边走边对你笑。）~
IF ~~ EXIT
END

IF ~~ f9.3
SAY ~（塞琳偏过头，像是要靠上你的肩，可最后一刻又改了主意。）~
IF ~~ EXIT
END

IF ~~ f10.1
SAY ~你不必谢我，<CHARNAME>，我……我不过是尽我的职分。~
IF ~~ EXIT
END

IF ~~ f10.2
SAY ~你可以靠我，我的朋友……若有需要，我愿以性命护你。~
IF ~~ EXIT
END

IF ~~ f10.3
SAY ~只要我活着，什么也伤不了你，<CHARNAME>。~
IF ~~ EXIT
END

IF ~~ f11.1
SAY ~我怎么看你？我……我这会儿说不出来。~
IF ~~ EXIT
END

IF ~~ f11.2
SAY ~你——你是个极好的人，<CHARNAME>……我还真需要多说么？~
= ~（她羞怯地对你笑。）~
IF ~~ EXIT
END

IF ~~ f11.3
SAY ~我，嗯……我心里想的，也许不值得说。*脸红*~
IF ~~ EXIT
END

IF ~~ f12.1
SAY ~真美，<CHARNAME>……你打算送给谁么？~
++ ~当然。（把花递给她。）~ + f12.1a
++ ~并没有特别打算。~ + f12.1b
END

IF ~~ f12.1a
SAY ~我——我？我……哦，众神，我……我得遮住脸……~
IF ~~ EXIT
END

IF ~~ f12.1b
SAY ~哦……可惜。不过到底是朵好看的花。~
IF ~~ EXIT
END

IF ~~ f12.2
SAY ~多好的礼物，<CHARNAME>……我会珍藏着。~
IF ~~ EXIT
END

IF ~~ f12.3
SAY ~（塞琳默默地接过花，别在甲上。她轻轻笑了。）~
= ~说起来孩子气，我知道，可我确实喜欢。~
IF ~~ EXIT
END

IF ~~ f13.1a
SAY ~嗯，让另一个女人替我梳头，这感觉挺舒服，<CHARNAME>……~
IF ~~ EXIT
END

IF ~~ f13.1b
SAY ~让一个男人替我梳头，真怪，<CHARNAME>……不过我不介意。~
IF ~~ EXIT
END

IF ~~ f13.2
SAY ~（塞琳的头发乱了，长短不齐，多半是打仗所致。可那鲜亮的红色仍很好看。）~
IF ~~ EXIT
END

IF ~~ f13.3
SAY ~我不愿浪费你的时间，<CHARNAME>……等下一场打完，它照样会乱。~
IF ~~ EXIT
END

IF ~~ f14.1
SAY ~（你在塞琳手背上轻轻一吻，她臊得红了脸。）~
IF ~~ EXIT
END

IF ~~ f14.2
SAY ~（你把塞琳的手拉到脸旁，才注意到她的指甲漆黑发亮，边缘略弯，看着却完全是天生的。）~
IF ~~ EXIT
END

IF ~~ f14.3
SAY ~哦，天……你真有礼，<CHARNAME>。~
IF ~~ EXIT
END

IF ~~ a1
SAY ~我很好。~
IF ~~ EXIT
END

IF ~~ a2
SAY ~还好。有什么事么？~
IF ~~ EXIT
END

IF ~~ a3
SAY ~我身上酸痛，不过会过去的。~
IF ~~ EXIT
END

IF ~~ a4
SAY ~我没事。~
IF ~~ EXIT
END

IF ~~ b1
SAY ~嗯，我受伤了，可……我想我会好的。~
IF ~~ EXIT
END

IF ~~ b2
SAY ~这痛会过去的……~
IF ~~ EXIT
END

IF ~~ b3
SAY ~我的伤不轻，可我很高兴它们没落在你身上，我的朋友。~
IF ~~ EXIT
END

IF ~~ b4
SAY ~我……想讨一会儿工夫治我的伤，你若允许的话。~
IF ~~ EXIT
END

IF ~~ c1
SAY ~唉，我知道我不该抱怨，可……这血止不住。我需要帮忙。~
IF ~~ EXIT
END

IF ~~ romance1
SAY ~我觉得我们还没熟到那一步，<CHARNAME>。~
IF ~~ EXIT
END

IF ~~ romance2
SAY ~你是个很好的<PRO_MANWOMAN>，<CHARNAME>；可……我想我还没准备好那样的事。~
IF ~~ EXIT
END

IF ~~ romance3
SAY ~也许……等这一切过去我们再谈，我保证。~
IF ~~ EXIT
END

IF ~~ romance4
SAY ~恕我，<CHARNAME>。我想不行。~
IF ~~ DO ~SetGlobal("C0SireneMatch","GLOBAL",3)~ EXIT
END

IF ~~ pausedialog
SAY ~当然。~
IF ~~ DO ~SetGlobal("C0SireneTalksBG1Stopped","GLOBAL",1)~ EXIT
END

IF ~~ startdialog
SAY ~当然。~
IF ~~ DO ~SetGlobal("C0SireneTalksBG1Stopped","GLOBAL",0)~ EXIT
END

IF ~~ stringfix 
SAY ~也许……（咳了咳）~ 
IF ~~ THEN DO ~ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("C0RESET")~ EXIT 
END
END