BEGIN C02SIREJ

// Talk after Korlasz

APPEND C02SIREJ

IF WEIGHT #-1 ~Global("C02SireneCryptTalk","GLOBAL",2)~ crypt
SAY ~走到如今，这是一段长路；而<CHARNAME>，你历史的一页又刚翻过去了。你如今感觉如何？~
++ ~这故事还没到头。我感觉跟平常一样。~ DO ~SetGlobal("C02SireneCryptTalk","GLOBAL",3)~ + crypt1
++ ~累。至少眼下，能离开这一切厮杀和墓穴里爬来爬去，我会高兴。~ DO ~SetGlobal("C02SireneCryptTalk","GLOBAL",3)~ + crypt2
++ ~不安分。我还需要更多敌人来打、来打垮。~ DO ~SetGlobal("C02SireneCryptTalk","GLOBAL",3)~ + crypt3
++ ~我会难过的，知道你快离开我了。~ DO ~SetGlobal("C02SireneCryptTalk","GLOBAL",3)~ + crypt4
++ ~我们找个更安稳的地方谈这个。走吧。~ DO ~SetGlobal("C02SireneCryptTalk","GLOBAL",3)~ + crypt0
END

IF ~~ crypt0
SAY ~是……这话确实。往后也许我们能舒舒服服坐在精灵之歌里慢慢谈。带路吧。~
IF ~~ EXIT
END

IF ~~ crypt1
SAY ~这是实情。只有众神知道将来有什么等你，<CHARNAME>。~
IF ~~ + crypt5
END

IF ~~ crypt2
SAY ~（笑）你该得的，我的朋友。我们一起经过了许多，从晨歌神殿相遇那天起，到我们与萨拉沃克那一战。你该歇歇，早就该了。~
IF ~~ + crypt5
END

IF ~~ crypt3
SAY ~我不敢说这叫我安心，知道厮杀才叫你兴奋，<CHARNAME>……可我相信你能管住你的性子。~
IF ~~ + crypt5
END

IF ~~ crypt4
SAY ~是，我为此感激。我承认，我心里也有几分不愿走……~
IF ~~ + crypt5
END

IF ~~ crypt5
SAY ~但愿我能留下，在你身边同庆，<CHARNAME>。~
++ ~我说什么都不能叫你留下么？~ + crypt6
++ ~你也该歇了。我们都该。~ + crypt7
++ ~我们分手之后你去哪儿？~ + crypt8
++ ~我倒是等不及要开始那些庆祝了。走吧。这事回头再谈。~ + crypt0
END

IF ~~ crypt6
SAY ~迫我离开的不是我的意愿，<CHARNAME>。~
IF ~~ + crypt8
END

IF ~~ crypt7
SAY ~是，我但愿能这么说，可是……我的职分从没有尽头。~
IF ~~ + crypt8
END

IF ~~ crypt8
SAY ~如今我们了结了萨拉沃克余下的野心，我怕留在博德之门已没什么理由。你该歇息，而我得继续朝圣，按职分所要求的去寻需要我的人。~
= ~也许我会往南走，去寻我教会的旁人，若他们肯收我。眼下还说不准。~
++ ~你把自己累垮了，塞琳。总得停一停，哪怕只停一阵。~ + crypt9
++ ~嗯，不管怎样，我很高兴认得你，也很感激你的陪伴。~ + crypt10
++ ~那我猜拦不住你了。我希望将来能再见。~ + crypt11
END

IF ~~ crypt9
SAY ~也许，可我的职分不会等我养好。~
IF ~~ + crypt12
END

IF ~~ crypt10
SAY ~是，我也感激你的，<CHARNAME>。不管我的路下回把我带到哪儿，我都会好好地记着你，我的朋友。~
IF ~~ + crypt12
END

IF ~~ crypt11
SAY ~我不怀疑我们的路早晚会再交错……我会殷切地等那一天。~
IF ~~ + crypt12
END

IF ~~ crypt12
SAY ~眼下真要道别还太早，<CHARNAME>。我们离开这阴沉地方吧，好把剩下同行的时光，一起花在暖些的地方。~
IF ~~ EXIT
END
END
// Romance

// 1.
CHAIN IF ~Global("C02SireneLT","GLOBAL",2)~ THEN C02SIREJ lt1
~又上路了，这感觉真怪。我从没想过自己会说这话，可我几乎已经惯了博德之门的日子。~
DO ~IncrementGlobal("C02SireneLT","GLOBAL",1)~
END
	+ ~Global("C0SireneMetBG1","GLOBAL",1)~ + ~我懂你的意思。~ + lt1.1
	+ ~!Global("C0SireneMetBG1","GLOBAL",1)~ + ~我懂你的意思。~ + lt1.2
	++ ~你惯了？我记得我们相遇的时候，你累得几乎站不住。~ + lt1.3
	+ ~Global("C0SireneMetBG1","GLOBAL",1)~ + ~不是我。我很高兴又回到路上。~ + lt1.1
	+ ~!Global("C0SireneMetBG1","GLOBAL",1)~ + ~不是我。我很高兴又回到路上。~ + lt1.2
	++ ~没工夫说话。我们该走了。~ + lt1.0
	
APPEND C02SIREJ

IF ~~ lt1.0
SAY ~是，也许我们改日再谈。~
IF ~~ EXIT
END

IF ~~ lt1.1
SAY ~我们分手多久了，<CHARNAME>？感觉好像昨天我们还一起面对着萨拉沃克和他的仆从。~
IF ~~ + lt1.4
END

IF ~~ lt1.2
SAY ~（笑）我猜我还没真认得你，我的<PRO_LORDLADY>。不过冒日子看着挺合你。~
IF ~~ + lt1.4
END

IF ~~ lt1.3
SAY ~（笑）你这话有道理，<CHARNAME>；不过那种感觉我倒不陌生。~
IF ~~ + lt1.4
END

IF ~~ lt1.4
SAY ~总之，我很高兴换一换，能与旁人同行。我这种血脉的人，在正派人当中不常受待见。~
	+ ~Global("C0SireneMetBG1","GLOBAL",1)~ + ~跟从前一样，嗯？~ + lt1.5
	+ ~!Global("C0SireneMetBG1","GLOBAL",1)~ + ~你常被人避着么？~ + lt1.6
	++ ~你这样好看的女人，剑还使得好？我想不出为什么。~ + lt1.6
	++ ~没工夫说话。我们该走了。~ + lt1.0
END

IF ~~ lt1.5
SAY ~确实。我更高兴有熟悉的同伴，<CHARNAME>。~
IF ~~ + lt1.6
END

IF ~~ lt1.6
SAY ~*叹气* 我不喜欢承认，可我厌倦了不管走到哪儿都得拉上兜帽，只为遮住我的出身……就连回博德之门那一趟也一样。不管我去哪儿，话还没说，先就遇着猜疑。~
= ~可如今我既被认作你的同伴……我就能安心露出真正的自己了……嗯，不是扬眉吐气，可至少是个开头。~
++ ~别担心。只要我在，没人能烦你。~ + lt1.7
++ ~只要你能出得起力，你就可以跟着。~ + lt1.7
++ ~我不是来给你当护驾的。你在营地里惹了事，自己扛。~ + lt1.8
++ ~我们说得够多了。继续走吧。~ + lt1.9
END

IF ~~ lt1.7
SAY ~谢谢你，<CHARNAME>。我不能要求更多了。~
IF ~~ EXIT
END

IF ~~ lt1.8
SAY ~是……我明白。我不会妄想把你卷进我的麻烦里。~
IF ~~ EXIT
END

IF ~~ lt1.9
SAY ~是。带路吧。~
IF ~~ EXIT
END

END

// 2.
CHAIN IF ~Global("C02SireneLT","GLOBAL",4)~ THEN C02SIREJ lt2
~你怎么样，<CHARNAME>？有什么我能帮的？~
DO ~IncrementGlobal("C02SireneLT","GLOBAL",1)~
END
	+ ~!HPPercentLT(Player1,75)~ + ~不，我没什么需要的。谢谢你。~ + lt2.1
	+ ~HPPercentLT(Player1,75)~ + ~不，我没什么需要的。谢谢你。~ + lt2.2
	+ ~HPPercentLT(Player1,75)~ + ~其实，我可以用点治疗。~ + lt2.3
	+ ~!HPPercentLT(Player1,75)~ + ~也许我们可以停下来聊一会儿？~ + lt2.4
	+ ~HPPercentLT(Player1,75)~ + ~也许我们可以停下来聊一会儿？~ + lt2.5
	++ ~别管我。走吧。~ + lt2.0
	
APPEND C02SIREJ

IF ~~ lt2.0
SAY ~好，随你说。~
IF ~~ EXIT
END

IF ~~ lt2.1
SAY ~那样的话，若可以，我就留在这儿跟你聊一会儿。~
IF ~~ + lt2.6
END

IF ~~ lt2.2
SAY ~我佩服你的韧劲，<CHARNAME>；可你的伤确实得治。求你，让我帮你。~
	++ ~那好吧。谢谢你，塞琳。~ + lt2.3
	++ ~不，别把治疗用在我身上。别人更需要。~ + lt2.1
	++ ~我是说不。没工夫弄这个。~ + lt2.0
END

IF ~~ lt2.3
SAY ~当然。别动，我来照料你。~
IF ~~ + lt2.6
END

IF ~~ lt2.4
SAY ~当然。我正想提——我想我们都该歇一歇。~
IF ~~ + lt2.6
END

IF ~~ lt2.5
SAY ~是，若你愿意……我可以同时替你治伤。~
IF ~~ + lt2.6
END

IF ~~ lt2.6
SAY ~你叫我意外，<CHARNAME>。我们一起打过仗，我一直在看你，你显出的力量与带领之能，我很敬佩。~
	+ ~Global("C0SireneMetBG1","GLOBAL",1)~ + ~你那么意外？你从前见过我打仗。~ + lt2.7
	++ ~谢谢你。你也不差。~ + lt2.8
	++ ~当然。我是神的子嗣。力量于我天然。~ + lt2.9
	++ ~我们没工夫闲聊。~ + lt2.10
END

IF ~~ lt2.7
SAY ~是；可就在我们分手后这短短的日子里，你好像又更强了。~
IF ~~ + lt2.11
END

IF ~~ lt2.8
SAY ~（微笑）这些年我确实学了许多、经历了许多，在你身边也是；可我比不上你。~
IF ~~ + lt2.11
END

IF ~~ lt2.9
SAY ~是，我没忘……可我希望你身上不止有血里的东西。~
IF ~~ + lt2.11
END

IF ~~ lt2.10
SAY ~当然你说得对。我们该走了。~
IF ~HPPercentLT(Player1,75)~ + lt2.16
IF ~!HPPercentLT(Player1,75)~ EXIT
END

IF ~~ lt2.11
SAY ~像我一样，我生来血里就带着……力量。传说我的祖先，地狱的魔鬼，是他们位面的征服者。我不想照他们的样。在那一点上……我以为在你身上看见了同样的魂。~
= ~你也许带着巴尔的污迹，<CHARNAME>；可我不认为你与他同恶。你有力量，却不拿它去欺压旁人……这一点我敬佩。我见过生来有力量的人堕入疯狂与暴政。~
++ ~我们在这点上相像。我一点也不想沾我父亲的遗产。~ + lt2.12
++ ~你错了。我很高兴体内有神的本髓。我要随之而来的一切力量。~ DO ~SetGlobal("C02SireneRomanceActive","GLOBAL",3)~ + lt2.13
++ ~你真以为你那点魔血比得上我是什么？真可笑。~ DO ~SetGlobal("C02SireneRomanceActive","GLOBAL",3)~ + lt2.13
++ ~我不想谈这个。就我们眼下的任务说，这无关紧要。~ + lt2.10
END

IF ~~ lt2.12
SAY ~我很高兴我没看错你。我希望能把你当我的朋友……若你肯接纳我。~
+ ~Global("C0SireneMetBG1","GLOBAL",1)~ + ~我们已经是朋友了，塞琳。~ + lt2.14
++ ~当然我会。~ + lt2.15
++ ~现在就说朋友，我还不到那一步。~ + lt2.13
++ ~朋友？不。更该说是方便搭伙的同伴。~ + lt2.13
END

IF ~~ lt2.13
SAY ~我明白了。看来我看错了你，<CHARNAME>。那就这样。我不再烦你。~
IF ~HPPercentLT(Player1,75)~ DO ~ForceSpell(PLAYER1,PALADIN_LAY_ON_HANDS)~ EXIT
IF ~!HPPercentLT(Player1,75)~ EXIT
END

IF ~~ lt2.14
SAY ~是；可自我们初遇以来发生的这一切……嗯，知道你没往坏里变，倒叫人安心。~
IF ~~ + lt2.15
END

IF ~~ lt2.15
SAY ~谢谢你接纳我，<CHARNAME>。这于我的意义超出你所知。~
IF ~HPPercentLT(Player1,75)~ + lt2.16
IF ~!HPPercentLT(Player1,75)~ EXIT
END

IF ~~ lt2.16
SAY ~还有……好了。你的伤我尽力了，<CHARNAME>。但愿在歇息之前够用。~
IF ~~ DO ~ForceSpell(PLAYER1,PALADIN_LAY_ON_HANDS)~ EXIT
END
END

// 3.
CHAIN IF ~Global("C02SireneLT","GLOBAL",6)~ THEN C02SIREJ lt3
~我从没想过会参与打一场战争。到今为止，我打过的仗只有我自己的。这……不一样。~
DO ~IncrementGlobal("C02SireneLT","GLOBAL",1)~
END
	++ ~怎么个不一样？~ + lt3.1
	++ ~我还是不满被逼着去打别人的战争。~ + lt3.2
	++ ~没工夫琢磨你个人的想法。我们专心办该办的事。~ + lt3.0

APPEND C02SIREJ

