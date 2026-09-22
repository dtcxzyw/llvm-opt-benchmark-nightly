Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/regex_automata-4af06e9cdbcb175e.regex_automata.4a84a3584f3e0a2d-cgu.04?download=true
inline.NumInlined: 554
inline.NumDeleted: 232
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 10
begin_hunk_0
@89 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @"_ZN4core3ptr60drop_in_place$LT$regex_automata..nfa..thompson..nfa..NFA$GT$17hfaf8ff2b45fdc2feE", [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN76_$LT$regex_automata..nfa..thompson..nfa..NFA$u20$as$u20$core..fmt..Debug$GT$3fmt17h3df600ba47f0f655E" }>, align 8
@90 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h70ecac23f49aed3dE" }>, align 8
@91 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN78_$LT$regex_automata..util..start..StartByteMap$u20$as$u20$core..fmt..Debug$GT$3fmt17hd941f15b4da11d67E" }>, align 8
@92 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN80_$LT$regex_automata..util..alphabet..ByteClasses$u20$as$u20$core..fmt..Debug$GT$3fmt17hfa560a315256f4f9E" }>, align 8
@93 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00 \00\00\00\00\00\00\00\10\00\00\00\00\00\00\00", ptr @"_ZN76_$LT$regex_automata..util..alphabet..ByteSet$u20$as$u20$core..fmt..Debug$GT$3fmt17hd8866a31af69e6e1E" }>, align 8
@94 = private unnamed_addr constant [6 x i8] c"config", align 1
@95 = private unnamed_addr constant [3 x i8] c"nfa", align 1
@96 = private unnamed_addr constant [7 x i8] c"stride2", align 1
@97 = private unnamed_addr constant [9 x i8] c"start_map", align 1
@98 = private unnamed_addr constant [7 x i8] c"classes", align 1
@99 = private unnamed_addr constant [7 x i8] c"quitset", align 1
@100 = private unnamed_addr constant [14 x i8] c"cache_capacity", align 1
@101 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @94, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @95, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @96, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @97, [8 x i8] c"\09\00\00\00\00\00\00\00", ptr @98, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @99, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @100, [8 x i8] c"\0E\00\00\00\00\00\00\00" }>, align 8
@102 = private unnamed_addr constant [3 x i8] c"DFA", align 1
@103 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h130a3580d72e0dc3E" }>, align 8
@104 = private unnamed_addr constant [15 x i8] c"TryFromIntError", align 1
@105 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hdbab190ec91e2bf0E" }>, align 8
@106 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$regex_automata..util..prefilter..Prefilter$GT$$GT$$GT$17h1da963db7e9a5195E", [16 x i8] c" \00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h40c8d1608cfc8a92E" }>, align 8
@107 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h5552818d484ed148E" }>, align 8
@108 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\000\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00", ptr @"_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h0e3dc8052a7c3b46E" }>, align 8
@109 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hf8d4d8c82e0233c0E" }>, align 8
@110 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h1eb17464f705cbacE" }>, align 8
@111 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h29dc02581c11adfcE" }>, align 8
@112 = private unnamed_addr constant [10 x i8] c"match_kind", align 1
@113 = private unnamed_addr constant [3 x i8] c"pre", align 1
@114 = private unnamed_addr constant [23 x i8] c"starts_for_each_pattern", align 1
@115 = private unnamed_addr constant [12 x i8] c"byte_classes", align 1
@116 = private unnamed_addr constant [21 x i8] c"unicode_word_boundary", align 1
@117 = private unnamed_addr constant [23 x i8] c"specialize_start_states", align 1
@118 = private unnamed_addr constant [25 x i8] c"skip_cache_capacity_check", align 1
@119 = private unnamed_addr constant [25 x i8] c"minimum_cache_clear_count", align 1
@120 = private unnamed_addr constant [23 x i8] c"minimum_bytes_per_state", align 1
@121 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @112, [8 x i8] c"\0A\00\00\00\00\00\00\00", ptr @113, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @114, [8 x i8] c"\17\00\00\00\00\00\00\00", ptr @115, [8 x i8] c"\0C\00\00\00\00\00\00\00", ptr @116, [8 x i8] c"\15\00\00\00\00\00\00\00", ptr @99, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @117, [8 x i8] c"\17\00\00\00\00\00\00\00", ptr @100, [8 x i8] c"\0E\00\00\00\00\00\00\00", ptr @118, [8 x i8] c"\19\00\00\00\00\00\00\00", ptr @119, [8 x i8] c"\19\00\00\00\00\00\00\00", ptr @120, [8 x i8] c"\17\00\00\00\00\00\00\00" }>, align 8
@122 = private unnamed_addr constant [6 x i8] c"Config", align 1
@123 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @"_ZN4core3ptr53drop_in_place$LT$regex_automata..hybrid..dfa..DFA$GT$17hb300fda28ee69055E", [16 x i8] c"\D0\02\00\00\00\00\00\00\10\00\00\00\00\00\00\00", ptr @"_ZN69_$LT$regex_automata..hybrid..dfa..DFA$u20$as$u20$core..fmt..Debug$GT$3fmt17hd26f5908463033b0E" }>, align 8
@124 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h30ad4008e194e7beE" }>, align 8
@125 = private unnamed_addr constant [5 x i8] c"Regex", align 1
@126 = private unnamed_addr constant [7 x i8] c"forward", align 1
@127 = private unnamed_addr constant [7 x i8] c"reverse", align 1
@128 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr inttoptr (i64 1 to ptr), [8 x i8] zeroinitializer }>, align 8
@129 = private unnamed_addr constant [3 x i8] c"EOI", align 1
@130 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN4core3fmt3num49_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u8$GT$3fmt17h9d30d5fd02a40103E" }>, align 8
@131 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h9966fa06c89c3634E" }>, align 8
@132 = private unnamed_addr constant [11 x i8] c"LazyStateID", align 1
@133 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hca73bdcc954b09aaE" }>, align 8
@134 = private unnamed_addr constant [7 x i8] c"ByteSet", align 1
@135 = private unnamed_addr constant [4 x i8] c"bits", align 1
@136 = private unnamed_addr constant [10 x i8] c"CacheError", align 1
@137 = private unnamed_addr constant [22 x i8] c"error parsing pattern ", align 1
@138 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @137, [8 x i8] c"\16\00\00\00\00\00\00\00" }>, align 8
@139 = private unnamed_addr constant [18 x i8] c"error building NFA", align 1
@140 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @"_ZN4core3ptr86drop_in_place$LT$regex_automata..dfa..dense..DFA$LT$alloc..vec..Vec$LT$u32$GT$$GT$$GT$17h10e157bde6aa6200E", [16 x i8] c" \03\00\00\00\00\00\00\10\00\00\00\00\00\00\00", ptr @"_ZN77_$LT$regex_automata..dfa..dense..DFA$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h61958c5321ead2afE" }>, align 8
@141 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0003ac2d5ffdbe22E" }>, align 8
@142 = private unnamed_addr constant [25 x i8] c"ByteClasses({singletons})", align 1
@143 = private unnamed_addr constant [12 x i8] c"ByteClasses(", align 1
@144 = private unnamed_addr constant [1 x i8] c")", align 1
@145 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @144, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@146 = private unnamed_addr constant [2 x i8] c", ", align 1
@147 = private unnamed_addr constant [5 x i8] c" => [", align 1
@148 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr inttoptr (i64 1 to ptr), [8 x i8] zeroinitializer, ptr @147, [8 x i8] c"\05\00\00\00\00\00\00\00" }>, align 8
@149 = private unnamed_addr constant [1 x i8] c"]", align 1
@150 = private unnamed_addr constant [1 x i8] c"-", align 1
@151 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr inttoptr (i64 1 to ptr), [8 x i8] zeroinitializer, ptr @150, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@152 = private unnamed_addr constant [9 x i8] c"SparseSet", align 1
@153 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..util..primitives..StateID$GT$$GT$17hc4a99848f8d07f9fE", [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN65_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hab4c26f4d3de0439E" }>, align 8
@154 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @21, [16 x i8] c"q\00\00\00\00\00\00\00\D1\00\00\00!\00\00\00" }>, align 8
@155 = private unnamed_addr constant [57 x i8] c"error computing start state because the look-behind byte ", align 1
@156 = private unnamed_addr constant [23 x i8] c" triggered a quit state", align 1
@157 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @155, [8 x i8] c"9\00\00\00\00\00\00\00", ptr @156, [8 x i8] c"\17\00\00\00\00\00\00\00" }>, align 8
@158 = private unnamed_addr constant [84 x i8] c"error computing start state because unanchored searches are not supported or enabled", align 1
@159 = private unnamed_addr constant [82 x i8] c"error computing start state because anchored searches are not supported or enabled", align 1
@160 = private unnamed_addr constant [78 x i8] c"error computing start state because anchored searches for a specific pattern (", align 1
@161 = private unnamed_addr constant [30 x i8] c") are not supported or enabled", align 1
@162 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @160, [8 x i8] c"N\00\00\00\00\00\00\00", ptr @161, [8 x i8] c"\1E\00\00\00\00\00\00\00" }>, align 8
@163 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17he3be51b3903f283fE" }>, align 8
@164 = private unnamed_addr constant [16 x i8] c"LazyStateIDError", align 1
@165 = private unnamed_addr constant [9 x i8] c"attempted", align 1
@166 = private unnamed_addr constant [30 x i8] c"regex engine failed at offset ", align 1
@167 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @166, [8 x i8] c"\1E\00\00\00\00\00\00\00" }>, align 8
@168 = private unnamed_addr constant [8 x i8] c"\FF\FF\FF\07\00\00\00\00", align 8
@169 = private unnamed_addr constant [34 x i8] c"failed to create LazyStateID from ", align 1
@170 = private unnamed_addr constant [16 x i8] c", which exceeds ", align 1
@171 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @169, [8 x i8] c"\22\00\00\00\00\00\00\00", ptr @170, [8 x i8] c"\10\00\00\00\00\00\00\00" }>, align 8
@172 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hfcb7ce78af316e54E" }>, align 8
@173 = private unnamed_addr constant [10 x i8] c"BuildError", align 1
@174 = private unnamed_addr constant [4 x i8] c"kind", align 1
@175 = private unnamed_addr constant [48 x i8] c"regex engine gave up to avoid quadratic behavior", align 1
@176 = private unnamed_addr constant [19 x i8] c"error parsing regex", align 1
@177 = private unnamed_addr constant [25 x i8] c"error with capture groups", align 1
@178 = private unnamed_addr constant [34 x i8] c"NFA contains Unicode word boundary", align 1
@179 = private unnamed_addr constant [21 x i8] c"attempted to compile ", align 1
@180 = private unnamed_addr constant [38 x i8] c" patterns, which exceeds the limit of ", align 1
@181 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @179, [8 x i8] c"\15\00\00\00\00\00\00\00", ptr @180, [8 x i8] c"&\00\00\00\00\00\00\00" }>, align 8
@182 = private unnamed_addr constant [40 x i8] c" NFA states, which exceeds the limit of ", align 1
@183 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @179, [8 x i8] c"\15\00\00\00\00\00\00\00", ptr @182, [8 x i8] c"(\00\00\00\00\00\00\00" }>, align 8
@184 = private unnamed_addr constant [52 x i8] c"heap usage during NFA compilation exceeded limit of ", align 1
@185 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @184, [8 x i8] c"4\00\00\00\00\00\00\00" }>, align 8
@186 = private unnamed_addr constant [20 x i8] c"capture group index ", align 1
@187 = private unnamed_addr constant [38 x i8] c" is invalid (too big or discontinuous)", align 1
@188 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @186, [8 x i8] c"\14\00\00\00\00\00\00\00", ptr @187, [8 x i8] c"&\00\00\00\00\00\00\00" }>, align 8
@189 = private unnamed_addr constant [64 x i8] c"currently captures must be disabled when compiling a reverse NFA", align 1
@190 = private unnamed_addr constant [120 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/regex-automata-0.4.10/src/nfa/thompson/compiler.rs\00", align 1
@191 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @190, [16 x i8] c"w\00\00\00\00\00\00\00\B7\02\00\00\0A\00\00\00" }>, align 8
@192 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hcca35babb79d3163E" }>, align 8
@193 = private unnamed_addr constant [6 x i8] c"Syntax", align 1
@194 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hcdea791b7af71feeE" }>, align 8
@195 = private unnamed_addr constant [8 x i8] c"Captures", align 1
@196 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hb33bee71d25921f7E" }>, align 8
@197 = private unnamed_addr constant [4 x i8] c"Word", align 1
@198 = private unnamed_addr constant [15 x i8] c"TooManyPatterns", align 1
@199 = private unnamed_addr constant [5 x i8] c"given", align 1
@200 = private unnamed_addr constant [5 x i8] c"limit", align 1
@201 = private unnamed_addr constant [13 x i8] c"TooManyStates", align 1
@202 = private unnamed_addr constant [17 x i8] c"ExceededSizeLimit", align 1
@203 = private unnamed_addr constant [19 x i8] c"InvalidCaptureIndex", align 1
@204 = private unnamed_addr constant [5 x i8] c"index", align 1
@205 = private unnamed_addr constant [19 x i8] c"UnsupportedCaptures", align 1
@206 = private unnamed_addr constant [122 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/regex-automata-0.4.10/src/nfa/thompson/range_trie.rs\00", align 1
@207 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @206, [16 x i8] c"y\00\00\00\00\00\00\00\B2\00\00\00\0A\00\00\00" }>, align 8

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define { i1, i8 } @"_ZN102_$LT$regex_automata..util..alphabet..ByteSetIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7221605471cf479aE"(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.promoted = load i64, ptr %i.a, align 8        ; 3 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !align !6
  %umax = tail call i64 @llvm.umax.i64(i64 %.promoted, i64 256)
  %exitcond.not2 = icmp ugt i64 %.promoted, 255
  br i1 %exitcond.not2, label %._crit_edge4, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %exitcond.not = icmp eq i64 %i.h, %umax
  br i1 %exitcond.not, label %._crit_edge4.loopexit, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  store i64 %i.h, ptr %i.a, align 8
  %i.c = icmp ult i64 %i.f, 256
  br label %._crit_edge4

._crit_edge4.loopexit:                            ; preds = %bb.b
  store i64 %i.h, ptr %i.a, align 8
  br label %._crit_edge4

._crit_edge4:                                     ; preds = %._crit_edge4.loopexit, %._crit_edge, %bb.a
  %.lcssa = phi i1 [ %i.c, %._crit_edge ], [ false, %bb.a ], [ false, %._crit_edge4.loopexit ]
  %.sroa.3.0 = phi i8 [ %i.g, %._crit_edge ], [ undef, %bb.a ], [ undef, %._crit_edge4.loopexit ]
  %i.d = insertvalue { i1, i8 } poison, i1 %.lcssa, 0
  %i.e = insertvalue { i1, i8 } %i.d, i8 %.sroa.3.0, 1
  ret { i1, i8 } %i.e

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.f = phi i64 [ %i.h, %bb.b ], [ %.promoted, %bb.a ] ; 4 uses
  %i.g = trunc nuw i64 %i.f to i8                 ; 2 uses
  %i.h = add nuw nsw i64 %i.f, 1                  ; 4 uses
  %.lobit.i = lshr i64 %i.f, 7
  %i.i = and i8 %i.g, 127
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.lobit.i
  %i.k = load i128, ptr %i.j, align 16, !alias.scope !27, !noundef !5
  %i.l = zext nneg i8 %i.i to i128
  %i.m = shl nuw i128 1, %i.l
  %i.n = and i128 %i.k, %i.m
  %.not = icmp eq i128 %i.n, 0
  br i1 %.not, label %bb.b, label %._crit_edge
}

