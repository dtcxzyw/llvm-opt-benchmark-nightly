Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/regex_automata-4af06e9cdbcb175e.regex_automata.4a84a3584f3e0a2d-cgu.04?download=true
inline.NumInlined: 554
inline.NumDeleted: 232
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 10
begin_hunk_0
@56 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @33, [16 x i8] c"l\00\00\00\00\00\00\00;\0A\00\00\09\00\00\00" }>, align 8
@57 = private unnamed_addr constant [83 x i8] c"attempted to search for a specific pattern without enabling starts_for_each_pattern", align 1
@58 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @57, [8 x i8] c"S\00\00\00\00\00\00\00" }>, align 8
@59 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @33, [16 x i8] c"l\00\00\00\00\00\00\00A\0A\00\00\11\00\00\00" }>, align 8
@60 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @33, [16 x i8] c"l\00\00\00\00\00\00\00J\0A\00\00\1A\00\00\00" }>, align 8
@61 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @33, [16 x i8] c"l\00\00\00\00\00\00\00S\08\00\00\1F\00\00\00" }>, align 8
@62 = private unnamed_addr constant ptr @_ZN4core3ops8function6FnOnce9call_once17h063ce0cfb40ccac6E, align 8
@63 = private unnamed_addr constant [16 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16
@64 = private unnamed_addr constant <{ ptr, [24 x i8] }> <{ ptr @63, [24 x i8] zeroinitializer }>, align 8
@65 = private unnamed_addr constant [177 x i8] c"cannot build lazy DFAs for regexes with Unicode word boundaries; switch to ASCII word boundaries, or heuristically enable Unicode word boundaries or use a different regex engine", align 1
@66 = private unnamed_addr constant [81 x i8] c"cannot set non-ASCII byte to be non-quit when Unicode word boundaries are enabled", align 1
@67 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @66, [8 x i8] c"Q\00\00\00\00\00\00\00" }>, align 8
@68 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @33, [16 x i8] c"l\00\00\00\00\00\00\00\1A\0D\00\00\0D\00\00\00" }>, align 8
@69 = private unnamed_addr constant <{ [24 x i8], [1 x i8], [7 x i8] }> <{ [24 x i8] undef, [1 x i8] c"\02", [7 x i8] undef }>, align 8
@70 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @33, [16 x i8] c"l\00\00\00\00\00\00\00\96\0A\00\00\1B\00\00\00" }>, align 8
@71 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @33, [16 x i8] c"l\00\00\00\00\00\00\00\B2\0A\00\003\00\00\00" }>, align 8
@72 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @33, [16 x i8] c"l\00\00\00\00\00\00\00\BB\0A\00\003\00\00\00" }>, align 8
@73 = private unnamed_addr constant [111 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/regex-automata-0.4.10/src/hybrid/regex.rs\00", align 1
@74 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @73, [16 x i8] c"n\00\00\00\00\00\00\00'\02\00\00\09\00\00\00" }>, align 8
@"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$23__RUST_STD_INTERNAL_VAL17h52bbdbbe49363830E" = external thread_local global { { { [2 x i64] } }, i8, [7 x i8] }
@75 = private unnamed_addr constant [2 x i8] c"()", align 1
@76 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN78_$LT$regex_automata..hybrid..error..CacheError$u20$as$u20$core..fmt..Debug$GT$3fmt17h778e58d2ccca7f18E" }>, align 8
@77 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN81_$LT$regex_automata..hybrid..id..LazyStateIDError$u20$as$u20$core..fmt..Debug$GT$3fmt17h4622874dfec9bb0dE" }>, align 8
@78 = private unnamed_addr constant [43 x i8] c"called `Result::unwrap()` on an `Err` value", align 1
@79 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN70_$LT$core..num..error..TryFromIntError$u20$as$u20$core..fmt..Debug$GT$3fmt17h800be8c82c92677eE" }>, align 8
@80 = private unnamed_addr constant [4 x i8] c"None", align 1
@81 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h8541d3444ac5bafdE" }>, align 8
@82 = private unnamed_addr constant [4 x i8] c"Some", align 1
@83 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h38ca191f4b30c911E" }>, align 8
@84 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h9ac7d9776c962473E" }>, align 8
@85 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0e9d2941a915bc5cE" }>, align 8
@86 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17he3e51260b2ca02d1E" }>, align 8
@87 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h7ebc8c0d9bf6ca48E" }>, align 8
@88 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @"_ZN4core3ptr56drop_in_place$LT$regex_automata..hybrid..dfa..Config$GT$17hf9da6806932b83c5E", [16 x i8] c"\90\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00", ptr @"_ZN72_$LT$regex_automata..hybrid..dfa..Config$u20$as$u20$core..fmt..Debug$GT$3fmt17h6d3fd9550f8e9ae6E" }>, align 8
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
  %i.o = trunc nuw nsw i64 %i.c to i32
  store i64 %i.d, ptr %i.b, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit", %_ZN14regex_automata4util8alphabet4Unit3eoi17h7bde68dad5abe20fE.exit
  %.sroa.4.sroa.0.0 = phi i32 [ %.sroa.01.0.insert.insert.i, %_ZN14regex_automata4util8alphabet4Unit3eoi17h7bde68dad5abe20fE.exit ], [ %i.o, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit" ], [ 0, %bb.b ]
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
  %.sroa.0.0 = phi i8 [ %.us-phi100, %.split98.us ], [ %.sroa.0.0.copyload1, %.loopexit ]
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
  %.us-phi99 = phi i64 [ 65536, %select.unfold.us.peel ], [ %i.g, %bb.d ] ; 2 uses
  %.us-phi100 = phi i8 [ %.sroa.0.0.copyload.us.peel, %select.unfold.us.peel ], [ %.sroa.0.0.copyload, %bb.d ]
  %.us-phi101 = phi i56 [ %.sroa.5.sroa.0.0.copyload.us.peel, %select.unfold.us.peel ], [ %.sroa.5.sroa.0.0.copyload, %bb.d ]
  %.sroa.6.0.insert.shift = shl nuw i64 %.us-phi99, 40
  %.sroa.549.0.insert.shift = shl nuw nsw i64 %.us-phi, 32
  %.sroa.549.0.insert.insert = or disjoint i64 %.sroa.549.0.insert.shift, %.sroa.6.0.insert.shift
  %.sroa.4.0.insert.shift46 = shl nuw nsw i64 %.us-phi99, 8
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
  %.sroa.4.sroa.0.0 = phi i32 [ %i.aa, %.split40 ], [ %.sroa.01.0.insert.insert.i, %_ZN14regex_automata4util8alphabet4Unit3eoi17h7bde68dad5abe20fE.exit ], [ 0, %.split34.us ]
  %.sroa.0.0 = phi i32 [ 0, %.split40 ], [ 1, %_ZN14regex_automata4util8alphabet4Unit3eoi17h7bde68dad5abe20fE.exit ], [ 2, %.split34.us ]
  %.sroa.4.0.insert.shift = shl nuw nsw i32 %.sroa.4.sroa.0.0, 8
  %.sroa.0.0.insert.insert = or disjoint i32 %.sroa.4.0.insert.shift, %.sroa.0.0
  ret i32 %.sroa.0.0.insert.insert

.split40:                                         ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit", %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit.us"
  %.us-phi41 = phi i64 [ %.promoted, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit.us" ], [ %i.s, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit" ]
  %.us-phi42 = phi i8 [ %i.q, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit.us" ], [ %i.u, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit" ]
  %i.aa = trunc nuw i64 %.us-phi41 to i32
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
end_hunk_0
begin_hunk_1_@_ZN14regex_automata6hybrid3dfa4Lazy16cache_next_state17h6c5cd5765dfc4aaeE:bb.a
  %.sroa.4.0.i.i = phi i32 [ %spec.select.i.i, %bb.as ], [ undef, %_ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit.thread.i.i ], [ undef, %bb.at ]
  %.sroa.0.0.i11.i = phi i1 [ false, %bb.as ], [ true, %_ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit.thread.i.i ], [ true, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !967
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !997
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false), !noalias !998
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 16, i1 false), !noalias !959
  store i64 0, ptr %.sroa.519.0..sroa_idx, align 8, !noalias !998
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h64d9003bd4dd77e9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.bg unwind label %bb.ax, !noalias !998