IF ~~ lt3.0
SAY ~是，既如此，我不再烦你。~
IF ~~ DO ~SetGlobal("C02SireneRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ lt3.1
SAY ~过自己的日子时，我觉得时间多得用不完。可如今……一切都快了。我们面对的挑战不再是只关乎自己的命。这场战争的结局要靠我们……靠你，<CHARNAME>。~
IF ~~ + lt3.3
END

IF ~~ lt3.2
SAY ~是，那是你的权利，<CHARNAME>。连我从前也祈祷过，愿我这一辈子别见到战争……可我想有些事是免不了的。~
IF ~~ + lt3.1
END

IF ~~ lt3.3
SAY ~（塞琳伸手进包里，取出一根血红的长绳。她一言不发，开始在手腕和手指上缠它。）~
+ ~Global("C0SireneMetBG1","GLOBAL",1)~ + ~我记得那根绳……我那一半还留着，看？~ DO ~SetGlobal("C0SirenePCHadString","GLOBAL",1)~ + lt3.4
+ ~Global("C0SireneMetBG1","GLOBAL",1)~ + ~我记得那根绳……可惜我不知什么时候弄丢了。~ DO ~SetGlobal("C0SirenePCHadString","GLOBAL",1)~ + lt3.4
++ ~你拿它做什么？~ + lt3.5
++ ~没工夫分心。继续走，专心办我们的事。~ + lt3.0
END

IF ~~ lt3.4
SAY ~是……就是我们在下城区分的那根绳。你记得，我很高兴。~
IF ~~ + lt3.6
END

IF ~~ lt3.5
SAY ~啊，这个？一个傻气的护符……我从小就有这习惯。~
IF ~~ + lt3.6
END

IF ~~ lt3.6
SAY ~我自小就会把它缠在手上，像伊尔梅特的符号，心里不安或遇上难处时就祈祷。它总叫我松快些，虽说它没有半点法术。~
IF ~Global("C0SirenePCHadString","GLOBAL",1)~ + lt3.7
IF ~!Global("C0SirenePCHadString","GLOBAL",1)~ + lt3.8
END

IF ~~ lt3.7
SAY ~有件事我没跟你说过，<CHARNAME>。这绳在我的信仰里有意义，可它还有另一重意义。~
IF ~~ + lt3.9
END

IF ~~ lt3.8
SAY ~说起来也许孩子气，可它是少数几样叫我得安慰的东西之一。~
	++ ~就那么管用，嗯？我能试试么？~ + lt3.10
	++ ~那就快点。我们手头有要紧事。~ + lt3.0
END

IF ~~ lt3.9
SAY ~有个说法：被红绳相连的人，命数是系在一处的……连同那一切所意味的。也许这不过是迷信，可……我不轻看这样的传说。~
IF ~Global("C0SirenePCHadString","GLOBAL",1)~ + lt3.11
IF ~!Global("C0SirenePCHadString","GLOBAL",1)~ + lt3.12
END

IF ~~ lt3.10
SAY ~我……我不反对，可你得先知道一件事。~
IF ~~ + lt3.9
END

IF ~~ lt3.11
SAY ~我……你在下城区缠手的时候我就知道了。我早该告诉你真正的意思——恕我。那时我没胆量跟你坦白，可现在……~
IF ~~ + lt3.12
END

IF ~~ lt3.12
SAY ~我不能否认我敬佩你，<CHARNAME>，甚至……被你吸引。可若我们之间要超出单纯的友谊，那我愿你来做决断。~
= ~你若没有同样的心意，或心里有别人，我宁愿现在就知——趁我们两个都还没留下悔意。~
	++ ~那就直说吧——我也被你吸引，塞琳，我想看看这往哪儿走。~ DO ~SetGlobal("bd_neera_romanceactive","global",3)
SetGlobal("bd_safana_romanceactive","global",3)
SetGlobal("bd_corwin_romanceactive","global",3)
SetGlobal("bd_rasaad_romanceactive","global",3)
SetGlobal("bd_glint_romanceactive","global",3)
SetGlobal("bd_viconia_romanceactive","global",3)
SetGlobal("bd_voghiln_romanceactive","global",3)
SetGlobal("bd_dorn_romanceactive","global",3)~ + lt3.15
	+ ~Global("bd_neera_romanceactive","global",1)~ + ~谢谢你告诉我，可我已经心系妮拉了。~ DO ~SetGlobal("C02SireneRomanceActive","GLOBAL",3)~ + lt3.13
	+ ~Global("bd_corwin_romanceactive","global",1)~ + ~我对科尔温生了情。~ DO ~SetGlobal("C02SireneRomanceActive","GLOBAL",3)~ + lt3.13
	+ ~Global("bd_safana_romanceactive","global",1)~ + ~萨法娜的魅力把我拿住了。~ DO ~SetGlobal("C02SireneRomanceActive","GLOBAL",3)~ + lt3.13
	+ ~Global("bd_viconia_romanceactive","global",1)~ + ~维康妮亚叫我好奇。我只能说这么多。~ DO ~SetGlobal("C02SireneRomanceActive","GLOBAL",3)~ + lt3.14
	+ ~Global("bd_rasaad_romanceactive","global",1)~ + ~拉萨德是个好人。我想我也许已经爱上他了。~ DO ~SetGlobal("C02SireneRomanceActive","GLOBAL",3)~ + lt3.13
	+ ~Global("bd_glint_romanceactive","global",1)~ + ~我对矮个子男人有感觉——我是说格林特。~ DO ~SetGlobal("C02SireneRomanceActive","GLOBAL",3)~ + lt3.13
	+ ~Global("bd_voghiln_romanceactive","global",1)~ + ~那我认了——我喜欢沃吉尔恩。~ DO ~SetGlobal("C02SireneRomanceActive","GLOBAL",3)~ + lt3.13
	+ ~Global("bd_dorn_romanceactive","global",1)~ + ~我知道你不爱听，可我再也瞒不住了——我被多恩吸引。~ DO ~SetGlobal("C02SireneRomanceActive","GLOBAL",3)~ + lt3.14
	++ ~你肯说实话，我很感激，那我也说实话——我对女人没兴趣。~ DO ~SetGlobal("C02SireneRomanceActive","GLOBAL",3)~ + lt3.13
	++ ~你在说什么，塞琳？我不想追求任何关系，尤其眼下。~ DO ~SetGlobal("C02SireneRomanceActive","GLOBAL",3)~ + lt3.13
END

IF ~~ lt3.13
SAY ~我明白，<CHARNAME>。我要的就是真话，你说出来，我很高兴。我只能祝你好，我的朋友。~
IF ~~ EXIT
END

IF ~~ lt3.14
SAY ~嗯……这不是我指望的答案，可我该感激你说了真话。我只希望你别让自己被黑暗引去……~
= ~恕我，可……我觉得我得退开一阵子。~
IF ~~ EXIT
END

IF ~~ lt3.15
SAY ~这……真是个叫人愉快的意外。我承认我并没想到你会……不，算了。我只希望往后我们多谈谈。谢谢你，<CHARNAME>。~
IF ~~ EXIT
END
END

// 4.
CHAIN IF ~Global("C02SireneLT","GLOBAL",8)~ THEN C02SIREJ lt4
~<CHARNAME>，等等！~
DO ~IncrementGlobal("C02SireneLT","GLOBAL",1)~
= ~我看你发抖了。把我的斗篷披上走一阵吧。~
END
	++ ~我不冷，塞琳。只是……心里不安。~ + lt4.1
	++ ~谢谢你。~ + lt4.1
	++ ~拿回去。我不需要。~ + lt4.2
	++ ~留着吧。我们得走了。~ + lt4.0
	
APPEND C02SIREJ

IF ~~ lt4.0
SAY ~可——好吧。我相信你最知道自己该怎么办。可你若有什么需要，我总在。~
IF ~~ EXIT
END

IF ~~ lt4.1
SAY ~什么烦你，<CHARNAME>？跟我说说会有用么？~
	+ ~Global("C0SireneMetBG1","GLOBAL",1)~ + ~没事。就是些噩梦。~ + lt4.3
	+ ~!Global("C0SireneMetBG1","GLOBAL",1)~ + ~没事。就是些噩梦。~ + lt4.4
	++ ~我一直在想战事。~ + lt4.5
	++ ~我不太想谈这个。~ + lt4.0
END

IF ~~ lt4.2
SAY ~随你……我只是不愿见你不舒服。~
IF ~~ + lt4.1
END

IF ~~ lt4.3
SAY ~梦境？我……我记得我们一起走剑湾的时候，你提过些奇怪的梦。你说那是由神血的影响引出的。~
IF ~~ + lt4.6
END

IF ~~ lt4.4
SAY ~梦境？什么样的梦，<CHARNAME>？~
	++ ~更像是我的神血引出的幻象。我离开烛堡之后做过许多。~ + lt4.6
	++ ~就是些梦。不值得说。~ + lt4.0
END

IF ~~ lt4.5
SAY ~这场战争在消磨我们所有人，<CHARNAME>。我知道这很难，可这真是你心里全部的事么？~
	+ ~Global("C0SireneMetBG1","GLOBAL",1)~ + ~不。我也开始做梦了。~ + lt4.3
	+ ~!Global("C0SireneMetBG1","GLOBAL",1)~ + ~不。我也开始做梦了。~ + lt4.4
	++ ~是，就这些。~ + lt4.7
	++ ~没工夫弄这个。继续走吧。~ + lt4.0
END

IF ~~ lt4.6
SAY ~这……太叫人不安了。你是说你的本髓仍在影响你的心思，<CHARNAME>？你看见什么？~
	+ ~CheckStatGT(Player1,14,WIS)~ + ~我不敢说这些梦和从前的一样。这一回清楚得多。而且有个不变的东西……那个兜帽的男人……~ + lt4.8
	+ ~CheckStatLT(Player1,15,WIS)~ + ~要把它们拼起来真难。旧日的敌人、一个兜帽的男人、一头疯狂的兽、受不了的痛……~ + lt4.8
	++ ~我不知道。只是一团糊影。~ + lt4.8
	++ ~这是没必要的分心。继续走吧。~ + lt4.0
END

IF ~~ lt4.7
SAY ~我看得出你心里还有事，<CHARNAME>……可你若不愿说，我不逼你。只是……别把自己使过头。~
IF ~~ EXIT
END

IF ~~ lt4.8
SAY ~（塞琳沉默了很久，眼里满是忧虑。）~
= ~这叫我怕，<CHARNAME>。我相信你说的、你拒绝了血里的邪恶……可如今我怕，你越拒它，它就越可能吞了你。~
= ~而我做什么都影响不了什么。恕我。~
	++ ~你能做点什么。让我暖着。~ + lt4.9
	++ ~我不指望你知道该怎么办。这是我该担的。~ + lt4.10
	++ ~别谈这样不吉的话。我们有活要干。~ + lt4.11
END

IF ~~ lt4.9
SAY ~（听了你的话，塞琳拿起斗篷，像是要披上你的肩，最后却放到一边，把你抱进了怀里。）~
IF ~~ + lt4.10
END

IF ~~ lt4.10
SAY ~我不会叫你独自受这份痛，<CHARNAME>……虽说我没那力量拿走你的苦，我仍会给你我能给的安慰。~
IF ~~ + lt4.12
END

IF ~~ lt4.11
SAY ~好吧……随你。~
IF ~~ EXIT
END

IF ~~ lt4.12
SAY ~我们……我们现在该继续走了。这场战争不会等我们想明白，<CHARNAME>。~
IF ~~ EXIT
END
END

// 5.
CHAIN IF ~Global("C02SireneLT","GLOBAL",10)~ THEN C02SIREJ lt5
~等我们打垮了十字军，你打算做什么，<CHARNAME>？~
DO ~IncrementGlobal("C02SireneLT","GLOBAL",1)~
END
	++ ~“等我们打垮了他们”？你倒乐观，<DAYNIGHT>。~ + lt5.1
	++ ~我还没想到那么远。~ + lt5.2
	++ ~哦，我心里有些打算。~ + lt5.2
	++ ~现在不是闲聊的时候。~ + lt5.0

APPEND C02SIREJ

IF ~~ lt5.0
SAY ~是……随你。我暂且不烦你了。~
IF ~~ EXIT
END

IF ~~ lt5.1
SAY ~我为什么不呢，我的朋友？你一路带我们走到这里。我毫不怀疑你会一直成事到最后。~
IF ~~ + lt5.2
END

IF ~~ lt5.2
SAY ~我刚想到，我们实在太陷在这场战争和眼前的争斗里……我一直没能想过这一切到头之后会怎样。~
= ~我想听你怎么想，<CHARNAME>。你想做什么？~
	++ ~我想接着走。总有更多可看的。要我坐在某座老庄园里闲着，我会闷死。~ + lt5.3
	++ ~你懂我。外头还有更多恶，等着被带去领公道。~ + lt5.4
	++ ~也许我会安顿一阵子。但愿等这一切了结，大公爵们肯赏我一座好宅子。~ + lt5.5
	++ ~我说了，我还没想到那么远。眼下的事都忙不过来。~ + lt5.6
	++ ~我不知道……我想我更愿意跟着你，不管你想去哪儿。~ + lt5.7
	++ ~我这会儿不想谈这个。往后我们有的是时间谈。~ + lt5.0
END

IF ~~ lt5.3
SAY ~是……这感觉我熟。人一旦开始在世界里走，就很难停下来了。~
IF ~~ + lt5.8
END

IF ~~ lt5.4
SAY ~是……我但愿你去寻他们的时候我能与你在一处，好叫我们一起动手。~
IF ~~ + lt5.8
END

IF ~~ lt5.5
SAY ~（笑）真的，你该得的，我的朋友。你是他们的英雄，你经历过的已经够过几辈子了。你若要就此留下，我不怪你。~
IF ~~ + lt5.8
END

IF ~~ lt5.6
SAY ~我明白。想这些还太早，尤其胜负还没定。~
IF ~~ + lt5.8
END

IF ~~ lt5.7
SAY ~我……你不该拿这种事开玩笑，<CHARNAME>。别在我们快要分开的时候。~
	++ ~分开？你在说什么？我哪儿也不去。~ + lt5.9
	++ ~你要离开我？为什么？~ + lt5.10
	++ ~这事现在不能谈。改日吧。~ + lt5.0
END

IF ~~ lt5.8
SAY ~不管你最后怎么定，我的朋友，我得承认……我们一起过的这些日子，比我一生中别的什么都更值得。~
	++ ~你在说什么？我没打算离开你。~ + lt5.9
	++ ~你是在道别么？我还以为你打算留在我身边。~ + lt5.10
	++ ~那对我也要紧，塞琳。~ + lt5.11
	++ ~我很高兴。可我们这会儿没工夫谈。~ + lt5.0
END

IF ~~ lt5.9
SAY ~你……你不是？~
	++ ~你为什么意外？我跟你说过，我在乎你。~ + lt5.10
	++ ~不，我没有。你凭什么以为我会？~ + lt5.10
	++ ~不，再说现在也不是谈这个的时候。留到以后。~ + lt5.0
END

IF ~~ lt5.10
SAY ~我知道我说过我会留在你身边，不管怎样都支持你，可是……这之后我有时间想过。~
= ~自从我们到了联军营地，我一直在看身边的人。他们看你带着恐惧与不信，尽管你做了那一切；而他们看见我的时候……~
= ~他们看我的时候，我就想起我到底是什么，像我这样的人站在你身边意味着什么。我的存在只会叫他们对你的看法更暗，<CHARNAME>。你不能有我留在身边。~
	++ ~你以为我他妈在乎他们怎么看我？他们于我不重要，塞琳。你才重要。~ + lt5.12
	++ ~那他们就是不喜欢我们。他们能怎样？你一辈子都在应付那些目光——再多几道又算什么？~ + lt5.12
	++ ~我……我明白你的意思。也许你说得对。趁我们还来得及，就此了结最好。~ + lt5.13
END

IF ~~ lt5.11
SAY ~我很高兴那对你也重要，可是……求你，让我说完。~
IF ~~ + lt5.10
END

IF ~~ lt5.12
SAY ~你不明白，<CHARNAME>。旁人的看法我向来能忍。可你……你该做他们的英雄。没有哪个英雄能因身边有个魔血出身的同伴而得益。~
= ~这场战争还没完，所以我会留在你身边。可之后……之后我对你就没用了。我只会是个累赘。~
	++ ~不。你于我要紧得太多，我不能失去你。留下，我求你。~ + lt5.14
	++ ~那就叫他们都见鬼去。英雄也见鬼去。若留下你能换来这些，我全都可以不要。~ + lt5.14
	++ ~我……我明白了。你说得对。这对我们两个真的最好。~ + lt5.13
	++ ~就这些？这就是你分手的糟糕借口？行，随你便。~ + lt5.13
END

IF ~~ lt5.13
SAY ~我对不起，<CHARNAME>。我真、真对不起……~
IF ~~ DO ~SetGlobal("C02SireneRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ lt5.14
SAY ~……~
= ~我会再想……说实话，我只想余生都留在你身边。可是……这条路还没到头。也许……~
IF ~~ DO ~SetGlobal("C02SireneRomanceActive","GLOBAL",2)~ EXIT
END

END
// 6.
CHAIN IF ~Global("C02SireneLT","GLOBAL",12)~ THEN C02SIREJ lt6
~那么，赫弗南才是十字军里真正的恶……而凯拉追他进了阿弗纳斯。我知道我们如今该做什么，<CHARNAME>，可我还是怕。~
DO ~IncrementGlobal("C02SireneLT","GLOBAL",1)~
END
	++ ~我知道。可我们别无选择，只能追。~ + lt6.1
	++ ~你怕么，塞琳？~ + lt6.2
	++ ~你想留下么？~ + lt6.3
	++ ~那就趁你还能做的时候做吧。我们跳进去。~ + lt6.0

APPEND C02SIREJ

IF ~~ lt6.0
SAY ~是。我们走。~
IF ~~ EXIT
END

IF ~~ lt6.1
SAY ~我知道，<CHARNAME>。只是……~
IF ~~ + lt6.4
END

IF ~~ lt6.2
SAY ~不，不是那个，<CHARNAME>。我不愿叫它恐惧，更该说……~
IF ~~ + lt6.4
END

IF ~~ lt6.3
SAY ~如今我们谁都不能回头，<CHARNAME>。门在我们身后封上了，留在这儿的人只会被地狱的军团淹没。不，我必须做这事，可是……~
IF ~~ + lt6.4
END

IF ~~ lt6.4
SAY ~这话我怎么说呢，<CHARNAME>？像是那传送门，或者对面的什么东西在唤我……在唤我的血。我心里有一部分想此刻就跳进去，后果全不管。~
= ~光是站这么近就有这感觉，我怕到了那边会怎样。我……我不知道我是否……~
++ ~（伸手揽住她。）~ + lt6.5
++ ~我相信你。我们能一起做到。~ + lt6.5
++ ~真可怜。怕就留下吧。也省得你后头拖我。~ + lt6.6
END

IF ~~ lt6.5
SAY ~……谢谢你，<CHARNAME>。~
= ~你说得对。我不是一个人在这里，你也不是。我们会一起面对阿弗纳斯的深渊，我们会成事。~
= ~不再疑虑，<CHARNAME>。不再犹豫。我们给地狱带去公道。~
IF ~~ EXIT
END

IF ~~ lt6.6
SAY ~不。你的话虽残忍，可你说得对。到这一步我不能拖你。带我们去阿弗纳斯，<CHARNAME>，去面对等在那里的不论什么魔鬼。~
IF ~~ DO ~SetGlobal("C02SireneRomanceActive","GLOBAL",3)~ EXIT
END
END

// End LT.

CHAIN IF ~Global("C02SireneFinalLT","GLOBAL",1)~ THEN C02SIREJ lt7
~终于结束了……我还以为我们也许要在地狱深渊里永远受苦……可不管怎样，我们还站着，活着，赢了。~
DO ~SetGlobal("C02SireneFinalLT","GLOBAL",2)~
END
	++ ~不错。我们终于赢了。~ + lt7.1
	++ ~我还是不敢相信我们活着出来了。~ + lt7.1
	++ ~真够瞧的，这我承认。~ + lt7.1

APPEND C02SIREJ

IF ~~ lt7.1
SAY ~跟我到一边来一会儿，<CHARNAME>。我……有话跟你说，只跟你说。~
= ~跳进传送门之前，我做了个决定。若……若我们带着胜果回到这个位面，我就留在你身边，跟着你走到天涯海角，不管怎样。~
++ ~你不会把我丢下？我太高兴了。~ + lt7.2
++ ~我要的不过如此。我们一起走遍这世界。~ + lt7.2
++ ~真的，你不必。我不会逼你留在我麾下。~ + lt7.3
END

IF ~~ lt7.2
SAY ~如今留我在你身边的，已不止是职分，<CHARNAME>。你是个朋友……不，不只朋友，你是亲近我心的人。~
= ~众神，我连词都找不出来，说不清我此刻的感受。真丢人，你在跟前，我的话说得这样磕磕巴巴……~
++ ~先别说了，过来。~ + lt7.4
++ ~（倾身吻她）~ + lt7.4
++ ~别急。慢慢来。~ + lt7.5
++ ~够了。我知道我们一起经过了许多，可是……说实话，这些我不想要了。~ + lt7.7
END

IF ~~ lt7.3
SAY ~你误会我了，<CHARNAME>。我说的已不是侍奉。我……我已经对你生了心。~
IF ~~ + lt7.2
END

IF ~~ lt7.4
SAY ~啊！唔……~
= ~嗯……这才是我要找的那个意思。~
IF ~~ + lt7.6
END

IF ~~ lt7.5
SAY ~是……你说得对，<CHARNAME>。我……我们会有的是时间，整个世界的时间。~
IF ~~ + lt7.6
END

IF ~~ lt7.6
SAY ~我们很快会有属于我们的时间，<CHARNAME>；可现在你该去庆祝……我怕我占着你，反叫你离旁人太久……来吧，<CHARNAME>。前头还有很长的路。~
= ~前头也许还有更多要熬的难处……可若我身边是你，那我想就都值得。~
IF ~~ EXIT
END

IF ~~ lt7.7
SAY ~我……我明白了。那我就珍惜我们剩下的时光……因为一旦分开，我们也许再也见不着了。~
IF ~~ DO ~SetGlobal("C02SireneRomanceActive","GLOBAL",3)~ EXIT
END


// Avernus talk

IF ~Global("C02SireneAvernus","GLOBAL",2)~ avernus
SAY ~伊尔梅特在上……灼人的热、硫磺、苦魂的惨叫……这真是阿弗纳斯。没什么可怀疑的。~
= ~呃……光是待在这儿就是种痛，<CHARNAME>。我的血生于此，觉得像到家，可我的皮肉在那铺天盖地的恶气里发麻……只有真恶的人才会把这种地方叫作家乡！~
++ ~你会没事么？~ DO ~SetGlobal("C02SireneAvernus","GLOBAL",3)~ + avernus1
++ ~快点振作。我需要你最好的状态。~ DO ~SetGlobal("C02SireneAvernus","GLOBAL",3)~ + avernus2
++ ~我们没工夫弄这个。~ DO ~SetGlobal("C02SireneAvernus","GLOBAL",3)~ + avernus0
END

IF ~~ avernus0
SAY ~是……关乎别人的命时，我这点不适算不了什么。前进，<CHARNAME>。~
IF ~~ EXIT
END

IF ~~ avernus1
SAY ~是，我想我会没事的……至少我不会成为累赘。~
IF ~~ + avernus2
END

IF ~~ avernus2
SAY ~想到我竟与这样的地方有哪怕松散的牵连，真是可怕。我一辈子都在与这念头相斗，可如今到了这里，我不能不认，我体内有什么在欢喜，尽管其余一切都否认它……看来血里的牵连实在抹不掉。~
++ ~你不属于这里。你是塞琳，伊尔梅特的斗士，别无其他。~ + avernus3
++ ~这话不对。就跟我拒绝做巴尔之子一样，你也能这么做。~ + avernus3
++ ~你越早认下它，日子就越好过。~ + avernus4
++ ~够了。我们有活要干。~ + avernus0
END

IF ~~ avernus3
SAY ~是……你说得对，<CHARNAME>。我不能向疑虑低头。我不会。~
IF ~~ + avernus5
END

IF ~~ avernus4
SAY ~我不会认下这个。我绝不让我血里的恶成为我是谁，不管要跟它斗多少回。~
IF ~~ + avernus5
END

IF ~~ avernus5
SAY ~走，<CHARNAME>。我们把能清的恶都从这坑里清掉，把这些魔鬼送进坟里。~
IF ~~ EXIT
END
END
// interjections

// Akanna

I_C_T BDAKANNA 0 C0SireneBDAKANNA0
== C02SIREJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~留心戒备，<CHARNAME>。这明显不只是塞瑞克信徒惯有的那种疯……~
END

// Alyth

INTERJECT BDALYTH 30 C0SireneBDALYTH30
== C02SIREJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~女士，就在我们说话这会儿，街上还有人挨饿；还有人想诈走他们仅有的一点东西。你不至于对这些人视而不见吧。~
EXTERN BDALYTH 33

// Ashatiel

I_C_T BDASHATI 5 C0SireneBDASHATI5
== C02SIREJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~这样能用最少的血把这仗快快了结，<CHARNAME>。接下她的挑战。~
END

// Aun

I_C_T BDAUN 41 C0SireneBDAUN41
== C02SIREJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~不，先生，你绝不能这么做。你受了那一切苦，凯拉做了那一切，你就把这一切苦都白费了？~
END

// Barghest

I_C_T BDBARGHE 28 C0SireneBDBARGHE28
== C02SIREJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~仔细想清楚，<CHARNAME>。决断终究在你手里……不过这里也许不必流一滴血。~
END

// Bence

I_C_T BDBENCE 41 C0SireneBDBENCE41
== C02SIREJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~众神，她怎么会愚蠢到这个地步……~
END

// Caelar

I_C_T BDCAELAR 6 C0SireneBDCAELAR6
== C02SIREJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~我信她，<CHARNAME>。她虽不是圣武士，到底还是个有荣誉的女人。也许听听她要说什么，于我们最有利。~
END

I_C_T BDCAELAR 87 C0SireneBDCAELAR87
== C02SIREJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~那这真是唯一的法子了……也许这是她唯一可能得赎的机会。到头来我只能怜她。我们成全她的牺牲吧，<CHARNAME>。~
END

// Coran

I_C_T2 BDCORAN 12 C0SireneBDCORAN12
== C02SIREJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) Global("C0SireneMetBG1","GLOBAL",1)~ THEN ~*叹气* 说真的，科兰，我不知自己为什么还指望会有别样。 （笑）去吧，你这混账东西。~
== BDCORAN ~谢谢你，仁慈的塞琳女士。我能说么，这光底下你的眼睛格外动人——呃，算了。不是时候。告辞，各位。~
END

// Corinth

EXTEND_BOTTOM BDCORINT 5
+ ~IsValidForPartyDialogue("c0sirene")~ + ~你是圣武士，塞琳。也许这倔蠢货肯听你的。~ EXTERN C02SIREJ bdcorint
END

CHAIN C02SIREJ bdcorint
~也许……也许他会。不过我最好还是拉起兜帽，以防万一……~
== BDCORINT ~我什么都没做错。你得信我。我什么都没做错。~
== C02SIREJ ~听我说，科林斯。我知道你守着的秘密于你一定要紧，可谎话帮不了任何人，尤其帮不了你自己。你若信我们，我们就帮你过这一关。我以荣誉起誓。~
EXTERN BDCORINT 8

// Dauston

I_C_T BDFFXXII 1 C0SireneBDFFXXII
== C02SIREJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~这一位是紫菀骑士团的人？晨主的一个仆人落到这般境地，真可怜。~
END

// Deepvein

I_C_T2 BDDEEP 12 C0SireneBDDEEP12
== C02SIREJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) !Global("BD_DOD_KILL_CLERICS","GLOBAL",1)~ THEN ~你在做什么，<CHARNAME>？！我不能容许这个！~
DO ~SetGlobal("bd_joined","LOCALS",0)
ChangeAIScript("",DEFAULT)
LeaveParty()
Enemy()~
END

