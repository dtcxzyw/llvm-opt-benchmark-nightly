Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/regex_automata-4bc27bd9b01c2450.regex_automata.948ed56e9a6654bb-cgu.13?download=true
inline.NumInlined: 160
inline.NumDeleted: 34
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
@92 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @85, [16 x i8] c"r\00\00\00\00\00\00\00(\01\00\00\05\00\00\00" }>, align 8, !guid !3
@93 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @85, [16 x i8] c"r\00\00\00\00\00\00\004\01\00\00.\00\00\00" }>, align 8, !guid !3
@94 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @85, [16 x i8] c"r\00\00\00\00\00\00\00\BC\00\00\003\00\00\00" }>, align 8, !guid !3
@95 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @85, [16 x i8] c"r\00\00\00\00\00\00\00\BD\00\00\00+\00\00\00" }>, align 8, !guid !3
@96 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @85, [16 x i8] c"r\00\00\00\00\00\00\00\CB\00\00\00+\00\00\00" }>, align 8, !guid !3
@97 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @85, [16 x i8] c"r\00\00\00\00\00\00\00\CF\00\00\00#\00\00\00" }>, align 8, !guid !3
@98 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @85, [16 x i8] c"r\00\00\00\00\00\00\00\C3\00\00\00'\00\00\00" }>, align 8, !guid !3
@99 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @85, [16 x i8] c"r\00\00\00\00\00\00\00h\00\00\00*\00\00\00" }>, align 8, !guid !3
@100 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @85, [16 x i8] c"r\00\00\00\00\00\00\00i\00\00\00+\00\00\00" }>, align 8, !guid !3
@101 = private unnamed_addr constant [1 x i8] c"$", align 1, !guid !3
@102 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @85, [16 x i8] c"r\00\00\00\00\00\00\00w\00\00\00+\00\00\00" }>, align 8, !guid !3
@103 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @85, [16 x i8] c"r\00\00\00\00\00\00\00{\00\00\00#\00\00\00" }>, align 8, !guid !3
@104 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @85, [16 x i8] c"r\00\00\00\00\00\00\00o\00\00\00'\00\00\00" }>, align 8, !guid !3
@105 = private unnamed_addr constant [108 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/regex-automata-0.4.10/src/util/look.rs\00", align 1, !guid !3
@106 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @105, [16 x i8] c"k\00\00\00\00\00\00\00\A1\02\00\00E\00\00\00" }>, align 8, !guid !3
@107 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @105, [16 x i8] c"k\00\00\00\00\00\00\00\A3\02\00\00;\00\00\00" }>, align 8, !guid !3
@108 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @105, [16 x i8] c"k\00\00\00\00\00\00\00\A8\02\00\00:\00\00\00" }>, align 8, !guid !3
@109 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @105, [16 x i8] c"k\00\00\00\00\00\00\00\AB\02\00\008\00\00\00" }>, align 8, !guid !3
@110 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @105, [16 x i8] c"k\00\00\00\00\00\00\00\B4\02\00\00?\00\00\00" }>, align 8, !guid !3
@111 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @105, [16 x i8] c"k\00\00\00\00\00\00\00\B7\02\00\00=\00\00\00" }>, align 8, !guid !3
@112 = private unnamed_addr constant [108 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/regex-automata-0.4.10/src/util/utf8.rs\00", align 1, !guid !3
@113 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @112, [16 x i8] c"k\00\00\00\00\00\00\00<\00\00\00\19\00\00\00" }>, align 8, !guid !3
@114 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @112, [16 x i8] c"k\00\00\00\00\00\00\00C\00\00\00+\00\00\00" }>, align 8, !guid !3
@115 = private unnamed_addr constant [109 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/regex-automata-0.4.10/src/util/start.rs\00", align 1, !guid !3
@116 = private unnamed_addr constant ptr @_ZN4core3ops8function6FnOnce9call_once17hec833071285ce845E, align 8, !guid !3
@117 = private unnamed_addr constant [16 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16, !guid !3
@118 = private unnamed_addr constant <{ ptr, [24 x i8] }> <{ ptr @117, [24 x i8] zeroinitializer }>, align 8, !guid !3
@119 = private unnamed_addr constant [221 x i8] c"unsafe precondition(s) violated: hint::assert_unchecked must never be called when the condition is false\0A\0AThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety.", align 1, !guid !3
@120 = private unnamed_addr constant [199 x i8] c"unsafe precondition(s) violated: hint::unreachable_unchecked must never be reached\0A\0AThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety.", align 1, !guid !3
@121 = private unnamed_addr constant [92 x i8] c"/rustc/ded5c06cf21d2b93bffd5d884aa6e96934ee4234/library/core/src/slice/sort/stable/drift.rs\00", align 1, !guid !3
@122 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @121, [16 x i8] c"[\00\00\00\00\00\00\00\FF\00\00\00\19\00\00\00" }>, align 8, !guid !3
@123 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN83_$LT$regex_automata..util..primitives..StateIDError$u20$as$u20$core..fmt..Debug$GT$3fmt17h99d85adc9028f7f5E" }>, align 8, !guid !3
@124 = private unnamed_addr constant [43 x i8] c"called `Result::unwrap()` on an `Err` value", align 1, !guid !3
@125 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @"_ZN4core3ptr69drop_in_place$LT$regex_automata..nfa..thompson..error..BuildError$GT$17h548b2e3b5ba23ce7E", [16 x i8] c"\80\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN85_$LT$regex_automata..nfa..thompson..error..BuildError$u20$as$u20$core..fmt..Debug$GT$3fmt17h2430d70f67cdb55eE" }>, align 8, !guid !3
@126 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @"_ZN4core3ptr61drop_in_place$LT$regex_automata..util..search..MatchError$GT$17h2fa88201b3053adeE", [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN77_$LT$regex_automata..util..search..MatchError$u20$as$u20$core..fmt..Debug$GT$3fmt17hd2ca5f0bb975c75fE" }>, align 8, !guid !3
@127 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN64_$LT$core..str..error..Utf8Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h18b2a63fd189a08cE" }>, align 8, !guid !3
@128 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN89_$LT$regex_automata..util..look..UnicodeWordBoundaryError$u20$as$u20$core..fmt..Debug$GT$3fmt17hfce1d1569f3ed630E" }>, align 8, !guid !3
@129 = private unnamed_addr constant [11 x i8] c"LayoutError", align 1, !guid !3
@130 = private unnamed_addr constant [11 x i8] c"NonWordByte", align 1, !guid !3
@131 = private unnamed_addr constant [8 x i8] c"WordByte", align 1, !guid !3
@132 = private unnamed_addr constant [4 x i8] c"Text", align 1, !guid !3
@133 = private unnamed_addr constant [6 x i8] c"LineLF", align 1, !guid !3
@134 = private unnamed_addr constant [6 x i8] c"LineCR", align 1, !guid !3
@135 = private unnamed_addr constant [20 x i8] c"CustomLineTerminator", align 1, !guid !3
@136 = private unnamed_addr constant [8 x i8] c"Standard", align 1, !guid !3
@137 = private unnamed_addr constant [13 x i8] c"LeftmostFirst", align 1, !guid !3
@138 = private unnamed_addr constant [15 x i8] c"LeftmostLongest", align 1, !guid !3
@139 = private unnamed_addr constant [3 x i8] c"' '", align 1, !guid !3
@140 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @139, [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8, !guid !3
@141 = private unnamed_addr constant [110 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/regex-automata-0.4.10/src/util/escape.rs\00", align 1, !guid !3
@142 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @141, [16 x i8] c"m\00\00\00\00\00\00\00(\00\00\004\00\00\00" }>, align 8, !guid !3
@143 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @141, [16 x i8] c"m\00\00\00\00\00\00\00(\00\00\00=\00\00\00" }>, align 8, !guid !3
@144 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr inttoptr (i64 1 to ptr), [8 x i8] zeroinitializer }>, align 8, !guid !3
@145 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @141, [16 x i8] c"m\00\00\00\00\00\00\00%\00\00\00\0D\00\00\00" }>, align 8, !guid !3
@146 = private unnamed_addr constant [15 x i8] c"thompson::NFA(\0A", align 1, !guid !3
@147 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @146, [8 x i8] c"\0F\00\00\00\00\00\00\00" }>, align 8, !guid !3
@148 = private unnamed_addr constant [1 x i8] c"\0A", align 1, !guid !3
@149 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @148, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8, !guid !3
@150 = private unnamed_addr constant [32 x i8] c"transition equivalence classes: ", align 1, !guid !3
@151 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @150, [8 x i8] c" \00\00\00\00\00\00\00", ptr @148, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8, !guid !3
@152 = private unnamed_addr constant [2 x i8] c")\0A", align 1, !guid !3
@153 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @152, [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8, !guid !3
@154 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @16, [16 x i8] c"r\00\00\00\00\00\00\00\CE\05\00\00\09\00\00\00" }>, align 8, !guid !3
@155 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @16, [16 x i8] c"r\00\00\00\00\00\00\00\C9\05\00\00\09\00\00\00" }>, align 8, !guid !3
@156 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @16, [16 x i8] c"r\00\00\00\00\00\00\00\C8\05\00\00\09\00\00\00" }>, align 8, !guid !3
@157 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @16, [16 x i8] c"r\00\00\00\00\00\00\00\C4\05\00\00-\00\00\00" }>, align 8, !guid !3
@158 = private unnamed_addr constant [6 x i8] c"START(", align 1, !guid !3
@159 = private unnamed_addr constant [3 x i8] c"): ", align 1, !guid !3
@160 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @158, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @159, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @148, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8, !guid !3
@161 = private unnamed_addr constant <{ [2 x i8], [14 x i8], [4 x i8], [12 x i8], [12 x i8], [4 x i8], [2 x i8], [14 x i8], [2 x i8], [14 x i8], [12 x i8], [4 x i8] }> <{ [2 x i8] c"\02\00", [14 x i8] undef, [4 x i8] c"\00\00\06\00", [12 x i8] undef, [12 x i8] c"\00\00\00\00\00\00\00\00 \00\00\E9", [4 x i8] undef, [2 x i8] c"\02\00", [14 x i8] undef, [2 x i8] c"\02\00", [14 x i8] undef, [12 x i8] c"\01\00\00\00\00\00\00\00 \00\00\E0", [4 x i8] undef }>, align 8, !guid !3
@162 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @16, [16 x i8] c"r\00\00\00\00\00\00\00\C5\05\00\00\11\00\00\00" }>, align 8, !guid !3
@163 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @16, [16 x i8] c"r\00\00\00\00\00\00\00\C2\05\00\00\0D\00\00\00" }>, align 8, !guid !3
@164 = private unnamed_addr constant [2 x i8] c": ", align 1, !guid !3
@165 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr inttoptr (i64 1 to ptr), [8 x i8] zeroinitializer, ptr inttoptr (i64 1 to ptr), [8 x i8] zeroinitializer, ptr @164, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @148, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8, !guid !3
@166 = private unnamed_addr constant [144 x i8] c"\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00 \00\00\E0\00\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\06\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00 \00\00\E9\00\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00 \00\00\E0\00\00\00\00", align 8, !guid !3
@167 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @16, [16 x i8] c"r\00\00\00\00\00\00\00\BE\05\00\00\0D\00\00\00" }>, align 8, !guid !3
@168 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @16, [16 x i8] c"r\00\00\00\00\00\00\00\B5\05\00\00\09\00\00\00" }>, align 8, !guid !3
@169 = private unnamed_addr constant [2 x i8] c", ", align 1, !guid !3
@170 = private unnamed_addr constant [7 x i8] c"sparse(", align 1, !guid !3
@171 = private unnamed_addr constant [1 x i8] c")", align 1, !guid !3
@172 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @170, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @171, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8, !guid !3
@173 = private unnamed_addr constant [6 x i8] c"dense(", align 1, !guid !3
@174 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @173, [8 x i8] c"\06\00\00\00\00\00\00\00" }>, align 8, !guid !3
@175 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @171, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8, !guid !3
@176 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @169, [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8, !guid !3
@177 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @16, [16 x i8] c"r\00\00\00\00\00\00\00\D0\06\00\00\15\00\00\00" }>, align 8, !guid !3
@178 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @16, [16 x i8] c"r\00\00\00\00\00\00\00\CE\06\00\00\19\00\00\00" }>, align 8, !guid !3
@179 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @16, [16 x i8] c"r\00\00\00\00\00\00\00\CB\06\00\00\11\00\00\00" }>, align 8, !guid !3
@180 = private unnamed_addr constant [4 x i8] c" => ", align 1, !guid !3
@181 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr inttoptr (i64 1 to ptr), [8 x i8] zeroinitializer, ptr @180, [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8, !guid !3
@182 = private unnamed_addr constant [6 x i8] c"union(", align 1, !guid !3
@183 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @182, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @171, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8, !guid !3
@184 = private unnamed_addr constant [13 x i8] c"binary-union(", align 1, !guid !3
@185 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @184, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr @169, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @171, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8, !guid !3
@186 = private unnamed_addr constant [12 x i8] c"capture(pid=", align 1, !guid !3
@187 = private unnamed_addr constant [8 x i8] c", group=", align 1, !guid !3
@188 = private unnamed_addr constant [7 x i8] c", slot=", align 1, !guid !3
@189 = private unnamed_addr constant [5 x i8] c") => ", align 1, !guid !3
@190 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @186, [8 x i8] c"\0C\00\00\00\00\00\00\00", ptr @187, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @188, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @189, [8 x i8] c"\05\00\00\00\00\00\00\00" }>, align 8, !guid !3
@191 = private unnamed_addr constant [4 x i8] c"FAIL", align 1, !guid !3
@192 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @191, [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8, !guid !3
@193 = private unnamed_addr constant [6 x i8] c"MATCH(", align 1, !guid !3
@194 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @193, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @171, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8, !guid !3
@195 = private unnamed_addr constant [13 x i8] c"StartByteMap{", align 1, !guid !3
@196 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @195, [8 x i8] c"\0D\00\00\00\00\00\00\00" }>, align 8, !guid !3
@197 = private unnamed_addr constant [1 x i8] c"}", align 1, !guid !3
@198 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @197, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8, !guid !3
@199 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @115, [16 x i8] c"l\00\00\00\00\00\00\00?\01\00\00\09\00\00\00" }>, align 8, !guid !3
@200 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @115, [16 x i8] c"l\00\00\00\00\00\00\00=\01\00\00\0D\00\00\00" }>, align 8, !guid !3
@201 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @115, [16 x i8] c"l\00\00\00\00\00\00\00:\01\00\00\11\00\00\00" }>, align 8, !guid !3
@202 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @115, [16 x i8] c"l\00\00\00\00\00\00\007\01\00\00\09\00\00\00" }>, align 8, !guid !3
@203 = private unnamed_addr constant [1 x i8] c"\22", align 1, !guid !3
@204 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @203, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8, !guid !3
@205 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @141, [16 x i8] c"m\00\00\00\00\00\00\00A\00\00\00\1B\00\00\00" }>, align 8, !guid !3
@206 = private unnamed_addr constant [2 x i8] c"\\0", align 1, !guid !3
@207 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @206, [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8, !guid !3
@208 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @141, [16 x i8] c"m\00\00\00\00\00\00\00C\00\00\00\19\00\00\00" }>, align 8, !guid !3
@209 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @141, [16 x i8] c"m\00\00\00\00\00\00\00M\00\00\00\15\00\00\00" }>, align 8, !guid !3
@210 = private unnamed_addr constant [2 x i8] c"\\x", align 1, !guid !3
@211 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @210, [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8, !guid !3
@212 = private unnamed_addr constant <{ [2 x i8], [14 x i8], [4 x i8], [12 x i8], [12 x i8], [4 x i8] }> <{ [2 x i8] c"\02\00", [14 x i8] undef, [4 x i8] c"\00\00\02\00", [12 x i8] undef, [12 x i8] c"\00\00\00\00\00\00\00\00 \00\00\E9", [4 x i8] undef }>, align 8, !guid !3
@213 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @141, [16 x i8] c"m\00\00\00\00\00\00\00J\00\00\00\15\00\00\00" }>, align 8, !guid !3
@214 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @141, [16 x i8] c"m\00\00\00\00\00\00\00=\00\00\00#\00\00\00" }>, align 8, !guid !3
@215 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @141, [16 x i8] c"m\00\00\00\00\00\00\00<\00\00\00\15\00\00\00" }>, align 8, !guid !3
@216 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @141, [16 x i8] c"m\00\00\00\00\00\00\00Q\00\00\00\09\00\00\00" }>, align 8, !guid !3
@217 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @141, [16 x i8] c"m\00\00\00\00\00\00\005\00\00\00\09\00\00\00" }>, align 8, !guid !3
@218 = private unnamed_addr constant [6 x i8] c"Config", align 1, !guid !3
@219 = private unnamed_addr constant [10 x i8] c"match_kind", align 1, !guid !3
@220 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h8218ed216b5b21a6E" }>, align 8, !guid !3
@221 = private unnamed_addr constant [3 x i8] c"pre", align 1, !guid !3
@222 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h6d703ef7612a86d4E" }>, align 8, !guid !3
@223 = private unnamed_addr constant [6 x i8] c"PikeVM", align 1, !guid !3
@224 = private unnamed_addr constant [6 x i8] c"config", align 1, !guid !3
@225 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @"_ZN4core3ptr66drop_in_place$LT$regex_automata..nfa..thompson..pikevm..Config$GT$17h5d5ebb8296d571b2E", [16 x i8] c"(\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN82_$LT$regex_automata..nfa..thompson..pikevm..Config$u20$as$u20$core..fmt..Debug$GT$3fmt17h320f38906018587eE" }>, align 8, !guid !3
@226 = private unnamed_addr constant [3 x i8] c"nfa", align 1, !guid !3
@227 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4f65f0a11dbbb52cE" }>, align 8, !guid !3
@228 = private unnamed_addr constant [1 x i8] c"-", align 1, !guid !3
@229 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr inttoptr (i64 1 to ptr), [8 x i8] zeroinitializer, ptr @228, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @180, [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8, !guid !3
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hc769aa49e0cae30dE" = private unnamed_addr constant [3 x i8] c"\08\0D\0F", align 8
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hc769aa49e0cae30dE.6" = private unnamed_addr constant [3 x ptr] [ptr @136, ptr @137, ptr @138], align 8
@"switch.table._ZN71_$LT$regex_automata..util..start..Start$u20$as$u20$core..fmt..Debug$GT$3fmt17hc90c3f6646a2a2c3E" = private unnamed_addr constant [6 x i8] c"\0B\08\04\06\06\14", align 8
@"switch.table._ZN71_$LT$regex_automata..util..start..Start$u20$as$u20$core..fmt..Debug$GT$3fmt17hc90c3f6646a2a2c3E.7" = private unnamed_addr constant [6 x ptr] [ptr @130, ptr @131, ptr @132, ptr @133, ptr @134, ptr @135], align 8

; Function Attrs: inlinehint nonlazybind uwtable
define { ptr, ptr } @"_ZN105_$LT$std..collections..hash..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8939a0c3766711b1E"(ptr align 8 %0) unnamed_addr #0 !guid !4 {
bb.a:
  %i.a = tail call { ptr, ptr } @"_ZN92_$LT$hashbrown..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha2220135ef62819bE"(ptr align 8 %0)
  ret { ptr, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define { i32, i32 } @"_ZN106_$LT$regex_automata..nfa..thompson..nfa..PatternIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h099d7a84c46dfd22E"(ptr align 8 %0) unnamed_addr #1 !guid !5 {
bb.a:
  %i.a = tail call { i32, i32 } @"_ZN106_$LT$regex_automata..util..primitives..PatternIDIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd3913b510c12c30E"(ptr align 8 %0)
  ret { i32, i32 } %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { ptr, i64 } @"_ZN12aho_corasick4util6search106_$LT$impl$u20$core..ops..index..Index$LT$aho_corasick..util..search..Span$GT$$u20$for$u20$$u5b$u8$u5d$$GT$5index17h9e3a48e471c290e6E"(ptr align 1 %0, i64 %1, i64 %2, i64 %3, ptr align 8 %4) unnamed_addr #0 !guid !6 {
bb.a:
  %i.a = tail call { i64, i64 } @"_ZN12aho_corasick4util6search126_$LT$impl$u20$core..convert..From$LT$aho_corasick..util..search..Span$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$4from17h3a9b2e06553468a9E"(i64 %2, i64 %3) ; 2 uses
  %i.b = extractvalue { i64, i64 } %i.a, 0        ; 4 uses
  %i.c = extractvalue { i64, i64 } %i.a, 1        ; 4 uses
  %i.d = icmp ult i64 %i.c, %i.b
  %.not.i.i = icmp ugt i64 %i.c, %1
  %or.cond.i.i = select i1 %i.d, i1 true, i1 %.not.i.i
  br i1 %or.cond.i.i, label %bb.b, label %"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h26d05d2c88e9d699E.exit"

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core5slice5index16slice_index_fail17h69cf93148e2c0fa9E(i64 %i.b, i64 %i.c, i64 %1, ptr align 8 %4) #23
  unreachable

"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h26d05d2c88e9d699E.exit": ; preds = %bb.a
  %i.e = sub nuw i64 %i.c, %i.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %i.b
  %i.g = insertvalue { ptr, i64 } poison, ptr %i.f, 0
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %i.e, 1
  ret { ptr, i64 } %i.h
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden zeroext i1 @_ZN12aho_corasick4util6search5Input12get_anchored17hcc3506268c680564E(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #2 !guid !7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i8, ptr %i.a, align 8
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_ZN12aho_corasick4util6search5Input3new17ha1c8baf23da71b2eE(ptr nofree writeonly sret([40 x i8]) align 8 captures(none) initializes((0, 34)) %0, ptr align 1 %1, i64 %2) unnamed_addr #3 !guid !8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %2, ptr %i.b, align 8
  store i64 0, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i16 0, ptr %i.d, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_ZN12aho_corasick4util6search5Input4span17h341316bbeba0e342E(ptr nofree writeonly sret([40 x i8]) align 8 captures(none) %0, ptr nofree align 8 captures(none) %1, i64 %2, i64 %3) unnamed_addr #0 !guid !9 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [48 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.g = tail call { i64, i64 } @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17he93eb9818176410fE"(i64 %2, i64 %3, ptr nonnull align 8 @1) ; 2 uses
  %i.h = extractvalue { i64, i64 } %i.g, 0        ; 3 uses
  %i.i = extractvalue { i64, i64 } %i.g, 1        ; 4 uses
  store i64 %i.h, ptr %i.f, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.i, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load i64, ptr %i.k, align 8              ; 2 uses
  %.not.i = icmp ugt i64 %i.i, %i.l
  %i.m = add i64 %i.i, 1
  %.not1.i = icmp ugt i64 %i.h, %i.m
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not1.i
  br i1 %or.cond.i, label %bb.b, label %_ZN12aho_corasick4util6search5Input8set_span17h29aebcc0904ff43dE.exit

bb.b:                                             ; preds = %bb.a
  store i64 %i.l, ptr %i.d, align 8
  call void @_ZN4core3fmt2rt8Argument9new_debug17hc4102ae3ace23259E(ptr nonnull sret([16 x i8]) align 8 %i.b, ptr nonnull align 8 %i.f)
  call void @_ZN4core3fmt2rt8Argument11new_display17hb2d933a5b7a8448dE(ptr nonnull sret([16 x i8]) align 8 %i.a, ptr nonnull align 8 %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  call void @"_ZN4core3fmt2rt38_$LT$impl$u20$core..fmt..Arguments$GT$6new_v117hb2f88a14e80c5759E"(ptr nonnull sret([48 x i8]) align 8 %i.e, ptr nonnull align 8 @4, ptr nonnull align 8 %i.c)
  call void @_ZN4core9panicking9panic_fmt17h62031895f6e012daE(ptr nonnull align 8 %i.e, ptr nonnull align 8 @5) #23
  unreachable

_ZN12aho_corasick4util6search5Input8set_span17h29aebcc0904ff43dE.exit: ; preds = %bb.a
  store i64 %i.h, ptr %1, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.i, ptr %i.o, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN12aho_corasick4util6search5Input8anchored17h2e1e94c7b2da3e52E(ptr nofree writeonly sret([40 x i8]) align 8 captures(none) initializes((0, 40)) %0, ptr nofree align 8 captures(none) initializes((32, 33)) %1, i1 zeroext %2) unnamed_addr #4 !guid !10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = zext i1 %2 to i8
  store i8 %i.b, ptr %i.a, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_ZN12aho_corasick4util6search5Input8set_span17h29aebcc0904ff43dE(ptr nofree align 8 captures(none) %0, i64 %1, i64 %2) unnamed_addr #0 !guid !11 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 2 uses
  %i.b = alloca [16 x i8], align 8                ; 2 uses
  %i.c = alloca [32 x i8], align 8                ; 3 uses
  %i.d = alloca [8 x i8], align 8                 ; 2 uses
  %i.e = alloca [48 x i8], align 8                ; 2 uses
  %i.f = alloca [16 x i8], align 8                ; 3 uses
  %i.g = tail call { i64, i64 } @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17he93eb9818176410fE"(i64 %1, i64 %2, ptr nonnull align 8 @1) ; 2 uses
  %i.h = extractvalue { i64, i64 } %i.g, 0        ; 3 uses
  %i.i = extractvalue { i64, i64 } %i.g, 1        ; 4 uses
  store i64 %i.h, ptr %i.f, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.i, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i64, ptr %i.k, align 8              ; 2 uses
  %.not = icmp ugt i64 %i.i, %i.l
  %i.m = add i64 %i.i, 1
  %.not1 = icmp ugt i64 %i.h, %i.m
  %or.cond = select i1 %.not, i1 true, i1 %.not1
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 %i.l, ptr %i.d, align 8
  call void @_ZN4core3fmt2rt8Argument9new_debug17hc4102ae3ace23259E(ptr nonnull sret([16 x i8]) align 8 %i.b, ptr nonnull align 8 %i.f)
  call void @_ZN4core3fmt2rt8Argument11new_display17hb2d933a5b7a8448dE(ptr nonnull sret([16 x i8]) align 8 %i.a, ptr nonnull align 8 %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  call void @"_ZN4core3fmt2rt38_$LT$impl$u20$core..fmt..Arguments$GT$6new_v117hb2f88a14e80c5759E"(ptr nonnull sret([48 x i8]) align 8 %i.e, ptr nonnull align 8 @4, ptr nonnull align 8 %i.c)
  call void @_ZN4core9panicking9panic_fmt17h62031895f6e012daE(ptr nonnull align 8 %i.e, ptr nonnull align 8 @5) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  store i64 %i.h, ptr %0, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %i.o, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden i64 @_ZN12aho_corasick4util6search5Match3end17he03fde9b25745e14E(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #2 !guid !12 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8
  ret i64 %.val1
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden i64 @_ZN12aho_corasick4util6search5Match5start17h7b0a11ff955cf256E(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #2 !guid !13 {
bb.a:
  %.val = load i64, ptr %0, align 8
  ret i64 %.val
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden zeroext i1 @_ZN12aho_corasick4util6search8Anchored11is_anchored17h710120f1bc8d8a05E(ptr nofree readonly align 1 captures(none) %0) unnamed_addr #2 !guid !14 {
bb.a:
  %i.a = load i8, ptr %0, align 1
  %i.b = trunc nuw i8 %i.a to i1
  ret i1 %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden zeroext i1 @_ZN12aho_corasick4util6search9MatchKind17is_leftmost_first17he7e42c59f4fcc157E(ptr nofree readonly align 1 captures(none) %0) unnamed_addr #2 !guid !15 {
bb.a:
  %i.a = load i8, ptr %0, align 1
  %i.b = icmp eq i8 %i.a, 1
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { ptr, i64 } @_ZN12regex_syntax3hir7literal3Seq21longest_common_suffix17h90579a07bc44a222E(ptr align 8 %0) unnamed_addr #0 !guid !16 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 2 uses
  %i.b = alloca [56 x i8], align 8                ; 2 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = alloca [24 x i8], align 8                ; 2 uses
  %i.f = load i64, ptr %0, align 8
  %.not = icmp eq i64 %i.f, -9223372036854775808
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i64 @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$3len17h6ff4ce9cc470b0f6E"(ptr nonnull align 8 %0)
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %bb.e, %bb.b, %bb.a, %bb.f
  %.sroa.5.0 = phi i64 [ undef, %bb.a ], [ undef, %bb.b ], [ %i.at, %bb.f ], [ 0, %bb.e ]
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %i.as, %bb.f ], [ inttoptr (i64 1 to ptr), %bb.e ]
  %i.i = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.j = insertvalue { ptr, i64 } %i.i, i64 %.sroa.5.0, 1
  ret { ptr, i64 } %i.j

bb.c:                                             ; preds = %bb.b
  %i.k = tail call align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4b20873a166b8f0cE"(ptr nonnull align 8 %0, i64 0, ptr nonnull align 8 @7)
  %i.l = tail call { ptr, i64 } @"_ZN72_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h64ae1f1266c41d6cE"(ptr align 8 %i.k) ; 2 uses
  %i.m = extractvalue { ptr, i64 } %i.l, 0        ; 2 uses
  %i.n = extractvalue { ptr, i64 } %i.l, 1        ; 5 uses
  %i.o = tail call { ptr, i64 } @"_ZN72_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17hd915a2b472c0a9a2E"(ptr nonnull align 8 %0) ; 2 uses
  %i.p = extractvalue { ptr, i64 } %i.o, 0
  %i.q = extractvalue { ptr, i64 } %i.o, 1
  %i.r = tail call { ptr, ptr } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17h3722466ede98b9c7E"(ptr align 8 %i.p, i64 %i.q) ; 2 uses
  %i.s = extractvalue { ptr, ptr } %i.r, 0
  %i.t = extractvalue { ptr, ptr } %i.r, 1
  call void @_ZN4core4iter6traits8iterator8Iterator4skip17he30de1cd453fd734E(ptr nonnull sret([24 x i8]) align 8 %i.d, ptr %i.s, ptr %i.t, i64 1)
  call void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hca64704d9796e819E"(ptr nonnull sret([24 x i8]) align 8 %i.e, ptr nonnull align 8 %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.sroa.01.0 = phi i64 [ %i.n, %bb.c ], [ %i.ao, %bb.e ] ; 2 uses
  %i.u = call align 8 ptr @"_ZN100_$LT$core..iter..adapters..skip..Skip$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h897a242bc9700f11E"(ptr nonnull align 8 %i.c) ; 2 uses
  %.not6 = icmp eq ptr %i.u, null
  br i1 %.not6, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = call { ptr, i64 } @"_ZN72_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h64ae1f1266c41d6cE"(ptr nonnull align 8 %i.u) ; 2 uses
  %i.w = extractvalue { ptr, i64 } %i.v, 0
  %i.x = extractvalue { ptr, i64 } %i.v, 1
  %i.y = call { ptr, ptr } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17h04d05ad3f1dd9585E"(ptr align 1 %i.w, i64 %i.x) ; 2 uses
  %i.z = extractvalue { ptr, ptr } %i.y, 0
  %i.aa = extractvalue { ptr, ptr } %i.y, 1
  %i.ab = call { ptr, ptr } @_ZN4core4iter6traits8iterator8Iterator3rev17h0ace6e062f79414bE(ptr %i.z, ptr %i.aa) ; 2 uses
  %i.ac = extractvalue { ptr, ptr } %i.ab, 0
  %i.ad = extractvalue { ptr, ptr } %i.ab, 1
  %i.ae = sub i64 %i.n, %.sroa.01.0
  %i.af = call { ptr, i64 } @"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hcb579d0f2a733967E"(i64 %i.ae, ptr align 1 %i.m, i64 %i.n, ptr nonnull align 8 @9) ; 2 uses
  %i.ag = extractvalue { ptr, i64 } %i.af, 0
  %i.ah = extractvalue { ptr, i64 } %i.af, 1
  %i.ai = call { ptr, ptr } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17h04d05ad3f1dd9585E"(ptr align 1 %i.ag, i64 %i.ah) ; 2 uses
end_hunk_0
begin_hunk_1_@"_ZN80_$LT$regex_automata..util..escape..DebugHaystack$u20$as$u20$core..fmt..Debug$GT$3fmt17he78df2b910156511E":bb.a

.backedge:                                        ; preds = %bb.m, %bb.n, %bb.o, %bb.q
  %.pn = phi { ptr, i64 } [ %i.bj, %bb.q ], [ %i.ax, %bb.n ], [ %i.ax, %bb.o ], [ %i.ax, %bb.m ] ; 2 uses
  %.sroa.02.0.be = extractvalue { ptr, i64 } %.pn, 0 ; 2 uses
  %.sroa.6.0.be = extractvalue { ptr, i64 } %.pn, 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bc = call zeroext i1 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$8is_empty17h0ace8267b7b4235aE"(ptr align 1 %.sroa.02.0.be, i64 %.sroa.6.0.be)
  br i1 %i.bc, label %.loopexit, label %bb.c

bb.n:                                             ; preds = %bb.l, %"_ZN4core6option15Option$LT$T$GT$6unwrap17hdc83cb2d9fedd98bE.exit", %"_ZN4core6option15Option$LT$T$GT$6unwrap17hdc83cb2d9fedd98bE.exit", %"_ZN4core6option15Option$LT$T$GT$6unwrap17hdc83cb2d9fedd98bE.exit"
  %i.bd = call i32 @"_ZN4core4char7convert65_$LT$impl$u20$core..convert..From$LT$char$GT$$u20$for$u20$u32$GT$4from17h8a9ca92df021d8c8E"(i32 %.sink48)
  store i32 %i.bd, ptr %i.j, align 4
  call void @_ZN4core3fmt2rt8Argument13new_lower_hex17h1486f37422d0ce7fE(ptr nonnull sret([16 x i8]) align 8 %i.h, ptr nonnull align 4 %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false)
  call void @"_ZN4core3fmt2rt38_$LT$impl$u20$core..fmt..Arguments$GT$16new_v1_formatted17hb050f2073d1eccf8E"(ptr nonnull sret([48 x i8]) align 8 %i.k, ptr nonnull align 8 @211, i64 1, ptr nonnull align 8 %i.i, i64 1, ptr nonnull align 8 @212, i64 1)
  %i.be = call zeroext i1 @_ZN4core3fmt9Formatter9write_fmt17h3363a56933637661E(ptr align 8 %1, ptr nonnull align 8 %i.k)
  %i.bf = call zeroext i1 @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h23eb1891771ea5bdE"(i1 zeroext %i.be)
  br i1 %i.bf, label %.sink.split, label %.backedge

bb.o:                                             ; preds = %bb.l, %"_ZN4core6option15Option$LT$T$GT$6unwrap17hdc83cb2d9fedd98bE.exit", %"_ZN4core6option15Option$LT$T$GT$6unwrap17hdc83cb2d9fedd98bE.exit", %"_ZN4core6option15Option$LT$T$GT$6unwrap17hdc83cb2d9fedd98bE.exit"
  call void @"_ZN4core4char7methods22_$LT$impl$u20$char$GT$12escape_debug17hd660f44cd3aafc5bE"(ptr nonnull sret([16 x i8]) align 4 %i.f, i32 %.sink48)
  call void @_ZN4core3fmt2rt8Argument11new_display17h551b3fd69b7c5d01E(ptr nonnull sret([16 x i8]) align 8 %i.d, ptr nonnull align 4 %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false)
  call void @"_ZN4core3fmt2rt38_$LT$impl$u20$core..fmt..Arguments$GT$6new_v117h5f7fb8f77d6d4a92E"(ptr nonnull sret([48 x i8]) align 8 %i.g, ptr nonnull align 8 @144, ptr nonnull align 8 %i.e)
  %i.bg = call zeroext i1 @_ZN4core3fmt9Formatter9write_fmt17h3363a56933637661E(ptr align 8 %1, ptr nonnull align 8 %i.g)
  %i.bh = call zeroext i1 @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h23eb1891771ea5bdE"(i1 zeroext %i.bg)
  br i1 %i.bh, label %.sink.split, label %.backedge

.sink.split:                                      ; preds = %bb.m, %_ZN14regex_automata4util4utf83len17h1d7c5d5b1ca72faaE.exit.i.thread20, %bb.n, %bb.o, %bb.a, %.loopexit
  %.sink49 = phi ptr [ @217, %bb.a ], [ @216, %.loopexit ], [ @215, %_ZN14regex_automata4util4utf83len17h1d7c5d5b1ca72faaE.exit.i.thread20 ], [ @213, %bb.n ], [ @209, %bb.o ], [ @208, %bb.m ]
  %i.bi = call zeroext i1 @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hb2aa2efafe911eaaE"(ptr nonnull align 8 %.sink49)
  br label %bb.p

bb.p:                                             ; preds = %.sink.split, %.loopexit
  %.sroa.0.0.shrunk = phi i1 [ false, %.loopexit ], [ %i.bi, %.sink.split ]
  ret i1 %.sroa.0.0.shrunk

bb.q:                                             ; preds = %_ZN14regex_automata4util4utf83len17h1d7c5d5b1ca72faaE.exit.i.thread20
  %i.bj = call { ptr, i64 } @"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hcb579d0f2a733967E"(i64 1, ptr nonnull align 1 %.sroa.02.032, i64 %.sroa.6.028, ptr nonnull align 8 @214)
  br label %.backedge
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @"_ZN82_$LT$regex_automata..nfa..thompson..pikevm..Config$u20$as$u20$core..fmt..Debug$GT$3fmt17h320f38906018587eE"(ptr align 8 %0, ptr align 8 %1) unnamed_addr #0 !guid !254 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %0, ptr %i.a, align 8
  %i.c = call zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field2_finish17h76eec2bdcf20fea6E(ptr align 8 %1, ptr nonnull align 1 @218, i64 6, ptr nonnull align 1 @219, i64 10, ptr nonnull align 1 %i.b, ptr nonnull align 8 @220, ptr nonnull align 1 @221, i64 3, ptr nonnull align 1 %i.a, ptr nonnull align 8 @222)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @"_ZN83_$LT$regex_automata..nfa..thompson..nfa..Transition$u20$as$u20$core..fmt..Debug$GT$3fmt17h4767fe1f21def858E"(ptr nofree readonly align 4 captures(none) %0, ptr align 8 %1) unnamed_addr #1 !guid !255 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 2 uses
  %i.b = alloca [16 x i8], align 8                ; 2 uses
  %i.c = alloca [16 x i8], align 8                ; 2 uses
  %i.d = alloca [48 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 2 uses
  %i.f = alloca [1 x i8], align 1                 ; 2 uses
  %i.g = alloca [1 x i8], align 1                 ; 2 uses
  %i.h = alloca [48 x i8], align 8                ; 2 uses
  %i.i = alloca [16 x i8], align 8                ; 2 uses
  %i.j = alloca [16 x i8], align 8                ; 2 uses
  %i.k = alloca [32 x i8], align 8                ; 3 uses
  %i.l = alloca [8 x i8], align 8                 ; 2 uses
  %i.m = alloca [1 x i8], align 1                 ; 2 uses
  %i.n = alloca [48 x i8], align 8                ; 2 uses
  %i.o = alloca [4 x i8], align 4                 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.q = load i8, ptr %i.p, align 4               ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.s = load i8, ptr %i.r, align 1               ; 2 uses
  %i.t = load i32, ptr %0, align 4
  store i32 %i.t, ptr %i.o, align 4
  %i.u = icmp eq i8 %i.q, %i.s
  br i1 %i.u, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 %i.q, ptr %i.g, align 1
  store i8 %i.s, ptr %i.f, align 1
  %i.v = call i64 @_ZN14regex_automata4util10primitives7StateID8as_usize17hfc7299925c597c03E(ptr nonnull align 4 %i.o)
  store i64 %i.v, ptr %i.e, align 8
  call void @_ZN4core3fmt2rt8Argument9new_debug17hc91ea6ed238950ccE(ptr nonnull sret([16 x i8]) align 8 %i.c, ptr nonnull align 1 %i.g)
  call void @_ZN4core3fmt2rt8Argument9new_debug17hc91ea6ed238950ccE(ptr nonnull sret([16 x i8]) align 8 %i.b, ptr nonnull align 1 %i.f)
  call void @_ZN4core3fmt2rt8Argument9new_debug17h03a21a1edcdebb7fE(ptr nonnull sret([16 x i8]) align 8 %i.a, ptr nonnull align 8 %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  call void @"_ZN4core3fmt2rt38_$LT$impl$u20$core..fmt..Arguments$GT$6new_v117h5c28649625bba2e7E"(ptr nonnull sret([48 x i8]) align 8 %i.h, ptr nonnull align 8 @229, ptr nonnull align 8 %i.d)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i8 %i.q, ptr %i.m, align 1
  %i.y = call i64 @_ZN14regex_automata4util10primitives7StateID8as_usize17hfc7299925c597c03E(ptr nonnull align 4 %i.o)
  store i64 %i.y, ptr %i.l, align 8
  call void @_ZN4core3fmt2rt8Argument9new_debug17hc91ea6ed238950ccE(ptr nonnull sret([16 x i8]) align 8 %i.j, ptr nonnull align 1 %i.m)
  call void @_ZN4core3fmt2rt8Argument9new_debug17h03a21a1edcdebb7fE(ptr nonnull sret([16 x i8]) align 8 %i.i, ptr nonnull align 8 %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false)
  call void @"_ZN4core3fmt2rt38_$LT$impl$u20$core..fmt..Arguments$GT$6new_v117hb2f88a14e80c5759E"(ptr nonnull sret([48 x i8]) align 8 %i.n, ptr nonnull align 8 @181, ptr nonnull align 8 %i.k)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi ptr [ %i.n, %bb.c ], [ %i.h, %bb.b ]
  %i.aa = call zeroext i1 @_ZN4core3fmt9Formatter9write_fmt17h3363a56933637661E(ptr align 8 %1, ptr nonnull align 8 %.sink)
  ret i1 %i.aa
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @"_ZN84_$LT$regex_automata..nfa..thompson..nfa..Inner$u20$as$u20$core..default..Default$GT$7default17h933b56f136e36001E"(ptr nofree writeonly sret([384 x i8]) align 16 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !256 {
bb.a:
  %i.a = alloca [256 x i8], align 1               ; 2 uses
  %i.b = alloca [32 x i8], align 16               ; 2 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  %i.d = alloca [24 x i8], align 8                ; 3 uses
  %i.e = alloca [24 x i8], align 8                ; 3 uses
  call void @"_ZN67_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..default..Default$GT$7default17hbfb66e631b880459E"(ptr nonnull sret([24 x i8]) align 8 %i.e)
  %i.f = invoke i32 @"_ZN84_$LT$regex_automata..util..primitives..StateID$u20$as$u20$core..default..Default$GT$7default17h1dcd33baadead138E"()
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.g, %bb.c
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.g ], [ %i.g, %bb.c ]
  invoke void @"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..nfa..thompson..nfa..State$GT$$GT$17hf3b7efc4fabafd8bE"(ptr nonnull align 8 %i.e) #24
          to label %bb.q unwind label %bb.p

bb.c:                                             ; preds = %bb.e, %bb.d, %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.h = invoke i32 @"_ZN84_$LT$regex_automata..util..primitives..StateID$u20$as$u20$core..default..Default$GT$7default17h1dcd33baadead138E"()
          to label %bb.e unwind label %bb.c

bb.e:                                             ; preds = %bb.d
  invoke void @"_ZN67_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..default..Default$GT$7default17h294ec286f488ed66E"(ptr nonnull sret([24 x i8]) align 8 %i.d)
          to label %bb.f unwind label %bb.c

bb.f:                                             ; preds = %bb.e
  %i.i = invoke ptr @"_ZN84_$LT$regex_automata..util..captures..GroupInfo$u20$as$u20$core..default..Default$GT$7default17hda81bf42d38b03e9E"()
          to label %bb.i unwind label %bb.h       ; 2 uses

bb.g:                                             ; preds = %bb.j, %bb.h
  %.pn = phi { ptr, i32 } [ %i.k, %bb.j ], [ %i.j, %bb.h ]
  invoke void @"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..util..primitives..StateID$GT$$GT$17h71e2e7b7f702bed3E"(ptr nonnull align 8 %i.d) #24
          to label %bb.b unwind label %bb.p

bb.h:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.i:                                             ; preds = %bb.f
  store ptr %i.i, ptr %i.c, align 8
  invoke void @"_ZN87_$LT$regex_automata..util..alphabet..ByteClassSet$u20$as$u20$core..default..Default$GT$7default17h6f2e9df921082ddfE"(ptr nonnull sret([32 x i8]) align 16 %i.b)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr62drop_in_place$LT$regex_automata..util..captures..GroupInfo$GT$17h871eed801dd8a61bE"(ptr nonnull align 8 %i.c) #24
          to label %bb.g unwind label %bb.p

bb.k:                                             ; preds = %bb.i
  invoke void @"_ZN86_$LT$regex_automata..util..alphabet..ByteClasses$u20$as$u20$core..default..Default$GT$7default17h07d801f04da827e4E"(ptr nonnull sret([256 x i8]) align 1 %i.a)
          to label %bb.l unwind label %bb.j

bb.l:                                             ; preds = %bb.k
  %i.l = invoke i8 @"_ZN82_$LT$regex_automata..util..look..LookMatcher$u20$as$u20$core..default..Default$GT$7default17hf9991bc3268d7fdeE"()
          to label %bb.m unwind label %bb.j

bb.m:                                             ; preds = %bb.l
  %i.m = invoke i32 @"_ZN78_$LT$regex_automata..util..look..LookSet$u20$as$u20$core..default..Default$GT$7default17hb3aa37383ad13ecdE"()
          to label %bb.n unwind label %bb.j

bb.n:                                             ; preds = %bb.m
  %i.n = invoke i32 @"_ZN78_$LT$regex_automata..util..look..LookSet$u20$as$u20$core..default..Default$GT$7default17hb3aa37383ad13ecdE"()
          to label %bb.o unwind label %bb.j

bb.o:                                             ; preds = %bb.n
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 304
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 352
  store i32 %i.f, ptr %i.p, align 16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 356
  store i32 %i.h, ptr %i.q, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 328
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 296
  store ptr %i.i, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.t, ptr noundef nonnull align 16 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %0, ptr noundef nonnull align 1 dereferenceable(256) %i.a, i64 256, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 369
  store i8 0, ptr %i.u, align 1
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 370
  store i16 0, ptr %1, align 2
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 372
  store i8 0, ptr %i.v, align 4
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 368
  store i8 %i.l, ptr %2, align 16
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 360
  store i32 %i.m, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 364
  store i32 %i.n, ptr %i.x, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i64 0, ptr %i.y, align 16
  ret void

bb.p:                                             ; preds = %bb.j, %bb.g, %bb.b
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #25
  unreachable

bb.q:                                             ; preds = %bb.b
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden i64 @"_ZN85_$LT$regex_automata..nfa..thompson..nfa..Transition$u20$as$u20$core..clone..Clone$GT$5clone17he3e82635748dc0b2E"(ptr nofree readonly align 4 captures(none) %0) unnamed_addr #2 !guid !257 {
bb.a:
  %.sroa.0.0.copyload = load i64, ptr %0, align 4
  ret i64 %.sroa.0.0.copyload
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h613f87e91735e761E"(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr nofree readonly align 4 captures(none) %1, i64 %2) unnamed_addr #0 !guid !258 {
bb.a:
  %i.a = tail call { i64, ptr } @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h897ce1429f5c1ac0E"(i64 %2, i64 4, i64 8) ; 2 uses
  %i.b = extractvalue { i64, ptr } %i.a, 0
  %i.c = extractvalue { i64, ptr } %i.a, 1        ; 2 uses
  store i64 %i.b, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 0, ptr %i.e, align 8
  %i.f = shl i64 %2, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.c, ptr align 4 %1, i64 %i.f, i1 false)
  store i64 %2, ptr %i.e, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @"_ZN90_$LT$std..collections..hash..map..HashMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h1236b6f73f63662eE"(ptr align 8 %0, ptr align 8 %1) unnamed_addr #1 !guid !259 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 2 uses
  %i.b = alloca [40 x i8], align 8                ; 2 uses
  %i.c = alloca [16 x i8], align 8                ; 2 uses
  call void @_ZN4core3fmt9Formatter9debug_map17ha1db76d3917da565E(ptr nonnull sret([16 x i8]) align 8 %i.c, ptr align 8 %1)
  call void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$4iter17h609ed75a07b76c56E"(ptr nonnull sret([40 x i8]) align 8 %i.a, ptr align 8 %0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  %i.d = call align 8 ptr @_ZN4core3fmt8builders8DebugMap7entries17h8c893469024a54daE(ptr nonnull align 8 %i.c, ptr nonnull align 8 %i.b)
  %i.e = call zeroext i1 @_ZN4core3fmt8builders8DebugMap6finish17h03c9a309c3bc48d4E(ptr align 8 %i.d)
  ret i1 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @"_ZN91_$LT$regex_automata..util..interpolate..Ref$u20$as$u20$core..convert..From$LT$usize$GT$$GT$4from17hb4a6dc55e4537906E"(ptr nofree writeonly sret([16 x i8]) align 8 captures(none) initializes((0, 16)) %0, i64 %1) unnamed_addr #7 !guid !260 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.a, align 8
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @"_ZN93_$LT$regex_automata..util..interpolate..Ref$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h9fe112347c116dfeE"(ptr nofree writeonly sret([16 x i8]) align 8 captures(none) initializes((0, 16)) %0, ptr align 1 %1, i64 %2) unnamed_addr #7 !guid !261 {
bb.a:
  store ptr %1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @"_ZN96_$LT$core..hint..select_unpredictable..DropOnPanic$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5a5c10b8e474dd1dE"(ptr nofree readnone align 8 captures(none) %0) unnamed_addr #6 !guid !262 {
bb.a:
  ret void
}

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @"_ZN92_$LT$hashbrown..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha2220135ef62819bE"(ptr align 8) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core5slice5index16slice_index_fail17h69cf93148e2c0fa9E(i64, i64, i64, ptr align 8) unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare { i32, i32 } @"_ZN106_$LT$regex_automata..util..primitives..PatternIDIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd3913b510c12c30E"(ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare align 4 ptr @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2b1a57be55b94b8aE"(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i32, i32 } @"_ZN4core6option19Option$LT$$RF$T$GT$6copied17h0b3c64e0aefa09b7E"(ptr align 4) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { i64, i64 } @"_ZN12aho_corasick4util6search126_$LT$impl$u20$core..convert..From$LT$aho_corasick..util..search..Span$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$4from17h3a9b2e06553468a9E"(i64, i64) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #14

; Function Attrs: inlinehint nonlazybind uwtable
declare { i64, i64 } @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17he93eb9818176410fE"(i64, i64, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_ZN4core3fmt2rt8Argument9new_debug17hc4102ae3ace23259E(ptr sret([16 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_ZN4core3fmt2rt8Argument11new_display17hb2d933a5b7a8448dE(ptr sret([16 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @"_ZN4core3fmt2rt38_$LT$impl$u20$core..fmt..Arguments$GT$6new_v117hb2f88a14e80c5759E"(ptr sret([48 x i8]) align 8, ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking9panic_fmt17h62031895f6e012daE(ptr align 8, ptr align 8) unnamed_addr #13

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, i64 } @"_ZN75_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h43b64d67f6a158c8E"(ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, ptr } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$8iter_mut17h7852f8a120b56e68E"(ptr align 8, i64) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, ptr } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h8f4e2fc0e62eed7fE"(ptr, ptr) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare align 8 ptr @"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he9bd3cbd74e0f68eE"(ptr align 8) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, ptr, ptr) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare void @"_ZN4core3ptr107drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$regex_syntax..hir..literal..Literal$GT$$GT$$GT$17h00131d314eb99097E"(ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare i64 @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$3len17h6ff4ce9cc470b0f6E"(ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4b20873a166b8f0cE"(ptr align 8, i64, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, i64 } @"_ZN72_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17hd915a2b472c0a9a2E"(ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, ptr } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17h3722466ede98b9c7E"(ptr align 8, i64) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_ZN4core4iter6traits8iterator8Iterator4skip17he30de1cd453fd734E(ptr sret([24 x i8]) align 8, ptr, ptr, i64) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hca64704d9796e819E"(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare align 8 ptr @"_ZN100_$LT$core..iter..adapters..skip..Skip$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h897a242bc9700f11E"(ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, ptr } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17h04d05ad3f1dd9585E"(ptr align 1, i64) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, ptr } @_ZN4core4iter6traits8iterator8Iterator3rev17h0ace6e062f79414bE(ptr, ptr) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_ZN4core4iter6traits8iterator8Iterator3zip17hd4344b1d12525cccE(ptr sret([48 x i8]) align 8, ptr, ptr, ptr, ptr) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_ZN4core4iter6traits8iterator8Iterator10take_while17h353c22ac93f1ff73E(ptr sret([56 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare i64 @_ZN4core4iter6traits8iterator8Iterator5count17hc875796b1bf0b50bE(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_ZN12regex_syntax3hir7literal3Seq22optimize_by_preference17h30eb3008f526b9bbE(ptr align 8, i1 zeroext) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8dedup_by17hf78438f5e2fa0f14E"(ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare void @"_ZN5alloc3vec12Vec$LT$T$GT$3new17he489fa09f5105c55E"(ptr sret([24 x i8]) align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5drain17h181b097ff9eeae63E"(ptr sret([40 x i8]) align 8, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @"_ZN4core3ptr88drop_in_place$LT$alloc..vec..drain..Drain$LT$regex_syntax..hir..literal..Literal$GT$$GT$17h63ad2dfd40953685E"(ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare void @"_ZN93_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend17h20d919e61b421e5dE"(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare zeroext i1 @"_ZN4core6option15Option$LT$T$GT$6map_or17h27d7a6be41d77d8bE"(ptr align 8, i64, i1 zeroext) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, i64 } @"_ZN4core6option15Option$LT$T$GT$8as_deref17h9fc13f0a52a3ea51E"(ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, i64 } @"_ZN72_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h64ae1f1266c41d6cE"(ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden i32 @_ZN14regex_automata4util10primitives7StateID13new_unchecked17h24df1472ef572f36E(i64) unnamed_addr #0

end_hunk_1