; Function Attrs: nonlazybind uwtable
define range(i32 0, 16777219) i32 @"_ZN104_$LT$regex_automata..util..alphabet..ByteClassIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf6d5658801b330a5E"(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 4 uses
  %i.d = add i64 %i.c, 1                          ; 3 uses
  %i.e = load ptr, ptr %0, align 8, !nonnull !5, !align !7, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 255
  %i.g = load i8, ptr %i.f, align 1, !noundef !5  ; 2 uses
  %i.h = zext i8 %i.g to i64
  %i.i = add nuw nsw i64 %i.h, 2                  ; 2 uses
  %i.j = icmp eq i64 %i.d, %i.i
  br i1 %i.j, label %_ZN14regex_automata4util8alphabet4Unit3eoi17h7bde68dad5abe20fE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = icmp ult i64 %i.c, %i.i
  br i1 %i.k, label %bb.c, label %bb.e

_ZN14regex_automata4util8alphabet4Unit3eoi17h7bde68dad5abe20fE.exit: ; preds = %bb.a
  store i64 %i.d, ptr %i.b, align 8
  %i.l = zext i8 %i.g to i32
  %i.m = shl nuw nsw i32 %i.l, 8
  %.sroa.01.0.insert.insert.i = add nuw nsw i32 %i.m, 256
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.n = icmp samesign ugt i64 %i.c, 255
  br i1 %i.n, label %bb.d, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit", !prof !8

bb.d:                                             ; preds = %bb.c
  call void @_ZN4core6result13unwrap_failed17h8e46864fd8bf13c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @78, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @79, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #27
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit": ; preds = %bb.c
  %1 = trunc nuw nsw i64 %i.c to i32
  store i64 %i.d, ptr %i.b, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit", %_ZN14regex_automata4util8alphabet4Unit3eoi17h7bde68dad5abe20fE.exit
  %.sroa.4.sroa.0.0 = phi i32 [ %.sroa.01.0.insert.insert.i, %_ZN14regex_automata4util8alphabet4Unit3eoi17h7bde68dad5abe20fE.exit ], [ %1, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit" ], [ 0, %bb.b ]
  %.sroa.0.0 = phi i32 [ 1, %_ZN14regex_automata4util8alphabet4Unit3eoi17h7bde68dad5abe20fE.exit ], [ 0, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit" ], [ 2, %bb.b ]
  %.sroa.4.0.insert.shift = shl nuw nsw i32 %.sroa.4.sroa.0.0, 8
  %.sroa.0.0.insert.insert = or disjoint i32 %.sroa.4.0.insert.shift, %.sroa.0.0
  ret i32 %.sroa.0.0.insert.insert
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i24 0, -254) i24 @"_ZN107_$LT$regex_automata..util..alphabet..ByteSetRangeIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbfac22314004b0a8E"(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.promoted = load i64, ptr %i.a, align 8        ; 3 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !align !6 ; 3 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %.promoted, i64 256)
  %exitcond.not30 = icmp ugt i64 %.promoted, 255
  br i1 %exitcond.not30, label %.loopexit, label %.lr.ph31

bb.b:                                             ; preds = %.lr.ph31
  %exitcond.not = icmp eq i64 %i.e, %umax
  br i1 %exitcond.not, label %.loopexit.loopexit35, label %.lr.ph31

.loopexit.loopexit:                               ; preds = %.lr.ph, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit"
  %.sroa.4.0.ph = phi i8 [ -1, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit" ], [ %i.aa, %.lr.ph ]
  store i64 %i.ac, ptr %i.a, align 8
  br label %.loopexit

.loopexit.loopexit35:                             ; preds = %bb.b
  store i64 %i.e, ptr %i.a, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit35, %.loopexit.loopexit, %bb.a, %.lr.ph.preheader, %thread-pre-split
  %.sroa.4.0 = phi i8 [ %.sroa.4.0.ph, %.loopexit.loopexit ], [ -1, %thread-pre-split ], [ undef, %bb.a ], [ %i.d, %.lr.ph.preheader ], [ undef, %.loopexit.loopexit35 ]
  %.sroa.3.0 = phi i8 [ %i.d, %.loopexit.loopexit ], [ -1, %thread-pre-split ], [ undef, %bb.a ], [ %i.d, %.lr.ph.preheader ], [ undef, %.loopexit.loopexit35 ]
  %.sroa.0.0 = phi i8 [ 1, %.loopexit.loopexit ], [ 1, %thread-pre-split ], [ 0, %bb.a ], [ 1, %.lr.ph.preheader ], [ 0, %.loopexit.loopexit35 ]
  %.sroa.4.0.insert.ext = zext i8 %.sroa.4.0 to i24
  %.sroa.4.0.insert.shift = shl nuw i24 %.sroa.4.0.insert.ext, 16
  %.sroa.3.0.insert.ext = zext i8 %.sroa.3.0 to i24
  %.sroa.3.0.insert.shift = shl nuw nsw i24 %.sroa.3.0.insert.ext, 8
  %.sroa.3.0.insert.insert = or disjoint i24 %.sroa.3.0.insert.shift, %.sroa.4.0.insert.shift
  %.sroa.0.0.insert.ext = zext nneg i8 %.sroa.0.0 to i24
  %.sroa.0.0.insert.insert = or disjoint i24 %.sroa.3.0.insert.insert, %.sroa.0.0.insert.ext
  ret i24 %.sroa.0.0.insert.insert

.lr.ph31:                                         ; preds = %bb.a, %bb.b
  %i.c = phi i64 [ %i.e, %bb.b ], [ %.promoted, %bb.a ] ; 4 uses
  %i.d = trunc nuw i64 %i.c to i8                 ; 4 uses
  %i.e = add nuw nsw i64 %i.c, 1                  ; 7 uses
  %.lobit.i = lshr i64 %i.c, 7
  %i.f = and i8 %i.d, 127
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.lobit.i
  %i.h = load i128, ptr %i.g, align 16, !alias.scope !32, !noundef !5
  %i.i = zext nneg i8 %i.f to i128
  %i.j = shl nuw i128 1, %i.i
  %i.k = and i128 %i.h, %i.j
  %.not = icmp eq i128 %i.k, 0
  br i1 %.not, label %bb.b, label %thread-pre-split

thread-pre-split:                                 ; preds = %.lr.ph31
  store i64 %i.e, ptr %i.a, align 8
  %i.l = icmp ult i64 %i.c, 255
  br i1 %i.l, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %thread-pre-split
  %i.m = trunc nuw i64 %i.e to i8                 ; 2 uses
  %.lobit.i932 = lshr i64 %i.e, 7
  %i.n = and i8 %i.m, 127
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.lobit.i932
  %i.p = load i128, ptr %i.o, align 16, !alias.scope !33, !noundef !5
  %i.q = zext nneg i8 %i.n to i128
  %i.r = shl nuw i128 1, %i.q
  %i.s = and i128 %i.p, %i.r
  %.not1033 = icmp eq i128 %i.s, 0
  br i1 %.not1033, label %.loopexit, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit"

.lr.ph:                                           ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit"
  %i.t = trunc nuw i64 %i.ac to i8                ; 2 uses
  %.lobit.i9 = lshr i64 %i.ac, 7
  %i.u = and i8 %i.t, 127
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.lobit.i9
  %i.w = load i128, ptr %i.v, align 16, !alias.scope !33, !noundef !5
  %i.x = zext nneg i8 %i.u to i128
  %i.y = shl nuw i128 1, %i.x
  %i.z = and i128 %i.w, %i.y
  %.not10 = icmp eq i128 %i.z, 0
  br i1 %.not10, label %.loopexit.loopexit, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit"

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit": ; preds = %.lr.ph.preheader, %.lr.ph
  %i.aa = phi i8 [ %i.t, %.lr.ph ], [ %i.m, %.lr.ph.preheader ]
  %i.ab = phi i64 [ %i.ac, %.lr.ph ], [ %i.e, %.lr.ph.preheader ]
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 5 uses
  %exitcond19.not = icmp eq i64 %i.ac, 256
  br i1 %exitcond19.not, label %.loopexit.loopexit, label %.lr.ph
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 16777219) i32 @"_ZN108_$LT$regex_automata..util..alphabet..ByteClassElements$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf7e38fe575aa09f1E"(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.promoted = load i64, ptr %i.a, align 8        ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !align !7
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.05.0.copyload = load i32, ptr %i.c, align 8
  %.sroa.05.0.copyload.fr = freeze i32 %.sroa.05.0.copyload ; 3 uses
  %i.d = trunc i32 %.sroa.05.0.copyload.fr to i1
  %.sroa.4.0.extract.shift.i = lshr i32 %.sroa.05.0.copyload.fr, 8
  %.sroa.4.0.extract.trunc.i = trunc i32 %.sroa.4.0.extract.shift.i to i8
  br i1 %i.d, label %.split.us, label %.split.preheader

.split.preheader:                                 ; preds = %bb.a
  %umax = tail call i64 @llvm.umax.i64(i64 %.promoted, i64 256) ; 3 uses
  %exitcond.not31 = icmp ugt i64 %.promoted, 255
  br i1 %exitcond.not31, label %.split22.us, label %.lr.ph

.split.us:                                        ; preds = %bb.a
  %i.e = icmp ult i64 %.promoted, 256
  br i1 %i.e, label %.split22.us.thread, label %.split22.us

.split:                                           ; preds = %.lr.ph
  %exitcond.not = icmp eq i64 %i.i, %umax
  br i1 %exitcond.not, label %.split22.us.loopexit, label %.lr.ph

.split22.us.loopexit:                             ; preds = %.split
  store i64 %i.i, ptr %i.a, align 8
  br label %.split22.us

.split22.us:                                      ; preds = %.split22.us.loopexit, %.split.preheader, %.split.us
  %.us-phi23 = phi i64 [ %.promoted, %.split.us ], [ %umax, %.split.preheader ], [ %umax, %.split22.us.loopexit ]
  %i.f = icmp eq i64 %.us-phi23, 256
  br i1 %i.f, label %.split22.us.thread, label %bb.b

.split22.us.thread:                               ; preds = %.split.us, %.split22.us
  store i64 257, ptr %i.a, align 8
  %i.g = trunc i32 %.sroa.05.0.copyload.fr to i1  ; 2 uses
  %spec.select = select i1 %i.g, i32 65536, i32 0
  %spec.select17 = select i1 %i.g, i32 1, i32 2
  br label %bb.b

bb.b:                                             ; preds = %.split22.us.thread, %.split22.us, %bb.c
  %.sroa.4.sroa.0.0 = phi i32 [ %i.l, %bb.c ], [ 0, %.split22.us ], [ %spec.select, %.split22.us.thread ]
  %.sroa.0.0 = phi i32 [ 0, %bb.c ], [ 2, %.split22.us ], [ %spec.select17, %.split22.us.thread ]
  %.sroa.4.0.insert.shift = shl nuw nsw i32 %.sroa.4.sroa.0.0, 8
  %.sroa.0.0.insert.insert = or disjoint i32 %.sroa.4.0.insert.shift, %.sroa.0.0
  ret i32 %.sroa.0.0.insert.insert

.lr.ph:                                           ; preds = %.split.preheader, %.split
  %i.h = phi i64 [ %i.i, %.split ], [ %.promoted, %.split.preheader ] ; 3 uses
  %i.i = add i64 %i.h, 1                          ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.h
  %i.k = load i8, ptr %i.j, align 1, !noundef !5
  %.not = icmp eq i8 %i.k, %.sroa.4.0.extract.trunc.i
  br i1 %.not, label %bb.c, label %.split

bb.c:                                             ; preds = %.lr.ph
  store i64 %i.i, ptr %i.a, align 8
  %i.l = trunc nuw i64 %i.h to i32
  br label %bb.b
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define i64 @"_ZN113_$LT$regex_automata..util..alphabet..ByteClassElementRanges$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb127a1c5576b45d0E"(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.c = load ptr, ptr %i.a, align 8, !alias.scope !37, !nonnull !5, !align !7
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.05.0.copyload.i = load i32, ptr %i.d, align 8, !alias.scope !37
  %.sroa.05.0.copyload.fr.i = freeze i32 %.sroa.05.0.copyload.i ; 2 uses
  %i.e = trunc i32 %.sroa.05.0.copyload.fr.i to i1
  %.sroa.4.0.extract.shift.i.i = lshr i32 %.sroa.05.0.copyload.fr.i, 8
  %.sroa.4.0.extract.trunc.i.i = trunc i32 %.sroa.4.0.extract.shift.i.i to i8
  %.promoted = load i64, ptr %i.b, align 8, !alias.scope !37 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 3 uses
  br i1 %i.e, label %.split.us.i.us.preheader, label %.split.preheader.i.preheader

.split.preheader.i.preheader:                     ; preds = %bb.a
  %exitcond.not.i113116 = icmp ugt i64 %.promoted, 255
  br i1 %exitcond.not.i113116, label %.split22.us.i, label %.lr.ph

.split.us.i.us.preheader:                         ; preds = %bb.a
  %or.cond = icmp ult i64 %.promoted, 257
  br i1 %or.cond, label %select.unfold.us.peel, label %.loopexit

select.unfold.us.peel:                            ; preds = %.split.us.i.us.preheader
  store i64 257, ptr %i.b, align 8, !alias.scope !38
  %.sroa.0.0.copyload.us.peel = load i8, ptr %0, align 8 ; 2 uses
  %.sroa.5.sroa.0.0.copyload.us.peel = load i56, ptr %.sroa.5.0..sroa_idx, align 1
  %.not68.us.peel = icmp eq i8 %.sroa.0.0.copyload.us.peel, 2
  br i1 %.not68.us.peel, label %.loopexit.loopexit.loopexit, label %.split98.us

.lr.ph:                                           ; preds = %.split.preheader.i.preheader, %.split.preheader.i
  %umax.i118 = phi i64 [ %umax.i, %.split.preheader.i ], [ 256, %.split.preheader.i.preheader ]
  %.promoted.i94117 = phi i64 [ %i.h, %.split.preheader.i ], [ %.promoted, %.split.preheader.i.preheader ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37)
  br label %bb.b

.split.i:                                         ; preds = %bb.b
  %exitcond.not.i = icmp eq i64 %i.h, %umax.i118
  br i1 %exitcond.not.i, label %.split22.us.i.loopexit, label %bb.b

.split22.us.i.loopexit:                           ; preds = %.split.i
  store i64 %i.h, ptr %i.b, align 8, !alias.scope !37
  br label %.split22.us.i

.split22.us.i:                                    ; preds = %.split.preheader.i, %.split22.us.i.loopexit, %.split.preheader.i.preheader
  %.promoted.i94.lcssa = phi i64 [ %.promoted.i94117, %.split22.us.i.loopexit ], [ %.promoted, %.split.preheader.i.preheader ], [ %i.h, %.split.preheader.i ]
  %i.f = icmp ult i64 %.promoted.i94.lcssa, 257
  br i1 %i.f, label %.split22.us.thread.i, label %.loopexit

.split22.us.thread.i:                             ; preds = %.split22.us.i
  store i64 257, ptr %i.b, align 8, !alias.scope !37
  br label %.loopexit

bb.b:                                             ; preds = %.lr.ph, %.split.i
  %i.g = phi i64 [ %.promoted.i94117, %.lr.ph ], [ %i.h, %.split.i ] ; 6 uses
  %i.h = add i64 %i.g, 1                          ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.g
  %i.j = load i8, ptr %i.i, align 1, !noalias !37, !noundef !5
  %.not.i = icmp eq i8 %i.j, %.sroa.4.0.extract.trunc.i.i
  br i1 %.not.i, label %select.unfold, label %.split.i

select.unfold:                                    ; preds = %bb.b
  store i64 %i.h, ptr %i.b, align 8, !alias.scope !37
  %.sroa.0.0.copyload = load i8, ptr %0, align 8  ; 3 uses
  %.sroa.5.sroa.0.0.copyload = load i56, ptr %.sroa.5.0..sroa_idx, align 1 ; 5 uses
  %.not68 = icmp eq i8 %.sroa.0.0.copyload, 2
  br i1 %.not68, label %bb.e, label %bb.d

.loopexit.loopexit.loopexit:                      ; preds = %select.unfold.us.peel
  store i64 72057598349672449, ptr %0, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37)
  br label %.loopexit

.loopexit:                                        ; preds = %.split.us.i.us.preheader, %.loopexit.loopexit.loopexit, %.split22.us.thread.i, %.split22.us.i
  %.sroa.0.0.copyload1 = load i8, ptr %0, align 8
  %.sroa.5.sroa.0.0.copyload6 = load i56, ptr %.sroa.5.0..sroa_idx, align 1
  store i8 2, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %.split98.us, %.loopexit
  %.sroa.5.sroa.0.0 = phi i56 [ %.us-phi101, %.split98.us ], [ %.sroa.5.sroa.0.0.copyload6, %.loopexit ]
  %.sroa.0.0 = phi i8 [ %.us-phi100.a, %.split98.us ], [ %.sroa.0.0.copyload1, %.loopexit ]
  %.sroa.5.0.insert.ext = zext i56 %.sroa.5.sroa.0.0 to i64
  %.sroa.5.0.insert.shift = shl nuw i64 %.sroa.5.0.insert.ext, 8
  %.sroa.0.0.insert.ext = zext i8 %.sroa.0.0 to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.shift, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert

bb.d:                                             ; preds = %select.unfold
  %i.k = and i56 %.sroa.5.sroa.0.0.copyload, 16777216
  %.not71 = icmp eq i56 %i.k, 0
  %.sroa.461.0.extract.shift69 = lshr i56 %.sroa.5.sroa.0.0.copyload, 32
  %i.l = and i56 %.sroa.461.0.extract.shift69, 255
  %sum.shift = lshr i56 %.sroa.5.sroa.0.0.copyload, 40
  %.sink = select i1 %.not71, i56 %i.l, i56 %sum.shift
  %narrow = add nuw nsw i56 %.sink, 1
  %i.m = zext nneg i56 %narrow to i64
  %i.n = and i64 %i.g, 255
  %.not73.not = icmp eq i64 %i.n, %i.m
  br i1 %.not73.not, label %bb.f, label %.split98.us

bb.e:                                             ; preds = %select.unfold
  %.sroa.4.0.insert.insert = mul nuw i64 %i.g, 1099511628032
  br label %.split.preheader.i

.split.preheader.i:                               ; preds = %bb.f, %bb.e
  %storemerge = phi i64 [ %.sroa.4.0.insert.insert, %bb.e ], [ %.sroa.052.0.insert.insert, %bb.f ]
  store i64 %storemerge, ptr %0, align 8
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 256)
  %exitcond.not.i113 = icmp ugt i64 %i.h, 255
  br i1 %exitcond.not.i113, label %.split22.us.i, label %.lr.ph

bb.f:                                             ; preds = %bb.d
  %.sroa.655.0.insert.shift = shl nuw i64 %i.g, 40
  %i.o = shl i56 %.sroa.5.sroa.0.0.copyload, 8
  %i.p = and i56 %i.o, 4294967040
  %.sroa.453.0.insert.shift = zext nneg i56 %i.p to i64
  %.sroa.453.0.insert.insert = or disjoint i64 %.sroa.655.0.insert.shift, %.sroa.453.0.insert.shift
  %.sroa.052.0.insert.ext = zext i8 %.sroa.0.0.copyload to i64
  %.sroa.052.0.insert.insert = or disjoint i64 %.sroa.453.0.insert.insert, %.sroa.052.0.insert.ext
  br label %.split.preheader.i

.split98.us:                                      ; preds = %bb.d, %select.unfold.us.peel
  %.us-phi = phi i64 [ 1, %select.unfold.us.peel ], [ 0, %bb.d ] ; 2 uses
  %.us-phi99.a = phi i64 [ 65536, %select.unfold.us.peel ], [ %i.g, %bb.d ] ; 2 uses
  %.us-phi100.a = phi i8 [ %.sroa.0.0.copyload.us.peel, %select.unfold.us.peel ], [ %.sroa.0.0.copyload, %bb.d ]
  %.us-phi101 = phi i56 [ %.sroa.5.sroa.0.0.copyload.us.peel, %select.unfold.us.peel ], [ %.sroa.5.sroa.0.0.copyload, %bb.d ]
  %.sroa.6.0.insert.shift = shl nuw i64 %.us-phi99.a, 40
  %.sroa.549.0.insert.shift = shl nuw nsw i64 %.us-phi, 32
  %.sroa.549.0.insert.insert = or disjoint i64 %.sroa.549.0.insert.shift, %.sroa.6.0.insert.shift
  %.sroa.4.0.insert.shift46 = shl nuw nsw i64 %.us-phi99.a, 8
  %.sroa.4.0.insert.insert48 = add nuw nsw i64 %.sroa.549.0.insert.insert, %.sroa.4.0.insert.shift46
  %.sroa.044.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.insert48, %.us-phi
  store i64 %.sroa.044.0.insert.insert, ptr %0, align 8
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define range(i32 0, 16777219) i32 @"_ZN115_$LT$regex_automata..util..alphabet..ByteClassRepresentatives$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h36fa6e7393f7296dE"(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.c = load i64, ptr %0, align 8, !range !9, !noundef !5 ; 2 uses
  %i.d = trunc nuw i64 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %.sroa.04.0 = select i1 %i.d, i64 %i.f, i64 256 ; 3 uses
  %.promoted = load i64, ptr %i.b, align 8        ; 10 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5, !align !7 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = load i8, ptr %i.i, align 8, !range !10
  %.fr43 = freeze i8 %i.j
  %i.k = trunc i8 %.fr43 to i1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 33 ; 2 uses
  %i.m = load i8, ptr %i.l, align 1
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.a
  %umax = tail call i64 @llvm.umax.i64(i64 %.sroa.04.0, i64 %.promoted) ; 3 uses
  %umax47 = tail call i64 @llvm.umax.i64(i64 %.promoted, i64 256)
  %exitcond.not56.not = icmp ult i64 %.promoted, %.sroa.04.0
  br i1 %exitcond.not56.not, label %.lr.ph, label %.split34.us

.split.us:                                        ; preds = %bb.a
  %i.n = icmp ult i64 %.promoted, %.sroa.04.0
  br i1 %i.n, label %bb.b, label %.split34.us

bb.b:                                             ; preds = %.split.us
  %i.o = icmp ugt i64 %.promoted, 255
  br i1 %i.o, label %.split38.us, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit.us", !prof !8

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit.us": ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 %.promoted
  %i.q = load i8, ptr %i.p, align 1, !noundef !5
  %i.r = add nuw nsw i64 %.promoted, 1
  store i64 %i.r, ptr %i.b, align 8
  br label %.split40

.split:                                           ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit"
  %exitcond.not = icmp eq i64 %i.v, %umax
  br i1 %exitcond.not, label %.split34.us, label %.lr.ph

.split34.us:                                      ; preds = %.split, %.split.preheader, %.split.us
  %.us-phi35 = phi i64 [ %.promoted, %.split.us ], [ %umax, %.split.preheader ], [ %umax, %.split ]
  %.not = icmp ne i64 %.us-phi35, -1
  %.not16 = icmp eq i64 %i.c, 0
  %or.cond = and i1 %.not, %.not16
  br i1 %or.cond, label %_ZN14regex_automata4util8alphabet4Unit3eoi17h7bde68dad5abe20fE.exit, label %bb.c

.lr.ph:                                           ; preds = %.split.preheader, %.split
  %i.s = phi i64 [ %i.v, %.split ], [ %.promoted, %.split.preheader ] ; 4 uses
  %exitcond48 = icmp eq i64 %i.s, %umax47
  br i1 %exitcond48, label %.split38.us, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit", !prof !8

.split38.us:                                      ; preds = %.lr.ph, %bb.b
  call void @_ZN4core6result13unwrap_failed17h8e46864fd8bf13c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @78, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @79, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #27
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit": ; preds = %.lr.ph
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !noundef !5  ; 2 uses
  %i.v = add i64 %i.s, 1                          ; 3 uses
  store i64 %i.v, ptr %i.b, align 8
  %.not17 = icmp eq i8 %i.m, %i.u
  br i1 %.not17, label %.split, label %.split40

_ZN14regex_automata4util8alphabet4Unit3eoi17h7bde68dad5abe20fE.exit: ; preds = %.split34.us
  store i64 -1, ptr %i.b, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 255
  %i.x = load i8, ptr %i.w, align 1, !noundef !5
  %i.y = zext i8 %i.x to i32
  %i.z = shl nuw nsw i32 %i.y, 8
  %.sroa.01.0.insert.insert.i = add nuw nsw i32 %i.z, 256
  br label %bb.c

bb.c:                                             ; preds = %.split34.us, %.split40, %_ZN14regex_automata4util8alphabet4Unit3eoi17h7bde68dad5abe20fE.exit
  %.sroa.4.sroa.0.0 = phi i32 [ %1, %.split40 ], [ %.sroa.01.0.insert.insert.i, %_ZN14regex_automata4util8alphabet4Unit3eoi17h7bde68dad5abe20fE.exit ], [ 0, %.split34.us ]
  %.sroa.0.0 = phi i32 [ 0, %.split40 ], [ 1, %_ZN14regex_automata4util8alphabet4Unit3eoi17h7bde68dad5abe20fE.exit ], [ 2, %.split34.us ]
  %.sroa.4.0.insert.shift = shl nuw nsw i32 %.sroa.4.sroa.0.0, 8
  %.sroa.0.0.insert.insert = or disjoint i32 %.sroa.4.0.insert.shift, %.sroa.0.0
  ret i32 %.sroa.0.0.insert.insert

.split40:                                         ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit", %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit.us"
  %.us-phi41 = phi i64 [ %.promoted, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit.us" ], [ %i.s, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit" ]
  %.us-phi42 = phi i8 [ %i.q, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit.us" ], [ %i.u, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit" ]
  %1 = trunc nuw i64 %.us-phi41 to i32
  store i8 1, ptr %i.i, align 8
  store i8 %.us-phi42, ptr %i.l, align 1
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @"_ZN127_$LT$regex_automata..meta..error..RetryError$u20$as$u20$core..convert..From$LT$regex_automata..util..search..MatchError$GT$$GT$4from17h5ed356150666ec72E"(ptr noalias noundef nonnull align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %0, ptr %i.c, align 8, !noalias !41
  %i.d = load i8, ptr %0, align 8, !range !11, !alias.scope !41, !noundef !5
  %switch.i = icmp samesign ult i8 %i.d, 2
  br i1 %switch.i, label %"_ZN131_$LT$regex_automata..meta..error..RetryFailError$u20$as$u20$core..convert..From$LT$regex_automata..util..search..MatchError$GT$$GT$4from17hda954083bc3c728aE.exit", label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !41
  store ptr %i.c, ptr %i.a, align 8, !noalias !41
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZN79_$LT$regex_automata..util..search..MatchError$u20$as$u20$core..fmt..Display$GT$3fmt17h77c076b8983fdac4E", ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !41
  store ptr @6, ptr %i.b, align 8, !noalias !41
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.e, align 8, !noalias !41
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.f, align 8, !noalias !41
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.a, ptr %i.g, align 8, !noalias !41
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 1, ptr %i.h, align 8, !noalias !41
  invoke void @_ZN4core9panicking9panic_fmt17h62031895f6e012daE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #27
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  %.val.i = load ptr, ptr %i.c, align 8, !noalias !41, !nonnull !5, !noundef !5
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 16, i64 noundef 8) #28
  resume { ptr, i32 } %i.i

"_ZN131_$LT$regex_automata..meta..error..RetryFailError$u20$as$u20$core..convert..From$LT$regex_automata..util..search..MatchError$GT$$GT$4from17hda954083bc3c728aE.exit": ; preds = %bb.a
  %.sroa.0.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.i = load i64, ptr %.sroa.0.0.in.i, align 8, !alias.scope !41, !noundef !5
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %0, i64 noundef 16, i64 noundef 8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.j = insertvalue { i64, i64 } { i64 1, i64 poison }, i64 %.sroa.0.0.i, 1
  ret { i64, i64 } %i.j
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN12regex_syntax3hir8interval20IntervalSet$LT$I$GT$12canonicalize17hb293181898d24d37E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.val = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.val15 = load i64, ptr %i.d, align 8, !noundef !5 ; 9 uses
  %i.e = icmp ult i64 %.val15, 2
  br i1 %i.e, label %"_ZN12regex_syntax3hir8interval20IntervalSet$LT$I$GT$12is_canonical17hfca745149a102321E.exit", label %.lr.ph

bb.b:                                             ; preds = %bb.c
  %i.f = add i64 %.sroa.6.0.i28, -1
  %i.g = icmp ult i64 %.sroa.6.0.i28, 3
  br i1 %i.g, label %"_ZN12regex_syntax3hir8interval20IntervalSet$LT$I$GT$12is_canonical17hfca745149a102321E.exit", label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i29 = phi ptr [ %i.h, %bb.b ], [ %.val, %bb.a ] ; 5 uses
  %.sroa.6.0.i28 = phi i64 [ %i.f, %bb.b ], [ %.val15, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i29, i64 2 ; 3 uses
  %.val.i = load i8, ptr %.sroa.0.0.i29, align 1, !noundef !5 ; 2 uses
  %i.i = getelementptr i8, ptr %.sroa.0.0.i29, i64 1
  %.val5.i = load i8, ptr %i.i, align 1
  %.val6.i = load i8, ptr %i.h, align 1, !noundef !5 ; 2 uses
  %i.j = getelementptr i8, ptr %.sroa.0.0.i29, i64 3
  %.val7.i = load i8, ptr %i.j, align 1
  %i.k = icmp eq i8 %.val.i, %.val6.i
  %i.l = icmp uge i8 %.val5.i, %.val7.i
  %i.m = icmp uge i8 %.val.i, %.val6.i
  %i.n = select i1 %i.k, i1 %i.l, i1 %i.m
  br i1 %i.n, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = tail call noundef zeroext i1 @_ZN12regex_syntax3hir8interval8Interval13is_contiguous17h3e73075cb5faf872E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(2) %.sroa.0.0.i29, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(2) %i.h)
  br i1 %i.o, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c, %.lr.ph
  %i.p = icmp ult i64 %.val15, 21
  br i1 %i.p, label %bb.f, label %bb.e, !prof !13

bb.e:                                             ; preds = %bb.d
  call void @_ZN4core5slice4sort6stable14driftsort_main17he9aeaf4733698ea7E(ptr noalias noundef nonnull align 1 %.val, i64 noundef %.val15, ptr noalias noundef nonnull align 1 %i.a)
  br label %_ZN5alloc5slice11stable_sort17h2ce970bf32c74ba1E.exit.thread

bb.f:                                             ; preds = %bb.d
  call void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17he398109b986b42cbE(ptr noalias noundef nonnull align 1 %.val, i64 noundef %.val15, i64 noundef 1, ptr noalias noundef nonnull align 1 %i.a)
  br label %_ZN5alloc5slice11stable_sort17h2ce970bf32c74ba1E.exit.thread

_ZN5alloc5slice11stable_sort17h2ce970bf32c74ba1E.exit.thread: ; preds = %bb.e, %bb.f
  %i.q = icmp ult i64 %.val15, 4611686018427387904
  call void @llvm.assume(i1 %i.q)
  br label %.preheader.split

bb.g:                                             ; preds = %.backedge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5drain17h3f2c19167bda70e1E"(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.val15)
  call void @"_ZN79_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf0fdc92bb237b50aE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %"_ZN12regex_syntax3hir8interval20IntervalSet$LT$I$GT$12is_canonical17hfca745149a102321E.exit"

.preheader.split:                                 ; preds = %_ZN5alloc5slice11stable_sort17h2ce970bf32c74ba1E.exit.thread, %.backedge
  %.sroa.05.019 = phi i64 [ %i.r, %.backedge ], [ 0, %_ZN5alloc5slice11stable_sort17h2ce970bf32c74ba1E.exit.thread ] ; 5 uses
  %i.r = add nuw nsw i64 %.sroa.05.019, 1         ; 2 uses
  %i.s = load i64, ptr %i.d, align 8, !noundef !5 ; 4 uses
  %i.t = icmp ult i64 %i.s, 4611686018427387904
  call void @llvm.assume(i1 %i.t)
  %i.u = icmp samesign ugt i64 %i.s, %.val15
  br i1 %i.u, label %bb.h, label %bb.i

"_ZN12regex_syntax3hir8interval20IntervalSet$LT$I$GT$12is_canonical17hfca745149a102321E.exit": ; preds = %bb.b, %bb.a, %bb.g
  ret void

bb.h:                                             ; preds = %.preheader.split
  %i.v = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.w = getelementptr [2 x i8], ptr %i.v, i64 %i.s
  %i.x = getelementptr i8, ptr %i.w, i64 -2       ; 2 uses
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %.sroa.05.019
  %i.z = call i24 @_ZN12regex_syntax3hir8interval8Interval5union17h29e2fce874c9f12fE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(2) %i.x, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(2) %i.y) ; 2 uses
  %i.aa = trunc i24 %i.z to i1
  br i1 %i.aa, label %bb.j, label %._crit_edge

._crit_edge:                                      ; preds = %bb.h
  %.pre = load i64, ptr %i.d, align 8
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %.preheader.split
  %i.ab = phi i64 [ %.pre, %._crit_edge ], [ %i.s, %.preheader.split ] ; 5 uses
  %i.ac = icmp ult i64 %.sroa.05.019, %i.ab
  br i1 %i.ac, label %bb.k, label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.ad = lshr i24 %i.z, 8
  %i.ae = trunc nuw i24 %i.ad to i16
  store i16 %i.ae, ptr %i.x, align 1
  br label %.backedge

.backedge:                                        ; preds = %bb.j, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h27b1eed70b5f15cbE.exit"
  %exitcond.not = icmp eq i64 %i.r, %.val15
  br i1 %exitcond.not, label %bb.g, label %.preheader.split

bb.k:                                             ; preds = %bb.i
  %i.af = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %.sroa.05.019 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !noundef !5
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  %i.aj = load i8, ptr %i.ai, align 1, !noundef !5
  %i.ak = load i64, ptr %0, align 8, !range !14, !alias.scope !44, !noundef !5
  %i.al = icmp eq i64 %i.ab, %i.ak
  br i1 %i.al, label %bb.l, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h27b1eed70b5f15cbE.exit"

bb.l:                                             ; preds = %bb.k
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h5cf6cde9b26f3815E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  %.pre21 = load ptr, ptr %i.c, align 8, !alias.scope !44
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h27b1eed70b5f15cbE.exit"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h27b1eed70b5f15cbE.exit": ; preds = %bb.k, %bb.l
  %i.am = phi ptr [ %i.af, %bb.k ], [ %.pre21, %bb.l ]
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.ab ; 2 uses
  store i8 %i.ah, ptr %i.an, align 1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  store i8 %i.aj, ptr %i.ao, align 1
  %i.ap = add i64 %i.ab, 1
  store i64 %i.ap, ptr %i.d, align 8, !alias.scope !44
  br label %.backedge

bb.m:                                             ; preds = %bb.i
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %.sroa.05.019, i64 noundef %i.ab, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #27
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN12regex_syntax3hir8interval20IntervalSet$LT$I$GT$12canonicalize17hcf429b4128cdf34dE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.val = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.val14 = load i64, ptr %i.d, align 8, !noundef !5 ; 9 uses
  %i.e = icmp ult i64 %.val14, 2
  br i1 %i.e, label %"_ZN12regex_syntax3hir8interval20IntervalSet$LT$I$GT$12is_canonical17hf9f3bfae7d4cde9dE.exit", label %.lr.ph

bb.b:                                             ; preds = %bb.c
  %i.f = add i64 %.sroa.6.0.i28, -1
  %i.g = icmp ult i64 %.sroa.6.0.i28, 3
  br i1 %i.g, label %"_ZN12regex_syntax3hir8interval20IntervalSet$LT$I$GT$12is_canonical17hf9f3bfae7d4cde9dE.exit", label %.lr.ph
end_hunk_0
begin_hunk_1_@_ZN14regex_automata4util10sparse_set10SparseSets3new17h0b49be39fc97afd5E:bb.a

bb.g:                                             ; preds = %.noexc6.i7, %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr64drop_in_place$LT$regex_automata..util..sparse_set..SparseSet$GT$17hde5a35cd1a8bce5aE"(ptr noalias noundef align 8 dereferenceable(56) %i.a) #29
          to label %.body unwind label %bb.h, !noalias !294

bb.h:                                             ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #30, !noalias !294
  unreachable

.body:                                            ; preds = %bb.g
  invoke fastcc void @"_ZN4core3ptr64drop_in_place$LT$regex_automata..util..sparse_set..SparseSet$GT$17hde5a35cd1a8bce5aE"(ptr noalias noundef align 8 dereferenceable(56) %i.e) #29
          to label %common.resume unwind label %bb.j

bb.i:                                             ; preds = %.noexc6.i7
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.s, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !294
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.j:                                             ; preds = %.body
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #30
  unreachable
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define hidden void @_ZN14regex_automata4util8alphabet11ByteClasses10from_bytes17hfbefd82cf3d2c707E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([272 x i8]) align 8 captures(none) dereferenceable(272) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 26 uses
  %i.b = icmp ult i64 %2, 256
  br i1 %i.b, label %bb.b, label %vector.ph

vector.ph:                                        ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %wide.load = load <16 x i8>, ptr %1, align 1
  %wide.load65 = load <16 x i8>, ptr %i.c, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store <16 x i8> %wide.load, ptr %i.a, align 16
  store <16 x i8> %wide.load65, ptr %i.d, align 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %wide.load.1 = load <16 x i8>, ptr %i.e, align 1
  %wide.load65.1 = load <16 x i8>, ptr %i.f, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store <16 x i8> %wide.load.1, ptr %i.g, align 16
  store <16 x i8> %wide.load65.1, ptr %i.h, align 16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 80
  %wide.load.2 = load <16 x i8>, ptr %i.i, align 1
  %wide.load65.2 = load <16 x i8>, ptr %i.j, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store <16 x i8> %wide.load.2, ptr %i.k, align 16
  store <16 x i8> %wide.load65.2, ptr %i.l, align 16
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 112
  %wide.load.3 = load <16 x i8>, ptr %i.m, align 1
  %wide.load65.3 = load <16 x i8>, ptr %i.n, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store <16 x i8> %wide.load.3, ptr %i.o, align 16
  store <16 x i8> %wide.load65.3, ptr %i.p, align 16
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 144
  %wide.load.4 = load <16 x i8>, ptr %i.q, align 1
  %wide.load65.4 = load <16 x i8>, ptr %i.r, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store <16 x i8> %wide.load.4, ptr %i.s, align 16
  store <16 x i8> %wide.load65.4, ptr %i.t, align 16
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 176
  %wide.load.5 = load <16 x i8>, ptr %i.u, align 1
  %wide.load65.5 = load <16 x i8>, ptr %i.v, align 1
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store <16 x i8> %wide.load.5, ptr %i.w, align 16
  store <16 x i8> %wide.load65.5, ptr %i.x, align 16
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 208
  %wide.load.6 = load <16 x i8>, ptr %i.y, align 1
  %wide.load65.6 = load <16 x i8>, ptr %i.z, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  store <16 x i8> %wide.load.6, ptr %i.aa, align 16
  store <16 x i8> %wide.load65.6, ptr %i.ab, align 16
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 240
  %wide.load.7 = load <16 x i8>, ptr %i.ac, align 1
  %wide.load65.7 = load <16 x i8>, ptr %i.ad, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  store <16 x i8> %wide.load.7, ptr %i.ae, align 16
  store <16 x i8> %wide.load65.7, ptr %i.af, align 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 255
  %i.ah = load i8, ptr %i.ag, align 1, !noundef !5
  %i.ai = zext i8 %i.ah to i64
  %i.aj = add nuw nsw i64 %i.ai, 2                ; 4 uses
  br label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.ak, align 8
  %.sroa.343.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @25, ptr %.sroa.343.0..sroa_idx, align 8
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 14, ptr %.sroa.444.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  br label %bb.j

bb.c:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.05.0.idx64
  %.sroa.05.0.ptr.1 = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  %i.am = load i8, ptr %.sroa.05.0.ptr.1, align 1, !noundef !5
  %i.an = zext i8 %i.am to i64
  %.not56.1 = icmp samesign ugt i64 %i.aj, %i.an
  br i1 %.not56.1, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.05.0.idx64
  %.sroa.05.0.ptr.2 = getelementptr inbounds nuw i8, ptr %i.ao, i64 2
  %i.ap = load i8, ptr %.sroa.05.0.ptr.2, align 2, !noundef !5
  %i.aq = zext i8 %i.ap to i64
  %.not56.2 = icmp samesign ugt i64 %i.aj, %i.aq
  br i1 %.not56.2, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.05.0.idx64
  %.sroa.05.0.ptr.3 = getelementptr inbounds nuw i8, ptr %i.ar, i64 3
  %i.as = load i8, ptr %.sroa.05.0.ptr.3, align 1, !noundef !5
  %i.at = zext i8 %i.as to i64
  %.not56.3 = icmp samesign ugt i64 %i.aj, %i.at
  br i1 %.not56.3, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %.sroa.05.0.add.3 = add nuw nsw i64 %.sroa.05.0.idx64, 4 ; 2 uses
  %i.au = icmp eq i64 %.sroa.05.0.add.3, 256
  br i1 %i.au, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %vector.ph
  %.sroa.05.0.idx64 = phi i64 [ 0, %vector.ph ], [ %.sroa.05.0.add.3, %bb.f ] ; 5 uses
  %.sroa.05.0.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.05.0.idx64
  %i.av = load i8, ptr %.sroa.05.0.ptr, align 4, !noundef !5
  %i.aw = zext i8 %i.av to i64
  %.not56 = icmp samesign ugt i64 %i.aj, %i.aw
  br i1 %.not56, label %bb.c, label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.ax, ptr noundef nonnull align 16 dereferenceable(256) %i.a, i64 256, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i64 256, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.j

bb.i:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.g
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.ay, align 8
  %.sroa.553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @24, ptr %.sroa.553.0..sroa_idx, align 8
  %.sroa.654.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 49, ptr %.sroa.654.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_ZN14regex_automata4util8alphabet11ByteClasses15representatives17h8db7d37bf91abb68E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 8), (16, 33)) %0, ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(256) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.b, align 8
  store i64 0, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_ZN14regex_automata4util8alphabet11ByteClasses15representatives17hb8261f7fe13a1e8eE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 33)) %0, ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(256) %1, i24 %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i24 %2 to i8
  %.sroa.2.0.extract.shift = lshr i24 %2, 8
  %.sroa.3.0.extract.shift = lshr i24 %2, 16
  %.sroa.3.0.extract.trunc = zext nneg i24 %.sroa.3.0.extract.shift to i64
  %3 = icmp eq i8 %.sroa.0.0.extract.trunc, 0
  %i.a = zext i1 %3 to i64
  %.sroa.47.0 = add nuw nsw i64 %.sroa.3.0.extract.trunc, %i.a
  %i.b = and i24 %.sroa.2.0.extract.shift, 255
  %i.c = zext nneg i24 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.c, ptr %i.e, align 8
  store i64 1, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.47.0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.g, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN14regex_automata4util8alphabet11ByteClasses8write_to17hef15cf6f7a2c6116E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 1 captures(none) dereferenceable(256) %1, ptr noalias nofree noundef nonnull writeonly align 1 captures(none) %2, i64 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = icmp ult i64 %3, 256
  br i1 %i.a, label %bb.b, label %vector.ph