I_C_T2 BDDEEP 68 C0SireneBDDEEP68
== C02SIREJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~你竟然情愿去执行那巫妖的吩咐？我绝不与这等恶事同流！~
DO ~SetGlobal("bd_joined","LOCALS",0)
ChangeAIScript("",DEFAULT)
LeaveParty()
Enemy()~
END

I_C_T2 BDDEEP 12 C0SireneBDDEEP12a
== C02SIREJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) Global("BD_DOD_KILL_CLERICS","GLOBAL",1)~ THEN ~你竟然情愿去执行那巫妖的吩咐？我绝不与这等恶事同流！~
DO ~SetGlobal("bd_joined","LOCALS",0)
ChangeAIScript("",DEFAULT)
LeaveParty()
Enemy()~
END

// Dorn

I_C_T BDDORN 29 C0SireneBDDORN29
== C02SIREJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~你竟认识这个……恶徒？你看不出他是什么东西么？~
== BDDORN ~我是什么，女人，是一个可用的盟友，也是个危险的敌人。我劝你管住舌头。~
END

I_C_T2 BDDORN 35 C0SireneBDDORN35
== C02SIREJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~我说不上哪个更糟：让这魔鬼入伙，还是把他留在我们的盟友当中。我怕他的存在只会给我们招麻烦。~
END

I_C_T2 BDDORN 40 C0SireneBDDORN31
== C02SIREJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~你竟容许这魔鬼在我们队里？这事我们回头再说，<CHARNAME>。~
END

// Fritz

I_C_T2 BDFRITZ 10 C0SireneBDFRITZ10
== C02SIREJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~我希望你完全明白你做了什么，<CHARNAME>。我明白你为什么这么做，可以错不能抵错。~
END

// Garachen

INTERJECT BDGARACH 5 C0SireneBDGARACH5
== C02SIREJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~若真是那样，你根本就不会给他们开门。你做的这事不公道！~
EXTERN BDGARACH 8

I_C_T BDGARACH 9 C0SireneBDGARACH9
== C02SIREJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~*叹气* 我想别无选择了，<CHARNAME>。毕竟苛求太多也不近情理。我们就照那人说的，去精灵之歌吧。~
END

// Halatathlaer

I_C_T BDHALATA 5 C0SireneBDHALATA5
== C02SIREJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~这魂有些……古怪，<CHARNAME>。它说的是这些话，用意却不是这个。我不认为它想害我们……只要我们不惹它。~
== BDHALATA ~这条路尽头只有死。我不能多说。~
END

// Helvdar

INTERJECT BDHELVDA 30 C02SireneHELVDA30
== C02SIREJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~<CHARNAME>，住手！还没有证据说这一位就是叛徒。你至少该听他把话说完。~
END
++ ~好。告诉我，矮人。那场牌局都有谁在？~ EXTERN BDHELVDA 25
++ ~我要的证据都齐了。去死吧，叛徒！~ EXTERN C02SIREJ helvdar

CHAIN C02SIREJ helvdar
~我不会胡乱屠戮我们的盟友，<CHARNAME>。你若非满足你那嗜血之欲，可以不必我帮忙。~
DO ~SetGlobal("bd_npc_camp","locals",1)
SetGlobal("bd_joined","LOCALS",0)
SetGlobal("C0SireneAngered","GLOBAL",1)
LeaveParty()
ChangeAIScript("bdparty",DEFAULT)~
== BDHELVDA ~救命！~
DO ~SetGlobal("SDD303_BOTTLE","GLOBAL",2)
SetGlobal("SDD303_heldvar_muerto","bd3000",1)
ReputationInc(-1)
ChangeSpecifics(Myself,THIEF)
Enemy()~ EXIT

// Hephernaan

I_C_T2 BDHEPHER 23 C0SireneBDHEPHER23
== C02SIREJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~我们以伊尔梅特之名站在你们对面，魔鬼。你们要为这欺瞒付出代价！~
END

// Hyreth

INTERJECT BDHYRETH 2 C02SireneHYRETH2
== C02SIREJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~哭泣之神……伊尔梅特大人的诸多名号之一。这名士兵是我神的信徒，<CHARNAME>。~
DO ~SetGlobal("BD_WOUNDED_ZEALOT_DOSIA","BD3000",1)~ EXTERN BDHYRETH 3

EXTEND_TOP BDHYRETH 4 #3
+ ~IsValidForPartyDialogue("c0sirene")~ + ~塞琳，这事关乎你的信仰。你该知道怎么做。~ EXTERN C02SIREJ bdhyreth4
END

CHAIN C02SIREJ bdhyreth4
~是，我想我知道……听我说，兄弟。我主教我们，苦该为更大的因由而担。你留着你的痛并不算错，可身为同信的人，我不能旁观你受苦。求你，兄弟，把你的痛给我，好叫我们有你的力气去面对敌人。~
== BDHYRETH ~我……我明白了，圣者。把我的痛交给大人的斗士，是我的荣幸。我听您的。~
DO ~SetGlobal("BD_WOUNDED_ZEALOT","BD3000",2)
SetGlobal("C02SireneHealsHyreth","GLOBAL",1)
ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("bdsdd304",TRUE)~ EXIT

// Illaruel

I_C_T2 BDILLARU 2 C0SireneILLARUEL
== C02SIREJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~你的末日到了，欲魔，天界的嘲弄者！~
== BDILLARU ~这个位面的血回来了？！你的皮会做成一件好战利品！~
END

I_C_T2 BDILLARU 3 C0SireneILLARUEL
== C02SIREJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~你的末日到了，欲魔，天界的嘲弄者！~
== BDILLARU ~这个位面的血回来了？！你的皮会做成一件好战利品！~
END

I_C_T2 BDILLARU 4 C0SireneILLARUEL
== C02SIREJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~你的末日到了，欲魔，天界的嘲弄者！~
== BDILLARU ~这个位面的血回来了？！你的皮会做成一件好战利品！~
END

// Imoen

EXTEND_BOTTOM BDIMOEN 104
+ ~Global("C0Sirene_party_epilogue","global",1)~ + ~我知道她必有她的缘由，可我原盼着能再见塞琳一面。~ EXTERN BDIMOEN bdimoen1
END

EXTEND_BOTTOM BDIMOEN 109
+ ~Global("C0Sirene_party_epilogue","global",1)~ + ~我知道她必有她的缘由，可我原盼着能再见塞琳一面。~ EXTERN BDIMOEN bdimoen1
END

CHAIN BDIMOEN bdimoen1
~其实我见过她。还跟她说了几句话，虽说她拼命想不叫人注意。也不能怪她。你的名声被泼了泥，她的血也赢不来人家什么好脸色。她为帮不了你，心里真撕得难受，<CHARNAME>。我一看就……知道。~
EXTERN BDIMOEN 119