bb.ax:                                            ; preds = %bb.aw
  %i.jr = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he3b98a42065343f1E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.thread unwind label %bb.ay, !noalias !998

bb.ay:                                            ; preds = %bb.ax
  %i.js = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #30, !noalias !998
  unreachable

.body.thread28.i:                                 ; preds = %bb.au, %.body.thread.i.i, %.body.thread33.loopexit.split-lp.i, %.body.thread33.loopexit.i
  %eh.lpad-body31.i = phi { ptr, i32 } [ %eh.lpad-body56.i.i, %bb.au ], [ %eh.lpad-body56.i.i, %.body.thread.i.i ], [ %lpad.loopexit.i, %.body.thread33.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.body.thread33.loopexit.split-lp.i ]
  invoke fastcc void @"_ZN4core3ptr78drop_in_place$LT$regex_automata..util..determinize..state..StateBuilderNFA$GT$17h57b9f018b25accc3E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.i) #29
          to label %.thread unwind label %bb.az, !noalias !959

bb.az:                                            ; preds = %.body.thread28.i
  %i.jt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #30, !noalias !959
  unreachable

bb.ba:                                            ; preds = %bb.b
  %i.ju = lshr i64 %i.t, %i.bp                    ; 3 uses
  %i.jv = icmp samesign ult i64 %i.ju, %i.an
  br i1 %i.jv, label %_ZN14regex_automata6hybrid3dfa7LazyRef16get_cached_state17he5aa788c12b27d87E.exit.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  invoke void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.ju, i64 noundef %i.an, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #27
          to label %.noexc36 unwind label %.body

