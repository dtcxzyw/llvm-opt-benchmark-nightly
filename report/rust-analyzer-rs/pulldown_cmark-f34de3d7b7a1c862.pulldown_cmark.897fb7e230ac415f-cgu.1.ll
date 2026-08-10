inline.NumInlined: 350
inline.NumDeleted: 181
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_RNvNvNtNtNtCslLTI5cSnp8O_6memchr4arch6x86_646memchr10memchr_raw2FN = external local_unnamed_addr global { { { ptr } } }
@0 = private unnamed_addr constant [106 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/pulldown-cmark-0.9.6/src/scanners.rs\00", align 1
@1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"i\00\00\00\00\00\00\00\A8\00\00\00\1E\00\00\00" }>, align 8
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"i\00\00\00\00\00\00\00\06\01\00\00'\00\00\00" }>, align 8
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"i\00\00\00\00\00\00\00\B9\04\00\00>\00\00\00" }>, align 8
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"i\00\00\00\00\00\00\00\C7\04\00\00!\00\00\00" }>, align 8
@5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"i\00\00\00\00\00\00\00\BD\04\00\00\1A\00\00\00" }>, align 8
@6 = private unnamed_addr constant [7 x i8] c"address", align 1
@7 = private unnamed_addr constant [7 x i8] c"article", align 1
@8 = private unnamed_addr constant [5 x i8] c"aside", align 1
@9 = private unnamed_addr constant [4 x i8] c"base", align 1
@10 = private unnamed_addr constant [8 x i8] c"basefont", align 1
@11 = private unnamed_addr constant [10 x i8] c"blockquote", align 1
@12 = private unnamed_addr constant [4 x i8] c"body", align 1
@13 = private unnamed_addr constant [7 x i8] c"caption", align 1
@14 = private unnamed_addr constant [6 x i8] c"center", align 1
@15 = private unnamed_addr constant [3 x i8] c"col", align 1
@16 = private unnamed_addr constant [8 x i8] c"colgroup", align 1
@17 = private unnamed_addr constant [2 x i8] c"dd", align 1
@18 = private unnamed_addr constant [7 x i8] c"details", align 1
@19 = private unnamed_addr constant [6 x i8] c"dialog", align 1
@20 = private unnamed_addr constant [3 x i8] c"dir", align 1
@21 = private unnamed_addr constant [3 x i8] c"div", align 1
@22 = private unnamed_addr constant [2 x i8] c"dl", align 1
@23 = private unnamed_addr constant [2 x i8] c"dt", align 1
@24 = private unnamed_addr constant [8 x i8] c"fieldset", align 1
@25 = private unnamed_addr constant [10 x i8] c"figcaption", align 1
@26 = private unnamed_addr constant [6 x i8] c"figure", align 1
@27 = private unnamed_addr constant [6 x i8] c"footer", align 1
@28 = private unnamed_addr constant [4 x i8] c"form", align 1
@29 = private unnamed_addr constant [5 x i8] c"frame", align 1
@30 = private unnamed_addr constant [8 x i8] c"frameset", align 1
@31 = private unnamed_addr constant [2 x i8] c"h1", align 1
@32 = private unnamed_addr constant [2 x i8] c"h2", align 1
@33 = private unnamed_addr constant [2 x i8] c"h3", align 1
@34 = private unnamed_addr constant [2 x i8] c"h4", align 1
@35 = private unnamed_addr constant [2 x i8] c"h5", align 1
@36 = private unnamed_addr constant [2 x i8] c"h6", align 1
@37 = private unnamed_addr constant [4 x i8] c"head", align 1
@38 = private unnamed_addr constant [6 x i8] c"header", align 1
@39 = private unnamed_addr constant [2 x i8] c"hr", align 1
@40 = private unnamed_addr constant [4 x i8] c"html", align 1
@41 = private unnamed_addr constant [6 x i8] c"iframe", align 1
@42 = private unnamed_addr constant [6 x i8] c"legend", align 1
@43 = private unnamed_addr constant [2 x i8] c"li", align 1
@44 = private unnamed_addr constant [4 x i8] c"link", align 1
@45 = private unnamed_addr constant [4 x i8] c"main", align 1
@46 = private unnamed_addr constant [4 x i8] c"menu", align 1
@47 = private unnamed_addr constant [8 x i8] c"menuitem", align 1
@48 = private unnamed_addr constant [3 x i8] c"nav", align 1
@49 = private unnamed_addr constant [8 x i8] c"noframes", align 1
@50 = private unnamed_addr constant [2 x i8] c"ol", align 1
@51 = private unnamed_addr constant [8 x i8] c"optgroup", align 1
@52 = private unnamed_addr constant [6 x i8] c"option", align 1
@53 = private unnamed_addr constant [1 x i8] c"p", align 1
@54 = private unnamed_addr constant [5 x i8] c"param", align 1
@55 = private unnamed_addr constant [7 x i8] c"section", align 1
@56 = private unnamed_addr constant [6 x i8] c"source", align 1
@57 = private unnamed_addr constant [7 x i8] c"summary", align 1
@58 = private unnamed_addr constant [5 x i8] c"table", align 1
@59 = private unnamed_addr constant [5 x i8] c"tbody", align 1
@60 = private unnamed_addr constant [2 x i8] c"td", align 1
@61 = private unnamed_addr constant [5 x i8] c"tfoot", align 1
@62 = private unnamed_addr constant [2 x i8] c"th", align 1
@63 = private unnamed_addr constant [5 x i8] c"thead", align 1
@64 = private unnamed_addr constant [5 x i8] c"title", align 1
@65 = private unnamed_addr constant [2 x i8] c"tr", align 1
@66 = private unnamed_addr constant [5 x i8] c"track", align 1
@67 = private unnamed_addr constant [2 x i8] c"ul", align 1
@68 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @6, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @7, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @8, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @9, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @10, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @11, [8 x i8] c"\0A\00\00\00\00\00\00\00", ptr @12, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @13, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @14, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @15, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @16, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @17, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @18, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @19, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @20, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @21, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @22, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @23, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @24, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @25, [8 x i8] c"\0A\00\00\00\00\00\00\00", ptr @26, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @27, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @28, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @29, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @30, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @31, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @32, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @33, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @34, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @35, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @36, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @37, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @38, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @39, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @40, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @41, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @42, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @43, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @44, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @45, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @46, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @47, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @48, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @49, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @50, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @51, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @52, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @53, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @54, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @55, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @56, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @57, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @58, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @59, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @60, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @61, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @62, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @63, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @64, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @65, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @66, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @67, [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@69 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"i\00\00\00\00\00\00\00\D8\02\00\003\00\00\00" }>, align 8
@70 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"i\00\00\00\00\00\00\00\E2\02\00\009\00\00\00" }>, align 8
@71 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"i\00\00\00\00\00\00\00\E1\02\00\00\16\00\00\00" }>, align 8
@72 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"i\00\00\00\00\00\00\00\CF\02\00\00\16\00\00\00" }>, align 8
@73 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"i\00\00\00\00\00\00\00\85\02\00\009\00\00\00" }>, align 8
@74 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"i\00\00\00\00\00\00\00f\03\00\00\15\00\00\00" }>, align 8
@75 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"i\00\00\00\00\00\00\00\22\03\00\002\00\00\00" }>, align 8
@76 = private unnamed_addr constant [16 x i8] c"\00\00\00\00\FE\FF\00\FC\01\00\00\F8\01\00\00x", align 2
@77 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"i\00\00\00\00\00\00\00F\03\00\00\17\00\00\00" }>, align 8
@78 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"i\00\00\00\00\00\00\00\1A\03\00\00!\00\00\00" }>, align 8
@79 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"i\00\00\00\00\00\00\00\95\01\00\00\14\00\00\00" }>, align 8
@80 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"i\00\00\00\00\00\00\00T\02\00\00\16\00\00\00" }>, align 8
@81 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"i\00\00\00\00\00\00\00Q\02\00\00\1F\00\00\00" }>, align 8
@82 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"i\00\00\00\00\00\00\00j\02\00\003\00\00\00" }>, align 8
@83 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"i\00\00\00\00\00\00\00\1B\02\00\00\08\00\00\00" }>, align 8
@84 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"i\00\00\00\00\00\00\00\1F\02\00\00(\00\00\00" }>, align 8
@85 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"i\00\00\00\00\00\00\00\1E\02\00\00\13\00\00\00" }>, align 8
@86 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"i\00\00\00\00\00\00\00\12\04\00\00\1A\00\00\00" }>, align 8
@87 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"i\00\00\00\00\00\00\00\08\03\00\002\00\00\00" }>, align 8
@88 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"i\00\00\00\00\00\00\00\0D\02\00\00\1F\00\00\00" }>, align 8
@89 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"i\00\00\00\00\00\00\00\A7\03\00\00,\00\00\00" }>, align 8
@90 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"i\00\00\00\00\00\00\00\A4\03\00\006\00\00\00" }>, align 8
@91 = private unnamed_addr constant [2 x i8] c"> ", align 1
@92 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"i\00\00\00\00\00\00\00C\04\00\00,\00\00\00" }>, align 8
@93 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"i\00\00\00\00\00\00\007\04\00\006\00\00\00" }>, align 8
@94 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"i\00\00\00\00\00\00\001\04\00\008\00\00\00" }>, align 8
@95 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"i\00\00\00\00\00\00\000\04\00\001\00\00\00" }>, align 8
@96 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"i\00\00\00\00\00\00\00Y\04\00\00\1B\00\00\00" }>, align 8
@97 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"i\00\00\00\00\00\00\00a\04\00\00 \00\00\00" }>, align 8
@98 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"i\00\00\00\00\00\00\00\\\04\00\00\15\00\00\00" }>, align 8
@99 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"i\00\00\00\00\00\00\00V\04\00\00%\00\00\00" }>, align 8
@100 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"i\00\00\00\00\00\00\00*\04\00\00\1A\00\00\00" }>, align 8
@101 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"i\00\00\00\00\00\00\00%\04\00\00\1D\00\00\00" }>, align 8
@102 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"i\00\00\00\00\00\00\00$\04\00\00(\00\00\00" }>, align 8
@103 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"i\00\00\00\00\00\00\00\AE\01\00\00\14\00\00\00" }>, align 8
@104 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"i\00\00\00\00\00\00\00\AC\01\00\004\00\00\00" }>, align 8
@105 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"i\00\00\00\00\00\00\00\E1\04\00\00\22\00\00\00" }>, align 8
@106 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"i\00\00\00\00\00\00\00\DB\04\00\00\1E\00\00\00" }>, align 8
@107 = private unnamed_addr constant [6 x i8] c"CDATA[", align 1
@108 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"i\00\00\00\00\00\00\00\F2\04\00\005\00\00\00" }>, align 8
@109 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"i\00\00\00\00\00\00\00\EF\04\00\007\00\00\00" }>, align 8
@110 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"i\00\00\00\00\00\00\00\EE\04\00\00%\00\00\00" }>, align 8
@111 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"i\00\00\00\00\00\00\00\02\05\00\00\1E\00\00\00" }>, align 8
@112 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"i\00\00\00\00\00\00\00\01\05\00\00%\00\00\00" }>, align 8
@113 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"i\00\00\00\00\00\00\00\FC\04\00\00/\00\00\00" }>, align 8
@114 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"i\00\00\00\00\00\00\00\E8\03\00\00\1A\00\00\00" }>, align 8
@115 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"i\00\00\00\00\00\00\00\19\05\00\00\1A\00\00\00" }>, align 8
@116 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"i\00\00\00\00\00\00\00\17\05\00\001\00\00\00" }>, align 8
@117 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"i\00\00\00\00\00\00\00\85\03\00\00$\00\00\00" }>, align 8
@118 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"i\00\00\00\00\00\00\00\82\03\00\00.\00\00\00" }>, align 8
@119 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"i\00\00\00\00\00\00\00\8C\04\00\008\00\00\00" }>, align 8
@120 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"i\00\00\00\00\00\00\00p\04\00\00!\00\00\00" }>, align 8
@121 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"i\00\00\00\00\00\00\00\DE\03\00\00\1F\00\00\00" }>, align 8
@122 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"i\00\00\00\00\00\00\00\C6\03\00\00'\00\00\00" }>, align 8
@123 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"i\00\00\00\00\00\00\00\CC\03\00\00+\00\00\00" }>, align 8
@124 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"i\00\00\00\00\00\00\00\D4\03\00\00'\00\00\00" }>, align 8

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable
define hidden noundef i64 @_RINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2_19is_ascii_whitespaceEB4_(ptr noalias nofree noundef nonnull readonly captures(address) %0, i64 noundef range(i64 0, -9223372036854775808) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.b = icmp samesign eq i64 %1, 0
  br i1 %i.b, label %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterhENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB1I_19is_ascii_whitespaceE0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B33_5count0EB1K_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_19is_ascii_whitespaceE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i
  %.sroa.01.018.i.i.i = phi i64 [ %i.f, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_19is_ascii_whitespaceE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.c = phi ptr [ %i.e, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_19is_ascii_whitespaceE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i ], [ %0, %bb.a ] ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !alias.scope !4, !noalias !7, !noundef !15
  switch i8 %i.d, label %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterhENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB1I_19is_ascii_whitespaceE0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B33_5count0EB1K_.exit [
    i8 32, label %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_19is_ascii_whitespaceE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i
    i8 13, label %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_19is_ascii_whitespaceE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i
    i8 12, label %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_19is_ascii_whitespaceE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i
    i8 11, label %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_19is_ascii_whitespaceE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i
    i8 10, label %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_19is_ascii_whitespaceE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i
    i8 9, label %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_19is_ascii_whitespaceE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i
  ]

_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_19is_ascii_whitespaceE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i, %.lr.ph.i.i.i, %.lr.ph.i.i.i, %.lr.ph.i.i.i, %.lr.ph.i.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  %i.f = add nuw nsw i64 %.sroa.01.018.i.i.i, 1
  %i.g = icmp eq ptr %i.e, %i.a
  br i1 %i.g, label %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterhENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB1I_19is_ascii_whitespaceE0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B33_5count0EB1K_.exit, label %.lr.ph.i.i.i

_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterhENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB1I_19is_ascii_whitespaceE0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B33_5count0EB1K_.exit: ; preds = %.lr.ph.i.i.i, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_19is_ascii_whitespaceE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i, %bb.a
  %.sroa.0.1.i.i = phi i64 [ 0, %bb.a ], [ %.sroa.01.018.i.i.i, %.lr.ph.i.i.i ], [ %1, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_19is_ascii_whitespaceE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i ]
  ret i64 %.sroa.0.1.i.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_rev_whileNCNCNvMNtB4_9firstpassNtB14_9FirstPass10parse_line00EB4_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3rev3RevINtNtNtBc_5slice4iter4IterhEENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_rev_whileNCNCNvMNtB21_9firstpassNtB31_9FirstPass10parse_line00E0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3O_5count0EB21_.exit:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %1
  store ptr %0, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.c, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i8 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr %i.a, ptr %i.f, align 8
  %i.g = call { i64, i64 } @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters3revINtB5_3RevINtNtNtBb_5slice4iter4IterhEENtNtNtB9_6traits8iterator8Iterator8try_foldjNCINvNvXs0_NtB7_10take_whileINtB2i_9TakeWhileppEB1p_8try_fold5checkRhjINtNtNtBb_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_rev_whileNCNCNvMNtB45_9firstpassNtB55_9FirstPass10parse_line00E0NCINvMB3i_B3f_10wrap_mut_2jB3c_NCNvYIB2A_BM_B3Y_EB1p_5count0E0E0INtNtB3k_12control_flow11ControlFlowB3f_jEEB45_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b, i64 noundef 0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f, ptr noalias nofree noundef nonnull dereferenceable(1) %i.e)
  %i.h = extractvalue { i64, i64 } %i.g, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_rev_whileNCNvMNtB4_9firstpassNtB12_9FirstPass17parse_atx_headings2_0EB4_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3rev3RevINtNtNtBc_5slice4iter4IterhEENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_rev_whileNCNvMNtB21_9firstpassNtB2Z_9FirstPass17parse_atx_headings2_0E0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3V_5count0EB21_.exit:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %1
  store ptr %0, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.c, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i8 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr %i.a, ptr %i.f, align 8
  %i.g = call { i64, i64 } @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters3revINtB5_3RevINtNtNtBb_5slice4iter4IterhEENtNtNtB9_6traits8iterator8Iterator8try_foldjNCINvNvXs0_NtB7_10take_whileINtB2i_9TakeWhileppEB1p_8try_fold5checkRhjINtNtNtBb_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_rev_whileNCNvMNtB45_9firstpassNtB53_9FirstPass17parse_atx_headings2_0E0NCINvMB3i_B3f_10wrap_mut_2jB3c_NCNvYIB2A_BM_B3Y_EB1p_5count0E0E0INtNtB3k_12control_flow11ControlFlowB3f_jEEB45_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b, i64 noundef 0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f, ptr noalias nofree noundef nonnull dereferenceable(1) %i.e)
  %i.h = extractvalue { i64, i64 } %i.g, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_rev_whileNCNvNtB4_9firstpass48extract_attribute_block_content_from_header_text0EB4_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3rev3RevINtNtNtBc_5slice4iter4IterhEENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_rev_whileNCNvNtB21_9firstpass48extract_attribute_block_content_from_header_text0E0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B46_5count0EB21_.exit:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %1
  store ptr %0, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.c, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i8 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr %i.a, ptr %i.f, align 8
  %i.g = call { i64, i64 } @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters3revINtB5_3RevINtNtNtBb_5slice4iter4IterhEENtNtNtB9_6traits8iterator8Iterator8try_foldjNCINvNvXs0_NtB7_10take_whileINtB2i_9TakeWhileppEB1p_8try_fold5checkRhjINtNtNtBb_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_rev_whileNCNvNtB45_9firstpass48extract_attribute_block_content_from_header_text0E0NCINvMB3i_B3f_10wrap_mut_2jB3c_NCNvYIB2A_BM_B3Y_EB1p_5count0E0E0INtNtB3k_12control_flow11ControlFlowB3f_jEEB45_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b, i64 noundef 0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f, ptr noalias nofree noundef nonnull dereferenceable(1) %i.e)
  %i.h = extractvalue { i64, i64 } %i.g, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_rev_whileNCNvNtB4_9firstpass48extract_attribute_block_content_from_header_texts_0EB4_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3rev3RevINtNtNtBc_5slice4iter4IterhEENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_rev_whileNCNvNtB21_9firstpass48extract_attribute_block_content_from_header_texts_0E0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B48_5count0EB21_.exit:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %1
  store ptr %0, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.c, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i8 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr %i.a, ptr %i.f, align 8
  %i.g = call { i64, i64 } @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters3revINtB5_3RevINtNtNtBb_5slice4iter4IterhEENtNtNtB9_6traits8iterator8Iterator8try_foldjNCINvNvXs0_NtB7_10take_whileINtB2i_9TakeWhileppEB1p_8try_fold5checkRhjINtNtNtBb_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_rev_whileNCNvNtB45_9firstpass48extract_attribute_block_content_from_header_texts_0E0NCINvMB3i_B3f_10wrap_mut_2jB3c_NCNvYIB2A_BM_B3Y_EB1p_5count0E0E0INtNtB3k_12control_flow11ControlFlowB3f_jEEB45_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b, i64 noundef 0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f, ptr noalias nofree noundef nonnull dereferenceable(1) %i.e)
  %i.h = extractvalue { i64, i64 } %i.g, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_rev_whileNvB2_19is_ascii_whitespaceEB4_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3rev3RevINtNtNtBc_5slice4iter4IterhEENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_rev_whileNvB1Z_19is_ascii_whitespaceE0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3o_5count0EB21_.exit:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %1
  store ptr %0, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.c, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i8 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr %i.a, ptr %i.f, align 8
  %i.g = call { i64, i64 } @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters3revINtB5_3RevINtNtNtBb_5slice4iter4IterhEENtNtNtB9_6traits8iterator8Iterator8try_foldjNCINvNvXs0_NtB7_10take_whileINtB2i_9TakeWhileppEB1p_8try_fold5checkRhjINtNtNtBb_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_rev_whileNvB43_19is_ascii_whitespaceE0NCINvMB3i_B3f_10wrap_mut_2jB3c_NCNvYIB2A_BM_B3Y_EB1p_5count0E0E0INtNtB3k_12control_flow11ControlFlowB3f_jEEB45_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b, i64 noundef 0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f, ptr noalias nofree noundef nonnull dereferenceable(1) %i.e)
  %i.h = extractvalue { i64, i64 } %i.g, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_rev_whileNvB2_25is_ascii_whitespace_no_nlEB4_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3rev3RevINtNtNtBc_5slice4iter4IterhEENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_rev_whileNvB1Z_25is_ascii_whitespace_no_nlE0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3u_5count0EB21_.exit:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %1
  store ptr %0, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.c, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i8 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr %i.a, ptr %i.f, align 8
  %i.g = call { i64, i64 } @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters3revINtB5_3RevINtNtNtBb_5slice4iter4IterhEENtNtNtB9_6traits8iterator8Iterator8try_foldjNCINvNvXs0_NtB7_10take_whileINtB2i_9TakeWhileppEB1p_8try_fold5checkRhjINtNtNtBb_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_rev_whileNvB43_25is_ascii_whitespace_no_nlE0NCINvMB3i_B3f_10wrap_mut_2jB3c_NCNvYIB2A_BM_B3Y_EB1p_5count0E0E0INtNtB3k_12control_flow11ControlFlowB3f_jEEB45_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b, i64 noundef 0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f, ptr noalias nofree noundef nonnull dereferenceable(1) %i.e)
  %i.h = extractvalue { i64, i64 } %i.g, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 %i.h
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCsbNU0JlWw3cF_14pulldown_cmark9AlignmentEEB1a_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCsbNU0JlWw3cF_14pulldown_cmark9AlignmentENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCsbNU0JlWw3cF_14pulldown_cmark9AlignmentENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtCsbNU0JlWw3cF_14pulldown_cmark9AlignmentEEB1h_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCsbNU0JlWw3cF_14pulldown_cmark9AlignmentENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtCsbNU0JlWw3cF_14pulldown_cmark9AlignmentEEB1h_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECsbNU0JlWw3cF_14pulldown_cmark(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsbNU0JlWw3cF_14pulldown_cmark(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsbNU0JlWw3cF_14pulldown_cmark(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVechEECsbNU0JlWw3cF_14pulldown_cmark.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsbNU0JlWw3cF_14pulldown_cmark(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #14
  unreachable

end_hunk_0
begin_hunk_1_@_RNvMNtCsbNU0JlWw3cF_14pulldown_cmark8scannersNtB2_9LineStart16scan_list_marker:bb.a
  br label %bb.n

bb.n:                                             ; preds = %.preheader, %bb.t
  %.sroa.01.026.i = phi i32 [ %.sroa.01.1.i, %bb.t ], [ 0, %.preheader ] ; 4 uses
  %.sroa.03.025.i = phi i64 [ %i.bk, %bb.t ], [ 0, %.preheader ] ; 6 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.sroa.03.025.i
  %i.bb = load i8, ptr %i.ba, align 1, !alias.scope !48, !noundef !15 ; 3 uses
  switch i8 %i.bb, label %bb.o [
    i8 10, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners8scan_eol.exit.i
    i8 13, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  %i.bc = icmp eq i8 %i.bb, %i.al
  br i1 %i.bc, label %bb.s, label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.bd = sub nuw nsw i64 %i.ay, %.sroa.03.025.i
  %.not.i.i46 = icmp eq i64 %i.bd, 1
  br i1 %.not.i.i46, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners8scan_eol.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.be = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.sroa.03.025.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  %i.bg = load i8, ptr %i.bf, align 1, !alias.scope !51, !noundef !15
  %i.bh = icmp eq i8 %i.bg, 10
  %spec.select.i.i = select i1 %i.bh, i64 2, i64 1
  br label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners8scan_eol.exit.i

_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners8scan_eol.exit.i: ; preds = %bb.n, %bb.q, %bb.p
  %.sroa.0.0.i.i = phi i64 [ 1, %bb.p ], [ %spec.select.i.i, %bb.q ], [ 1, %bb.n ]
  %i.bi = add nuw i64 %.sroa.0.0.i.i, %.sroa.03.025.i
  br label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_hrule.exit

bb.r:                                             ; preds = %bb.o
  switch i8 %i.bb, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_hrule.exit.thread [
    i8 32, label %bb.t
    i8 9, label %bb.t
  ]

bb.s:                                             ; preds = %bb.o
  %i.bj = add i32 %.sroa.01.026.i, 1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.r
  %.sroa.01.1.i = phi i32 [ %i.bj, %bb.s ], [ %.sroa.01.026.i, %bb.r ], [ %.sroa.01.026.i, %bb.r ] ; 2 uses
  %i.bk = add nuw nsw i64 %.sroa.03.025.i, 1      ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bk, %i.ay
  br i1 %exitcond.not.i, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_hrule.exit, label %bb.n

_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_hrule.exit: ; preds = %bb.t, %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners8scan_eol.exit.i
  %.sroa.01.018.i = phi i32 [ %.sroa.01.026.i, %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners8scan_eol.exit.i ], [ %.sroa.01.1.i, %bb.t ]
  %.sroa.03.1.i = phi i64 [ %i.bi, %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners8scan_eol.exit.i ], [ %i.ay, %bb.t ]
  %i.bl = icmp slt i32 %.sroa.01.018.i, 3
  br i1 %i.bl, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_hrule.exit.thread, label %bb.u

_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_hrule.exit.thread: ; preds = %bb.r, %bb.m, %bb.l, %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_hrule.exit
  %.sroa.6.0.i49 = phi i64 [ %.sroa.03.1.i, %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_hrule.exit ], [ 0, %bb.l ], [ 0, %bb.m ], [ %.sroa.03.025.i, %bb.r ]
  store i64 %.sroa.6.0.i49, ptr %i.j, align 8
  br label %bb.h

bb.u:                                             ; preds = %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_hrule.exit
  store i64 %i.e, ptr %i.d, align 8
  store i64 %i.i, ptr %i.h, align 8
  store i64 0, ptr %0, align 8
  br label %bb.ac

_RNvMNtCsbNU0JlWw3cF_14pulldown_cmark8scannersNtB2_9LineStart10scan_space.exit.thread: ; preds = %bb.k, %bb.j, %bb.h, %bb.v, %bb.v
  %i.bm = sub i64 6, %.sroa.0.0.lcssa.i.i
  tail call fastcc void @_RNvMNtCsbNU0JlWw3cF_14pulldown_cmark8scannersNtB2_9LineStart18finish_list_marker(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1, i8 noundef %i.al, i64 noundef 0, i64 noundef %i.bm)
  br label %bb.ac

bb.v:                                             ; preds = %bb.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.an
  %i.bo = load i8, ptr %i.bn, align 1, !noundef !15
  switch i8 %i.bo, label %.loopexit [
    i8 13, label %_RNvMNtCsbNU0JlWw3cF_14pulldown_cmark8scannersNtB2_9LineStart10scan_space.exit.thread
    i8 10, label %_RNvMNtCsbNU0JlWw3cF_14pulldown_cmark8scannersNtB2_9LineStart10scan_space.exit.thread
  ]

bb.w:                                             ; preds = %bb.g
  %i.bp = add nuw i64 %i.ag, 1                    ; 2 uses
  %i.bq = icmp ult i64 %i.bp, %i.c
  br i1 %i.bq, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.w
  %i.br = zext nneg i8 %i.am to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.y
  %.sroa.020.066 = phi i64 [ %i.by, %bb.y ], [ %i.br, %.lr.ph.preheader ] ; 2 uses
  %.sroa.015.065 = phi i64 [ %i.bu, %bb.y ], [ %i.bp, %.lr.ph.preheader ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.015.065
  %i.bt = load i8, ptr %i.bs, align 1, !noundef !15 ; 3 uses
  %i.bu = add nuw i64 %.sroa.015.065, 1           ; 4 uses
  %i.bv = add i8 %i.bt, -48                       ; 2 uses
  %or.cond1 = icmp ult i8 %i.bv, 10
  br i1 %or.cond1, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.lr.ph
  switch i8 %i.bt, label %.loopexit [
    i8 41, label %bb.z
    i8 46, label %bb.z
  ]

bb.y:                                             ; preds = %.lr.ph
  %i.bw = mul i64 %.sroa.020.066, 10
  %i.bx = zext nneg i8 %i.bv to i64
  %i.by = add i64 %i.bw, %i.bx
  %i.bz = icmp ult i64 %i.bu, %i.c
  %i.ca = sub i64 %i.bu, %i.ag
  %i.cb = icmp samesign ult i64 %i.ca, 10
  %or.cond36 = and i1 %i.bz, %i.cb
  br i1 %or.cond36, label %.lr.ph, label %.loopexit

bb.z:                                             ; preds = %bb.x, %bb.x
  store i64 %i.bu, ptr %i.f, align 8
  %i.cc = tail call noundef zeroext i1 @_RNvMNtCsbNU0JlWw3cF_14pulldown_cmark8scannersNtB2_9LineStart10scan_space(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, i64 noundef 1)
  %.pre = load i64, ptr %i.f, align 8             ; 3 uses
  %i.cd = load i64, ptr %i.b, align 8
  %i.ce = icmp uge i64 %.pre, %i.cd
  %or.cond117.not = select i1 %i.cc, i1 true, i1 %i.ce
  br i1 %or.cond117.not, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.ab, %bb.ab, %bb.z
  %i.cf = sub i64 %i.ah, %i.ag
  %i.cg = add i64 %i.cf, %.pre
  tail call fastcc void @_RNvMNtCsbNU0JlWw3cF_14pulldown_cmark8scannersNtB2_9LineStart18finish_list_marker(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1, i8 noundef %i.bt, i64 noundef %.sroa.020.066, i64 noundef %i.cg)
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.ch = load ptr, ptr %1, align 8, !nonnull !15, !noundef !15
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.pre
  %i.cj = load i8, ptr %i.ci, align 1, !noundef !15
  switch i8 %i.cj, label %.loopexit [
    i8 13, label %bb.aa
    i8 10, label %bb.aa
  ]

bb.ac:                                            ; preds = %bb.u, %_RNvMNtCsbNU0JlWw3cF_14pulldown_cmark8scannersNtB2_9LineStart10scan_space.exit.thread, %bb.aa, %.loopexit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtCsbNU0JlWw3cF_14pulldown_cmark8scannersNtB2_9LineStart18finish_list_marker(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(48) %1, i8 noundef %2, i64 noundef %3, i64 noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !15, !noundef !15 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !15 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !15 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !15 ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !noundef !15 ; 4 uses
  %i.j = icmp ugt i64 %i.g, %i.c
  br i1 %i.j, label %bb.e, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  %i.k = sub nuw i64 %i.c, %i.g                   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.g ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54)
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.c
  %i.n = icmp eq i64 %i.c, %i.g
  br i1 %i.n, label %.loopexit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.b, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i.i
  %.sroa.01.018.i.i.i.i.i.i = phi i64 [ %i.r, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i.i ], [ 0, %bb.b ] ; 5 uses
  %i.o = phi ptr [ %i.q, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i.i ], [ %i.l, %bb.b ] ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !alias.scope !57, !noalias !64, !noundef !15
  switch i8 %i.p, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_whitespace_no_nl.exit.i [
    i8 9, label %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i.i
    i8 11, label %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i.i
    i8 12, label %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i.i
    i8 32, label %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i.i
  ]

_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 1 ; 2 uses
  %i.r = add nuw nsw i64 %.sroa.01.018.i.i.i.i.i.i, 1
  %i.s = icmp eq ptr %i.q, %i.m
  br i1 %i.s, label %.loopexit, label %.lr.ph.i.i.i.i.i.i

_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_whitespace_no_nl.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.t = icmp samesign ugt i64 %.sroa.01.018.i.i.i.i.i.i, %i.k
  br i1 %i.t, label %bb.d, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_whitespace_no_nl.exit.thread.i, !prof !72

_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_whitespace_no_nl.exit.thread.i: ; preds = %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_whitespace_no_nl.exit.i
  %i.u = icmp eq i64 %i.k, %.sroa.01.018.i.i.i.i.i.i
  br i1 %i.u, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_whitespace_no_nl.exit.thread.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sroa.01.018.i.i.i.i.i.i
  %i.w = load i8, ptr %i.v, align 1, !alias.scope !73, !noundef !15
  switch i8 %i.w, label %bb.f [
    i8 10, label %.loopexit
    i8 13, label %.loopexit
  ]

bb.d:                                             ; preds = %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_whitespace_no_nl.exit.i
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %.sroa.01.018.i.i.i.i.i.i, i64 noundef range(i64 0, -9223372036854775808) %i.k, i64 noundef range(i64 0, -9223372036854775808) %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #15, !noalias !54
  unreachable

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %i.g, i64 noundef %i.c, i64 noundef %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #15
  unreachable

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79)
  %..i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.i, i64 4) ; 3 uses
  %i.x = sub i64 %i.i, %..i.i.i
  store i64 %i.x, ptr %i.h, align 8, !alias.scope !82
  %.not9.i.i = icmp ugt i64 %i.i, 3
  br i1 %.not9.i.i, label %_RNvMNtCsbNU0JlWw3cF_14pulldown_cmark8scannersNtB2_9LineStart15scan_space_upto.exit.thread, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.f
  %i.y = icmp ult i64 %i.g, %i.c
  br i1 %i.y, label %.lr.ph.preheader, label %_RNvMNtCsbNU0JlWw3cF_14pulldown_cmark8scannersNtB2_9LineStart15scan_space_upto.exit

.lr.ph.preheader:                                 ; preds = %.lr.ph.i.i.preheader
  %i.z = sub nuw nsw i64 4, %..i.i.i
  br label %.lr.ph

.lr.ph.i.i:                                       ; preds = %bb.i
  %i.aa = icmp ult i64 %i.ao, %i.c
  br i1 %i.aa, label %.lr.ph, label %_RNvMNtCsbNU0JlWw3cF_14pulldown_cmark8scannersNtB2_9LineStart15scan_space_upto.exit.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph.i.i
  %i.ab = phi i64 [ %i.ao, %.lr.ph.i.i ], [ %i.g, %.lr.ph.preheader ] ; 4 uses
  %.sroa.0.010.i.i30 = phi i64 [ %.sroa.0.1.i.i, %.lr.ph.i.i ], [ %i.z, %.lr.ph.preheader ] ; 4 uses
  %i.ac = phi i64 [ %i.an, %.lr.ph.i.i ], [ %i.e, %.lr.ph.preheader ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ab
  %i.ae = load i8, ptr %i.ad, align 1, !noalias !82, !noundef !15
  switch i8 %i.ae, label %_RNvMNtCsbNU0JlWw3cF_14pulldown_cmark8scannersNtB2_9LineStart15scan_space_upto.exit.loopexit [
    i8 32, label %bb.g
    i8 9, label %bb.h
  ]

bb.g:                                             ; preds = %.lr.ph
  %i.af = add nuw i64 %i.ab, 1                    ; 2 uses
  store i64 %i.af, ptr %i.f, align 8, !alias.scope !82
  %i.ag = add i64 %.sroa.0.010.i.i30, -1
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph
  %i.ah = sub i64 %i.ab, %i.ac
  %i.ai = and i64 %i.ah, 3
  %i.aj = sub nuw nsw i64 4, %i.ai                ; 2 uses
  %i.ak = add nuw i64 %i.ab, 1                    ; 4 uses
  store i64 %i.ak, ptr %i.f, align 8, !alias.scope !82
  store i64 %i.ak, ptr %i.d, align 8, !alias.scope !82
  %..i8.i.i = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.0.010.i.i30, i64 %i.aj) ; 2 uses
  %i.al = sub i64 %.sroa.0.010.i.i30, %..i8.i.i
  %i.am = sub nsw i64 %i.aj, %..i8.i.i
  store i64 %i.am, ptr %i.h, align 8, !alias.scope !82
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.an = phi i64 [ %i.ac, %bb.g ], [ %i.ak, %bb.h ]
  %i.ao = phi i64 [ %i.af, %bb.g ], [ %i.ak, %bb.h ] ; 2 uses
  %.sroa.0.1.i.i = phi i64 [ %i.ag, %bb.g ], [ %i.al, %bb.h ] ; 3 uses
  %.not.i.i14 = icmp eq i64 %.sroa.0.1.i.i, 0
  br i1 %.not.i.i14, label %_RNvMNtCsbNU0JlWw3cF_14pulldown_cmark8scannersNtB2_9LineStart15scan_space_upto.exit.loopexit, label %.lr.ph.i.i

_RNvMNtCsbNU0JlWw3cF_14pulldown_cmark8scannersNtB2_9LineStart15scan_space_upto.exit.loopexit: ; preds = %.lr.ph.i.i, %.lr.ph, %bb.i
  %.sroa.0.0.lcssa.i.i.ph.ph = phi i64 [ 0, %bb.i ], [ %.sroa.0.1.i.i, %.lr.ph.i.i ], [ %.sroa.0.010.i.i30, %.lr.ph ]
  %i.ap = sub i64 4, %.sroa.0.0.lcssa.i.i.ph.ph
  br label %_RNvMNtCsbNU0JlWw3cF_14pulldown_cmark8scannersNtB2_9LineStart15scan_space_upto.exit

_RNvMNtCsbNU0JlWw3cF_14pulldown_cmark8scannersNtB2_9LineStart15scan_space_upto.exit: ; preds = %_RNvMNtCsbNU0JlWw3cF_14pulldown_cmark8scannersNtB2_9LineStart15scan_space_upto.exit.loopexit, %.lr.ph.i.i.preheader
  %.sroa.0.0.lcssa.i.i.ph = phi i64 [ %..i.i.i, %.lr.ph.i.i.preheader ], [ %i.ap, %_RNvMNtCsbNU0JlWw3cF_14pulldown_cmark8scannersNtB2_9LineStart15scan_space_upto.exit.loopexit ] ; 2 uses
  %i.aq = icmp ult i64 %.sroa.0.0.lcssa.i.i.ph, 4
  br i1 %i.aq, label %bb.j, label %_RNvMNtCsbNU0JlWw3cF_14pulldown_cmark8scannersNtB2_9LineStart15scan_space_upto.exit.thread

_RNvMNtCsbNU0JlWw3cF_14pulldown_cmark8scannersNtB2_9LineStart15scan_space_upto.exit.thread: ; preds = %bb.f, %_RNvMNtCsbNU0JlWw3cF_14pulldown_cmark8scannersNtB2_9LineStart15scan_space_upto.exit
  store i64 %i.e, ptr %i.d, align 8
  store i64 %i.g, ptr %i.f, align 8
  store i64 %i.i, ptr %i.h, align 8
  br label %.loopexit

bb.j:                                             ; preds = %_RNvMNtCsbNU0JlWw3cF_14pulldown_cmark8scannersNtB2_9LineStart15scan_space_upto.exit
  %i.ar = add i64 %.sroa.0.0.lcssa.i.i.ph, %4
  br label %.loopexit

.loopexit:                                        ; preds = %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i.i, %_RNvMNtCsbNU0JlWw3cF_14pulldown_cmark8scannersNtB2_9LineStart15scan_space_upto.exit.thread, %bb.j, %bb.b, %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_whitespace_no_nl.exit.thread.i, %bb.c, %bb.c
  %.sroa.0.0.sink = phi i64 [ %4, %bb.b ], [ %4, %_RNvMNtCsbNU0JlWw3cF_14pulldown_cmark8scannersNtB2_9LineStart15scan_space_upto.exit.thread ], [ %4, %bb.c ], [ %4, %bb.c ], [ %4, %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_whitespace_no_nl.exit.thread.i ], [ %i.ar, %bb.j ], [ %4, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.as, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %2, ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.0.0.sink, ptr %.sroa.510.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden noundef range(i8 0, 3) i8 @_RNvMNtCsbNU0JlWw3cF_14pulldown_cmark8scannersNtB2_9LineStart21scan_task_list_marker(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !15, !noundef !15 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !15 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !15 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !15 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !noundef !15 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86)
  %..i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.i, i64 3) ; 2 uses
  %i.j = sub i64 %i.i, %..i.i.i
  store i64 %i.j, ptr %i.h, align 8, !alias.scope !89
  %.not9.i.i = icmp ult i64 %i.i, 3
  %i.k = icmp ult i64 %i.g, %i.c
  %or.cond = and i1 %.not9.i.i, %i.k
  br i1 %or.cond, label %.lr.ph, label %_RNvMNtCsbNU0JlWw3cF_14pulldown_cmark8scannersNtB2_9LineStart15scan_space_upto.exit

.lr.ph:                                           ; preds = %bb.a
  %i.l = xor i64 %..i.i.i, 3
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %.lr.ph
  %i.m = phi i64 [ %i.g, %.lr.ph ], [ %i.z, %bb.e ] ; 5 uses
  %.sroa.0.010.i.i50 = phi i64 [ %i.l, %.lr.ph ], [ %.sroa.0.1.i.i, %bb.e ] ; 3 uses
  %i.n = phi i64 [ %i.e, %.lr.ph ], [ %i.y, %bb.e ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.m
  %i.p = load i8, ptr %i.o, align 1, !noalias !89, !noundef !15
  switch i8 %i.p, label %_RNvMNtCsbNU0JlWw3cF_14pulldown_cmark8scannersNtB2_9LineStart15scan_space_upto.exit [
    i8 32, label %bb.c
    i8 9, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.q = add nuw i64 %i.m, 1
  %i.r = add i64 %.sroa.0.010.i.i50, -1
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.s = sub i64 %i.m, %i.n
  %i.t = and i64 %i.s, 3
  %i.u = sub nuw nsw i64 4, %i.t                  ; 2 uses
  %i.v = add nuw i64 %i.m, 1                      ; 3 uses
  store i64 %i.v, ptr %i.d, align 8, !alias.scope !89
  %..i8.i.i = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.0.010.i.i50, i64 %i.u) ; 2 uses
  %i.w = sub i64 %.sroa.0.010.i.i50, %..i8.i.i
  %i.x = sub nsw i64 %i.u, %..i8.i.i
  store i64 %i.x, ptr %i.h, align 8, !alias.scope !89
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.y = phi i64 [ %i.n, %bb.c ], [ %i.v, %bb.d ]
  %i.z = phi i64 [ %i.q, %bb.c ], [ %i.v, %bb.d ] ; 3 uses
  %.sroa.0.1.i.i = phi i64 [ %i.r, %bb.c ], [ %i.w, %bb.d ] ; 2 uses
  %.not.i.i = icmp ne i64 %.sroa.0.1.i.i, 0
  %i.aa = icmp ult i64 %i.z, %i.c
  %or.cond54 = select i1 %.not.i.i, i1 %i.aa, i1 false
  br i1 %or.cond54, label %bb.b, label %_RNvMNtCsbNU0JlWw3cF_14pulldown_cmark8scannersNtB2_9LineStart15scan_space_upto.exit

_RNvMNtCsbNU0JlWw3cF_14pulldown_cmark8scannersNtB2_9LineStart15scan_space_upto.exit: ; preds = %bb.e, %bb.b, %bb.a
  %i.ab = phi i64 [ %i.g, %bb.a ], [ %i.z, %bb.e ], [ %i.m, %bb.b ] ; 5 uses
  %i.ac = icmp ult i64 %i.ab, %i.c
  br i1 %i.ac, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.g, %_RNvMNtCsbNU0JlWw3cF_14pulldown_cmark8scannersNtB2_9LineStart15scan_space_upto.exit
  store i64 %i.e, ptr %i.d, align 8
  br label %.sink.split

bb.g:                                             ; preds = %_RNvMNtCsbNU0JlWw3cF_14pulldown_cmark8scannersNtB2_9LineStart15scan_space_upto.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ab
  %i.ae = load i8, ptr %i.ad, align 1, !noundef !15
  %i.af = icmp eq i8 %i.ae, 91
  br i1 %i.af, label %bb.h, label %bb.f

bb.h:                                             ; preds = %bb.g
  %i.ag = add nuw i64 %i.ab, 1                    ; 2 uses
  %i.ah = icmp ult i64 %i.ag, %i.c
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ag
  %i.aj = load i8, ptr %i.ai, align 1, !noundef !15
  switch i8 %i.aj, label %bb.j [
    i8 9, label %bb.l
    i8 11, label %bb.l
    i8 12, label %bb.l
    i8 32, label %bb.l
    i8 120, label %bb.k
    i8 88, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i, %bb.h
  store i64 %i.e, ptr %i.d, align 8
  store i64 %i.g, ptr %i.f, align 8
  br label %.sink.split

bb.k:                                             ; preds = %bb.i, %bb.i
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.i, %bb.i, %bb.i, %bb.k
end_hunk_1
begin_hunk_2_@_RNvMNtCsbNU0JlWw3cF_14pulldown_cmark8scannersNtB2_9LineStart22scan_blockquote_marker:bb.a
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %.lr.ph
  %i.m = phi i64 [ %i.g, %.lr.ph ], [ %i.ab, %bb.e ] ; 5 uses
  %.sroa.0.010.i.i21 = phi i64 [ %i.l, %.lr.ph ], [ %.sroa.0.1.i.i, %bb.e ] ; 3 uses
  %i.n = phi i64 [ %i.e, %.lr.ph ], [ %i.aa, %bb.e ] ; 3 uses
  %i.o = phi i64 [ %i.j, %.lr.ph ], [ %i.z, %bb.e ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.m
  %i.q = load i8, ptr %i.p, align 1, !noalias !96, !noundef !15
  switch i8 %i.q, label %_RNvMNtCsbNU0JlWw3cF_14pulldown_cmark8scannersNtB2_9LineStart10scan_space.exit [
    i8 32, label %bb.c
    i8 9, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.r = add nuw i64 %i.m, 1
  %i.s = add i64 %.sroa.0.010.i.i21, -1
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.t = sub i64 %i.m, %i.n
  %i.u = and i64 %i.t, 3
  %i.v = sub nuw nsw i64 4, %i.u                  ; 2 uses
  %i.w = add nuw i64 %i.m, 1                      ; 3 uses
  store i64 %i.w, ptr %i.d, align 8, !alias.scope !96
  %..i8.i.i = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.0.010.i.i21, i64 %i.v) ; 2 uses
  %i.x = sub i64 %.sroa.0.010.i.i21, %..i8.i.i
  %i.y = sub nsw i64 %i.v, %..i8.i.i
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.z = phi i64 [ %i.o, %bb.c ], [ %i.y, %bb.d ] ; 2 uses
  %i.aa = phi i64 [ %i.n, %bb.c ], [ %i.w, %bb.d ] ; 2 uses
  %i.ab = phi i64 [ %i.r, %bb.c ], [ %i.w, %bb.d ] ; 3 uses
  %.sroa.0.1.i.i = phi i64 [ %i.s, %bb.c ], [ %i.x, %bb.d ] ; 2 uses
  %.not.i.i = icmp ne i64 %.sroa.0.1.i.i, 0
  %i.ac = icmp ult i64 %i.ab, %i.c
  %or.cond31 = select i1 %.not.i.i, i1 %i.ac, i1 false
  br i1 %or.cond31, label %bb.b, label %_RNvMNtCsbNU0JlWw3cF_14pulldown_cmark8scannersNtB2_9LineStart10scan_space.exit

_RNvMNtCsbNU0JlWw3cF_14pulldown_cmark8scannersNtB2_9LineStart10scan_space.exit: ; preds = %bb.e, %bb.b, %bb.a
  %.promoted15.i.i7 = phi i64 [ %i.e, %bb.a ], [ %i.aa, %bb.e ], [ %i.n, %bb.b ]
  %i.ad = phi i64 [ %i.j, %bb.a ], [ %i.z, %bb.e ], [ %i.o, %bb.b ] ; 2 uses
  %i.ae = phi i64 [ %i.g, %bb.a ], [ %i.ab, %bb.e ], [ %i.m, %bb.b ] ; 5 uses
  %i.af = icmp ult i64 %i.ae, %i.c
  br i1 %i.af, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.g, %_RNvMNtCsbNU0JlWw3cF_14pulldown_cmark8scannersNtB2_9LineStart10scan_space.exit
  store i64 %i.e, ptr %i.d, align 8
  br label %_RNvMNtCsbNU0JlWw3cF_14pulldown_cmark8scannersNtB2_9LineStart10scan_space.exit12

bb.g:                                             ; preds = %_RNvMNtCsbNU0JlWw3cF_14pulldown_cmark8scannersNtB2_9LineStart10scan_space.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ae
  %i.ah = load i8, ptr %i.ag, align 1, !noundef !15
  %i.ai = icmp eq i8 %i.ah, 62
  br i1 %i.ai, label %bb.h, label %bb.f

bb.h:                                             ; preds = %bb.g
  %i.aj = add nuw i64 %i.ae, 1                    ; 4 uses
  store i64 %i.aj, ptr %i.f, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !97)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100)
  %i.ak = icmp ne i64 %i.ad, 0                    ; 2 uses
  %..i.i.i3.neg = sext i1 %i.ak to i64
  %i.al = add i64 %i.ad, %..i.i.i3.neg
  store i64 %i.al, ptr %i.h, align 8, !alias.scope !103
  %i.am = icmp uge i64 %i.aj, %i.c
  %or.cond.not = select i1 %i.ak, i1 true, i1 %i.am
  br i1 %or.cond.not, label %_RNvMNtCsbNU0JlWw3cF_14pulldown_cmark8scannersNtB2_9LineStart10scan_space.exit12, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aj
  %i.ao = load i8, ptr %i.an, align 1, !noalias !103, !noundef !15
  switch i8 %i.ao, label %_RNvMNtCsbNU0JlWw3cF_14pulldown_cmark8scannersNtB2_9LineStart10scan_space.exit12 [
    i8 32, label %bb.j
    i8 9, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.ap = add nuw i64 %i.ae, 2
  store i64 %i.ap, ptr %i.f, align 8, !alias.scope !103
  br label %_RNvMNtCsbNU0JlWw3cF_14pulldown_cmark8scannersNtB2_9LineStart10scan_space.exit12

bb.k:                                             ; preds = %bb.i
  %i.aq = sub i64 %i.aj, %.promoted15.i.i7
  %i.ar = and i64 %i.aq, 3
  %i.as = add nuw i64 %i.ae, 2                    ; 2 uses
  store i64 %i.as, ptr %i.f, align 8, !alias.scope !103
  store i64 %i.as, ptr %i.d, align 8, !alias.scope !103
  %i.at = xor i64 %i.ar, 3
  store i64 %i.at, ptr %i.h, align 8, !alias.scope !103
  br label %_RNvMNtCsbNU0JlWw3cF_14pulldown_cmark8scannersNtB2_9LineStart10scan_space.exit12

_RNvMNtCsbNU0JlWw3cF_14pulldown_cmark8scannersNtB2_9LineStart10scan_space.exit12: ; preds = %bb.i, %bb.k, %bb.j, %bb.h, %bb.f
  %.sroa.0.0 = phi i1 [ false, %bb.f ], [ true, %bb.h ], [ true, %bb.j ], [ true, %bb.k ], [ true, %bb.i ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable
define hidden { i64, i64 } @_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_hrule(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 3
  br i1 %i.a, label %.loopexit15, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1, !noundef !15   ; 2 uses
  switch i8 %i.b, label %.loopexit15 [
    i8 42, label %.preheader
    i8 45, label %.preheader
    i8 95, label %.preheader
  ]

.preheader:                                       ; preds = %bb.b, %bb.b, %bb.b
  br label %bb.c

.loopexit:                                        ; preds = %bb.k, %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners8scan_eol.exit
  %.sroa.01.018 = phi i32 [ %.sroa.01.026, %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners8scan_eol.exit ], [ %.sroa.01.1, %bb.k ]
  %.sroa.03.1 = phi i64 [ %i.l, %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners8scan_eol.exit ], [ %1, %bb.k ]
  %i.c = icmp slt i32 %.sroa.01.018, 3
  %. = zext i1 %i.c to i64
  br label %.loopexit15

bb.c:                                             ; preds = %.preheader, %bb.k
  %.sroa.01.026 = phi i32 [ %.sroa.01.1, %bb.k ], [ 0, %.preheader ] ; 4 uses
  %.sroa.03.025 = phi i64 [ %i.p, %bb.k ], [ 0, %.preheader ] ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.03.025
  %i.e = load i8, ptr %i.d, align 1, !noundef !15 ; 4 uses
  switch i8 %i.e, label %bb.d [
    i8 10, label %bb.e
    i8 13, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.f = icmp eq i8 %i.e, %i.b
  br i1 %i.f, label %bb.j, label %bb.i

bb.e:                                             ; preds = %bb.c, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.03.025
  switch i8 %i.e, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners8scan_eol.exit [
    i8 10, label %bb.f
    i8 13, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  br label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners8scan_eol.exit

bb.g:                                             ; preds = %bb.e
  %i.h = sub nuw nsw i64 %1, %.sroa.03.025
  %.not.i = icmp eq i64 %i.h, 1
  br i1 %.not.i, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners8scan_eol.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.j = load i8, ptr %i.i, align 1, !alias.scope !104, !noundef !15
  %i.k = icmp eq i8 %i.j, 10
  %spec.select.i = select i1 %i.k, i64 2, i64 1
  br label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners8scan_eol.exit

_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners8scan_eol.exit: ; preds = %bb.e, %bb.f, %bb.g, %bb.h
  %.sroa.0.0.i = phi i64 [ 0, %bb.e ], [ %spec.select.i, %bb.h ], [ 1, %bb.f ], [ 1, %bb.g ]
  %i.l = add nuw i64 %.sroa.0.0.i, %.sroa.03.025
  br label %.loopexit

.loopexit15:                                      ; preds = %bb.i, %.loopexit, %bb.b, %bb.a
  %.sroa.6.0 = phi i64 [ %.sroa.03.1, %.loopexit ], [ 0, %bb.a ], [ 0, %bb.b ], [ %.sroa.03.025, %bb.i ]
  %.sroa.0.0 = phi i64 [ %., %.loopexit ], [ 1, %bb.a ], [ 1, %bb.b ], [ 1, %bb.i ]
  %i.m = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.n = insertvalue { i64, i64 } %i.m, i64 %.sroa.6.0, 1
  ret { i64, i64 } %i.n

bb.i:                                             ; preds = %bb.d
  switch i8 %i.e, label %.loopexit15 [
    i8 32, label %bb.k
    i8 9, label %bb.k
  ]

bb.j:                                             ; preds = %bb.d
  %i.o = add i32 %.sroa.01.026, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.i
  %.sroa.01.1 = phi i32 [ %i.o, %bb.j ], [ %.sroa.01.026, %bb.i ], [ %.sroa.01.026, %bb.i ] ; 2 uses
  %i.p = add nuw nsw i64 %.sroa.03.025, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.p, %1
  br i1 %exitcond.not, label %.loopexit, label %bb.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners11scan_entity(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.c, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  %i.b = add nsw i64 %2, -1                       ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 3 uses
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %_RINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2_21is_ascii_alphanumericEB4_.exit, label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef 1, i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72) #15
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.e = load i8, ptr %i.c, align 1, !noundef !15
  %i.f = icmp eq i8 %i.e, 35
  br i1 %i.f, label %bb.e, label %bb.w

bb.e:                                             ; preds = %bb.d
  %i.g = icmp samesign ugt i64 %2, 2
  br i1 %i.g, label %bb.f, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners9parse_hex.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !noundef !15
  %i.j = and i8 %i.i, -33
  %i.k = icmp eq i8 %i.j, 88
  %i.l = getelementptr i8, ptr %1, i64 %2         ; 2 uses
  br i1 %i.k, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.m = add nsw i64 %2, -3                       ; 2 uses
  %i.n = icmp samesign eq i64 %i.m, 0
  br i1 %i.n, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners9parse_hex.exit.thread, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 3
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.k
  %.sroa.0.021.i.i = phi i64 [ %i.y, %bb.k ], [ 0, %.lr.ph.i.i.preheader ] ; 3 uses
  %.sroa.7.020.i.i = phi i64 [ %i.x, %bb.k ], [ 0, %.lr.ph.i.i.preheader ] ; 4 uses
  %i.p = phi ptr [ %i.q, %bb.k ], [ %i.o, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1 ; 2 uses
  %.val.i.i = load i8, ptr %i.p, align 1, !alias.scope !107, !noalias !110, !noundef !15 ; 2 uses
  %i.r = add i8 %.val.i.i, -48                    ; 2 uses
  %or.cond.i.i.i = icmp ult i8 %i.r, 10
  br i1 %or.cond.i.i.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.s = or i8 %.val.i.i, 32                      ; 2 uses
  %i.t = add i8 %i.s, -97
  %or.cond3.i.i.i = icmp ult i8 %i.t, 6
  br i1 %or.cond3.i.i.i, label %bb.i, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners9parse_hex.exit

bb.i:                                             ; preds = %bb.h
  %i.u = add nsw i8 %i.s, -87
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.i
  %.sroa.010.0.in.i.i.i = phi i8 [ %i.u, %bb.i ], [ %i.r, %.lr.ph.i.i ]
  %i.v = icmp ugt i64 %.sroa.7.020.i.i, 1152921504606846975
  br i1 %i.v, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners9parse_hex.exit, label %bb.k, !prof !19

bb.k:                                             ; preds = %bb.j
  %i.w = shl nuw i64 %.sroa.7.020.i.i, 4
  %.sroa.010.0.i.i.i = zext nneg i8 %.sroa.010.0.in.i.i.i to i64
  %i.x = add nuw i64 %i.w, %.sroa.010.0.i.i.i     ; 2 uses
  %i.y = add nuw nsw i64 %.sroa.0.021.i.i, 1
  %i.z = icmp eq ptr %i.q, %i.l
  br i1 %i.z, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners9parse_hex.exit, label %.lr.ph.i.i

_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners9parse_hex.exit: ; preds = %bb.o, %bb.n, %bb.m, %.lr.ph.i.i.i, %bb.k, %bb.j, %bb.h
  %.sroa.0.0.lcssa.sink.i.i.pn = phi i64 [ %i.m, %bb.k ], [ %.sroa.0.021.i.i, %bb.j ], [ %.sroa.0.021.i.i, %bb.h ], [ %i.ac, %bb.o ], [ %.sroa.0.045.i.i.i, %bb.n ], [ %.sroa.0.045.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.0.045.i.i.i, %bb.m ] ; 2 uses
  %.sroa.7.0.lcssa.sink.i.i.pn = phi i64 [ %i.x, %bb.k ], [ %.sroa.7.020.i.i, %bb.j ], [ %.sroa.7.020.i.i, %bb.h ], [ %i.al, %bb.o ], [ %.sroa.7.044.i.i.i, %bb.n ], [ %.sroa.7.044.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.7.044.i.i.i, %bb.m ] ; 3 uses
  %.sroa.0.0 = phi i64 [ 3, %bb.k ], [ 3, %bb.h ], [ 3, %bb.j ], [ 2, %.lr.ph.i.i.i ], [ 2, %bb.m ], [ 2, %bb.n ], [ 2, %bb.o ]
  %i.aa = add i64 %.sroa.0.0, %.sroa.0.0.lcssa.sink.i.i.pn ; 5 uses
  %i.ab = icmp eq i64 %.sroa.0.0.lcssa.sink.i.i.pn, 0
  br i1 %i.ab, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners9parse_hex.exit.thread, label %bb.p

bb.l:                                             ; preds = %bb.f
  %i.ac = add nsw i64 %2, -2
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.l, %bb.o
  %.sroa.0.045.i.i.i = phi i64 [ %i.an, %bb.o ], [ 0, %bb.l ] ; 4 uses
  %.sroa.7.044.i.i.i = phi i64 [ %i.al, %bb.o ], [ 0, %bb.l ] ; 4 uses
  %i.ad = phi ptr [ %i.ae, %bb.o ], [ %i.h, %bb.l ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1 ; 2 uses
  %i.af = load i8, ptr %i.ad, align 1, !alias.scope !114, !noalias !119, !noundef !15
  %i.ag = add i8 %i.af, -48                       ; 2 uses
  %.sroa.0.0.i.i.i.i.i = icmp ult i8 %i.ag, 10
  br i1 %.sroa.0.0.i.i.i.i.i, label %bb.m, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners9parse_hex.exit

bb.m:                                             ; preds = %.lr.ph.i.i.i
  %i.ah = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.7.044.i.i.i, i64 10) ; 2 uses
  %i.ai = extractvalue { i64, i1 } %i.ah, 1
  br i1 %i.ai, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners9parse_hex.exit, label %bb.n, !prof !19

bb.n:                                             ; preds = %bb.m
  %i.aj = extractvalue { i64, i1 } %i.ah, 0       ; 2 uses
  %i.ak = zext nneg i8 %i.ag to i64
  %i.al = add i64 %i.aj, %i.ak                    ; 3 uses
  %i.am = icmp ult i64 %i.al, %i.aj
  br i1 %i.am, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners9parse_hex.exit, label %bb.o, !prof !19

bb.o:                                             ; preds = %bb.n
  %i.an = add nuw nsw i64 %.sroa.0.045.i.i.i, 1
  %i.ao = icmp eq ptr %i.ae, %i.l
  br i1 %i.ao, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners9parse_hex.exit, label %.lr.ph.i.i.i

_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners9parse_hex.exit.thread: ; preds = %bb.g, %bb.e, %bb.s, %bb.q, %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners9parse_hex.exit
  store i64 0, ptr %0, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 -1, ptr %i.ap, align 8
  br label %bb.ae

bb.p:                                             ; preds = %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners9parse_hex.exit
  %i.aq = icmp ugt i64 %i.aa, %2
  br i1 %i.aq, label %bb.r, label %bb.q, !prof !19

bb.q:                                             ; preds = %bb.p
  %i.ar = icmp eq i64 %2, %i.aa
  br i1 %i.ar, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners9parse_hex.exit.thread, label %bb.s

bb.r:                                             ; preds = %bb.p
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %i.aa, i64 noundef %2, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69) #15
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 %i.aa
  %i.at = load i8, ptr %i.as, align 1, !noundef !15
  %i.au = icmp eq i8 %i.at, 59
  br i1 %i.au, label %bb.t, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners9parse_hex.exit.thread

bb.t:                                             ; preds = %bb.s
  %i.av = icmp ugt i64 %.sroa.7.0.lcssa.sink.i.i.pn, 4294967295
  br i1 %i.av, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners19char_from_codepoint.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.aw = trunc nuw i64 %.sroa.7.0.lcssa.sink.i.i.pn to i32
  %i.ax = icmp eq i64 %.sroa.7.0.lcssa.sink.i.i.pn, 0
  %spec.store.select.i = select i1 %i.ax, i32 65533, i32 %i.aw ; 2 uses
  %i.ay = xor i32 %spec.store.select.i, 55296
  %i.az = add i32 %i.ay, -1114112
  %i.ba = icmp ult i32 %i.az, -1112064
  br i1 %i.ba, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners19char_from_codepoint.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bb = add nuw i64 %i.aa, 1
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXsb_NtCsbNU0JlWw3cF_14pulldown_cmark7stringsNtB5_6CowStrINtNtCshzWfHUSfYae_4core7convert4FromcE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bc, i32 noundef %spec.store.select.i)
  store i64 %i.bb, ptr %0, align 8
  br label %bb.ae

_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners19char_from_codepoint.exit.thread: ; preds = %bb.u, %bb.t
  store i64 0, ptr %0, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 -1, ptr %i.bd, align 8
  br label %bb.ae

bb.w:                                             ; preds = %bb.d
  %i.be = getelementptr i8, ptr %1, i64 %2
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.w, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_21is_ascii_alphanumericE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i
  %.sroa.01.018.i.i.i.i = phi i64 [ %i.bm, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_21is_ascii_alphanumericE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i ], [ 0, %bb.w ] ; 2 uses
  %i.bf = phi ptr [ %i.bl, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_21is_ascii_alphanumericE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i ], [ %i.c, %bb.w ] ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !alias.scope !128, !noalias !133, !noundef !15 ; 2 uses
  %i.bh = add i8 %i.bg, -48
  %or.cond.i.i.i.i.i.i.i.i = icmp ult i8 %i.bh, 10
  %i.bi = and i8 %i.bg, -33
  %i.bj = add i8 %i.bi, -65
  %i.bk = icmp ult i8 %i.bj, 26
  %.sroa.0.0.i.i.i.i.i.i.i.i = or i1 %or.cond.i.i.i.i.i.i.i.i, %i.bk
  br i1 %.sroa.0.0.i.i.i.i.i.i.i.i, label %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_21is_ascii_alphanumericE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i, label %_RINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2_21is_ascii_alphanumericEB4_.exit

_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_21is_ascii_alphanumericE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 1 ; 2 uses
  %i.bm = add nuw nsw i64 %.sroa.01.018.i.i.i.i, 1
  %i.bn = icmp eq ptr %i.bl, %i.be
  br i1 %i.bn, label %_RINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2_21is_ascii_alphanumericEB4_.exit, label %.lr.ph.i.i.i.i

_RINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2_21is_ascii_alphanumericEB4_.exit: ; preds = %.lr.ph.i.i.i.i, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_21is_ascii_alphanumericE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i, %bb.b
  %.sroa.0.1.i.i.i = phi i64 [ 0, %bb.b ], [ %.sroa.01.018.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.b, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_21is_ascii_alphanumericE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i ] ; 3 uses
  %i.bo = add i64 %.sroa.0.1.i.i.i, 1             ; 5 uses
  %i.bp = icmp ugt i64 %i.bo, %2
  br i1 %i.bp, label %bb.y, label %bb.x, !prof !19

bb.x:                                             ; preds = %_RINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2_21is_ascii_alphanumericEB4_.exit
  %i.bq = icmp eq i64 %2, %i.bo
  br i1 %i.bq, label %bb.af, label %bb.z

bb.y:                                             ; preds = %_RINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2_21is_ascii_alphanumericEB4_.exit
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %i.bo, i64 noundef %2, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #15
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 %i.bo
  %i.bs = load i8, ptr %i.br, align 1, !noundef !15
  %i.bt = icmp eq i8 %i.bs, 59
  br i1 %i.bt, label %bb.aa, label %bb.af

bb.aa:                                            ; preds = %bb.z
  %i.bu = icmp eq i64 %i.bo, 0
  br i1 %i.bu, label %bb.ab, label %bb.ac, !prof !141

bb.ab:                                            ; preds = %bb.aa
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef 1, i64 noundef 0, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #15
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.bv = tail call { ptr, i64 } @_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8entities10get_entity(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %.sroa.0.1.i.i.i) ; 2 uses
  %i.bw = extractvalue { ptr, i64 } %i.bv, 0      ; 2 uses
  %.not40 = icmp eq ptr %i.bw, null
  br i1 %.not40, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bx = extractvalue { ptr, i64 } %i.bv, 1
  %i.by = add i64 %.sroa.0.1.i.i.i, 2
  store i64 %i.by, ptr %0, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.bz, align 8
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bw, ptr %.sroa.530.0..sroa_idx, align 8
  %.sroa.631.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.bx, ptr %.sroa.631.0..sroa_idx, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.v, %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners19char_from_codepoint.exit.thread, %bb.ad, %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners9parse_hex.exit.thread, %bb.af
  ret void

bb.af:                                            ; preds = %bb.ac, %bb.z, %bb.x
  store i64 0, ptr %0, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 -1, ptr %i.ca, align 8
  br label %bb.ae
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners13scan_autolink(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142)
  %i.a = icmp ugt i64 %3, %2
  br i1 %i.a, label %bb.c, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  %i.b = sub nuw i64 %2, %3                       ; 17 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %3 ; 11 uses
  %i.d = icmp eq i64 %2, %3
  br i1 %i.d, label %._crit_edge.i.i.i, label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %3, i64 noundef %2, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @120) #15, !noalias !145
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.e = load i8, ptr %i.c, align 1, !alias.scope !142, !noalias !147, !noundef !15 ; 2 uses
  %i.f = and i8 %i.e, -33
  %i.g = add i8 %i.f, -65
  %or.cond24.i = icmp ult i8 %i.g, 26
  %i.h = icmp ugt i64 %i.b, 1
  %or.cond = select i1 %or.cond24.i, i1 %i.h, i1 false
  br i1 %or.cond, label %.lr.ph.i, label %.loopexit

._crit_edge.i:                                    ; preds = %bb.e
  %i.i = add i64 %.sroa.0.034.i, -2
  %or.cond6.i = icmp ult i64 %i.i, 31
  %i.j = icmp ult i64 %i.m, %i.b
  %or.cond31 = select i1 %or.cond6.i, i1 %i.j, i1 false
  br i1 %or.cond31, label %.lr.ph38.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.d, %bb.f
  %.sroa.0.034.i = phi i64 [ %i.m, %bb.f ], [ 1, %bb.d ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sroa.0.034.i
  %i.l = load i8, ptr %i.k, align 1, !alias.scope !142, !noalias !147, !noundef !15 ; 3 uses
  %i.m = add nuw i64 %.sroa.0.034.i, 1            ; 4 uses
  %i.n = add i8 %i.l, -48
  %or.cond2.i = icmp ult i8 %i.n, 10
  %i.o = and i8 %i.l, -33
  %i.p = add i8 %i.o, -65
  %i.q = icmp ult i8 %i.p, 26
  %or.cond26.i = or i1 %or.cond2.i, %i.q
  br i1 %or.cond26.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  switch i8 %i.l, label %.loopexit [
    i8 46, label %bb.f
    i8 45, label %bb.f
    i8 43, label %bb.f
    i8 58, label %._crit_edge.i
  ]

bb.f:                                             ; preds = %bb.e, %bb.e, %bb.e, %.lr.ph.i
  %exitcond.not.i = icmp eq i64 %i.m, %i.b
  br i1 %exitcond.not.i, label %.loopexit, label %.lr.ph.i

.lr.ph38.i:                                       ; preds = %._crit_edge.i, %bb.j
  %.sroa.0.237.i = phi i64 [ %i.ad, %bb.j ], [ %i.m, %._crit_edge.i ] ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sroa.0.237.i
  %i.s = load i8, ptr %i.r, align 1, !alias.scope !142, !noalias !147, !noundef !15 ; 2 uses
  switch i8 %i.s, label %bb.j [
    i8 62, label %bb.g
    i8 60, label %.loopexit
  ]

bb.g:                                             ; preds = %.lr.ph38.i
  %i.t = add i64 %.sroa.0.237.i, %3               ; 6 uses
  %i.u = icmp ugt i64 %3, %i.t
  %i.v = icmp ugt i64 %i.t, %2
  %or.cond.i.i = or i1 %i.u, %i.v
  br i1 %or.cond.i.i, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread.i, label %bb.h, !prof !148

bb.h:                                             ; preds = %bb.g
  %i.w = icmp eq i64 %3, 0
  %i.x = icmp sgt i8 %i.e, -65
  %or.cond30.i = or i1 %i.w, %i.x
  br i1 %or.cond30.i, label %bb.i, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread.i, !prof !149

bb.i:                                             ; preds = %bb.h
  %i.y = icmp eq i64 %i.t, %2
  br i1 %i.y, label %bb.k, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.i

_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.i: ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %i.t
  %i.aa = load i8, ptr %i.z, align 1, !alias.scope !150, !noalias !147, !noundef !15
  %i.ab = icmp sgt i8 %i.aa, -65
  br i1 %i.ab, label %bb.k, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread.i, !prof !153

_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread.i: ; preds = %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.i, %bb.h, %bb.g
  tail call void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %3, i64 noundef %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #15, !noalias !147
  unreachable

bb.j:                                             ; preds = %.lr.ph38.i
  %i.ac = icmp ugt i8 %i.s, 32
  %i.ad = add nuw i64 %.sroa.0.237.i, 1           ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %i.b
  %or.cond33 = select i1 %i.ac, i1 %i.ae, i1 false
  br i1 %or.cond33, label %.lr.ph38.i, label %.loopexit

bb.k:                                             ; preds = %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.i, %bb.i
  %i.af = add i64 %i.t, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !154)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !157)
  store i8 1, ptr %0, align 8, !alias.scope !159, !noalias !160
  %.sroa.74.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %.sroa.74.0..sroa_idx, align 8, !alias.scope !159, !noalias !160
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0.237.i, ptr %.sroa.8.0..sroa_idx, align 8, !alias.scope !159, !noalias !160
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.af, ptr %.sroa.9.0..sroa_idx, align 8, !alias.scope !159, !noalias !160
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 7, ptr %.sroa.10.0..sroa_idx, align 8, !alias.scope !159, !noalias !160
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionTjNtNtCsbNU0JlWw3cF_14pulldown_cmark7strings6CowStrNtBO_8LinkTypeEE7or_elseNCNvNtBO_8scanners13scan_autolinks_0EBO_.exit

.loopexit:                                        ; preds = %bb.e, %bb.f, %bb.j, %.lr.ph38.i, %._crit_edge.i, %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !162)
  br label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.l, %bb.b
  %.sroa.0.1.i.i.i = phi i64 [ 0, %bb.b ], [ %i.aj, %bb.l ] ; 2 uses
  %i.ag = icmp ult i64 %.sroa.0.1.i.i.i, %i.b
  br i1 %i.ag, label %.lr.ph56.preheader.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %.loopexit, %bb.m
  %.sroa.0.050.i.i.i = phi i64 [ %i.aj, %bb.m ], [ 0, %.loopexit ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sroa.0.050.i.i.i
  %i.ai = load i8, ptr %i.ah, align 1, !alias.scope !165, !noalias !168, !noundef !15 ; 3 uses
  %i.aj = add nuw i64 %.sroa.0.050.i.i.i, 1       ; 3 uses
  %i.ak = add i8 %i.ai, -48
  %or.cond.i.i.i = icmp ult i8 %i.ak, 10
  %i.al = and i8 %i.ai, -33
  %i.am = add i8 %i.al, -65
  %i.an = icmp ult i8 %i.am, 26
  %or.cond33.i.i.i = or i1 %or.cond.i.i.i, %i.an
  br i1 %or.cond33.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i
  switch i8 %i.ai, label %.loopexit.i.i [
    i8 46, label %bb.m
    i8 33, label %bb.m
    i8 35, label %bb.m
    i8 36, label %bb.m
    i8 37, label %bb.m
    i8 38, label %bb.m
    i8 39, label %bb.m
    i8 42, label %bb.m
    i8 43, label %bb.m
    i8 47, label %bb.m
    i8 61, label %bb.m
    i8 63, label %bb.m
    i8 94, label %bb.m
    i8 95, label %bb.m
    i8 96, label %bb.m
    i8 123, label %bb.m
    i8 124, label %bb.m
    i8 125, label %bb.m
    i8 126, label %bb.m
    i8 45, label %bb.m
    i8 64, label %._crit_edge.i.i.i
  ]

bb.m:                                             ; preds = %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %.lr.ph.i.i.i
  %exitcond.not.i.i.i = icmp eq i64 %i.aj, %i.b
  br i1 %exitcond.not.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i

.lr.ph56.preheader.i.i.i:                         ; preds = %._crit_edge.i.i.i, %bb.s
  %.sroa.0.2.i15.i.i = phi i64 [ %i.bp, %bb.s ], [ %.sroa.0.1.i.i.i, %._crit_edge.i.i.i ] ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sroa.0.2.i15.i.i
  %i.ap = load i8, ptr %i.ao, align 1, !alias.scope !165, !noalias !168, !noundef !15 ; 2 uses
  %i.aq = add i8 %i.ap, -48
  %or.cond3.peel.i.i.i = icmp ult i8 %i.aq, 10
  %i.ar = and i8 %i.ap, -33
  %i.as = add i8 %i.ar, -65
  %i.at = icmp ult i8 %i.as, 26
  %or.cond35.peel.i.i.i = or i1 %or.cond3.peel.i.i.i, %i.at
  br i1 %or.cond35.peel.i.i.i, label %bb.n, label %.loopexit.i.i

bb.n:                                             ; preds = %.lr.ph56.preheader.i.i.i
  %i.au = add nuw i64 %.sroa.0.2.i15.i.i, 1       ; 2 uses
  %i.av = icmp ult i64 %i.au, %i.b
  br i1 %i.av, label %.lr.ph56.i.i.i, label %._crit_edge57.i.i.i

._crit_edge57.i.i.i:                              ; preds = %bb.o, %.lr.ph56.i.i.i, %bb.n
  %.sroa.0.3.lcssa.i.i.i = phi i64 [ %i.b, %bb.n ], [ %.sroa.0.354.i.i.i, %.lr.ph56.i.i.i ], [ %i.b, %bb.o ] ; 10 uses
  %i.aw = icmp eq i64 %.sroa.0.3.lcssa.i.i.i, %.sroa.0.2.i15.i.i
  %i.ax = sub i64 %.sroa.0.3.lcssa.i.i.i, %.sroa.0.2.i15.i.i
  %i.ay = icmp ugt i64 %i.ax, 63
  %or.cond37.i.i.i = or i1 %i.aw, %i.ay
  br i1 %or.cond37.i.i.i, label %.loopexit.i.i, label %bb.p

.lr.ph56.i.i.i:                                   ; preds = %bb.n, %bb.o
  %.sroa.0.354.i.i.i = phi i64 [ %i.bg, %bb.o ], [ %i.au, %bb.n ] ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sroa.0.354.i.i.i
  %i.ba = load i8, ptr %i.az, align 1, !alias.scope !165, !noalias !168, !noundef !15 ; 3 uses
  %i.bb = add i8 %i.ba, -48
  %or.cond3.i.i.i = icmp ult i8 %i.bb, 10
  %i.bc = and i8 %i.ba, -33
  %i.bd = add i8 %i.bc, -65
  %i.be = icmp ult i8 %i.bd, 26
  %or.cond35.i.i.i = or i1 %or.cond3.i.i.i, %i.be
  %i.bf = icmp eq i8 %i.ba, 45
  %or.cond84.i.i.i = or i1 %i.bf, %or.cond35.i.i.i
  br i1 %or.cond84.i.i.i, label %bb.o, label %._crit_edge57.i.i.i

bb.o:                                             ; preds = %.lr.ph56.i.i.i
  %i.bg = add nuw i64 %.sroa.0.354.i.i.i, 1       ; 2 uses
  %i.bh = icmp ult i64 %i.bg, %i.b
  br i1 %i.bh, label %.lr.ph56.i.i.i, label %._crit_edge57.i.i.i, !llvm.loop !171

bb.p:                                             ; preds = %._crit_edge57.i.i.i
  %i.bi = add i64 %.sroa.0.3.lcssa.i.i.i, -1      ; 3 uses
  %i.bj = icmp ult i64 %i.bi, %i.b
  br i1 %i.bj, label %bb.q, label %.noexc2.i

bb.q:                                             ; preds = %bb.p
  %i.bk = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bi
  %i.bl = load i8, ptr %i.bk, align 1, !alias.scope !165, !noalias !168, !noundef !15
  %i.bm = icmp eq i8 %i.bl, 45
  br i1 %i.bm, label %.loopexit.i.i, label %4

.noexc2.i:                                        ; preds = %bb.p
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.bi, i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #15, !noalias !173
  unreachable

4:                                                ; preds = %bb.q
  %5 = icmp ugt i64 %.sroa.0.3.lcssa.i.i.i, %i.b
  br i1 %5, label %.invoke.i, label %6, !prof !19

6:                                                ; preds = %4
  %7 = icmp eq i64 %i.b, %.sroa.0.3.lcssa.i.i.i
  br i1 %7, label %.loopexit.i.i, label %bb.r

.invoke.i:                                        ; preds = %4
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.3.lcssa.i.i.i, i64 noundef %i.b, i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #15, !noalias !173
  unreachable

bb.r:                                             ; preds = %6
  %i.bn = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sroa.0.3.lcssa.i.i.i
  %i.bo = load i8, ptr %i.bn, align 1, !alias.scope !165, !noalias !168, !noundef !15
  switch i8 %i.bo, label %.loopexit.i.i [
    i8 46, label %bb.s
    i8 62, label %bb.t
  ]

bb.s:                                             ; preds = %bb.r
  %i.bp = add i64 %.sroa.0.3.lcssa.i.i.i, 1       ; 2 uses
  %i.bq = icmp ult i64 %i.bp, %i.b
  br i1 %i.bq, label %.lr.ph56.preheader.i.i.i, label %.loopexit.i.i

bb.t:                                             ; preds = %bb.r
  %i.br = add i64 %.sroa.0.3.lcssa.i.i.i, %3      ; 6 uses
  %i.bs = icmp ugt i64 %3, %i.br
  %i.bt = icmp ugt i64 %i.br, %2
  %or.cond.i.i.i.i = or i1 %i.bs, %i.bt
  br i1 %or.cond.i.i.i.i, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread40.i.i.i, label %bb.u, !prof !148

bb.u:                                             ; preds = %bb.t
  %i.bu = icmp eq i64 %3, 0
  br i1 %i.bu, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.w, %bb.u
  %i.bv = icmp eq i64 %i.br, %2
  br i1 %i.bv, label %bb.x, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.bw = load i8, ptr %i.c, align 1, !alias.scope !174, !noalias !168, !noundef !15
  %i.bx = icmp sgt i8 %i.bw, -65
  br i1 %i.bx, label %bb.v, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread40.i.i.i, !prof !177

_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.i.i.i: ; preds = %bb.v
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 %i.br
  %i.bz = load i8, ptr %i.by, align 1, !alias.scope !174, !noalias !168, !noundef !15
  %i.ca = icmp sgt i8 %i.bz, -65
  br i1 %i.ca, label %bb.x, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread40.i.i.i, !prof !153

_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread40.i.i.i: ; preds = %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.i.i.i, %bb.w, %bb.t
  tail call void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %3, i64 noundef %i.br, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #15, !noalias !173
  unreachable

bb.x:                                             ; preds = %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.i.i.i, %bb.v
  %i.cb = add i64 %i.br, 1
  store i8 1, ptr %0, align 8, !alias.scope !178, !noalias !179
  %.sroa.0.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %.sroa.0.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !178, !noalias !179
  %.sroa.0.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0.3.lcssa.i.i.i, ptr %.sroa.0.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !178, !noalias !179
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.cb, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !178, !noalias !179
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 8, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !178, !noalias !179
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionTjNtNtCsbNU0JlWw3cF_14pulldown_cmark7strings6CowStrNtBO_8LinkTypeEE7or_elseNCNvNtBO_8scanners13scan_autolinks_0EBO_.exit

.loopexit.i.i:                                    ; preds = %bb.m, %bb.l, %bb.s, %bb.r, %6, %bb.q, %._crit_edge57.i.i.i, %.lr.ph56.preheader.i.i.i, %._crit_edge.i.i.i
  store i8 -1, ptr %0, align 8, !alias.scope !178, !noalias !179
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionTjNtNtCsbNU0JlWw3cF_14pulldown_cmark7strings6CowStrNtBO_8LinkTypeEE7or_elseNCNvNtBO_8scanners13scan_autolinks_0EBO_.exit

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionTjNtNtCsbNU0JlWw3cF_14pulldown_cmark7strings6CowStrNtBO_8LinkTypeEE7or_elseNCNvNtBO_8scanners13scan_autolinks_0EBO_.exit: ; preds = %bb.k, %bb.x, %.loopexit.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners13scan_listitem(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly captures(address) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners13parse_decimal.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %1, align 1, !noundef !15   ; 5 uses
  switch i8 %i.a, label %bb.c [
    i8 45, label %bb.d
    i8 43, label %bb.d
    i8 42, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.b = add i8 %i.a, -48
  %or.cond = icmp ult i8 %i.b, 10
  br i1 %or.cond, label %bb.e, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners13parse_decimal.exit.thread

bb.d:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.j
  %.sroa.014.0 = phi i64 [ %i.t, %bb.j ], [ 1, %bb.b ], [ 1, %bb.b ], [ 1, %bb.b ] ; 7 uses
  %.sroa.06.0 = phi i8 [ %i.s, %bb.j ], [ %i.a, %bb.b ], [ %i.a, %bb.b ], [ %i.a, %bb.b ]
  %.sroa.05.0 = phi i64 [ %.sroa.7.044.i.i.i, %bb.j ], [ 0, %bb.b ], [ 0, %bb.b ], [ 0, %bb.b ]
  %i.c = icmp ugt i64 %.sroa.014.0, %2
  br i1 %i.c, label %bb.o, label %bb.k, !prof !19

bb.e:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %2
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %bb.h
  %.sroa.0.045.i.i.i = phi i64 [ %i.o, %bb.h ], [ 0, %bb.e ] ; 4 uses
  %.sroa.7.044.i.i.i = phi i64 [ %i.m, %bb.h ], [ 0, %bb.e ] ; 2 uses
  %i.e = phi ptr [ %i.f, %bb.h ], [ %1, %bb.e ]   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 2 uses
  %i.g = load i8, ptr %i.e, align 1, !alias.scope !180, !noalias !185, !noundef !15
  %i.h = add i8 %i.g, -48                         ; 2 uses
  %.sroa.0.0.i.i.i.i.i = icmp ult i8 %i.h, 10
  br i1 %.sroa.0.0.i.i.i.i.i, label %bb.f, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners13parse_decimal.exit

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.i = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.7.044.i.i.i, i64 10) ; 2 uses
  %i.j = extractvalue { i64, i1 } %i.i, 1
  br i1 %i.j, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners13parse_decimal.exit, label %bb.g, !prof !19

bb.g:                                             ; preds = %bb.f
  %i.k = extractvalue { i64, i1 } %i.i, 0         ; 2 uses
  %i.l = zext nneg i8 %i.h to i64
  %i.m = add i64 %i.k, %i.l                       ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.k
  br i1 %i.n, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners13parse_decimal.exit, label %bb.h, !prof !19

bb.h:                                             ; preds = %bb.g
  %i.o = add nuw nsw i64 %.sroa.0.045.i.i.i, 1
  %i.p = icmp eq ptr %i.f, %i.d
  br i1 %i.p, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners13parse_decimal.exit.thread, label %.lr.ph.i.i.i

_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners13parse_decimal.exit: ; preds = %.lr.ph.i.i.i, %bb.f, %bb.g
  %i.q = icmp samesign ult i64 %.sroa.0.045.i.i.i, %2
  br i1 %i.q, label %bb.i, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners13parse_decimal.exit.thread

bb.i:                                             ; preds = %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners13parse_decimal.exit
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.045.i.i.i
  %i.s = load i8, ptr %i.r, align 1, !noundef !15 ; 2 uses
  switch i8 %i.s, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners13parse_decimal.exit.thread [
    i8 46, label %bb.j
    i8 41, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i, %bb.i
  %i.t = add nuw nsw i64 %.sroa.0.045.i.i.i, 1
  br label %bb.d

bb.k:                                             ; preds = %bb.d
  %i.u = sub nuw nsw i64 %2, %.sroa.014.0         ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.014.0 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 2 uses
  %i.x = icmp eq i64 %2, %.sroa.014.0
  br i1 %i.x, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners15scan_blank_line.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.k
  %i.y = add nsw i64 %i.u, -1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.n, %.lr.ph.preheader.i
  %.sroa.0.021.i = phi i64 [ %.sroa.0.2.i, %bb.n ], [ 0, %.lr.ph.preheader.i ] ; 4 uses
  %.sroa.05.020.i = phi i64 [ %.sroa.7.018.i, %bb.n ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.0.01119.i = phi ptr [ %i.z, %bb.n ], [ %i.v, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.7.018.i = phi i64 [ %i.aa, %bb.n ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.01119.i, i64 1 ; 2 uses
  %i.aa = add nuw nsw i64 %.sroa.7.018.i, 1
  %i.ab = load i8, ptr %.sroa.0.01119.i, align 1, !alias.scope !194, !noundef !15
  switch i8 %i.ab, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners11calc_indent.exit [
    i8 32, label %bb.l
    i8 9, label %bb.m
  ]

bb.l:                                             ; preds = %.lr.ph.i
  %i.ac = add i64 %.sroa.0.021.i, 1               ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 5
  br i1 %i.ad, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners11calc_indent.exit.thread44, label %bb.n

bb.m:                                             ; preds = %.lr.ph.i
  %i.ae = and i64 %.sroa.0.021.i, -4
  %i.af = add i64 %i.ae, 4                        ; 2 uses
  %i.ag = icmp ugt i64 %i.af, 5
  br i1 %i.ag, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners11calc_indent.exit, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.0.2.i = phi i64 [ %i.ac, %bb.l ], [ %i.af, %bb.m ] ; 2 uses
  %i.ah = icmp eq ptr %i.z, %i.w
  br i1 %i.ah, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners11calc_indent.exit, label %.lr.ph.i

_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners11calc_indent.exit: ; preds = %.lr.ph.i, %bb.m, %bb.n
  %.sroa.05.0.lcssa.i = phi i64 [ %.sroa.05.020.i, %.lr.ph.i ], [ %i.y, %bb.n ], [ %.sroa.05.020.i, %bb.m ] ; 3 uses
  %.sroa.0.1.i = phi i64 [ %.sroa.0.021.i, %.lr.ph.i ], [ %.sroa.0.2.i, %bb.n ], [ %.sroa.0.021.i, %bb.m ] ; 2 uses
  %i.ai = icmp eq i64 %.sroa.0.1.i, 0
  br i1 %i.ai, label %bb.p, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners11calc_indent.exit.thread44

bb.o:                                             ; preds = %bb.d
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %.sroa.014.0, i64 noundef %2, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @73) #15
  unreachable

bb.p:                                             ; preds = %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners11calc_indent.exit
  %i.aj = load i8, ptr %i.v, align 1, !alias.scope !197, !noundef !15
  switch i8 %i.aj, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners13parse_decimal.exit.thread [
    i8 10, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners8scan_eol.exit.thread
    i8 13, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners8scan_eol.exit.thread
  ]

_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners11calc_indent.exit.thread44: ; preds = %bb.l, %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners11calc_indent.exit
  %.sroa.0.1.i48 = phi i64 [ %.sroa.0.1.i, %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners11calc_indent.exit ], [ 5, %bb.l ] ; 2 uses
  %.sroa.05.0.lcssa.i47 = phi i64 [ %.sroa.05.0.lcssa.i, %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners11calc_indent.exit ], [ %.sroa.05.020.i, %bb.l ]
  %i.ak = icmp ugt i64 %.sroa.0.1.i48, 4          ; 2 uses
  %spec.select = select i1 %i.ak, i64 1, i64 %.sroa.05.0.lcssa.i47
  %spec.select36 = select i1 %i.ak, i64 1, i64 %.sroa.0.1.i48
  br label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners8scan_eol.exit.thread

_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners8scan_eol.exit.thread: ; preds = %bb.p, %bb.p, %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners11calc_indent.exit.thread44
  %.sroa.022.0 = phi i64 [ %spec.select, %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners11calc_indent.exit.thread44 ], [ %.sroa.05.0.lcssa.i, %bb.p ], [ %.sroa.05.0.lcssa.i, %bb.p ]
  %.sroa.023.0 = phi i64 [ %spec.select36, %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners11calc_indent.exit.thread44 ], [ 1, %bb.p ], [ 1, %bb.p ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !200)
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners8scan_eol.exit.thread, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i.i
  %.sroa.01.018.i.i.i.i.i.i = phi i64 [ %i.ao, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i.i ], [ 0, %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners8scan_eol.exit.thread ] ; 5 uses
  %i.al = phi ptr [ %i.an, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i.i ], [ %i.v, %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners8scan_eol.exit.thread ] ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !alias.scope !203, !noalias !210, !noundef !15
  switch i8 %i.am, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_whitespace_no_nl.exit.i [
    i8 9, label %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i.i
    i8 11, label %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i.i
    i8 12, label %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i.i
    i8 32, label %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i.i
  ]

_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 1 ; 2 uses
  %i.ao = add nuw nsw i64 %.sroa.01.018.i.i.i.i.i.i, 1
  %i.ap = icmp eq ptr %i.an, %i.w
  br i1 %i.ap, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners15scan_blank_line.exit, label %.lr.ph.i.i.i.i.i.i

_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_whitespace_no_nl.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.aq = icmp samesign ugt i64 %.sroa.01.018.i.i.i.i.i.i, %i.u
  br i1 %i.aq, label %bb.s, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_whitespace_no_nl.exit.thread.i, !prof !72

_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_whitespace_no_nl.exit.thread.i: ; preds = %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_whitespace_no_nl.exit.i
  %i.ar = icmp eq i64 %i.u, %.sroa.01.018.i.i.i.i.i.i
  br i1 %i.ar, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners15scan_blank_line.exit, label %bb.q

bb.q:                                             ; preds = %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_whitespace_no_nl.exit.thread.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.v, i64 %.sroa.01.018.i.i.i.i.i.i
  %i.at = load i8, ptr %i.as, align 1, !alias.scope !218, !noundef !15
  switch i8 %i.at, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners15scan_blank_line.exit [
    i8 10, label %bb.r
    i8 13, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q, %bb.q
  br label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners15scan_blank_line.exit

bb.s:                                             ; preds = %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_whitespace_no_nl.exit.i
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %.sroa.01.018.i.i.i.i.i.i, i64 noundef range(i64 0, -9223372036854775808) %i.u, i64 noundef range(i64 0, -9223372036854775808) %i.u, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #15, !noalias !200
  unreachable

_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners15scan_blank_line.exit: ; preds = %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i.i, %bb.k, %bb.r, %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_whitespace_no_nl.exit.thread.i, %bb.q
  %i.au = phi i64 [ %.sroa.022.0, %bb.q ], [ 0, %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_whitespace_no_nl.exit.thread.i ], [ 0, %bb.r ], [ 0, %bb.k ], [ 0, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i.i ]
  %i.av = phi i64 [ %.sroa.023.0, %bb.q ], [ 1, %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_whitespace_no_nl.exit.thread.i ], [ 1, %bb.r ], [ 1, %bb.k ], [ 1, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i.i ]
  %i.aw = add i64 %i.au, %.sroa.014.0
  %i.ax = add nuw i64 %i.av, %.sroa.014.0
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.aw, ptr %i.ay, align 8
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.05.0, ptr %.sroa.431.0..sroa_idx, align 8
  %.sroa.532.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %.sroa.06.0, ptr %.sroa.532.0..sroa_idx, align 8
  %.sroa.633.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.ax, ptr %.sroa.633.0..sroa_idx, align 8
  br label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners13parse_decimal.exit.thread

_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners13parse_decimal.exit.thread: ; preds = %bb.h, %bb.p, %bb.i, %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners13parse_decimal.exit, %bb.c, %bb.a, %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners15scan_blank_line.exit
  %.sink = phi i64 [ 0, %bb.c ], [ 0, %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners13parse_decimal.exit ], [ 0, %bb.a ], [ 1, %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners15scan_blank_line.exit ], [ 0, %bb.i ], [ 0, %bb.p ], [ 0, %bb.h ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners13scan_nextline(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.b = load atomic ptr, ptr @_RNvNvNtNtNtCslLTI5cSnp8O_6memchr4arch6x86_646memchr10memchr_raw2FN monotonic, align 8, !noalias !221, !nonnull !15, !noundef !15
  %i.c = tail call { i64, ptr } %i.b(i8 noundef 10, ptr noundef nonnull readonly %0, ptr noundef nonnull readonly %i.a), !noalias !221, !inline_history !224 ; 2 uses
  %i.d = extractvalue { i64, ptr } %i.c, 0
  %i.e = trunc nuw i64 %i.d to i1
  br i1 %i.e, label %bb.b, label %_RINvNtNtNtCslLTI5cSnp8O_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECsbNU0JlWw3cF_14pulldown_cmark.exit

bb.b:                                             ; preds = %bb.a
  %i.f = extractvalue { i64, ptr } %i.c, 1
  %i.g = tail call noundef i64 @_RNvXNtCslLTI5cSnp8O_6memchr3extPhNtB2_7Pointer8distanceCsbNU0JlWw3cF_14pulldown_cmark(ptr noundef %i.f, ptr noundef nonnull readonly %0)
  %i.h = add i64 %i.g, 1
  br label %_RINvNtNtNtCslLTI5cSnp8O_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECsbNU0JlWw3cF_14pulldown_cmark.exit

_RINvNtNtNtCslLTI5cSnp8O_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECsbNU0JlWw3cF_14pulldown_cmark.exit: ; preds = %bb.a, %bb.b
  %spec.select.i = phi i64 [ %i.h, %bb.b ], [ %1, %bb.a ]
  ret i64 %spec.select.i
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable
define hidden noundef i64 @_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_ch_repeat(ptr noalias nofree noundef nonnull readonly captures(address) %0, i64 noundef range(i64 0, -9223372036854775808) %1, i8 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.b = icmp samesign eq i64 %1, 0
  br i1 %i.b, label %_RINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNCNvB2_14scan_ch_repeat0EB4_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNCNvB2W_14scan_ch_repeat0E0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i
  %.sroa.01.019.i.i.i.i = phi i64 [ %i.g, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNCNvB2W_14scan_ch_repeat0E0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.c = phi ptr [ %i.f, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNCNvB2W_14scan_ch_repeat0E0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i ], [ %0, %bb.a ] ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !alias.scope !225, !noalias !230, !noundef !15
  %i.e = icmp eq i8 %i.d, %2
  br i1 %i.e, label %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNCNvB2W_14scan_ch_repeat0E0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i, label %_RINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNCNvB2_14scan_ch_repeat0EB4_.exit

_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNCNvB2W_14scan_ch_repeat0E0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  %i.g = add nuw nsw i64 %.sroa.01.019.i.i.i.i, 1
  %i.h = icmp eq ptr %i.f, %i.a
  br i1 %i.h, label %_RINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNCNvB2_14scan_ch_repeat0EB4_.exit, label %.lr.ph.i.i.i.i

_RINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNCNvB2_14scan_ch_repeat0EB4_.exit: ; preds = %.lr.ph.i.i.i.i, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNCNvB2W_14scan_ch_repeat0E0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i, %bb.a
  %.sroa.0.1.i.i.i = phi i64 [ 0, %bb.a ], [ %1, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNCNvB2W_14scan_ch_repeat0E0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i ], [ %.sroa.01.019.i.i.i.i, %.lr.ph.i.i.i.i ]
  ret i64 %.sroa.0.1.i.i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_link_dest(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) unnamed_addr #1 {
bb.a:
  %i.a = icmp ugt i64 %3, %2
  br i1 %i.a, label %bb.c, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  %i.b = sub nuw i64 %2, %3                       ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %3 ; 7 uses
  %i.d = icmp eq i64 %2, %3
  br i1 %i.d, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread, label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %3, i64 noundef %2, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @78) #15
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.e = load i8, ptr %i.c, align 1, !noundef !15
  %i.f = icmp eq i8 %i.e, 60
  br i1 %i.f, label %.preheader, label %.lr.ph59

.preheader:                                       ; preds = %bb.d
  %i.g = icmp ugt i64 %i.b, 1
  br i1 %i.g, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.e, %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.h, align 8
  br label %bb.y

.lr.ph:                                           ; preds = %.preheader, %bb.e
  %.sroa.0.055 = phi i64 [ %i.k, %bb.e ], [ 1, %.preheader ] ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sroa.0.055
  %i.j = load i8, ptr %i.i, align 1, !noundef !15
  switch i8 %i.j, label %bb.e [
    i8 10, label %bb.f
    i8 13, label %bb.f
    i8 60, label %bb.f
    i8 62, label %bb.g
    i8 92, label %bb.l
  ]

bb.e:                                             ; preds = %bb.n, %bb.m, %bb.l, %.lr.ph
  %.sroa.0.1 = phi i64 [ %.sroa.0.055, %.lr.ph ], [ %.sroa.0.055, %bb.l ], [ %spec.select, %bb.n ], [ %.sroa.0.055, %bb.m ]
  %i.k = add i64 %.sroa.0.1, 1                    ; 2 uses
  %i.l = icmp ult i64 %i.k, %i.b
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.f:                                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.m, align 8
  br label %bb.y

bb.g:                                             ; preds = %.lr.ph
  %i.n = add i64 %3, 1                            ; 6 uses
  %i.o = add i64 %.sroa.0.055, %3                 ; 5 uses
  %i.p = icmp ugt i64 %i.n, %i.o
  %i.q = icmp ugt i64 %i.o, %2
  %or.cond.i41 = or i1 %i.p, %i.q
  br i1 %or.cond.i41, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit43.thread46, label %bb.h, !prof !148

bb.h:                                             ; preds = %bb.g
  %i.r = icmp eq i64 %i.n, %2
  br i1 %i.r, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit43.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = icmp eq i64 %i.n, 0
  br i1 %i.s, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.t = icmp eq i64 %i.o, %2
  br i1 %i.t, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit43.thread, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit43

bb.k:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %i.n
  %i.v = load i8, ptr %i.u, align 1, !alias.scope !240, !noundef !15
  %i.w = icmp sgt i8 %i.v, -65
  br i1 %i.w, label %bb.j, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit43.thread46, !prof !177

_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit43: ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %i.o
  %i.y = load i8, ptr %i.x, align 1, !alias.scope !240, !noundef !15
  %i.z = icmp sgt i8 %i.y, -65
  br i1 %i.z, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit43.thread, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit43.thread46, !prof !153

bb.l:                                             ; preds = %.lr.ph
  %i.aa = add nuw i64 %.sroa.0.055, 1             ; 3 uses
  %i.ab = icmp ult i64 %i.aa, %i.b
  br i1 %i.ab, label %bb.m, label %bb.e

_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit43.thread46: ; preds = %bb.k, %bb.g, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit43
  tail call void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %i.n, i64 noundef %i.o, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @75) #15
  unreachable

_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit43.thread: ; preds = %bb.j, %bb.h, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit43
  %i.ac = add nuw i64 %.sroa.0.055, 1
  %i.ad = add i64 %.sroa.0.055, -1
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 %i.n
  store i64 %i.ac, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ae, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ad, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.y

bb.m:                                             ; preds = %bb.l
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.aa
  %i.ag = load i8, ptr %i.af, align 1, !noundef !15 ; 3 uses
  %i.ah = icmp sgt i8 %i.ag, -1
  br i1 %i.ah, label %bb.n, label %bb.e

bb.n:                                             ; preds = %bb.m
  %i.ai = lshr i8 %i.ag, 4
  %i.aj = zext nneg i8 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr @76, i64 %i.aj
  %i.al = load i16, ptr %i.ak, align 2, !noundef !15
  %i.am = and i8 %i.ag, 15
  %i.an = zext nneg i8 %i.am to i16
  %i.ao = shl nuw i16 1, %i.an
  %i.ap = and i16 %i.al, %i.ao
  %.not = icmp eq i16 %i.ap, 0
  %spec.select = select i1 %.not, i64 %.sroa.0.055, i64 %i.aa
  br label %bb.e

._crit_edge60:                                    ; preds = %bb.s, %.lr.ph59, %bb.u
  %.sroa.0.2.lcssa = phi i64 [ %.sroa.0.257, %bb.u ], [ %i.bd, %bb.s ], [ %.sroa.0.257, %.lr.ph59 ] ; 3 uses
  %i.aq = add i64 %.sroa.0.2.lcssa, %3            ; 5 uses
  %i.ar = icmp ugt i64 %3, %i.aq
  %i.as = icmp ugt i64 %i.aq, %2
  %or.cond.i = or i1 %i.ar, %i.as
  br i1 %or.cond.i, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread50, label %bb.o, !prof !148

bb.o:                                             ; preds = %._crit_edge60
  %i.at = icmp eq i64 %3, 0
  br i1 %i.at, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.q, %bb.o
  %i.au = icmp eq i64 %i.aq, %2
  br i1 %i.au, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit

bb.q:                                             ; preds = %bb.o
  %i.av = load i8, ptr %i.c, align 1, !alias.scope !243, !noundef !15
  %i.aw = icmp sgt i8 %i.av, -65
  br i1 %i.aw, label %bb.p, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread50, !prof !177

_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit: ; preds = %bb.p
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 %i.aq
  %i.ay = load i8, ptr %i.ax, align 1, !alias.scope !243, !noundef !15
  %i.az = icmp sgt i8 %i.ay, -65
  br i1 %i.az, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread50, !prof !153

.lr.ph59:                                         ; preds = %bb.d, %bb.s
  %.sroa.0.257 = phi i64 [ %i.bd, %bb.s ], [ 0, %bb.d ] ; 10 uses
  %.sroa.017.056 = phi i64 [ %.sroa.017.1, %bb.s ], [ 0, %bb.d ] ; 8 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sroa.0.257
  %i.bb = load i8, ptr %i.ba, align 1, !noundef !15 ; 2 uses
  %i.bc = icmp ult i8 %i.bb, 33
  br i1 %i.bc, label %._crit_edge60, label %bb.r

bb.r:                                             ; preds = %.lr.ph59
  switch i8 %i.bb, label %bb.s [
    i8 40, label %bb.t
    i8 41, label %bb.u
    i8 92, label %bb.v
  ]

bb.s:                                             ; preds = %bb.ab, %bb.aa, %bb.v, %bb.z, %bb.w, %bb.r
  %.sroa.017.1 = phi i64 [ %.sroa.017.056, %bb.r ], [ %i.bj, %bb.w ], [ %i.bl, %bb.z ], [ %.sroa.017.056, %bb.v ], [ %.sroa.017.056, %bb.ab ], [ %.sroa.017.056, %bb.aa ]
  %.sroa.0.3 = phi i64 [ %.sroa.0.257, %bb.r ], [ %.sroa.0.257, %bb.w ], [ %.sroa.0.257, %bb.z ], [ %.sroa.0.257, %bb.v ], [ %spec.select40, %bb.ab ], [ %.sroa.0.257, %bb.aa ]
  %i.bd = add i64 %.sroa.0.3, 1                   ; 3 uses
  %i.be = icmp ult i64 %i.bd, %i.b
  br i1 %i.be, label %.lr.ph59, label %._crit_edge60

bb.t:                                             ; preds = %bb.r
  %i.bf = icmp ugt i64 %.sroa.017.056, %4
  br i1 %i.bf, label %bb.x, label %bb.w

bb.u:                                             ; preds = %bb.r
  %i.bg = icmp eq i64 %.sroa.017.056, 0
  br i1 %i.bg, label %._crit_edge60, label %bb.z

bb.v:                                             ; preds = %bb.r
  %i.bh = add i64 %.sroa.0.257, 1                 ; 3 uses
  %i.bi = icmp ult i64 %i.bh, %i.b
  br i1 %i.bi, label %bb.aa, label %bb.s

bb.w:                                             ; preds = %bb.t
  %i.bj = add i64 %.sroa.017.056, 1
  br label %bb.s

bb.x:                                             ; preds = %bb.t
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.bk, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit43.thread, %bb.f, %._crit_edge, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread
  ret void

bb.z:                                             ; preds = %bb.u
  %i.bl = add i64 %.sroa.017.056, -1
  br label %bb.s

bb.aa:                                            ; preds = %bb.v
  %i.bm = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bh
  %i.bn = load i8, ptr %i.bm, align 1, !noundef !15 ; 3 uses
  %i.bo = icmp sgt i8 %i.bn, -1
  br i1 %i.bo, label %bb.ab, label %bb.s

bb.ab:                                            ; preds = %bb.aa
  %i.bp = lshr i8 %i.bn, 4
  %i.bq = zext nneg i8 %i.bp to i64
  %i.br = getelementptr inbounds nuw [2 x i8], ptr @76, i64 %i.bq
  %i.bs = load i16, ptr %i.br, align 2, !noundef !15
  %i.bt = and i8 %i.bn, 15
  %i.bu = zext nneg i8 %i.bt to i16
  %i.bv = shl nuw i16 1, %i.bu
  %i.bw = and i16 %i.bs, %i.bv
  %.not39 = icmp eq i16 %i.bw, 0
  %spec.select40 = select i1 %.not39, i64 %.sroa.0.257, i64 %i.bh
  br label %bb.s

_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread50: ; preds = %bb.q, %._crit_edge60, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit
  tail call void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %3, i64 noundef %i.aq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @77) #15
  unreachable

_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread: ; preds = %bb.b, %bb.p, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit
  %.sroa.0.2.lcssa8487 = phi i64 [ %.sroa.0.2.lcssa, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit ], [ %.sroa.0.2.lcssa, %bb.p ], [ 0, %bb.b ] ; 2 uses
  store i64 %.sroa.0.2.lcssa8487, ptr %0, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %.sroa.422.0..sroa_idx, align 8
  %.sroa.523.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0.2.lcssa8487, ptr %.sroa.523.0..sroa_idx, align 8
  br label %bb.y
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners15scan_blank_line(ptr noalias nofree noundef nonnull readonly captures(address) %0, i64 noundef range(i64 0, -9223372036854775808) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.b = icmp samesign eq i64 %1, 0
  br i1 %i.b, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners8scan_eol.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i
  %.sroa.01.018.i.i.i.i.i = phi i64 [ %i.f, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i ], [ 0, %bb.a ] ; 11 uses
  %i.c = phi ptr [ %i.e, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i ], [ %0, %bb.a ] ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !alias.scope !246, !noalias !253, !noundef !15
  switch i8 %i.d, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_whitespace_no_nl.exit [
    i8 9, label %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i
    i8 11, label %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i
    i8 12, label %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i
    i8 32, label %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i
  ]

_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  %i.f = add nuw nsw i64 %.sroa.01.018.i.i.i.i.i, 1
  %i.g = icmp eq ptr %i.e, %i.a
  br i1 %i.g, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners8scan_eol.exit, label %.lr.ph.i.i.i.i.i

_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_whitespace_no_nl.exit: ; preds = %.lr.ph.i.i.i.i.i
  %i.h = icmp samesign ugt i64 %.sroa.01.018.i.i.i.i.i, %1
  br i1 %i.h, label %bb.f, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_whitespace_no_nl.exit.thread, !prof !72

_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_whitespace_no_nl.exit.thread: ; preds = %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_whitespace_no_nl.exit
  %i.i = sub nuw nsw i64 %1, %.sroa.01.018.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.018.i.i.i.i.i ; 2 uses
  %i.k = icmp eq i64 %1, %.sroa.01.018.i.i.i.i.i
  br i1 %i.k, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners8scan_eol.exit, label %bb.b

bb.b:                                             ; preds = %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_whitespace_no_nl.exit.thread
  %i.l = load i8, ptr %i.j, align 1, !alias.scope !261, !noundef !15
  switch i8 %i.l, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners8scan_eol.exit [
    i8 10, label %bb.c
    i8 13, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  br label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners8scan_eol.exit

bb.d:                                             ; preds = %bb.b
  %.not.i = icmp eq i64 %i.i, 1
  br i1 %.not.i, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners8scan_eol.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.n = load i8, ptr %i.m, align 1, !alias.scope !261, !noundef !15
  %i.o = icmp eq i8 %i.n, 10
  %spec.select.i = select i1 %i.o, i64 2, i64 1
  br label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners8scan_eol.exit

_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners8scan_eol.exit: ; preds = %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i, %bb.a, %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_whitespace_no_nl.exit.thread, %bb.b, %bb.c, %bb.d, %bb.e
  %.sroa.0.1.i.i.i.i611 = phi i64 [ %.sroa.01.018.i.i.i.i.i, %bb.b ], [ %.sroa.01.018.i.i.i.i.i, %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_whitespace_no_nl.exit.thread ], [ %.sroa.01.018.i.i.i.i.i, %bb.c ], [ %.sroa.01.018.i.i.i.i.i, %bb.d ], [ %.sroa.01.018.i.i.i.i.i, %bb.e ], [ 0, %bb.a ], [ %1, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i ]
  %.sroa.5.0.i = phi i64 [ undef, %bb.b ], [ 0, %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_whitespace_no_nl.exit.thread ], [ 1, %bb.c ], [ 1, %bb.d ], [ %spec.select.i, %bb.e ], [ 0, %bb.a ], [ 0, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i ]
  %.sroa.0.0.i = phi i64 [ 0, %bb.b ], [ 1, %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_whitespace_no_nl.exit.thread ], [ 1, %bb.c ], [ 1, %bb.d ], [ 1, %bb.e ], [ 1, %bb.a ], [ 1, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i ]
  %i.p = add i64 %.sroa.5.0.i, %.sroa.0.1.i.i.i.i611
  %i.q = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.r = insertvalue { i64, i64 } %i.q, i64 %i.p, 1
  ret { i64, i64 } %i.r

bb.f:                                             ; preds = %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_whitespace_no_nl.exit
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %.sroa.01.018.i.i.i.i.i, i64 noundef %1, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #15
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners15scan_code_fence(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_ch_repeat.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %1, align 1, !noundef !15   ; 2 uses
  switch i8 %i.a, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_ch_repeat.exit.thread [
    i8 96, label %bb.c
    i8 126, label %bb.i
  ]

bb.c:                                             ; preds = %bb.b
  %i.b = add nsw i64 %2, -1                       ; 2 uses
  %i.c = getelementptr i8, ptr %1, i64 %2         ; 2 uses
  %i.d = icmp samesign eq i64 %i.b, 0
  br i1 %i.d, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_ch_repeat.exit.thread, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNCNvB2W_14scan_ch_repeat0E0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i
  %.sroa.01.019.i.i.i.i.i = phi i64 [ %i.j, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNCNvB2W_14scan_ch_repeat0E0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.f = phi ptr [ %i.i, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNCNvB2W_14scan_ch_repeat0E0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i ], [ %i.e, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !alias.scope !264, !noalias !271, !noundef !15
  %i.h = icmp eq i8 %i.g, 96
  br i1 %i.h, label %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNCNvB2W_14scan_ch_repeat0E0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_ch_repeat.exit

_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNCNvB2W_14scan_ch_repeat0E0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 1 ; 2 uses
  %i.j = add nuw nsw i64 %.sroa.01.019.i.i.i.i.i, 1
  %i.k = icmp eq ptr %i.i, %i.c
  br i1 %i.k, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_ch_repeat.exit, label %.lr.ph.i.i.i.i.i

_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_ch_repeat.exit: ; preds = %.lr.ph.i.i.i.i.i, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNCNvB2W_14scan_ch_repeat0E0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i
  %.sroa.0.1.i.i.i.i = phi i64 [ %.sroa.01.019.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.b, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNCNvB2W_14scan_ch_repeat0E0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i ]
  %i.l = add i64 %.sroa.0.1.i.i.i.i, 1            ; 7 uses
  %i.m = icmp ugt i64 %i.l, 2
  br i1 %i.m, label %bb.d, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_ch_repeat.exit.thread

bb.d:                                             ; preds = %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_ch_repeat.exit
  %i.n = icmp ugt i64 %i.l, %2
  br i1 %i.n, label %bb.f, label %bb.e, !prof !19

bb.e:                                             ; preds = %bb.d
  %i.o = sub nuw nsw i64 %2, %i.l                 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %i.l ; 4 uses
  %i.q = load atomic ptr, ptr @_RNvNvNtNtNtCslLTI5cSnp8O_6memchr4arch6x86_646memchr10memchr_raw2FN monotonic, align 8, !noalias !281, !nonnull !15, !noundef !15
  %i.r = tail call { i64, ptr } %i.q(i8 noundef 10, ptr noundef nonnull readonly %i.p, ptr noundef nonnull readonly %i.c), !noalias !286, !inline_history !287 ; 2 uses
  %i.s = extractvalue { i64, ptr } %i.r, 0
  %i.t = trunc nuw i64 %i.s to i1
  br i1 %i.t, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners13scan_nextline.exit, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners13scan_nextline.exit.thread

_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners13scan_nextline.exit: ; preds = %bb.e
  %i.u = extractvalue { i64, ptr } %i.r, 1
  %i.v = tail call noundef i64 @_RNvXNtCslLTI5cSnp8O_6memchr3extPhNtB2_7Pointer8distanceCsbNU0JlWw3cF_14pulldown_cmark(ptr noundef %i.u, ptr noundef nonnull readonly %i.p)
  %i.w = add i64 %i.v, 1                          ; 3 uses
  %.not40 = icmp ugt i64 %i.w, %i.o
  br i1 %.not40, label %bb.g, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners13scan_nextline.exit.thread, !prof !288

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %i.l, i64 noundef %2, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #15
  unreachable

bb.g:                                             ; preds = %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners13scan_nextline.exit
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.w, i64 noundef %i.o, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @80) #15
  unreachable

_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners13scan_nextline.exit.thread: ; preds = %bb.e, %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners13scan_nextline.exit
  %spec.select.i.i49 = phi i64 [ %i.w, %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners13scan_nextline.exit ], [ %i.o, %bb.e ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 %spec.select.i.i49
  %.not.not.not.i.not60 = icmp samesign eq i64 %spec.select.i.i49, 0
  br i1 %.not.not.not.i.not60, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners15scan_code_fence0EB1H_.exit, label %.lr.ph

bb.h:                                             ; preds = %.lr.ph
  %i.y = getelementptr inbounds nuw i8, ptr %i.z, i64 1 ; 2 uses
  %.not.not.not.i.not = icmp eq ptr %i.y, %i.x
  br i1 %.not.not.not.i.not, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners15scan_code_fence0EB1H_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners13scan_nextline.exit.thread, %bb.h
  %i.z = phi ptr [ %i.y, %bb.h ], [ %i.p, %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners13scan_nextline.exit.thread ] ; 2 uses
  %.val.i = load i8, ptr %i.z, align 1, !noalias !289, !noundef !15
  %i.aa = icmp eq i8 %.val.i, 96
  br i1 %i.aa, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_ch_repeat.exit.thread, label %bb.h

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners15scan_code_fence0EB1H_.exit: ; preds = %bb.h, %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners13scan_nextline.exit.thread, %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_ch_repeat.exit45
  %.sroa.02.0 = phi i64 [ %i.an, %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_ch_repeat.exit45 ], [ %i.l, %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners13scan_nextline.exit.thread ], [ %i.l, %bb.h ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.02.0, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.a, ptr %i.ac, align 8
  br label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_ch_repeat.exit.thread

bb.i:                                             ; preds = %bb.b
  %i.ad = add nsw i64 %2, -1                      ; 2 uses
  %i.ae = getelementptr i8, ptr %1, i64 %2
  %i.af = icmp samesign eq i64 %i.ad, 0
  br i1 %i.af, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_ch_repeat.exit.thread, label %.lr.ph.i.i.i.i.i41.preheader

.lr.ph.i.i.i.i.i41.preheader:                     ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 1
  br label %.lr.ph.i.i.i.i.i41

.lr.ph.i.i.i.i.i41:                               ; preds = %.lr.ph.i.i.i.i.i41.preheader, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNCNvB2W_14scan_ch_repeat0E0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i44
  %.sroa.01.019.i.i.i.i.i42 = phi i64 [ %i.al, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNCNvB2W_14scan_ch_repeat0E0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i44 ], [ 0, %.lr.ph.i.i.i.i.i41.preheader ] ; 2 uses
  %i.ah = phi ptr [ %i.ak, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNCNvB2W_14scan_ch_repeat0E0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i44 ], [ %i.ag, %.lr.ph.i.i.i.i.i41.preheader ] ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1, !alias.scope !292, !noalias !299, !noundef !15
  %i.aj = icmp eq i8 %i.ai, 126
  br i1 %i.aj, label %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNCNvB2W_14scan_ch_repeat0E0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i44, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_ch_repeat.exit45

_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNCNvB2W_14scan_ch_repeat0E0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i44: ; preds = %.lr.ph.i.i.i.i.i41
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 1 ; 2 uses
  %i.al = add nuw nsw i64 %.sroa.01.019.i.i.i.i.i42, 1
  %i.am = icmp eq ptr %i.ak, %i.ae
  br i1 %i.am, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_ch_repeat.exit45, label %.lr.ph.i.i.i.i.i41

_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_ch_repeat.exit45: ; preds = %.lr.ph.i.i.i.i.i41, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNCNvB2W_14scan_ch_repeat0E0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i44
  %.sroa.0.1.i.i.i.i43 = phi i64 [ %.sroa.01.019.i.i.i.i.i42, %.lr.ph.i.i.i.i.i41 ], [ %i.ad, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNCNvB2W_14scan_ch_repeat0E0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i44 ]
  %i.an = add i64 %.sroa.0.1.i.i.i.i43, 1         ; 2 uses
  %i.ao = icmp ugt i64 %i.an, 2
  br i1 %i.ao, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners15scan_code_fence0EB1H_.exit, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_ch_repeat.exit.thread

_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_ch_repeat.exit.thread: ; preds = %.lr.ph, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners15scan_code_fence0EB1H_.exit, %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_ch_repeat.exit45, %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_ch_repeat.exit, %bb.c, %bb.i, %bb.b, %bb.a
  %.sink = phi i64 [ 0, %bb.b ], [ 0, %bb.a ], [ 0, %bb.i ], [ 1, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners15scan_code_fence0EB1H_.exit ], [ 0, %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_ch_repeat.exit45 ], [ 0, %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_ch_repeat.exit ], [ 0, %bb.c ], [ 0, %.lr.ph ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners15scan_empty_list(ptr noalias nofree noundef nonnull readonly captures(address) %0, i64 noundef range(i64 0, -9223372036854775808) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !309)
  %i.b = icmp samesign eq i64 %1, 0
  br i1 %i.b, label %.loopexit, label %.lr.ph.i.i.i.i.i.i

_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners15scan_blank_line.exit: ; preds = %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i.i.1, %bb.g, %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_whitespace_no_nl.exit.thread.i.1, %bb.h, %bb.b
  %.lcssa11 = phi i1 [ false, %bb.b ], [ %switch.selectcmp, %bb.h ], [ true, %bb.g ], [ true, %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_whitespace_no_nl.exit.thread.i.1 ], [ true, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i.i.1 ]
  ret i1 %.lcssa11

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.a, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i.i
  %.sroa.01.018.i.i.i.i.i.i = phi i64 [ %i.f, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i.i ], [ 0, %bb.a ] ; 9 uses
  %i.c = phi ptr [ %i.e, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i.i ], [ %0, %bb.a ] ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !alias.scope !312, !noalias !319, !noundef !15
  switch i8 %i.d, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_whitespace_no_nl.exit.i [
    i8 9, label %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i.i
    i8 11, label %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i.i
    i8 12, label %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i.i
    i8 32, label %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i.i
  ]

_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  %i.f = add nuw nsw i64 %.sroa.01.018.i.i.i.i.i.i, 1
  %i.g = icmp eq ptr %i.e, %i.a
  br i1 %i.g, label %.loopexit, label %.lr.ph.i.i.i.i.i.i

_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_whitespace_no_nl.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.h = icmp samesign ugt i64 %.sroa.01.018.i.i.i.i.i.i, %1
  br i1 %i.h, label %bb.e, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_whitespace_no_nl.exit.thread.i, !prof !72

_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_whitespace_no_nl.exit.thread.i: ; preds = %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_whitespace_no_nl.exit.i
  %i.i = sub nuw nsw i64 %1, %.sroa.01.018.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.018.i.i.i.i.i.i ; 2 uses
  %i.k = icmp eq i64 %1, %.sroa.01.018.i.i.i.i.i.i
  br i1 %i.k, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_whitespace_no_nl.exit.thread.i
  %i.l = load i8, ptr %i.j, align 1, !alias.scope !327, !noundef !15
  switch i8 %i.l, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners15scan_blank_line.exit [
    i8 10, label %.loopexit
    i8 13, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i64 %i.i, 1
  br i1 %.not.i.i, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.n = load i8, ptr %i.m, align 1, !alias.scope !327, !noundef !15
  %i.o = icmp eq i8 %i.n, 10
  %spec.select.i.i = select i1 %i.o, i64 2, i64 1
  br label %.loopexit

bb.e:                                             ; preds = %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_whitespace_no_nl.exit.i.1, %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_whitespace_no_nl.exit.i
  %.lcssa = phi i64 [ %1, %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_whitespace_no_nl.exit.i ], [ %i.r, %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_whitespace_no_nl.exit.i.1 ] ; 2 uses
  %.sroa.01.018.i.i.i.i.i.i.lcssa.lcssa = phi i64 [ %.sroa.01.018.i.i.i.i.i.i, %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_whitespace_no_nl.exit.i ], [ %.sroa.01.018.i.i.i.i.i.i.1, %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_whitespace_no_nl.exit.i.1 ]
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %.sroa.01.018.i.i.i.i.i.i.lcssa.lcssa, i64 noundef range(i64 0, -9223372036854775808) %.lcssa, i64 noundef range(i64 0, -9223372036854775808) %.lcssa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #15, !noalias !309
  unreachable

bb.f:                                             ; preds = %.loopexit
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %i.p, i64 noundef %1, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @82) #15
  unreachable

.loopexit:                                        ; preds = %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i.i, %bb.b, %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_whitespace_no_nl.exit.thread.i, %bb.c, %bb.d, %bb.a
  %.sroa.0.1.i.i.i.i611.i.ph = phi i64 [ %.sroa.01.018.i.i.i.i.i.i, %bb.b ], [ 0, %bb.a ], [ %.sroa.01.018.i.i.i.i.i.i, %bb.d ], [ %.sroa.01.018.i.i.i.i.i.i, %bb.c ], [ %1, %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_whitespace_no_nl.exit.thread.i ], [ %1, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i.i ]
  %.sroa.5.0.i.i.ph = phi i64 [ 1, %bb.b ], [ 0, %bb.a ], [ %spec.select.i.i, %bb.d ], [ 1, %bb.c ], [ 0, %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_whitespace_no_nl.exit.thread.i ], [ 0, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i.i ]
  %i.p = add nuw i64 %.sroa.0.1.i.i.i.i611.i.ph, %.sroa.5.0.i.i.ph ; 4 uses
  %i.q = icmp ugt i64 %i.p, %1
  br i1 %i.q, label %bb.f, label %bb.g, !prof !19

bb.g:                                             ; preds = %.loopexit
  %i.r = sub nuw nsw i64 %1, %i.p                 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %i.p ; 2 uses
  %i.t = icmp samesign eq i64 %i.r, 0
  br i1 %i.t, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners15scan_blank_line.exit, label %.lr.ph.i.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.i.1:                             ; preds = %bb.g, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i.i.1
  %.sroa.01.018.i.i.i.i.i.i.1 = phi i64 [ %i.x, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i.i.1 ], [ 0, %bb.g ] ; 5 uses
  %i.u = phi ptr [ %i.w, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i.i.1 ], [ %i.s, %bb.g ] ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !alias.scope !330, !noalias !319, !noundef !15
  switch i8 %i.v, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_whitespace_no_nl.exit.i.1 [
    i8 9, label %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i.i.1
    i8 11, label %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i.i.1
    i8 12, label %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i.i.1
    i8 32, label %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i.i.1
  ]

_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i.i.1: ; preds = %.lr.ph.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.1
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 1 ; 2 uses
  %i.x = add nuw nsw i64 %.sroa.01.018.i.i.i.i.i.i.1, 1
  %i.y = icmp eq ptr %i.w, %i.a
  br i1 %i.y, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners15scan_blank_line.exit, label %.lr.ph.i.i.i.i.i.i.1

_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_whitespace_no_nl.exit.i.1: ; preds = %.lr.ph.i.i.i.i.i.i.1
  %i.z = icmp samesign ugt i64 %.sroa.01.018.i.i.i.i.i.i.1, %i.r
  br i1 %i.z, label %bb.e, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_whitespace_no_nl.exit.thread.i.1, !prof !72

_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_whitespace_no_nl.exit.thread.i.1: ; preds = %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_whitespace_no_nl.exit.i.1
  %i.aa = icmp eq i64 %i.r, %.sroa.01.018.i.i.i.i.i.i.1
  br i1 %i.aa, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners15scan_blank_line.exit, label %bb.h

bb.h:                                             ; preds = %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_whitespace_no_nl.exit.thread.i.1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.01.018.i.i.i.i.i.i.1
  %i.ac = load i8, ptr %i.ab, align 1, !alias.scope !332, !noundef !15 ; 2 uses
  %switch.selectcmp.case1 = icmp eq i8 %i.ac, 10
  %switch.selectcmp.case2 = icmp eq i8 %i.ac, 13
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  br label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners15scan_blank_line.exit
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners15scan_table_head(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 16 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 2 uses
  %i.c = icmp samesign eq i64 %2, 0
  br i1 %i.c, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners11calc_indent.exit.thread, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.d = add nsw i64 %2, -1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.preheader.i
  %.sroa.0.021.i = phi i64 [ %.sroa.0.2.i, %bb.d ], [ 0, %.lr.ph.preheader.i ] ; 4 uses
  %.sroa.05.020.i = phi i64 [ %.sroa.7.018.i, %bb.d ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.0.01119.i = phi ptr [ %i.e, %bb.d ], [ %1, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.7.018.i = phi i64 [ %i.f, %bb.d ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.01119.i, i64 1 ; 2 uses
  %i.f = add nuw nsw i64 %.sroa.7.018.i, 1
  %i.g = load i8, ptr %.sroa.0.01119.i, align 1, !alias.scope !333, !noundef !15
  switch i8 %i.g, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners11calc_indent.exit [
    i8 32, label %bb.b
    i8 9, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph.i
  %i.h = add i64 %.sroa.0.021.i, 1                ; 2 uses
  %i.i = icmp eq i64 %i.h, 4
  br i1 %i.i, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners11calc_indent.exit.thread, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i
  %i.j = and i64 %.sroa.0.021.i, -4
  %i.k = add i64 %i.j, 4                          ; 2 uses
  %i.l = icmp ugt i64 %i.k, 4
  br i1 %i.l, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners11calc_indent.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.2.i = phi i64 [ %i.h, %bb.b ], [ %i.k, %bb.c ] ; 2 uses
  %i.m = icmp eq ptr %i.e, %i.b
  br i1 %i.m, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners11calc_indent.exit, label %.lr.ph.i

_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners11calc_indent.exit: ; preds = %.lr.ph.i, %bb.c, %bb.d
  %.sroa.05.0.lcssa.i.ph = phi i64 [ %i.d, %bb.d ], [ %.sroa.05.020.i, %bb.c ], [ %.sroa.05.020.i, %.lr.ph.i ] ; 5 uses
  %.sroa.0.1.i.ph = phi i64 [ %.sroa.0.2.i, %bb.d ], [ %.sroa.0.021.i, %bb.c ], [ %.sroa.0.021.i, %.lr.ph.i ]
  %i.n = icmp ugt i64 %.sroa.0.1.i.ph, 3
  %i.o = icmp eq i64 %.sroa.05.0.lcssa.i.ph, %2
  %or.cond = select i1 %i.n, i1 true, i1 %i.o
  br i1 %or.cond, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners11calc_indent.exit.thread, label %bb.e

_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners11calc_indent.exit.thread: ; preds = %bb.b, %bb.a, %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners11calc_indent.exit
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.ae

bb.e:                                             ; preds = %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners11calc_indent.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 5 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  store i64 0, ptr %i.q, align 8
  %i.r = icmp ult i64 %.sroa.05.0.lcssa.i.ph, %2
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.05.0.lcssa.i.ph
  %i.t = load i8, ptr %i.s, align 1, !noundef !15
  %i.u = icmp eq i8 %i.t, 124
  %i.v = zext i1 %i.u to i64
  %spec.select = add nuw nsw i64 %.sroa.05.0.lcssa.i.ph, %i.v ; 5 uses
  %i.w = icmp ugt i64 %spec.select, %2
  br i1 %i.w, label %.invoke, label %bb.j, !prof !19

bb.g:                                             ; preds = %bb.e
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %.sroa.05.0.lcssa.i.ph, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @83) #16
          to label %bb.i unwind label %.loopexit.split-lp

bb.h:                                             ; preds = %.loopexit41, %.loopexit.split-lp, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.loopexit, %.loopexit41 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCsbNU0JlWw3cF_14pulldown_cmark9AlignmentEEB1a_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #17
          to label %bb.ag unwind label %bb.af

.loopexit41:                                      ; preds = %bb.w
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

.loopexit.split-lp:                               ; preds = %.invoke, %bb.g, %bb.ad
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.i:                                             ; preds = %bb.g
  unreachable

bb.j:                                             ; preds = %bb.f
  %i.x = icmp samesign eq i64 %spec.select, %2
  br i1 %i.x, label %.loopexit.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select
  %i.z = add nuw i64 %2, 1                        ; 2 uses
  br label %.lr.ph

.invoke:                                          ; preds = %.lr.ph, %bb.f
  %i.aa = phi i64 [ %spec.select, %bb.f ], [ %i.z, %.lr.ph ]
  %i.ab = phi ptr [ @85, %bb.f ], [ @84, %.lr.ph ]
  invoke void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %i.aa, i64 noundef %2, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ab) #16
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.s
  %i.ac = phi i64 [ %i.ar, %bb.s ], [ 0, %.lr.ph.preheader ] ; 10 uses
  %.sroa.0.173 = phi i64 [ %i.as, %bb.s ], [ %spec.select, %.lr.ph.preheader ] ; 7 uses
  %.sroa.015.072 = phi ptr [ %i.ad, %bb.s ], [ %i.y, %.lr.ph.preheader ] ; 2 uses
  %.sroa.010.071 = phi i8 [ %.sroa.010.1, %bb.s ], [ 0, %.lr.ph.preheader ] ; 7 uses
  %.sroa.013.070 = phi i8 [ %.sroa.013.1, %bb.s ], [ 1, %.lr.ph.preheader ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.015.072, i64 1 ; 2 uses
  %exitcond = icmp eq i64 %.sroa.0.173, %i.z
  br i1 %exitcond, label %.invoke, label %bb.k, !prof !19

bb.k:                                             ; preds = %.lr.ph
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.173
  %i.af = load i8, ptr %i.ae, align 1, !alias.scope !336, !noundef !15
  switch i8 %i.af, label %bb.n [
    i8 10, label %.loopexit40
    i8 13, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.ag = sub nuw nsw i64 %2, %.sroa.0.173
  %.not.i = icmp eq i64 %i.ag, 1
  br i1 %.not.i, label %.loopexit40, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.173
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  %i.aj = load i8, ptr %i.ai, align 1, !alias.scope !336, !noundef !15
  %i.ak = icmp eq i8 %i.aj, 10
  %spec.select.i = select i1 %i.ak, i64 2, i64 1
  br label %.loopexit40

.loopexit40:                                      ; preds = %bb.k, %bb.l, %bb.m
  %.sroa.5.0.i.ph = phi i64 [ %spec.select.i, %bb.m ], [ 1, %bb.l ], [ 1, %bb.k ]
  %i.al = add i64 %.sroa.5.0.i.ph, %.sroa.0.173
  br label %.loopexit

bb.n:                                             ; preds = %bb.k
  %i.am = load i8, ptr %.sroa.015.072, align 1, !noundef !15
  switch i8 %i.am, label %bb.o [
    i8 32, label %bb.s
    i8 58, label %bb.t
    i8 45, label %bb.u
    i8 124, label %bb.v
  ]

.loopexit:                                        ; preds = %bb.s, %.loopexit40
  %i.an = phi i64 [ %i.ac, %.loopexit40 ], [ %i.ar, %bb.s ] ; 3 uses
  %.sroa.013.060 = phi i8 [ %.sroa.013.070, %.loopexit40 ], [ %.sroa.013.1, %bb.s ]
  %.sroa.010.053 = phi i8 [ %.sroa.010.071, %.loopexit40 ], [ %.sroa.010.1, %bb.s ]
  %.sroa.0.2 = phi i64 [ %i.al, %.loopexit40 ], [ %2, %bb.s ] ; 2 uses
  %i.ao = trunc nuw i8 %.sroa.013.060 to i1
  br i1 %i.ao, label %.loopexit.thread, label %bb.ac

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCsbNU0JlWw3cF_14pulldown_cmark9AlignmentENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.q unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCsbNU0JlWw3cF_14pulldown_cmark9AlignmentENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.r

bb.q:                                             ; preds = %bb.o
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCsbNU0JlWw3cF_14pulldown_cmark9AlignmentENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCsbNU0JlWw3cF_14pulldown_cmark9AlignmentEEB1a_.exit unwind label %bb.ab

bb.r:                                             ; preds = %bb.p
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #14
  unreachable

bb.s:                                             ; preds = %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCsbNU0JlWw3cF_14pulldown_cmark9AlignmentE8push_mutBH_.exit, %bb.y, %bb.z, %bb.aa, %bb.x, %bb.u, %bb.n
  %i.ar = phi i64 [ %i.ac, %bb.n ], [ %i.az, %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCsbNU0JlWw3cF_14pulldown_cmark9AlignmentE8push_mutBH_.exit ], [ %i.ac, %bb.u ], [ %i.ac, %bb.x ], [ %i.ac, %bb.y ], [ %i.ac, %bb.z ], [ %i.ac, %bb.aa ] ; 2 uses
  %.sroa.013.1 = phi i8 [ %.sroa.013.070, %bb.n ], [ 1, %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCsbNU0JlWw3cF_14pulldown_cmark9AlignmentE8push_mutBH_.exit ], [ 0, %bb.u ], [ 0, %bb.x ], [ 0, %bb.y ], [ 0, %bb.z ], [ 0, %bb.aa ] ; 2 uses
  %.sroa.010.1 = phi i8 [ %.sroa.010.071, %bb.n ], [ 0, %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCsbNU0JlWw3cF_14pulldown_cmark9AlignmentE8push_mutBH_.exit ], [ %.sroa.010.071, %bb.u ], [ %.sroa.010.071, %bb.x ], [ %spec.select31, %bb.y ], [ 3, %bb.z ], [ 2, %bb.aa ] ; 2 uses
  %i.as = add i64 %.sroa.0.173, 1
  %i.at = icmp eq ptr %i.ad, %i.b
  br i1 %i.at, label %.loopexit, label %.lr.ph

bb.t:                                             ; preds = %bb.n
  %i.au = trunc nuw i8 %.sroa.013.070 to i1
  br i1 %i.au, label %bb.y, label %bb.x

bb.u:                                             ; preds = %bb.n
  br label %bb.s

bb.v:                                             ; preds = %bb.n
  %i.av = load i64, ptr %i.a, align 8, !range !339, !alias.scope !340, !noundef !15
  %i.aw = icmp eq i64 %i.ac, %i.av
  br i1 %i.aw, label %bb.w, label %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCsbNU0JlWw3cF_14pulldown_cmark9AlignmentE8push_mutBH_.exit

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCsbNU0JlWw3cF_14pulldown_cmark9AlignmentE8grow_oneBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #18
          to label %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCsbNU0JlWw3cF_14pulldown_cmark9AlignmentE8push_mutBH_.exit unwind label %.loopexit41

_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCsbNU0JlWw3cF_14pulldown_cmark9AlignmentE8push_mutBH_.exit: ; preds = %bb.w, %bb.v
  %i.ax = load ptr, ptr %i.p, align 8, !alias.scope !340, !nonnull !15, !noundef !15
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ac
  store i8 %.sroa.010.071, ptr %i.ay, align 1
  %i.az = add i64 %i.ac, 1                        ; 2 uses
  store i64 %i.az, ptr %i.q, align 8, !alias.scope !340
  br label %bb.s

bb.x:                                             ; preds = %bb.t
  switch i8 %.sroa.010.071, label %bb.s [
    i8 0, label %bb.z
    i8 1, label %bb.aa
  ]

bb.y:                                             ; preds = %bb.t
  %spec.select31 = call i8 @llvm.umax.i8(i8 %.sroa.010.071, i8 1)
  br label %bb.s

bb.z:                                             ; preds = %bb.x
  br label %bb.s

bb.aa:                                            ; preds = %bb.x
  br label %bb.s

bb.ab:                                            ; preds = %bb.q
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.p, %bb.ab
  %eh.lpad-body = phi { ptr, i32 } [ %i.ba, %bb.ab ], [ %i.ap, %bb.p ]
  store i64 0, ptr %i.a, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.p, align 8
  store i64 0, ptr %i.q, align 8
  br label %bb.h

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCsbNU0JlWw3cF_14pulldown_cmark9AlignmentEEB1a_.exit: ; preds = %bb.q
  store i64 0, ptr %i.a, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.p, align 8
  br label %.loopexit.thread.sink.split

.loopexit.thread.sink.split:                      ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCsbNU0JlWw3cF_14pulldown_cmark9AlignmentEEB1a_.exit, %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCsbNU0JlWw3cF_14pulldown_cmark9AlignmentE8push_mutBH_.exit33
  %.sink = phi i64 [ %i.bg, %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCsbNU0JlWw3cF_14pulldown_cmark9AlignmentE8push_mutBH_.exit33 ], [ 0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCsbNU0JlWw3cF_14pulldown_cmark9AlignmentEEB1a_.exit ]
  %.sroa.0.3.ph = phi i64 [ %.sroa.0.2, %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCsbNU0JlWw3cF_14pulldown_cmark9AlignmentE8push_mutBH_.exit33 ], [ %.sroa.0.173, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCsbNU0JlWw3cF_14pulldown_cmark9AlignmentEEB1a_.exit ]
  store i64 %.sink, ptr %i.q, align 8
  br label %.loopexit.thread

.loopexit.thread:                                 ; preds = %.loopexit.thread.sink.split, %bb.j, %.loopexit
  %.sroa.0.3 = phi i64 [ %.sroa.0.2, %.loopexit ], [ %2, %bb.j ], [ %.sroa.0.3.ph, %.loopexit.thread.sink.split ]
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  store i64 %.sroa.0.3, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.ae

bb.ac:                                            ; preds = %.loopexit
  %i.bc = load i64, ptr %i.a, align 8, !range !339, !alias.scope !343, !noundef !15
  %i.bd = icmp eq i64 %i.an, %i.bc
  br i1 %i.bd, label %bb.ad, label %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCsbNU0JlWw3cF_14pulldown_cmark9AlignmentE8push_mutBH_.exit33

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCsbNU0JlWw3cF_14pulldown_cmark9AlignmentE8grow_oneBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #18
          to label %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCsbNU0JlWw3cF_14pulldown_cmark9AlignmentE8push_mutBH_.exit33 unwind label %.loopexit.split-lp

_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCsbNU0JlWw3cF_14pulldown_cmark9AlignmentE8push_mutBH_.exit33: ; preds = %bb.ad, %bb.ac
  %i.be = load ptr, ptr %i.p, align 8, !alias.scope !343, !nonnull !15, !noundef !15
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.an
  store i8 %.sroa.010.053, ptr %i.bf, align 1
  %i.bg = add i64 %i.an, 1
  br label %.loopexit.thread.sink.split

bb.ae:                                            ; preds = %.loopexit.thread, %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners11calc_indent.exit.thread
  ret void

bb.af:                                            ; preds = %bb.h
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #14
  unreachable

bb.ag:                                            ; preds = %bb.h
  resume { ptr, i32 } %.pn
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable
define hidden noundef range(i8 0, 7) i8 @_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners16scan_atx_heading(ptr noalias nofree noundef nonnull readonly captures(address) %0, i64 noundef range(i64 0, -9223372036854775808) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.b = icmp samesign eq i64 %1, 0
  br i1 %i.b, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_ch_repeat.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNCNvB2W_14scan_ch_repeat0E0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i
  %.sroa.01.019.i.i.i.i.i = phi i64 [ %i.g, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNCNvB2W_14scan_ch_repeat0E0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.c = phi ptr [ %i.f, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNCNvB2W_14scan_ch_repeat0E0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i ], [ %0, %bb.a ] ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !alias.scope !346, !noalias !353, !noundef !15
  %i.e = icmp eq i8 %i.d, 35
  br i1 %i.e, label %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNCNvB2W_14scan_ch_repeat0E0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_ch_repeat.exit

_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNCNvB2W_14scan_ch_repeat0E0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  %i.g = add nuw nsw i64 %.sroa.01.019.i.i.i.i.i, 1
  %i.h = icmp eq ptr %i.f, %i.a
  br i1 %i.h, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionhE6map_orbNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners19is_ascii_whitespaceEBW_.exit.thread, label %.lr.ph.i.i.i.i.i

_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_ch_repeat.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.a
  %.sroa.0.1.i.i.i.i = phi i64 [ 0, %bb.a ], [ %.sroa.01.019.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 9 uses
  %i.i = icmp samesign ult i64 %.sroa.0.1.i.i.i.i, %1
  br i1 %i.i, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionhE6map_orbNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners19is_ascii_whitespaceEBW_.exit, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionhE6map_orbNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners19is_ascii_whitespaceEBW_.exit.thread

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionhE6map_orbNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners19is_ascii_whitespaceEBW_.exit: ; preds = %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_ch_repeat.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.1.i.i.i.i
  %i.k = load i8, ptr %i.j, align 1, !noundef !15
  switch i8 %i.k, label %switch.lookup [
    i8 32, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionhE6map_orbNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners19is_ascii_whitespaceEBW_.exit.thread
    i8 13, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionhE6map_orbNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners19is_ascii_whitespaceEBW_.exit.thread
    i8 12, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionhE6map_orbNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners19is_ascii_whitespaceEBW_.exit.thread
    i8 11, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionhE6map_orbNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners19is_ascii_whitespaceEBW_.exit.thread
    i8 10, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionhE6map_orbNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners19is_ascii_whitespaceEBW_.exit.thread
    i8 9, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionhE6map_orbNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners19is_ascii_whitespaceEBW_.exit.thread
  ]

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionhE6map_orbNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners19is_ascii_whitespaceEBW_.exit.thread: ; preds = %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNCNvB2W_14scan_ch_repeat0E0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionhE6map_orbNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners19is_ascii_whitespaceEBW_.exit, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionhE6map_orbNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners19is_ascii_whitespaceEBW_.exit, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionhE6map_orbNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners19is_ascii_whitespaceEBW_.exit, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionhE6map_orbNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners19is_ascii_whitespaceEBW_.exit, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionhE6map_orbNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners19is_ascii_whitespaceEBW_.exit, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionhE6map_orbNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners19is_ascii_whitespaceEBW_.exit, %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_ch_repeat.exit
  %.sroa.0.1.i.i.i.i5811 = phi i64 [ %.sroa.0.1.i.i.i.i, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionhE6map_orbNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners19is_ascii_whitespaceEBW_.exit ], [ %.sroa.0.1.i.i.i.i, %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_ch_repeat.exit ], [ %.sroa.0.1.i.i.i.i, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionhE6map_orbNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners19is_ascii_whitespaceEBW_.exit ], [ %.sroa.0.1.i.i.i.i, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionhE6map_orbNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners19is_ascii_whitespaceEBW_.exit ], [ %.sroa.0.1.i.i.i.i, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionhE6map_orbNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners19is_ascii_whitespaceEBW_.exit ], [ %.sroa.0.1.i.i.i.i, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionhE6map_orbNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners19is_ascii_whitespaceEBW_.exit ], [ %.sroa.0.1.i.i.i.i, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionhE6map_orbNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners19is_ascii_whitespaceEBW_.exit ], [ %1, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNCNvB2W_14scan_ch_repeat0E0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i ] ; 2 uses
  %i.l = icmp ult i64 %.sroa.0.1.i.i.i.i5811, 7
  %switch.idx.cast = trunc i64 %.sroa.0.1.i.i.i.i5811 to i8
  %spec.select = select i1 %i.l, i8 %switch.idx.cast, i8 0
  br label %switch.lookup

switch.lookup:                                    ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionhE6map_orbNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners19is_ascii_whitespaceEBW_.exit.thread, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionhE6map_orbNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners19is_ascii_whitespaceEBW_.exit
  %.sroa.0.0 = phi i8 [ 0, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionhE6map_orbNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners19is_ascii_whitespaceEBW_.exit ], [ %spec.select, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionhE6map_orbNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners19is_ascii_whitespaceEBW_.exit.thread ]
  ret i8 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners16scan_html_type_7(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_html_block_inner(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noundef null, ptr undef)
  %i.c = load i64, ptr %i.a, align 8, !range !363, !noundef !15
  %.not = icmp eq i64 %i.c, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.48.0.copyload = load i64, ptr %.sroa.48.0..sroa_idx, align 8 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = icmp ugt i64 %.sroa.48.0.copyload, %1
  br i1 %i.d, label %bb.h, label %bb.e, !prof !19

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECsbNU0JlWw3cF_14pulldown_cmark.exit, %bb.c
  %.sroa.4.0 = phi i64 [ %.sroa.48.0.copyload, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECsbNU0JlWw3cF_14pulldown_cmark.exit ], [ undef, %bb.c ]
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECsbNU0JlWw3cF_14pulldown_cmark.exit ], [ 0, %bb.c ]
  %i.e = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.f = insertvalue { i64, i64 } %i.e, i64 %.sroa.4.0, 1
  ret { i64, i64 } %i.f

bb.e:                                             ; preds = %bb.b
  %i.g = sub nuw nsw i64 %1, %.sroa.48.0.copyload ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.48.0.copyload ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.j = icmp eq i64 %1, %.sroa.48.0.copyload
  br i1 %i.j, label %.loopexit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.e, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i.i
  %.sroa.01.018.i.i.i.i.i.i = phi i64 [ %i.n, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i.i ], [ 0, %bb.e ] ; 5 uses
  %i.k = phi ptr [ %i.m, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i.i ], [ %i.h, %bb.e ] ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !alias.scope !364, !noalias !373, !noundef !15
  switch i8 %i.l, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_whitespace_no_nl.exit.i [
    i8 9, label %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i.i
    i8 11, label %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i.i
    i8 12, label %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i.i
    i8 32, label %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i.i
  ]

_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 1 ; 2 uses
  %i.n = add nuw nsw i64 %.sroa.01.018.i.i.i.i.i.i, 1
  %i.o = icmp eq ptr %i.m, %i.i
  br i1 %i.o, label %.loopexit, label %.lr.ph.i.i.i.i.i.i

_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_whitespace_no_nl.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.p = icmp samesign ugt i64 %.sroa.01.018.i.i.i.i.i.i, %i.g
  br i1 %i.p, label %bb.g, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_whitespace_no_nl.exit.thread.i, !prof !72

_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_whitespace_no_nl.exit.thread.i: ; preds = %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_whitespace_no_nl.exit.i
  %i.q = icmp eq i64 %i.g, %.sroa.01.018.i.i.i.i.i.i
  br i1 %i.q, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_whitespace_no_nl.exit.thread.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.018.i.i.i.i.i.i
  %i.s = load i8, ptr %i.r, align 1, !alias.scope !381, !noundef !15 ; 2 uses
  %switch.selectcmp.case1 = icmp eq i8 %i.s, 10
  %switch.selectcmp.case2 = icmp eq i8 %i.s, 13
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %i.t = zext i1 %switch.selectcmp to i64
  br label %.loopexit

bb.g:                                             ; preds = %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_whitespace_no_nl.exit.i
  invoke void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %.sroa.01.018.i.i.i.i.i.i, i64 noundef range(i64 0, -9223372036854775808) %i.g, i64 noundef range(i64 0, -9223372036854775808) %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #15
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.b
  invoke void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %.sroa.48.0.copyload, i64 noundef %1, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @86) #16
          to label %bb.l unwind label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECsbNU0JlWw3cF_14pulldown_cmark(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #17
          to label %common.resume unwind label %bb.m

.loopexit:                                        ; preds = %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i.i, %bb.f, %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_whitespace_no_nl.exit.thread.i, %bb.e
  %.sroa.0.0.i.i = phi i64 [ 1, %bb.e ], [ 1, %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_whitespace_no_nl.exit.thread.i ], [ %i.t, %bb.f ], [ 1, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i.i ]
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsbNU0JlWw3cF_14pulldown_cmark(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECsbNU0JlWw3cF_14pulldown_cmark.exit unwind label %bb.j

bb.j:                                             ; preds = %.loopexit
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsbNU0JlWw3cF_14pulldown_cmark(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #14
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.v, %bb.j ], [ %i.u, %bb.i ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECsbNU0JlWw3cF_14pulldown_cmark.exit: ; preds = %.loopexit
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsbNU0JlWw3cF_14pulldown_cmark(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.l:                                             ; preds = %bb.h
  unreachable

bb.m:                                             ; preds = %bb.i
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #14
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners17scan_refdef_title(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 16 uses
  %i.b = icmp samesign eq i64 %2, 0
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 4 uses
  %i.d = load i8, ptr %1, align 1, !noalias !384, !noundef !15 ; 5 uses
  %i.e = icmp sgt i8 %i.d, -1
  br i1 %i.e, label %bb.c, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit12.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit12.i: ; preds = %bb.b
  %i.f = and i8 %i.d, 31
  %i.g = zext nneg i8 %i.f to i32                 ; 3 uses
  %i.h = icmp samesign ne i64 %2, 1
  tail call void @llvm.assume(i1 %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.j = load i8, ptr %i.c, align 1, !noalias !384, !noundef !15
  %i.k = shl nuw nsw i32 %i.g, 6
  %i.l = and i8 %i.j, 63
  %i.m = zext nneg i8 %i.l to i32                 ; 2 uses
  %i.n = or disjoint i32 %i.k, %i.m
  %i.o = icmp samesign ugt i8 %i.d, -33
  br i1 %i.o, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit14.i, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = zext nneg i8 %i.d to i32
  br label %bb.d

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit14.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit12.i
  %i.q = icmp samesign ne i64 %2, 2
  tail call void @llvm.assume(i1 %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 3 ; 2 uses
  %i.s = load i8, ptr %i.i, align 1, !noalias !384, !noundef !15
  %i.t = shl nuw nsw i32 %i.m, 6
  %i.u = and i8 %i.s, 63
  %i.v = zext nneg i8 %i.u to i32
  %i.w = or disjoint i32 %i.t, %i.v               ; 2 uses
  %i.x = shl nuw nsw i32 %i.g, 12
  %i.y = or disjoint i32 %i.w, %i.x
  %i.z = icmp samesign ugt i8 %i.d, -17
  br i1 %i.z, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit16.i, label %bb.d

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit16.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit14.i
  %i.aa = icmp samesign ne i64 %2, 3
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ac = load i8, ptr %i.r, align 1, !noalias !384, !noundef !15
  %i.ad = shl nuw nsw i32 %i.g, 18
  %i.ae = and i32 %i.ad, 1835008
  %i.af = shl nuw nsw i32 %i.w, 6
  %i.ag = and i8 %i.ac, 63
  %i.ah = zext nneg i8 %i.ag to i32
  %i.ai = or disjoint i32 %i.af, %i.ah
  %i.aj = or disjoint i32 %i.ai, %i.ae
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit12.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit16.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit14.i
  %.sroa.0.6.ph = phi ptr [ %i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit12.i ], [ %i.r, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit14.i ], [ %i.ab, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit16.i ], [ %i.c, %bb.c ]
  %.sroa.4.0.i.ph = phi i32 [ %i.n, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit12.i ], [ %i.y, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit14.i ], [ %i.aj, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit16.i ], [ %i.p, %bb.c ] ; 4 uses
  %i.ak = icmp samesign ult i32 %.sroa.4.0.i.ph, 1114112
  tail call void @llvm.assume(i1 %i.ak)
  switch i32 %.sroa.4.0.i.ph, label %bb.f [
    i32 39, label %bb.h
    i32 34, label %bb.h
    i32 40, label %bb.g
  ]

bb.e:                                             ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.al, align 8
  br label %bb.aq

bb.f:                                             ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.am, align 8
  br label %bb.aq

bb.g:                                             ; preds = %bb.d
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.d, %bb.g
  %.sroa.0.0 = phi i32 [ 41, %bb.g ], [ %.sroa.4.0.i.ph, %bb.d ], [ %.sroa.4.0.i.ph, %bb.d ]
  br label %bb.i

bb.i:                                             ; preds = %.backedge, %bb.h
  %.sroa.47.0 = phi i32 [ -2, %bb.h ], [ %.sroa.47.0.be, %.backedge ] ; 2 uses
  %.sroa.0.0119 = phi ptr [ %.sroa.0.6.ph, %bb.h ], [ %.sroa.0.0119.be, %.backedge ] ; 8 uses
  %.sroa.04.0 = phi i64 [ 1, %bb.h ], [ %.sroa.04.0.be, %.backedge ] ; 8 uses
  switch i32 %.sroa.47.0, label %bb.n [
    i32 -2, label %bb.j
    i32 -1, label %_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsbNU0JlWw3cF_14pulldown_cmark.exit70
  ]

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0119) ]
  %i.an = icmp eq ptr %.sroa.0.0119, %i.a
  br i1 %i.an, label %_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsbNU0JlWw3cF_14pulldown_cmark.exit70, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0119, i64 1 ; 3 uses
  %i.ap = load i8, ptr %.sroa.0.0119, align 1, !noalias !387, !noundef !15 ; 5 uses
  %i.aq = icmp sgt i8 %i.ap, -1
  br i1 %i.aq, label %bb.l, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit12.i65

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit12.i65: ; preds = %bb.k
  %i.ar = and i8 %i.ap, 31
  %i.as = zext nneg i8 %i.ar to i32               ; 3 uses
  %i.at = icmp ne ptr %i.ao, %i.a
  tail call void @llvm.assume(i1 %i.at)
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.0119, i64 2 ; 3 uses
  %i.av = load i8, ptr %i.ao, align 1, !noalias !387, !noundef !15
  %i.aw = shl nuw nsw i32 %i.as, 6
  %i.ax = and i8 %i.av, 63
  %i.ay = zext nneg i8 %i.ax to i32               ; 2 uses
  %i.az = or disjoint i32 %i.aw, %i.ay
  %i.ba = icmp samesign ugt i8 %i.ap, -33
  br i1 %i.ba, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit14.i68, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bb = zext nneg i8 %i.ap to i32
  br label %bb.m

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit14.i68: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit12.i65
  %i.bc = icmp ne ptr %i.au, %i.a
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.0119, i64 3 ; 3 uses
  %i.be = load i8, ptr %i.au, align 1, !noalias !387, !noundef !15
  %i.bf = shl nuw nsw i32 %i.ay, 6
  %i.bg = and i8 %i.be, 63
  %i.bh = zext nneg i8 %i.bg to i32
  %i.bi = or disjoint i32 %i.bf, %i.bh            ; 2 uses
  %i.bj = shl nuw nsw i32 %i.as, 12
  %i.bk = or disjoint i32 %i.bi, %i.bj
  %i.bl = icmp samesign ugt i8 %i.ap, -17
  br i1 %i.bl, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit16.i69, label %bb.m

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit16.i69: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit14.i68
  %i.bm = icmp ne ptr %i.bd, %i.a
  tail call void @llvm.assume(i1 %i.bm)
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.0119, i64 4
  %i.bo = load i8, ptr %i.bd, align 1, !noalias !387, !noundef !15
  %i.bp = shl nuw nsw i32 %i.as, 18
  %i.bq = and i32 %i.bp, 1835008
  %i.br = shl nuw nsw i32 %i.bi, 6
  %i.bs = and i8 %i.bo, 63
  %i.bt = zext nneg i8 %i.bs to i32
  %i.bu = or disjoint i32 %i.br, %i.bt
  %i.bv = or disjoint i32 %i.bu, %i.bq
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit12.i65, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit16.i69, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit14.i68
  %.sroa.0.7.ph = phi ptr [ %i.au, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit12.i65 ], [ %i.bd, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit14.i68 ], [ %i.bn, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit16.i69 ], [ %i.ao, %bb.l ]
  %.sroa.4.0.i66.ph = phi i32 [ %i.az, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit12.i65 ], [ %i.bk, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit14.i68 ], [ %i.bv, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit16.i69 ], [ %i.bb, %bb.l ] ; 2 uses
end_hunk_2
begin_hunk_3_@_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners17scan_refdef_title:bb.a

bb.x:                                             ; preds = %bb.w
  %i.do = icmp samesign ult i32 %.sroa.47.1, 65536
  %. = select i1 %i.do, i64 3, i64 4
  br label %bb.y

bb.y:                                             ; preds = %bb.v, %bb.x, %bb.w
  %.sroa.016.0 = phi i64 [ 2, %bb.w ], [ %., %bb.x ], [ 1, %bb.v ]
  %.not.i.i.i86 = icmp eq ptr %.sroa.0.2, %i.a
  br i1 %.not.i.i.i86, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECsbNU0JlWw3cF_14pulldown_cmark.exit92, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 1 ; 3 uses
  %i.dq = load i8, ptr %.sroa.0.2, align 1, !noalias !400, !noundef !15 ; 5 uses
  %i.dr = icmp sgt i8 %i.dq, -1
  br i1 %i.dr, label %bb.aa, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit12.i.i.i.i87

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit12.i.i.i.i87: ; preds = %bb.z
  %i.ds = and i8 %i.dq, 31
  %i.dt = zext nneg i8 %i.ds to i32               ; 3 uses
  %i.du = icmp ne ptr %i.dp, %i.a
  tail call void @llvm.assume(i1 %i.du)
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 2 ; 3 uses
  %i.dw = load i8, ptr %i.dp, align 1, !noalias !400, !noundef !15
  %i.dx = shl nuw nsw i32 %i.dt, 6
  %i.dy = and i8 %i.dw, 63
  %i.dz = zext nneg i8 %i.dy to i32               ; 2 uses
  %i.ea = or disjoint i32 %i.dx, %i.dz
  %i.eb = icmp samesign ugt i8 %i.dq, -33
  br i1 %i.eb, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit14.i.i.i.i90, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ec = zext nneg i8 %i.dq to i32
  br label %bb.ab

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit14.i.i.i.i90: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit12.i.i.i.i87
  %i.ed = icmp ne ptr %i.dv, %i.a
  tail call void @llvm.assume(i1 %i.ed)
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 3 ; 3 uses
  %i.ef = load i8, ptr %i.dv, align 1, !noalias !400, !noundef !15
  %i.eg = shl nuw nsw i32 %i.dz, 6
  %i.eh = and i8 %i.ef, 63
  %i.ei = zext nneg i8 %i.eh to i32
  %i.ej = or disjoint i32 %i.eg, %i.ei            ; 2 uses
  %i.ek = shl nuw nsw i32 %i.dt, 12
  %i.el = or disjoint i32 %i.ej, %i.ek
  %i.em = icmp samesign ugt i8 %i.dq, -17
  br i1 %i.em, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit16.i.i.i.i91, label %bb.ab

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit16.i.i.i.i91: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit14.i.i.i.i90
  %i.en = icmp ne ptr %i.ee, %i.a
  tail call void @llvm.assume(i1 %i.en)
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 4
  %i.ep = load i8, ptr %i.ee, align 1, !noalias !400, !noundef !15
  %i.eq = shl nuw nsw i32 %i.dt, 18
  %i.er = and i32 %i.eq, 1835008
  %i.es = shl nuw nsw i32 %i.ej, 6
  %i.et = and i8 %i.ep, 63
  %i.eu = zext nneg i8 %i.et to i32
  %i.ev = or disjoint i32 %i.es, %i.eu
  %i.ew = or disjoint i32 %i.ev, %i.er
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit12.i.i.i.i87, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit16.i.i.i.i91, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit14.i.i.i.i90
  %.sroa.0.13.ph = phi ptr [ %i.dv, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit12.i.i.i.i87 ], [ %i.ee, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit14.i.i.i.i90 ], [ %i.eo, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit16.i.i.i.i91 ], [ %i.dp, %bb.aa ]
  %spec.select.i.i.i89.ph = phi i32 [ %i.ea, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit12.i.i.i.i87 ], [ %i.el, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit14.i.i.i.i90 ], [ %i.ew, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit16.i.i.i.i91 ], [ %i.ec, %bb.aa ]
  %i.ex = add i64 %.sroa.016.0, %.sroa.04.1
  br label %bb.t

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECsbNU0JlWw3cF_14pulldown_cmark.exit92: ; preds = %bb.y
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.ey, align 8
  br label %bb.aq

bb.ac:                                            ; preds = %bb.n
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.1) ]
  %i.ez = icmp eq ptr %.sroa.0.1, %i.a
  br i1 %i.ez, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 1 ; 3 uses
  %i.fb = load i8, ptr %.sroa.0.1, align 1, !noalias !410, !noundef !15 ; 4 uses
  %i.fc = icmp sgt i8 %i.fb, -1
  br i1 %i.fc, label %.thread, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit12.i93

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit12.i93: ; preds = %bb.ad
  %i.fd = and i8 %i.fb, 31
  %i.fe = zext nneg i8 %i.fd to i32               ; 3 uses
  %i.ff = icmp ne ptr %i.fa, %i.a
  tail call void @llvm.assume(i1 %i.ff)
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 2 ; 3 uses
  %i.fh = load i8, ptr %i.fa, align 1, !noalias !410, !noundef !15
  %i.fi = shl nuw nsw i32 %i.fe, 6
  %i.fj = and i8 %i.fh, 63
  %i.fk = zext nneg i8 %i.fj to i32               ; 2 uses
  %i.fl = or disjoint i32 %i.fi, %i.fk
  %i.fm = icmp samesign ugt i8 %i.fb, -33
  br i1 %i.fm, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit14.i96, label %bb.af

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit14.i96: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit12.i93
  %i.fn = icmp ne ptr %i.fg, %i.a
  tail call void @llvm.assume(i1 %i.fn)
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 3 ; 3 uses
  %i.fp = load i8, ptr %i.fg, align 1, !noalias !410, !noundef !15
  %i.fq = shl nuw nsw i32 %i.fk, 6
  %i.fr = and i8 %i.fp, 63
  %i.fs = zext nneg i8 %i.fr to i32
  %i.ft = or disjoint i32 %i.fq, %i.fs            ; 2 uses
  %i.fu = shl nuw nsw i32 %i.fe, 12
  %i.fv = or disjoint i32 %i.ft, %i.fu
  %i.fw = icmp samesign ugt i8 %i.fb, -17
  br i1 %i.fw, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit16.i97, label %bb.af

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit16.i97: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit14.i96
  %i.fx = icmp ne ptr %i.fo, %i.a
  tail call void @llvm.assume(i1 %i.fx)
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 4
  %i.fz = load i8, ptr %i.fo, align 1, !noalias !410, !noundef !15
  %i.ga = shl nuw nsw i32 %i.fe, 18
  %i.gb = and i32 %i.ga, 1835008
  %i.gc = shl nuw nsw i32 %i.ft, 6
  %i.gd = and i8 %i.fz, 63
  %i.ge = zext nneg i8 %i.gd to i32
  %i.gf = or disjoint i32 %i.gc, %i.ge
  %i.gg = or disjoint i32 %i.gf, %i.gb
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.gh, align 8
  br label %bb.aq

bb.af:                                            ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit14.i96, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit16.i97, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit12.i93
  %.sroa.0.15.ph = phi ptr [ %i.fg, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit12.i93 ], [ %i.fo, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit14.i96 ], [ %i.fy, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit16.i97 ] ; 3 uses
  %.sroa.4.0.i94.ph = phi i32 [ %i.fl, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit12.i93 ], [ %i.fv, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit14.i96 ], [ %i.gg, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNU0JlWw3cF_14pulldown_cmark.exit16.i97 ] ; 4 uses
  %i.gi = icmp samesign ult i32 %.sroa.4.0.i94.ph, 1114112
  tail call void @llvm.assume(i1 %i.gi)
  %i.gj = icmp samesign ult i32 %.sroa.4.0.i94.ph, 128
  br i1 %i.gj, label %.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gk = icmp samesign ult i32 %.sroa.4.0.i94.ph, 2048
  br i1 %i.gk, label %.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gl = icmp samesign ult i32 %.sroa.4.0.i94.ph, 65536
  %.62 = select i1 %i.gl, i64 4, i64 5
  br label %.thread

.thread:                                          ; preds = %bb.ad, %bb.ag, %bb.ah, %bb.af
  %.sroa.0.15.ph154 = phi ptr [ %.sroa.0.15.ph, %bb.ag ], [ %.sroa.0.15.ph, %bb.ah ], [ %.sroa.0.15.ph, %bb.af ], [ %i.fa, %bb.ad ]
  %.sroa.028.0 = phi i64 [ 3, %bb.ag ], [ %.62, %bb.ah ], [ 2, %bb.af ], [ 2, %bb.ad ]
  %i.gm = add i64 %.sroa.028.0, %.sroa.04.0
  br label %.backedge

bb.ai:                                            ; preds = %bb.o
  %i.gn = icmp samesign ult i32 %.sroa.012.0, 1114112
  tail call void @llvm.assume(i1 %i.gn)
  %i.go = icmp samesign ult i32 %.sroa.012.0, 128
  br i1 %i.go, label %bb.ap, label %bb.an

bb.aj:                                            ; preds = %bb.o
  %i.gp = add i64 %.sroa.04.0, -1                 ; 2 uses
  %or.cond.i.not = icmp ult i64 %i.gp, %2
  br i1 %or.cond.i.not, label %bb.ak, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread157, !prof !177

bb.ak:                                            ; preds = %bb.aj
  %i.gq = icmp eq i64 %2, 1
  br i1 %i.gq, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gr = load i8, ptr %i.c, align 1, !alias.scope !413, !noundef !15
  %i.gs = icmp sgt i8 %i.gr, -65
  br i1 %i.gs, label %bb.am, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread157, !prof !177

bb.am:                                            ; preds = %bb.al
  %i.gt = icmp eq i64 %.sroa.04.0, %2
  br i1 %i.gt, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit

_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit: ; preds = %bb.am
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.04.0
  %i.gv = load i8, ptr %i.gu, align 1, !alias.scope !413, !noundef !15
  %i.gw = icmp sgt i8 %i.gv, -65
  br i1 %i.gw, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread157, !prof !153

bb.an:                                            ; preds = %bb.ai
  %i.gx = icmp samesign ult i32 %.sroa.012.0, 2048
  br i1 %i.gx, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gy = icmp samesign ult i32 %.sroa.012.0, 65536
  %.63 = select i1 %i.gy, i64 3, i64 4
  br label %bb.ap

bb.ap:                                            ; preds = %bb.an, %bb.ao, %bb.ai
  %.sroa.030.0 = phi i64 [ 2, %bb.an ], [ %.63, %bb.ao ], [ 1, %bb.ai ]
  %i.gz = add i64 %.sroa.030.0, %.sroa.04.0
  br label %.backedge

_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread157: ; preds = %bb.al, %bb.aj, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit
  tail call void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef 1, i64 noundef %.sroa.04.0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @87) #15
  unreachable

_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread: ; preds = %bb.am, %bb.ak, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit
  %i.ha = add i64 %.sroa.04.0, 1
  store i64 %i.ha, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.gp, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.aq

bb.aq:                                            ; preds = %bb.f, %bb.e, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECsbNU0JlWw3cF_14pulldown_cmark.exit92, %bb.u, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECsbNU0JlWw3cF_14pulldown_cmark.exit, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread, %bb.ae, %_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsbNU0JlWw3cF_14pulldown_cmark.exit70
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i8 } @_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners19scan_setext_heading(ptr noalias nofree noundef nonnull readonly captures(address) %0, i64 noundef range(i64 0, -9223372036854775808) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners15scan_blank_line.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1, !noundef !15   ; 2 uses
  switch i8 %i.a, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners15scan_blank_line.exit [
    i8 61, label %bb.d
    i8 45, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.03.0 = phi i8 [ 2, %bb.c ], [ 1, %bb.b ]
  %i.b = add nsw i64 %1, -1                       ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 %1         ; 2 uses
  %i.d = icmp samesign eq i64 %i.b, 0
  br i1 %i.d, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_ch_repeat.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNCNvB2W_14scan_ch_repeat0E0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i
  %.sroa.01.019.i.i.i.i.i = phi i64 [ %i.j, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNCNvB2W_14scan_ch_repeat0E0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.f = phi ptr [ %i.i, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNCNvB2W_14scan_ch_repeat0E0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i ], [ %i.e, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !alias.scope !416, !noalias !423, !noundef !15
  %i.h = icmp eq i8 %i.g, %i.a
  br i1 %i.h, label %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNCNvB2W_14scan_ch_repeat0E0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_ch_repeat.exit.loopexit

_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNCNvB2W_14scan_ch_repeat0E0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 1 ; 2 uses
  %i.j = add nuw nsw i64 %.sroa.01.019.i.i.i.i.i, 1
  %i.k = icmp eq ptr %i.i, %i.c
  br i1 %i.k, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_ch_repeat.exit.loopexit, label %.lr.ph.i.i.i.i.i

_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_ch_repeat.exit.loopexit: ; preds = %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNCNvB2W_14scan_ch_repeat0E0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.sroa.0.1.i.i.i.i.ph = phi i64 [ %i.b, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNCNvB2W_14scan_ch_repeat0E0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i ], [ %.sroa.01.019.i.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %i.l = add i64 %.sroa.0.1.i.i.i.i.ph, 1
  br label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_ch_repeat.exit

_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_ch_repeat.exit: ; preds = %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_ch_repeat.exit.loopexit, %bb.d
  %.sroa.0.1.i.i.i.i = phi i64 [ 1, %bb.d ], [ %i.l, %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_ch_repeat.exit.loopexit ] ; 5 uses
  %i.m = icmp ugt i64 %.sroa.0.1.i.i.i.i, %1
  br i1 %i.m, label %bb.j, label %bb.e, !prof !19

bb.e:                                             ; preds = %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_ch_repeat.exit
  %i.n = sub nuw nsw i64 %1, %.sroa.0.1.i.i.i.i   ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.1.i.i.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !433)
  %i.p = icmp samesign eq i64 %i.n, 0
  br i1 %i.p, label %.loopexit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.e, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i.i
  %.sroa.01.018.i.i.i.i.i.i = phi i64 [ %i.t, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i.i ], [ 0, %bb.e ] ; 9 uses
  %i.q = phi ptr [ %i.s, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i.i ], [ %i.o, %bb.e ] ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !alias.scope !436, !noalias !443, !noundef !15
  switch i8 %i.r, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_whitespace_no_nl.exit.i [
    i8 9, label %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i.i
    i8 11, label %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i.i
    i8 12, label %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i.i
    i8 32, label %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i.i
  ]

_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 1 ; 2 uses
  %i.t = add nuw nsw i64 %.sroa.01.018.i.i.i.i.i.i, 1
  %i.u = icmp eq ptr %i.s, %i.c
  br i1 %i.u, label %.loopexit, label %.lr.ph.i.i.i.i.i.i

_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_whitespace_no_nl.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.v = icmp samesign ugt i64 %.sroa.01.018.i.i.i.i.i.i, %i.n
  br i1 %i.v, label %bb.i, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_whitespace_no_nl.exit.thread.i, !prof !72

_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_whitespace_no_nl.exit.thread.i: ; preds = %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_whitespace_no_nl.exit.i
  %i.w = sub nuw nsw i64 %i.n, %.sroa.01.018.i.i.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sroa.01.018.i.i.i.i.i.i ; 2 uses
  %i.y = icmp eq i64 %i.n, %.sroa.01.018.i.i.i.i.i.i
  br i1 %i.y, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_whitespace_no_nl.exit.thread.i
  %i.z = load i8, ptr %i.x, align 1, !alias.scope !451, !noundef !15
  switch i8 %i.z, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners15scan_blank_line.exit [
    i8 10, label %.loopexit
    i8 13, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %.not.i.i = icmp eq i64 %i.w, 1
  br i1 %.not.i.i, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.ab = load i8, ptr %i.aa, align 1, !alias.scope !451, !noundef !15
  %i.ac = icmp eq i8 %i.ab, 10
  %spec.select.i.i = select i1 %i.ac, i64 2, i64 1
  br label %.loopexit

bb.i:                                             ; preds = %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_whitespace_no_nl.exit.i
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %.sroa.01.018.i.i.i.i.i.i, i64 noundef range(i64 0, -9223372036854775808) %i.n, i64 noundef range(i64 0, -9223372036854775808) %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #15, !noalias !433
  unreachable

bb.j:                                             ; preds = %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_ch_repeat.exit
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.1.i.i.i.i, i64 noundef %1, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @88) #15
  unreachable

.loopexit:                                        ; preds = %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i.i, %bb.f, %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_whitespace_no_nl.exit.thread.i, %bb.g, %bb.h, %bb.e
  %.sroa.0.1.i.i.i.i611.i.ph = phi i64 [ %.sroa.01.018.i.i.i.i.i.i, %bb.f ], [ 0, %bb.e ], [ %.sroa.01.018.i.i.i.i.i.i, %bb.h ], [ %.sroa.01.018.i.i.i.i.i.i, %bb.g ], [ %i.n, %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_whitespace_no_nl.exit.thread.i ], [ %i.n, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i.i ]
  %.sroa.5.0.i.i.ph = phi i64 [ 1, %bb.f ], [ 0, %bb.e ], [ %spec.select.i.i, %bb.h ], [ 1, %bb.g ], [ 0, %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_whitespace_no_nl.exit.thread.i ], [ 0, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i.i ]
  %i.ad = add nuw i64 %.sroa.0.1.i.i.i.i611.i.ph, %.sroa.0.1.i.i.i.i
  %i.ae = add i64 %i.ad, %.sroa.5.0.i.i.ph
  br label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners15scan_blank_line.exit

_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners15scan_blank_line.exit: ; preds = %bb.f, %bb.b, %bb.a, %.loopexit
  %.sroa.5.0 = phi i8 [ 0, %bb.a ], [ %.sroa.03.0, %.loopexit ], [ 0, %bb.b ], [ 0, %bb.f ]
  %.sroa.0.0 = phi i64 [ undef, %bb.a ], [ %i.ae, %.loopexit ], [ undef, %bb.b ], [ undef, %bb.f ]
  %i.af = insertvalue { i64, i8 } poison, i64 %.sroa.0.0, 0
  %i.ag = insertvalue { i64, i8 } %i.af, i8 %.sroa.5.0, 1
  ret { i64, i8 } %i.ag
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_blockquote_start(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsbNU0JlWw3cF_14pulldown_cmark(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @91, i64 noundef 2)
  %. = zext i1 %i.a to i64
  %i.b = insertvalue { i64, i64 } poison, i64 %., 0
  %i.c = insertvalue { i64, i64 } %i.b, i64 2, 1
  ret { i64, i64 } %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_html_block_inner(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noundef %3, ptr nofree readonly captures(none) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 11 uses
  store i64 0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  switch i64 %2, label %bb.b [
    i64 0, label %.invoke
    i64 1, label %bb.f
  ], !prof !454

.invoke:                                          ; preds = %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_whitespace_no_nl.exit.us, %bb.ax, %bb.w, %bb.s, %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_whitespace_no_nl.exit, %bb.v, %bb.a, %bb.bl, %bb.be, %bb.ba, %.loopexit117, %.preheader, %bb.h, %bb.f
  %i.e = phi i64 [ %i.ct, %bb.bl ], [ %.sroa.018.4, %bb.be ], [ 2, %bb.f ], [ %i.ab, %bb.h ], [ %i.gg, %bb.ba ], [ %i.ca, %bb.s ], [ 1, %bb.a ], [ %i.as, %.preheader ], [ %.sroa.018.3, %.loopexit117 ], [ %i.bi, %bb.w ], [ %.sroa.018.2, %bb.v ], [ %i.br, %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_whitespace_no_nl.exit ], [ %.sroa.6.0.i, %bb.ax ], [ %i.bd, %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_whitespace_no_nl.exit.us ]
  %i.f = phi i64 [ %i.gu, %bb.bl ], [ %2, %bb.be ], [ 1, %bb.f ], [ %2, %bb.h ], [ %2, %bb.ba ], [ %2, %bb.s ], [ %2, %bb.a ], [ %2, %.preheader ], [ %2, %.loopexit117 ], [ %i.ca, %bb.w ], [ %2, %bb.v ], [ %2, %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_whitespace_no_nl.exit ], [ %2, %bb.ax ], [ %2, %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_whitespace_no_nl.exit.us ]
  %i.g = phi i64 [ %2, %bb.bl ], [ %2, %bb.be ], [ 1, %bb.f ], [ %2, %bb.h ], [ %2, %bb.ba ], [ %2, %bb.w ], [ %2, %bb.a ], [ %2, %.preheader ], [ %2, %.loopexit117 ], [ %2, %bb.v ], [ %2, %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_whitespace_no_nl.exit ], [ %2, %bb.s ], [ %2, %bb.ax ], [ %2, %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_whitespace_no_nl.exit.us ]
  %i.h = phi ptr [ @97, %bb.bl ], [ @98, %bb.be ], [ @101, %bb.f ], [ @100, %bb.h ], [ @96, %bb.ba ], [ @93, %bb.s ], [ @102, %bb.a ], [ @95, %.preheader ], [ @99, %.loopexit117 ], [ @92, %bb.w ], [ @95, %bb.v ], [ @94, %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_whitespace_no_nl.exit ], [ @95, %bb.ax ], [ @94, %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_whitespace_no_nl.exit.us ]
  invoke void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %i.e, i64 noundef %i.f, i64 noundef %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h) #16
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.j = load i8, ptr %i.i, align 1, !noundef !15
  %i.k = icmp ne i8 %i.j, 47                      ; 2 uses
  %not. = xor i1 %i.k, true
  %spec.select68 = zext i1 %not. to i64
  br label %bb.f

.loopexit112:                                     ; preds = %bb.at, %bb.av
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.x, %bb.t
  %lpad.loopexit114 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.ad, %bb.ai
  %lpad.loopexit119 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke419, %.invoke, %bb.bn
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit112
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit112 ], [ %lpad.loopexit114, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit119, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsbNU0JlWw3cF_14pulldown_cmark(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %.loopexit.split-lp
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsbNU0JlWw3cF_14pulldown_cmark(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body unwind label %bb.e

bb.d:                                             ; preds = %.loopexit.split-lp
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsbNU0JlWw3cF_14pulldown_cmark(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.bp

bb.e:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #14
  unreachable

bb.f:                                             ; preds = %bb.b, %bb.a
  %i.n = phi i1 [ %i.k, %bb.b ], [ true, %bb.a ]  ; 2 uses
  %.sroa.05.0 = phi i64 [ %spec.select68, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.o = add nuw nsw i64 %.sroa.05.0, 1           ; 3 uses
  %.not = icmp samesign ult i64 %.sroa.05.0, %2
  br i1 %.not, label %bb.g, label %.invoke, !prof !455

bb.g:                                             ; preds = %bb.f
  %i.p = sub nuw nsw i64 %2, %i.o                 ; 2 uses
  %i.q = getelementptr i8, ptr %1, i64 %2         ; 7 uses
  %i.r = icmp samesign eq i64 %i.p, 0
  br i1 %i.r, label %.thread103, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %i.o
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_14is_ascii_alphaE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i
  %.sroa.01.018.i.i.i.i = phi i64 [ %i.y, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_14is_ascii_alphaE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %i.t = phi ptr [ %i.x, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_14is_ascii_alphaE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i ], [ %i.s, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !alias.scope !456, !noalias !461, !noundef !15
  %i.v = and i8 %i.u, -33
  %i.w = add i8 %i.v, -65
  %.sroa.0.0.i.i.i.i.i.i.i.i = icmp ult i8 %i.w, 26
  br i1 %.sroa.0.0.i.i.i.i.i.i.i.i, label %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_14is_ascii_alphaE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i, label %_RINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2_14is_ascii_alphaEB4_.exit

_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_14is_ascii_alphaE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 1 ; 2 uses
  %i.y = add nuw nsw i64 %.sroa.01.018.i.i.i.i, 1
  %i.z = icmp eq ptr %i.x, %i.q
  br i1 %i.z, label %_RINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2_14is_ascii_alphaEB4_.exit, label %.lr.ph.i.i.i.i

_RINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2_14is_ascii_alphaEB4_.exit: ; preds = %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_14is_ascii_alphaE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %.sroa.0.1.i.i.i = phi i64 [ %i.p, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_14is_ascii_alphaE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i ], [ %.sroa.01.018.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.aa = icmp eq i64 %.sroa.0.1.i.i.i, 0
  br i1 %i.aa, label %.thread103, label %bb.h

bb.h:                                             ; preds = %_RINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2_14is_ascii_alphaEB4_.exit
  %i.ab = add nuw i64 %.sroa.0.1.i.i.i, %i.o      ; 5 uses
  %i.ac = icmp ugt i64 %i.ab, %2
  br i1 %i.ac, label %.invoke, label %bb.k, !prof !19

.thread103:                                       ; preds = %bb.al, %bb.aj, %bb.ak, %bb.ak, %bb.ak, %bb.ak, %bb.ak, %bb.ak, %bb.ak, %.noexc81, %.noexc83, %switch.early.test.i.i, %bb.aa, %bb.n, %bb.n, %bb.m, %bb.o, %._crit_edge.i.i, %bb.am, %bb.am, %bb.an, %_RINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2_14is_ascii_alphaEB4_.exit, %bb.g
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsbNU0JlWw3cF_14pulldown_cmark(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECsbNU0JlWw3cF_14pulldown_cmark.exit73 unwind label %bb.i

bb.i:                                             ; preds = %.thread103
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsbNU0JlWw3cF_14pulldown_cmark(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #14
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.bh, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.gp, %bb.bh ], [ %i.ad, %bb.i ], [ %lpad.phi, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECsbNU0JlWw3cF_14pulldown_cmark.exit73: ; preds = %.thread103
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsbNU0JlWw3cF_14pulldown_cmark(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %bb.ay

bb.k:                                             ; preds = %bb.h
  %i.af = sub nuw nsw i64 %2, %i.ab               ; 2 uses
  %i.ag = icmp samesign eq i64 %i.af, 0
  br i1 %i.ag, label %_RINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2_24is_ascii_letterdigitdashEB4_.exit, label %.lr.ph.i.i.i.i74.preheader

.lr.ph.i.i.i.i74.preheader:                       ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %i.ab
  br label %.lr.ph.i.i.i.i74

.lr.ph.i.i.i.i74:                                 ; preds = %.lr.ph.i.i.i.i74.preheader, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_24is_ascii_letterdigitdashE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i
  %.sroa.01.018.i.i.i.i75 = phi i64 [ %i.aq, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_24is_ascii_letterdigitdashE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i74.preheader ] ; 2 uses
  %i.ai = phi ptr [ %i.aj, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_24is_ascii_letterdigitdashE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i ], [ %i.ah, %.lr.ph.i.i.i.i74.preheader ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1 ; 2 uses
  %i.ak = load i8, ptr %i.ai, align 1, !alias.scope !469, !noalias !474, !noundef !15 ; 3 uses
  %i.al = icmp eq i8 %i.ak, 45
  br i1 %i.al, label %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_24is_ascii_letterdigitdashE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i74
  %i.am = add i8 %i.ak, -48
  %or.cond.i.i.i.i.i.i.i.i = icmp ult i8 %i.am, 10
  %i.an = and i8 %i.ak, -33
  %i.ao = add i8 %i.an, -65
  %i.ap = icmp ult i8 %i.ao, 26
  %or.cond.i.i.i.i.i = or i1 %or.cond.i.i.i.i.i.i.i.i, %i.ap
  br i1 %or.cond.i.i.i.i.i, label %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_24is_ascii_letterdigitdashE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i, label %_RINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2_24is_ascii_letterdigitdashEB4_.exit

_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_24is_ascii_letterdigitdashE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i: ; preds = %bb.l, %.lr.ph.i.i.i.i74
  %i.aq = add nuw nsw i64 %.sroa.01.018.i.i.i.i75, 1
  %i.ar = icmp eq ptr %i.aj, %i.q
  br i1 %i.ar, label %_RINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2_24is_ascii_letterdigitdashEB4_.exit, label %.lr.ph.i.i.i.i74

_RINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2_24is_ascii_letterdigitdashEB4_.exit: ; preds = %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_24is_ascii_letterdigitdashE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i, %bb.l, %bb.k
  %.sroa.0.1.i.i.i76 = phi i64 [ 0, %bb.k ], [ %i.af, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_24is_ascii_letterdigitdashE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i ], [ %.sroa.01.018.i.i.i.i75, %bb.l ]
  %i.as = add i64 %.sroa.0.1.i.i.i76, %i.ab       ; 4 uses
  br i1 %i.n, label %.preheader, label %.loopexit117

.preheader:                                       ; preds = %_RINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2_24is_ascii_letterdigitdashEB4_.exit
  %i.at = icmp ugt i64 %i.as, %2
  br i1 %i.at, label %.invoke, label %.lr.ph.lr.ph, !prof !482

.lr.ph.lr.ph:                                     ; preds = %.preheader
  %.not64 = icmp eq ptr %3, null                  ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %invariant.op.i.i = add nsw i64 %2, -1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %bb.ax
  %.promoted209 = phi i64 [ 0, %.lr.ph.lr.ph ], [ %.promoted, %bb.ax ] ; 2 uses
  %.sroa.018.0208 = phi i64 [ %i.as, %.lr.ph.lr.ph ], [ %.sroa.6.0.i, %bb.ax ] ; 5 uses
  br i1 %.not64, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.av = sub nuw nsw i64 %2, %.sroa.018.0208     ; 2 uses
  %i.aw = icmp samesign eq i64 %i.av, 0
  br i1 %i.aw, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_whitespace_no_nl.exit.us, label %.lr.ph.i.i.i.i.i.us.preheader

.lr.ph.i.i.i.i.i.us.preheader:                    ; preds = %.lr.ph.split.us
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.018.0208
  br label %.lr.ph.i.i.i.i.i.us

.lr.ph.i.i.i.i.i.us:                              ; preds = %.lr.ph.i.i.i.i.i.us.preheader, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i.us
  %.sroa.01.018.i.i.i.i.i.us = phi i64 [ %i.bb, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i.us ], [ 0, %.lr.ph.i.i.i.i.i.us.preheader ] ; 2 uses
  %i.ay = phi ptr [ %i.ba, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i.us ], [ %i.ax, %.lr.ph.i.i.i.i.i.us.preheader ] ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1, !alias.scope !483, !noalias !490, !noundef !15
  switch i8 %i.az, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_whitespace_no_nl.exit.us [
    i8 9, label %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i.us
    i8 11, label %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i.us
    i8 12, label %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i.us
    i8 32, label %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i.us
  ]

_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i.us: ; preds = %.lr.ph.i.i.i.i.i.us, %.lr.ph.i.i.i.i.i.us, %.lr.ph.i.i.i.i.i.us, %.lr.ph.i.i.i.i.i.us
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 1 ; 2 uses
  %i.bb = add nuw nsw i64 %.sroa.01.018.i.i.i.i.i.us, 1
  %i.bc = icmp eq ptr %i.ba, %i.q
  br i1 %i.bc, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_whitespace_no_nl.exit.us, label %.lr.ph.i.i.i.i.i.us

end_hunk_3
begin_hunk_4_@_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_html_block_inner:bb.a

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i
  %.sroa.01.018.i.i.i.i.i = phi i64 [ %i.bp, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.bm = phi ptr [ %i.bo, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i ], [ %i.bl, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !alias.scope !483, !noalias !490, !noundef !15
  switch i8 %i.bn, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_whitespace_no_nl.exit [
    i8 9, label %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i
    i8 11, label %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i
    i8 12, label %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i
    i8 32, label %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i
  ]

_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 1 ; 2 uses
  %i.bp = add nuw nsw i64 %.sroa.01.018.i.i.i.i.i, 1
  %i.bq = icmp eq ptr %i.bo, %i.q
  br i1 %i.bq, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_whitespace_no_nl.exit, label %.lr.ph.i.i.i.i.i

_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_whitespace_no_nl.exit: ; preds = %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i, %.lr.ph.split
  %.sroa.0.1.i.i.i.i = phi i64 [ 0, %.lr.ph.split ], [ %.sroa.01.018.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.bj, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i ]
  %i.br = add i64 %.sroa.0.1.i.i.i.i, %.sroa.018.1176 ; 7 uses
  %i.bs = icmp ugt i64 %i.br, %2
  br i1 %i.bs, label %.invoke, label %bb.o, !prof !19

bb.o:                                             ; preds = %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_whitespace_no_nl.exit
  %i.bt = sub nuw nsw i64 %2, %i.br
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 %i.br ; 2 uses
  %i.bv = icmp eq i64 %2, %i.br
  br i1 %i.bv, label %.thread103, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bw = load i8, ptr %i.bu, align 1, !alias.scope !498, !noundef !15 ; 2 uses
  switch i8 %i.bw, label %.split184.us [
    i8 10, label %bb.s
    i8 13, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p
  %.not.i = icmp eq i64 %i.bt, 1
  br i1 %.not.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 1
  %i.by = load i8, ptr %i.bx, align 1, !alias.scope !498, !noundef !15
  %i.bz = icmp eq i8 %i.by, 10
  %spec.select.i = select i1 %i.bz, i64 2, i64 1
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.q, %bb.r
  %.sroa.5.0.i.ph = phi i64 [ %spec.select.i, %bb.r ], [ 1, %bb.q ], [ 1, %bb.p ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %4) ]
  %i.ca = add nuw i64 %.sroa.5.0.i.ph, %i.br      ; 10 uses
  %i.cb = icmp ugt i64 %i.ca, %2
  br i1 %i.cb, label %.invoke, label %bb.t, !prof !19

.split184.us:                                     ; preds = %bb.p, %bb.n
  %i.cc = phi i8 [ %i.bh, %bb.n ], [ %i.bw, %bb.p ] ; 3 uses
  %.us-phi185 = phi i64 [ %.promoted209, %bb.n ], [ %i.bi, %bb.p ] ; 3 uses
  %.us-phi187 = phi i64 [ %i.bd, %bb.n ], [ %i.br, %bb.p ] ; 6 uses
  store i64 %.us-phi185, ptr %i.a, align 8
  switch i8 %i.cc, label %bb.aa [
    i8 47, label %.loopexit117
    i8 62, label %.loopexit117
  ]

bb.t:                                             ; preds = %bb.s
  %i.cd = sub nuw nsw i64 %2, %i.ca
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 %i.ca
  %i.cf = load ptr, ptr %i.au, align 8, !invariant.load !15, !nonnull !15
  %i.cg = invoke noundef i64 %i.cf(ptr noundef nonnull %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ce, i64 noundef %i.cd)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit ; 2 uses

bb.u:                                             ; preds = %bb.t
  %.not65 = icmp eq i64 %i.cg, 0
  br i1 %.not65, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.z, %bb.u
  %i.ch = phi i64 [ %i.cr, %bb.z ], [ %i.bi, %bb.u ]
  %.sroa.018.2 = phi i64 [ %i.cr, %bb.z ], [ %i.ca, %bb.u ] ; 3 uses
  %i.ci = icmp ugt i64 %.sroa.018.2, %2
  br i1 %i.ci, label %.invoke, label %.lr.ph.split, !prof !501

bb.w:                                             ; preds = %bb.u
  %i.cj = icmp ult i64 %i.ca, %i.bi
  br i1 %i.cj, label %.invoke, label %bb.x, !prof !141

bb.x:                                             ; preds = %bb.w
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 %i.bi
  %gepdiff67 = sub nuw nsw i64 %i.ca, %i.bi       ; 3 uses
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsbNU0JlWw3cF_14pulldown_cmark(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %gepdiff67)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit

.noexc:                                           ; preds = %bb.x
  %i.cl = load i64, ptr %i.d, align 8, !alias.scope !502, !noundef !15 ; 3 uses
  %i.cm = icmp sgt i64 %i.cl, -1
  call void @llvm.assume(i1 %i.cm)
  %.not.i77 = icmp eq i64 %i.ca, %i.bi
  br i1 %.not.i77, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.noexc
  %i.cn = load ptr, ptr %i.c, align 8, !alias.scope !502, !nonnull !15, !noundef !15
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cl
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.co, ptr nonnull readonly align 1 %i.ck, i64 %gepdiff67, i1 false)
  %.pre.i = load i64, ptr %i.d, align 8, !alias.scope !502
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.noexc
  %i.cp = phi i64 [ %.pre.i, %bb.y ], [ %i.cl, %.noexc ]
  %i.cq = add i64 %i.cp, %gepdiff67
  store i64 %i.cq, ptr %i.d, align 8, !alias.scope !502
  %i.cr = add i64 %i.cg, %i.ca                    ; 2 uses
  br label %bb.v

bb.aa:                                            ; preds = %.split184.us
  %i.cs = icmp eq i64 %.sroa.018.0208, %.us-phi187
  br i1 %i.cs, label %.thread103, label %bb.ab

.loopexit117:                                     ; preds = %.split184.us, %.split184.us, %_RINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2_24is_ascii_letterdigitdashEB4_.exit
  %i.ct = phi i64 [ 0, %_RINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2_24is_ascii_letterdigitdashEB4_.exit ], [ %.us-phi185, %.split184.us ], [ %.us-phi185, %.split184.us ] ; 5 uses
  %.sroa.018.3 = phi i64 [ %i.as, %_RINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2_24is_ascii_letterdigitdashEB4_.exit ], [ %.us-phi187, %.split184.us ], [ %.us-phi187, %.split184.us ] ; 5 uses
  %i.cu = icmp ugt i64 %.sroa.018.3, %2
  br i1 %i.cu, label %.invoke, label %bb.az, !prof !19

bb.ab:                                            ; preds = %bb.aa
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 %.us-phi187
  call void @llvm.experimental.noalias.scope.decl(metadata !505)
  call void @llvm.experimental.noalias.scope.decl(metadata !508)
  call void @llvm.experimental.noalias.scope.decl(metadata !510)
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 1
  %i.cx = xor i64 %.us-phi187, -1
  %i.cy = add nsw i64 %2, %i.cx                   ; 2 uses
  %i.cz = and i8 %i.cc, -33
  %i.da = add i8 %i.cz, -65
  %or.cond14.i.i = icmp ult i8 %i.da, 26
  br i1 %or.cond14.i.i, label %bb.ac, label %switch.early.test.i.i

switch.early.test.i.i:                            ; preds = %bb.ab
  switch i8 %i.cc, label %.thread103 [
    i8 95, label %bb.ac
    i8 58, label %bb.ac
  ]

bb.ac:                                            ; preds = %switch.early.test.i.i, %switch.early.test.i.i, %bb.ab
  %i.db = icmp samesign eq i64 %i.cy, 0
  br i1 %i.db, label %bb.ad, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.ac, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNCNvB2W_19scan_attribute_name0E0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i.i
  %.sroa.01.018.i.i.i.i.i.i = phi i64 [ %i.dj, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNCNvB2W_19scan_attribute_name0E0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i.i ], [ 0, %bb.ac ] ; 2 uses
  %i.dc = phi ptr [ %i.dd, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNCNvB2W_19scan_attribute_name0E0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i.i ], [ %i.cw, %bb.ac ] ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 1 ; 2 uses
  %i.de = load i8, ptr %i.dc, align 1, !alias.scope !512, !noalias !519, !noundef !15 ; 3 uses
  %i.df = add i8 %i.de, -48
  %or.cond.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.df, 10
  %i.dg = and i8 %i.de, -33
  %i.dh = add i8 %i.dg, -65
  %i.di = icmp ult i8 %i.dh, 26
  %or.cond7.i.i.i.i.i.i.i.i.i = or i1 %or.cond.i.i.i.i.i.i.i.i.i, %i.di
  br i1 %or.cond7.i.i.i.i.i.i.i.i.i, label %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNCNvB2W_19scan_attribute_name0E0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i.i, label %switch.early.test.i.i.i.i.i.i.i.i.i

switch.early.test.i.i.i.i.i.i.i.i.i:              ; preds = %.lr.ph.i.i.i.i.i.i
  switch i8 %i.de, label %_RINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNCNvB2_19scan_attribute_name0EB4_.exit.loopexit.i.i [
    i8 95, label %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNCNvB2W_19scan_attribute_name0E0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i.i
    i8 58, label %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNCNvB2W_19scan_attribute_name0E0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i.i
    i8 46, label %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNCNvB2W_19scan_attribute_name0E0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i.i
    i8 45, label %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNCNvB2W_19scan_attribute_name0E0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i.i
  ]

_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNCNvB2W_19scan_attribute_name0E0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i.i: ; preds = %switch.early.test.i.i.i.i.i.i.i.i.i, %switch.early.test.i.i.i.i.i.i.i.i.i, %switch.early.test.i.i.i.i.i.i.i.i.i, %switch.early.test.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.dj = add nuw nsw i64 %.sroa.01.018.i.i.i.i.i.i, 1
  %i.dk = icmp eq ptr %i.dd, %i.q
  br i1 %i.dk, label %_RINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNCNvB2_19scan_attribute_name0EB4_.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i

_RINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNCNvB2_19scan_attribute_name0EB4_.exit.loopexit.i.i: ; preds = %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNCNvB2W_19scan_attribute_name0E0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i.i, %switch.early.test.i.i.i.i.i.i.i.i.i
  %.sroa.0.1.i.i.i.ph.i.i = phi i64 [ %.sroa.01.018.i.i.i.i.i.i, %switch.early.test.i.i.i.i.i.i.i.i.i ], [ %i.cy, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNCNvB2W_19scan_attribute_name0E0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i.i ]
  %i.dl = add i64 %.sroa.0.1.i.i.i.ph.i.i, 1
  br label %bb.ad

bb.ad:                                            ; preds = %_RINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNCNvB2_19scan_attribute_name0EB4_.exit.loopexit.i.i, %bb.ac
  %.sroa.4.0.i.ph.i = phi i64 [ %i.dl, %_RINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNCNvB2_19scan_attribute_name0EB4_.exit.loopexit.i.i ], [ 1, %bb.ac ]
  %i.dm = add i64 %.sroa.4.0.i.ph.i, %.us-phi187  ; 2 uses
  %i.dn = invoke fastcc { i64, i64 } @_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners36scan_whitespace_with_newline_handler(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 1, -9223372036854775808) %2, i64 noundef %i.dm, ptr noundef %3, ptr readonly %4, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc81 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc81:                                         ; preds = %bb.ad
  %i.do = extractvalue { i64, i64 } %i.dn, 0
  %i.dp = extractvalue { i64, i64 } %i.dn, 1      ; 7 uses
  %i.dq = trunc nuw i64 %i.do to i1
  br i1 %i.dq, label %bb.ae, label %.thread103

bb.ae:                                            ; preds = %.noexc81
  %i.dr = icmp ugt i64 %i.dp, %2
  br i1 %i.dr, label %.invoke419, label %bb.af, !prof !19

bb.af:                                            ; preds = %bb.ae
  %i.ds = icmp eq i64 %2, %i.dp
  br i1 %i.ds, label %bb.ag, label %bb.ah

.invoke419:                                       ; preds = %bb.ae, %bb.au, %bb.ar
  %i.dt = phi i64 [ %i.ex, %bb.ar ], [ %i.ep, %bb.au ], [ %i.dp, %bb.ae ]
  %i.du = phi i64 [ %2, %bb.ar ], [ %i.ex, %bb.au ], [ %2, %bb.ae ]
  %i.dv = phi ptr [ @90, %bb.ar ], [ @89, %bb.au ], [ @74, %bb.ae ]
  invoke void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %i.dt, i64 noundef %i.du, i64 noundef range(i64 1, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dv) #15
          to label %.cont420 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont420:                                         ; preds = %.invoke419
  unreachable

bb.ag:                                            ; preds = %bb.ah, %bb.af
  %.not.i78 = icmp ne i64 %i.dp, %i.dm
  %i.dw = sext i1 %.not.i78 to i64
  %spec.select.i79 = add nsw i64 %i.dp, %i.dw
  br label %bb.ax

bb.ah:                                            ; preds = %bb.af
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 %i.dp
  %i.dy = load i8, ptr %i.dx, align 1, !alias.scope !505, !noalias !527, !noundef !15
  %i.dz = icmp eq i8 %i.dy, 61
  br i1 %i.dz, label %bb.ai, label %bb.ag

bb.ai:                                            ; preds = %bb.ah
  %i.ea = add nuw i64 %i.dp, 1
  %i.eb = invoke fastcc { i64, i64 } @_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners36scan_whitespace_with_newline_handler(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 1, -9223372036854775808) %2, i64 noundef %i.ea, ptr noundef %3, ptr readonly %4, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc83 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc83:                                         ; preds = %bb.ai
  %i.ec = extractvalue { i64, i64 } %i.eb, 0
  %i.ed = trunc nuw i64 %i.ec to i1
  br i1 %i.ed, label %bb.aj, label %.thread103

bb.aj:                                            ; preds = %.noexc83
  %i.ee = extractvalue { i64, i64 } %i.eb, 1      ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !528)
  call void @llvm.experimental.noalias.scope.decl(metadata !531)
  call void @llvm.experimental.noalias.scope.decl(metadata !533)
  %i.ef = icmp ult i64 %i.ee, %2
  br i1 %i.ef, label %bb.ak, label %.thread103

bb.ak:                                            ; preds = %bb.aj
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 %i.ee ; 2 uses
  %i.eh = load i8, ptr %i.eg, align 1, !alias.scope !535, !noalias !536, !noundef !15 ; 4 uses
  switch i8 %i.eh, label %.lr.ph.i.i.i.i.i.preheader.i.i [
    i8 34, label %bb.al
    i8 39, label %bb.al
    i8 32, label %.thread103
    i8 61, label %.thread103
    i8 62, label %.thread103
    i8 60, label %.thread103
    i8 96, label %.thread103
    i8 10, label %.thread103
    i8 13, label %.thread103
  ]

bb.al:                                            ; preds = %bb.ak, %bb.ak
  %i.ei = add nuw nsw i64 %i.ee, 1                ; 3 uses
  %i.ej = icmp samesign ult i64 %i.ei, %2
  br i1 %i.ej, label %.lr.ph.i.i, label %.thread103

.lr.ph.i.i:                                       ; preds = %bb.al
  br i1 %.not64, label %.lr.ph.split.us.i.i, label %.lr.ph.split.preheader.i.i

.lr.ph.split.preheader.i.i:                       ; preds = %.lr.ph.i.i
  %.promoted.i.i = load i64, ptr %i.a, align 8, !alias.scope !537, !noalias !538 ; 2 uses
  br label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i, %bb.an
  %.sroa.0.043.us.i.i = phi i64 [ %i.en, %bb.an ], [ %i.ei, %.lr.ph.i.i ] ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.043.us.i.i
  %i.el = load i8, ptr %i.ek, align 1, !alias.scope !535, !noalias !536, !noundef !15 ; 2 uses
  %i.em = icmp eq i8 %i.el, %i.eh
  br i1 %i.em, label %.split.us.i.i, label %bb.am

bb.am:                                            ; preds = %.lr.ph.split.us.i.i
  switch i8 %i.el, label %bb.an [
    i8 10, label %.thread103
    i8 13, label %.thread103
  ]

bb.an:                                            ; preds = %bb.am
  %i.en = add i64 %.sroa.0.043.us.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.en, %2
  br i1 %exitcond.not.i.i, label %.thread103, label %.lr.ph.split.us.i.i

.lr.ph.split.i.i:                                 ; preds = %._crit_edge.i.i, %.lr.ph.split.preheader.i.i
  %i.eo = phi i64 [ %i.fn, %._crit_edge.i.i ], [ %.promoted.i.i, %.lr.ph.split.preheader.i.i ] ; 3 uses
  %.sroa.0.043.i.i = phi i64 [ %.sroa.0.1.i.i, %._crit_edge.i.i ], [ %i.ei, %.lr.ph.split.preheader.i.i ] ; 5 uses
  %i.ep = phi i64 [ %i.fo, %._crit_edge.i.i ], [ %.promoted.i.i, %.lr.ph.split.preheader.i.i ] ; 7 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.043.i.i ; 2 uses
  %i.er = load i8, ptr %i.eq, align 1, !alias.scope !535, !noalias !536, !noundef !15 ; 2 uses
  %i.es = icmp eq i8 %i.er, %i.eh
  br i1 %i.es, label %.split.us.i.i.loopexit111, label %bb.ao

.split.us.i.i.loopexit111:                        ; preds = %.lr.ph.split.i.i
  store i64 %i.eo, ptr %i.a, align 8
  br label %.split.us.i.i

.split.us.i.i:                                    ; preds = %.lr.ph.split.us.i.i, %.split.us.i.i.loopexit111
  %.us-phi.i.i = phi i64 [ %.sroa.0.043.i.i, %.split.us.i.i.loopexit111 ], [ %.sroa.0.043.us.i.i, %.lr.ph.split.us.i.i ]
  %i.et = add nuw nsw i64 %.us-phi.i.i, 1
  br label %bb.ax

bb.ao:                                            ; preds = %.lr.ph.split.i.i
  switch i8 %i.er, label %bb.as [
    i8 10, label %bb.ar
    i8 13, label %bb.ap
  ]

bb.ap:                                            ; preds = %bb.ao
  %.not.i.i.i = icmp eq i64 %.sroa.0.043.i.i, %invariant.op.i.i
  br i1 %.not.i.i.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eq, i64 1
  %i.ev = load i8, ptr %i.eu, align 1, !alias.scope !539, !noalias !536, !noundef !15
  %i.ew = icmp eq i8 %i.ev, 10
  %spec.select.i.i.i = select i1 %i.ew, i64 2, i64 1
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %bb.ao
  %.sroa.5.0.i.ph.i.i = phi i64 [ %spec.select.i.i.i, %bb.aq ], [ 1, %bb.ap ], [ 1, %bb.ao ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %4) ]
  %i.ex = add nuw i64 %.sroa.5.0.i.ph.i.i, %.sroa.0.043.i.i ; 10 uses
  %i.ey = icmp ugt i64 %i.ex, %2
  br i1 %i.ey, label %.invoke419, label %bb.at, !prof !19

bb.as:                                            ; preds = %bb.ao
  %i.ez = add nuw nsw i64 %.sroa.0.043.i.i, 1
  br label %._crit_edge.i.i

bb.at:                                            ; preds = %bb.ar
  %i.fa = sub nuw nsw i64 %2, %i.ex
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 %i.ex
  %i.fc = load ptr, ptr %i.au, align 8, !invariant.load !15, !noalias !542, !nonnull !15
  %i.fd = invoke noundef i64 %i.fc(ptr noundef nonnull %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fb, i64 noundef %i.fa) #19
          to label %.noexc84 unwind label %.loopexit112, !inline_history !543 ; 2 uses

.noexc84:                                         ; preds = %bb.at
  %.not32.i.i = icmp eq i64 %i.fd, 0
  br i1 %.not32.i.i, label %._crit_edge.i.i, label %bb.au

bb.au:                                            ; preds = %.noexc84
  %i.fe = icmp ult i64 %i.ex, %i.ep
  br i1 %i.fe, label %.invoke419, label %bb.av, !prof !141

bb.av:                                            ; preds = %bb.au
  %gepdiff.i.i = sub nuw nsw i64 %i.ex, %i.ep     ; 3 uses
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsbNU0JlWw3cF_14pulldown_cmark(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %gepdiff.i.i)
          to label %.noexc87 unwind label %.loopexit112

.noexc87:                                         ; preds = %bb.av
  %i.ff = load i64, ptr %i.d, align 8, !alias.scope !544, !noalias !547, !noundef !15 ; 3 uses
  %i.fg = icmp sgt i64 %i.ff, -1
  call void @llvm.assume(i1 %i.fg)
  %.not.i34.i.i = icmp eq i64 %i.ex, %i.ep
  br i1 %.not.i34.i.i, label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCsbNU0JlWw3cF_14pulldown_cmark.exit.i.i, label %bb.aw

bb.aw:                                            ; preds = %.noexc87
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 %i.ep
  %i.fi = load ptr, ptr %i.c, align 8, !alias.scope !544, !noalias !547, !nonnull !15, !noundef !15
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 %i.ff
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fj, ptr nonnull readonly align 1 %i.fh, i64 %gepdiff.i.i, i1 false), !noalias !537
  %.pre.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !544, !noalias !547
  br label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCsbNU0JlWw3cF_14pulldown_cmark.exit.i.i

_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCsbNU0JlWw3cF_14pulldown_cmark.exit.i.i: ; preds = %bb.aw, %.noexc87
  %i.fk = phi i64 [ %.pre.i.i.i, %bb.aw ], [ %i.ff, %.noexc87 ]
  %i.fl = add i64 %i.fk, %gepdiff.i.i
  store i64 %i.fl, ptr %i.d, align 8, !alias.scope !544, !noalias !547
  %i.fm = add i64 %i.fd, %i.ex                    ; 3 uses
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCsbNU0JlWw3cF_14pulldown_cmark.exit.i.i, %.noexc84, %bb.as
  %i.fn = phi i64 [ %i.eo, %bb.as ], [ %i.fm, %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCsbNU0JlWw3cF_14pulldown_cmark.exit.i.i ], [ %i.eo, %.noexc84 ]
  %i.fo = phi i64 [ %i.ep, %bb.as ], [ %i.fm, %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCsbNU0JlWw3cF_14pulldown_cmark.exit.i.i ], [ %i.ep, %.noexc84 ]
  %.sroa.0.1.i.i = phi i64 [ %i.ez, %bb.as ], [ %i.fm, %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCsbNU0JlWw3cF_14pulldown_cmark.exit.i.i ], [ %i.ex, %.noexc84 ] ; 2 uses
  %i.fp = icmp ult i64 %.sroa.0.1.i.i, %2
  br i1 %i.fp, label %.lr.ph.split.i.i, label %.thread103

.lr.ph.i.i.i.i.i.preheader.i.i:                   ; preds = %bb.ak
  %i.fq = sub nuw nsw i64 %2, %i.ee
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.ithread-pre-split.i.i:             ; preds = %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_33is_valid_unquoted_attr_value_charE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i.i.i
  %i.fr = add nuw nsw i64 %.sroa.01.018.i.i.i.i.i.i.i, 1
  %.pr.i.i = load i8, ptr %i.fu, align 1, !alias.scope !548, !noalias !555
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.ithread-pre-split.i.i, %.lr.ph.i.i.i.i.i.preheader.i.i
  %i.fs = phi i8 [ %.pr.i.i, %.lr.ph.i.i.i.i.ithread-pre-split.i.i ], [ %i.eh, %.lr.ph.i.i.i.i.i.preheader.i.i ]
  %.sroa.01.018.i.i.i.i.i.i.i = phi i64 [ %i.fr, %.lr.ph.i.i.i.i.ithread-pre-split.i.i ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i.i ] ; 10 uses
  %i.ft = phi ptr [ %i.fu, %.lr.ph.i.i.i.i.ithread-pre-split.i.i ], [ %i.eg, %.lr.ph.i.i.i.i.i.preheader.i.i ]
  switch i8 %i.fs, label %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_33is_valid_unquoted_attr_value_charE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i.i.i [
    i8 39, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_attr_value_chars.exit.i.i
    i8 34, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_attr_value_chars.exit.i.i
    i8 32, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_attr_value_chars.exit.i.i
    i8 61, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_attr_value_chars.exit.i.i
    i8 62, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_attr_value_chars.exit.i.i
    i8 60, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_attr_value_chars.exit.i.i
    i8 96, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_attr_value_chars.exit.i.i
    i8 10, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_attr_value_chars.exit.i.i
    i8 13, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_attr_value_chars.exit.i.i
  ]
end_hunk_4
begin_hunk_5_@_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_html_block_inner:bb.a
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 %i.gg
  %i.gk = load i8, ptr %i.gj, align 1, !noundef !15
  %i.gl = icmp eq i8 %i.gk, 47
  %spec.select69 = zext i1 %i.gl to i64
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.sroa.041.0 = phi i64 [ 0, %bb.bb ], [ %spec.select69, %bb.bc ]
  %i.gm = add nuw i64 %.sroa.041.0, %i.gg
  br label %bb.be

bb.be:                                            ; preds = %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_whitespace_no_nl.exit92, %bb.bd
  %.sroa.018.4 = phi i64 [ %i.gm, %bb.bd ], [ %i.gg, %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_whitespace_no_nl.exit92 ] ; 5 uses
  %i.gn = icmp ugt i64 %.sroa.018.4, %2
  br i1 %i.gn, label %.invoke, label %bb.bf, !prof !19

bb.bf:                                            ; preds = %bb.be
  %i.go = icmp eq i64 %2, %.sroa.018.4
  br i1 %i.go, label %bb.bg, label %bb.bj

bb.bg:                                            ; preds = %bb.bj, %bb.bf
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsbNU0JlWw3cF_14pulldown_cmark(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECsbNU0JlWw3cF_14pulldown_cmark.exit94 unwind label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.gp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsbNU0JlWw3cF_14pulldown_cmark(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECsbNU0JlWw3cF_14pulldown_cmark.exit94: ; preds = %bb.bg
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsbNU0JlWw3cF_14pulldown_cmark(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %bb.ay

bb.bj:                                            ; preds = %bb.bf
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.018.4
  %i.gs = load i8, ptr %i.gr, align 1, !noundef !15
  %i.gt = icmp eq i8 %i.gs, 62
  br i1 %i.gt, label %bb.bk, label %bb.bg

bb.bk:                                            ; preds = %bb.bj
  %i.gu = add nuw i64 %.sroa.018.4, 1             ; 5 uses
  %i.gv = load i64, ptr %i.d, align 8, !noundef !15 ; 2 uses
  %i.gw = icmp sgt i64 %i.gv, -1
  call void @llvm.assume(i1 %i.gw)
  %i.gx = icmp eq i64 %i.gv, 0
  br i1 %i.gx, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %.not212 = icmp ult i64 %i.gu, %i.ct
  br i1 %.not212, label %.invoke, label %bb.bn, !prof !141

bb.bm:                                            ; preds = %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCsbNU0JlWw3cF_14pulldown_cmark.exit98, %bb.bk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.gu, ptr %.sroa.443.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.ay

bb.bn:                                            ; preds = %bb.bl
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 %i.ct
  %gepdiff = sub nuw nsw i64 %i.gu, %i.ct         ; 3 uses
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsbNU0JlWw3cF_14pulldown_cmark(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %gepdiff)
          to label %.noexc97 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc97:                                         ; preds = %bb.bn
  %i.gz = load i64, ptr %i.d, align 8, !alias.scope !579, !noundef !15 ; 3 uses
  %i.ha = icmp sgt i64 %i.gz, -1
  call void @llvm.assume(i1 %i.ha)
  %.not.i95 = icmp eq i64 %i.gu, %i.ct
  br i1 %.not.i95, label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCsbNU0JlWw3cF_14pulldown_cmark.exit98, label %bb.bo

bb.bo:                                            ; preds = %.noexc97
  %i.hb = load ptr, ptr %i.c, align 8, !alias.scope !579, !nonnull !15, !noundef !15
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 %i.gz
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hc, ptr nonnull readonly align 1 %i.gy, i64 %gepdiff, i1 false)
  %.pre.i96 = load i64, ptr %i.d, align 8, !alias.scope !579
  br label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCsbNU0JlWw3cF_14pulldown_cmark.exit98

_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCsbNU0JlWw3cF_14pulldown_cmark.exit98: ; preds = %.noexc97, %bb.bo
  %i.hd = phi i64 [ %.pre.i96, %bb.bo ], [ %i.gz, %.noexc97 ]
  %i.he = add i64 %i.hd, %gepdiff
  store i64 %i.he, ptr %i.d, align 8, !alias.scope !579
  br label %bb.bm

bb.bp:                                            ; preds = %bb.d
  %i.hf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body

.body:                                            ; preds = %bb.c, %bb.bp
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #14
  unreachable
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable
define hidden noundef i64 @_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners21scan_whitespace_no_nl(ptr noalias nofree noundef nonnull readonly captures(address) %0, i64 noundef range(i64 0, -9223372036854775808) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.b = icmp samesign eq i64 %1, 0
  br i1 %i.b, label %_RINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2_25is_ascii_whitespace_no_nlEB4_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i
  %.sroa.01.018.i.i.i.i = phi i64 [ %i.f, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.c = phi ptr [ %i.e, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i ], [ %0, %bb.a ] ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !alias.scope !582, !noalias !587, !noundef !15
  switch i8 %i.d, label %_RINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2_25is_ascii_whitespace_no_nlEB4_.exit [
    i8 9, label %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i
    i8 11, label %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i
    i8 12, label %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i
    i8 32, label %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i
  ]

_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  %i.f = add nuw nsw i64 %.sroa.01.018.i.i.i.i, 1
  %i.g = icmp eq ptr %i.e, %i.a
  br i1 %i.g, label %_RINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2_25is_ascii_whitespace_no_nlEB4_.exit, label %.lr.ph.i.i.i.i

_RINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2_25is_ascii_whitespace_no_nlEB4_.exit: ; preds = %.lr.ph.i.i.i.i, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i, %bb.a
  %.sroa.0.1.i.i.i = phi i64 [ 0, %bb.a ], [ %1, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_25is_ascii_whitespace_no_nlE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i ], [ %.sroa.01.018.i.i.i.i, %.lr.ph.i.i.i.i ]
  ret i64 %.sroa.0.1.i.i.i
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners23scan_closing_code_fence(ptr noalias nofree noundef nonnull readonly captures(address) %0, i64 noundef range(i64 0, -9223372036854775808) %1, i8 noundef %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners8scan_eol.exit, label %bb.b

_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners8scan_eol.exit: ; preds = %bb.h, %bb.g, %bb.f, %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_ch_repeat.exit, %bb.a
  %.sroa.5.0 = phi i64 [ undef, %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_ch_repeat.exit ], [ 0, %bb.a ], [ %i.v, %bb.h ], [ %1, %bb.f ], [ %i.v, %bb.g ]
  %.sroa.0.0 = phi i64 [ 0, %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_ch_repeat.exit ], [ 1, %bb.a ], [ 1, %bb.h ], [ 1, %bb.f ], [ 0, %bb.g ]
  %i.b = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.c = insertvalue { i64, i64 } %i.b, i64 %.sroa.5.0, 1
  ret { i64, i64 } %i.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 2 uses
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNCNvB2W_14scan_ch_repeat0E0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i
  %.sroa.01.019.i.i.i.i.i = phi i64 [ %i.i, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNCNvB2W_14scan_ch_repeat0E0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.e = phi ptr [ %i.h, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNCNvB2W_14scan_ch_repeat0E0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i ], [ %0, %bb.b ] ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !alias.scope !595, !noalias !602, !noundef !15
  %i.g = icmp eq i8 %i.f, %2
  br i1 %i.g, label %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNCNvB2W_14scan_ch_repeat0E0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_ch_repeat.exit

_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNCNvB2W_14scan_ch_repeat0E0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 2 uses
  %i.i = add nuw nsw i64 %.sroa.01.019.i.i.i.i.i, 1
  %i.j = icmp eq ptr %i.h, %i.d
  br i1 %i.j, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_ch_repeat.exit, label %.lr.ph.i.i.i.i.i

_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_ch_repeat.exit: ; preds = %.lr.ph.i.i.i.i.i, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNCNvB2W_14scan_ch_repeat0E0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i
  %.sroa.0.1.i.i.i.i = phi i64 [ %.sroa.01.019.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %1, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNCNvB2W_14scan_ch_repeat0E0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i ] ; 6 uses
  %i.k = icmp ult i64 %.sroa.0.1.i.i.i.i, %3
  br i1 %i.k, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners8scan_eol.exit, label %bb.c

bb.c:                                             ; preds = %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_ch_repeat.exit
  %i.l = icmp samesign ugt i64 %.sroa.0.1.i.i.i.i, %1
  br i1 %i.l, label %bb.e, label %bb.d, !prof !19

bb.d:                                             ; preds = %bb.c
  %i.m = sub nuw nsw i64 %1, %.sroa.0.1.i.i.i.i   ; 2 uses
  %i.n = icmp samesign eq i64 %i.m, 0
  br i1 %i.n, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_ch_repeat.exit13, label %.lr.ph.i.i.i.i.i9.preheader

.lr.ph.i.i.i.i.i9.preheader:                      ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.1.i.i.i.i
  br label %.lr.ph.i.i.i.i.i9

.lr.ph.i.i.i.i.i9:                                ; preds = %.lr.ph.i.i.i.i.i9.preheader, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNCNvB2W_14scan_ch_repeat0E0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i12
  %.sroa.01.019.i.i.i.i.i10 = phi i64 [ %i.t, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNCNvB2W_14scan_ch_repeat0E0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i12 ], [ 0, %.lr.ph.i.i.i.i.i9.preheader ] ; 2 uses
  %i.p = phi ptr [ %i.s, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNCNvB2W_14scan_ch_repeat0E0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i12 ], [ %i.o, %.lr.ph.i.i.i.i.i9.preheader ] ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !alias.scope !612, !noalias !619, !noundef !15
  %i.r = icmp eq i8 %i.q, 32
  br i1 %i.r, label %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNCNvB2W_14scan_ch_repeat0E0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i12, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_ch_repeat.exit13

_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNCNvB2W_14scan_ch_repeat0E0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i12: ; preds = %.lr.ph.i.i.i.i.i9
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 1 ; 2 uses
  %i.t = add nuw nsw i64 %.sroa.01.019.i.i.i.i.i10, 1
  %i.u = icmp eq ptr %i.s, %i.d
  br i1 %i.u, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_ch_repeat.exit13, label %.lr.ph.i.i.i.i.i9

_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_ch_repeat.exit13: ; preds = %.lr.ph.i.i.i.i.i9, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNCNvB2W_14scan_ch_repeat0E0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i12, %bb.d
  %.sroa.0.1.i.i.i.i11 = phi i64 [ 0, %bb.d ], [ %.sroa.01.019.i.i.i.i.i10, %.lr.ph.i.i.i.i.i9 ], [ %i.m, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNCNvB2W_14scan_ch_repeat0E0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i12 ]
  %i.v = add nuw i64 %.sroa.0.1.i.i.i.i11, %.sroa.0.1.i.i.i.i ; 6 uses
  %i.w = icmp ugt i64 %i.v, %1
  br i1 %i.w, label %bb.i, label %bb.f, !prof !19

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.1.i.i.i.i, i64 noundef %1, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @104) #15
  unreachable

bb.f:                                             ; preds = %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_ch_repeat.exit13
  %i.x = icmp eq i64 %1, %i.v
  br i1 %i.x, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners8scan_eol.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %i.v
  %i.z = load i8, ptr %i.y, align 1, !alias.scope !629, !noundef !15
  switch i8 %i.z, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners8scan_eol.exit [
    i8 10, label %bb.h
    i8 13, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g, %bb.g
  br label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners8scan_eol.exit

bb.i:                                             ; preds = %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_ch_repeat.exit13
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %i.v, i64 noundef %1, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @103) #15
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners24scan_inline_html_comment(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef %2, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp ult i64 %2, %1
  br i1 %i.a, label %bb.b, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_ch_repeat.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %2
  %i.c = load i8, ptr %i.b, align 1, !noundef !15 ; 2 uses
  %i.d = add nuw nsw i64 %2, 1                    ; 8 uses
  switch i8 %i.c, label %bb.c [
    i8 45, label %bb.d
    i8 91, label %bb.o
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = add i8 %i.c, -65
  %or.cond = icmp ult i8 %i.e, 26
  br i1 %or.cond, label %bb.aa, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_ch_repeat.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.f = sub nuw nsw i64 %1, %i.d                 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 3 uses
  %i.h = icmp samesign eq i64 %i.f, 0
  br i1 %i.h, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_ch_repeat.exit.thread, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %i.d
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNCNvB2W_14scan_ch_repeat0E0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i
  %.sroa.01.019.i.i.i.i.i = phi i64 [ %i.n, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNCNvB2W_14scan_ch_repeat0E0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.j = phi ptr [ %i.m, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNCNvB2W_14scan_ch_repeat0E0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i ], [ %i.i, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !alias.scope !632, !noalias !639, !noundef !15
  %i.l = icmp eq i8 %i.k, 45
  br i1 %i.l, label %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNCNvB2W_14scan_ch_repeat0E0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_ch_repeat.exit

_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNCNvB2W_14scan_ch_repeat0E0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 2 uses
  %i.n = add nuw nsw i64 %.sroa.01.019.i.i.i.i.i, 1
  %i.o = icmp eq ptr %i.m, %i.g
  br i1 %i.o, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_ch_repeat.exit, label %.lr.ph.i.i.i.i.i

_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_ch_repeat.exit: ; preds = %.lr.ph.i.i.i.i.i, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNCNvB2W_14scan_ch_repeat0E0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i
  %.sroa.0.1.i.i.i.i = phi i64 [ %.sroa.01.019.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.f, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNCNvB2W_14scan_ch_repeat0E0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i ] ; 2 uses
  %i.p = icmp eq i64 %.sroa.0.1.i.i.i.i, 0
  br i1 %i.p, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_ch_repeat.exit.thread, label %bb.e

bb.e:                                             ; preds = %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_ch_repeat.exit
  %i.q = add i64 %.sroa.0.1.i.i.i.i, %i.d         ; 6 uses
  %i.r = icmp ugt i64 %i.q, %1
  br i1 %i.r, label %bb.g, label %bb.f, !prof !19

bb.f:                                             ; preds = %bb.e
  %i.s = icmp eq i64 %1, %i.q
  br i1 %i.s, label %.lr.ph, label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %i.q, i64 noundef %1, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106) #15
  unreachable

.lr.ph:                                           ; preds = %bb.f, %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %i.q ; 2 uses
  %i.u = load atomic ptr, ptr @_RNvNvNtNtNtCslLTI5cSnp8O_6memchr4arch6x86_646memchr10memchr_raw2FN monotonic, align 8, !noalias !649, !nonnull !15, !noundef !15
  %i.v = tail call { i64, ptr } %i.u(i8 noundef 45, ptr noundef nonnull readonly %i.t, ptr noundef nonnull readonly %i.g), !noalias !649, !inline_history !224 ; 2 uses
  %i.w = extractvalue { i64, ptr } %i.v, 0
  %i.x = trunc nuw i64 %i.w to i1
  br i1 %i.x, label %.lr.ph95, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_ch_repeat.exit.thread

bb.h:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %i.q
  %i.z = load i8, ptr %i.y, align 1, !noundef !15
  %i.aa = icmp eq i8 %i.z, 62
  br i1 %i.aa, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_ch_repeat.exit.thread, label %.lr.ph

.lr.ph95:                                         ; preds = %.lr.ph, %bb.k
  %i.ab = phi { i64, ptr } [ %i.am, %bb.k ], [ %i.v, %.lr.ph ]
  %i.ac = phi ptr [ %i.ak, %bb.k ], [ %i.t, %.lr.ph ]
  %i.ad = phi i64 [ %i.ah, %bb.k ], [ %i.q, %.lr.ph ]
  %i.ae = extractvalue { i64, ptr } %i.ab, 1
  %i.af = tail call noundef i64 @_RNvXNtCslLTI5cSnp8O_6memchr3extPhNtB2_7Pointer8distanceCsbNU0JlWw3cF_14pulldown_cmark(ptr noundef %i.ae, ptr noundef nonnull readonly %i.ac)
  %i.ag = add nuw i64 %i.ad, 1
  %i.ah = add i64 %i.ag, %i.af                    ; 8 uses
  %i.ai = icmp ugt i64 %i.ah, %1
  br i1 %i.ai, label %bb.j, label %bb.i, !prof !19

bb.i:                                             ; preds = %.lr.ph95
  %i.aj = icmp eq i64 %1, %i.ah
  br i1 %i.aj, label %bb.k, label %bb.l

bb.j:                                             ; preds = %.lr.ph95
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %i.ah, i64 noundef %1, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @105) #15
  unreachable

bb.k:                                             ; preds = %bb.l, %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %i.ah ; 2 uses
  %i.al = load atomic ptr, ptr @_RNvNvNtNtNtCslLTI5cSnp8O_6memchr4arch6x86_646memchr10memchr_raw2FN monotonic, align 8, !noalias !649, !nonnull !15, !noundef !15
  %i.am = tail call { i64, ptr } %i.al(i8 noundef 45, ptr noundef nonnull readonly %i.ak, ptr noundef nonnull readonly %i.g), !noalias !649, !inline_history !224 ; 2 uses
  %i.an = extractvalue { i64, ptr } %i.am, 0
  %i.ao = trunc nuw i64 %i.an to i1
  br i1 %i.ao, label %.lr.ph95, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_ch_repeat.exit.thread

bb.l:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %i.ah
  %i.aq = load i8, ptr %i.ap, align 1, !noundef !15
  %i.ar = icmp eq i8 %i.aq, 45
  br i1 %i.ar, label %bb.m, label %bb.k

bb.m:                                             ; preds = %bb.l
  %i.as = add nuw i64 %i.ah, 1                    ; 2 uses
  %i.at = icmp eq i64 %1, %i.as
  br i1 %i.at, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_ch_repeat.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 %i.as
  %i.av = load i8, ptr %i.au, align 1, !noundef !15
  %i.aw = icmp eq i8 %i.av, 62                    ; 2 uses
  %i.ax = add nuw i64 %i.ah, 2
  %spec.select = select i1 %i.aw, i64 %i.ax, i64 undef
  %spec.select33 = zext i1 %i.aw to i64
  br label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_ch_repeat.exit.thread

bb.o:                                             ; preds = %bb.b
  %i.ay = sub nuw nsw i64 %1, %i.d
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 %i.d
  %i.ba = tail call noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsbNU0JlWw3cF_14pulldown_cmark(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.az, i64 noundef %i.ay, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @107, i64 noundef 6)
  %i.bb = load i64, ptr %3, align 8
  %.not28 = icmp uge i64 %2, %i.bb
  %or.cond35.not = select i1 %i.ba, i1 %.not28, i1 false
  br i1 %or.cond35.not, label %bb.p, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_ch_repeat.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.bc = add nuw i64 %2, 7                       ; 4 uses
  %i.bd = icmp ugt i64 %i.bc, %1
  br i1 %i.bd, label %bb.s, label %bb.q, !prof !19

bb.q:                                             ; preds = %bb.p
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 %i.bc ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 2 uses
  %i.bg = load atomic ptr, ptr @_RNvNvNtNtNtCslLTI5cSnp8O_6memchr4arch6x86_646memchr10memchr_raw2FN monotonic, align 8, !noalias !652, !nonnull !15, !noundef !15
  %i.bh = tail call { i64, ptr } %i.bg(i8 noundef 93, ptr noundef nonnull readonly %i.be, ptr noundef nonnull readonly %i.bf), !noalias !652, !inline_history !224 ; 2 uses
  %i.bi = extractvalue { i64, ptr } %i.bh, 0
  %i.bj = trunc nuw i64 %i.bi to i1               ; 2 uses
  br i1 %i.bj, label %bb.r, label %_RINvNtNtNtCslLTI5cSnp8O_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECsbNU0JlWw3cF_14pulldown_cmark.exit38

bb.r:                                             ; preds = %bb.q
  %i.bk = extractvalue { i64, ptr } %i.bh, 1
  %i.bl = tail call noundef i64 @_RNvXNtCslLTI5cSnp8O_6memchr3extPhNtB2_7Pointer8distanceCsbNU0JlWw3cF_14pulldown_cmark(ptr noundef %i.bk, ptr noundef nonnull readonly %i.be)
  br label %_RINvNtNtNtCslLTI5cSnp8O_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECsbNU0JlWw3cF_14pulldown_cmark.exit38

_RINvNtNtNtCslLTI5cSnp8O_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECsbNU0JlWw3cF_14pulldown_cmark.exit38: ; preds = %bb.q, %bb.r
  %.sroa.3.0.i36 = phi i64 [ %i.bl, %bb.r ], [ undef, %bb.q ]
  %i.bm = add i64 %.sroa.3.0.i36, %i.bc
  %spec.select.i = select i1 %i.bj, i64 %i.bm, i64 %1 ; 6 uses
  %i.bn = icmp ugt i64 %spec.select.i, %1
  br i1 %i.bn, label %bb.u, label %bb.t, !prof !19

bb.s:                                             ; preds = %bb.p
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %i.bc, i64 noundef %1, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @110) #15
  unreachable

bb.t:                                             ; preds = %_RINvNtNtNtCslLTI5cSnp8O_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECsbNU0JlWw3cF_14pulldown_cmark.exit38
  %i.bo = sub nuw nsw i64 %1, %spec.select.i      ; 2 uses
  %i.bp = icmp samesign eq i64 %i.bo, 0
  br i1 %i.bp, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_ch_repeat.exit47.thread, label %.lr.ph.i.i.i.i.i43.preheader

.lr.ph.i.i.i.i.i43.preheader:                     ; preds = %bb.t
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 %spec.select.i
  br label %.lr.ph.i.i.i.i.i43

.lr.ph.i.i.i.i.i43:                               ; preds = %.lr.ph.i.i.i.i.i43.preheader, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNCNvB2W_14scan_ch_repeat0E0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i46
  %.sroa.01.019.i.i.i.i.i44 = phi i64 [ %i.bv, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNCNvB2W_14scan_ch_repeat0E0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i46 ], [ 0, %.lr.ph.i.i.i.i.i43.preheader ] ; 2 uses
  %i.br = phi ptr [ %i.bu, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNCNvB2W_14scan_ch_repeat0E0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i46 ], [ %i.bq, %.lr.ph.i.i.i.i.i43.preheader ] ; 2 uses
  %i.bs = load i8, ptr %i.br, align 1, !alias.scope !655, !noalias !662, !noundef !15
  %i.bt = icmp eq i8 %i.bs, 93
  br i1 %i.bt, label %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNCNvB2W_14scan_ch_repeat0E0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i46, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_ch_repeat.exit47

_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNCNvB2W_14scan_ch_repeat0E0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i46: ; preds = %.lr.ph.i.i.i.i.i43
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 1 ; 2 uses
  %i.bv = add nuw nsw i64 %.sroa.01.019.i.i.i.i.i44, 1
  %i.bw = icmp eq ptr %i.bu, %i.bf
  br i1 %i.bw, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_ch_repeat.exit47, label %.lr.ph.i.i.i.i.i43

_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_ch_repeat.exit47: ; preds = %.lr.ph.i.i.i.i.i43, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNCNvB2W_14scan_ch_repeat0E0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i46
  %.sroa.0.1.i.i.i.i45 = phi i64 [ %.sroa.01.019.i.i.i.i.i44, %.lr.ph.i.i.i.i.i43 ], [ %i.bo, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNCNvB2W_14scan_ch_repeat0E0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i.i46 ] ; 2 uses
  %i.bx = add i64 %.sroa.0.1.i.i.i.i45, %spec.select.i ; 7 uses
  %i.by = icmp eq i64 %.sroa.0.1.i.i.i.i45, 0
  br i1 %i.by, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_ch_repeat.exit47.thread, label %bb.v

bb.u:                                             ; preds = %_RINvNtNtNtCslLTI5cSnp8O_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECsbNU0JlWw3cF_14pulldown_cmark.exit38
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %spec.select.i, i64 noundef %1, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @109) #15
  unreachable

_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_ch_repeat.exit47.thread: ; preds = %bb.t, %bb.y, %bb.w, %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_ch_repeat.exit47
  %i.bz = phi i64 [ %i.bx, %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_ch_repeat.exit47 ], [ %i.bx, %bb.y ], [ %1, %bb.w ], [ %spec.select.i, %bb.t ]
  store i64 %i.bz, ptr %3, align 8
  br label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_ch_repeat.exit.thread

bb.v:                                             ; preds = %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_ch_repeat.exit47
  %i.ca = icmp ugt i64 %i.bx, %1
  br i1 %i.ca, label %bb.x, label %bb.w, !prof !19

bb.w:                                             ; preds = %bb.v
  %i.cb = icmp eq i64 %1, %i.bx
  br i1 %i.cb, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_ch_repeat.exit47.thread, label %bb.y

bb.x:                                             ; preds = %bb.v
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %i.bx, i64 noundef %1, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #15
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 %i.bx
  %i.cd = load i8, ptr %i.cc, align 1, !noundef !15
  %i.ce = icmp eq i8 %i.cd, 62
  br i1 %i.ce, label %bb.z, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_ch_repeat.exit47.thread

bb.z:                                             ; preds = %bb.y
  %i.cf = add nuw i64 %i.bx, 1
  br label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_ch_repeat.exit.thread

bb.aa:                                            ; preds = %bb.c
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8, !noundef !15
  %.not31 = icmp ult i64 %2, %i.ch
  br i1 %.not31, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_ch_repeat.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ci = sub nuw nsw i64 %1, %i.d                ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 3 uses
  %i.ck = icmp samesign eq i64 %i.ci, 0
  br i1 %i.ck, label %_RINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNCNvB2_24scan_inline_html_comments_0EB4_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.ab
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 %i.d
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNCNvB2W_24scan_inline_html_comments_0E0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i
  %.sroa.01.018.i.i.i.i = phi i64 [ %i.cq, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNCNvB2W_24scan_inline_html_comments_0E0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %i.cm = phi ptr [ %i.cp, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNCNvB2W_24scan_inline_html_comments_0E0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i ], [ %i.cl, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %i.cn = load i8, ptr %i.cm, align 1, !alias.scope !672, !noalias !677, !noundef !15
  %i.co = add i8 %i.cn, -65
  %.sroa.0.0.i.i.i.i.i.i.i = icmp ult i8 %i.co, 26
  br i1 %.sroa.0.0.i.i.i.i.i.i.i, label %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNCNvB2W_24scan_inline_html_comments_0E0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i, label %_RINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNCNvB2_24scan_inline_html_comments_0EB4_.exit

_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNCNvB2W_24scan_inline_html_comments_0E0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 1 ; 2 uses
  %i.cq = add nuw nsw i64 %.sroa.01.018.i.i.i.i, 1
  %i.cr = icmp eq ptr %i.cp, %i.cj
  br i1 %i.cr, label %_RINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNCNvB2_24scan_inline_html_comments_0EB4_.exit, label %.lr.ph.i.i.i.i

_RINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNCNvB2_24scan_inline_html_comments_0EB4_.exit: ; preds = %.lr.ph.i.i.i.i, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNCNvB2W_24scan_inline_html_comments_0E0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i, %bb.ab
  %.sroa.0.1.i.i.i = phi i64 [ 0, %bb.ab ], [ %i.ci, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNCNvB2W_24scan_inline_html_comments_0E0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i ], [ %.sroa.01.018.i.i.i.i, %.lr.ph.i.i.i.i ]
  %i.cs = add i64 %.sroa.0.1.i.i.i, %i.d          ; 5 uses
  %i.ct = icmp ugt i64 %i.cs, %1
  br i1 %i.ct, label %bb.ad, label %bb.ac, !prof !19

bb.ac:                                            ; preds = %_RINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNCNvB2_24scan_inline_html_comments_0EB4_.exit
  %i.cu = sub nuw nsw i64 %1, %i.cs               ; 2 uses
  %i.cv = icmp samesign eq i64 %i.cu, 0
  br i1 %i.cv, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_ch_repeat.exit.thread, label %.lr.ph.i.i.i.i48.preheader

.lr.ph.i.i.i.i48.preheader:                       ; preds = %bb.ac
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 %i.cs
  br label %.lr.ph.i.i.i.i48

.lr.ph.i.i.i.i48:                                 ; preds = %.lr.ph.i.i.i.i48.preheader, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_19is_ascii_whitespaceE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i
  %.sroa.01.018.i.i.i.i49 = phi i64 [ %i.da, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_19is_ascii_whitespaceE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i48.preheader ] ; 2 uses
  %i.cx = phi ptr [ %i.cz, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_19is_ascii_whitespaceE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i ], [ %i.cw, %.lr.ph.i.i.i.i48.preheader ] ; 2 uses
  %i.cy = load i8, ptr %i.cx, align 1, !alias.scope !685, !noalias !690, !noundef !15
  switch i8 %i.cy, label %_RINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2_19is_ascii_whitespaceEB4_.exit [
    i8 32, label %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_19is_ascii_whitespaceE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i
    i8 13, label %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_19is_ascii_whitespaceE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i
    i8 12, label %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_19is_ascii_whitespaceE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i
    i8 11, label %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_19is_ascii_whitespaceE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i
    i8 10, label %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_19is_ascii_whitespaceE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i
    i8 9, label %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_19is_ascii_whitespaceE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i
  ]

_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_19is_ascii_whitespaceE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i48, %.lr.ph.i.i.i.i48, %.lr.ph.i.i.i.i48, %.lr.ph.i.i.i.i48, %.lr.ph.i.i.i.i48, %.lr.ph.i.i.i.i48
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 1 ; 2 uses
  %i.da = add nuw nsw i64 %.sroa.01.018.i.i.i.i49, 1
  %i.db = icmp eq ptr %i.cz, %i.cj
  br i1 %i.db, label %_RINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2_19is_ascii_whitespaceEB4_.exit, label %.lr.ph.i.i.i.i48

_RINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2_19is_ascii_whitespaceEB4_.exit: ; preds = %.lr.ph.i.i.i.i48, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_19is_ascii_whitespaceE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i
  %.sroa.0.1.i.i.i50 = phi i64 [ %i.cu, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_19is_ascii_whitespaceE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i ], [ %.sroa.01.018.i.i.i.i49, %.lr.ph.i.i.i.i48 ] ; 2 uses
  %i.dc = icmp eq i64 %.sroa.0.1.i.i.i50, 0
  br i1 %i.dc, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_ch_repeat.exit.thread, label %bb.ae

bb.ad:                                            ; preds = %_RINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNCNvB2_24scan_inline_html_comments_0EB4_.exit
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %i.cs, i64 noundef %1, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @113) #15
  unreachable

bb.ae:                                            ; preds = %_RINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2_19is_ascii_whitespaceEB4_.exit
  %i.dd = add i64 %.sroa.0.1.i.i.i50, %i.cs       ; 4 uses
  %i.de = icmp ugt i64 %i.dd, %1
  br i1 %i.de, label %bb.ah, label %bb.af, !prof !19

_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_ch_repeat.exit.thread: ; preds = %bb.k, %.lr.ph, %bb.ac, %bb.d, %bb.n, %_RINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2_19is_ascii_whitespaceEB4_.exit, %bb.c, %bb.o, %bb.aa, %bb.m, %bb.h, %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_ch_repeat.exit, %bb.a, %bb.ak, %bb.am, %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_ch_repeat.exit47.thread, %bb.z
  %.sroa.13.1 = phi i64 [ undef, %bb.c ], [ undef, %bb.ak ], [ %i.du, %bb.am ], [ undef, %_RINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2_19is_ascii_whitespaceEB4_.exit ], [ undef, %bb.a ], [ undef, %bb.ac ], [ undef, %bb.h ], [ undef, %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_ch_repeat.exit ], [ undef, %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_ch_repeat.exit47.thread ], [ %i.cf, %bb.z ], [ undef, %bb.m ], [ %spec.select, %bb.n ], [ undef, %bb.aa ], [ undef, %bb.o ], [ undef, %bb.d ], [ undef, %.lr.ph ], [ undef, %bb.k ]
  %.sroa.0.1 = phi i64 [ 0, %bb.c ], [ 0, %bb.ak ], [ 1, %bb.am ], [ 0, %_RINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2_19is_ascii_whitespaceEB4_.exit ], [ 0, %bb.a ], [ 0, %bb.ac ], [ 0, %bb.h ], [ 0, %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_ch_repeat.exit ], [ 0, %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_ch_repeat.exit47.thread ], [ 1, %bb.z ], [ 0, %bb.m ], [ %spec.select33, %bb.n ], [ 0, %bb.aa ], [ 0, %bb.o ], [ 0, %bb.d ], [ 0, %.lr.ph ], [ 0, %bb.k ]
  %i.df = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.dg = insertvalue { i64, i64 } %i.df, i64 %.sroa.13.1, 1
  ret { i64, i64 } %i.dg

bb.af:                                            ; preds = %bb.ae
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 %i.dd ; 2 uses
  %i.di = load atomic ptr, ptr @_RNvNvNtNtNtCslLTI5cSnp8O_6memchr4arch6x86_646memchr10memchr_raw2FN monotonic, align 8, !noalias !698, !nonnull !15, !noundef !15
  %i.dj = tail call { i64, ptr } %i.di(i8 noundef 62, ptr noundef nonnull readonly %i.dh, ptr noundef nonnull readonly %i.cj), !noalias !698, !inline_history !224 ; 2 uses
  %i.dk = extractvalue { i64, ptr } %i.dj, 0
  %i.dl = trunc nuw i64 %i.dk to i1               ; 2 uses
  br i1 %i.dl, label %bb.ag, label %_RINvNtNtNtCslLTI5cSnp8O_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECsbNU0JlWw3cF_14pulldown_cmark.exit

bb.ag:                                            ; preds = %bb.af
  %i.dm = extractvalue { i64, ptr } %i.dj, 1
  %i.dn = tail call noundef i64 @_RNvXNtCslLTI5cSnp8O_6memchr3extPhNtB2_7Pointer8distanceCsbNU0JlWw3cF_14pulldown_cmark(ptr noundef %i.dm, ptr noundef nonnull readonly %i.dh)
  br label %_RINvNtNtNtCslLTI5cSnp8O_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECsbNU0JlWw3cF_14pulldown_cmark.exit

_RINvNtNtNtCslLTI5cSnp8O_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECsbNU0JlWw3cF_14pulldown_cmark.exit: ; preds = %bb.af, %bb.ag
  %.sroa.3.0.i = phi i64 [ %i.dn, %bb.ag ], [ undef, %bb.af ]
  %i.do = add i64 %.sroa.3.0.i, %i.dd
  %spec.select.i51 = select i1 %i.dl, i64 %i.do, i64 %1 ; 6 uses
  %i.dp = icmp ugt i64 %spec.select.i51, %1
  br i1 %i.dp, label %bb.aj, label %bb.ai, !prof !19

bb.ah:                                            ; preds = %bb.ae
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %i.dd, i64 noundef %1, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @112) #15
  unreachable

bb.ai:                                            ; preds = %_RINvNtNtNtCslLTI5cSnp8O_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECsbNU0JlWw3cF_14pulldown_cmark.exit
  %i.dq = icmp eq i64 %1, %spec.select.i51
  br i1 %i.dq, label %bb.ak, label %bb.al

bb.aj:                                            ; preds = %_RINvNtNtNtCslLTI5cSnp8O_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECsbNU0JlWw3cF_14pulldown_cmark.exit
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %spec.select.i51, i64 noundef %1, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @111) #15
  unreachable

bb.ak:                                            ; preds = %bb.al, %bb.ai
  store i64 %spec.select.i51, ptr %i.cg, align 8
  br label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_ch_repeat.exit.thread

bb.al:                                            ; preds = %bb.ai
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 %spec.select.i51
  %i.ds = load i8, ptr %i.dr, align 1, !noundef !15
  %i.dt = icmp eq i8 %i.ds, 62
  br i1 %i.dt, label %bb.am, label %bb.ak

bb.am:                                            ; preds = %bb.al
  %i.du = add nuw i64 %spec.select.i51, 1
  br label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_ch_repeat.exit.thread
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners24starts_html_block_type_6(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 27 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %0, align 1, !noundef !15
  %i.e = icmp eq i8 %i.d, 47
  %spec.select = zext i1 %i.e to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.01.0 = phi i64 [ 0, %bb.a ], [ %spec.select, %bb.b ] ; 2 uses
  %i.f = sub nuw nsw i64 %1, %.sroa.01.0          ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0 ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.i = icmp samesign eq i64 %i.f, 0
  br i1 %i.i, label %_RINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2_21is_ascii_alphanumericEB4_.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_21is_ascii_alphanumericE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i
  %.sroa.01.018.i.i.i.i = phi i64 [ %i.q, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_21is_ascii_alphanumericE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i ], [ 0, %bb.c ] ; 4 uses
  %i.j = phi ptr [ %i.p, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_21is_ascii_alphanumericE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i ], [ %i.g, %bb.c ] ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !alias.scope !701, !noalias !706, !noundef !15 ; 2 uses
  %i.l = add i8 %i.k, -48
  %or.cond.i.i.i.i.i.i.i.i = icmp ult i8 %i.l, 10
  %i.m = and i8 %i.k, -33
  %i.n = add i8 %i.m, -65
  %i.o = icmp ult i8 %i.n, 26
  %.sroa.0.0.i.i.i.i.i.i.i.i = or i1 %or.cond.i.i.i.i.i.i.i.i, %i.o
  br i1 %.sroa.0.0.i.i.i.i.i.i.i.i, label %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_21is_ascii_alphanumericE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i, label %_RINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2_21is_ascii_alphanumericEB4_.exit

_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_21is_ascii_alphanumericE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 2 uses
  %i.q = add nuw nsw i64 %.sroa.01.018.i.i.i.i, 1
  %i.r = icmp eq ptr %i.p, %i.h
  br i1 %i.r, label %_RINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2_21is_ascii_alphanumericEB4_.exit.thread, label %.lr.ph.i.i.i.i

_RINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2_21is_ascii_alphanumericEB4_.exit: ; preds = %.lr.ph.i.i.i.i
  %.not = icmp samesign ugt i64 %.sroa.01.018.i.i.i.i, %i.f
  br i1 %.not, label %bb.d, label %_RINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2_21is_ascii_alphanumericEB4_.exit.thread, !prof !714

bb.d:                                             ; preds = %_RINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2_21is_ascii_alphanumericEB4_.exit
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.sroa.01.018.i.i.i.i, i64 noundef %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @114) #15
  unreachable

_RINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2_21is_ascii_alphanumericEB4_.exit.thread: ; preds = %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_21is_ascii_alphanumericE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i, %bb.c, %_RINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2_21is_ascii_alphanumericEB4_.exit
  %.sroa.0.1.i.i.i11 = phi i64 [ %.sroa.01.018.i.i.i.i, %_RINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2_21is_ascii_alphanumericEB4_.exit ], [ 0, %bb.c ], [ %i.f, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_21is_ascii_alphanumericE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i ] ; 10 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.0.1.i.i.i11 ; 9 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !715
  call void @_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCsbNU0JlWw3cF_14pulldown_cmark(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull @37, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @37, i64 4), ptr noundef nonnull readonly %i.g, ptr noundef nonnull readonly %i.s)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !720)
  %i.w = load i64, ptr %i.u, align 8, !alias.scope !723, !noalias !715, !noundef !15 ; 2 uses
  %.promoted.i.i19.i.i = load i64, ptr %i.t, align 8, !alias.scope !723, !noalias !715 ; 3 uses
  %.val1.i.i.i.i20.i.i = load ptr, ptr %i.a, align 8, !alias.scope !720, !noalias !715, !nonnull !15
  %.val.i.i.i.i21.i.i = load ptr, ptr %i.v, align 8, !alias.scope !720, !noalias !715, !nonnull !15
  %umax.i.i22.i.i = tail call i64 @llvm.umax.i64(i64 %.promoted.i.i19.i.i, i64 %i.w)
  %exitcond.not.i9.not.i23.i.i = icmp ult i64 %.promoted.i.i19.i.i, %i.w
  br i1 %exitcond.not.i9.not.i23.i.i, label %.lr.ph.i26.i.i, label %._crit_edge.i24.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.x = add i64 %i.y, 1                          ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.x, %umax.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners11is_html_tag.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNCNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners11is_html_tag0B5_.exit31.5.i.i, %bb.e
  %i.y = phi i64 [ %i.x, %bb.e ], [ %.promoted.i.i.i.i, %_RNCNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners11is_html_tag0B5_.exit31.5.i.i ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 %i.y
  %.val.i.i.i.i = load i8, ptr %i.z, align 1, !noalias !728, !noundef !15
  %.val8.i.i.i.i = load i8, ptr %i.aa, align 1, !noalias !728, !noundef !15
  %i.ab = or i8 %.val8.i.i.i.i, 32
  %i.ac = icmp eq i8 %.val.i.i.i.i, %i.ab
  br i1 %i.ac, label %bb.e, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners11is_html_tag.exit.thread

_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners11is_html_tag.exit.thread: ; preds = %.lr.ph.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !715
  br label %switch.lookup

bb.f:                                             ; preds = %.lr.ph.i26.i.i
  %i.ad = add i64 %i.ae, 1                        ; 2 uses
  %exitcond.not.i.i30.i.i = icmp eq i64 %i.ad, %umax.i.i22.i.i
  br i1 %exitcond.not.i.i30.i.i, label %._crit_edge.i24.i.i, label %.lr.ph.i26.i.i

.lr.ph.i26.i.i:                                   ; preds = %_RINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2_21is_ascii_alphanumericEB4_.exit.thread, %bb.f
  %i.ae = phi i64 [ %i.ad, %bb.f ], [ %.promoted.i.i19.i.i, %_RINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2_21is_ascii_alphanumericEB4_.exit.thread ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i20.i.i, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i21.i.i, i64 %i.ae
  %.val.i.i27.i.i = load i8, ptr %i.af, align 1, !noalias !720, !noundef !15 ; 2 uses
  %.val8.i.i28.i.i = load i8, ptr %i.ag, align 1, !noalias !720, !noundef !15
  %i.ah = or i8 %.val8.i.i28.i.i, 32              ; 2 uses
  %i.ai = icmp eq i8 %.val.i.i27.i.i, %i.ah
  br i1 %i.ai, label %bb.f, label %_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterhEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1n_8find_map5checkTRhB2w_ENtNtBc_3cmp8OrderingNCNCNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners11is_html_tag00E0INtNtNtBc_3ops12control_flow11ControlFlowB2D_EEB35_.exit.i29.i.i

_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterhEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1n_8find_map5checkTRhB2w_ENtNtBc_3cmp8OrderingNCNCNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners11is_html_tag00E0INtNtNtBc_3ops12control_flow11ControlFlowB2D_EEB35_.exit.i29.i.i: ; preds = %.lr.ph.i26.i.i
  %i.aj = icmp ugt i8 %.val.i.i27.i.i, %i.ah
  br label %_RNCNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners11is_html_tag0B5_.exit31.i.i

._crit_edge.i24.i.i:                              ; preds = %bb.f, %_RINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2_21is_ascii_alphanumericEB4_.exit.thread
  %i.ak = icmp samesign ult i64 %.sroa.0.1.i.i.i11, 4
  br label %_RNCNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners11is_html_tag0B5_.exit31.i.i

_RNCNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners11is_html_tag0B5_.exit31.i.i: ; preds = %._crit_edge.i24.i.i, %_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterhEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1n_8find_map5checkTRhB2w_ENtNtBc_3cmp8OrderingNCNCNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners11is_html_tag00E0INtNtNtBc_3ops12control_flow11ControlFlowB2D_EEB35_.exit.i29.i.i
  %.sroa.0.0.i25.i.i = phi i1 [ %i.ak, %._crit_edge.i24.i.i ], [ %i.aj, %_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterhEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1n_8find_map5checkTRhB2w_ENtNtBc_3cmp8OrderingNCNCNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners11is_html_tag00E0INtNtNtBc_3ops12control_flow11ControlFlowB2D_EEB35_.exit.i29.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !715
  %i.al = select i1 %.sroa.0.0.i25.i.i, i64 0, i64 31, !unpredictable !15 ; 2 uses
  %i.am = add nuw nsw i64 %i.al, 15               ; 2 uses
  %i.an = getelementptr inbounds nuw [16 x i8], ptr @68, i64 %i.am ; 2 uses
  %.val13.1.i.i = load ptr, ptr %i.an, align 8, !noalias !715, !nonnull !15, !noundef !15 ; 2 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 8
  %.val14.1.i.i = load i64, ptr %i.ao, align 8, !noalias !715, !noundef !15 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.val13.1.i.i, i64 %.val14.1.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !715
  call void @_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCsbNU0JlWw3cF_14pulldown_cmark(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %.val13.1.i.i, ptr noundef nonnull %i.ap, ptr noundef nonnull readonly %i.g, ptr noundef nonnull readonly %i.s)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !731)
  %i.aq = load i64, ptr %i.u, align 8, !alias.scope !733, !noalias !715, !noundef !15 ; 2 uses
  %.promoted.i.i19.1.i.i = load i64, ptr %i.t, align 8, !alias.scope !733, !noalias !715 ; 3 uses
  %.val1.i.i.i.i20.1.i.i = load ptr, ptr %i.a, align 8, !alias.scope !731, !noalias !715, !nonnull !15
  %.val.i.i.i.i21.1.i.i = load ptr, ptr %i.v, align 8, !alias.scope !731, !noalias !715, !nonnull !15
  %umax.i.i22.1.i.i = tail call i64 @llvm.umax.i64(i64 %.promoted.i.i19.1.i.i, i64 %i.aq)
  %exitcond.not.i9.not.i23.1.i.i = icmp ult i64 %.promoted.i.i19.1.i.i, %i.aq
  br i1 %exitcond.not.i9.not.i23.1.i.i, label %.lr.ph.i26.1.i.i, label %._crit_edge.i24.1.i.i

.lr.ph.i26.1.i.i:                                 ; preds = %_RNCNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners11is_html_tag0B5_.exit31.i.i, %bb.g
  %i.ar = phi i64 [ %i.ax, %bb.g ], [ %.promoted.i.i19.1.i.i, %_RNCNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners11is_html_tag0B5_.exit31.i.i ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i20.1.i.i, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i21.1.i.i, i64 %i.ar
  %.val.i.i27.1.i.i = load i8, ptr %i.as, align 1, !noalias !731, !noundef !15 ; 2 uses
  %.val8.i.i28.1.i.i = load i8, ptr %i.at, align 1, !noalias !731, !noundef !15
  %i.au = or i8 %.val8.i.i28.1.i.i, 32            ; 2 uses
  %i.av = icmp eq i8 %.val.i.i27.1.i.i, %i.au
  br i1 %i.av, label %bb.g, label %_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterhEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1n_8find_map5checkTRhB2w_ENtNtBc_3cmp8OrderingNCNCNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners11is_html_tag00E0INtNtNtBc_3ops12control_flow11ControlFlowB2D_EEB35_.exit.i29.1.i.i

_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterhEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1n_8find_map5checkTRhB2w_ENtNtBc_3cmp8OrderingNCNCNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners11is_html_tag00E0INtNtNtBc_3ops12control_flow11ControlFlowB2D_EEB35_.exit.i29.1.i.i: ; preds = %.lr.ph.i26.1.i.i
  %i.aw = icmp ugt i8 %.val.i.i27.1.i.i, %i.au
  br label %_RNCNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners11is_html_tag0B5_.exit31.1.i.i

bb.g:                                             ; preds = %.lr.ph.i26.1.i.i
  %i.ax = add i64 %i.ar, 1                        ; 2 uses
  %exitcond.not.i.i30.1.i.i = icmp eq i64 %i.ax, %umax.i.i22.1.i.i
  br i1 %exitcond.not.i.i30.1.i.i, label %._crit_edge.i24.1.i.i, label %.lr.ph.i26.1.i.i

._crit_edge.i24.1.i.i:                            ; preds = %bb.g, %_RNCNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners11is_html_tag0B5_.exit31.i.i
  %i.ay = icmp ugt i64 %.val14.1.i.i, %.sroa.0.1.i.i.i11
  br label %_RNCNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners11is_html_tag0B5_.exit31.1.i.i

_RNCNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners11is_html_tag0B5_.exit31.1.i.i: ; preds = %._crit_edge.i24.1.i.i, %_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterhEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1n_8find_map5checkTRhB2w_ENtNtBc_3cmp8OrderingNCNCNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners11is_html_tag00E0INtNtNtBc_3ops12control_flow11ControlFlowB2D_EEB35_.exit.i29.1.i.i
  %.sroa.0.0.i25.1.i.i = phi i1 [ %i.ay, %._crit_edge.i24.1.i.i ], [ %i.aw, %_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterhEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1n_8find_map5checkTRhB2w_ENtNtBc_3cmp8OrderingNCNCNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners11is_html_tag00E0INtNtNtBc_3ops12control_flow11ControlFlowB2D_EEB35_.exit.i29.1.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !715
  %i.az = select i1 %.sroa.0.0.i25.1.i.i, i64 %i.al, i64 %i.am, !unpredictable !15 ; 2 uses
  %i.ba = add nuw nsw i64 %i.az, 8                ; 2 uses
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr @68, i64 %i.ba ; 2 uses
  %.val13.2.i.i = load ptr, ptr %i.bb, align 8, !noalias !715, !nonnull !15, !noundef !15 ; 2 uses
  %i.bc = getelementptr i8, ptr %i.bb, i64 8
  %.val14.2.i.i = load i64, ptr %i.bc, align 8, !noalias !715, !noundef !15 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.val13.2.i.i, i64 %.val14.2.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !715
  call void @_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCsbNU0JlWw3cF_14pulldown_cmark(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %.val13.2.i.i, ptr noundef nonnull %i.bd, ptr noundef nonnull readonly %i.g, ptr noundef nonnull readonly %i.s)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !734)
  %i.be = load i64, ptr %i.u, align 8, !alias.scope !736, !noalias !715, !noundef !15 ; 2 uses
  %.promoted.i.i19.2.i.i = load i64, ptr %i.t, align 8, !alias.scope !736, !noalias !715 ; 3 uses
  %.val1.i.i.i.i20.2.i.i = load ptr, ptr %i.a, align 8, !alias.scope !734, !noalias !715, !nonnull !15
  %.val.i.i.i.i21.2.i.i = load ptr, ptr %i.v, align 8, !alias.scope !734, !noalias !715, !nonnull !15
  %umax.i.i22.2.i.i = tail call i64 @llvm.umax.i64(i64 %.promoted.i.i19.2.i.i, i64 %i.be)
  %exitcond.not.i9.not.i23.2.i.i = icmp ult i64 %.promoted.i.i19.2.i.i, %i.be
  br i1 %exitcond.not.i9.not.i23.2.i.i, label %.lr.ph.i26.2.i.i, label %._crit_edge.i24.2.i.i

.lr.ph.i26.2.i.i:                                 ; preds = %_RNCNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners11is_html_tag0B5_.exit31.1.i.i, %bb.h
  %i.bf = phi i64 [ %i.bl, %bb.h ], [ %.promoted.i.i19.2.i.i, %_RNCNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners11is_html_tag0B5_.exit31.1.i.i ] ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i20.2.i.i, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i21.2.i.i, i64 %i.bf
  %.val.i.i27.2.i.i = load i8, ptr %i.bg, align 1, !noalias !734, !noundef !15 ; 2 uses
  %.val8.i.i28.2.i.i = load i8, ptr %i.bh, align 1, !noalias !734, !noundef !15
  %i.bi = or i8 %.val8.i.i28.2.i.i, 32            ; 2 uses
  %i.bj = icmp eq i8 %.val.i.i27.2.i.i, %i.bi
  br i1 %i.bj, label %bb.h, label %_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterhEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1n_8find_map5checkTRhB2w_ENtNtBc_3cmp8OrderingNCNCNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners11is_html_tag00E0INtNtNtBc_3ops12control_flow11ControlFlowB2D_EEB35_.exit.i29.2.i.i

_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterhEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1n_8find_map5checkTRhB2w_ENtNtBc_3cmp8OrderingNCNCNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners11is_html_tag00E0INtNtNtBc_3ops12control_flow11ControlFlowB2D_EEB35_.exit.i29.2.i.i: ; preds = %.lr.ph.i26.2.i.i
  %i.bk = icmp ugt i8 %.val.i.i27.2.i.i, %i.bi
  br label %_RNCNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners11is_html_tag0B5_.exit31.2.i.i

bb.h:                                             ; preds = %.lr.ph.i26.2.i.i
  %i.bl = add i64 %i.bf, 1                        ; 2 uses
  %exitcond.not.i.i30.2.i.i = icmp eq i64 %i.bl, %umax.i.i22.2.i.i
  br i1 %exitcond.not.i.i30.2.i.i, label %._crit_edge.i24.2.i.i, label %.lr.ph.i26.2.i.i

._crit_edge.i24.2.i.i:                            ; preds = %bb.h, %_RNCNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners11is_html_tag0B5_.exit31.1.i.i
  %i.bm = icmp ugt i64 %.val14.2.i.i, %.sroa.0.1.i.i.i11
  br label %_RNCNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners11is_html_tag0B5_.exit31.2.i.i

_RNCNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners11is_html_tag0B5_.exit31.2.i.i: ; preds = %._crit_edge.i24.2.i.i, %_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterhEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1n_8find_map5checkTRhB2w_ENtNtBc_3cmp8OrderingNCNCNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners11is_html_tag00E0INtNtNtBc_3ops12control_flow11ControlFlowB2D_EEB35_.exit.i29.2.i.i
  %.sroa.0.0.i25.2.i.i = phi i1 [ %i.bm, %._crit_edge.i24.2.i.i ], [ %i.bk, %_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterhEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1n_8find_map5checkTRhB2w_ENtNtBc_3cmp8OrderingNCNCNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners11is_html_tag00E0INtNtNtBc_3ops12control_flow11ControlFlowB2D_EEB35_.exit.i29.2.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !715
  %i.bn = select i1 %.sroa.0.0.i25.2.i.i, i64 %i.az, i64 %i.ba, !unpredictable !15 ; 2 uses
  %i.bo = add nuw nsw i64 %i.bn, 4                ; 2 uses
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr @68, i64 %i.bo ; 2 uses
  %.val13.3.i.i = load ptr, ptr %i.bp, align 8, !noalias !715, !nonnull !15, !noundef !15 ; 2 uses
  %i.bq = getelementptr i8, ptr %i.bp, i64 8
  %.val14.3.i.i = load i64, ptr %i.bq, align 8, !noalias !715, !noundef !15 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.val13.3.i.i, i64 %.val14.3.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !715
  call void @_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCsbNU0JlWw3cF_14pulldown_cmark(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %.val13.3.i.i, ptr noundef nonnull %i.br, ptr noundef nonnull readonly %i.g, ptr noundef nonnull readonly %i.s)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !737)
  %i.bs = load i64, ptr %i.u, align 8, !alias.scope !739, !noalias !715, !noundef !15 ; 2 uses
  %.promoted.i.i19.3.i.i = load i64, ptr %i.t, align 8, !alias.scope !739, !noalias !715 ; 3 uses
  %.val1.i.i.i.i20.3.i.i = load ptr, ptr %i.a, align 8, !alias.scope !737, !noalias !715, !nonnull !15
  %.val.i.i.i.i21.3.i.i = load ptr, ptr %i.v, align 8, !alias.scope !737, !noalias !715, !nonnull !15
  %umax.i.i22.3.i.i = tail call i64 @llvm.umax.i64(i64 %.promoted.i.i19.3.i.i, i64 %i.bs)
  %exitcond.not.i9.not.i23.3.i.i = icmp ult i64 %.promoted.i.i19.3.i.i, %i.bs
  br i1 %exitcond.not.i9.not.i23.3.i.i, label %.lr.ph.i26.3.i.i, label %._crit_edge.i24.3.i.i

.lr.ph.i26.3.i.i:                                 ; preds = %_RNCNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners11is_html_tag0B5_.exit31.2.i.i, %bb.i
  %i.bt = phi i64 [ %i.bz, %bb.i ], [ %.promoted.i.i19.3.i.i, %_RNCNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners11is_html_tag0B5_.exit31.2.i.i ] ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i20.3.i.i, i64 %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i21.3.i.i, i64 %i.bt
  %.val.i.i27.3.i.i = load i8, ptr %i.bu, align 1, !noalias !737, !noundef !15 ; 2 uses
  %.val8.i.i28.3.i.i = load i8, ptr %i.bv, align 1, !noalias !737, !noundef !15
  %i.bw = or i8 %.val8.i.i28.3.i.i, 32            ; 2 uses
  %i.bx = icmp eq i8 %.val.i.i27.3.i.i, %i.bw
  br i1 %i.bx, label %bb.i, label %_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterhEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1n_8find_map5checkTRhB2w_ENtNtBc_3cmp8OrderingNCNCNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners11is_html_tag00E0INtNtNtBc_3ops12control_flow11ControlFlowB2D_EEB35_.exit.i29.3.i.i

_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterhEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1n_8find_map5checkTRhB2w_ENtNtBc_3cmp8OrderingNCNCNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners11is_html_tag00E0INtNtNtBc_3ops12control_flow11ControlFlowB2D_EEB35_.exit.i29.3.i.i: ; preds = %.lr.ph.i26.3.i.i
  %i.by = icmp ugt i8 %.val.i.i27.3.i.i, %i.bw
  br label %_RNCNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners11is_html_tag0B5_.exit31.3.i.i

bb.i:                                             ; preds = %.lr.ph.i26.3.i.i
  %i.bz = add i64 %i.bt, 1                        ; 2 uses
  %exitcond.not.i.i30.3.i.i = icmp eq i64 %i.bz, %umax.i.i22.3.i.i
  br i1 %exitcond.not.i.i30.3.i.i, label %._crit_edge.i24.3.i.i, label %.lr.ph.i26.3.i.i

._crit_edge.i24.3.i.i:                            ; preds = %bb.i, %_RNCNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners11is_html_tag0B5_.exit31.2.i.i
  %i.ca = icmp ugt i64 %.val14.3.i.i, %.sroa.0.1.i.i.i11
  br label %_RNCNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners11is_html_tag0B5_.exit31.3.i.i

_RNCNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners11is_html_tag0B5_.exit31.3.i.i: ; preds = %._crit_edge.i24.3.i.i, %_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterhEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1n_8find_map5checkTRhB2w_ENtNtBc_3cmp8OrderingNCNCNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners11is_html_tag00E0INtNtNtBc_3ops12control_flow11ControlFlowB2D_EEB35_.exit.i29.3.i.i
  %.sroa.0.0.i25.3.i.i = phi i1 [ %i.ca, %._crit_edge.i24.3.i.i ], [ %i.by, %_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterhEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1n_8find_map5checkTRhB2w_ENtNtBc_3cmp8OrderingNCNCNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners11is_html_tag00E0INtNtNtBc_3ops12control_flow11ControlFlowB2D_EEB35_.exit.i29.3.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !715
  %i.cb = select i1 %.sroa.0.0.i25.3.i.i, i64 %i.bn, i64 %i.bo, !unpredictable !15 ; 2 uses
  %i.cc = add nuw nsw i64 %i.cb, 2                ; 2 uses
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr @68, i64 %i.cc ; 2 uses
  %.val13.4.i.i = load ptr, ptr %i.cd, align 8, !noalias !715, !nonnull !15, !noundef !15 ; 2 uses
  %i.ce = getelementptr i8, ptr %i.cd, i64 8
  %.val14.4.i.i = load i64, ptr %i.ce, align 8, !noalias !715, !noundef !15 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.val13.4.i.i, i64 %.val14.4.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !715
  call void @_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCsbNU0JlWw3cF_14pulldown_cmark(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %.val13.4.i.i, ptr noundef nonnull %i.cf, ptr noundef nonnull readonly %i.g, ptr noundef nonnull readonly %i.s)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !740)
  %i.cg = load i64, ptr %i.u, align 8, !alias.scope !742, !noalias !715, !noundef !15 ; 2 uses
  %.promoted.i.i19.4.i.i = load i64, ptr %i.t, align 8, !alias.scope !742, !noalias !715 ; 3 uses
  %.val1.i.i.i.i20.4.i.i = load ptr, ptr %i.a, align 8, !alias.scope !740, !noalias !715, !nonnull !15
  %.val.i.i.i.i21.4.i.i = load ptr, ptr %i.v, align 8, !alias.scope !740, !noalias !715, !nonnull !15
  %umax.i.i22.4.i.i = tail call i64 @llvm.umax.i64(i64 %.promoted.i.i19.4.i.i, i64 %i.cg)
  %exitcond.not.i9.not.i23.4.i.i = icmp ult i64 %.promoted.i.i19.4.i.i, %i.cg
  br i1 %exitcond.not.i9.not.i23.4.i.i, label %.lr.ph.i26.4.i.i, label %._crit_edge.i24.4.i.i

.lr.ph.i26.4.i.i:                                 ; preds = %_RNCNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners11is_html_tag0B5_.exit31.3.i.i, %bb.j
  %i.ch = phi i64 [ %i.cn, %bb.j ], [ %.promoted.i.i19.4.i.i, %_RNCNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners11is_html_tag0B5_.exit31.3.i.i ] ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i20.4.i.i, i64 %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i21.4.i.i, i64 %i.ch
  %.val.i.i27.4.i.i = load i8, ptr %i.ci, align 1, !noalias !740, !noundef !15 ; 2 uses
  %.val8.i.i28.4.i.i = load i8, ptr %i.cj, align 1, !noalias !740, !noundef !15
  %i.ck = or i8 %.val8.i.i28.4.i.i, 32            ; 2 uses
  %i.cl = icmp eq i8 %.val.i.i27.4.i.i, %i.ck
  br i1 %i.cl, label %bb.j, label %_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterhEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1n_8find_map5checkTRhB2w_ENtNtBc_3cmp8OrderingNCNCNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners11is_html_tag00E0INtNtNtBc_3ops12control_flow11ControlFlowB2D_EEB35_.exit.i29.4.i.i

_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterhEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1n_8find_map5checkTRhB2w_ENtNtBc_3cmp8OrderingNCNCNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners11is_html_tag00E0INtNtNtBc_3ops12control_flow11ControlFlowB2D_EEB35_.exit.i29.4.i.i: ; preds = %.lr.ph.i26.4.i.i
  %i.cm = icmp ugt i8 %.val.i.i27.4.i.i, %i.ck
  br label %_RNCNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners11is_html_tag0B5_.exit31.4.i.i

bb.j:                                             ; preds = %.lr.ph.i26.4.i.i
  %i.cn = add i64 %i.ch, 1                        ; 2 uses
  %exitcond.not.i.i30.4.i.i = icmp eq i64 %i.cn, %umax.i.i22.4.i.i
  br i1 %exitcond.not.i.i30.4.i.i, label %._crit_edge.i24.4.i.i, label %.lr.ph.i26.4.i.i

._crit_edge.i24.4.i.i:                            ; preds = %bb.j, %_RNCNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners11is_html_tag0B5_.exit31.3.i.i
  %i.co = icmp ugt i64 %.val14.4.i.i, %.sroa.0.1.i.i.i11
  br label %_RNCNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners11is_html_tag0B5_.exit31.4.i.i

_RNCNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners11is_html_tag0B5_.exit31.4.i.i: ; preds = %._crit_edge.i24.4.i.i, %_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterhEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1n_8find_map5checkTRhB2w_ENtNtBc_3cmp8OrderingNCNCNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners11is_html_tag00E0INtNtNtBc_3ops12control_flow11ControlFlowB2D_EEB35_.exit.i29.4.i.i
  %.sroa.0.0.i25.4.i.i = phi i1 [ %i.co, %._crit_edge.i24.4.i.i ], [ %i.cm, %_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterhEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1n_8find_map5checkTRhB2w_ENtNtBc_3cmp8OrderingNCNCNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners11is_html_tag00E0INtNtNtBc_3ops12control_flow11ControlFlowB2D_EEB35_.exit.i29.4.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !715
  %i.cp = select i1 %.sroa.0.0.i25.4.i.i, i64 %i.cb, i64 %i.cc, !unpredictable !15 ; 2 uses
  %i.cq = add nuw nsw i64 %i.cp, 1                ; 2 uses
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr @68, i64 %i.cq ; 2 uses
  %.val13.5.i.i = load ptr, ptr %i.cr, align 8, !noalias !715, !nonnull !15, !noundef !15 ; 2 uses
  %i.cs = getelementptr i8, ptr %i.cr, i64 8
  %.val14.5.i.i = load i64, ptr %i.cs, align 8, !noalias !715, !noundef !15 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.val13.5.i.i, i64 %.val14.5.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !715
  call void @_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCsbNU0JlWw3cF_14pulldown_cmark(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %.val13.5.i.i, ptr noundef nonnull %i.ct, ptr noundef nonnull readonly %i.g, ptr noundef nonnull readonly %i.s)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !743)
  %i.cu = load i64, ptr %i.u, align 8, !alias.scope !745, !noalias !715, !noundef !15 ; 2 uses
  %.promoted.i.i19.5.i.i = load i64, ptr %i.t, align 8, !alias.scope !745, !noalias !715 ; 3 uses
  %.val1.i.i.i.i20.5.i.i = load ptr, ptr %i.a, align 8, !alias.scope !743, !noalias !715, !nonnull !15
  %.val.i.i.i.i21.5.i.i = load ptr, ptr %i.v, align 8, !alias.scope !743, !noalias !715, !nonnull !15
  %umax.i.i22.5.i.i = tail call i64 @llvm.umax.i64(i64 %.promoted.i.i19.5.i.i, i64 %i.cu)
  %exitcond.not.i9.not.i23.5.i.i = icmp ult i64 %.promoted.i.i19.5.i.i, %i.cu
  br i1 %exitcond.not.i9.not.i23.5.i.i, label %.lr.ph.i26.5.i.i, label %._crit_edge.i24.5.i.i

.lr.ph.i26.5.i.i:                                 ; preds = %_RNCNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners11is_html_tag0B5_.exit31.4.i.i, %bb.k
  %i.cv = phi i64 [ %i.db, %bb.k ], [ %.promoted.i.i19.5.i.i, %_RNCNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners11is_html_tag0B5_.exit31.4.i.i ] ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i20.5.i.i, i64 %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i21.5.i.i, i64 %i.cv
  %.val.i.i27.5.i.i = load i8, ptr %i.cw, align 1, !noalias !743, !noundef !15 ; 2 uses
  %.val8.i.i28.5.i.i = load i8, ptr %i.cx, align 1, !noalias !743, !noundef !15
  %i.cy = or i8 %.val8.i.i28.5.i.i, 32            ; 2 uses
  %i.cz = icmp eq i8 %.val.i.i27.5.i.i, %i.cy
  br i1 %i.cz, label %bb.k, label %_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterhEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1n_8find_map5checkTRhB2w_ENtNtBc_3cmp8OrderingNCNCNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners11is_html_tag00E0INtNtNtBc_3ops12control_flow11ControlFlowB2D_EEB35_.exit.i29.5.i.i

_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterhEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1n_8find_map5checkTRhB2w_ENtNtBc_3cmp8OrderingNCNCNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners11is_html_tag00E0INtNtNtBc_3ops12control_flow11ControlFlowB2D_EEB35_.exit.i29.5.i.i: ; preds = %.lr.ph.i26.5.i.i
  %i.da = icmp ugt i8 %.val.i.i27.5.i.i, %i.cy
  br label %_RNCNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners11is_html_tag0B5_.exit31.5.i.i

bb.k:                                             ; preds = %.lr.ph.i26.5.i.i
  %i.db = add i64 %i.cv, 1                        ; 2 uses
  %exitcond.not.i.i30.5.i.i = icmp eq i64 %i.db, %umax.i.i22.5.i.i
  br i1 %exitcond.not.i.i30.5.i.i, label %._crit_edge.i24.5.i.i, label %.lr.ph.i26.5.i.i

._crit_edge.i24.5.i.i:                            ; preds = %bb.k, %_RNCNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners11is_html_tag0B5_.exit31.4.i.i
  %i.dc = icmp ugt i64 %.val14.5.i.i, %.sroa.0.1.i.i.i11
  br label %_RNCNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners11is_html_tag0B5_.exit31.5.i.i

_RNCNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners11is_html_tag0B5_.exit31.5.i.i: ; preds = %._crit_edge.i24.5.i.i, %_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterhEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1n_8find_map5checkTRhB2w_ENtNtBc_3cmp8OrderingNCNCNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners11is_html_tag00E0INtNtNtBc_3ops12control_flow11ControlFlowB2D_EEB35_.exit.i29.5.i.i
  %.sroa.0.0.i25.5.i.i = phi i1 [ %i.dc, %._crit_edge.i24.5.i.i ], [ %i.da, %_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterhEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1n_8find_map5checkTRhB2w_ENtNtBc_3cmp8OrderingNCNCNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners11is_html_tag00E0INtNtNtBc_3ops12control_flow11ControlFlowB2D_EEB35_.exit.i29.5.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !715
  %i.dd = select i1 %.sroa.0.0.i25.5.i.i, i64 %i.cp, i64 %i.cq, !unpredictable !15
  %i.de = getelementptr inbounds nuw [16 x i8], ptr @68, i64 %i.dd ; 2 uses
  %.val17.i.i = load ptr, ptr %i.de, align 8, !noalias !715, !nonnull !15, !noundef !15 ; 2 uses
  %i.df = getelementptr i8, ptr %i.de, i64 8
  %.val18.i.i = load i64, ptr %i.df, align 8, !noalias !715, !noundef !15 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.val17.i.i, i64 %.val18.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !715
  call void @_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCsbNU0JlWw3cF_14pulldown_cmark(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull %.val17.i.i, ptr noundef nonnull %i.dg, ptr noundef nonnull readonly %i.g, ptr noundef nonnull readonly %i.s)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !728)
  %i.dh = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.di = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.dj = load i64, ptr %i.di, align 8, !alias.scope !746, !noalias !715, !noundef !15 ; 2 uses
  %.promoted.i.i.i.i = load i64, ptr %i.dh, align 8, !alias.scope !746, !noalias !715 ; 3 uses
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !728, !noalias !715, !nonnull !15
  %i.dk = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.val.i.i.i.i.i.i = load ptr, ptr %i.dk, align 8, !alias.scope !728, !noalias !715, !nonnull !15
  %umax.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %.promoted.i.i.i.i, i64 %i.dj)
  %exitcond.not.i9.not.i.i.i = icmp ult i64 %.promoted.i.i.i.i, %i.dj
  br i1 %exitcond.not.i9.not.i.i.i, label %.lr.ph.i.i.i, label %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners11is_html_tag.exit

_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners11is_html_tag.exit: ; preds = %bb.e, %_RNCNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners11is_html_tag0B5_.exit31.5.i.i
  %.not.i = icmp eq i64 %.val18.i.i, %.sroa.0.1.i.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !715
  br i1 %.not.i, label %bb.l, label %switch.lookup

switch.hole_check:                                ; preds = %bb.m
  %switch.maskindex = zext nneg i8 %switch.tableidx to i64
  %switch.shifted = lshr i64 9007199263129619, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %bb.n

switch.lookup:                                    ; preds = %switch.hole_check, %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners11is_html_tag.exit.thread, %bb.n, %bb.l, %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners11is_html_tag.exit, %bb.o
  %.sroa.0.0 = phi i1 [ false, %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners11is_html_tag.exit ], [ %i.dr, %bb.o ], [ true, %bb.l ], [ false, %bb.n ], [ false, %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners11is_html_tag.exit.thread ], [ true, %switch.hole_check ]
  ret i1 %.sroa.0.0

bb.l:                                             ; preds = %_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners11is_html_tag.exit
  %i.dl = sub nuw nsw i64 %i.f, %.sroa.0.1.i.i.i11
  %i.dm = icmp eq i64 %i.f, %.sroa.0.1.i.i.i11
  br i1 %i.dm, label %switch.lookup, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dn = load i8, ptr %i.s, align 1, !noundef !15
  %switch.tableidx = add i8 %i.dn, -9             ; 2 uses
  %i.do = icmp ult i8 %switch.tableidx, 54
  br i1 %i.do, label %switch.hole_check, label %bb.n

bb.n:                                             ; preds = %switch.hole_check, %bb.m
  %i.dp = icmp samesign ugt i64 %i.dl, 1
  br i1 %i.dp, label %bb.o, label %switch.lookup

bb.o:                                             ; preds = %bb.n
  %i.dq = load i16, ptr %i.s, align 1, !noundef !15
  %i.dr = icmp eq i16 %i.dq, 15919
  br label %switch.lookup
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners27scan_inline_html_processing(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef %2, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !15
  %.not = icmp ugt i64 %2, %i.b
  br i1 %.not, label %.preheader, label %bb.g

.preheader:                                       ; preds = %bb.a
  %i.c = icmp ugt i64 %2, %1
  br i1 %i.c, label %._crit_edge, label %.lr.ph, !prof !482

.lr.ph:                                           ; preds = %.preheader
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %2 ; 2 uses
  %i.f = load atomic ptr, ptr @_RNvNvNtNtNtCslLTI5cSnp8O_6memchr4arch6x86_646memchr10memchr_raw2FN monotonic, align 8, !noalias !751, !nonnull !15, !noundef !15
  %i.g = tail call { i64, ptr } %i.f(i8 noundef 63, ptr noundef nonnull readonly %i.e, ptr noundef nonnull readonly %i.d), !noalias !751, !inline_history !224 ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.g, 0
  %i.i = trunc nuw i64 %i.h to i1
  br i1 %i.i, label %.lr.ph34, label %._crit_edge35

._crit_edge:                                      ; preds = %.preheader
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %2, i64 noundef %1, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @116) #15
  unreachable

.lr.ph34:                                         ; preds = %.lr.ph, %bb.d
  %i.j = phi { i64, ptr } [ %i.t, %bb.d ], [ %i.g, %.lr.ph ]
  %i.k = phi ptr [ %i.r, %bb.d ], [ %i.e, %.lr.ph ]
  %.sroa.0.01933 = phi i64 [ %i.o, %bb.d ], [ %2, %.lr.ph ]
  %i.l = extractvalue { i64, ptr } %i.j, 1
  %i.m = tail call noundef i64 @_RNvXNtCslLTI5cSnp8O_6memchr3extPhNtB2_7Pointer8distanceCsbNU0JlWw3cF_14pulldown_cmark(ptr noundef %i.l, ptr noundef nonnull readonly %i.k)
  %i.n = add nuw i64 %.sroa.0.01933, 1
  %i.o = add i64 %i.n, %i.m                       ; 8 uses
  %i.p = icmp ugt i64 %i.o, %1
  br i1 %i.p, label %bb.c, label %bb.b, !prof !19

._crit_edge35:                                    ; preds = %bb.d, %.lr.ph
  %.sroa.0.019.lcssa = phi i64 [ %2, %.lr.ph ], [ %i.o, %bb.d ]
  store i64 %.sroa.0.019.lcssa, ptr %i.a, align 8
  br label %bb.g

bb.b:                                             ; preds = %.lr.ph34
  %i.q = icmp eq i64 %1, %i.o
  br i1 %i.q, label %bb.d, label %bb.e

bb.c:                                             ; preds = %.lr.ph34
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %i.o, i64 noundef %1, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @115) #15
  unreachable

bb.d:                                             ; preds = %bb.e, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %i.o ; 2 uses
  %i.s = load atomic ptr, ptr @_RNvNvNtNtNtCslLTI5cSnp8O_6memchr4arch6x86_646memchr10memchr_raw2FN monotonic, align 8, !noalias !751, !nonnull !15, !noundef !15
  %i.t = tail call { i64, ptr } %i.s(i8 noundef 63, ptr noundef nonnull readonly %i.r, ptr noundef nonnull readonly %i.d), !noalias !751, !inline_history !224 ; 2 uses
  %i.u = extractvalue { i64, ptr } %i.t, 0
  %i.v = trunc nuw i64 %i.u to i1
  br i1 %i.v, label %.lr.ph34, label %._crit_edge35

bb.e:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %i.o
  %i.x = load i8, ptr %i.w, align 1, !noundef !15
  %i.y = icmp eq i8 %i.x, 62
  br i1 %i.y, label %bb.f, label %bb.d

bb.f:                                             ; preds = %bb.e
  %i.z = add nuw i64 %i.o, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f, %._crit_edge35
  %.sroa.4.0 = phi i64 [ undef, %._crit_edge35 ], [ %i.z, %bb.f ], [ undef, %bb.a ]
  %.sroa.06.0 = phi i64 [ 0, %._crit_edge35 ], [ 1, %bb.f ], [ 0, %bb.a ]
  %i.aa = insertvalue { i64, i64 } poison, i64 %.sroa.06.0, 0
  %i.ab = insertvalue { i64, i64 } %i.aa, i64 %.sroa.4.0, 1
  ret { i64, i64 } %i.ab
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners36scan_whitespace_with_newline_handler(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 1, -9223372036854775808) %1, i64 noundef %2, ptr noundef %3, ptr nofree readonly captures(none) %4, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %5, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(8) %6) unnamed_addr #1 {
.split:
  %invariant.op = add nsw i64 %1, -1
  %i.a = icmp ult i64 %2, %1
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.split
  %.not = icmp eq ptr %3, null
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %.promoted = load i64, ptr %6, align 8
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.a
  %.sroa.0.034.us = phi i64 [ %i.g, %bb.a ], [ %2, %.lr.ph ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.034.us
  %i.f = load i8, ptr %i.e, align 1, !noundef !15
  switch i8 %i.f, label %._crit_edge [
    i8 10, label %._crit_edge.loopexit
    i8 13, label %._crit_edge.loopexit
    i8 9, label %bb.a
    i8 11, label %bb.a
    i8 12, label %bb.a
    i8 32, label %bb.a
  ]

bb.a:                                             ; preds = %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us
  %i.g = add i64 %.sroa.0.034.us, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.g, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split.us

._crit_edge.loopexit:                             ; preds = %.lr.ph.split.us, %.lr.ph.split.us
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.split, %._crit_edge62, %bb.a, %.lr.ph.split.us, %._crit_edge.loopexit, %.split
  %.sroa.0.0.lcssa = phi i64 [ %2, %.split ], [ %.sroa.0.034.us, %._crit_edge.loopexit ], [ %.sroa.0.034.us, %.lr.ph.split.us ], [ %1, %bb.a ], [ %.sroa.0.034, %.lr.ph.split ], [ %.sroa.0.1, %._crit_edge62 ]
  %.sroa.015.0 = phi i64 [ 1, %.split ], [ 0, %._crit_edge.loopexit ], [ 1, %.lr.ph.split.us ], [ 1, %bb.a ], [ 1, %._crit_edge62 ], [ 1, %.lr.ph.split ]
  %i.h = insertvalue { i64, i64 } poison, i64 %.sroa.015.0, 0
  %i.i = insertvalue { i64, i64 } %i.h, i64 %.sroa.0.0.lcssa, 1
  ret { i64, i64 } %i.i

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %._crit_edge62
  %.sroa.0.034 = phi i64 [ %.sroa.0.1, %._crit_edge62 ], [ %2, %.lr.ph.split.preheader ] ; 5 uses
  %i.j = phi i64 [ %i.af, %._crit_edge62 ], [ %.promoted, %.lr.ph.split.preheader ] ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.034 ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !noundef !15
  switch i8 %i.l, label %._crit_edge [
    i8 10, label %bb.d
    i8 13, label %bb.b
    i8 9, label %bb.e
    i8 11, label %bb.e
    i8 12, label %bb.e
    i8 32, label %bb.e
  ]

bb.b:                                             ; preds = %.lr.ph.split
  %.not.i = icmp eq i64 %.sroa.0.034, %invariant.op
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.n = load i8, ptr %i.m, align 1, !alias.scope !754, !noundef !15
  %i.o = icmp eq i8 %i.n, 10
  %spec.select.i = select i1 %i.o, i64 2, i64 1
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph.split, %bb.b, %bb.c
  %.sroa.5.0.i.ph = phi i64 [ %spec.select.i, %bb.c ], [ 1, %bb.b ], [ 1, %.lr.ph.split ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %4) ]
  %i.p = add nuw i64 %.sroa.5.0.i.ph, %.sroa.0.034 ; 10 uses
  %i.q = icmp ugt i64 %i.p, %1
  br i1 %i.q, label %bb.g, label %bb.f, !prof !19

bb.e:                                             ; preds = %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split
  %i.r = add nuw nsw i64 %.sroa.0.034, 1
  br label %._crit_edge62

bb.f:                                             ; preds = %bb.d
  %i.s = sub nuw nsw i64 %1, %i.p
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %i.p
  %i.u = load ptr, ptr %i.b, align 8, !invariant.load !15, !nonnull !15
  %i.v = tail call noundef i64 %i.u(ptr noundef nonnull %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.t, i64 noundef %i.s) #19 ; 2 uses
  %.not23 = icmp eq i64 %i.v, 0
  br i1 %.not23, label %._crit_edge62, label %bb.h

bb.g:                                             ; preds = %bb.d
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %i.p, i64 noundef %1, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @118) #15
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.w = icmp ult i64 %i.p, %i.j
  br i1 %i.w, label %bb.i, label %bb.j, !prof !141

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %i.j, i64 noundef %i.p, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @117) #15
  unreachable

bb.j:                                             ; preds = %bb.h
  %gepdiff = sub nuw nsw i64 %i.p, %i.j           ; 3 uses
  tail call void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsbNU0JlWw3cF_14pulldown_cmark(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %gepdiff)
  %i.x = load i64, ptr %i.c, align 8, !alias.scope !757, !noundef !15 ; 3 uses
  %i.y = icmp sgt i64 %i.x, -1
  tail call void @llvm.assume(i1 %i.y)
  %.not.i25 = icmp eq i64 %i.p, %i.j
  br i1 %.not.i25, label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCsbNU0JlWw3cF_14pulldown_cmark.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %i.j
  %i.aa = load ptr, ptr %i.d, align 8, !alias.scope !757, !nonnull !15, !noundef !15
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.x
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ab, ptr nonnull readonly align 1 %i.z, i64 %gepdiff, i1 false)
  %.pre.i = load i64, ptr %i.c, align 8, !alias.scope !757
  br label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCsbNU0JlWw3cF_14pulldown_cmark.exit

_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCsbNU0JlWw3cF_14pulldown_cmark.exit: ; preds = %bb.j, %bb.k
  %i.ac = phi i64 [ %.pre.i, %bb.k ], [ %i.x, %bb.j ]
  %i.ad = add i64 %i.ac, %gepdiff
  store i64 %i.ad, ptr %i.c, align 8, !alias.scope !757
  %i.ae = add i64 %i.v, %i.p                      ; 3 uses
  store i64 %i.ae, ptr %6, align 8
  br label %._crit_edge62

._crit_edge62:                                    ; preds = %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCsbNU0JlWw3cF_14pulldown_cmark.exit, %bb.f, %bb.e
  %i.af = phi i64 [ %i.j, %bb.e ], [ %i.ae, %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCsbNU0JlWw3cF_14pulldown_cmark.exit ], [ %i.j, %bb.f ]
  %.sroa.0.1 = phi i64 [ %i.r, %bb.e ], [ %i.ae, %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCsbNU0JlWw3cF_14pulldown_cmark.exit ], [ %i.p, %bb.f ] ; 3 uses
  %i.ag = icmp ult i64 %.sroa.0.1, %1
  br i1 %i.ag, label %.lr.ph.split, label %._crit_edge
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners8unescape(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
.split:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 0, ptr %i.d, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 6 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 16 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.split
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br label %bb.j

._crit_edge:                                      ; preds = %bb.w
  %i.h = icmp eq i64 %.sroa.016.1, 0
  br i1 %i.h, label %._crit_edge.thread, label %bb.c

._crit_edge.thread:                               ; preds = %.split, %._crit_edge
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %i.j, align 8
  store i8 1, ptr %0, align 8
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsbNU0JlWw3cF_14pulldown_cmark(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsbNU0JlWw3cF_14pulldown_cmark.exit unwind label %bb.a

bb.a:                                             ; preds = %._crit_edge.thread
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsbNU0JlWw3cF_14pulldown_cmark(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #14
  unreachable

common.resume:                                    ; preds = %.thread, %bb.a
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.a ], [ %.pn83, %.thread ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsbNU0JlWw3cF_14pulldown_cmark.exit: ; preds = %._crit_edge.thread
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsbNU0JlWw3cF_14pulldown_cmark(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %.not.i = icmp ult i64 %.sroa.016.1, %2
  br i1 %.not.i, label %bb.e, label %.split133

.split133:                                        ; preds = %bb.c
  %i.m = icmp eq i64 %.sroa.016.1, %2
  br i1 %i.m, label %bb.f, label %.invoke, !prof !455

bb.d:                                             ; preds = %bb.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsbNU0JlWw3cF_14pulldown_cmark.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

.thread84.loopexit:                               ; preds = %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit58, %bb.l, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit55
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.thread84.loopexit.split-lp:                      ; preds = %.invoke, %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.016.1
  %i.o = load i8, ptr %i.n, align 1, !alias.scope !760, !noundef !15
  %i.p = icmp sgt i8 %i.o, -65
  %i.q = sub nuw i64 %2, %.sroa.016.1
  br i1 %i.p, label %bb.f, label %.invoke, !prof !455

bb.f:                                             ; preds = %.split133, %bb.e
  %.sroa.3.0.i135 = phi i64 [ 0, %.split133 ], [ %i.q, %bb.e ] ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.016.1
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsbNU0JlWw3cF_14pulldown_cmark(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %.sroa.3.0.i135)
          to label %.noexc unwind label %.thread84.loopexit.split-lp

.noexc:                                           ; preds = %bb.f
  %i.s = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !763, !noundef !15 ; 3 uses
  %i.t = icmp sgt i64 %i.s, -1
  call void @llvm.assume(i1 %i.t)
  %.not.i60 = icmp eq i64 %.sroa.3.0.i135, 0
  br i1 %.not.i60, label %bb.i, label %bb.g

bb.g:                                             ; preds = %.noexc
  %i.u = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !763, !nonnull !15, !noundef !15
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.v, ptr nonnull readonly align 1 %i.r, i64 %.sroa.3.0.i135, i1 false)
  %.pre.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !763
  br label %bb.i

bb.h:                                             ; preds = %bb.af
  unreachable

bb.i:                                             ; preds = %bb.g, %.noexc
  %i.w = phi i64 [ %.pre.i, %bb.g ], [ %i.s, %.noexc ]
  %i.x = add i64 %i.w, %.sroa.3.0.i135
  store i64 %i.x, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !763
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @_RNvXsa_NtCsbNU0JlWw3cF_14pulldown_cmark7stringsNtB5_6CowStrINtNtCshzWfHUSfYae_4core7convert4FromNtNtCsbSS6DM8SDEO_5alloc6string6StringE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.j:                                             ; preds = %.lr.ph, %bb.w
  %.sroa.0.0117 = phi i64 [ 0, %.lr.ph ], [ %.sroa.0.1, %bb.w ] ; 22 uses
  %.sroa.016.0116 = phi i64 [ 0, %.lr.ph ], [ %.sroa.016.1, %bb.w ] ; 28 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.0117 ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !noundef !15
  switch i8 %i.z, label %._crit_edge128 [
    i8 92, label %bb.k
    i8 38, label %bb.l
    i8 13, label %bb.m
  ]

._crit_edge128:                                   ; preds = %bb.j
  %.pre = add nuw i64 %.sroa.0.0117, 1
  br label %bb.w

bb.k:                                             ; preds = %bb.j
  %i.aa = add nuw i64 %.sroa.0.0117, 1            ; 6 uses
  %i.ab = icmp ult i64 %i.aa, %2
  br i1 %i.ab, label %bb.p, label %bb.w

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ac = sub nuw i64 %2, %.sroa.0.0117
  invoke void @_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners11scan_entity(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.y, i64 noundef %i.ac)
          to label %bb.x unwind label %.thread84.loopexit

bb.m:                                             ; preds = %bb.j
  %i.ad = icmp ugt i64 %.sroa.016.0116, %.sroa.0.0117
  br i1 %i.ad, label %.invoke, label %bb.n, !prof !148

bb.n:                                             ; preds = %bb.m
  %i.ae = icmp eq i64 %.sroa.016.0116, 0
  br i1 %i.ae, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit58, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.016.0116
  %i.ag = load i8, ptr %i.af, align 1, !alias.scope !766, !noundef !15
  %i.ah = icmp sgt i8 %i.ag, -65
  br i1 %i.ah, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit58, label %.invoke, !prof !177

bb.p:                                             ; preds = %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %i.aa
  %i.aj = load i8, ptr %i.ai, align 1, !noundef !15 ; 3 uses
  %i.ak = icmp sgt i8 %i.aj, -1
  br i1 %i.ak, label %bb.q, label %bb.w

bb.q:                                             ; preds = %bb.p
  %i.al = lshr i8 %i.aj, 4
  %i.am = zext nneg i8 %i.al to i64
  %i.an = getelementptr inbounds nuw [2 x i8], ptr @76, i64 %i.am
  %i.ao = load i16, ptr %i.an, align 2, !noundef !15
  %i.ap = and i8 %i.aj, 15
  %i.aq = zext nneg i8 %i.ap to i16
  %i.ar = shl nuw i16 1, %i.aq
  %i.as = and i16 %i.ao, %i.ar
  %.not50 = icmp eq i16 %i.as, 0
  br i1 %.not50, label %bb.w, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.at = icmp ugt i64 %.sroa.016.0116, %.sroa.0.0117
  br i1 %i.at, label %.invoke, label %bb.s, !prof !148

bb.s:                                             ; preds = %bb.r
  %i.au = icmp eq i64 %.sroa.016.0116, 0
  br i1 %i.au, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit55, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.016.0116
  %i.aw = load i8, ptr %i.av, align 1, !alias.scope !769, !noundef !15
  %i.ax = icmp sgt i8 %i.aw, -65
  br i1 %i.ax, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit55, label %.invoke, !prof !177

_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit55: ; preds = %bb.t, %bb.s
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.016.0116
  %gepdiff51 = sub nuw nsw i64 %.sroa.0.0117, %.sroa.016.0116 ; 3 uses
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsbNU0JlWw3cF_14pulldown_cmark(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %gepdiff51)
          to label %.noexc63 unwind label %.thread84.loopexit

.noexc63:                                         ; preds = %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit55
  %i.az = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !772, !noundef !15 ; 3 uses
  %i.ba = icmp sgt i64 %i.az, -1
  call void @llvm.assume(i1 %i.ba)
  %.not.i61 = icmp eq i64 %.sroa.0.0117, %.sroa.016.0116
  br i1 %.not.i61, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.noexc63
  %i.bb = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !772, !nonnull !15, !noundef !15
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.az
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bc, ptr nonnull readonly align 1 %i.ay, i64 %gepdiff51, i1 false)
  %.pre.i62 = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !772
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.noexc63
  %i.bd = phi i64 [ %.pre.i62, %bb.u ], [ %i.az, %.noexc63 ]
  %i.be = add i64 %i.bd, %gepdiff51
  store i64 %i.be, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !772
  %i.bf = add nuw i64 %.sroa.0.0117, 2
  br label %bb.w

bb.w:                                             ; preds = %bb.k, %bb.p, %bb.q, %._crit_edge128, %bb.aq, %bb.an, %bb.v
  %.sroa.016.1 = phi i64 [ %i.cx, %bb.aq ], [ %i.aa, %bb.v ], [ %.sroa.016.2, %bb.an ], [ %.sroa.016.0116, %._crit_edge128 ], [ %.sroa.016.0116, %bb.q ], [ %.sroa.016.0116, %bb.p ], [ %.sroa.016.0116, %bb.k ] ; 9 uses
  %.sroa.0.1 = phi i64 [ %i.cx, %bb.aq ], [ %i.bf, %bb.v ], [ %.sroa.0.2, %bb.an ], [ %.pre, %._crit_edge128 ], [ %i.aa, %bb.q ], [ %i.aa, %bb.p ], [ %i.aa, %bb.k ] ; 2 uses
  %i.bg = icmp ult i64 %.sroa.0.1, %2
  br i1 %i.bg, label %bb.j, label %._crit_edge

bb.x:                                             ; preds = %bb.l
  %i.bh = load i8, ptr %i.e, align 8, !range !775, !noundef !15
  %.not48 = icmp eq i8 %i.bh, -1
  br i1 %.not48, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bi = load i64, ptr %i.c, align 8, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.bj = icmp ugt i64 %.sroa.016.0116, %.sroa.0.0117
  br i1 %i.bj, label %bb.af, label %bb.z, !prof !148

bb.z:                                             ; preds = %bb.y
  %i.bk = icmp eq i64 %.sroa.016.0116, 0
  br i1 %i.bk, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.016.0116
  %i.bm = load i8, ptr %i.bl, align 1, !alias.scope !776, !noundef !15
  %i.bn = icmp sgt i8 %i.bm, -65
  br i1 %i.bn, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit, label %bb.af, !prof !177

bb.ab:                                            ; preds = %bb.x
  %i.bo = add nuw i64 %.sroa.0.0117, 1
  br label %bb.an

.loopexit:                                        ; preds = %bb.ah, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit, %bb.ai
  %lpad.loopexit101 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

.loopexit.split-lp:                               ; preds = %bb.af
  %lpad.loopexit.split-lp102 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ac:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi103 = phi { ptr, i32 } [ %lpad.loopexit101, %.loopexit ], [ %lpad.loopexit.split-lp102, %.loopexit.split-lp ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !779)
  %i.bp = load i8, ptr %i.b, align 8, !range !782, !alias.scope !779, !noundef !15
  %i.bq = icmp eq i8 %i.bp, 0
  br i1 %i.bq, label %bb.ad, label %.thread

bb.ad:                                            ; preds = %bb.ac
  %.val1.i = load i64, ptr %i.f, align 8, !alias.scope !779, !noundef !15 ; 2 uses
  %i.br = icmp eq i64 %.val1.i, 0
  br i1 %i.br, label %.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.val.i = load ptr, ptr %i.g, align 8, !alias.scope !779, !nonnull !15, !noundef !15
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %.val1.i, i64 noundef 1) #20, !noalias !779
  br label %.thread

bb.af:                                            ; preds = %bb.y, %bb.aa
  invoke void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %.sroa.016.0116, i64 noundef %.sroa.0.0117, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @123) #16
          to label %bb.h unwind label %.loopexit.split-lp

_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit: ; preds = %bb.aa, %bb.z
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.016.0116
  %gepdiff49 = sub nuw nsw i64 %.sroa.0.0117, %.sroa.016.0116 ; 3 uses
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsbNU0JlWw3cF_14pulldown_cmark(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %gepdiff49)
          to label %.noexc67 unwind label %.loopexit

.noexc67:                                         ; preds = %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit
  %i.bt = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !783, !noundef !15 ; 3 uses
  %i.bu = icmp sgt i64 %i.bt, -1
  call void @llvm.assume(i1 %i.bu)
  %.not.i65 = icmp eq i64 %.sroa.0.0117, %.sroa.016.0116
  br i1 %.not.i65, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.noexc67
  %i.bv = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !783, !nonnull !15, !noundef !15
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bt
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bw, ptr nonnull readonly align 1 %i.bs, i64 %gepdiff49, i1 false)
  %.pre.i66 = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !783
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.noexc67
  %i.bx = phi i64 [ %.pre.i66, %bb.ag ], [ %i.bt, %.noexc67 ]
  %i.by = add i64 %i.bx, %gepdiff49
  store i64 %i.by, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !783
  %i.bz = invoke { ptr, i64 } @_RNvXsf_NtCsbNU0JlWw3cF_14pulldown_cmark7stringsNtB5_6CowStrNtNtNtCshzWfHUSfYae_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b)
          to label %bb.ai unwind label %.loopexit ; 2 uses

bb.ai:                                            ; preds = %bb.ah
  %i.ca = extractvalue { ptr, i64 } %i.bz, 0      ; 2 uses
  %i.cb = extractvalue { ptr, i64 } %i.bz, 1      ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ca) ]
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsbNU0JlWw3cF_14pulldown_cmark(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.cb)
          to label %.noexc71 unwind label %.loopexit

.noexc71:                                         ; preds = %bb.ai
  %i.cc = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !786, !noundef !15 ; 3 uses
  %i.cd = icmp sgt i64 %i.cc, -1
  call void @llvm.assume(i1 %i.cd)
  %.not.i69 = icmp eq i64 %i.cb, 0
  br i1 %.not.i69, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %.noexc71
  %i.ce = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !786, !nonnull !15, !noundef !15
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cc
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cf, ptr nonnull readonly align 1 %i.ca, i64 %i.cb, i1 false)
  %.pre.i70 = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !786
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %.noexc71
  %i.cg = phi i64 [ %.pre.i70, %bb.aj ], [ %i.cc, %.noexc71 ]
  %i.ch = add i64 %i.cg, %i.cb
  store i64 %i.ch, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !786
  call void @llvm.experimental.noalias.scope.decl(metadata !789)
  %i.ci = load i8, ptr %i.b, align 8, !range !782, !alias.scope !789, !noundef !15
  %i.cj = icmp eq i8 %i.ci, 0
  br i1 %i.cj, label %bb.al, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbNU0JlWw3cF_14pulldown_cmark7strings6CowStrEBF_.exit75

bb.al:                                            ; preds = %bb.ak
  %.val1.i73 = load i64, ptr %i.f, align 8, !alias.scope !789, !noundef !15 ; 2 uses
  %i.ck = icmp eq i64 %.val1.i73, 0
  br i1 %i.ck, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbNU0JlWw3cF_14pulldown_cmark7strings6CowStrEBF_.exit75, label %bb.am

bb.am:                                            ; preds = %bb.al
  %.val.i74 = load ptr, ptr %i.g, align 8, !alias.scope !789, !nonnull !15, !noundef !15
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i74, i64 noundef range(i64 1, 0) %.val1.i73, i64 noundef 1) #20, !noalias !789
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbNU0JlWw3cF_14pulldown_cmark7strings6CowStrEBF_.exit75

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbNU0JlWw3cF_14pulldown_cmark7strings6CowStrEBF_.exit75: ; preds = %bb.am, %bb.al, %bb.ak
  %i.cl = add i64 %i.bi, %.sroa.0.0117            ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.an

bb.an:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbNU0JlWw3cF_14pulldown_cmark7strings6CowStrEBF_.exit75, %bb.ab
  %.sroa.016.2 = phi i64 [ %i.cl, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbNU0JlWw3cF_14pulldown_cmark7strings6CowStrEBF_.exit75 ], [ %.sroa.016.0116, %bb.ab ]
  %.sroa.0.2 = phi i64 [ %i.cl, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbNU0JlWw3cF_14pulldown_cmark7strings6CowStrEBF_.exit75 ], [ %i.bo, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.w

bb.ao:                                            ; preds = %.thread
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #14
  unreachable

.invoke:                                          ; preds = %bb.o, %bb.m, %bb.t, %bb.r, %bb.e, %.split133
  %i.cn = phi i64 [ %.sroa.016.1, %.split133 ], [ %.sroa.016.1, %bb.e ], [ %.sroa.016.0116, %bb.r ], [ %.sroa.016.0116, %bb.t ], [ %.sroa.016.0116, %bb.m ], [ %.sroa.016.0116, %bb.o ]
  %i.co = phi i64 [ %2, %.split133 ], [ %2, %bb.e ], [ %.sroa.0.0117, %bb.r ], [ %.sroa.0.0117, %bb.t ], [ %.sroa.0.0117, %bb.m ], [ %.sroa.0.0117, %bb.o ]
  %i.cp = phi ptr [ @121, %.split133 ], [ @121, %bb.e ], [ @124, %bb.o ], [ @124, %bb.m ], [ @122, %bb.t ], [ @122, %bb.r ]
  invoke void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %i.cn, i64 noundef %i.co, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cp) #16
          to label %.cont unwind label %.thread84.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit58: ; preds = %bb.o, %bb.n
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.016.0116
  %gepdiff = sub nuw nsw i64 %.sroa.0.0117, %.sroa.016.0116 ; 3 uses
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsbNU0JlWw3cF_14pulldown_cmark(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %gepdiff)
          to label %.noexc78 unwind label %.thread84.loopexit

.noexc78:                                         ; preds = %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit58
  %i.cr = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !792, !noundef !15 ; 3 uses
  %i.cs = icmp sgt i64 %i.cr, -1
  call void @llvm.assume(i1 %i.cs)
  %.not.i76 = icmp eq i64 %.sroa.0.0117, %.sroa.016.0116
  br i1 %.not.i76, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %.noexc78
  %i.ct = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !792, !nonnull !15, !noundef !15
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cr
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cu, ptr nonnull readonly align 1 %i.cq, i64 %gepdiff, i1 false)
  %.pre.i77 = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !792
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %.noexc78
  %i.cv = phi i64 [ %.pre.i77, %bb.ap ], [ %i.cr, %.noexc78 ]
  %i.cw = add i64 %i.cv, %gepdiff
  store i64 %i.cw, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !792
  %i.cx = add nuw i64 %.sroa.0.0117, 1            ; 2 uses
  br label %bb.w

.thread:                                          ; preds = %.thread84.loopexit, %.thread84.loopexit.split-lp, %bb.ac, %bb.ad, %bb.ae
  %.pn83 = phi { ptr, i32 } [ %lpad.phi103, %bb.ac ], [ %lpad.phi103, %bb.ae ], [ %lpad.phi103, %bb.ad ], [ %lpad.loopexit, %.thread84.loopexit ], [ %lpad.loopexit.split-lp, %.thread84.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsbNU0JlWw3cF_14pulldown_cmark(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #17
          to label %common.resume unwind label %bb.ao
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCsbNU0JlWw3cF_14pulldown_cmark9AlignmentENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBH_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsbNU0JlWw3cF_14pulldown_cmark(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCsbNU0JlWw3cF_14pulldown_cmark9AlignmentENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBO_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsbNU0JlWw3cF_14pulldown_cmark(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvXNtCslLTI5cSnp8O_6memchr3extPhNtB2_7Pointer8distanceCsbNU0JlWw3cF_14pulldown_cmark(ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters3revINtB5_3RevINtNtNtBb_5slice4iter4IterhEENtNtNtB9_6traits8iterator8Iterator8try_foldjNCINvNvXs0_NtB7_10take_whileINtB2i_9TakeWhileppEB1p_8try_fold5checkRhjINtNtNtBb_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_rev_whileNCNCNvMNtB45_9firstpassNtB55_9FirstPass10parse_line00E0NCINvMB3i_B3f_10wrap_mut_2jB3c_NCNvYIB2A_BM_B3Y_EB1p_5count0E0E0INtNtB3k_12control_flow11ControlFlowB3f_jEEB45_(ptr noalias nofree noundef align 8 dereferenceable(16), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef dereferenceable(1)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters3revINtB5_3RevINtNtNtBb_5slice4iter4IterhEENtNtNtB9_6traits8iterator8Iterator8try_foldjNCINvNvXs0_NtB7_10take_whileINtB2i_9TakeWhileppEB1p_8try_fold5checkRhjINtNtNtBb_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_rev_whileNCNvMNtB45_9firstpassNtB53_9FirstPass17parse_atx_headings2_0E0NCINvMB3i_B3f_10wrap_mut_2jB3c_NCNvYIB2A_BM_B3Y_EB1p_5count0E0E0INtNtB3k_12control_flow11ControlFlowB3f_jEEB45_(ptr noalias nofree noundef align 8 dereferenceable(16), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef dereferenceable(1)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters3revINtB5_3RevINtNtNtBb_5slice4iter4IterhEENtNtNtB9_6traits8iterator8Iterator8try_foldjNCINvNvXs0_NtB7_10take_whileINtB2i_9TakeWhileppEB1p_8try_fold5checkRhjINtNtNtBb_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_rev_whileNCNvNtB45_9firstpass48extract_attribute_block_content_from_header_text0E0NCINvMB3i_B3f_10wrap_mut_2jB3c_NCNvYIB2A_BM_B3Y_EB1p_5count0E0E0INtNtB3k_12control_flow11ControlFlowB3f_jEEB45_(ptr noalias nofree noundef align 8 dereferenceable(16), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef dereferenceable(1)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters3revINtB5_3RevINtNtNtBb_5slice4iter4IterhEENtNtNtB9_6traits8iterator8Iterator8try_foldjNCINvNvXs0_NtB7_10take_whileINtB2i_9TakeWhileppEB1p_8try_fold5checkRhjINtNtNtBb_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_rev_whileNCNvNtB45_9firstpass48extract_attribute_block_content_from_header_texts_0E0NCINvMB3i_B3f_10wrap_mut_2jB3c_NCNvYIB2A_BM_B3Y_EB1p_5count0E0E0INtNtB3k_12control_flow11ControlFlowB3f_jEEB45_(ptr noalias nofree noundef align 8 dereferenceable(16), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef dereferenceable(1)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters3revINtB5_3RevINtNtNtBb_5slice4iter4IterhEENtNtNtB9_6traits8iterator8Iterator8try_foldjNCINvNvXs0_NtB7_10take_whileINtB2i_9TakeWhileppEB1p_8try_fold5checkRhjINtNtNtBb_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_rev_whileNvB43_19is_ascii_whitespaceE0NCINvMB3i_B3f_10wrap_mut_2jB3c_NCNvYIB2A_BM_B3Y_EB1p_5count0E0E0INtNtB3k_12control_flow11ControlFlowB3f_jEEB45_(ptr noalias nofree noundef align 8 dereferenceable(16), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef dereferenceable(1)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters3revINtB5_3RevINtNtNtBb_5slice4iter4IterhEENtNtNtB9_6traits8iterator8Iterator8try_foldjNCINvNvXs0_NtB7_10take_whileINtB2i_9TakeWhileppEB1p_8try_fold5checkRhjINtNtNtBb_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners14scan_rev_whileNvB43_25is_ascii_whitespace_no_nlE0NCINvMB3i_B3f_10wrap_mut_2jB3c_NCNvYIB2A_BM_B3Y_EB1p_5count0E0E0INtNtB3k_12control_flow11ControlFlowB3f_jEEB45_(ptr noalias nofree noundef align 8 dereferenceable(16), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef dereferenceable(1)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCsbNU0JlWw3cF_14pulldown_cmark(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull, ptr noundef, ptr noundef nonnull, ptr noundef) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #7

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #8

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCsbNU0JlWw3cF_14pulldown_cmark9AlignmentE8grow_oneBO_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsbNU0JlWw3cF_14pulldown_cmark(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsb_NtCsbNU0JlWw3cF_14pulldown_cmark7stringsNtB5_6CowStrINtNtCshzWfHUSfYae_4core7convert4FromcE4from(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i32 noundef range(i32 0, 1114112)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvNtCsbNU0JlWw3cF_14pulldown_cmark8entities10get_entity(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsbNU0JlWw3cF_14pulldown_cmark(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsa_NtCsbNU0JlWw3cF_14pulldown_cmark7stringsNtB5_6CowStrINtNtCshzWfHUSfYae_4core7convert4FromNtNtCsbSS6DM8SDEO_5alloc6string6StringE4from(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvXsf_NtCsbNU0JlWw3cF_14pulldown_cmark7stringsNtB5_6CowStrNtNtNtCshzWfHUSfYae_4core3ops5deref5Deref5deref(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #7

attributes #0 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { cold noreturn nounwind }
attributes #15 = { noinline noreturn }
attributes #16 = { noreturn }
attributes #17 = { cold }
attributes #18 = { noinline }
attributes #19 = { inlinehint }
attributes #20 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.99.0-nightly (73dc9167f 2026-08-01)"}
!4 = !{!5}
!5 = distinct !{!5, !6, !"_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_19is_ascii_whitespaceE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_: argument 0"}
!6 = distinct !{!6, !"_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB2W_19is_ascii_whitespaceE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_"}
!7 = !{!8, !10, !11, !13}
!8 = distinct !{!8, !9, !"_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldjNCINvNvXs0_NtNtBR_8adapters10take_whileINtB1L_9TakeWhileppEBL_8try_fold5checkRhjINtNtNtBa_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB3G_19is_ascii_whitespaceE0NCINvMB2V_B2S_10wrap_mut_2jB2P_NCNvYIB2e_B3_B3B_EBL_5count0E0E0INtNtB2X_12control_flow11ControlFlowB2S_jEEB3I_: argument 0"}
!9 = distinct !{!9, !"_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldjNCINvNvXs0_NtNtBR_8adapters10take_whileINtB1L_9TakeWhileppEBL_8try_fold5checkRhjINtNtNtBa_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB3G_19is_ascii_whitespaceE0NCINvMB2V_B2S_10wrap_mut_2jB2P_NCNvYIB2e_B3_B3B_EBL_5count0E0E0INtNtB2X_12control_flow11ControlFlowB2S_jEEB3I_"}
!10 = distinct !{!10, !9, !"_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldjNCINvNvXs0_NtNtBR_8adapters10take_whileINtB1L_9TakeWhileppEBL_8try_fold5checkRhjINtNtNtBa_3ops9try_trait17NeverShortCircuitjENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB3G_19is_ascii_whitespaceE0NCINvMB2V_B2S_10wrap_mut_2jB2P_NCNvYIB2e_B3_B3B_EBL_5count0E0E0INtNtB2X_12control_flow11ControlFlowB2S_jEEB3I_: argument 1"}
!11 = distinct !{!11, !12, !"_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterhENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB1I_19is_ascii_whitespaceE0ENtNtNtBa_6traits8iterator8Iterator8try_foldjNCINvMNtNtBc_3ops9try_traitINtB3R_17NeverShortCircuitjE10wrap_mut_2jRhNCNvYBV_B33_5count0E0B4c_EB1K_: argument 0"}
!12 = distinct !{!12, !"_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterhENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB1I_19is_ascii_whitespaceE0ENtNtNtBa_6traits8iterator8Iterator8try_foldjNCINvMNtNtBc_3ops9try_traitINtB3R_17NeverShortCircuitjE10wrap_mut_2jRhNCNvYBV_B33_5count0E0B4c_EB1K_"}
!13 = distinct !{!13, !14, !"_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterhENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB1I_19is_ascii_whitespaceE0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B33_5count0EB1K_: argument 0"}
!14 = distinct !{!14, !"_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterhENCINvNtCsbNU0JlWw3cF_14pulldown_cmark8scanners10scan_whileNvB1I_19is_ascii_whitespaceE0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B33_5count0EB1K_"}
!15 = !{}
!16 = !{!17}
!17 = distinct !{!17, !18, !"_RNvMNtCsbNU0JlWw3cF_14pulldown_cmark8scannersNtB2_9LineStart16scan_space_inner: argument 0"}
!18 = distinct !{!18, !"_RNvMNtCsbNU0JlWw3cF_14pulldown_cmark8scannersNtB2_9LineStart16scan_space_inner"}
!19 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!20 = !{!21}
!21 = distinct !{!21, !22, !"_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvMNtCsbNU0JlWw3cF_14pulldown_cmark8scannersNtB2W_9LineStart14scan_all_space0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_: argument 0"}
!22 = distinct !{!22, !"_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvMNtCsbNU0JlWw3cF_14pulldown_cmark8scannersNtB2W_9LineStart14scan_all_space0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Y_"}
!23 = !{!24, !26, !27, !29}
!24 = distinct !{!24, !25, !"_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldjNCINvNvXs0_NtNtBR_8adapters10take_whileINtB1L_9TakeWhileppEBL_8try_fold5checkRhjINtNtNtBa_3ops9try_trait17NeverShortCircuitjENCNvMNtCsbNU0JlWw3cF_14pulldown_cmark8scannersNtB3G_9LineStart14scan_all_space0NCINvMB2V_B2S_10wrap_mut_2jB2P_NCNvYIB2e_B3_B3B_EBL_5count0E0E0INtNtB2X_12control_flow11ControlFlowB2S_jEEB3I_: argument 0"}
!25 = distinct !{!25, !"_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldjNCINvNvXs0_NtNtBR_8adapters10take_whileINtB1L_9TakeWhileppEBL_8try_fold5checkRhjINtNtNtBa_3ops9try_trait17NeverShortCircuitjENCNvMNtCsbNU0JlWw3cF_14pulldown_cmark8scannersNtB3G_9LineStart14scan_all_space0NCINvMB2V_B2S_10wrap_mut_2jB2P_NCNvYIB2e_B3_B3B_EBL_5count0E0E0INtNtB2X_12control_flow11ControlFlowB2S_jEEB3I_"}
!26 = distinct !{!26, !25, !"_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldjNCINvNvXs0_NtNtBR_8adapters10take_whileINtB1L_9TakeWhileppEBL_8try_fold5checkRhjINtNtNtBa_3ops9try_trait17NeverShortCircuitjENCNvMNtCsbNU0JlWw3cF_14pulldown_cmark8scannersNtB3G_9LineStart14scan_all_space0NCINvMB2V_B2S_10wrap_mut_2jB2P_NCNvYIB2e_B3_B3B_EBL_5count0E0E0INtNtB2X_12control_flow11ControlFlowB2S_jEEB3I_: argument 1"}
!27 = distinct !{!27, !28, !"_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterhENCNvMNtCsbNU0JlWw3cF_14pulldown_cmark8scannersNtB1I_9LineStart14scan_all_space0ENtNtNtBa_6traits8iterator8Iterator8try_foldjNCINvMNtNtBc_3ops9try_traitINtB3J_17NeverShortCircuitjE10wrap_mut_2jRhNCNvYBV_B2V_5count0E0B44_EB1K_: argument 0"}
!28 = distinct !{!28, !"_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterhENCNvMNtCsbNU0JlWw3cF_14pulldown_cmark8scannersNtB1I_9LineStart14scan_all_space0ENtNtNtBa_6traits8iterator8Iterator8try_foldjNCINvMNtNtBc_3ops9try_traitINtB3J_17NeverShortCircuitjE10wrap_mut_2jRhNCNvYBV_B2V_5count0E0B44_EB1K_"}
!29 = distinct !{!29, !30, !"_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterhENCNvMNtCsbNU0JlWw3cF_14pulldown_cmark8scannersNtB1I_9LineStart14scan_all_space0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2V_5count0EB1K_: argument 0"}
!30 = distinct !{!30, !"_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterhENCNvMNtCsbNU0JlWw3cF_14pulldown_cmark8scannersNtB1I_9LineStart14scan_all_space0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2V_5count0EB1K_"}
end_hunk_5
