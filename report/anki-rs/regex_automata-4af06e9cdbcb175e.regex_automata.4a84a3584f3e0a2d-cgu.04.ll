Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/regex_automata-4af06e9cdbcb175e.regex_automata.4a84a3584f3e0a2d-cgu.04?download=true
inline.NumInlined: 554
inline.NumDeleted: 232
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 10
begin_hunk_0
@14 = private unnamed_addr constant [2 x i8] c"A>", align 1
@15 = private unnamed_addr constant [2 x i8] c"Q ", align 1
@16 = private unnamed_addr constant [1 x i8] c"D", align 1
@17 = private unnamed_addr constant [1 x i8] c" ", align 1
@18 = private unnamed_addr constant [8 x i8] c"\FF\FF\FF\7F\00\00\00\00", align 8
@19 = private unnamed_addr constant [34 x i8] c"sparse set capacity cannot exceed ", align 1
@20 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @19, [8 x i8] c"\22\00\00\00\00\00\00\00" }>, align 8
@21 = private unnamed_addr constant [114 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/regex-automata-0.4.10/src/util/sparse_set.rs\00", align 1
@22 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @21, [16 x i8] c"q\00\00\00\00\00\00\00\82\00\00\00\09\00\00\00" }>, align 8
@23 = private unnamed_addr constant [256 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\00\00\00\01\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 1
@24 = private unnamed_addr constant [49 x i8] c"found equivalence class greater than alphabet len", align 1
@25 = private unnamed_addr constant [14 x i8] c"byte class map", align 1
@26 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"o\00\00\00\00\00\00\00\DC\02\00\00.\00\00\00" }>, align 8
@27 = private unnamed_addr constant [60 x i8] c"max number of byte-based equivalent classes is 256, but got ", align 1
@28 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @27, [8 x i8] c"<\00\00\00\00\00\00\00" }>, align 8
@29 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"o\00\00\00\00\00\00\00v\00\00\00\09\00\00\00" }>, align 8
@30 = private unnamed_addr constant [19 x i8] c"byte set low bucket", align 1
@31 = private unnamed_addr constant [20 x i8] c"byte set high bucket", align 1
@32 = private unnamed_addr constant [8 x i8] c"byte set", align 1
@33 = private unnamed_addr constant [109 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/regex-automata-0.4.10/src/hybrid/dfa.rs\00", align 1
@34 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @33, [16 x i8] c"l\00\00\00\00\00\00\00\E6\09\00\00@\00\00\00" }>, align 8
@35 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @33, [16 x i8] c"l\00\00\00\00\00\00\00\E7\09\00\00G\00\00\00" }>, align 8
@36 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @33, [16 x i8] c"l\00\00\00\00\00\00\00\E8\09\00\00G\00\00\00" }>, align 8
@37 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @33, [16 x i8] c"l\00\00\00\00\00\00\00\E9\09\00\00\09\00\00\00" }>, align 8
@38 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @33, [16 x i8] c"l\00\00\00\00\00\00\00\EA\09\00\00\09\00\00\00" }>, align 8
@39 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @33, [16 x i8] c"l\00\00\00\00\00\00\00\EB\09\00\00\09\00\00\00" }>, align 8
@40 = private unnamed_addr constant [44 x i8] c"adding one state after cache clear must work", align 1
@41 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @33, [16 x i8] c"l\00\00\00\00\00\00\00\BC\09\00\00\12\00\00\00" }>, align 8
@42 = private unnamed_addr constant [26 x i8] c"cannot save sentinel state", align 1
@43 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @42, [8 x i8] c"\1A\00\00\00\00\00\00\00" }>, align 8
@44 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @33, [16 x i8] c"l\00\00\00\00\00\00\00\A9\09\00\00\0D\00\00\00" }>, align 8
@45 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @33, [16 x i8] c"l\00\00\00\00\00\00\00\16\09\00\00:\00\00\00" }>, align 8
@46 = private unnamed_addr constant [40 x i8] c"state saver does not have saved state ID", align 1
@47 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @33, [16 x i8] c"l\00\00\00\00\00\00\00\14\0A\00\00\0E\00\00\00" }>, align 8
@48 = private unnamed_addr constant [19 x i8] c"invalid 'from' id: ", align 1
@49 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @48, [8 x i8] c"\13\00\00\00\00\00\00\00" }>, align 8
@50 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @33, [16 x i8] c"l\00\00\00\00\00\00\00)\0A\00\00\09\00\00\00" }>, align 8
@51 = private unnamed_addr constant [17 x i8] c"invalid 'to' id: ", align 1
@52 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @51, [8 x i8] c"\11\00\00\00\00\00\00\00" }>, align 8
@53 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @33, [16 x i8] c"l\00\00\00\00\00\00\00*\0A\00\00\09\00\00\00" }>, align 8
@54 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @33, [16 x i8] c"l\00\00\00\00\00\00\00-\0A\00\00\19\00\00\00" }>, align 8
@55 = private unnamed_addr constant [44 x i8] c"assertion failed: self.as_ref().is_valid(id)", align 1
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
end_hunk_0