.noexc36:                                         ; preds = %bb.bb
  unreachable

_ZN14regex_automata6hybrid3dfa7LazyRef16get_cached_state17he5aa788c12b27d87E.exit.i: ; preds = %bb.ba
  %i.jw = load ptr, ptr %i.ab, align 8, !noalias !999, !nonnull !5, !noundef !5
  %i.jx = getelementptr inbounds nuw [16 x i8], ptr %i.jw, i64 %i.ju ; 3 uses
  %i.jy = load ptr, ptr %i.jx, align 8, !nonnull !5, !noundef !5
  %i.jz = atomicrmw add ptr %i.jy, i64 1 monotonic, align 8
  %i.ka = icmp slt i64 %i.jz, 0
  br i1 %i.ka, label %bb.bf, label %bb.bc

bb.bc:                                            ; preds = %_ZN14regex_automata6hybrid3dfa7LazyRef16get_cached_state17he5aa788c12b27d87E.exit.i
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  %i.kc = load ptr, ptr %i.jx, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.kd = load i64, ptr %i.kb, align 8, !noundef !5 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.q, i64 256 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1000)
  %i.kf = load i32, ptr %i.ke, align 8, !range !20, !alias.scope !1000, !noundef !5
  %i.kg = icmp eq i32 %i.kf, 1
  br i1 %i.kg, label %bb.bd, label %_ZN14regex_automata6hybrid3dfa4Lazy10save_state17h358eb00e96258ce2E.exit

bb.bd:                                            ; preds = %bb.bc
  %i.kh = getelementptr inbounds nuw i8, ptr %i.q, i64 264 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1001)
  call void @llvm.experimental.noalias.scope.decl(metadata !1002)
  call void @llvm.experimental.noalias.scope.decl(metadata !1003)
  %i.ki = load ptr, ptr %i.kh, align 8, !alias.scope !1004, !nonnull !5, !noundef !5
  %i.kj = atomicrmw sub ptr %i.ki, i64 1 release, align 8, !noalias !1004
  %i.kk = icmp eq i64 %i.kj, 1
  br i1 %i.kk, label %bb.be, label %_ZN14regex_automata6hybrid3dfa4Lazy10save_state17h358eb00e96258ce2E.exit

bb.be:                                            ; preds = %bb.bd
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h8b8c19407ee8f9c0E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.kh)
          to label %_ZN14regex_automata6hybrid3dfa4Lazy10save_state17h358eb00e96258ce2E.exit unwind label %.body.thread

bb.bf:                                            ; preds = %_ZN14regex_automata6hybrid3dfa7LazyRef16get_cached_state17he5aa788c12b27d87E.exit.i
  call void @llvm.trap()
  unreachable