// Isabella

I_C_T BDISABEL 5 C0SireneBDISABEL5
== C02SIREJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~一个吸血鬼？若我们有本事毁掉这等畜生，就不该旁观，<CHARNAME>。~
END

I_C_T2 BDISABEL 40 C0SireneBDISABEL40
== C02SIREJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~我不会为一个不洁的东西去流无辜者的血，<CHARNAME>。我怕这回得站在你对面了！~
DO ~SetGlobal("bd_joined","LOCALS",0)
ChangeAIScript("",DEFAULT)
LeaveParty()
Enemy()~
END

// Korlasz

I_C_T2 BDKORLAS 27 C0SireneBDKORLAS27
== C02SIREJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) Global("C0SireneMetBG1","GLOBAL",1)~ THEN ~你该趁还有机会的时候去求赎罪，科拉兹。如今你叫我们别无选择！~
END

// Lluis

EXTEND_BOTTOM BDLLUIS 5
+ ~IsValidForPartyDialogue("C0Sirene")~ + ~嗯……我有个主意。也许你可以去吓吓他们，塞琳？~ EXTERN C02SIREJ bdlluis
END

CHAIN C02SIREJ bdlluis
~你要我去威慑他们？呃……从没人要求我做过这种事。~
END
++ ~要么这样，要么我们就在这儿开一场血战。~ EXTERN C02SIREJ bdlluis1
++ ~你只需露出犄角，摆个凶脸。他们就跑了。~ EXTERN C02SIREJ bdlluis1
++ ~哦，来吧。会好玩的。~ EXTERN C02SIREJ bdlluis1

CHAIN C02SIREJ bdlluis1
~*叹气* 我想你说得有道理，<CHARNAME>。我就尽力，只此一回。~
= ~混账东西。我劝你们能跑就跑。你们对我们毫无胜算——而我这一族*可不*以仁慈出名。~
EXTERN BDASERY 1

// Madele

INTERJECT BDMADELE 1 C0SireneBDMADELE1
== C02SIREJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~我明白了……那这女人必是巴尔一脉幸存的女祭司，被塞瑞克信徒囚着。她定是许多年前就被关起来了。~
EXTERN BDMADELE 2

// Perren

I_C_T BDPERREN 1 C0SireneBDPERREN1
== C02SIREJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~这是什么？你拿这情形去讹这些走投无路的人？~
END

// Raeanndra

I_C_T BDRAEANN 4 C0SireneBDRAEANN4
== BDRAEANN IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~不过我想你对我们这一群早已不陌生，毕竟你身边就带了一个。那么，你是从哪个位面来的？~
== C02SIREJ ~我怕要叫你失望了，拉伊安德拉；我虽有魔血，可我是生在主位面、也活在主位面的。~
== BDRAEANN ~当真？*抽鼻* 是，你身上有那股味儿，没错。在我们这一群的事上，我这鼻子灵。不过，见着也好。~
END

// Sacrifice

I_C_T BDSAC01 0 C0SireneBDSAC010
== C02SIREJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~伊尔梅特在上，这是什么疯魔？！~
END

I_C_T BDSAC01 1 C0SireneBDSAC011
== C02SIREJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) !IsValidForPartyDialogue("corwin")~ THEN ~多残忍……我说不准这是什么，可不知怎么……他们在把人性从那些人身上撕走，只留下一团恶气！我们得拦下这个！~
END

I_C_T BDCORWIJ 312 C0SireneBDCORWIJ312
== C02SIREJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~多残忍……我说不准这是什么，可不知怎么……他们在把人性从那些人身上撕走，只留下一团恶气。~
END

// Taield

EXTEND_TOP BDTAIELD 1 #3
+ ~IsValidForPartyDialogue("c0sirene")~ + ~你看能不能说点什么，塞琳？~ DO ~IncrementGlobal("BD_FIGHTERS_SKILL","BD3000",2) SetGlobal("bd_sdd301_taield_skill","global",2)~ EXTERN C02SIREJ bdtaield1
END

CHAIN C02SIREJ bdtaield1
~我……我不敢妄自教人打仗，可被排拒在外的滋味，我太熟了。~
= ~我生来血就叫我与周围的人不同，许多人怕我是什么。不管我为旁人做了什么，肯在我摘下兜帽后接纳我的，寥寥无几。~
= ~我早就认了，我也许永远不为这世界所容。可即便如此，要做一个善的斗士，是我自己的决断。不是为别人的认可，而是因为我信我所争的东西。你也能在心里找到同样的东西。~
EXTERN BDTAIELD 6

// Teleria

I_C_T2 BDTELERI 31 C0SireneBDTELERI31
== C02SIREJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~你不会当真在考虑这个，<CHARNAME>。你知道这女人想干什么。要知道我绝不容这等卑劣的行径。~
END

// Waizahb

INTERJECT BDWAIZAH 6 waizahb1
== C02SIREJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~许多人的命全指着那剂药，<CHARNAME>。你就这样轻易卖给讹诈的人？~
END
++ ~你说得对。我不知我刚才在想什么。~ DO ~SetGlobal("waizahb1","GLOBAL",0)~ EXTERN BDWAIZAH 7
++ ~他们横竖都会拿到。这样，我还能捞一份。~ EXTERN C02SIREJ waizahb2
++ ~看着吧。~ EXTERN C02SIREJ waizahb2

CHAIN C02SIREJ waizahb2
~你为了一己之利就罔顾别人的命，这叫我恶心。我再不干了。~
DO ~SetGlobal("bd_npc_camp","locals",1)
SetGlobal("bd_joined","LOCALS",0)
SetGlobal("C0SireneAngered","GLOBAL",1)
LeaveParty()
ChangeAIScript("bdparty",DEFAULT)~ EXTERN BDWAIZAH 8

APPEND C02SIREJ

IF ~Global("C02SireneTeleria","BD1000",1)~ SireneTeleria
SAY ~我警告过你别这么做，<CHARNAME>。我原没想到你真能做出这等残忍事，可你越了界。我会回营地去，尽力把这些人救回来；可别以为你还能靠我的刀。~
IF ~~ DO ~ReputationInc(-1)
SetGlobal("C02SireneTeleria","BD1000",2)
SetGlobal("bd_npc_camp","locals",1)
SetGlobal("bd_joined","LOCALS",0)
SetGlobal("C0SireneAngered","GLOBAL",1)
LeaveParty()
ChangeAIScript("bdparty",DEFAULT)~ EXIT
END
END

// Bridgefort Betrayal

APPEND C02SIREJ

IF ~Global("C02SireneBridgefort","GLOBAL",1)~ bridgefort
SAY ~你知道你做了什么么，<CHARNAME>？几乎可以肯定，十字军会逼桥堡的人入他们的伙，而你叫我们盟友的辛劳与牺牲都白费了！你为什么要这么做？~
+ ~CheckStatGT(Player1,15,CHR)~ + ~是我判断失当。希望你能恕我。~ + bridgefort1
+ ~CheckStatLT(Player1,16,CHR)~ + ~是我判断失当。希望你能恕我。~ + bridgefort2
+ ~CheckStatGT(Player1,15,WIS)~ + ~我要尽可能多拿每一个优势去面对光辉女士。那是了结这场十字军的唯一法子，若必须有牺牲，那就牺牲吧。~ + bridgefort1
+ ~CheckStatLT(Player1,16,WIS)~ + ~我要尽可能多拿每一个优势去面对光辉女士。那是了结这场十字军的唯一法子，若必须有牺牲，那就牺牲吧。~ + bridgefort2
+ ~CheckStatGT(Player1,15,INT)~ + ~这是战争。丢了桥堡固然可痛，可这样我们更容易达成目的。~ + bridgefort1
+ ~CheckStatLT(Player1,16,INT)~ + ~这是战争。丢了桥堡固然可痛，可这样我们更容易达成目的。~ + bridgefort2
END

IF ~~ bridgefort1
SAY ~我愿相信你不是出于真心恶意才这么做，<CHARNAME>；可我仍不能承认这是最好的结局。~
IF ~~ DO ~SetGlobal("C02SireneBridgefort","GLOBAL",2)~ EXIT
END

IF ~~ bridgefort2
SAY ~不。我不信这个。你背弃了那些依靠你的人的信任，也因此背弃了我的信任。我不再跟着你了。~
IF ~~ DO ~SetGlobal("C02SireneBridgefort","GLOBAL",2)
SetGlobal("bd_npc_camp","locals",1)
SetGlobal("bd_joined","LOCALS",0)
SetGlobal("C0SireneAngered","GLOBAL",1)
LeaveParty()
ChangeAIScript("bdparty",DEFAULT)~ EXIT
END
END

// Uncommon Cold

I_C_T BDDOSIA 3 C0SireneBDDOSIA3
== C02SIREJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~是，可这也是必要的……我很高兴我们中有别的同信人，痛之担承者。~
== BDDOSIA ~是，姐妹。遇着教会里的另一个，真叫人得安慰。但愿是在更好的情形下。~
END

I_C_T BDDOSIA 18 C0SireneBDDOSIA18
== C02SIREJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~我同意她，<CHARNAME>……我们还没考虑过别的法子。求你，别走到这一步。~
END

I_C_T2 BDDOSIA 19 C0SireneBDDOSIA19
== C02SIREJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~我从没想到你会赞成这样一桩残暴的决定，<CHARNAME>。如今我知道了，我就再不能真心跟着你。~
DO ~SetGlobal("bd_npc_camp","locals",1)
SetGlobal("bd_joined","LOCALS",0)
SetGlobal("C0SireneAngered","GLOBAL",1)
LeaveParty()
ChangeAIScript("bdparty",DEFAULT)~ END

I_C_T2 BDDOSIA 21 C0SireneBDDOSIA21
== C02SIREJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~我从没想到你会赞成这样一桩残暴的决定，<CHARNAME>。如今我知道了，我就再不能真心跟着你。~
DO ~SetGlobal("bd_npc_camp","locals",1)
SetGlobal("bd_joined","LOCALS",0)
SetGlobal("C0SireneAngered","GLOBAL",1)
LeaveParty()
ChangeAIScript("bdparty",DEFAULT)~ END

I_C_T BDDOSIA 47 C0SireneBDDOSIA47
== C02SIREJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~亡者也在梦里缠着我……我原以为旁人不会这样，可看来这份担子是我们共有的……~
== BDDOSIA ~是……等你见过言语说不出的残忍之后……~
END

INTERJECT BDDOSIA 49 C02SireneTest
== C02SIREJ IF ~Global("C02SireneTest","GLOBAL",0) IfValidForPartyDialog("c0sirene")~ THEN ~等等，姐妹……我还没遇见过经验与你相当的同胞。我有时觉得，我们伊尔梅特信徒不得不背的担子太沉了……你若允许，我想向你学些时日。~
== BDDOSIA ~我……不反对。可我警告你，我是个严师，我会大大试你对信仰的诚心。你当真愿意？~
== C02SIREJ ~是，我愿意。~
== BDDOSIA ~那就跟我来，侍从。恕我们，<CHARNAME>。这不会太久。~
END
IF ~ReputationLT(Player1,10)~ DO ~SetGlobal("C02SireneTest","GLOBAL",1) FadeFromColor([10.0],0) AddXPObject("c0sirene",1000)~ EXTERN BDDOSIA C02SireneTestEnd
IF ~ReputationGT(Player1,9) ReputationLT(Player1,18)~ DO ~SetGlobal("C02SireneTest","GLOBAL",1) FadeFromColor([50.0],0) AddXPObject("c0sirene",5000)~ EXTERN BDDOSIA C02SireneTestEnd
IF ~ReputationGT(Player1,17)~ DO ~SetGlobal("C02SireneTest","GLOBAL",1) FadeFromColor([10.0],0) AddXPObject("c0sirene",10000)~ EXTERN BDDOSIA C02SireneTestEnd

CHAIN BDDOSIA C02SireneTestEnd
~……如此，我的课完了。记住它们，愿它们往后于你有用。祝你好运，姐妹。~
== C02SIREJ ~谢谢你，多西娅姐妹。~
DO ~PlaySound("GAM_11") ChangeStat(Myself,WIS,1,ADD)~
== BDDOSIA ~不必多礼，塞琳姐妹。如今我该回去尽职了。~
END
IF ~~ DO ~SetGlobal("bd_dosia_story","global",1)
AddJournalEntry(61451,QUEST)
AddJournalEntry(66970,QUEST)~ EXIT
IF ~GlobalLT("bd_sdd326_heard_stories","bd3000",2)~ DO ~SetGlobal("bd_dosia_story","global",1)
IncrementGlobal("bd_sdd326_heard_stories","bd3000",1)
AddJournalEntry(61451,QUEST)~ EXIT

EXTEND_BOTTOM BDXERRA 1
+ ~IsValidForPartyDialogue("c0sirene")~ + ~静一静，士兵。也许塞琳能替你做什么。~ EXTERN C02SIREJ bdxerra1
END

CHAIN C02SIREJ bdxerra1
~他的皮肤烧得异常……若不把他这烧退了，我怕他活不长。也许……是，我想我知道一剂膏，能暂且稳住他。~ DO ~SetGlobal("bd_patient_xerra","global",2) IncrementGlobal("bd_sdd302_death_count","global",-1)~ 
EXTERN BDXERRA 2

EXTEND_BOTTOM BDZIDRAN 1
+ ~IsValidForPartyDialogue("c0sirene")~ + ~别动。塞琳会照料你。~ DO ~SetGlobal("bd_patient_zidrand","global",2) IncrementGlobal("bd_sdd302_death_count","global",-1)~ EXTERN C02SIREJ bdzidran1
END

CHAIN C02SIREJ bdzidran1
~她的状况比旁人糟得多……必是因为她待的位置。我们不能让她再靠近别的病人。把她与其余病患隔开，免得她病势加重。~
EXTERN BDZIDRAN 2

EXTEND_BOTTOM BDYESTIM 1
+ ~IsValidForPartyDialogue("c0sirene")~ + ~你怎么想，塞琳？~ DO ~SetGlobal("bd_patient_yestimell","global",2) IncrementGlobal("bd_sdd302_death_count","global",-1)~ EXTERN C02SIREJ bdyestim1
END

CHAIN C02SIREJ bdyestim1
~他这么耗力气，只会把病情弄得更糟。这不好……我们得赶紧找个法子叫他静下来，趁——伊尔梅特在上，不，太晚了。我们只能——！~
EXTERN BDYESTIM 5

EXTEND_TOP BDDOSIA 11 #3
+ ~IsValidForPartyDialogue("c0sirene")~ + ~有什么想法么，塞琳？~ EXTERN C02SIREJ bddosia11
END

CHAIN C02SIREJ bddosia11
~我从前治过类似的病，至于我们能轻易弄到的药……黑刺李！对，附近林子里必有黑刺李树。若它的树皮不管用，那就没什么管用了。~
DO ~SetGlobal("bd_sdd302_uncommon_cold","global",2)
SetGlobal("bd_sdd302_blackthorn","global",1)
AddJournalEntry(61438,QUEST)~ EXTERN BDDOSIA 14

I_C_T BDVOGHIJ 198 C0SireneBDVOGHIJ198
== C02SIREJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~*叹气* 沃吉尔恩，求你……先闭上你的嘴一会儿。这话我也想听。~
END

// Thrix the Profane

EXTEND_BOTTOM BDTHRIX 21
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 22 #3
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 23 #5
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 24 #8
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 26
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_TOP BDTHRIX 27 #3
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 28 #5
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_TOP BDTHRIX 29 #8
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 30
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 31 #3
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 32 #5
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 33 #8
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 34
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 35 #3
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 36 #5
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 37 #8
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 38
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 39 #3
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 40 #5
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 41 #8
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 42
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 43 #3
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 44 #5
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 45 #8
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 46
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 47 #3
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 48 #5
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 49 #8
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 50
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 51 #3
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 52 #5
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 53 #8
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 54
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 55 #3
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 56 #5
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 57 #8
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 58
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 59 #3
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 60 #5
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 61 #8
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 62
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 63 #3
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 64 #5
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 65 #8
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 66
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 67 #3
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 68 #5
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 69 #8
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 70
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 71 #3
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 72 #5
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 73 #8
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 74
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 75 #3
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 76 #5
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 77 #8
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 78
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 79 #3
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 80 #5
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 81 #8
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 82
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 83 #3
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 84 #5
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 85 #8
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 90
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 91 #3
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 92 #5
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 93 #8
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

