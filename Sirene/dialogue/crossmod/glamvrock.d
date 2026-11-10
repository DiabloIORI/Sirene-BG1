CHAIN IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
!StateCheck("GV#DAVE",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneGV#DaveBanter1","GLOBAL",0)~ THEN BGV#DAVE SIRENE-DAVE-1
~啊，塞琳。我得承认，看着你总叫我心里发闷。在我眼里，你就是一个大大的错失良机。~
DO ~SetGlobal("C0SireneGV#DaveBanter1","GLOBAL",1)~
== BC0SIREN ~谁错失了？~
== BGV#DAVE ~塔洛斯信徒啊！要是当初是我们把你收养了……唉。这么说吧，我们最出色的那些牧师，小时候大多都被人欺侮过。~
== BC0SIREN ~那伊尔梅特倒算是加倍保佑了我，把我从那样可憎的教养里救了出来。~
== BGV#DAVE ~哦，得了吧。别家的教会我不说，我们这一家可是明明白白教人：恨要往外使，别往里收。~
== BGV#DAVE ~你就想想看。一个热热闹闹的大家庭，魔裔的血在那儿是件得意事。那样的日子对你真有那么糟？~
== BC0SIREN ~一个教我以暴虐为乐、教我闭起心肠的家？是，我想不出还有什么更糟的。~
== BGV#DAVE ~唉哟。你陷得可真深，是不是？还说什么提夫林。我跟你说话，简直像在跟一位天人讲。~
EXIT

CHAIN IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
!StateCheck("GV#DAVE",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneGV#DaveBanter2","GLOBAL",0)~ THEN BGV#DAVE SIRENE-DAVE-2
~塞琳，你有没有想过，这套利他的教义其实是自拆台脚？~
DO ~SetGlobal("C0SireneGV#DaveBanter2","GLOBAL",1)~
== BGV#DAVE ~比方你有一碗谷子，你把它给了一个“比你更需要”的人。然后我来了，看见你，心里想：“哦，这可怜的姑娘什么也没得吃，我把这碗谷子给她吧，这才是该做的事。”~
== BGV#DAVE ~于是你手上又有了一碗谷子。你又把它，呃，给了别人，我那一番好意就此全废；于是又得有人把自己的那碗给我，因为如今我没得吃了……你看出问题了吗？这是条蛇在吞自己的尾巴。~
== BC0SIREN ~可实际上，你不会把碗给我，我也不会不肯吃。这番推演只存在你脑子里，戴夫。你清楚，我不会让自己挨饿；一桩善举，既可能止于受惠的人，也可能一路绕遍世界。能给的时候，能给多少，我就给多少。让它凭本身站住脚吧。~
== BGV#DAVE ~啊，可你把话岔开了。偶尔施几回，是一回事；而“受难”是一种活法，一种你想让它传下去的活法。~
== BGV#DAVE ~我说过了，这套教义是自己拆自己的。你若从不回头想一想自己的需要，就只好由别人替你想；最后人人都忙着背别人，没人还能走路。~
== BC0SIREN ~等到托瑞尔上人人都肯背起身边的人那天，伊尔梅特才终于能歇下，因为他的事做完了。在那之前，我和我的同道，就以身作则。~
EXIT

CHAIN IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
!StateCheck("GV#FLAR",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneGV#FlaraBanter1","GLOBAL",0)~ THEN BGV#FLAR SIRENE-FLARA-1
~地狱生出的东西，却去侍奉天堂。真是受不了的诗人腔。提夫林，许多人都说你是个现成的矛盾，可你的心思我还能摸得明白。~
DO ~SetGlobal("C0SireneGV#FlaraBanter1","GLOBAL",1)~
== BC0SIREN ~你自认懂得了伊尔梅特的教诲？这话从你待人的样子来看，就不像真的。~
== BGV#FLAR ~我从不声称看得懂那份慈善的疯癫，正如听不懂狂乱者嘴里咕哝，可你——你我倒看得透透的。~
== BGV#FLAR ~那些因你出身阴暗就折腾你的人，朝你吐口水、扔石头的人……你哪天真要拔剑，给他们应得的下场，他们就会把你绑上火堆。片刻痛快，终归灰烬。可如今这条路，你就能让他们看个明白，对吧？以忍耐为兵器，让他们看见自己偏见之愚，自己则立于证实之中。这是穷人的复仇，还配得恰到好处。~
== BC0SIREN ~……~
== BC0SIREN ~有过一阵子，你的话还能算有几分真，可那已是许久许久以前的事了。我的骄矜，在伊尔梅特的宽恕里散去了。那个好怒任性的姑娘，已经不在了。~
== BGV#FLAR ~你确实被教得极好——竟把骄矜也说成该被宽恕之物。滚开吧，剑下肉，替我挨上一两下。你的用处，我看就在这里。~
EXIT

CHAIN IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
!StateCheck("GV#LITT",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneGV#LittlunBanter1","GLOBAL",0)~ THEN BGV#LITT SIRENE-LITTLUN-1
~塞琳，别人看你的那种眼神……那比对着我还要高出三尺，可我还是想一巴掌把它从他们多事的脸上拍下去。这种乱七八糟的事，你怎么受得住？~
DO ~SetGlobal("C0SireneGV#LittlunBanter1","GLOBAL",1)~
== BC0SIREN ~我就想想别的路会带来什么。若容我说一句，你自己也未必陌生那种格格不入的感觉。对每个恶语相向的人都还以颜色，只会把人耗干。~
== BGV#LITT ~嘿。说来也怪，我族人倒半点不介意你身上那点魔气。他们会待你同旁人一样——也就是说，你要是敢靠近他们，照样把你撵出去。人类、矮人、提夫林，一视同仁。~
== BC0SIREN ~这至少算公匀，虽谈不上接纳。只是若能换来他们重新向别人敞开心，我倒情愿受他们的厌恶。~
== BGV#LITT ~唉，那还早得很呢，我料着。还有好些旧伤没合上。只要还有活人记得，这事就还称不上过去。~
== BGV#LITT ~不过我自己，就照自己的经历来。我只认得一个提夫林，她是个好人，那便是一个里有一个。这赔率比我能给旁人的都好。~
== BC0SIREN ~我……只怕未必总是如此，利特伦。虽然说出来心里难受，可我这类人里，不少确实就像他们外表那样。~
== BGV#LITT ~啊——啊——啊。这你就让我自己去发现。若是个错，那错也是我自己犯的，我会从里头学。~
EXIT

CHAIN IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
!StateCheck("GV#LITT",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
HPPercentLT("C0Sirene",50)
Global("C0SireneGV#LittlunBanter2","GLOBAL",0)~ THEN BGV#LITT SIRENE-LITTLUN-2
~见鬼，塞琳。你既然不肯给自己治，起码让我看看你。你瞧见这些红的东西吗？这叫血，本来该在里头的。~
DO ~SetGlobal("C0SireneGV#LittlunBanter2","GLOBAL",1)~
== BC0SIREN ~哈哈……啊，这会儿请你别逗我笑。不然就只剩一阵能忍的疼了。~
== BGV#LITT ~等裹上这绷带，你可就笑不出来了，我跟你保证。这一裹得裹紧。~
== BGV#LITT ~你得把自己照顾得好些，知道吗？不管圣座您在奔什么高尚的结局，人死了，那也是看不到的。~
== BC0SIREN ~我还没那么容易倒下，我的朋友。我的伤在你看来当然重，可我费了许多年工夫，练的就是忍这种痛。它们总会过去的。~
== BGV#LITT ~你练了多久我不管。一个人能受的到底有限，知道何时算够，这不算罪过。你不必老是独自受着。~
== BC0SIREN ~你的关心我领了，利特伦，真的。可自从我皈依伊尔梅特，我就从没独自受过。~
EXIT

CHAIN IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
!StateCheck("GV#MOID",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneGV#MoidreBanter1","GLOBAL",0)~ THEN BGV#MOID SIRENE-MOIDRE-1
~你那位神，我没什么可说的，塞琳。不过看来他的信徒该补补战技课。~
DO ~SetGlobal("C0SireneGV#MoidreBanter1","GLOBAL",1)~
== BC0SIREN ~那你是觉得我技法有差？~
== BGV#MOID ~技法不差。挑的兵器差。你既然干的是替人挨打的活，就用盾，别拿身子。盾撑得久。~
== BC0SIREN ~盾有什么用，我清楚得很，莫伊德尔。你该不致当我蠢到那步。我这样打，是因为伊尔梅特不愿我避害。~
== BGV#MOID ~好。那就做个姿态。证明你的无畏与虔诚，或者证明他想在你身上看到的什么。然后呢？你的肺挨了一枪，那一枪有盾就挡得住。你中了一箭，部位不对——虽说也没有对的部位。你死得光荣。可你护着的人没有。他们死在逃跑的路上，求人护他们，而你答不上话。~
== BGV#MOID ~哪个更要紧？姿态，还是结果？~
== BC0SIREN ~两样都要紧。你受的教是要用更务实的手段，这我明白，只是……恕我冒犯……你不是圣武士。正是为着这样的姿态，伊尔梅特才把他的力量赐我。没有这些姿态，没有他，我不过是……~
== BGV#MOID ~又一个兵卒。也罢。怪不得谁不想当我这样的人。~
EXIT

CHAIN IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
!StateCheck("GV#VYND",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneGV#VyndBanter1","GLOBAL",0)~ THEN BGV#VYND SIRENE-VYND-1
~神明在上。崔斯特一个还不够糟，如今满世界跑的都是半魔圣武士。也许四分之一魔。管它几分。这年头就没人肯按规矩来了么？~
DO ~SetGlobal("C0SireneGV#VyndBanter1","GLOBAL",1)~
== BC0SIREN ~我们的路不是出身铺的，这你和我一样清楚。否则你不会在此。~
== BGV#VYND ~哦，就做个乖乖的伊尔梅特信徒，别拿学徒级的哲理来折磨我。这跟命数与自由意志无关。这是你把旁人的观感搅浑，让所有人都不好办。你可知道自己多讨人嫌——对那些本本分分靠吸血压榨过活的提夫林术士来说？~
== BC0SIREN ~若我的例子能让他们哪怕迟疑一刻，那我就做到的比我希望的还多。~
== BGV#VYND ~是啊，那你那一刻的迟疑又在哪儿？你就没有一瞬想过，那些人也许比你活得更乐？~
== BC0SIREN ~维恩德，你的意在何处？你要我把学过的一切都丢开，照着众人以为我该是的模样去就范，然后好去……做什么？免得有人糊涂？你究竟在怨哪一桩？还是只为了争而争？~
== BGV#VYND ~是。~
== BC0SIREN ~……~
== BGV#VYND ~而你还有义务忍着。准备好走长路吧。~
EXIT

CHAIN IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
!StateCheck("GV#VYND",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneGV#VyndBanter2","GLOBAL",0)~ THEN BGV#VYND SIRENE-VYND-2
~伊尔梅特。这位神的信徒比你想的多。我跟你这种人打照面的次数多得惊人。想来是因为你们总在路上——毕竟置了房产，就要被逐出教门。~
DO ~SetGlobal("C0SireneGV#VyndBanter2","GLOBAL",1)~
== BC0SIREN ~也或许是因为无私既不那么罕见，也不那么可鄙，如你所言。~
== BGV#VYND ~嗤。若这让你觉得自己特别，把挣来的一切送给没挣的人，随你。真正绊着我的是这份对苦的痴迷。我认得的另一位要信徒受苦的神是罗丝，可她至少还乐得当个无谓又蠢笨的怪物。~
== BC0SIREN ~你把破碎之神比作蜘蛛之后？若我信你是真心，我便要动怒了。~
== BC0SIREN ~披了这身袍的人，会跟你说同样的话。我们以伊尔梅特之名承受的苦，是位老师。教人谦卑，教人持守，也教人对那些背负同样重担、却从没选择过的人心生体恤——~
== BGV#VYND ~把你的说教塞回你尾巴长的地方，提夫林。要是你有尾巴的话。等我比我的剑还高的时候，我就已经比你一辈子能学到的更懂痛了。我拿你钱袋里所有的蛀虫跟你赌。~
== BGV#VYND ~那就答我这一句，哦受难者。若受苦真那么有德、那么能教化人心，那我怎么长成了这么个五尺高的东西——你在这世上所恨的一切调成的酒？~
== BC0SIREN ~恨？你以为我心里是这个？你若肯听，就会知道自己错得多厉害。我为那些他的慈悲够不到的人伤怀，也为那里面那个没等到慈悲就死掉的人哀悼。仅此而已。~
EXIT