.body.thread:                                     ; preds = %bb.be
  %i.kl = landingpad { ptr, i32 }
          cleanup
  store i32 1, ptr %i.ke, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 260
  store i32 %1, ptr %.sroa.5.0..sroa_idx.i, align 4
  store ptr %i.kc, ptr %i.kh, align 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 272
  store i64 %i.kd, ptr %.sroa.7.0..sroa_idx.i, align 8
  br label %bb.bo

_ZN14regex_automata6hybrid3dfa4Lazy10save_state17h358eb00e96258ce2E.exit: ; preds = %bb.bc, %bb.bd, %bb.be
  store i32 1, ptr %i.ke, align 8
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.q, i64 260
  store i32 %1, ptr %.sroa.5.0..sroa_idx2.i, align 4
  %.sroa.6.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.q, i64 264
  store ptr %i.kc, ptr %.sroa.6.0..sroa_idx4.i, align 8
  %.sroa.7.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %i.q, i64 272
  store i64 %i.kd, ptr %.sroa.7.0..sroa_idx6.i, align 8
  %.pre = load i64, ptr %i.aq, align 8, !alias.scope !1005, !noalias !1006
  br label %bb.e

bb.bg:                                            ; preds = %bb.aw
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he3b98a42065343f1E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !997
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br i1 %.sroa.0.0.i11.i, label %bb.bn, label %bb.bh

bb.bh:                                            ; preds = %.thread78, %bb.bg
  %.pn39.i81 = phi i32 [ %i.dh, %.thread78 ], [ %.sroa.4.0.i.i, %bb.bg ] ; 2 uses
  br i1 %.not56, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %_ZN14regex_automata6hybrid3dfa4Lazy14saved_state_id17hef6fa269bafeaecfE.exit, %bb.bh
  %.sroa.0.0 = phi i32 [ %1, %bb.bh ], [ %.sroa.3.05.i.ph.i, %_ZN14regex_automata6hybrid3dfa4Lazy14saved_state_id17hef6fa269bafeaecfE.exit ]
  call fastcc void @_ZN14regex_automata6hybrid3dfa4Lazy14set_transition17hc3806a8fe9907783E(ptr nonnull %i.m, ptr nonnull %i.q, i32 noundef %.sroa.0.0, i32 %2, i32 noundef %.pn39.i81)
  br label %bb.bn

bb.bj:                                            ; preds = %bb.bh
  %i.km = getelementptr inbounds nuw i8, ptr %i.q, i64 256 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1007)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1007
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.km, i64 24, i1 false)
  store i32 0, ptr %i.km, align 8, !alias.scope !1007
  %i.kn = load i32, ptr %i.a, align 8, !range !20, !noalias !1007, !noundef !5
  switch i32 %i.kn, label %default.unreachable [
    i32 0, label %.noexc41
    i32 1, label %bb.bl
    i32 2, label %bb.bk
  ]

default.unreachable:                              ; preds = %bb.bj
  unreachable

bb.bk:                                            ; preds = %bb.bj
  %i.ko = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.kp = load i32, ptr %i.ko, align 4, !noalias !1007, !noundef !5
  br label %_ZN14regex_automata6hybrid3dfa4Lazy14saved_state_id17hef6fa269bafeaecfE.exit

bb.bl:                                            ; preds = %bb.bj
  %i.kq = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.kr = load i32, ptr %i.kq, align 4, !noalias !1007, !noundef !5 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1008)
  %i.ks = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1009)
  call void @llvm.experimental.noalias.scope.decl(metadata !1010)
  call void @llvm.experimental.noalias.scope.decl(metadata !1011)
  %i.kt = load ptr, ptr %i.ks, align 8, !alias.scope !1012, !noalias !1007, !nonnull !5, !noundef !5
  %i.ku = atomicrmw sub ptr %i.kt, i64 1 release, align 8, !noalias !1013
  %i.kv = icmp eq i64 %i.ku, 1
  br i1 %i.kv, label %bb.bm, label %_ZN14regex_automata6hybrid3dfa4Lazy14saved_state_id17hef6fa269bafeaecfE.exit