CHAIN BDTHRIX ThrixWager1
~啊，还有比这位血属本位面的人更好的选择么？这个自命圣武士的提夫林，她这存在本身就是一桩美味的讽刺。你若答不出我的谜，特里克索就收她的魂。~
END
++ ~我想单凭她的血，塞琳就是个值得的赌注。说吧，魔鬼，出你的谜。~ DO ~SetGlobal("C02SireneSacrifice","bd4500",1) SetGlobal("bd_thrix_sacrifice_companion","global",1)~ EXTERN BDTHRIX 116
+ ~OR(2) Global("C02SireneRomanceActive","GLOBAL",1) Global("C02SireneRomanceActive","GLOBAL",2)~ + ~我绝不会把塞琳交给你任你摆布。她于我要紧得太多。~ DO ~SetGlobal("C02_Saved_Sirene","bd4500",1) IncrementGlobal("BD_NumInParty","bd4500",1)~ EXTERN C02SIREJ ThrixWager2
+ ~!Global("C02SireneRomanceActive","GLOBAL",1) !Global("C02SireneRomanceActive","GLOBAL",2)~ + ~我绝不会把塞琳交给你任你摆布。这么有用的盟友，不能丢。~ DO ~SetGlobal("C02_Saved_Sirene","bd4500",1) IncrementGlobal("BD_NumInParty","bd4500",1)~ EXTERN C02SIREJ ThrixWager2
++ ~她也许与这本位面共血，可她不是你的亲族，魔鬼。你要玩，赌的是我的魂。~ EXTERN BDTHRIX 113
++ ~我不玩你这歪门邪道的把戏，魔鬼。让开，不然就付代价。~ EXTERN BDTHRIX 12

CHAIN C02SIREJ ThrixWager2
~若为朋友，我甘愿交出我的魂；可我宁愿毁了这恶心的魔鬼，也不玩它那残忍的把戏。别听它那些毒话，我的朋友。~
EXTERN BDTHRIX ThrixWager3

CHAIN BDTHRIX ThrixWager3
~真可惜。我特别看中了这一位。腐化她会是桩极有趣的乐事。~
END
IF ~RandomNum(4,1)~ EXTERN BDTHRIX 78
IF ~RandomNum(4,2)~ EXTERN BDTHRIX 79
IF ~RandomNum(4,3)~ EXTERN BDTHRIX 80
IF ~RandomNum(4,4)~ EXTERN BDTHRIX 81

EXTEND_BOTTOM BDTHRIX 118
IF ~Global("C02SireneSacrifice","bd4500",1)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager4
END

EXTEND_BOTTOM BDTHRIX 119
IF ~Global("C02SireneSacrifice","bd4500",1)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager4
END

EXTEND_BOTTOM BDTHRIX 120
IF ~Global("C02SireneSacrifice","bd4500",1)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager4
END

EXTEND_BOTTOM BDTHRIX 121
IF ~Global("C02SireneSacrifice","bd4500",1)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager4
END

EXTEND_BOTTOM BDTHRIX 122
IF ~Global("C02SireneSacrifice","bd4500",1)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager4
END

CHAIN BDTHRIX ThrixWager4
~是——虽则这丫头身上那地狱的血很淡，可到底有力量在。她会成为一个极能干的黑卫，也能抬我在本位面的位分。~
END
++ ~我……对不起，塞琳。我犯了个大错。~ DO ~SetGlobal("C02_thrix_mark_Sirene","global",1)~ EXTERN C02SIREJ ThrixWager5
++ ~够了。你要她的魂，就得动手来夺！~ EXTERN BDTHRIX 10

CHAIN C02SIREJ ThrixWager5
~你若要我跪，魔鬼，我就用刀来答你！~
DO ~SetGlobal("bd_thrix_plot","global",11)~ EXTERN BDTHRIX 140

// Thrix reaction - non-romanced

APPEND C02SIREJ

IF ~Global("C02SireneSacrifice","bd4500",1)
!Global("C02SireneRomanceActive","GLOBAL",1)
!Global("C02SireneRomanceActive","GLOBAL",2)~ ThrixTalk0
SAY ~什么疯魔附了你，<CHARNAME>？你真以为跟魔鬼打交道会没有后果？~
+ ~!Global("C02_thrix_mark_Sirene","global",1)~ + ~我没想那么远。恕我。~ DO ~SetGlobal("C02SireneSacrifice","bd4500",2)~ + ThrixTalk2
+ ~Global("C02_thrix_mark_Sirene","global",1)~ + ~我没想那么远。恕我。~ DO ~SetGlobal("C02SireneSacrifice","bd4500",2)~ + ThrixTalk1
+ ~!Global("C02_thrix_mark_Sirene","global",1)~ + ~你不是更该在意我刚拿你的魂去赌了这件事么？~ DO ~SetGlobal("C02SireneSacrifice","bd4500",2)~ + ThrixTalk3
+ ~Global("C02_thrix_mark_Sirene","global",1)~ + ~你不是更该在意我刚拿你的魂去赌了这件事么？~ DO ~SetGlobal("C02SireneSacrifice","bd4500",2)~ + ThrixTalk1
+ ~!Global("C02_thrix_mark_Sirene","global",1)~ + ~哦，我知道会有后果。所以我押的是你，不是我。~ DO ~SetGlobal("C02SireneSacrifice","bd4500",2)~ + ThrixTalk4
+ ~Global("C02_thrix_mark_Sirene","global",1)~ + ~哦，我知道会有后果。所以我押的是你，不是我。~ DO ~SetGlobal("C02SireneSacrifice","bd4500",2)~ + ThrixTalk1
END

IF ~~ ThrixTalk1
SAY ~我怕从今往后，只要那魔鬼还追着我的魂，我就睡不安稳。他也许能取我的命，可他永远腐不了我的信。~
= ~他来的时候，我会斗到最后一口气。可我不会要你的“帮忙”。~
IF ~~ EXIT
END

IF ~~ ThrixTalk2
SAY ~光凭言语赢不来我的宽恕，<CHARNAME>。我只能指望你别再玩这样残忍的把戏，对我或旁人。~
IF ~~ EXIT
END

IF ~~ ThrixTalk3
SAY ~若你背弃我的友谊与信任这事不叫我更揪心的话，我本会如此。也许当时就丢了魂，于我还更仁慈些。~
IF ~~ EXIT
END

IF ~~ ThrixTalk4
SAY ~我必是瞎了眼，才没看出你的真面目。等这事了结，祈祷我们的路别再相交——因为我剩的仁慈，只有我这刀锋。~
IF ~~ EXIT
END

// Thrix reaction - romanced

IF ~Global("C02SireneSacrifice","bd4500",1)
OR(2)
Global("C02SireneRomanceActive","GLOBAL",1)
Global("C02SireneRomanceActive","GLOBAL",2)~ ThrixTalkRom0
SAY ~我……我还以为我在你心里，比一枚给魔鬼赌局用的筹码值更多，<CHARNAME>。看来我错了。~
+ ~CheckStatGT(Player1,15,CHR) !Global("C02_thrix_mark_Sirene","global",1)~ + ~你不会真以为我那时是想拿你的魂去赌，塞琳。~ DO ~SetGlobal("C02SireneSacrifice","bd4500",2)~ + ThrixTalkRom2
+ ~CheckStatLT(Player1,16,CHR) !Global("C02_thrix_mark_Sirene","global",1)~ + ~你不会真以为我那时是想拿你的魂去赌，塞琳。~ DO ~SetGlobal("C02SireneSacrifice","bd4500",2)~ + ThrixTalkRom1
+ ~Global("C02_thrix_mark_Sirene","global",1)~ + ~你不会真以为我那时是想拿你的魂去赌，塞琳。~ DO ~SetGlobal("C02SireneSacrifice","bd4500",2)~ + ThrixTalkRom1
+ ~CheckStatGT(Player1,15,CHR) !Global("C02_thrix_mark_Sirene","global",1)~ + ~也许你本值得更多；可必须有人牺牲。还是说，这已不在你的信仰里了？~ DO ~SetGlobal("C02SireneSacrifice","bd4500",2)~ + ThrixTalkRom2
+ ~CheckStatLT(Player1,16,CHR) !Global("C02_thrix_mark_Sirene","global",1)~ + ~也许你本值得更多；可必须有人牺牲。还是说，这已不在你的信仰里了？~ DO ~SetGlobal("C02SireneSacrifice","bd4500",2)~ + ThrixTalkRom1
+ ~Global("C02_thrix_mark_Sirene","global",1)~ + ~也许你本值得更多；可必须有人牺牲。还是说，这已不在你的信仰里了？~ DO ~SetGlobal("C02SireneSacrifice","bd4500",2)~ + ThrixTalkRom1
+ ~!Global("C02_thrix_mark_Sirene","global",1)~ + ~是，你本值得更多。你若有意见，那也没办法。~ DO ~SetGlobal("C02SireneSacrifice","bd4500",2)~ + ThrixTalkRom1
+ ~Global("C02_thrix_mark_Sirene","global",1)~ + ~是，你本值得更多。你若有意见，那也没办法。~ DO ~SetGlobal("C02SireneSacrifice","bd4500",2)~ + ThrixTalkRom1
END