vector.ph:                                        ; preds = %bb.a
  %i.b = getelementptr i8, ptr %2, i64 224
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %wide.load = load <16 x i8>, ptr %1, align 1
  %wide.load24 = load <16 x i8>, ptr %i.c, align 1
  %i.d = getelementptr i8, ptr %2, i64 16
  store <16 x i8> %wide.load, ptr %2, align 1
  store <16 x i8> %wide.load24, ptr %i.d, align 1
  %next.gep.1 = getelementptr i8, ptr %2, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %wide.load.1 = load <16 x i8>, ptr %i.e, align 1
  %wide.load24.1 = load <16 x i8>, ptr %i.f, align 1
  %i.g = getelementptr i8, ptr %2, i64 48
  store <16 x i8> %wide.load.1, ptr %next.gep.1, align 1
  store <16 x i8> %wide.load24.1, ptr %i.g, align 1
  %next.gep.2 = getelementptr i8, ptr %2, i64 64
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 80
  %wide.load.2 = load <16 x i8>, ptr %i.h, align 1
  %wide.load24.2 = load <16 x i8>, ptr %i.i, align 1
  %i.j = getelementptr i8, ptr %2, i64 80
  store <16 x i8> %wide.load.2, ptr %next.gep.2, align 1
  store <16 x i8> %wide.load24.2, ptr %i.j, align 1
  %next.gep.3 = getelementptr i8, ptr %2, i64 96
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 112
  %wide.load.3 = load <16 x i8>, ptr %i.k, align 1
  %wide.load24.3 = load <16 x i8>, ptr %i.l, align 1
  %i.m = getelementptr i8, ptr %2, i64 112
  store <16 x i8> %wide.load.3, ptr %next.gep.3, align 1
  store <16 x i8> %wide.load24.3, ptr %i.m, align 1
  %next.gep.4 = getelementptr i8, ptr %2, i64 128
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 144
  %wide.load.4 = load <16 x i8>, ptr %i.n, align 1
  %wide.load24.4 = load <16 x i8>, ptr %i.o, align 1
  %i.p = getelementptr i8, ptr %2, i64 144
  store <16 x i8> %wide.load.4, ptr %next.gep.4, align 1
  store <16 x i8> %wide.load24.4, ptr %i.p, align 1
  %next.gep.5 = getelementptr i8, ptr %2, i64 160
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 176
  %wide.load.5 = load <16 x i8>, ptr %i.q, align 1
  %wide.load24.5 = load <16 x i8>, ptr %i.r, align 1
  %i.s = getelementptr i8, ptr %2, i64 176
  store <16 x i8> %wide.load.5, ptr %next.gep.5, align 1
  store <16 x i8> %wide.load24.5, ptr %i.s, align 1
  %next.gep.6 = getelementptr i8, ptr %2, i64 192
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 208
  %wide.load.6 = load <16 x i8>, ptr %i.t, align 1
  %wide.load24.6 = load <16 x i8>, ptr %i.u, align 1
  %i.v = getelementptr i8, ptr %2, i64 208
  store <16 x i8> %wide.load.6, ptr %next.gep.6, align 1
  store <16 x i8> %wide.load24.6, ptr %i.v, align 1
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.x = load i8, ptr %i.w, align 1, !noundef !5
  store i8 %i.x, ptr %i.b, align 1
  %i.y = getelementptr i8, ptr %2, i64 225
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 225
  %i.aa = load i8, ptr %i.z, align 1, !noundef !5
  store i8 %i.aa, ptr %i.y, align 1
  %i.ab = getelementptr i8, ptr %2, i64 226
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 226
  %i.ad = load i8, ptr %i.ac, align 1, !noundef !5
  store i8 %i.ad, ptr %i.ab, align 1
  %i.ae = getelementptr i8, ptr %2, i64 227
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 227
  %i.ag = load i8, ptr %i.af, align 1, !noundef !5
  store i8 %i.ag, ptr %i.ae, align 1
  %i.ah = getelementptr i8, ptr %2, i64 228
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 228
  %i.aj = load i8, ptr %i.ai, align 1, !noundef !5
  store i8 %i.aj, ptr %i.ah, align 1
  %i.ak = getelementptr i8, ptr %2, i64 229
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 229
  %i.am = load i8, ptr %i.al, align 1, !noundef !5
  store i8 %i.am, ptr %i.ak, align 1
  %i.an = getelementptr i8, ptr %2, i64 230
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 230
  %i.ap = load i8, ptr %i.ao, align 1, !noundef !5
  store i8 %i.ap, ptr %i.an, align 1
  %i.aq = getelementptr i8, ptr %2, i64 231
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 231
  %i.as = load i8, ptr %i.ar, align 1, !noundef !5
  store i8 %i.as, ptr %i.aq, align 1
  %i.at = getelementptr i8, ptr %2, i64 232
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.av = load i8, ptr %i.au, align 1, !noundef !5
  store i8 %i.av, ptr %i.at, align 1
  %i.aw = getelementptr i8, ptr %2, i64 233
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 233
  %i.ay = load i8, ptr %i.ax, align 1, !noundef !5
  store i8 %i.ay, ptr %i.aw, align 1
  %i.az = getelementptr i8, ptr %2, i64 234
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 234
  %i.bb = load i8, ptr %i.ba, align 1, !noundef !5
  store i8 %i.bb, ptr %i.az, align 1
  %i.bc = getelementptr i8, ptr %2, i64 235
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 235
  %i.be = load i8, ptr %i.bd, align 1, !noundef !5
  store i8 %i.be, ptr %i.bc, align 1
  %i.bf = getelementptr i8, ptr %2, i64 236
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 236
  %i.bh = load i8, ptr %i.bg, align 1, !noundef !5
  store i8 %i.bh, ptr %i.bf, align 1
  %i.bi = getelementptr i8, ptr %2, i64 237
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 237
  %i.bk = load i8, ptr %i.bj, align 1, !noundef !5
  store i8 %i.bk, ptr %i.bi, align 1
  %i.bl = getelementptr i8, ptr %2, i64 238
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 238
  %i.bn = load i8, ptr %i.bm, align 1, !noundef !5
  store i8 %i.bn, ptr %i.bl, align 1
  %i.bo = getelementptr i8, ptr %2, i64 239
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 239
  %i.bq = load i8, ptr %i.bp, align 1, !noundef !5
  store i8 %i.bq, ptr %i.bo, align 1
  %i.br = getelementptr i8, ptr %2, i64 240
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.bt = load i8, ptr %i.bs, align 1, !noundef !5
  store i8 %i.bt, ptr %i.br, align 1
  %i.bu = getelementptr i8, ptr %2, i64 241
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 241
  %i.bw = load i8, ptr %i.bv, align 1, !noundef !5
  store i8 %i.bw, ptr %i.bu, align 1
  %i.bx = getelementptr i8, ptr %2, i64 242
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 242
  %i.bz = load i8, ptr %i.by, align 1, !noundef !5
  store i8 %i.bz, ptr %i.bx, align 1
  %i.ca = getelementptr i8, ptr %2, i64 243
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 243
  %i.cc = load i8, ptr %i.cb, align 1, !noundef !5
  store i8 %i.cc, ptr %i.ca, align 1
  %i.cd = getelementptr i8, ptr %2, i64 244
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 244
  %i.cf = load i8, ptr %i.ce, align 1, !noundef !5
  store i8 %i.cf, ptr %i.cd, align 1
  %i.cg = getelementptr i8, ptr %2, i64 245
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 245
  %i.ci = load i8, ptr %i.ch, align 1, !noundef !5
  store i8 %i.ci, ptr %i.cg, align 1
  %i.cj = getelementptr i8, ptr %2, i64 246
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 246
  %i.cl = load i8, ptr %i.ck, align 1, !noundef !5
  store i8 %i.cl, ptr %i.cj, align 1
  %i.cm = getelementptr i8, ptr %2, i64 247
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 247
  %i.co = load i8, ptr %i.cn, align 1, !noundef !5
  store i8 %i.co, ptr %i.cm, align 1
  %i.cp = getelementptr i8, ptr %2, i64 248
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.cr = load i8, ptr %i.cq, align 1, !noundef !5
  store i8 %i.cr, ptr %i.cp, align 1
  %i.cs = getelementptr i8, ptr %2, i64 249
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 249
  %i.cu = load i8, ptr %i.ct, align 1, !noundef !5
  store i8 %i.cu, ptr %i.cs, align 1
  %i.cv = getelementptr i8, ptr %2, i64 250
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 250
  %i.cx = load i8, ptr %i.cw, align 1, !noundef !5
  store i8 %i.cx, ptr %i.cv, align 1
  %i.cy = getelementptr i8, ptr %2, i64 251
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 251
  %i.da = load i8, ptr %i.cz, align 1, !noundef !5
  store i8 %i.da, ptr %i.cy, align 1
  %i.db = getelementptr i8, ptr %2, i64 252
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 252
  %i.dd = load i8, ptr %i.dc, align 1, !noundef !5
  store i8 %i.dd, ptr %i.db, align 1
  %i.de = getelementptr i8, ptr %2, i64 253
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 253
  %i.dg = load i8, ptr %i.df, align 1, !noundef !5
  store i8 %i.dg, ptr %i.de, align 1
  %i.dh = getelementptr i8, ptr %2, i64 254
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 254
  %i.dj = load i8, ptr %i.di, align 1, !noundef !5
  store i8 %i.dj, ptr %i.dh, align 1
  %i.dk = getelementptr i8, ptr %2, i64 255