bb.bm:                                            ; preds = %bb.bl
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h8b8c19407ee8f9c0E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ks)
  br label %_ZN14regex_automata6hybrid3dfa4Lazy14saved_state_id17hef6fa269bafeaecfE.exit

.noexc41:                                         ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1007
  call void @_ZN4core6option13expect_failed17h40dde8b63ee0f843E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @46, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #27
  unreachable

_ZN14regex_automata6hybrid3dfa4Lazy14saved_state_id17hef6fa269bafeaecfE.exit: ; preds = %bb.bm, %bb.bk, %bb.bl
  %.sroa.3.05.i.ph.i = phi i32 [ %i.kp, %bb.bk ], [ %i.kr, %bb.bl ], [ %i.kr, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1007
  br label %bb.bi

bb.bn:                                            ; preds = %bb.bg, %bb.bi
  %.sroa.3.0 = phi i32 [ %.pn39.i81, %bb.bi ], [ undef, %bb.bg ]
  %.sroa.07.0 = phi i32 [ 0, %bb.bi ], [ 1, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.kw = insertvalue { i32, i32 } poison, i32 %.sroa.07.0, 0
  %i.kx = insertvalue { i32, i32 } %i.kw, i32 %.sroa.3.0, 1
  ret { i32, i32 } %i.kx

bb.bo:                                            ; preds = %.body, %.body.thread
  %eh.lpad-body49 = phi { ptr, i32 } [ %i.kl, %.body.thread ], [ %lpad.thr_comm.split-lp, %.body ]
  invoke fastcc void @"_ZN4core3ptr78drop_in_place$LT$regex_automata..util..determinize..state..StateBuilderNFA$GT$17h57b9f018b25accc3E"(ptr noalias noundef align 8 dereferenceable(32) %i.k) #29
          to label %.thread unwind label %bb.bp

bb.bp:                                            ; preds = %bb.bq, %bb.bo
  %i.ky = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #30
  unreachable

.thread:                                          ; preds = %.body.thread28.i, %bb.ax, %bb.j, %bb.bo, %bb.bq
  %.pn44 = phi { ptr, i32 } [ %i.di, %bb.j ], [ %i.kz, %bb.bq ], [ %eh.lpad-body31.i, %.body.thread28.i ], [ %eh.lpad-body49, %bb.bo ], [ %i.jr, %bb.ax ]
  resume { ptr, i32 } %.pn44

bb.bq:                                            ; preds = %bb.c
  %i.kz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr80drop_in_place$LT$regex_automata..util..determinize..state..StateBuilderEmpty$GT$17ha95b3336f3b08668E"(ptr noalias noundef align 8 dereferenceable(24) %i.l) #29
          to label %.thread unwind label %bb.bp
}

; Function Attrs: cold noinline nonlazybind uwtable
define range(i64 2, -4294967290) i64 @_ZN14regex_automata6hybrid3dfa4Lazy17cache_start_group17hf1db2c9e9fafa034E(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef range(i32 0, 3) %1, i32 %2, i8 noundef range(i8 0, 6) %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 3 uses
  %i.f = alloca [8 x i8], align 8                 ; 3 uses
  %i.g = alloca [8 x i8], align 8                 ; 3 uses
  %i.h = alloca [16 x i8], align 8                ; 12 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [32 x i8], align 8                ; 10 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [32 x i8], align 8                ; 7 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 8 uses
  %i.o = alloca [1 x i8], align 1                 ; 5 uses
  %i.p = load ptr, ptr %0, align 8, !nonnull !5, !align !6, !noundef !5 ; 21 uses
  switch i32 %1, label %default.unreachable57 [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

default.unreachable57:                            ; preds = %bb.bm, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 688
  %i.r = load ptr, ptr %i.q, align 16, !nonnull !5, !noundef !5
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 372
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 688
  %i.u = load ptr, ptr %i.t, align 16, !nonnull !5, !noundef !5
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 368
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 129
  %i.x = load i8, ptr %i.w, align 1, !range !16, !noundef !5
  %i.y = icmp eq i8 %i.x, 1
  br i1 %i.y, label %bb.bh, label %bb.bt

bb.e:                                             ; preds = %bb.bk, %bb.c, %bb.b
  %.sroa.014.0.in = phi ptr [ %i.s, %bb.b ], [ %i.v, %bb.c ], [ %i.jh, %bb.bk ]
  %.sroa.014.0 = load i32, ptr %.sroa.014.0.in, align 4, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1092)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i8 %3, ptr %i.o, align 1, !noalias !1092
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1092
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1092
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !1092, !nonnull !5, !align !17, !noundef !5 ; 35 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 232 ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false), !noalias !1092
  store i64 0, ptr %i.ab, align 8, !noalias !1092
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 240
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.44.0..sroa_idx.i, align 8, !noalias !1092
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 248 ; 3 uses
  store i64 0, ptr %.sroa.55.0..sroa_idx.i, align 8, !noalias !1092
  call void @_ZN14regex_automata4util11determinize5state17StateBuilderEmpty12into_matches17hb2535749dfc74a85E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.m), !noalias !1092
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1092
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 688 ; 3 uses
  invoke void @_ZN14regex_automata4util11determinize25set_lookbehind_from_start17h28c0877d98415cc7E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ac, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.o, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %bb.f unwind label %bb.bg, !noalias !1092

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 144
  store i64 0, ptr %i.ad, align 8, !noalias !1092
  %i.ae = invoke noundef i32 @_ZN14regex_automata4util11determinize5state19StateBuilderMatches9look_have17h3d2b2d6465044fa4E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n)
          to label %bb.g unwind label %bb.bg, !noalias !1092

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 208 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 96 ; 2 uses
  invoke void @_ZN14regex_automata4util11determinize15epsilon_closure17hd3d2caf28fa10b16E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ac, i32 noundef %.sroa.014.0, i32 noundef %i.ae, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ag)
          to label %bb.h unwind label %bb.bg, !noalias !1092

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1092
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1092
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !noalias !1092
  call void @_ZN14regex_automata4util11determinize5state19StateBuilderMatches8into_nfa17h53514b893a02f33dE(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.l, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.k), !noalias !1092
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1092
  invoke void @_ZN14regex_automata4util11determinize14add_nfa_states17hdd071caa9637c850E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ac, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ag, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.l)
          to label %bb.i unwind label %bb.be, !noalias !1092

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %i.p, i64 132
  %i.ai = load i8, ptr %i.ah, align 4, !range !16, !noalias !1092, !noundef !5 ; 2 uses
  %.not.i = icmp eq i8 %i.ai, 2
  %..i = select i1 %.not.i, i8 0, i8 %i.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1092
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false), !noalias !1092
  call void @llvm.experimental.noalias.scope.decl(metadata !1093)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !1093, !noalias !1094, !nonnull !5, !noundef !5 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !1093, !noalias !1094, !noundef !5 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 280 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aa, i64 304 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !1095, !noalias !1096, !noundef !5
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %select.unfold.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aa, i64 312
  %i.as = invoke noundef i64 @_ZN4core4hash11BuildHasher8hash_one17hb99f759386e1d3daE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ar, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ak, i64 noundef %i.am)
          to label %.noexc.i.i unwind label %.body.thread9.loopexit.split-lp.i.i, !noalias !1094 ; 2 uses