IF ~~ ThrixTalkRom1
SAY ~伊尔梅特的仁慈在上，我但愿我死了。也许这就是我这样蠢的人该得的。~
= ~别跟我说话，<CHARNAME>。连看都*不许*看我。~
IF ~~ DO ~SetGlobal("C02SireneRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ ThrixTalkRom2
SAY ~我不该恕你，<CHARNAME>。一切都告诉我，按理我该为你做的事憎你。可我是个自私的蠢人，被自己的情蒙了眼，不肯听。~
= ~我若能轻易忘掉，那才是仁慈，<CHARNAME>。可我不会活到你下一回背弃我的那天。~
IF ~~ EXIT
END

// Tender of the Dead

IF ~Global("C02SireneVelsharoon","GLOBAL",1)~ velsharoon
SAY ~这里有很不对的东西，<CHARNAME>。~
++ ~这不明摆着。~ + velsharoon1
++ ~我们又不是没对付过亡灵。~ + velsharoon1
++ ~这有什么可不对的？~ + velsharoon1
END

IF ~~ velsharoon1
SAY ~亡者起身于我并非新事，可这些尸身上还有别的东西……有人*命令*它们在咱们一碰之下起身，像是要把我们引进陷阱。~
= ~我认得这些迹象、尸身上的印记——这是维尔沙隆信徒的手笔，那是个恶的亡者之神。~
= ~当心，<CHARNAME>。我疑心我们不知怎的着了道，一切都不像表面的样子。~
IF ~~ DO ~SetGlobal("C02SireneVelsharoon","GLOBAL",2) SetGlobal("KNOW_VELSHAROON","GLOBAL",1)~ EXIT
END

END

INTERJECT BDJUNIA 16 C0SireneBDJUNIA16
== C02SIREJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~晨星？恕我无知，可……在我遇见过的信徒当中，我从没听过有人这样称呼晨主。~
EXTERN BDJUNIA 18

INTERJECT BDJUNIA 33 C0SireneBDJUNIA33
== C02SIREJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~你的谎话够了。我觉出你恶的本性正从面具底下露出来。你嘲弄晨主的信仰，就要付代价！~
END
IF ~IsValidForPartyDialogue("Dynaheir")~ EXTERN BDDYNAHJ 95
IF ~!IsValidForPartyDialogue("Dynaheir")~ EXTERN BDJUNIA 34

// Dorn conflict

CHAIN IF WEIGHT #-1 ~Global("C02SireneDornConflict","GLOBAL",2)~ THEN C02SIREJ Dorn1
~我得跟你说说那黑卫的事，<CHARNAME>。~
== BDDORNJ ~我就在这儿，小鬼。你有话说，就当面说。~
== C02SIREJ ~随你。那我就直说。我反对你留下。~
== BDDORNJ ~然后呢？~
== C02SIREJ ~我认得你这一类。无数无辜者的血染在你手上，你使的力量只系在一根细线上，系在一个毫不在乎你安危与德行的主子。我不能信你站在我身边。~
== BDDORNJ ~我不是为遂你的意才活的，工具。你反对我留下，那就滚。我们不需要你。~
== C02SIREJ ~<CHARNAME>，这恶的仆人我一点也不沾。收下他是你的选择，所以我不生争端；可我不肯受他同行。~
END
	+ ~CheckStatGT(Player1,12,CHR)~ + ~想想我们的处境，塞琳。我们在这儿打仗，需要能拿到的最强的盟友。多恩是个可用的盟友，我能信他——至少到某个程度。你们两边我都要。~ EXTERN C02SIREJ Dorn4
	++ ~你若有意见，尽可走。~ DO ~SetGlobal("bd_npc_camp","locals",1)~ EXTERN C02SIREJ Dorn2
	++ ~我不愿我们的盟友之间起争斗。多恩，离开我们。~ DO ~SetGlobal("bd_npc_camp","locals",1)~ EXTERN BDDORNJ Dorn3
	
CHAIN C02SIREJ Dorn2
~随你。我不赞同你的决定，可我会尊重。眼下我在营地等着。当心那一个。~
END
IF ~~ DO ~SetGlobal("bd_npc_camp","locals",1) SetGlobal("bd_joined","locals",0) ChangeAIScript("bdparty",DEFAULT) LeaveParty()~ EXIT

CHAIN BDDORNJ Dorn3
~你为这个假惺惺的娼妇就丢下我？愚蠢的决断。等你想明白了，你知道哪儿能找到我。~
END
IF ~~ DO ~SetGlobal("bd_npc_camp","locals",1) SetGlobal("bd_joined","locals",0) ChangeAIScript("bdparty",DEFAULT) LeaveParty()~ EXIT

CHAIN C02SIREJ Dorn4
~我明白，<CHARNAME>；可是……他危险。为了任务，我能把我的荣誉搁下，可我不能拿我们这一队人的安危去冒险。~
END
	+ ~!Global("C02SireneDornTruce","GLOBAL",1) CheckStatGT(Player1,15,CHR)~ + ~我能管住他。信我。~ DO ~SetGlobal("C02SireneDornTruce","GLOBAL",1)~ EXTERN C02SIREJ Dorn5
	++ ~看来劝不动你。那样的话，我只好请你离开。~ DO ~SetGlobal("bd_npc_camp","locals",1)~ EXTERN C02SIREJ Dorn2
	++ ~我明白你的意思。滚出去，多恩。~ DO ~SetGlobal("bd_npc_camp","locals",1)~ EXTERN BDDORNJ Dorn3
	
CHAIN C02SIREJ Dorn5
~*叹气* 好吧。我信你的判断，<CHARNAME>；不过我不会信这……畜生。然而眼下，我同意休战。~
END
	++ ~清楚了吧，多恩？~ EXTERN BDDORNJ Dorn6
	
CHAIN BDDORNJ Dorn6
~我们不需要这婆娘，<CHARNAME>。不过……敬你的带领，我服从你的决定。那就……休战吧。~
== C02SIREJ ~不过我警告你。你若对<CHARNAME>或我方任何人有所犯，我会毫不犹豫了结你。~
== BDDORNJ ~你尽管试。不过我劝你闭嘴、别挡我的路，好叫你的脑袋在脖子上多待一阵。~
END
IF ~~ DO ~SetGlobal("C02SireneDornConflict","GLOBAL",3)~ EXIT

// Aun Argent

APPEND C02SIREJ

IF ~Global("C02SireneAun","GLOBAL",2)~ aun
SAY ~那堕落的圣武士提到了奥恩·阿金特……真的，他若从前服侍过那人，我倒悲悯他的堕落。~
+ ~OR(3)
Class(Player1,PALADIN_ALL)
Class(Player1,CLERIC_ALL)
CheckStatGT(Player1,14,INT)~ + ~我熟这名字。他是拉珊德比较有名望的仆人之一。你也知道他？~ + aun1
+ ~!Class(Player1,PALADIN_ALL)
!Class(Player1,CLERIC_ALL)
!CheckStatGT(Player1,14,INT)~ + ~你知道那醉汉说的是谁？~ + aun1
++ ~这不重要。继续走。~ + aun0
END

IF ~~ aun0
SAY ~是……随你。~
IF ~~ DO ~SetGlobal("C02SireneAun","GLOBAL",3)~ EXIT
END

IF ~~ aun1
SAY ~是……我想凡是熟拉珊德教会的人，没有没听过他名的。奥恩·阿金特算得上是个传说，他的事迹在深水城之外的这片土地上广为人知。~
= ~我十二岁那年，离我开始朝圣还有八年，拉珊德的骑士们路过我的村子。我想那是我头一回听见“紫菀的奥恩”这名号。~
= ~可我没想到他与我们的敌人凯拉·阿金特这样近切相关……我从没想过这样一位英雄的血亲，会堕落到造出这样的乱子。~
++ ~光辉女士是什么品性，我们很快自会看到。也许他们并不像你猜的那样不同。~ + aun2
++ ~一家人未必都一样。~ + aun3
++ ~也许那人并不像传说里那样高尚。~ + aun4
++ ~我们有活要干。继续走。~ + aun0
END

IF ~~ aun2
SAY ~也许你说得对。我下判断还太早……可很难相信哪个高尚的魂会容这等苦落到无辜者身上。~
IF ~~ DO ~SetGlobal("C02SireneAun","GLOBAL",3)~ EXIT
END

IF ~~ aun3
SAY ~是，我想你就是这样的活例，<CHARNAME>。~
IF ~~ DO ~SetGlobal("C02SireneAun","GLOBAL",3)~ EXIT
END

IF ~~ aun4
SAY ~这念头叫人不安，<CHARNAME>……可我不能否认有这种可能。我想真相我们永远不会知道。奥恩·阿金特许多年前就从诸国度里消失了……如今我们却要面对一位我当作传说的人的血亲。人生里真是什么怪事都有。~
IF ~~ DO ~SetGlobal("C02SireneAun","GLOBAL",3)~ EXIT
END

// Glen

IF ~Global("C02SireneGlen","GLOBAL",2)~ glen
SAY ~嗯……我想这是个意外。我原以为再不会遇见自己过去里的人，尤其牵扯到我的童年……不过这个结果，我……很高兴。~
+ ~CheckStatGT(Player1,9,WIS)~ + ~你为什么不对他说你是谁？~ DO ~SetGlobal("C02SireneGlen","GLOBAL",3)~ + glen1
+ ~CheckStatLT(Player1,10,WIS)~ + ~等等，你认得他？~ DO ~SetGlobal("C02SireneGlen","GLOBAL",3)~ + glen2
++ ~随便吧。继续走。~ DO ~SetGlobal("C02SireneGlen","GLOBAL",3)~ EXIT
END

IF ~~ glen1
SAY ~你要我跟他说什么，<CHARNAME>？说我曾是那个暴烈、满怀恨意的孩子，给了他一道终身治不好的伤？不……我也许不再是那个人了，可她的罪还留在我身上。~
= ~也许我该去面对我的罪；可尽管我加给他那么可怕的伤害，他还是过上了好日子。我这一现，叫他又想起那样可怕的记忆，这已经是我悔的了。~
= ~*叹气* 无所谓。我不配他的宽恕，可他还是给了……我只好以此自足了。~
IF ~~ EXIT
END

IF ~~ glen2
SAY ~是……是，我认得。可我不太想说起。我们有更要紧的事要办。~
IF ~~ EXIT
END
END

// Killed Demon Knight

CHAIN IF ~Global("C02SireneMystery","GLOBAL",2)~ THEN C02SIREJ DKnight1
~我们赢了，可……还有那么多问题没答案。~
== BDBAELOJ IF ~IsValidForPartyDialogue("BAELOTH")~ THEN ~天，这真是召出了一具极有味道的标本！如今，我得把那小把戏学到手……~
== BDDORNJ IF ~IsValidForPartyDialogue("DORN")~ THEN ~哈！那才算一场像样的仗！为了多遇上这样的东西，受那婆娘同行几乎都值了。~
== BDGLINTJ IF ~IsValidForPartyDialogue("GLINT")~ THEN ~哇！那真吓人！没我妈发火那么吓人，可也是我很久以来见过最接近的了。~
== BDRASAAJ IF ~IsValidForPartyDialogue("RASAAD")~ THEN ~苏伦的光，那人的力量得多大，才能驭使这样一头强魔！~
== BDCORWIJ IF ~IsValidForPartyDialogue("CORWIN")~ THEN ~你在外头有个危险的敌人。为我们所有人计，我希望这是我们最后一次见到他。~
== BDSAFANJ IF ~IsValidForPartyDialogue("SAFANA")~ THEN ~那到底是*谁*？嗯……亲爱的，你还有什么事没告诉我们？~
== BDNEERAJ IF ~IsValidForPartyDialogue("NEERA")~ THEN ~哦，众神。那比我召过的任何东西都糟得多多多了，不管是有意还是失手。求你告诉我，没有更多了。~
== BDMINSCJ IF ~IsValidForPartyDialogue("MINSC")~ THEN ~可胜就是胜，我的朋友！问题什么时候都能答，可我们今天踹了一头大魔的屁股！~
== BDDYNAHJ IF ~IsValidForPartyDialogue("DYNAHEIR")~ THEN ~这叫人极不安……我觉出你的敌人力量可怖，可他却觉得该留我们活命……我怕他的事还没完。~
== BDVOGHIJ IF ~IsValidForPartyDialogue("VOGHILN")~ THEN ~呵呵！我们今天放倒了一个强敌。我得作一首极有力的歌，叫这场胜仗不朽！~
== BDJAHEIJ IF ~IsValidForPartyDialogue("JAHEIRA")~ THEN ~这可真是个极不痛快的意外。我们该继续戒备，我不信那人跟你的事已了。~
== BDKHALIJ IF ~IsValidForPartyDialogue("KHALID")~ THEN ~若——若再出这样的事，我——我们当然会站在你这边。~
== BDEDWINJ IF ~IsValidForPartyDialogue("EDWIN")~ THEN ~我们能不能就把这自命清高的鬼东西扔给她自己的命，好叫我们别再被扯进她的麻烦里？！~
== BDVICONJ IF ~IsValidForPartyDialogue("VICONIA")~ THEN ~莎尔的斗篷，能活下来我们该庆幸。不过也许那艾尔格凯瑞斯（魔裔贱货）倒该死。~
== BDMKHIIJ IF ~IsValidForPartyDialogue("MKHIIN")~ THEN ~恶魔从来不是好兆头。得当心。~
== C02SIREJ ~那人说“凶手、弑亲者、生于不幸”是什么意思？他眼里对我怎么会有那样烧着的恨，还有那压人的绝望？~
== C02SIREJ ~我……我抱歉叫你涉险，<CHARNAME>。谢谢你帮我，可我希望我再不会逼你为我拿命去冒。~
DO ~SetGlobal("C02SireneMystery","GLOBAL",3)~ EXIT

// Low Reputation

CHAIN IF WEIGHT #-1 ~Global("C02SireneLowRep","GLOBAL",1)~ THEN C02SIREJ C0SireneRep01
~我得跟你谈谈，<CHARNAME>，谈谈你一直在做的决定。我认为它们配不上你。~
DO ~SetGlobal("C02SireneLowRep","GLOBAL",2)~
END
++ ~它们怎么了？~ EXTERN C02SIREJ reputation1
++ ~我知道我近来行事出格。我会尽力把它扳回来。~ EXTERN C02SIREJ reputation2
++ ~你若有意见，尽可走。~ EXTERN C02SIREJ reputation3

APPEND C02SIREJ

IF ~~ reputation1
SAY ~我知道你体内带着恶神的血，可我不认为做更好的人超出你的掌控，<CHARNAME>。我留在你身边，是因为我相信你有变好的可能；可你若不然……我就不能真心跟着你。~
IF ~OR(3)
Class(Player1,PALADIN_ALL)
Class(Player1,RANGER_ALL)
Class(Player1,CLERIC_ALL)
!Kit(Player1,Blackguard)
!Kit(Player1,GODTALOS)~ + reputation4
IF ~~ EXIT
END

IF ~~ reputation2
SAY ~我希望你会，<CHARNAME>；因为你若不做你说的那样，我怕我一边守着我自己，一边就不能再服侍你了。我祈祷你听我的警告。~
IF ~OR(3)
Class(Player1,PALADIN_ALL)
Class(Player1,RANGER_ALL)
Class(Player1,CLERIC_ALL)
!Kit(Player1,Blackguard)
!Kit(Player1,GODTALOS)~ + reputation4
IF ~~ EXIT
END

IF ~~ reputation3
SAY ~你若不改你的行事，<CHARNAME>，那便是我剩下的唯一选择。我希望不会到那一步，可我不会跟一个甘愿走入恶的领头人。~
IF ~OR(3)
Class(Player1,PALADIN_ALL)
Class(Player1,RANGER_ALL)
Class(Player1,CLERIC_ALL)
!Kit(Player1,Blackguard)
!Kit(Player1,GODTALOS)~ + reputation4
IF ~~ EXIT
END

IF ~~ reputation4
SAY ~我希望不必提醒你，盯着你的不止我一个，<CHARNAME>。你对你的神有留在正道上的职分。你若不肯听我，那也许这件事值得想一想。~
IF ~~ EXIT
END
END

CHAIN IF WEIGHT #-1 ~Global("C02SireneRepBreak","GLOBAL",1)~ THEN C02SIREJ C0SireneRep02
~那么，你并不打算改道。像我警告过你的，<CHARNAME>，我不会跟一个不顾道义的领头人。我会回营地去，在那儿尽我该尽的；可你再不能指望我服侍。~
DO ~SetGlobal("C02SireneRepBreak","GLOBAL",2) SetGlobal("bd_npc_camp","locals",1)
SetGlobal("bd_joined","LOCALS",0)
SetGlobal("C0SireneAngered","GLOBAL",1)
LeaveParty()
ChangeAIScript("bdparty",DEFAULT)~ 
EXIT

// ---------------------------------------------
// Romance Conflicts
// ---------------------------------------------

EXTEND_TOP BDCORWIJ 288 #2
+ ~Global("C02SireneRomanceActive","GLOBAL",1)~ + ~你不能逼我在你和塞琳之间选。我做不到。~ EXTERN BDCORWIJ 290
END

EXTEND_TOP BDDORNJ 105 #4
+ ~Global("C02SireneRomanceActive","GLOBAL",1)~ + ~我对塞琳生了心。她坚强，却温柔。还有种异样的动人。~ EXTERN BDDORNJ 106
END

EXTEND_TOP BDSAFANJ 141 #2
+ ~Global("C02SireneRomanceActive","GLOBAL",1)~ + ~我一直在想塞琳。~ EXTERN BDSAFANJ 156
END

EXTEND_TOP BDRASAAJ 89
+ ~Global("C02SireneRomanceActive","GLOBAL",1)~ + ~也许……我希望塞琳和我能不止做朋友。~ EXTERN BDRASAAJ 90
END

EXTEND_TOP BDVOGHIJ 85
+ ~Global("C02SireneRomanceActive","GLOBAL",1)~ + ~也许……我希望塞琳和我能不止做朋友。~ EXTERN BDVOGHIJ 86
END

EXTEND_TOP BDVICONJ 96
+ ~Global("C02SireneRomanceActive","GLOBAL",1)~ + ~塞琳的善良和异样的魅力叫我动了心。~ EXTERN BDVICONJ 97
END

// ---------------------------------------------
// Player Initiated Dialogue
// ---------------------------------------------

APPEND C02SIREJ

// Avernus

IF ~IsGabber(Player1)
OR(5)
AreaCheck("bd4400")
AreaCheck("bd4500")
AreaCheck("bd4600")
AreaCheck("bd4601")
AreaCheck("bd4700")~ THEN BEGIN pidavernus
SAY ~不，不是时候，<CHARNAME>。敌人等着……还有魔鬼要送进坟里。~
IF ~~ EXIT
END

IF ~IsGabber(Player1) CombatCounter(0) !Detect([ENEMY])~ THEN BEGIN pid
 SAY ~你需要我？~ [C0SIR011]
	+ ~OR(2)
	   Global("C02SireneRomanceActive","GLOBAL",1)
	   Global("C02SireneRomanceActive","GLOBAL",2)~ + ~（调情）~ + flirtmenu
	+ ~HPPercentGT(Myself,74) RandomNum(4,1)~ + ~你好么？~ + a1
	+ ~HPPercentGT(Myself,74) RandomNum(4,2)~ + ~你好么？~ + a2
	+ ~HPPercentGT(Myself,74) RandomNum(4,3)~ + ~你好么？~ + a3
	+ ~HPPercentGT(Myself,74) RandomNum(4,4)~ + ~你好么？~ + a4
	+ ~HPPercentLT(Myself,75) HPPercentGT(Myself,49) RandomNum(4,1)~ + ~你好么？~ + b1
	+ ~HPPercentLT(Myself,75) HPPercentGT(Myself,49) RandomNum(4,2)~ + ~你好么？~ + b2
	+ ~HPPercentLT(Myself,75) HPPercentGT(Myself,49) RandomNum(4,3)~ + ~你好么？~ + b3
	+ ~HPPercentLT(Myself,75) HPPercentGT(Myself,49) RandomNum(4,4)~ + ~你好么？~ + b4
	+ ~HPPercentLT(Myself,50)~ + ~你好么？~ + c1
	+ ~OR(15)
	Global("C02SirenePID1","GLOBAL",0)
	Global("C02SirenePID2","GLOBAL",0)
	Global("C02SirenePID3","GLOBAL",0)
	Global("C02SirenePID4","GLOBAL",0)
	Global("C02SirenePID5","GLOBAL",0)
	Global("C02SirenePID6","GLOBAL",0)
	Global("C02SirenePID7","GLOBAL",0)
	Global("C02SirenePID8","GLOBAL",0)
	Global("C02SirenePID9","GLOBAL",0)
	Global("C02SirenePID10","GLOBAL",0)
	Global("C02SirenePID11","GLOBAL",0)
	Global("C02SirenePID12","GLOBAL",0)
	Global("C02SireneKnowsLady","GLOBAL",1)
	Global("C02SireneKnowsLady","GLOBAL",2)
	Global("C02SireneTest","GLOBAL",1)~ + ~我能问你个问题么？~ + questions
	+ ~!Global("C02SirenePauseTalks","GLOBAL",1)~ + ~路上你少说点话。~ DO ~SetGlobal("C02SirenePauseTalks","GLOBAL",1)~ + dialog
	+ ~Global("C02SirenePauseTalks","GLOBAL",1)~ + ~你若要再跟我说话，我不介意。~ DO ~SetGlobal("C02SirenePauseTalks","GLOBAL",0)~  + dialog
	+ ~GlobalGT("C02SireneLT","GLOBAL",4)
	   OR(2)
	   Global("C02SireneRomanceActive","GLOBAL",1)
	   Global("C02SireneRomanceActive","GLOBAL",2)~ + ~塞琳，我们之间这事……不适合我。我更愿意把它撇在身后。~ + breakrom
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
+ ~RandomNum(3,1)~ + ~（走路时蹭一下她的肩）~ + f9.1
+ ~RandomNum(3,2)~ + ~（走路时蹭一下她的肩）~ + f9.2
+ ~!Race(Player1,GNOME)
!Race(Player1,DWARF)
!Race(Player1,HALFLING) RandomNum(3,3)~ + ~（走路时蹭一下她的肩）~ + f9.3
+ ~RandomNum(3,1)~ + ~谢谢你护着我。~ + f10.1
+ ~RandomNum(3,2)~ + ~谢谢你护着我。~ + f10.2
+ ~RandomNum(3,3)~ + ~谢谢你护着我。~ + f10.3
+ ~RandomNum(3,1)~ + ~你觉得我怎么样？~ + f11.1
+ ~ReputationGT(Player1,12) RandomNum(3,2)~ + ~你觉得我怎么样？~ + f11.2
+ ~RandomNum(3,3)~ + ~你觉得我怎么样？~ + f11.3
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
++ ~没什么。~ EXIT
END

IF ~~ f1.1
SAY ~（塞琳也朝你微笑，有点局促。）~
IF ~~ EXIT
END

IF ~~ f1.2
SAY ~什么叫你笑，我的朋友？有什么好事么？~
IF ~~ EXIT
END

IF ~~ f1.3
SAY ~（塞琳红了脸，别过头去。）~
IF ~~ EXIT
END

IF ~~ f2.1
SAY ~（你的触碰叫塞琳一惊，把手抽了回去，可认出是你之后又松了下来。）~
= ~啊！恕我，<CHARNAME>，我还以为……不，算了。~
IF ~~ EXIT
END

IF ~~ f2.2
SAY ~（塞琳似乎拿不准该松下来还是抽走，最后到底任你牵着她的手走。）~
IF ~~ EXIT
END

IF ~~ f2.3
SAY ~<CHARNAME>，我……我不是孩子。我不必人扶也能走。~
IF ~~ EXIT
END

IF ~~ f3.1
SAY ~（你看塞琳走在你身边，低着头看地面。她没注意到你在看她。）~
IF ~~ EXIT
END

IF ~~ f3.2
SAY ~（塞琳除了额上的犄角，最惹眼的是她高高的颧骨和微微发光的绿眼，还有左颊上那道细细的疤。）~
IF ~~ EXIT
END

IF ~~ f3.3
SAY ~（你过了一会儿才发觉塞琳也在看你。她像要说什么，却咬了咬下唇，尴尬地别开眼。）~
IF ~~ EXIT
END

IF ~~ f4.1
SAY ~（你把塞琳的白斗篷拉直，拂掉皱褶里积的尘土。）~
= ~啊……谢谢你，<CHARNAME>。~
IF ~~ EXIT
END

IF ~~ f4.2
SAY ~（你替她清斗篷的时候，塞琳伸手抚你的脸，用拇指擦掉你颊上的一点灰。）~
IF ~~ EXIT
END

IF ~~ f4.3
SAY ~*叹气* 若血迹也能这样轻易抹掉就好了，<CHARNAME>……~
IF ~~ EXIT
END

IF ~~ f5.1
SAY ~（你动手替她卸下肩甲，她却把住了你的手。）~
= ~<CHARNAME>……你不必这样。不过，谢谢你。~
IF ~~ EXIT
END

IF ~~ f5.2
SAY ~（队伍短暂歇脚时，塞琳卸下足够多的甲，好叫你能替她揉。）~
= ~（你觉得她的肌肉绷得发紧、结成一团；你替她揉开时，她舒了口气。）~
= ~（你揉完时，塞琳捧起你的手，吻了吻。）~
IF ~~ EXIT
END

IF ~~ f5.3
SAY ~（笑）我怕我这身甲碍事，<CHARNAME>。也许等我们扎营吧。~
IF ~~ EXIT
END

IF ~~ f6.1
SAY ~你太好心了，<CHARNAME>……~
IF ~~ DO ~ForceSpell("C0Sirene",CLERIC_CURE_LIGHT_WOUNDS)~ EXIT
END

IF ~~ f6.2
SAY ~不，求你别把法术浪费在我身上。我自己的伤我能治……有人更需要。~
IF ~~ EXIT
END

IF ~~ f6.3
SAY ~（伤口开始合上时，塞琳松了口气。）~
IF ~~ DO ~ForceSpell("C0Sirene",CLERIC_CURE_LIGHT_WOUNDS)~ EXIT
END

IF ~~ f7.1
SAY ~不，不，这点我背得动，不过谢谢你。~
IF ~~ EXIT
END

IF ~~ f7.2
SAY ~（塞琳把包递给你，虽有几分为难。）~
= ~我但愿能拒绝，可这一天实在太长了……恕我软弱，<CHARNAME>。~
IF ~~ EXIT
END

IF ~~ f7.3
SAY ~我领你的情，<CHARNAME>；可我不想再给你添担子。~
IF ~~ EXIT
END

IF ~~ f8.1
SAY ~哦……那首歌耳熟……可我想不起在哪儿听过。我能再听一遍么？~
IF ~~ EXIT
END

IF ~~ f8.2
SAY ~你的嗓子真美，<CHARNAME>。~
IF ~~ EXIT
END

IF ~~ f8.3
SAY ~（塞琳专心听你唱，到副歌时跟着哼。）~
IF ~~ EXIT
END

IF ~~ f9.1
SAY ~我们就这样多走一阵，我不介意，<CHARNAME>……*脸红* 若……若你不介意的话。~
IF ~~ EXIT
END

IF ~~ f9.2
SAY ~（塞琳碰了碰你的胳膊，走着的当儿朝你笑。）~
IF ~~ EXIT
END

IF ~~ f9.3
SAY ~（塞琳偏了偏头，像要靠上你的肩，可最后一刻似乎改了主意。）~
IF ~~ EXIT
END

IF ~~ f10.1
SAY ~你不必谢我，<CHARNAME>，我……我只是在尽我的职分。~
IF ~~ EXIT
END

IF ~~ f10.2
SAY ~你可以靠我，我的朋友……若有需要，我会拿命护你。~
IF ~~ EXIT
END

IF ~~ f10.3
SAY ~只要我活着，什么也伤不了你，<CHARNAME>。~
IF ~~ EXIT
END

IF ~~ f11.1
SAY ~我怎么想？我……我这会儿没法把想法说成话。~
IF ~~ EXIT
END

IF ~~ f11.2
SAY ~你——你是个极好的人，<CHARNAME>……我真还要多说么？~
= ~（她羞怯地朝你笑。）~
IF ~~ EXIT
END

IF ~~ f11.3
SAY ~我，呃……我心里的想法也许不值一提。*脸红*~
IF ~~ EXIT
END

IF ~~ f12.1
SAY ~真美，<CHARNAME>……你打算把它送给谁？~
++ ~当然。（把花递给她。）~ + f12.1a
++ ~倒没特别打算。~ + f12.1b
END

IF ~~ f12.1a
SAY ~给——给我？我……哦，众神，我……我得遮住我的脸……~
IF ~~ EXIT
END

IF ~~ f12.1b
SAY ~哦……可惜。不过它到底是朵好看的花。~
IF ~~ EXIT
END

IF ~~ f12.2
SAY ~多可人的礼物，<CHARNAME>……我会珍着它。~
IF ~~ EXIT
END

IF ~~ f12.3
SAY ~（塞琳默默接过花，别在甲上，轻轻笑了。）~
= ~我知道这挺孩子气，可我真喜欢。~
IF ~~ EXIT
END

IF ~~ f13.1a
SAY ~嗯，叫另一个女人替我梳头，这感觉挺好，<CHARNAME>……~
IF ~~ EXIT
END

IF ~~ f13.1b
SAY ~叫男人替我梳头，感觉怪，<CHARNAME>……可我不介意。~
IF ~~ EXIT
END

IF ~~ f13.2
SAY ~（塞琳的头发乱着，长短不齐，多半是打斗所致。可那鲜红的颜色还是好看。）~
IF ~~ EXIT
END

IF ~~ f13.3
SAY ~我不愿耽误你的工夫，<CHARNAME>……下一场打完，它又要乱成一团。~
IF ~~ EXIT
END

IF ~~ f14.1
SAY ~（你在塞琳手背上轻轻一吻，她窘得红了脸。）~
IF ~~ EXIT
END

IF ~~ f14.2
SAY ~（你把塞琳的手凑近脸时，发觉她的指甲黑而发亮，边上微微弯着，看着却全像天生的。）~
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
SAY ~还好。有事么？~
IF ~~ EXIT
END

IF ~~ a3
SAY ~我浑身酸疼，可会过去的。~
IF ~~ EXIT
END

IF ~~ a4
SAY ~谢谢你的关心，可我没事。~
IF ~~ EXIT
END

IF ~~ b1
SAY ~嗯，我受了伤，可……我想我会好。~
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
SAY ~我……想用一会儿治我的伤，若你允许的话。~
IF ~~ EXIT
END

IF ~~ c1
SAY ~呃，我知道我不该抱怨，可是……这血止不住。我需要帮助。~
IF ~~ EXIT
END

IF ~~ dialog
SAY ~当然。~
IF ~~ EXIT
END

IF ~~ breakrom
SAY ~我明白了……当然，<CHARNAME>。那是你该做的决断。我不再烦你。~
IF ~~ DO ~SetGlobal("C02SireneRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ stringfix 
SAY ~也许……（咳嗽）~ 
IF ~~ THEN DO ~ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("C02RESET")~ EXIT 
END

// QUESTIONS

IF ~~ questions
SAY ~当然。你想问什么就问。~
// + ~Global("C02SirenePID1","GLOBAL",0)~ + ~Since you're a tiefling, shouldn't you have some sort of inherent powers?~ DO ~SetGlobal("C02SirenePID1","GLOBAL",1)~ + powers
+ ~Global("C02SirenePID2","GLOBAL",0)~ + ~若不介意我问，你到底多大了？~ DO ~SetGlobal("C02SirenePID2","GLOBAL",1)~ + age
+ ~Global("C02SirenePID3","GLOBAL",0)~ + ~你提过你是孤儿。你是在哪儿长大的？~ DO ~SetGlobal("C02SirenePID3","GLOBAL",1)~ + orphan
+ ~Global("C02SireneKnowsLady","GLOBAL",1)~ + ~你说你从前见过光辉女士。能跟我讲讲么？~ DO ~SetGlobal("C02SireneKnowsLady","GLOBAL",2)~ + shininglady
+ ~Global("C02SireneKnowsLady","GLOBAL",2)~ + ~你说你不信赫弗南。你觉得他可能在操纵凯拉么？~ DO ~SetGlobal("C02SireneKnowsLady","GLOBAL",3)~ + hephernaan
+ ~OR(2)
Global("bd_plot","global",170)
GlobalGT("bd_plot","global",170)
Global("C02SirenePID4","GLOBAL",0)~ + ~那么，凯拉·阿金特是个阿斯莫。你怎么看？~ DO ~SetGlobal("C02SirenePID4","GLOBAL",1)~ + aasimar
+ ~Class("C0Sirene",PALADIN_ALL)
Global("C02SirenePID5","GLOBAL",0)~ + ~你怎么决定去练双手大剑的？~ DO ~SetGlobal("C02SirenePID5","GLOBAL",1)~ + greatsword
+ ~Class("C0Sirene",PALADIN_ALL)
Global("C02SirenePID6","GLOBAL",0)~ + ~你受过任何远程武器的训练么？~ DO ~SetGlobal("C02SirenePID6","GLOBAL",1)~ + ranged
+ ~Class("C0Sirene",PALADIN_ALL)
Global("C02SirenePID7","GLOBAL",1)~ + ~你提过你可以自择誓愿。你发过贞洁誓么？~ DO ~SetGlobal("C02SirenePID7","GLOBAL",2)~ + chastity
+ ~Global("C02SirenePID8","GLOBAL",0)~ + ~等我们打垮了十字军，你打算做什么？~ DO ~SetGlobal("C02SirenePID8","GLOBAL",1)~ + postcrusade
+ ~Global("C02SirenePID9","GLOBAL",0) PartyHasItem("c0sw2h")~ + ~你使的那把剑……看着不像圣武士会用的。它有什么来历么？~ DO ~SetGlobal("C02SirenePID9","GLOBAL",1)~ + brimstone
+ ~Global("C02SirenePID10","GLOBAL",0)~ + ~伊尔梅特算不上我所谓尚武的神。你们这一支教派要圣武士做什么？~ DO ~SetGlobal("C02SirenePID10","GLOBAL",1)~ + ilmater
+ ~GlobalGT("C02SireneLT","GLOBAL",4)
   OR(2)
   Global("C02SireneRomanceActive","GLOBAL",1)
   Global("C02SireneRomanceActive","GLOBAL",2)
   Global("C02SirenePID11","GLOBAL",0)~ + ~你从前爱过么？~ DO ~SetGlobal("C02SirenePID11","GLOBAL",1)~ + love
+ ~Global("C02SireneTest","GLOBAL",1)~ + ~你跟多西娅待的时间不长。她教了你什么？~ DO ~SetGlobal("C02SireneTest","GLOBAL",2)~ + teaching
+ ~Global("C02SirenePID12","GLOBAL",0)~ + ~你在路上遇见过别的提夫林么？~ DO ~SetGlobal("C02SirenePID12","GLOBAL",1)~ + othertieflings
++ ~再想一遍，我没想问的了。~ EXIT
END

IF ~~ powers
SAY ~我——嗯，你问得不错，<CHARNAME>。是，我因我的血确实有……某些本事，可我不太愿去想它们。~
= ~除了我对冷热的天然耐受，我许多本事几乎只能造成伤害。因此我立誓永不主动使用它们。~
++ ~可你能跟我说说它们么？~ + powers1
++ ~我明白了。那我不再追问。~ EXIT
END

IF ~~ powers1
SAY ~这说说倒也无害。那好吧……除了对火与冰这两种元素、天然的和法术的都有的抗力，我还能像精灵那样夜视。另有一种本事我能控到某种程度……可正如我说的，我已发誓永不用它。~
= ~小时候有一回，我一怒之下叫神殿里另一个受养的孤儿瞎了眼。我极悔，怕那果是永久的……可她两天后就好了。就是那一回教了我要负责任地用我的本事。~
= ~我不信我这十多年用过那本事了……我猜若再使，会弱得多……可我说不准，也不愿去试。~
IF ~~ EXIT
END

IF ~~ age
SAY ~啊。我不介意，<CHARNAME>，只是说实话有点难为情承认……我自己也记不大清。~
++ ~你连自己多少岁都记不得？~ + age1
++ ~你至少能猜个大概吧？~ + age2
++ ~那样的话，算了。~ EXIT
END

IF ~~ age1
SAY ~我说了，这难为情，也正是我从没提过的缘故。~
IF ~~ + age2
END

IF ~~ age2
SAY ~常年在朝圣路上，年月难记……不过我确知我至少过了二十岁。~
++ ~你看着不比二十岁大多少。至多也就二十五吧。~ + age3
++ ~也许等你想起来了，我们再谈。~ EXIT
END

IF ~~ age3
SAY ~是，大约差不离……我想我今年二十四，可不敢确定。那算来我长你几岁，不过我并不觉得。~
= ~这横竖也没什么分别。你是天生的领头人，<CHARNAME>，我不是。年纪跟这没什么关系。~
IF ~~ EXIT
END

IF ~~ orphan
SAY ~我出自北风村，费茹西北的一个小村子，离深水城不远。具体哪儿我忘了……它既不大也不要紧，不够上地图。一位游方的伊尔梅特朝圣者在我还在襁褓时把我带到了他的神殿。~
++ ~这怪了。我不算内行，可你看着不太像深水城人。~ + orphan1
++ ~那祭司是在哪儿寻着你的？~ + orphan2
++ ~有意思。我们眼下先继续走。~ EXIT
END

IF ~~ orphan1
SAY ~你说得对……我对我父母一无所知，可我的来历我倒知道一点。~
IF ~~ + orphan2
END

IF ~~ orphan2
SAY ~伊尔梅特信徒是在费茹西部的高荒原附近、切林伯沼泽里发现我的。照他们说的，我孤零零一个，裹在破布里，视野内不见别人的踪影。他们只能当我被弃了。~
++ ~你父母把你丢在沼泽里等死？太可怕了！~ + orphan3
++ ~接着说。~ + orphan3
++ ~我听够了。继续走。~ EXIT
END

IF ~~ orphan3
SAY ~祭司们说我病弱，被寻着的时候已近死……再晚些，我就死了。我幼时体弱，就是有治疗也不见好，直到受了伊尔梅特的赐福才康复。自那以后我就是哭泣之神的誓仆。~
++ ~你曾想过寻自己的来历么？~ + orphan4
++ ~谢谢你告诉我。继续走。~ EXIT
END

IF ~~ orphan4
SAY ~有时候……可我更在意对伊尔梅特尽我的职分。若有我过去的线索到我手上，我也许会顺着走……可我并不太执着于此。~
IF ~~ EXIT
END

IF ~~ shininglady
SAY ~是，想过，可只是远远地。我独自去博德之门时，遇上了十字军的大队人马，光辉女士也在其中。我运气好，他们把我当成了自己人……不然我怕我会被处决，甚至被强征入伍。~
= ~也许这有违我的判断，可好奇心拿住了我。我进了营地，冒充十字军。幸亏没人揭穿我，因为他们的注意力不在我身上，而在光辉女士凯拉·阿金特身上——她如她的名号所示那般光辉，立于众人之上。那场面叫我震动。~
++ ~你听着几乎像在敬佩她。~ + shininglady1
++ ~那场面有什么震动的？~ + shininglady2
++ ~我听够了。继续走。~ EXIT
END

IF ~~ shininglady1
SAY ~是，也许那一刻是；可真正打动我的不是她的模样，而是站在她底下的人。~
IF ~~ + shininglady2
END

IF ~~ shininglady2
SAY ~我眼前所见是一支大军——人、精灵、矮人、狗头人、食人魔，甚至巨人，全都立正，满怀敬畏地听。我从没见过这么多不同的族站在一起，且不只是站在一起，而是甘愿站在一起。~
= ~我不能否认我被光辉女士的话摄住了，一时之间，加入她的十字军对我有了吸引——一个我能被接纳的地方，不管我的血，为的是个高尚的目的。~
++ ~什么叫你改了主意？~ + shininglady3
++ ~你若同情十字军，我不确定留你在身边是否妥当。~ + shininglady4
++ ~我听够了。继续走。~ EXIT
END

IF ~~ shininglady3
SAY ~凯拉·阿金特讲完，众人举兵高呼她的名——可就在那一刻，我看见了另一样东西。~
= ~一个男人，身披血红长袍，眼睛黑得像虚空，对着眼前的景象微笑。我在光辉女士身上敬佩的一切，在他身上都看见了反面——恶意、冷酷、欺诈。而且……他好像能把眼前每一个十字军都看得一样清楚——连我在内。~
= ~那一刻我逃了。我不知他有没有看见我，可我知道只要他在，我就不能留——我起初对十字军的一切感受，全碎了。~
+ ~GlobalGT("bd_plot","global",169)~ + ~尊敬的赫弗南兄弟。我在桥上见过他。~ + shininglady5
+ ~GlobalLT("bd_plot","global",170) CheckStatGT(Player1,13,INT)~ + ~照我记，那必是赫弗南那个人，做凯拉的副手。~ + shininglady5
+ ~GlobalLT("bd_plot","global",170) CheckStatLT(Player1,14,INT)~ + ~他是谁？~ + shininglady6
++ ~这会儿说得够多了。~ EXIT
END

IF ~~ shininglady4
SAY ~别疑我，<CHARNAME>——只要证明你走在正道上，我对你的忠就不会变。再说……我横竖也不会回十字军去。~
++ ~为什么不？~ + shininglady3
++ ~我听够了。继续走。~ EXIT
END

IF ~~ shininglady5
SAY ~那时我不知他是谁，也从他身上觉不出什么——可我知道他不可信。他那架势像是十字军全在他掌控之下——不是凯拉的。~
= ~我早不存加入十字军的幻想了。我怕我的服侍会是为一个黑暗的因由，不管这十字军表面上是什么。~
= ~就算我如今有疑，改道也已太晚。你不必疑我的忠，<CHARNAME>。我站在你这边。~
IF ~~ EXIT
END

IF ~~ shininglady6
SAY ~事后我才知道他是谁——尊敬的赫弗南兄弟，一个做凯拉副手的祭司。~
IF ~~ + shininglady5
END

IF ~~ hephernaan
SAY ~有可能，我也想过……可我的想法不过是猜测。我没有凭证说赫弗南不是他所自称的那样——我的圣武士本事从他身上觉不出恶。可他自称侍奉众神，这近乎亵渎……至少，他是个异端，话里尽是毒。~
= ~我不怀疑这人不止表面的样子，也是十字军残暴的因由之一；可这改变不了我们真正的敌人是凯拉·阿金特。关于这个我怕没什么可多说的了，<CHARNAME>……至少眼下。~
IF ~~ EXIT
END

IF ~~ aasimar
SAY ~这……是个有意思的揭示。我对十字军的看法没怎么变，可对凯拉本人……这就复杂了。~
= ~听说凯拉是巴尔之子的传言时，我心里有一部分以为会遇上一个萨拉沃克第二，一样的野心，哪怕不一般的残忍。~
= ~如今知道影响她的不是巴尔的头，我就在想她所作所为是否真是为个高尚的目的……还是更像对正义的冒犯。~
++ ~你信她说的话么，关于救龙矛堡战事的受难者？~ + aasimar1
++ ~你想太多了。我们来是为了了结十字军，不是来琢磨它的万一。~ + aasimar2
++ ~我也不知道。不管怎样，我们该继续走。~ EXIT
END

IF ~~ aasimar1
SAY ~我当然不能肯定，可是……我相信她说的是实话。照我所知的她的品性，这种事她不会撒谎。值不值得这代价……不，在那一点上我不能同意她。~
++ ~那么，容无辜的魂受苦就对么？~ + aasimar3
++ ~我们说够了。继续走。~ EXIT
END

IF ~~ aasimar2
SAY ~是，你说得对。凯拉的动机也许高尚，可她的作为给剑湾带来了乱与苦——这一点我不能容。~
IF ~~ + aasimar3
END

IF ~~ aasimar3
SAY ~龙矛堡战事里发生的事很可怕；若凯拉所言属实，我愿意尽我所能去解救那些受煎熬的魂，可是……把战争带到这土地上解决不了什么。而她要以武力夺回那些魂……只会招来灾祸。~
= ~若能劝凯拉放下这疯念，我一眨眼就会抓住那机会。不过……也许只有你能叫她明白她造成的苦。~
++ ~我但愿我能。可照她的性子，我怕不容易。~ + aasimar4
++ ~我更愿意一剑穿她的心，了结她的十字军。~ + aasimar5
++ ~你太乐观了，这于你无益。~ + aasimar6
++ ~也许有可能。我们就接着走，看看再说。~ EXIT
END

IF ~~ aasimar4
SAY ~是，她像是那种决绝的人……在更太平的境况里，我本会敬佩她。就算她造成了这一切，我仍能给她几分敬意。~
IF ~~ + aasimar7
END

IF ~~ aasimar5
SAY ~那也许就是仅剩的选择，是。真可惜……像凯拉这样的人本可成为英雄，甚至成为传说……可我们却站在她对面，而理在我们这边。~
IF ~~ + aasimar7
END

IF ~~ aasimar6
SAY ~也许吧。我只希望这一切了结之后我还能如此。~
IF ~~ EXIT
END

IF ~~ aasimar7
SAY ~男女们为正义之名能变成什么，真是怪事……~
IF ~~ EXIT
END

IF ~~ greatsword
SAY ~（微笑）我说了你可别笑，那是因我很久以前读的书的影响——书里讲古代的英雄手执圣复仇者，对抗下层层面的魔鬼。~
= ~一个孩子气的梦……想看见那样一把传说中的剑握在我手里。我开始练，就是想让这梦成真。等我长大了，才明白使一把剑真正意味着什么。~
++ ~也许你总有一天真能使上一把。~ + greatsword1
+ ~CheckStatGT(Player1,13,INT)~ + ~可圣复仇者不都是双手大剑。照我记，塞拉·苏玛特是柄长剑，不是么？~ + greatsword2
+ ~CheckStatLT(Player1,14,INT)~ + ~可为什么偏偏是双手大剑？圣复仇者尺寸有许多。~ + greatsword2
++ ~我明白了。我想知道的就这些。~ EXIT
END

IF ~~ greatsword1
SAY ~我承认，有时我仍希望我能，哪怕只为更好地护我发誓要护的人……我知道贪求力量有多危险，可是……我常不满足于我现有的力量。~
IF ~~ EXIT
END

IF ~~ greatsword2
SAY ~不错。我读过传说里塞拉·苏玛特的故事。也许我若先知道它，本会改选长剑加盾。~
= ~我头一回知道圣复仇者，是从那柄圣剑卡索米尔的故事里……小时候的我常梦想亲手握着它。~
IF ~~ + greatsword1
END

IF ~~ ranged
SAY ~是，我小时候就知道，冬天有时非打猎不可。伊尔梅特的教会少有捐施，祭司们买不起肉。~
= ~我有夜视，夜里射野物有天赋。那是我为神殿能做的许多事之一。~
++ ~那为什么我从没见你使过弓？~ + ranged1
++ ~我明白了。眼下就到这儿。~ EXIT
END

IF ~~ ranged1
SAY ~那是我誓愿之一。我发誓要以堂堂正正的战斗面对敌人，永不自远处下手。~
++ ~是照看你的人叫你发那誓的么？~ + ranged2
++ ~这太蠢了。~ + ranged3
++ ~我明白了。眼下就到这儿。~ EXIT
END

IF ~~ ranged2
SAY ~不，那是我自己选的。我发什么誓还留了些自由……而这一条，是我头一回见过战场之后自己立的。~
IF ~~ DO ~SetGlobal("C02SirenePID7","GLOBAL",1)~ + ranged4
END

IF ~~ ranged3
SAY ~它看着也许不实用，<CHARNAME>，可等你知道我的缘由，也许就懂了。~
IF ~~ DO ~SetGlobal("C02SirenePID7","GLOBAL",1)~ + ranged4
END

IF ~~ ranged4
SAY ~我头几回杀人都是用弓，自远处……因为我怕面对着他们死。我头一回被逼着用刀杀人时，我才明白打猎与杀人的分别。~
= ~对手眼里的怕死，连同他们死前受的痛……叫我震骇。起初我希望再不要这么做……可当我明白那一瞬对我有什么影响，我就知道我必须再去面对它……不管它多叫我怕。我必须*知道*杀人意味着什么，好叫我去恨它、躲它。~
= ~自那以后，我立誓再不拿起弓。那是个艰难的决定……可就算到如今，不管战场的惨状多少次在梦里回来找我，我也不后悔。~
IF ~~ EXIT
END

IF ~~ chastity
SAY ~你——你问这个做什么，<CHARNAME>？~
+ ~OR(2)
Global("C02SireneRomanceActive","GLOBAL",1)
Global("C02SireneRomanceActive","GLOBAL",2)~ + ~我好奇。~ + chastity1
+ ~!Global("C02SireneRomanceActive","GLOBAL",1)
!Global("C02SireneRomanceActive","GLOBAL",2)~ + ~我好奇。~ + chastity2
++ ~算了。我没兴趣。~ EXIT
END

IF ~~ chastity1
SAY ~我……有些事还是不直问为好，<CHARNAME>。~
IF ~~ + chastity2
END

IF ~~ chastity2
SAY ~不，我……我没有。有些信仰要求这个，也许也有伊尔梅特信徒要求，可……没人要求我这么做。~
= ~伊尔梅特的教会并不谴责……亲近，只教我们别让它叫我们懈怠，或叫我们怕受苦。我考虑过发那誓，可我怕它会断了我得着情爱的机会。~
= ~我那时是个蠢丫头。后来我才明白，爱也能用别的方式表示……*脸红* 恕我。我走神了。~
IF ~OR(2)
Global("C02SireneRomanceActive","GLOBAL",1)
Global("C02SireneRomanceActive","GLOBAL",2)~ + chastity3
IF ~~ EXIT
END

IF ~~ chastity3
SAY ~有时候……我为自己做的那个选择高兴，好叫我能活得没有某些……悔意。~
IF ~~ EXIT
END

IF ~~ postcrusade
SAY ~我……还没想过那个。也许我会接着走我的路……跟你一起，若你允许。~
+ ~OR(2)
Global("C02SireneRomanceActive","GLOBAL",1)
Global("C02SireneRomanceActive","GLOBAL",2)~ + ~我要的不过如此。~ + postcrusade1
+ ~!Global("C02SireneRomanceActive","GLOBAL",1)
!Global("C02SireneRomanceActive","GLOBAL",2)~ + ~我要的不过如此。~ + postcrusade2
++ ~也许吧。什么都先别排除。~ + postcrusade3
++ ~我想不必。我们最好各走各的。~ + postcrusade4
END

IF ~~ postcrusade1
SAY ~你肯允许我，我很高兴，<CHARNAME>。那么也许等我们担子没那么重的时候，我们可以多谈谈我们的……情谊。~
IF ~~ EXIT
END

IF ~~ postcrusade2
SAY ~你抬举我了，<CHARNAME>。我真心感激你的友谊。~
IF ~~ EXIT
END

IF ~~ postcrusade3
SAY ~随你说，<CHARNAME>。你若拒绝，我不怪你……不过我怀疑我找不着另一个这样肯接纳我的人。~
IF ~~ EXIT
END

IF ~~ postcrusade4
SAY ~我明白了……这是你该做的决断，虽也可惜。我怀疑我找不着另一个这样肯接纳我的人。~
IF ~~ EXIT
END

IF ~~ brimstone
SAY ~这把剑？是，有……可那不是我乐意记起的事。那是很久以前从一个敌人手里夺来的，为的是血与复仇……我至今还带着那场仗的疤。也许改日，这故事会好讲些。~
= ~我对这剑没什么情分，你若想要，我就换一把——说实话，我倒愿意。铁荒那阵它是把好兵器，可握着它总叫我不自在，像是它在吸我的命。~
= ~可它对旁人没多大用……除非他们像我一样有魔血。你别自己去碰它，<CHARNAME>——你一试就会受伤。~
IF ~~ EXIT
END

IF ~~ ilmater
SAY ~这是实情，<CHARNAME>。我们这一支教派人比海尔姆或托姆的少，可任何信仰都总需要战士……护我们自己的人，护需要的人。~
= ~虽说世人对伊尔梅特信徒有误解，我们并不是无缘无故地受苦。我教中有许多主和的人会自伤以求更大的力量。我甘愿投身战阵，某种意义上也一样。虽说我打的因由主要是护旁人，可这举动本身给了我力量，去护旁人护不了的人。~
= ~我不能否认我盼着太平的日子，可是……我甘愿认下我会在它到来之前为服侍而倒下。若我活得够久，也许我会去泰瑟尔紫丘的达萨吉克堡，去寻我这一支教派的旁人，与我的兄弟姐妹们一起尽职。~
= ~可那还要过些时候，而我最先最要紧的，是服侍你。也许……我对于将来的梦，时候到了也会变。~
IF ~~ EXIT
END

IF ~~ love
SAY ~爱……说实话，我不知道。从前我也许以为我爱过，可是……如今？我不确定。~
++ ~那你从前有过情人？~ + love1
++ ~什么叫你改变了对爱的看法？~ + love2
++ ~也许我们改日再谈这个。~ EXIT
END

IF ~~ love1
SAY ~你若愿意那么叫，那就……是。你若在意这个，大可不必——那是很久以前了，那时我是另一个人，就算我想，也回不到从前的牵绊了……~
IF ~~ + love3
END

IF ~~ love2
SAY ~这问题难答，<CHARNAME>。有时候，情会变。人会变。而且……我遇见过值得用心的人。比如……~
IF ~~ + love3
END

IF ~~ love3
SAY ~……恕我。这不是我乐意细谈的事。也许改日吧。~
IF ~~ EXIT
END

IF ~~ teaching
SAY ~她……嗯，也许对不在教中的人这难懂，可我会尽力说清。~
= ~痛之担承者伊玛提德问了我做伊尔梅特信徒侍从时所学的一切。我不觉得她试的是我的记性，而是我的信。~
= ~她问我，是否相信我在你麾下时是分毫不差地服侍哭泣之神。我答说是……我看不出她的反应。~
= ~然后她叫我诵忍耐与坚忍的颂词。我诵的时候，忽然觉出一种……“目的的清明”，好像单单因为记起，我就多经历了几分。~
= ~我想这一切于你必显得古怪又无关，<CHARNAME>；可我觉得经过这一遭我长了智慧……也更配服侍你了。~
IF ~~ EXIT
END

IF ~~ othertieflings
SAY ~有，很久以前。只那一个，可我从遇见他那里学到的……到今天还影响着我。~
= ~他是个恶人，一个残忍的奴贩和暴君。我差点死在他手里……可他给我上了一课，教我我的血能把我变成什么。我下定决心，绝不做他那样的人。~
= ~某种意义上，他与萨拉沃克并不两样。也许从那场要命的相遇里，我学到的许多东西跟你们一样。~
IF ~~ EXIT
END

END