end_hunk_1
begin_hunk_2_@_ZN14regex_automata6hybrid3dfa4Lazy10init_cache17h6ba1ae51ca18670dE:bb.a
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h5991c16c81e0b063E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.go)
          to label %bb.dm unwind label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.tg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.th = atomicrmw sub ptr %i.ta, i64 1 release, align 8, !noalias !687
  %i.ti = icmp eq i64 %i.th, 1
  br i1 %i.ti, label %bb.dj, label %.body174.thread

bb.dj:                                            ; preds = %bb.di
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h8b8c19407ee8f9c0E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.g)
          to label %.body174.thread unwind label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.tj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #30
  unreachable

bb.dl:                                            ; preds = %_ZN14regex_automata6hybrid3dfa7LazyRef11is_sentinel17hd5c013ad7821a2c8E.exit191.thread
  call void @llvm.trap()
  unreachable

bb.dm:                                            ; preds = %bb.dh, %bb.dg
  %i.tk = load ptr, ptr %i.gz, align 8, !alias.scope !686, !nonnull !5, !noundef !5
  %i.tl = getelementptr inbounds nuw [16 x i8], ptr %i.tk, i64 %i.td ; 2 uses
  store ptr %i.ta, ptr %i.tl, align 8
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tl, i64 8
  store i64 %i.tb, ptr %i.tm, align 8
  %i.tn = add i64 %i.td, 1
  store i64 %i.tn, ptr %i.bd, align 8, !alias.scope !686
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.to = load ptr, ptr %i.p, align 8, !noalias !670, !nonnull !5, !noundef !5
  %i.tp = load i64, ptr %i.ny, align 8, !noalias !670, !noundef !5
  %i.tq = invoke { i32, i32 } @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h2d1fa52a1f342d3dE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.hg, ptr noundef nonnull %i.to, i64 noundef %i.tp, i32 noundef %spec.select.i45)
          to label %bb.ds unwind label %.body174, !inline_history !573 ; 0 uses

_ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit202.thread: ; preds = %._ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit202.thread_crit_edge, %bb.co, %bb.ck
  %i.tr = phi ptr [ %.pre, %._ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit202.thread_crit_edge ], [ %i.ak, %bb.co ], [ %i.ak, %bb.ck ]
  call void @llvm.experimental.noalias.scope.decl(metadata !688)
  call void @llvm.experimental.noalias.scope.decl(metadata !689)
  call void @llvm.experimental.noalias.scope.decl(metadata !690)
  %i.ts = atomicrmw sub ptr %i.tr, i64 1 release, align 8, !noalias !680
  %i.tt = icmp eq i64 %i.ts, 1
  br i1 %i.tt, label %bb.dn, label %bb.dr

bb.dn:                                            ; preds = %_ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit202.thread
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h8b8c19407ee8f9c0E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.p)
          to label %bb.dr unwind label %.body.thread255.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.body174.thread:                                  ; preds = %.body174.thread281.loopexit, %.body174.thread281.loopexit.split-lp, %bb.dj, %bb.di
  %eh.lpad-body175278 = phi { ptr, i32 } [ %i.tg, %bb.dj ], [ %i.tg, %bb.di ], [ %lpad.loopexit297, %.body174.thread281.loopexit ], [ %lpad.loopexit.split-lp298, %.body174.thread281.loopexit.split-lp ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !691)
  call void @llvm.experimental.noalias.scope.decl(metadata !692)
  call void @llvm.experimental.noalias.scope.decl(metadata !693)
  %i.tu = load ptr, ptr %i.p, align 8, !alias.scope !694, !nonnull !5, !noundef !5
  %i.tv = atomicrmw sub ptr %i.tu, i64 1 release, align 8, !noalias !694
  %i.tw = icmp eq i64 %i.tv, 1
  br i1 %i.tw, label %bb.do, label %.body.thread

bb.do:                                            ; preds = %.body174.thread
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h8b8c19407ee8f9c0E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.p)
          to label %.body.thread unwind label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.tx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #30, !inline_history !573
  unreachable

bb.dq:                                            ; preds = %bb.cf
  call void @llvm.trap()
  unreachable

bb.dr:                                            ; preds = %_ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit202.thread, %bb.dn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %.invoke371

bb.ds:                                            ; preds = %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  store i32 %spec.select.i45, ptr %i.y, align 4
  store i32 -2147483648, ptr %i.x, align 4
  br i1 %i.fp, label %bb.du, label %bb.dt, !prof !13

bb.dt:                                            ; preds = %bb.ds
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  br label %.invoke373

.invoke373:                                       ; preds = %bb.eb, %bb.dx, %bb.dt
  %.sink = phi ptr [ %i.s, %bb.eb ], [ %i.u, %bb.dx ], [ %i.w, %bb.dt ] ; 2 uses
  %i.ty = phi ptr [ %i.y, %bb.eb ], [ %i.z, %bb.dx ], [ %i.aa, %bb.dt ]
  %i.tz = phi ptr [ %i.t, %bb.eb ], [ %i.v, %bb.dx ], [ %i.x, %bb.dt ]
  %i.ua = phi ptr [ @39, %bb.eb ], [ @38, %bb.dx ], [ @37, %bb.dt ]
  store ptr null, ptr %.sink, align 8
  invoke void @_ZN4core9panicking13assert_failed17h787aa0f755779973E(i8 noundef 0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.ty, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.tz, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %.sink, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ua) #27
          to label %.cont374 unwind label %.body.thread255.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont374:                                         ; preds = %.invoke373
  unreachable

bb.du:                                            ; preds = %bb.ds
  %i.ub = load i64, ptr %i.ch, align 8, !noalias !695, !noundef !5
  %i.uc = and i64 %i.ub, 63                       ; 4 uses
  %i.ud = shl nuw i64 1, %i.uc                    ; 2 uses
  %i.ue = icmp samesign ugt i64 %i.uc, 26
  br i1 %i.ue, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !696
  store i64 %i.ud, ptr %i.o, align 8, !noalias !696
  br label %.invoke371

bb.dw:                                            ; preds = %bb.du
  %i.uf = trunc nuw nsw i64 %i.ud to i32
  %i.ug = or i32 %i.uf, 1073741824                ; 2 uses
  store i32 %i.ug, ptr %i.v, align 4
  %i.uh = icmp eq i32 %spec.select.i27, %i.ug
  br i1 %i.uh, label %bb.dy, label %bb.dx, !prof !13

bb.dx:                                            ; preds = %bb.dw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  br label %.invoke373

bb.dy:                                            ; preds = %bb.dw
  %i.ui = shl nuw nsw i64 2, %i.uc                ; 2 uses
  %i.uj = icmp eq i64 %i.uc, 26
  br i1 %i.uj, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !697
  store i64 %i.ui, ptr %i.n, align 8, !noalias !697
  br label %.invoke371

bb.ea:                                            ; preds = %bb.dy
  %i.uk = trunc nuw nsw i64 %i.ui to i32
  %i.ul = or disjoint i32 %i.uk, 536870912        ; 2 uses
  store i32 %i.ul, ptr %i.t, align 4
  %i.um = icmp eq i32 %spec.select.i45, %i.ul
  br i1 %i.um, label %bb.ec, label %bb.eb, !prof !13

bb.eb:                                            ; preds = %bb.ea
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  br label %.invoke373

bb.ec:                                            ; preds = %bb.ea
  %i.un = getelementptr inbounds nuw i8, ptr %i.ac, i64 400 ; 6 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %i.ac, i64 655 ; 3 uses
  br label %.noexc61

.noexc61:                                         ; preds = %bb.ed, %bb.ec
  %.sroa.8.0.i = phi i64 [ 0, %bb.ec ], [ %.sroa.8.4.ph.i, %bb.ed ] ; 8 uses
  %.sroa.13.0.i = phi i1 [ false, %bb.ec ], [ %.sroa.13.1.ph.i, %bb.ed ] ; 2 uses
  %.sroa.16.0.i = phi i8 [ undef, %bb.ec ], [ %.sroa.16.1.ph.i, %bb.ed ] ; 2 uses
  br i1 %.sroa.13.0.i, label %.split.preheader.i.i, label %.split.us.i.i

.split.preheader.i.i:                             ; preds = %.noexc61
  %umax.i.i = call i64 @llvm.umax.i64(i64 %.sroa.8.0.i, i64 256) ; 3 uses
  %exitcond.not.i.i529 = icmp ugt i64 %.sroa.8.0.i, 255
  br i1 %exitcond.not.i.i529, label %.split34.us.i.i, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit.i.i"

.split.us.i.i:                                    ; preds = %.noexc61
  %i.up = icmp ult i64 %.sroa.8.0.i, 256
  br i1 %i.up, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit.us.i.i", label %.split34.us.i.i

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit.us.i.i": ; preds = %.split.us.i.i
  %i.uq = getelementptr inbounds nuw i8, ptr %i.un, i64 %.sroa.8.0.i
  %i.ur = load i8, ptr %i.uq, align 1, !noalias !698, !noundef !5
  %i.us = add nuw nsw i64 %.sroa.8.0.i, 1
  br label %.split40.i.i

.split.i.i:                                       ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit.i.i"
  %exitcond.not.i.i = icmp eq i64 %i.uw, %umax.i.i
  br i1 %exitcond.not.i.i, label %.split34.us.i.i, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit.i.i"

.split34.us.i.i:                                  ; preds = %.split.i.i, %.split.preheader.i.i, %.split.us.i.i
  %.us-phi35.i.i = phi i64 [ %.sroa.8.0.i, %.split.us.i.i ], [ %umax.i.i, %.split.preheader.i.i ], [ %umax.i.i, %.split.i.i ]
  %.not.i.not.i = icmp eq i64 %.us-phi35.i.i, -1
  br i1 %.not.i.not.i, label %.noexc89, label %_ZN14regex_automata4util8alphabet4Unit3eoi17h7bde68dad5abe20fE.exit.i.i

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit.i.i": ; preds = %.split.preheader.i.i, %.split.i.i
  %i.ut = phi i64 [ %i.uw, %.split.i.i ], [ %.sroa.8.0.i, %.split.preheader.i.i ] ; 3 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %i.un, i64 %i.ut
  %i.uv = load i8, ptr %i.uu, align 1, !noalias !698, !noundef !5 ; 2 uses
  %i.uw = add i64 %i.ut, 1                        ; 3 uses
  %.not17.i.i = icmp eq i8 %.sroa.16.0.i, %i.uv
  br i1 %.not17.i.i, label %.split.i.i, label %.split40.i.i

_ZN14regex_automata4util8alphabet4Unit3eoi17h7bde68dad5abe20fE.exit.i.i: ; preds = %.split34.us.i.i
  %i.ux = load i8, ptr %i.uo, align 1, !noalias !698, !noundef !5
  %i.uy = zext i8 %i.ux to i32
  %i.uz = shl nuw nsw i32 %i.uy, 8
  %.sroa.01.0.insert.insert.i.i.i = add nuw nsw i32 %i.uz, 256
  br label %bb.ed

.split40.i.i:                                     ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit.i.i", %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit.us.i.i"
  %.sroa.8.3.i = phi i64 [ %i.us, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit.us.i.i" ], [ %i.uw, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit.i.i" ]
  %.us-phi41.i.i = phi i64 [ %.sroa.8.0.i, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit.us.i.i" ], [ %i.ut, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit.i.i" ]
  %.us-phi42.i.i = phi i8 [ %i.ur, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit.us.i.i" ], [ %i.uv, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit.i.i" ]
  %i.va = trunc nuw i64 %.us-phi41.i.i to i32
  br label %bb.ed

bb.ed:                                            ; preds = %.split40.i.i, %_ZN14regex_automata4util8alphabet4Unit3eoi17h7bde68dad5abe20fE.exit.i.i
  %.sroa.8.4.ph.i = phi i64 [ %.sroa.8.3.i, %.split40.i.i ], [ -1, %_ZN14regex_automata4util8alphabet4Unit3eoi17h7bde68dad5abe20fE.exit.i.i ]
  %.sroa.13.1.ph.i = phi i1 [ true, %.split40.i.i ], [ %.sroa.13.0.i, %_ZN14regex_automata4util8alphabet4Unit3eoi17h7bde68dad5abe20fE.exit.i.i ]
  %.sroa.16.1.ph.i = phi i8 [ %.us-phi42.i.i, %.split40.i.i ], [ %.sroa.16.0.i, %_ZN14regex_automata4util8alphabet4Unit3eoi17h7bde68dad5abe20fE.exit.i.i ]
  %.sroa.4.sroa.0.0.i.ph.i = phi i32 [ %i.va, %.split40.i.i ], [ %.sroa.01.0.insert.insert.i.i.i, %_ZN14regex_automata4util8alphabet4Unit3eoi17h7bde68dad5abe20fE.exit.i.i ]
  %.sroa.0.0.i.ph.i = phi i32 [ 0, %.split40.i.i ], [ 1, %_ZN14regex_automata4util8alphabet4Unit3eoi17h7bde68dad5abe20fE.exit.i.i ]
  %.sroa.4.0.insert.shift.i9.i = shl nuw nsw i32 %.sroa.4.sroa.0.0.i.ph.i, 8
  %.sroa.0.0.insert.insert.i10.i = or disjoint i32 %.sroa.4.0.insert.shift.i9.i, %.sroa.0.0.i.ph.i
  invoke fastcc void @_ZN14regex_automata6hybrid3dfa4Lazy14set_transition17hc3806a8fe9907783E(ptr nonnull readonly %i.ac, ptr nonnull readonly %i.ah, i32 noundef range(i32 536870912, 0) -2147483648, i32 %.sroa.0.0.insert.insert.i10.i, i32 noundef range(i32 536870912, 0) -2147483648)
          to label %.noexc61 unwind label %.body.thread255.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc89:                                         ; preds = %.split34.us.i.i, %bb.ee
  %.sroa.8.0.i62 = phi i64 [ %.sroa.8.4.ph.i71, %bb.ee ], [ 0, %.split34.us.i.i ] ; 8 uses
  %.sroa.13.0.i63 = phi i1 [ %.sroa.13.1.ph.i72, %bb.ee ], [ false, %.split34.us.i.i ] ; 2 uses
  %.sroa.16.0.i64 = phi i8 [ %.sroa.16.1.ph.i73, %bb.ee ], [ undef, %.split34.us.i.i ] ; 2 uses
  br i1 %.sroa.13.0.i63, label %.split.preheader.i.i83, label %.split.us.i.i65