.noexc.i.i:                                       ; preds = %bb.j
  call void @llvm.experimental.noalias.scope.decl(metadata !1097)
  call void @llvm.experimental.noalias.scope.decl(metadata !1098)
  %i.at = lshr i64 %i.as, 57
  %i.au = trunc nuw nsw i64 %i.at to i8
  %i.av = getelementptr inbounds nuw i8, ptr %i.aa, i64 288
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !1099, !noalias !1100, !noundef !5 ; 2 uses
  %i.ax = load ptr, ptr %i.an, align 8, !alias.scope !1099, !noalias !1100, !nonnull !5, !noundef !5 ; 2 uses
  %.sroa.0.0.vec.insert.i.i.i.i.i = insertelement <16 x i8> poison, i8 %i.au, i64 0
  %.sroa.0.15.vec.insert.i.i.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.k

bb.k:                                             ; preds = %bb.m, %.noexc.i.i
  %.sroa.9.0.i.i.i.i.i = phi i64 [ 0, %.noexc.i.i ], [ %i.bo, %bb.m ]
  %.pn.i.i.i.i = phi i64 [ %i.as, %.noexc.i.i ], [ %i.bp, %bb.m ]
  %.sroa.01.0.i.i.i.i.i = and i64 %.pn.i.i.i.i, %i.aw ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.sroa.01.0.i.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i.i = load <16 x i8>, ptr %i.ay, align 1, !noalias !1101 ; 2 uses
  %i.az = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i, %.sroa.0.15.vec.insert.i.i.i.i.i
  %i.ba = bitcast <16 x i1> %i.az to i16          ; 2 uses
  %.not.i.not32.i.i.i.i = icmp eq i16 %i.ba, 0
  br i1 %.not.i.not32.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.k, %bb.l
  %.sroa.06.0.i33.i.i.i.i = phi i16 [ %i.bn, %bb.l ], [ %i.ba, %bb.k ] ; 3 uses
  %i.bb = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i.i.i, i1 true)
  %i.bc = zext nneg i16 %i.bb to i64
  %i.bd = add i64 %.sroa.01.0.i.i.i.i.i, %i.bc
  %i.be = and i64 %i.bd, %i.aw
  %i.bf = sub nsw i64 0, %i.be
  %i.bg = getelementptr inbounds [24 x i8], ptr %i.ax, i64 %i.bf ; 2 uses
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 -24
  %i.bi = invoke noundef zeroext i1 @"_ZN52_$LT$Q$u20$as$u20$hashbrown..Equivalent$LT$K$GT$$GT$10equivalent17hc5f9b252535ba185E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ak, i64 noundef %i.am, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bh)
          to label %.noexc8.i.i unwind label %.body.thread9.loopexit.i.i, !noalias !1094

