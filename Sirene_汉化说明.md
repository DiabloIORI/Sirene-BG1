# Sirene NPC 汉化说明（BG:EE / EET）

方式：**就地替换原文件**（未另建输出目录，未改动 `Setup-Sirene.tp2`）。
所有被改文件同目录留 `.bak` 原文备份。

## 一、已汉化范围

| 位置 | 文件数 | 条数 |
|---|---|---|
| `dialogue\` + `dialogue\crossmod\`（.d，WeiDU CHAIN 语法） | 20 | 2,864 条台词（与 9 个 .baf 合计） |
| `scripts\`（.baf，`DisplayStringHead` / `SetPlayerSound`） | 9 | 同上 |
| `translations\english\sirene.tra` | 1 | 3 条（@0 / @1 / @2） |
| `lib\Martyr.tpa` | 1 | 12 处（法术名+说明、kit 名、help、briefdesc） |
| `lib\Sirene.tpa` | 1 | 42 处（bio、配音、物品/法术名与说明） |
| `lib\Sirene_sod.tpa` | 1 | 55 处（同类，含三件物品长说明） |

`.d`/`.baf` 实际改动 **29 个文件**（20 个 .d + 9 个 .baf），共 **2,864 条**台词。

## 二、刻意未动（都不是游戏内显示文字）

- `Setup-Sirene.tp2`：组件名、安装提示（安装器界面）
- `lib\a7#add_kit_ex.tpa`：第三方 ADD_KIT 库，报错文案进 DEBUG 日志
- `lib\liam_bgee_vars.tpa`：`%BGT_VAR%` 等变量定义
- 全部 resref / trigger / action / IDS / 2DA 引用、`SAY` 的键名、`.baf` 的 `RESPONSE #N`
- kit 内部标识：`lower = ~martyr~`、`kit_name = ~C0ILM~`（改则安装失败）
- `dialogue\c02sirej.d` 第 2353 行那条英文选项目前位于 `//` 注释内（已废弃行，不显示）

## 三、校验结果

- `~` 配对数：`.d`/`.baf` 全文 **9846 → 9846**；`Martyr.tpa` 134→134、`Sirene.tpa` 244→244、`Sirene_sod.tpa` 286→286
- 行数与原文一致（原有空行间隔全部保留，`blankline_mismatch=0`）
- 占位符 `<CHARNAME>`、`<PRO_*>`、`[C0SR0xx]` 等总数一致
- 标点：`~` 内中文全角，半角标点紧贴汉字 **0 处**（`punct_halfwidth=0`）
- 编码：UTF-8 无 BOM，CRLF 未变
- `tra` 的 `@N = ~…~` 结构、`@1`/`@2` 的多行与空行原样保留

## 四、主要译名

塞琳（Sirene）／伊尔梅特／哭泣之神／受苦圣战者／受难者（Martyr kit）／光辉之心／塔罗娜／提夫林／博德之门／铁王座／龙矛堡／光辉女士
法术与能力：牺牲（Sacrifice）／殉道（Martyrdom）／伊尔梅特之恩（Ilmater's Grace）／黑暗术，15尺半径
物品：硫磺 +1／痛之担承者护符／深渊板甲／叶织斗篷／银项链

## 五、安装提醒

EET 版 `lang\zh_CN\dialog.tlk` 需为 UTF-8。若 `HANDLE_CHARSETS` / `from_utf8 = 1` 在 UTF-8 源文件上失灵，注释掉该段即可（本机已验证）。