.split.preheader.i.i83:                           ; preds = %.noexc89
  %umax.i.i84 = call i64 @llvm.umax.i64(i64 %.sroa.8.0.i62, i64 256) ; 3 uses
  %exitcond.not.i.i86530 = icmp ugt i64 %.sroa.8.0.i62, 255
  br i1 %exitcond.not.i.i86530, label %.split34.us.i.i66, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit.i.i87"

.split.us.i.i65:                                  ; preds = %.noexc89
  %i.vb = icmp ult i64 %.sroa.8.0.i62, 256
  br i1 %i.vb, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit.us.i.i78", label %.split34.us.i.i66

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit.us.i.i78": ; preds = %.split.us.i.i65
  %i.vc = getelementptr inbounds nuw i8, ptr %i.un, i64 %.sroa.8.0.i62
  %i.vd = load i8, ptr %i.vc, align 1, !noalias !699, !noundef !5
  %i.ve = add nuw nsw i64 %.sroa.8.0.i62, 1
  br label %.split40.i.i79

.split.i.i85:                                     ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit.i.i87"
  %exitcond.not.i.i86 = icmp eq i64 %i.vi, %umax.i.i84
  br i1 %exitcond.not.i.i86, label %.split34.us.i.i66, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit.i.i87"

.split34.us.i.i66:                                ; preds = %.split.i.i85, %.split.preheader.i.i83, %.split.us.i.i65
  %.us-phi35.i.i67 = phi i64 [ %.sroa.8.0.i62, %.split.us.i.i65 ], [ %umax.i.i84, %.split.preheader.i.i83 ], [ %umax.i.i84, %.split.i.i85 ]
  %.not.i.not.i68 = icmp eq i64 %.us-phi35.i.i67, -1
  br i1 %.not.i.not.i68, label %.noexc118, label %_ZN14regex_automata4util8alphabet4Unit3eoi17h7bde68dad5abe20fE.exit.i.i69

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit.i.i87": ; preds = %.split.preheader.i.i83, %.split.i.i85
  %i.vf = phi i64 [ %i.vi, %.split.i.i85 ], [ %.sroa.8.0.i62, %.split.preheader.i.i83 ] ; 3 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %i.un, i64 %i.vf
  %i.vh = load i8, ptr %i.vg, align 1, !noalias !699, !noundef !5 ; 2 uses
  %i.vi = add i64 %i.vf, 1                        ; 3 uses
  %.not17.i.i88 = icmp eq i8 %.sroa.16.0.i64, %i.vh
  br i1 %.not17.i.i88, label %.split.i.i85, label %.split40.i.i79

_ZN14regex_automata4util8alphabet4Unit3eoi17h7bde68dad5abe20fE.exit.i.i69: ; preds = %.split34.us.i.i66
  %i.vj = load i8, ptr %i.uo, align 1, !noalias !699, !noundef !5
  %i.vk = zext i8 %i.vj to i32
  %i.vl = shl nuw nsw i32 %i.vk, 8
  %.sroa.01.0.insert.insert.i.i.i70 = add nuw nsw i32 %i.vl, 256
  br label %bb.ee

.split40.i.i79:                                   ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit.i.i87", %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit.us.i.i78"
  %.sroa.8.3.i80 = phi i64 [ %i.ve, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit.us.i.i78" ], [ %i.vi, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit.i.i87" ]
  %.us-phi41.i.i81 = phi i64 [ %.sroa.8.0.i62, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit.us.i.i78" ], [ %i.vf, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit.i.i87" ]
  %.us-phi42.i.i82 = phi i8 [ %i.vd, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit.us.i.i78" ], [ %i.vh, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit.i.i87" ]
  %i.vm = trunc nuw i64 %.us-phi41.i.i81 to i32
  br label %bb.ee

bb.ee:                                            ; preds = %.split40.i.i79, %_ZN14regex_automata4util8alphabet4Unit3eoi17h7bde68dad5abe20fE.exit.i.i69
  %.sroa.8.4.ph.i71 = phi i64 [ %.sroa.8.3.i80, %.split40.i.i79 ], [ -1, %_ZN14regex_automata4util8alphabet4Unit3eoi17h7bde68dad5abe20fE.exit.i.i69 ]
  %.sroa.13.1.ph.i72 = phi i1 [ true, %.split40.i.i79 ], [ %.sroa.13.0.i63, %_ZN14regex_automata4util8alphabet4Unit3eoi17h7bde68dad5abe20fE.exit.i.i69 ]
  %.sroa.16.1.ph.i73 = phi i8 [ %.us-phi42.i.i82, %.split40.i.i79 ], [ %.sroa.16.0.i64, %_ZN14regex_automata4util8alphabet4Unit3eoi17h7bde68dad5abe20fE.exit.i.i69 ]
  %.sroa.4.sroa.0.0.i.ph.i74 = phi i32 [ %i.vm, %.split40.i.i79 ], [ %.sroa.01.0.insert.insert.i.i.i70, %_ZN14regex_automata4util8alphabet4Unit3eoi17h7bde68dad5abe20fE.exit.i.i69 ]
  %.sroa.0.0.i.ph.i75 = phi i32 [ 0, %.split40.i.i79 ], [ 1, %_ZN14regex_automata4util8alphabet4Unit3eoi17h7bde68dad5abe20fE.exit.i.i69 ]
  %.sroa.4.0.insert.shift.i9.i76 = shl nuw nsw i32 %.sroa.4.sroa.0.0.i.ph.i74, 8
  %.sroa.0.0.insert.insert.i10.i77 = or disjoint i32 %.sroa.4.0.insert.shift.i9.i76, %.sroa.0.0.i.ph.i75
  invoke fastcc void @_ZN14regex_automata6hybrid3dfa4Lazy14set_transition17hc3806a8fe9907783E(ptr nonnull readonly %i.ac, ptr nonnull readonly %i.ah, i32 noundef range(i32 536870912, 0) %spec.select.i27, i32 %.sroa.0.0.insert.insert.i10.i77, i32 noundef range(i32 536870912, 0) %spec.select.i27)
          to label %.noexc89 unwind label %.body.thread255.loopexit.split-lp.loopexit

.noexc118:                                        ; preds = %.split34.us.i.i66, %bb.ef
  %.sroa.8.0.i91 = phi i64 [ %.sroa.8.4.ph.i100, %bb.ef ], [ 0, %.split34.us.i.i66 ] ; 8 uses
  %.sroa.13.0.i92 = phi i1 [ %.sroa.13.1.ph.i101, %bb.ef ], [ false, %.split34.us.i.i66 ] ; 2 uses
  %.sroa.16.0.i93 = phi i8 [ %.sroa.16.1.ph.i102, %bb.ef ], [ undef, %.split34.us.i.i66 ] ; 2 uses
  br i1 %.sroa.13.0.i92, label %.split.preheader.i.i112, label %.split.us.i.i94

.split.preheader.i.i112:                          ; preds = %.noexc118
  %umax.i.i113 = call i64 @llvm.umax.i64(i64 %.sroa.8.0.i91, i64 256) ; 3 uses
  %exitcond.not.i.i115531 = icmp ugt i64 %.sroa.8.0.i91, 255
  br i1 %exitcond.not.i.i115531, label %.split34.us.i.i95, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit.i.i116"

.split.us.i.i94:                                  ; preds = %.noexc118
  %i.vn = icmp ult i64 %.sroa.8.0.i91, 256
  br i1 %i.vn, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit.us.i.i107", label %.split34.us.i.i95

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit.us.i.i107": ; preds = %.split.us.i.i94
  %i.vo = getelementptr inbounds nuw i8, ptr %i.un, i64 %.sroa.8.0.i91
  %i.vp = load i8, ptr %i.vo, align 1, !noalias !700, !noundef !5
  %i.vq = add nuw nsw i64 %.sroa.8.0.i91, 1
  br label %.split40.i.i108

.split.i.i114:                                    ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit.i.i116"
  %exitcond.not.i.i115 = icmp eq i64 %i.vu, %umax.i.i113
  br i1 %exitcond.not.i.i115, label %.split34.us.i.i95, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit.i.i116"

.split34.us.i.i95:                                ; preds = %.split.i.i114, %.split.preheader.i.i112, %.split.us.i.i94
  %.us-phi35.i.i96 = phi i64 [ %.sroa.8.0.i91, %.split.us.i.i94 ], [ %umax.i.i113, %.split.preheader.i.i112 ], [ %umax.i.i113, %.split.i.i114 ]
  %.not.i.not.i97 = icmp eq i64 %.us-phi35.i.i96, -1
  br i1 %.not.i.not.i97, label %_ZN14regex_automata6hybrid3dfa4Lazy19set_all_transitions17h55aa37a2d971c20dE.exit119, label %_ZN14regex_automata4util8alphabet4Unit3eoi17h7bde68dad5abe20fE.exit.i.i98

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit.i.i116": ; preds = %.split.preheader.i.i112, %.split.i.i114
  %i.vr = phi i64 [ %i.vu, %.split.i.i114 ], [ %.sroa.8.0.i91, %.split.preheader.i.i112 ] ; 3 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %i.un, i64 %i.vr
  %i.vt = load i8, ptr %i.vs, align 1, !noalias !700, !noundef !5 ; 2 uses
  %i.vu = add i64 %i.vr, 1                        ; 3 uses
  %.not17.i.i117 = icmp eq i8 %.sroa.16.0.i93, %i.vt
  br i1 %.not17.i.i117, label %.split.i.i114, label %.split40.i.i108

_ZN14regex_automata4util8alphabet4Unit3eoi17h7bde68dad5abe20fE.exit.i.i98: ; preds = %.split34.us.i.i95
  %i.vv = load i8, ptr %i.uo, align 1, !noalias !700, !noundef !5
  %i.vw = zext i8 %i.vv to i32
  %i.vx = shl nuw nsw i32 %i.vw, 8
  %.sroa.01.0.insert.insert.i.i.i99 = add nuw nsw i32 %i.vx, 256
  br label %bb.ef

.split40.i.i108:                                  ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit.i.i116", %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit.us.i.i107"
  %.sroa.8.3.i109 = phi i64 [ %i.vq, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit.us.i.i107" ], [ %i.vu, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit.i.i116" ]
  %.us-phi41.i.i110 = phi i64 [ %.sroa.8.0.i91, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit.us.i.i107" ], [ %i.vr, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit.i.i116" ]
  %.us-phi42.i.i111 = phi i8 [ %i.vp, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit.us.i.i107" ], [ %i.vt, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit.i.i116" ]
  %i.vy = trunc nuw i64 %.us-phi41.i.i110 to i32
  br label %bb.ef

bb.ef:                                            ; preds = %.split40.i.i108, %_ZN14regex_automata4util8alphabet4Unit3eoi17h7bde68dad5abe20fE.exit.i.i98
  %.sroa.8.4.ph.i100 = phi i64 [ %.sroa.8.3.i109, %.split40.i.i108 ], [ -1, %_ZN14regex_automata4util8alphabet4Unit3eoi17h7bde68dad5abe20fE.exit.i.i98 ]
  %.sroa.13.1.ph.i101 = phi i1 [ true, %.split40.i.i108 ], [ %.sroa.13.0.i92, %_ZN14regex_automata4util8alphabet4Unit3eoi17h7bde68dad5abe20fE.exit.i.i98 ]
  %.sroa.16.1.ph.i102 = phi i8 [ %.us-phi42.i.i111, %.split40.i.i108 ], [ %.sroa.16.0.i93, %_ZN14regex_automata4util8alphabet4Unit3eoi17h7bde68dad5abe20fE.exit.i.i98 ]
  %.sroa.4.sroa.0.0.i.ph.i103 = phi i32 [ %i.vy, %.split40.i.i108 ], [ %.sroa.01.0.insert.insert.i.i.i99, %_ZN14regex_automata4util8alphabet4Unit3eoi17h7bde68dad5abe20fE.exit.i.i98 ]
  %.sroa.0.0.i.ph.i104 = phi i32 [ 0, %.split40.i.i108 ], [ 1, %_ZN14regex_automata4util8alphabet4Unit3eoi17h7bde68dad5abe20fE.exit.i.i98 ]
  %.sroa.4.0.insert.shift.i9.i105 = shl nuw nsw i32 %.sroa.4.sroa.0.0.i.ph.i103, 8
  %.sroa.0.0.insert.insert.i10.i106 = or disjoint i32 %.sroa.4.0.insert.shift.i9.i105, %.sroa.0.0.i.ph.i104
  invoke fastcc void @_ZN14regex_automata6hybrid3dfa4Lazy14set_transition17hc3806a8fe9907783E(ptr nonnull readonly %i.ac, ptr nonnull readonly %i.ah, i32 noundef range(i32 536870912, 0) %spec.select.i45, i32 %.sroa.0.0.insert.insert.i10.i106, i32 noundef range(i32 536870912, 0) %spec.select.i45)
          to label %.noexc118 unwind label %.body.thread255.loopexit

_ZN14regex_automata6hybrid3dfa4Lazy19set_all_transitions17h55aa37a2d971c20dE.exit119: ; preds = %.split34.us.i.i95
  %i.vz = call { i32, i32 } @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h2d1fa52a1f342d3dE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.hg, ptr noundef nonnull %i.ak, i64 noundef %i.al, i32 noundef %spec.select.i27) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  ret void

"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17hef8a9852c9554de6E.exit": ; preds = %.body.thread, %bb.eg
  resume { ptr, i32 } %eh.lpad-body251

.body.thread:                                     ; preds = %.body.thread255.loopexit, %.body.thread255.loopexit.split-lp.loopexit.split-lp.loopexit, %.body.thread255.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body.thread255.loopexit.split-lp.loopexit, %.body174.thread, %bb.do, %.body174, %.body138.thread, %bb.cb, %.body138, %bb.am, %.body125, %.body125.thread
  %eh.lpad-body251 = phi { ptr, i32 } [ %eh.lpad-body175278, %.body174.thread ], [ %eh.lpad-body139263, %.body138.thread ], [ %eh.lpad-body126242, %.body125.thread ], [ %eh.lpad-body126242, %bb.am ], [ %lpad.thr_comm.split-lp, %.body125 ], [ %lpad.thr_comm.split-lp265, %.body138 ], [ %eh.lpad-body139263, %bb.cb ], [ %lpad.thr_comm.split-lp280, %.body174 ], [ %eh.lpad-body175278, %bb.do ], [ %lpad.loopexit, %.body.thread255.loopexit ], [ %lpad.loopexit292, %.body.thread255.loopexit.split-lp.loopexit ], [ %lpad.loopexit295, %.body.thread255.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.body.thread255.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.experimental.noalias.scope.decl(metadata !701)
  call void @llvm.experimental.noalias.scope.decl(metadata !702)
  call void @llvm.experimental.noalias.scope.decl(metadata !703)
  %i.wa = load ptr, ptr %i.ab, align 8, !alias.scope !704, !nonnull !5, !noundef !5
  %i.wb = atomicrmw sub ptr %i.wa, i64 1 release, align 8, !noalias !704
  %i.wc = icmp eq i64 %i.wb, 1
  br i1 %i.wc, label %bb.eg, label %"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17hef8a9852c9554de6E.exit"

bb.eg:                                            ; preds = %.body.thread
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h8b8c19407ee8f9c0E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ab)
          to label %"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17hef8a9852c9554de6E.exit" unwind label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.wd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #30
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN14regex_automata6hybrid3dfa4Lazy11clear_cache17hb279f51be876bc4aE(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 3 uses
  %i.d = alloca [8 x i8], align 8                 ; 3 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 13 uses
  %i.g = alloca [8 x i8], align 8                 ; 3 uses
  %i.h = alloca [8 x i8], align 8                 ; 3 uses
  %i.i = alloca [48 x i8], align 8                ; 7 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !5, !align !17, !noundef !5 ; 31 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40 ; 4 uses
  store i64 0, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 64 ; 2 uses
  store i64 0, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 80 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 88 ; 6 uses
  %i.r = load i64, ptr %i.q, align 8, !noundef !5 ; 4 uses
  store i64 0, ptr %i.q, align 8
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %"_ZN4core3ptr78drop_in_place$LT$$u5b$regex_automata..util..determinize..state..State$u5d$$GT$17hc4c990ce99349a12E.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17hef8a9852c9554de6E.exit.i"
  %.sroa.0.09.i = phi i64 [ %i.u, %"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17hef8a9852c9554de6E.exit.i" ], [ 0, %bb.a ] ; 2 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %.sroa.0.09.i ; 2 uses
  %i.u = add nuw i64 %.sroa.0.09.i, 1             ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !798)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !799)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !800)
  %i.v = load ptr, ptr %i.t, align 8, !alias.scope !801, !nonnull !5, !noundef !5
  %i.w = atomicrmw sub ptr %i.v, i64 1 release, align 8, !noalias !802
  %i.x = icmp eq i64 %i.w, 1
  br i1 %i.x, label %bb.b, label %"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17hef8a9852c9554de6E.exit.i"