.noexc8.i.i:                                      ; preds = %.lr.ph.i.i.i.i
  br i1 %i.bi, label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h6b08816dcab288c2E.exit.i.i", label %bb.l, !prof !13

._crit_edge.i.i.i.i:                              ; preds = %bb.l, %bb.k
  %i.bj = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i, splat (i8 -1)
  %i.bk = bitcast <16 x i1> %i.bj to i16
  %i.bl = icmp eq i16 %i.bk, 0
  br i1 %i.bl, label %bb.m, label %select.unfold.i.i, !prof !8

bb.l:                                             ; preds = %.noexc8.i.i
  %i.bm = add i16 %.sroa.06.0.i33.i.i.i.i, -1
  %i.bn = and i16 %i.bm, %.sroa.06.0.i33.i.i.i.i  ; 2 uses
  %.not.i.not.i.i.i.i = icmp eq i16 %i.bn, 0
  br i1 %.not.i.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.m:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bo = add i64 %.sroa.9.0.i.i.i.i.i, 16        ; 2 uses
  %i.bp = add i64 %.sroa.01.0.i.i.i.i.i, %i.bo
  br label %bb.k

.body.thread9.loopexit.i.i:                       ; preds = %.lr.ph.i.i.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread4.i.i

.body.thread9.loopexit.split-lp.i.i:              ; preds = %bb.ax, %bb.aw, %select.unfold.i.i, %bb.j
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread4.i.i

"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h6b08816dcab288c2E.exit.i.i": ; preds = %.noexc8.i.i
  %i.bq = getelementptr inbounds i8, ptr %i.bg, i64 -8
  %i.br = load i32, ptr %i.bq, align 4, !noalias !1094, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1102
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false), !noalias !1103
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 16, i1 false), !noalias !1094
  store i64 0, ptr %.sroa.55.0..sroa_idx.i, align 8, !noalias !1103
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h64d9003bd4dd77e9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_ZN14regex_automata6hybrid3dfa4Lazy15cache_start_one17h73fa352594111a7cE.exit.thread unwind label %bb.n, !noalias !1103

bb.n:                                             ; preds = %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h6b08816dcab288c2E.exit.i.i"
  %i.bs = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he3b98a42065343f1E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.thread.i unwind label %bb.o, !noalias !1103

bb.o:                                             ; preds = %bb.n
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #30, !noalias !1103
  unreachable

_ZN14regex_automata6hybrid3dfa4Lazy15cache_start_one17h73fa352594111a7cE.exit.thread: ; preds = %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h6b08816dcab288c2E.exit.i.i"
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he3b98a42065343f1E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i), !noalias !1092
end_hunk_1