bb.b:                                             ; preds = %.lr.ph.i
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h8b8c19407ee8f9c0E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.t)
          to label %"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17hef8a9852c9554de6E.exit.i" unwind label %bb.c

"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17hef8a9852c9554de6E.exit.i": ; preds = %bb.b, %.lr.ph.i
  %i.y = icmp eq i64 %i.u, %i.r
  br i1 %i.y, label %"_ZN4core3ptr78drop_in_place$LT$$u5b$regex_automata..util..determinize..state..State$u5d$$GT$17hc4c990ce99349a12E.exit", label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aa = icmp eq i64 %i.u, %i.r
  br i1 %i.aa, label %common.resume, label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %bb.c, %"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17hef8a9852c9554de6E.exit8.i"
  %.sroa.0.110.i = phi i64 [ %i.ac, %"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17hef8a9852c9554de6E.exit8.i" ], [ %i.u, %bb.c ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %.sroa.0.110.i ; 2 uses
  %i.ac = add i64 %.sroa.0.110.i, 1               ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !803)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !804)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !805)
  %i.ad = load ptr, ptr %i.ab, align 8, !alias.scope !806, !nonnull !5, !noundef !5
  %i.ae = atomicrmw sub ptr %i.ad, i64 1 release, align 8, !noalias !807
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %bb.d, label %"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17hef8a9852c9554de6E.exit8.i"

bb.d:                                             ; preds = %.lr.ph12.i
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h8b8c19407ee8f9c0E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ab)
          to label %"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17hef8a9852c9554de6E.exit8.i" unwind label %bb.e

"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17hef8a9852c9554de6E.exit8.i": ; preds = %bb.d, %.lr.ph12.i
  %i.ag = icmp eq i64 %i.ac, %i.r
  br i1 %i.ag, label %common.resume, label %.lr.ph12.i

common.resume:                                    ; preds = %"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17hef8a9852c9554de6E.exit8.i", %.thread, %bb.av, %.body33.thread, %bb.bb, %bb.ba, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.z, %bb.c ], [ %eh.lpad-body3467, %bb.av ], [ %i.id, %.thread ], [ %eh.lpad-body3467, %.body33.thread ], [ %lpad.thr_comm, %bb.ba ], [ %lpad.thr_comm, %bb.bb ], [ %i.z, %"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17hef8a9852c9554de6E.exit8.i" ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.d
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #30
  unreachable

"_ZN4core3ptr78drop_in_place$LT$$u5b$regex_automata..util..determinize..state..State$u5d$$GT$17hc4c990ce99349a12E.exit": ; preds = %"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17hef8a9852c9554de6E.exit.i", %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 280 ; 2 uses
  tail call void @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$5clear17h15d435266d124dffE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ai)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.l, i64 328 ; 4 uses
  store i64 0, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 336 ; 4 uses
  %i.al = load i64, ptr %i.ak, align 8, !noundef !5
  %i.am = add i64 %i.al, 1
  store i64 %i.am, ptr %i.ak, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.l, i64 344 ; 3 uses
  store i64 0, ptr %i.an, align 8
  %i.ao = load i64, ptr %i.l, align 8, !range !9, !noundef !5
  %i.ap = trunc nuw i64 %i.ao to i1
  br i1 %i.ap, label %bb.f, label %bb.g

bb.f:                                             ; preds = %"_ZN4core3ptr78drop_in_place$LT$$u5b$regex_automata..util..determinize..state..State$u5d$$GT$17hc4c990ce99349a12E.exit"
  %i.aq = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !noundef !5
  store i64 %i.as, ptr %i.aq, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %"_ZN4core3ptr78drop_in_place$LT$$u5b$regex_automata..util..determinize..state..State$u5d$$GT$17hc4c990ce99349a12E.exit"
  tail call fastcc void @_ZN14regex_automata6hybrid3dfa4Lazy10init_cache17h6ba1ae51ca18670dE(ptr noalias noundef align 8 dereferenceable(16) %0)
  %i.at = getelementptr inbounds nuw i8, ptr %i.l, i64 256 ; 5 uses
  %.sroa.09.0.copyload = load i32, ptr %i.at, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 260 ; 3 uses
  %.sroa.510.0.copyload = load i32, ptr %.sroa.510.0..sroa_idx, align 4 ; 4 uses
  %.sroa.611.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 264 ; 3 uses
  %.sroa.611.0.copyload = load ptr, ptr %.sroa.611.0..sroa_idx, align 8 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 272
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8 ; 3 uses
  store i32 0, ptr %i.at, align 8
  %i.au = icmp eq i32 %.sroa.09.0.copyload, 1
  br i1 %i.au, label %bb.h, label %bb.bd

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.611.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %.sroa.611.0.copyload, ptr %i.j, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %.sroa.7.0.copyload, ptr %i.av, align 8
  %i.aw = load ptr, ptr %0, align 8, !nonnull !5, !align !6, !noundef !5 ; 12 uses
  %i.ax = icmp eq i32 %.sroa.510.0.copyload, -2147483648
  br i1 %i.ax, label %_ZN14regex_automata6hybrid3dfa7LazyRef11is_sentinel17hd5c013ad7821a2c8E.exit.thread, label %bb.i, !prof !808

bb.i:                                             ; preds = %bb.h
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 696 ; 3 uses
  %i.az = load i64, ptr %i.ay, align 8, !noalias !809, !noundef !5
  %i.ba = and i64 %i.az, 63                       ; 5 uses
  %i.bb = shl nuw i64 1, %i.ba                    ; 2 uses
  %i.bc = icmp samesign ugt i64 %i.ba, 26
  br i1 %i.bc, label %bb.j, label %_ZN14regex_automata6hybrid3dfa7LazyRef7dead_id17h5cf5af11180be523E.exit.i

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !810
  store i64 %i.bb, ptr %i.h, align 8, !noalias !810
  br label %.invoke96

_ZN14regex_automata6hybrid3dfa7LazyRef7dead_id17h5cf5af11180be523E.exit.i: ; preds = %bb.i
  %i.bd = trunc nuw nsw i64 %i.bb to i32
  %i.be = or i32 %i.bd, 1073741824
  %i.bf = icmp eq i32 %.sroa.510.0.copyload, %i.be
  br i1 %i.bf, label %_ZN14regex_automata6hybrid3dfa7LazyRef11is_sentinel17hd5c013ad7821a2c8E.exit.thread, label %bb.k, !prof !808

bb.k:                                             ; preds = %_ZN14regex_automata6hybrid3dfa7LazyRef7dead_id17h5cf5af11180be523E.exit.i
  %i.bg = shl nuw nsw i64 2, %i.ba                ; 2 uses
  %i.bh = icmp eq i64 %i.ba, 26
  br i1 %i.bh, label %bb.l, label %_ZN14regex_automata6hybrid3dfa7LazyRef11is_sentinel17hd5c013ad7821a2c8E.exit

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !811
  store i64 %i.bg, ptr %i.g, align 8, !noalias !811
  br label %.invoke96

.invoke96:                                        ; preds = %bb.j, %bb.l
  %i.bi = phi ptr [ %i.g, %bb.l ], [ %i.h, %bb.j ]
  %i.bj = phi ptr [ @72, %bb.l ], [ @71, %bb.j ]
end_hunk_2
begin_hunk_3_@"_ZN78_$LT$regex_automata..meta..error..BuildError$u20$as$u20$core..fmt..Display$GT$3fmt17h753ad6629e7d7d98E":bb.a

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN78_$LT$regex_automata..meta..error..RetryError$u20$as$u20$core..fmt..Display$GT$3fmt17hcd9df802cf17971dE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = load i64, ptr %0, align 8, !range !9, !noundef !5
  %i.d = trunc nuw i64 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1929)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1930
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1930
  store ptr %i.e, ptr %i.a, align 8, !noalias !1930
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h70ecac23f49aed3dE", ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !1930
  store ptr @167, ptr %i.b, align 8, !noalias !1930
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.f, align 8, !noalias !1930
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.g, align 8, !noalias !1930
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.a, ptr %i.h, align 8, !noalias !1930
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 1, ptr %i.i, align 8, !noalias !1930
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3.i = load ptr, ptr %i.j, align 8, !alias.scope !1929, !noalias !1931
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !1929, !noalias !1931
  %i.k = call noundef zeroext i1 @_ZN4core3fmt5write17h1d2246b072ea91ebE(ptr noundef nonnull align 1 %.val.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val3.i, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b), !noalias !1929
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1930
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1930
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1932)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i = load ptr, ptr %i.l, align 8, !alias.scope !1932
  %.val.i1 = load ptr, ptr %1, align 8, !alias.scope !1932
  %i.m = getelementptr inbounds nuw i8, ptr %.val1.i, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !invariant.load !5, !noalias !1933, !nonnull !5
  %i.o = tail call noundef zeroext i1 %i.n(ptr noundef nonnull align 1 %.val.i1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @175, i64 noundef 48), !noalias !1933, !inline_history !1934
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.k, %bb.b ], [ %i.o, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN80_$LT$regex_automata..util..alphabet..ByteClasses$u20$as$u20$core..fmt..Debug$GT$3fmt17hfa560a315256f4f9E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(256) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [48 x i8], align 8                ; 8 uses
  %i.f = alloca [4 x i8], align 4                 ; 5 uses
  %i.g = alloca [4 x i8], align 2                 ; 7 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [48 x i8], align 8                ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 255
  %i.l = load i8, ptr %i.k, align 1, !noundef !5  ; 3 uses
  %i.m = icmp eq i8 %i.l, -1
  br i1 %i.m, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit, label %.split

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit: ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val62 = load ptr, ptr %i.n, align 8
  %.val61 = load ptr, ptr %1, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %.val62, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !invariant.load !5, !noalias !1947, !nonnull !5
  %i.q = tail call noundef zeroext i1 %i.p(ptr noundef nonnull align 1 %.val61, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @142, i64 noundef 25), !noalias !1947, !inline_history !19
  br label %.loopexit

.split:                                           ; preds = %bb.a
  %.val59 = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val60 = load ptr, ptr %i.r, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val60, i64 24 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !invariant.load !5, !noalias !1948, !nonnull !5 ; 2 uses
  %i.u = tail call noundef zeroext i1 %i.t(ptr noundef nonnull align 1 %.val59, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @143, i64 noundef 12), !noalias !1948, !inline_history !19
  br i1 %i.u, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.split
  %i.v = zext i8 %i.l to i64
  %i.w = add nuw nsw i64 %i.v, 2                  ; 2 uses
  %i.x = zext i8 %i.l to i32
  %i.y = shl nuw nsw i32 %i.x, 8
  %.sroa.01.0.insert.insert.i.i.i = add nuw nsw i32 %i.y, 256
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.7.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %.split114
  %i.am = phi ptr [ %i.bu, %.split114 ], [ %i.t, %.preheader ]
  %.sroa.9.0 = phi i64 [ %i.an, %.split114 ], [ 0, %.preheader ] ; 4 uses
  %i.an = add i64 %.sroa.9.0, 1                   ; 2 uses
  %i.ao = icmp eq i64 %i.an, %i.w                 ; 3 uses
  br i1 %i.ao, label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27d908b5b4e089f9E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ap = icmp ult i64 %.sroa.9.0, %i.w
  br i1 %i.ap, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit.i.i", label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27d908b5b4e089f9E.exit.thread"

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit.i.i": ; preds = %bb.c
  %i.aq = trunc nuw nsw i64 %.sroa.9.0 to i32
  br label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27d908b5b4e089f9E.exit"

"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27d908b5b4e089f9E.exit": ; preds = %bb.b, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit.i.i"
  %.sroa.4.sroa.0.0.i.ph.i = phi i32 [ %i.aq, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit.i.i" ], [ %.sroa.01.0.insert.insert.i.i.i, %bb.b ]
  %.sroa.4.sroa.0.0.i.ph.i.fr = freeze i32 %.sroa.4.sroa.0.0.i.ph.i ; 3 uses
  %.not45 = icmp eq i64 %.sroa.9.0, 0
  br i1 %.not45, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit72, label %.split113

"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27d908b5b4e089f9E.exit.thread": ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @145, ptr %i.a, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.au, align 8
  %i.av = call fastcc noundef zeroext i1 @_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE(ptr nonnull %.val59, ptr nonnull %.val60, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit72, %.split113, %.split114, %bb.n, %.split, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit, %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27d908b5b4e089f9E.exit.thread"
  %.sroa.0.0.shrunk = phi i1 [ %i.q, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit ], [ %i.av, %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27d908b5b4e089f9E.exit.thread" ], [ true, %.split ], [ true, %bb.n ], [ true, %.split114 ], [ true, %.split113 ], [ true, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit72 ]
  ret i1 %.sroa.0.0.shrunk

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit72: ; preds = %.split113, %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27d908b5b4e089f9E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.aw = and i32 %.sroa.4.sroa.0.0.i.ph.i.fr, 255
  %.sroa.542.0.extract.shift = lshr i32 %.sroa.4.sroa.0.0.i.ph.i.fr, 8
  %storemerge.in = select i1 %i.ao, i32 %.sroa.542.0.extract.shift, i32 %i.aw
  %storemerge = zext nneg i32 %storemerge.in to i64
  store i64 %storemerge, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.i, ptr %i.h, align 8
  store ptr @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h70ecac23f49aed3dE", ptr %.sroa.417.0..sroa_idx, align 8
  store ptr @148, ptr %i.j, align 8
  store i64 2, ptr %i.z, align 8
  store ptr null, ptr %i.aa, align 8
  store ptr %i.h, ptr %i.ab, align 8
  store i64 1, ptr %i.ac, align 8
  %i.ax = call noundef zeroext i1 @_ZN4core3fmt5write17h1d2246b072ea91ebE(ptr noundef nonnull align 1 %.val59, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val60, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br i1 %i.ax, label %.loopexit, label %bb.d

.split113:                                        ; preds = %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27d908b5b4e089f9E.exit"
  %i.ay = call noundef zeroext i1 %i.am(ptr noundef nonnull align 1 %.val59, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @146, i64 noundef 2), !noalias !1949, !inline_history !19
  br i1 %i.ay, label %.loopexit, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit72

bb.d:                                             ; preds = %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit72
  %.sroa.4.0.extract.trunc.i.i.i = trunc i32 %.sroa.4.sroa.0.0.i.ph.i.fr to i8
  br label %bb.e

bb.e:                                             ; preds = %bb.m, %bb.d
  %.sroa.16.0 = phi i64 [ 0, %bb.d ], [ %.sroa.16.5, %bb.m ] ; 6 uses
  %.sroa.095.0 = phi i64 [ 2, %bb.d ], [ %.sroa.095.3, %bb.m ] ; 6 uses
  br i1 %i.ao, label %.split.us.i.us.preheader.i, label %.split.preheader.i.i.preheader

.split.preheader.i.i.preheader:                   ; preds = %bb.e
  %umax.i.i140 = call i64 @llvm.umax.i64(i64 %.sroa.16.0, i64 256) ; 2 uses
  %exitcond.not.i.i133141 = icmp ugt i64 %.sroa.16.0, 255
  br i1 %exitcond.not.i.i133141, label %.split22.us.i.i, label %.lr.ph

.split.us.i.us.preheader.i:                       ; preds = %bb.e
  %or.cond.i = icmp ult i64 %.sroa.16.0, 257
  br i1 %or.cond.i, label %select.unfold.us.peel.i, label %.loopexit.i

select.unfold.us.peel.i:                          ; preds = %.split.us.i.us.preheader.i
  %.sroa.095.1.extract.shift104 = lshr i64 %.sroa.095.0, 8
  %i.az = and i64 %.sroa.095.0, 255
  %.not68.us.peel.i = icmp eq i64 %i.az, 2
  br i1 %.not68.us.peel.i, label %.loopexit.i, label %.split98.us.i

.lr.ph:                                           ; preds = %.split.preheader.i.i.preheader, %.split.preheader.i.i
  %umax.i.i144 = phi i64 [ %umax.i.i, %.split.preheader.i.i ], [ %umax.i.i140, %.split.preheader.i.i.preheader ] ; 2 uses
  %.sroa.095.1143 = phi i64 [ %storemerge.i, %.split.preheader.i.i ], [ %.sroa.095.0, %.split.preheader.i.i.preheader ] ; 5 uses
  %.sroa.16.1142 = phi i64 [ %i.bb, %.split.preheader.i.i ], [ %.sroa.16.0, %.split.preheader.i.i.preheader ] ; 2 uses
  br label %bb.f

.split.i.i:                                       ; preds = %bb.f
  %exitcond.not.i.i = icmp eq i64 %i.bb, %umax.i.i144
  br i1 %exitcond.not.i.i, label %.split22.us.i.i, label %bb.f

.split22.us.i.i:                                  ; preds = %.split.preheader.i.i, %.split.i.i, %.split.preheader.i.i.preheader
  %.sroa.16.1.lcssa = phi i64 [ %.sroa.16.1142, %.split.i.i ], [ %.sroa.16.0, %.split.preheader.i.i.preheader ], [ %i.bb, %.split.preheader.i.i ]
  %.sroa.095.1.lcssa = phi i64 [ %.sroa.095.1143, %.split.i.i ], [ %.sroa.095.0, %.split.preheader.i.i.preheader ], [ %storemerge.i, %.split.preheader.i.i ]
  %umax.i.i.lcssa = phi i64 [ %umax.i.i144, %.split.i.i ], [ %umax.i.i140, %.split.preheader.i.i.preheader ], [ %umax.i.i, %.split.preheader.i.i ]
  %i.ba = icmp ult i64 %.sroa.16.1.lcssa, 257
  %spec.select = select i1 %i.ba, i64 257, i64 %umax.i.i.lcssa
  br label %.loopexit.i

bb.f:                                             ; preds = %.lr.ph, %.split.i.i
  %.sroa.16.2134 = phi i64 [ %.sroa.16.1142, %.lr.ph ], [ %i.bb, %.split.i.i ] ; 6 uses
  %i.bb = add i64 %.sroa.16.2134, 1               ; 7 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.16.2134
  %i.bd = load i8, ptr %i.bc, align 1, !noalias !1950, !noundef !5
  %.not.i.i = icmp eq i8 %i.bd, %.sroa.4.0.extract.trunc.i.i.i
  br i1 %.not.i.i, label %select.unfold.i, label %.split.i.i

select.unfold.i:                                  ; preds = %bb.f
  %i.be = and i64 %.sroa.095.1143, 255
  %.not68.i = icmp eq i64 %i.be, 2
  br i1 %.not68.i, label %bb.h, label %bb.g

.loopexit.i:                                      ; preds = %select.unfold.us.peel.i, %.split22.us.i.i, %.split.us.i.us.preheader.i
  %.sroa.16.4 = phi i64 [ %spec.select, %.split22.us.i.i ], [ %.sroa.16.0, %.split.us.i.us.preheader.i ], [ 257, %select.unfold.us.peel.i ]
  %.sroa.095.2 = phi i64 [ %.sroa.095.1.lcssa, %.split22.us.i.i ], [ %.sroa.095.0, %.split.us.i.us.preheader.i ], [ 72057598349672449, %select.unfold.us.peel.i ] ; 3 uses
  %.sroa.095.1.extract.shift101 = lshr i64 %.sroa.095.2, 8
  %.sroa.095.0.insert.mask = and i64 %.sroa.095.2, -256
  %.sroa.095.0.insert.insert = or disjoint i64 %.sroa.095.0.insert.mask, 2
  br label %"_ZN113_$LT$regex_automata..util..alphabet..ByteClassElementRanges$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb127a1c5576b45d0E.exit"

bb.g:                                             ; preds = %select.unfold.i
  %.sroa.095.1.extract.shift = lshr i64 %.sroa.095.1143, 8 ; 2 uses
  %.sroa.095.1.extract.trunc = trunc nuw i64 %.sroa.095.1.extract.shift to i56 ; 3 uses
  %i.bf = and i56 %.sroa.095.1.extract.trunc, 16777216
  %.not71.i = icmp eq i56 %i.bf, 0
  %.sroa.461.0.extract.shift69.i = lshr i56 %.sroa.095.1.extract.trunc, 32
  %i.bg = and i56 %.sroa.461.0.extract.shift69.i, 255
  %sum.shift.i = lshr i56 %.sroa.095.1.extract.trunc, 40
  %.sink.i = select i1 %.not71.i, i56 %i.bg, i56 %sum.shift.i
  %narrow.i = add nuw nsw i56 %.sink.i, 1
  %i.bh = zext nneg i56 %narrow.i to i64
  %i.bi = and i64 %.sroa.16.2134, 255
  %.not73.not.i = icmp eq i64 %i.bi, %i.bh
  br i1 %.not73.not.i, label %bb.i, label %.split98.us.i

bb.h:                                             ; preds = %select.unfold.i
  %.sroa.4.0.insert.insert.i = mul nuw i64 %.sroa.16.2134, 1099511628032
  br label %.split.preheader.i.i

.split.preheader.i.i:                             ; preds = %bb.i, %bb.h
  %storemerge.i = phi i64 [ %.sroa.4.0.insert.insert.i, %bb.h ], [ %.sroa.052.0.insert.insert.i, %bb.i ] ; 2 uses
  %umax.i.i = call i64 @llvm.umax.i64(i64 %i.bb, i64 256) ; 2 uses
  %exitcond.not.i.i133 = icmp ugt i64 %i.bb, 255
  br i1 %exitcond.not.i.i133, label %.split22.us.i.i, label %.lr.ph

bb.i:                                             ; preds = %bb.g
  %.sroa.655.0.insert.shift.i = shl nuw i64 %.sroa.16.2134, 40
  %i.bj = and i64 %.sroa.095.1143, 4294967295
  %.sroa.052.0.insert.insert.i = or disjoint i64 %.sroa.655.0.insert.shift.i, %i.bj
  br label %.split.preheader.i.i

.split98.us.i:                                    ; preds = %bb.g, %select.unfold.us.peel.i
  %.sroa.16.3 = phi i64 [ 257, %select.unfold.us.peel.i ], [ %i.bb, %bb.g ]
  %.us-phi.i = phi i64 [ 4294967297, %select.unfold.us.peel.i ], [ 0, %bb.g ]
  %.us-phi99.i = phi i64 [ 65536, %select.unfold.us.peel.i ], [ %.sroa.16.2134, %bb.g ] ; 2 uses
  %.us-phi100.i = phi i64 [ %.sroa.095.0, %select.unfold.us.peel.i ], [ %.sroa.095.1143, %bb.g ]
  %.us-phi101.i = phi i64 [ %.sroa.095.1.extract.shift104, %select.unfold.us.peel.i ], [ %.sroa.095.1.extract.shift, %bb.g ]
  %.sroa.6.0.insert.shift.i = shl nuw i64 %.us-phi99.i, 40
  %.sroa.4.0.insert.shift46.i = shl nuw nsw i64 %.us-phi99.i, 8
  %.sroa.4.0.insert.insert48.i = or disjoint i64 %.us-phi.i, %.sroa.6.0.insert.shift.i
  %.sroa.044.0.insert.insert.i = add nuw nsw i64 %.sroa.4.0.insert.insert48.i, %.sroa.4.0.insert.shift46.i
  br label %"_ZN113_$LT$regex_automata..util..alphabet..ByteClassElementRanges$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb127a1c5576b45d0E.exit"

"_ZN113_$LT$regex_automata..util..alphabet..ByteClassElementRanges$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb127a1c5576b45d0E.exit": ; preds = %.loopexit.i, %.split98.us.i
  %.sroa.16.5 = phi i64 [ %.sroa.16.4, %.loopexit.i ], [ %.sroa.16.3, %.split98.us.i ]
  %.sroa.095.3 = phi i64 [ %.sroa.095.0.insert.insert, %.loopexit.i ], [ %.sroa.044.0.insert.insert.i, %.split98.us.i ]
  %.sroa.5.sroa.0.0.i = phi i64 [ %.sroa.095.1.extract.shift101, %.loopexit.i ], [ %.us-phi101.i, %.split98.us.i ] ; 6 uses
  %.sroa.0.0.i = phi i64 [ %.sroa.095.2, %.loopexit.i ], [ %.us-phi100.i, %.split98.us.i ] ; 2 uses
  %.sroa.043.0.extract.trunc = trunc i64 %.sroa.0.0.i to i8 ; 4 uses
  %.not46 = icmp eq i8 %.sroa.043.0.extract.trunc, 2
  br i1 %.not46, label %.split114, label %bb.j

bb.j:                                             ; preds = %"_ZN113_$LT$regex_automata..util..alphabet..ByteClassElementRanges$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb127a1c5576b45d0E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i8 %.sroa.043.0.extract.trunc, ptr %i.g, align 2
  %.sroa.7.sroa.0.0.extract.trunc = trunc i64 %.sroa.5.sroa.0.0.i to i24
  store i24 %.sroa.7.sroa.0.0.extract.trunc, ptr %.sroa.7.0..sroa_idx10, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %sum.shift = lshr i64 %.sroa.5.sroa.0.0.i, 24   ; 3 uses
  %.sroa.7.sroa.0.3.extract.trunc = trunc nuw i64 %sum.shift to i32
  store i32 %.sroa.7.sroa.0.3.extract.trunc, ptr %i.f, align 4
  %i.bk = trunc i64 %sum.shift to i8
  %i.bl = trunc i64 %sum.shift to i1
  %i.bm = icmp eq i8 %i.bk, %.sroa.043.0.extract.trunc
  %i.bn = trunc i64 %.sroa.5.sroa.0.0.i to i8
  %i.bo = lshr i64 %.sroa.5.sroa.0.0.i, 32
  %i.bp = trunc i64 %i.bo to i8
  %i.bq = lshr i64 %.sroa.5.sroa.0.0.i, 8
  %i.br = trunc i64 %i.bq to i16
  %i.bs = lshr i64 %.sroa.5.sroa.0.0.i, 40
  %i.bt = trunc nuw i64 %i.bs to i16
  br i1 %i.bm, label %bb.k, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit87

.split114:                                        ; preds = %"_ZN113_$LT$regex_automata..util..alphabet..ByteClassElementRanges$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb127a1c5576b45d0E.exit"
  %i.bu = load ptr, ptr %i.s, align 8, !invariant.load !5, !noalias !1951, !nonnull !5 ; 2 uses
  %i.bv = call noundef zeroext i1 %i.bu(ptr noundef nonnull align 1 %.val59, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @149, i64 noundef 1), !noalias !1951, !inline_history !19
  br i1 %i.bv, label %.loopexit, label %bb.b

bb.k:                                             ; preds = %bb.j
  %i.bw = trunc i64 %.sroa.0.0.i to i1
  br i1 %i.bw, label %.split116, label %bb.l

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit87: ; preds = %.split116, %bb.j, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.g, ptr %i.b, align 8
  store ptr @"_ZN73_$LT$regex_automata..util..alphabet..Unit$u20$as$u20$core..fmt..Debug$GT$3fmt17h0734a59f82b81a2bE", ptr %.sroa.435.0..sroa_idx, align 8
  store ptr %i.f, ptr %i.ad, align 8
  store ptr @"_ZN73_$LT$regex_automata..util..alphabet..Unit$u20$as$u20$core..fmt..Debug$GT$3fmt17h0734a59f82b81a2bE", ptr %.sroa.439.0..sroa_idx, align 8
  store ptr @151, ptr %i.c, align 8
  store i64 2, ptr %i.ae, align 8
  store ptr null, ptr %i.af, align 8
  store ptr %i.b, ptr %i.ag, align 8
  store i64 2, ptr %i.ah, align 8
  %i.bx = call noundef zeroext i1 @_ZN4core3fmt5write17h1d2246b072ea91ebE(ptr noundef nonnull align 1 %.val59, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val60, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.bx, label %bb.n, label %bb.m

.split116:                                        ; preds = %bb.k
  call void @llvm.assume(i1 %i.bl)
  %i.by = icmp eq i16 %i.br, %i.bt
  br i1 %i.by, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit92, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit87

bb.l:                                             ; preds = %bb.k
  %i.bz = icmp eq i8 %.sroa.043.0.extract.trunc, 0
  call void @llvm.assume(i1 %i.bz)
  %i.ca = icmp eq i8 %i.bn, %i.bp
  br i1 %i.ca, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit92, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit87

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit92: ; preds = %bb.l, %.split116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.g, ptr %i.d, align 8
  store ptr @"_ZN73_$LT$regex_automata..util..alphabet..Unit$u20$as$u20$core..fmt..Debug$GT$3fmt17h0734a59f82b81a2bE", ptr %.sroa.431.0..sroa_idx, align 8
  store ptr @128, ptr %i.e, align 8
  store i64 1, ptr %i.ai, align 8
  store ptr null, ptr %i.aj, align 8
  store ptr %i.d, ptr %i.ak, align 8
  store i64 1, ptr %i.al, align 8
  %i.cb = call noundef zeroext i1 @_ZN4core3fmt5write17h1d2246b072ea91ebE(ptr noundef nonnull align 1 %.val59, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val60, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.cb, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit92, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit87
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.e

bb.n:                                             ; preds = %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit92, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit87
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %.loopexit
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN80_$LT$regex_automata..util..sparse_set..SparseSet$u20$as$u20$core..fmt..Debug$GT$3fmt17hd28f8ef7f6b93804E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !5 ; 2 uses
  %.not = icmp ugt i64 %i.d, %i.f
  br i1 %.not, label %bb.b, label %bb.c, !prof !1952

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core5slice5index16slice_index_fail17h69cf93148e2c0fa9E(i64 noundef 0, i64 noundef %i.d, i64 noundef %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @154) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.d
  call void @"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h0f0d7b38e10a9334E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_ZN4core3fmt9Formatter11debug_tuple17h56f4f7e7cf4db9ecE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @152, i64 noundef 9)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.e, %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..util..primitives..StateID$GT$$GT$17hc4a99848f8d07f9fE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #29
          to label %common.resume unwind label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.k = invoke noundef align 8 dereferenceable(24) ptr @_ZN4core3fmt8builders10DebugTuple5field17h6bec910804d66a80E(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @153)
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  %i.l = invoke noundef zeroext i1 @_ZN4core3fmt8builders10DebugTuple6finish17h19c0455a7e2f40cfE(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.g unwind label %bb.d

bb.g:                                             ; preds = %bb.f
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd01970aed9f1e853E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..util..primitives..StateID$GT$$GT$17hc4a99848f8d07f9fE.exit" unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb999820c28fdf921E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #30
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.h ], [ %i.j, %bb.d ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..util..primitives..StateID$GT$$GT$17hc4a99848f8d07f9fE.exit": ; preds = %bb.g
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb999820c28fdf921E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.l

bb.j:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #30
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN81_$LT$regex_automata..dfa..automaton..StartError$u20$as$u20$core..fmt..Display$GT$3fmt17had191af9a36d1b1cE"(ptr noalias noundef readonly align 4 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [1 x i8], align 1                 ; 4 uses
  %i.f = alloca [48 x i8], align 8                ; 8 uses
  %i.g = load i32, ptr %0, align 4, !range !1957, !noundef !5
  switch i32 %i.g, label %default.unreachable [
    i32 3, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit
    i32 0, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit19
    i32 1, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit24
    i32 2, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit29
  ]

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.i = load i8, ptr %i.h, align 4, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 %i.i, ptr %i.e, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.e, ptr %i.d, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @"_ZN76_$LT$regex_automata..util..escape..DebugByte$u20$as$u20$core..fmt..Debug$GT$3fmt17h94caa00428537c73E", ptr %.sroa.43.0..sroa_idx, align 8
  store ptr @157, ptr %i.f, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 2, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr null, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.d, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 1, ptr %i.m, align 8
  %.val13 = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val14 = load ptr, ptr %i.n, align 8, !nonnull !5, !noundef !5
end_hunk_3
