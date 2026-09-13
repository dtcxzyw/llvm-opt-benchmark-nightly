Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/regex_automata-11449060322bc37b.regex_automata.6a733967971a138a-cgu.02?download=true
inline.NumInlined: 419
inline.NumDeleted: 201
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [108 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/regex-automata-0.4.16/src/dfa/dense.rs\00", align 1
@1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"k\00\00\00\00\00\00\00\E4\0D\00\00\18\00\00\00" }>, align 8
@2 = private unnamed_addr constant [111 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/regex-automata-0.4.16/src/dfa/remapper.rs\00", align 1
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"n\00\00\00\00\00\00\00\95\00\00\00 \00\00\00" }>, align 8
@4 = private unnamed_addr constant [111 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/regex-automata-0.4.16/src/dfa/minimize.rs\00", align 1
@5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"n\00\00\00\00\00\00\00\B7\00\00\00=\00\00\00" }>, align 8
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"n\00\00\00\00\00\00\00\B7\00\00\00&\00\00\00" }>, align 8
@7 = private unnamed_addr constant [35 x i8] c"raw byte alphabet is never exceeded", align 1
@8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"k\00\00\00\00\00\00\005\13\00\00\16\00\00\00" }>, align 8
@9 = private unnamed_addr constant [36 x i8] c"no quit in start without look-behind", align 1
@10 = private unnamed_addr constant [112 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/regex-automata-0.4.16/src/dfa/automaton.rs\00", align 1
@11 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"o\00\00\00\00\00\00\00#\01\00\00\16\00\00\00" }>, align 8
@12 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1K_NtNtCs98D8VPWzHuM_14regex_automata4util10primitivesNtB6_12StateIDErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt }>, align 8
@13 = private unnamed_addr constant [43 x i8] c"called `Result::unwrap()` on an `Err` value", align 1
@14 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense10BuildErrorEBH_, [16 x i8] c"\80\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsP_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB5_10BuildErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt }>, align 8
@15 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1j_NtNtCs98D8VPWzHuM_14regex_automata4util10primitivesNtB6_14PatternIDErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt }>, align 8
@16 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs6_NtNtCs4NRVxsYgnAr_4core3num5errorNtB5_15TryFromIntErrorNtNtB9_3fmt5Debug3fmt }>, align 8
@17 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00 \00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs8_NtNtCs98D8VPWzHuM_14regex_automata4util4wireNtB5_16DeserializeErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt }>, align 8
@18 = private unnamed_addr constant <{ [24 x i8], [1 x i8], [7 x i8] }> <{ [24 x i8] undef, [1 x i8] c"\02", [7 x i8] undef }>, align 8
@19 = private unnamed_addr constant [81 x i8] c"cannot set non-ASCII byte to be non-quit when Unicode word boundaries are enabled", align 1
@20 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"k\00\00\00\00\00\00\00\9D\02\00\00\0D\00\00\00" }>, align 8
@21 = private unnamed_addr constant [55 x i8] c"max should not be greater than or equal to state length", align 1
@22 = private unnamed_addr constant [108 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/regex-automata-0.4.16/src/dfa/accel.rs\00", align 1
@23 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @22, [16 x i8] c"k\00\00\00\00\00\00\00\12\01\00\00\1F\00\00\00" }>, align 8
@24 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @22, [16 x i8] c"k\00\00\00\00\00\00\00\13\01\00\00\0F\00\00\00" }>, align 8
@25 = private unnamed_addr constant [29 x i8] c"\1Ainvalid accelerator index \C0\00", align 1
@26 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @22, [16 x i8] c"k\00\00\00\00\00\00\00\0E\01\00\00\0D\00\00\00" }>, align 8
@27 = private unnamed_addr constant [38 x i8] c"accelerator needles has invalid length", align 1
@28 = private unnamed_addr constant [46 x i8] c"found DFA state with invalid accelerator index", align 1
@29 = private unnamed_addr constant [29 x i8] c"rust-regex-automata-dfa-dense", align 1
@30 = private unnamed_addr constant [12 x i8] c"unused space", align 1
@31 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"k\00\00\00\00\00\00\00\89\09\00\00:\00\00\00" }>, align 8
@32 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"k\00\00\00\00\00\00\00\86\09\00\00B\00\00\00" }>, align 8
@33 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"k\00\00\00\00\00\00\00\82\09\00\00:\00\00\00" }>, align 8
@34 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"k\00\00\00\00\00\00\00\7F\09\00\00C\00\00\00" }>, align 8
@35 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"k\00\00\00\00\00\00\00|\09\00\00B\00\00\00" }>, align 8
@36 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"k\00\00\00\00\00\00\00y\09\00\00G\00\00\00" }>, align 8
@37 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"k\00\00\00\00\00\00\00v\09\00\006\00\00\00" }>, align 8
@38 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"k\00\00\00\00\00\00\00s\09\00\000\00\00\00" }>, align 8
@39 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"k\00\00\00\00\00\00\00q\09\00\00(\00\00\00" }>, align 8
@40 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"k\00\00\00\00\00\00\00p\09\00\001\00\00\00" }>, align 8
@41 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"k\00\00\00\00\00\00\00n\09\00\000\00\00\00" }>, align 8
@42 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"k\00\00\00\00\00\00\00\E4\0A\00\00,\00\00\00" }>, align 8
@43 = private unnamed_addr constant [36 x i8] c"special state ranges should validate", align 1
@44 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"k\00\00\00\00\00\00\00\E6\0A\00\00!\00\00\00" }>, align 8
@45 = private unnamed_addr constant [59 x i8] c"special state ranges should be consistent with state length", align 1
@46 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"k\00\00\00\00\00\00\00\E9\0A\00\00\0E\00\00\00" }>, align 8
@47 = private unnamed_addr constant [51 x i8] c"mismatch with expected number of accelerated states", align 1
@48 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"k\00\00\00\00\00\00\00\EC\0A\00\00\09\00\00\00" }>, align 8
@49 = private unnamed_addr constant [71 x i8] c"assertion failed: prev.map_or(true, |p| self.tt.next_state_id(p) == id)", align 1
@50 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"k\00\00\00\00\00\00\00\FD\0A\00\00\0D\00\00\00" }>, align 8
@51 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"k\00\00\00\00\00\00\00w\0A\00\00D\00\00\00" }>, align 8
@52 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"k\00\00\00\00\00\00\00x\0A\00\00F\00\00\00" }>, align 8
@53 = private unnamed_addr constant [49 x i8] c"assertion failed: !self.is_dead_state(state.id())", align 1
@54 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"k\00\00\00\00\00\00\00D\0A\00\00\15\00\00\00" }>, align 8
@55 = private unnamed_addr constant [49 x i8] c"assertion failed: !self.is_quit_state(state.id())", align 1
@56 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"k\00\00\00\00\00\00\00E\0A\00\00\15\00\00\00" }>, align 8
@57 = private unnamed_addr constant [19 x i8] c"invalid start state", align 1
@58 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"k\00\00\00\00\00\00\00\CE\09\00\00\09\00\00\00" }>, align 8
@59 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"k\00\00\00\00\00\00\00a\0B\00\00!\00\00\00" }>, align 8
@60 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"k\00\00\00\00\00\00\00d\0B\00\00\0E\00\00\00" }>, align 8
@61 = private unnamed_addr constant [59 x i8] c"\C08 is both a start and a match state, which is not allowed\00", align 1
@62 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"k\00\00\00\00\00\00\00!\0B\00\00\0D\00\00\00" }>, align 8
@63 = private unnamed_addr constant [41 x i8] c"assertion failed: self.is_match_state(id)", align 1
@64 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"k\00\00\00\00\00\00\00\C0\0B\00\00\09\00\00\00" }>, align 8
@65 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"k\00\00\00\00\00\00\00\C8\0B\00\00\09\00\00\00" }>, align 8
@66 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"k\00\00\00\00\00\00\004\12\00\00\09\00\00\00" }>, align 8
@67 = private unnamed_addr constant [12 x i8] c"state length", align 1
@68 = private unnamed_addr constant [7 x i8] c"stride2", align 1
@69 = private unnamed_addr constant [16 x i8] c"transition table", align 1
@70 = private unnamed_addr constant [29 x i8] c"dense table state byte length", align 1
@71 = private unnamed_addr constant [59 x i8] c"alphabet size cannot be bigger than transition table stride", align 1
@72 = private unnamed_addr constant [41 x i8] c"dense DFA has invalid stride2 (too small)", align 1
@73 = private unnamed_addr constant [39 x i8] c"dense DFA has invalid stride2 (too big)", align 1
@74 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"k\00\00\00\00\00\00\00G\0D\00\00\17\00\00\00" }>, align 8
@75 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"k\00\00\00\00\00\00\00D\0D\00\00\17\00\00\00" }>, align 8
@76 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"k\00\00\00\00\00\00\00A\0D\00\00\17\00\00\00" }>, align 8
@77 = private unnamed_addr constant [20 x i8] c"invalid 'from' state", align 1
@78 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"k\00\00\00\00\00\00\00\90\0D\00\00\09\00\00\00" }>, align 8
@79 = private unnamed_addr constant [18 x i8] c"invalid 'to' state", align 1
@80 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"k\00\00\00\00\00\00\00\91\0D\00\00\09\00\00\00" }>, align 8
@81 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"k\00\00\00\00\00\00\00\92\0D\00\00\13\00\00\00" }>, align 8
@82 = private unnamed_addr constant [24 x i8] c"\15invalid 'id1' state: \C0\00", align 1
@83 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"k\00\00\00\00\00\00\00\D3\0D\00\00\09\00\00\00" }>, align 8
@84 = private unnamed_addr constant [24 x i8] c"\15invalid 'id2' state: \C0\00", align 1
@85 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"k\00\00\00\00\00\00\00\D4\0D\00\00\09\00\00\00" }>, align 8
@86 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"k\00\00\00\00\00\00\00\D9\0D\00\00\18\00\00\00" }>, align 8
@87 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"k\00\00\00\00\00\00\00\88\0D\00\00\1E\00\00\00" }>, align 8
@88 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"k\00\00\00\00\00\00\00\9F\0E\00\00;\00\00\00" }>, align 8
@89 = private unnamed_addr constant [35 x i8] c"assertion failed: self.is_valid(id)", align 1
@90 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"k\00\00\00\00\00\00\00`\0E\00\00\09\00\00\00" }>, align 8
@91 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"k\00\00\00\00\00\00\00f\0E\00\00'\00\00\00" }>, align 8
@92 = private unnamed_addr constant [63 x i8] c"found dense state tagged as special but wasn't actually special", align 1
@93 = private unnamed_addr constant [39 x i8] c"found match state with zero pattern IDs", align 1
@94 = private unnamed_addr constant [42 x i8] c"found invalid state ID in transition table", align 1
@95 = private unnamed_addr constant [41 x i8] c"assertion failed: len <= PatternID::LIMIT", align 1
@96 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"k\00\00\00\00\00\00\00\\\0F\00\00\0D\00\00\00" }>, align 8
@97 = private unnamed_addr constant [18 x i8] c"start table stride", align 1
@98 = private unnamed_addr constant [20 x i8] c"start table patterns", align 1
@99 = private unnamed_addr constant [26 x i8] c"universal unanchored start", align 1
@100 = private unnamed_addr constant [24 x i8] c"universal anchored start", align 1
@101 = private unnamed_addr constant [14 x i8] c"start ID table", align 1
@102 = private unnamed_addr constant [26 x i8] c"pattern table bytes length", align 1
@103 = private unnamed_addr constant [33 x i8] c"invalid 'any' pattern starts size", align 1
@104 = private unnamed_addr constant [22 x i8] c"invalid pattern length", align 1
@105 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"k\00\00\00\00\00\00\00\C6\0F\00\00\17\00\00\00" }>, align 8
@106 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"k\00\00\00\00\00\00\00\B8\0F\00\00\17\00\00\00" }>, align 8
@107 = private unnamed_addr constant [26 x i8] c"invalid number of patterns", align 1
@108 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"k\00\00\00\00\00\00\00\AA\0F\00\00\17\00\00\00" }>, align 8
@109 = private unnamed_addr constant [29 x i8] c"invalid starting table stride", align 1
@110 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"k\00\00\00\00\00\00\00\A1\0F\00\00\17\00\00\00" }>, align 8
@111 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"k\00\00\00\00\00\00\00\9D\0F\00\00\17\00\00\00" }>, align 8
@112 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"k\00\00\00\00\00\00\00\9A\0F\00\00\17\00\00\00" }>, align 8
@113 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"k\00\00\00\00\00\00\00\A1\10\00\00\0C\00\00\00" }>, align 8
@114 = private unnamed_addr constant [52 x i8] c"found invalid universal unanchored starting state ID", align 1
@115 = private unnamed_addr constant [50 x i8] c"found invalid universal anchored starting state ID", align 1
@116 = private unnamed_addr constant [31 x i8] c"found invalid starting state ID", align 1
@117 = private unnamed_addr constant [35 x i8] c"start states cannot be match states", align 1
@118 = private unnamed_addr constant [37 x i8] c"start states for each pattern enabled", align 1
@119 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"k\00\00\00\00\00\00\00\C7\10\00\00\16\00\00\00" }>, align 8
@120 = private unnamed_addr constant [22 x i8] c"\13invalid pattern ID \C0\00", align 1
@121 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"k\00\00\00\00\00\00\00\C8\10\00\00\11\00\00\00" }>, align 8
@122 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"k\00\00\00\00\00\00\00\D2\10\00\00\09\00\00\00" }>, align 8
@123 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"k\00\00\00\00\00\00\00\CF\10\00\00\16\00\00\00" }>, align 8
@124 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"k\00\00\00\00\00\00\00\CD\10\00\00\16\00\00\00" }>, align 8
@125 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"k\00\00\00\00\00\00\00\CC\10\00\00=\00\00\00" }>, align 8
@126 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"k\00\00\00\00\00\00\00\CB\10\00\00\16\00\00\00" }>, align 8
@127 = private unnamed_addr constant [18 x i8] c"match state length", align 1
@128 = private unnamed_addr constant [14 x i8] c"pattern length", align 1
@129 = private unnamed_addr constant [17 x i8] c"pattern ID length", align 1
@130 = private unnamed_addr constant [17 x i8] c"match pattern IDs", align 1
@131 = private unnamed_addr constant [22 x i8] c"pattern ID byte length", align 1
@132 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"k\00\00\00\00\00\00\00L\11\00\00\17\00\00\00" }>, align 8
@133 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"k\00\00\00\00\00\00\00F\11\00\00\17\00\00\00" }>, align 8
@134 = private unnamed_addr constant [18 x i8] c"match state slices", align 1
@135 = private unnamed_addr constant [36 x i8] c"match state slice offset byte length", align 1
@136 = private unnamed_addr constant [24 x i8] c"match state offset pairs", align 1
@137 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"k\00\00\00\00\00\00\00)\11\00\00\17\00\00\00" }>, align 8
@138 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"k\00\00\00\00\00\00\00{\11\00\005\00\00\00" }>, align 8
@139 = private unnamed_addr constant [49 x i8] c"assertion failed: pattern_len <= PatternID::LIMIT", align 1
@140 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"k\00\00\00\00\00\00\00h\11\00\00\09\00\00\00" }>, align 8
@141 = private unnamed_addr constant [24 x i8] c"no match states to index", align 1
@142 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"k\00\00\00\00\00\00\00\13\12\00\00\09\00\00\00" }>, align 8
@143 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"k\00\00\00\00\00\00\00\19\12\00\004\00\00\00" }>, align 8
@144 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"k\00\00\00\00\00\00\00\1A\12\00\001\00\00\00" }>, align 8
@145 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"k\00\00\00\00\00\00\00\1C\12\00\00$\00\00\00" }>, align 8
@146 = private unnamed_addr constant [41 x i8] c"assertion failed: dfa.is_match_state(sid)", align 1
@147 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"k\00\00\00\00\00\00\00\1D\12\00\00\09\00\00\00" }>, align 8
@148 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"k\00\00\00\00\00\00\00\1B\12\00\00G\00\00\00" }>, align 8
@149 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"k\00\00\00\00\00\00\00=\12\00\00\15\00\00\00" }>, align 8
@150 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"k\00\00\00\00\00\00\00?\12\00\00\1C\00\00\00" }>, align 8
@151 = private unnamed_addr constant [8 x i8] zeroinitializer, align 8
@152 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"k\00\00\00\00\00\00\00K\12\00\00\09\00\00\00" }>, align 8
@153 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"k\00\00\00\00\00\00\00+\12\00\00\09\00\00\00" }>, align 8
@154 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"k\00\00\00\00\00\00\00\CD\11\00\00\17\00\00\00" }>, align 8
@155 = private unnamed_addr constant [18 x i8] c"invalid pattern ID", align 1
@156 = private unnamed_addr constant [25 x i8] c"invalid pattern ID length", align 1
@157 = private unnamed_addr constant [31 x i8] c"invalid pattern ID start offset", align 1
@158 = private unnamed_addr constant [27 x i8] c"match state length mismatch", align 1
@159 = private unnamed_addr constant [11 x i8] c"flag bitset", align 1
@160 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives15SmallIndexErrorNtB6_5Debug3fmtBC_ }>, align 8
@161 = private unnamed_addr constant [12 x i8] c"StateIDError", align 1
@162 = private unnamed_addr constant [14 x i8] c"PatternIDError", align 1
@163 = private unnamed_addr constant [122 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/regex-automata-0.4.16/src/nfa/thompson/range_trie.rs\00", align 1
@164 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @163, [16 x i8] c"y\00\00\00\00\00\00\00\B2\00\00\00\0A\00\00\00" }>, align 8
@165 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs98D8VPWzHuM_14regex_automata }>, align 8
@166 = private unnamed_addr constant [15 x i8] c"TryFromIntError", align 1
@167 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCs98D8VPWzHuM_14regex_automata4util4wire20DeserializeErrorKindNtB6_5Debug3fmtBC_ }>, align 8
@168 = private unnamed_addr constant [16 x i8] c"DeserializeError", align 1
@169 = private unnamed_addr constant [11 x i8] c"NonWordByte", align 1
@170 = private unnamed_addr constant [8 x i8] c"WordByte", align 1
@171 = private unnamed_addr constant [4 x i8] c"Text", align 1
@172 = private unnamed_addr constant [6 x i8] c"LineLF", align 1
@173 = private unnamed_addr constant [6 x i8] c"LineCR", align 1
@174 = private unnamed_addr constant [20 x i8] c"CustomLineTerminator", align 1
@175 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsf_NtCs4NRVxsYgnAr_4core3fmtbNtB5_5Debug3fmt }>, align 8
@176 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRbNtB6_5Debug3fmtCs98D8VPWzHuM_14regex_automata }>, align 8
@177 = private unnamed_addr constant [5 x i8] c"Flags", align 1
@178 = private unnamed_addr constant [9 x i8] c"has_empty", align 1
@179 = private unnamed_addr constant [7 x i8] c"is_utf8", align 1
@180 = private unnamed_addr constant [24 x i8] c"is_always_start_anchored", align 1
@181 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense14BuildErrorKindNtB6_5Debug3fmtBC_ }>, align 8
@182 = private unnamed_addr constant [10 x i8] c"BuildError", align 1
@183 = private unnamed_addr constant [4 x i8] c"kind", align 1
@184 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson5error10BuildErrorNtB6_5Debug3fmtBE_ }>, align 8
@185 = private unnamed_addr constant [3 x i8] c"NFA", align 1
@186 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRReNtB6_5Debug3fmtCs98D8VPWzHuM_14regex_automata }>, align 8
@187 = private unnamed_addr constant [11 x i8] c"Unsupported", align 1
@188 = private unnamed_addr constant [13 x i8] c"TooManyStates", align 1
@189 = private unnamed_addr constant [18 x i8] c"TooManyStartStates", align 1
@190 = private unnamed_addr constant [22 x i8] c"TooManyMatchPatternIDs", align 1
@191 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRjNtB6_5Debug3fmtCs98D8VPWzHuM_14regex_automata }>, align 8
@192 = private unnamed_addr constant [20 x i8] c"DFAExceededSizeLimit", align 1
@193 = private unnamed_addr constant [5 x i8] c"limit", align 1
@194 = private unnamed_addr constant [28 x i8] c"DeterminizeExceededSizeLimit", align 1
@195 = private unnamed_addr constant [12 x i8] c"dense::DFA(\0A", align 1
@196 = private unnamed_addr constant [1 x i8] c"\0A", align 1
@197 = private unnamed_addr constant [19 x i8] c"\0Estate length: \C0\01\0A\00", align 1
@198 = private unnamed_addr constant [21 x i8] c"\10pattern length: \C0\01\0A\00", align 1
@199 = private unnamed_addr constant [12 x i8] c"\07flags: \C0\01\0A\00", align 1
@200 = private unnamed_addr constant [2 x i8] c")\0A", align 1
@201 = private unnamed_addr constant [19 x i8] c"\06MATCH(\C3 \00\00i\06\00\03): \00", align 1
@202 = private unnamed_addr constant [2 x i8] c", ", align 1
@203 = private unnamed_addr constant [2 x i8] c"\C0\00", align 1
@204 = private unnamed_addr constant [24 x i8] c"START-GROUP(unanchored)\0A", align 1
@205 = private unnamed_addr constant [22 x i8] c"START-GROUP(anchored)\0A", align 1
@206 = private unnamed_addr constant [27 x i8] c"\15START_GROUP(pattern: \C0\02)\0A\00", align 1
@207 = private unnamed_addr constant [19 x i8] c"\02  \C0\04 => \C3 \00\00i\06\00\01\0A\00", align 1
@208 = private unnamed_addr constant [11 x i8] c"\C3 \00\00i\06\00\02: \00", align 1
@209 = private unnamed_addr constant [120 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/regex-automata-0.4.16/src/nfa/thompson/compiler.rs\00", align 1
@210 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @209, [16 x i8] c"w\00\00\00\00\00\00\00\CD\02\00\00\0A\00\00\00" }>, align 8
@211 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"k\00\00\00\00\00\00\00\F4\10\00\00,\00\00\00" }>, align 8
@212 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"k\00\00\00\00\00\00\00\FB\10\00\003\00\00\00" }>, align 8
@213 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"k\00\00\00\00\00\00\00\F4\10\00\00@\00\00\00" }>, align 8
@214 = private unnamed_addr constant [11 x i8] c"\C0\01-\C0\04 => \C0\00", align 1
@215 = private unnamed_addr constant [8 x i8] c"\C0\04 => \C0\00", align 1
@216 = private unnamed_addr constant [18 x i8] c"error building NFA", align 1
@217 = private unnamed_addr constant [39 x i8] c"$unsupported regex feature for DFAs: \C0\00", align 1
@218 = private unnamed_addr constant [8 x i8] c"\FF\FF\FF\7F\00\00\00\00", align 8
@219 = private unnamed_addr constant [41 x i8] c"&number of DFA states exceeds limit of \C0\00", align 1
@220 = private unnamed_addr constant [68 x i8] c"Acompiling DFA with start states exceeds pattern pattern limit of \C0\00", align 1
@221 = private unnamed_addr constant [74 x i8] c"Gcompiling DFA with total patterns in all match states exceeds limit of \C0\00", align 1
@222 = private unnamed_addr constant [54 x i8] c"\1BDFA exceeded size limit of \C0\17 during determinization\00", align 1
@223 = private unnamed_addr constant [42 x i8] c"'determinization exceeded size limit of \C0\00", align 1
@switch.table._RNvXs8_NtNtCs98D8VPWzHuM_14regex_automata4util5startNtB5_5StartNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt = private unnamed_addr constant [6 x i8] c"\0B\08\04\06\06\14", align 8
@switch.table._RNvXs8_NtNtCs98D8VPWzHuM_14regex_automata4util5startNtB5_5StartNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt.70 = private unnamed_addr constant [6 x ptr] [ptr @169, ptr @170, ptr @171, ptr @172, ptr @173, ptr @174], align 8

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB5_7Builder10build_manyReEB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([800 x i8]) align 16 captures(none) dereferenceable(800) %0, ptr nofree noundef nonnull align 16 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 576460752303423488) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 5 uses
  %i.j = alloca [160 x i8], align 8               ; 9 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [40 x i8], align 8                ; 7 uses
  %i.m = alloca [64 x i8], align 8                ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 5 uses
  %i.q = alloca [168 x i8], align 8               ; 6 uses
  %i.r = alloca [72 x i8], align 8                ; 6 uses
  %i.s = alloca [120 x i8], align 8               ; 14 uses
  %i.t = alloca [16 x i8], align 4                ; 4 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [448 x i8], align 8               ; 21 uses
  %i.w = alloca [128 x i8], align 8               ; 7 uses
  %i.x = alloca [8 x i8], align 8                 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 128
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %i.z, i64 16, i1 false), !noalias !69
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 146
  %i.ab = load i8, ptr %i.aa, align 2, !range !3, !noalias !69, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 147
  %i.ad = load i8, ptr %i.ac, align 1, !range !3, !noalias !69, !noundef !4
  %i.ae = load i64, ptr %i.y, align 16, !range !5, !noalias !69, !noundef !4 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.p
  %.sroa.52.0.i = phi i64 [ undef, %bb.a ], [ %i.ci, %bb.p ]
  %.sroa.01.0.i = phi i64 [ %i.ae, %bb.a ], [ 1, %bb.p ]
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 148
  %i.ah = load i8, ptr %i.ag, align 4, !range !3, !noalias !69, !noundef !4
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 149
  %i.aj = load i8, ptr %i.ai, align 1, !range !6, !noalias !69, !noundef !4
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.al = load i8, ptr %i.ak, align 16, !range !7, !noalias !69, !noundef !4
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 145
  %i.an = load i8, ptr %i.am, align 1, !noalias !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !69
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70)
  %i.ap = load i64, ptr %i.ao, align 8, !noalias !71, !noundef !4 ; 2 uses
  %i.aq = icmp ult i64 %i.ap, 9223372036854775807
  br i1 %i.aq, label %_RNvMst_NtCs4NRVxsYgnAr_4core4cellINtB5_7RefCellNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson7builder7BuilderE6borrowBR_.exit.i.i, label %bb.c, !prof !8

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs4NRVxsYgnAr_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @210) #18, !noalias !71
  unreachable

_RNvMst_NtCs4NRVxsYgnAr_4core4cellINtB5_7RefCellNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson7builder7BuilderE6borrowBR_.exit.i.i: ; preds = %bb.b
  %i.ar = add nuw nsw i64 %i.ap, 1
  store i64 %i.ar, ptr %i.ao, align 8, !noalias !71
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72)
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.at = load <2 x i32>, ptr %i.as, align 8, !alias.scope !72, !noalias !73
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !74
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 192
  invoke void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson7builder5StateENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBM_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.au)
          to label %.noexc.i.i unwind label %bb.i, !noalias !71

.noexc.i.i:                                       ; preds = %_RNvMst_NtCs4NRVxsYgnAr_4core4cellINtB5_7RefCellNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson7builder7BuilderE6borrowBR_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !74
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 216
  invoke void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBK_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.av)
          to label %bb.f unwind label %bb.e, !noalias !73

bb.d:                                             ; preds = %bb.g, %bb.e
  %.pn.i.i.i = phi { ptr, i32 } [ %i.ay, %bb.g ], [ %i.aw, %bb.e ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson7builder5StateEEB1f_(ptr noalias noundef align 8 dereferenceable(24) %i.p) #19
          to label %bb.j unwind label %bb.h, !noalias !73

bb.e:                                             ; preds = %.noexc.i.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.f:                                             ; preds = %.noexc.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !74
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 240
  invoke void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecIBv_INtNtCs4NRVxsYgnAr_4core6option6OptionINtNtB7_4sync3ArceEEEENtNtBN_5clone5Clone5cloneCs98D8VPWzHuM_14regex_automata(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ax)
          to label %_RNvXsx_NtCs4NRVxsYgnAr_4core4cellINtB5_7RefCellNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson7builder7BuilderENtNtB7_5clone5Clone5cloneBR_.exit.i unwind label %bb.g, !noalias !73

bb.g:                                             ; preds = %bb.f
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDEEB1d_(ptr noalias noundef align 8 dereferenceable(24) %i.o) #19
          to label %bb.d unwind label %bb.h, !noalias !73

bb.h:                                             ; preds = %bb.g, %bb.d
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20, !noalias !73
  unreachable

bb.i:                                             ; preds = %_RNvMst_NtCs4NRVxsYgnAr_4core4cellINtB5_7RefCellNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson7builder7BuilderE6borrowBR_.exit.i.i
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

common.resume:                                    ; preds = %bb.ar, %bb.ax, %bb.aw, %bb.j, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.i, %.body.i ], [ %eh.lpad-body.i.i, %bb.j ], [ %i.ey, %bb.ar ], [ %i.fm, %bb.ax ], [ %i.fm, %bb.aw ]
  resume { ptr, i32 } %common.resume.op

bb.j:                                             ; preds = %bb.i, %bb.d
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ba, %bb.i ], [ %.pn.i.i.i, %bb.d ]
  %i.bb = load i64, ptr %i.ao, align 8, !noalias !71, !noundef !4
  %i.bc = add i64 %i.bb, -1
  store i64 %i.bc, ptr %i.ao, align 8, !noalias !71
  br label %common.resume

_RNvXsx_NtCs4NRVxsYgnAr_4core4cellINtB5_7RefCellNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson7builder7BuilderENtNtB7_5clone5Clone5cloneBR_.exit.i: ; preds = %bb.f
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.bf = load i64, ptr %i.be, align 16, !alias.scope !72, !noalias !73, !noundef !4
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.bh = load i8, ptr %i.bg, align 8, !range !7, !alias.scope !72, !noalias !73, !noundef !4
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 281
  %i.bj = load i8, ptr %i.bi, align 1, !range !7, !alias.scope !72, !noalias !73, !noundef !4
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 282
  %i.bl = load i8, ptr %i.bk, align 2, !alias.scope !72, !noalias !73, !noundef !4
  %.sroa.54.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.54.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !noalias !69
  %.sroa.65.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.65.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !noalias !69
  %.sroa.76.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.76.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !noalias !69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !74
  store i64 0, ptr %i.s, align 8, !alias.scope !70, !noalias !69
  %i.bm = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.bn = load <2 x i64>, ptr %i.bd, align 16, !alias.scope !72, !noalias !73
  store <2 x i64> %i.bn, ptr %i.bm, align 8, !alias.scope !70, !noalias !69
  %.sroa.87.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 96
  store <2 x i32> %i.at, ptr %.sroa.87.0..sroa_idx.i.i, align 8, !alias.scope !70, !noalias !69
  %.sroa.109.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 104
  store i64 %i.bf, ptr %.sroa.109.0..sroa_idx.i.i, align 8, !alias.scope !70, !noalias !69
  %.sroa.1110.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 112
  store i8 %i.bh, ptr %.sroa.1110.0..sroa_idx.i.i, align 8, !alias.scope !70, !noalias !69
  %.sroa.1211.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 113
  store i8 %i.bj, ptr %.sroa.1211.0..sroa_idx.i.i, align 1, !alias.scope !70, !noalias !69
  %.sroa.1312.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 114
  store i8 %i.bl, ptr %.sroa.1312.0..sroa_idx.i.i, align 2, !alias.scope !70, !noalias !69
  %i.bo = load i64, ptr %i.ao, align 8, !noalias !71, !noundef !4
  %i.bp = add i64 %i.bo, -1
  store i64 %i.bp, ptr %i.ao, align 8, !noalias !71
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !69
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 288 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !75)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.br = load i64, ptr %i.bq, align 16, !noalias !76, !noundef !4 ; 2 uses
  %i.bs = icmp ult i64 %i.br, 9223372036854775807
  br i1 %i.bs, label %_RNvMst_NtCs4NRVxsYgnAr_4core4cellINtB5_7RefCellNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson8compiler9Utf8StateE6borrowBR_.exit.i.i, label %bb.k, !prof !8

bb.k:                                             ; preds = %_RNvXsx_NtCs4NRVxsYgnAr_4core4cellINtB5_7RefCellNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson7builder7BuilderENtNtB7_5clone5Clone5cloneBR_.exit.i
  invoke void @_RNvNtCs4NRVxsYgnAr_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @210) #18
          to label %.noexc.i unwind label %bb.q, !noalias !69

.noexc.i:                                         ; preds = %bb.k
  unreachable

_RNvMst_NtCs4NRVxsYgnAr_4core4cellINtB5_7RefCellNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson8compiler9Utf8StateE6borrowBR_.exit.i.i: ; preds = %_RNvXsx_NtCs4NRVxsYgnAr_4core4cellINtB5_7RefCellNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson7builder7BuilderENtNtB7_5clone5Clone5cloneBR_.exit.i
  %i.bt = add nuw nsw i64 %i.br, 1
  store i64 %i.bt, ptr %i.bq, align 16, !noalias !76
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 296
  call void @llvm.experimental.noalias.scope.decl(metadata !77)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !78
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.bw = load i16, ptr %i.bv, align 8, !alias.scope !77, !noalias !79, !noundef !4
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.by = load i64, ptr %i.bx, align 16, !alias.scope !77, !noalias !79, !noundef !4
  invoke void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson3map16Utf8BoundedEntryENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBM_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bu)
          to label %.noexc.i10.i unwind label %bb.n, !noalias !76

.noexc.i10.i:                                     ; preds = %_RNvMst_NtCs4NRVxsYgnAr_4core4cellINtB5_7RefCellNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson8compiler9Utf8StateE6borrowBR_.exit.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store i16 %i.bw, ptr %i.bz, align 8, !noalias !78
  %i.ca = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i64 %i.by, ptr %i.ca, align 8, !noalias !78
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !78
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 336
  invoke void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson8compiler8Utf8NodeENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBM_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cb)
          to label %bb.r unwind label %bb.l, !noalias !79

bb.l:                                             ; preds = %.noexc.i10.i
  %i.cc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson3map14Utf8BoundedMapEBJ_(ptr noalias noundef align 8 dereferenceable(40) %i.l) #19
          to label %bb.o unwind label %bb.m, !noalias !79

bb.m:                                             ; preds = %bb.l
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20, !noalias !79
  unreachable

bb.n:                                             ; preds = %_RNvMst_NtCs4NRVxsYgnAr_4core4cellINtB5_7RefCellNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson8compiler9Utf8StateE6borrowBR_.exit.i.i
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l
  %eh.lpad-body.i9.i = phi { ptr, i32 } [ %i.ce, %bb.n ], [ %i.cc, %bb.l ]
  %i.cf = load i64, ptr %i.bq, align 16, !noalias !76, !noundef !4
  %i.cg = add i64 %i.cf, -1
  store i64 %i.cg, ptr %i.bq, align 16, !noalias !76
  br label %.body.i

bb.p:                                             ; preds = %bb.a
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.ci = load i64, ptr %i.ch, align 8, !noalias !69, !noundef !4
  br label %bb.b

.body.i:                                          ; preds = %.body15.i, %bb.q, %bb.o
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %.body15.i ], [ %i.cj, %bb.q ], [ %eh.lpad-body.i9.i, %bb.o ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell7RefCellNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson7builder7BuilderEEB14_(ptr noalias noundef align 8 dereferenceable(120) %i.s) #19
          to label %common.resume unwind label %bb.aq, !noalias !69

bb.q:                                             ; preds = %bb.k
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.r:                                             ; preds = %.noexc.i10.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.m, ptr noundef nonnull align 8 dereferenceable(40) %i.l, i64 40, i1 false), !noalias !76
  %i.ck = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ck, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !78
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !78
  store i64 0, ptr %i.r, align 8, !alias.scope !75, !noalias !69
  %i.cl = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.cl, ptr noundef nonnull align 8 dereferenceable(64) %i.m, i64 64, i1 false), !noalias !69
  %i.cm = load i64, ptr %i.bq, align 16, !noalias !76, !noundef !4
  %i.cn = add i64 %i.cm, -1
  store i64 %i.cn, ptr %i.bq, align 16, !noalias !76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !69
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 360 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !80)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.cp = load i64, ptr %i.co, align 8, !noalias !81, !noundef !4 ; 2 uses
  %i.cq = icmp ult i64 %i.cp, 9223372036854775807
  br i1 %i.cq, label %_RNvMst_NtCs4NRVxsYgnAr_4core4cellINtB5_7RefCellNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trie9RangeTrieE6borrowBR_.exit.i.i, label %bb.s, !prof !8

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvNtCs4NRVxsYgnAr_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @210) #18
          to label %.noexc14.i unwind label %bb.al, !noalias !69

.noexc14.i:                                       ; preds = %bb.s
  unreachable

_RNvMst_NtCs4NRVxsYgnAr_4core4cellINtB5_7RefCellNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trie9RangeTrieE6borrowBR_.exit.i.i: ; preds = %bb.r
  %i.cr = add nuw nsw i64 %i.cp, 1
  store i64 %i.cr, ptr %i.co, align 8, !noalias !81
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 368
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !82
  invoke void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trie5StateENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBM_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cs)
          to label %.noexc.i12.i unwind label %bb.aj, !noalias !81

.noexc.i12.i:                                     ; preds = %_RNvMst_NtCs4NRVxsYgnAr_4core4cellINtB5_7RefCellNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trie9RangeTrieE6borrowBR_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !82
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 392
  invoke void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trie5StateENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBM_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ct)
          to label %bb.v unwind label %bb.u, !noalias !82

bb.t:                                             ; preds = %.body.i.i.i, %bb.u
  %.pn.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn.pn.pn.i.i.i, %.body.i.i.i ], [ %i.cu, %bb.u ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trie5StateEEB1f_(ptr noalias noundef align 8 dereferenceable(24) %i.i) #19
          to label %bb.ak unwind label %bb.ai, !noalias !82

bb.u:                                             ; preds = %.noexc.i12.i
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.v:                                             ; preds = %.noexc.i12.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !82
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 464 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !83)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !84
  %i.cw = load i64, ptr %i.cv, align 16, !noalias !84, !noundef !4 ; 2 uses
  %i.cx = icmp ult i64 %i.cw, 9223372036854775807
  br i1 %i.cx, label %_RNvMst_NtCs4NRVxsYgnAr_4core4cellINtB5_7RefCellINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trie8NextIterEE6borrowB1n_.exit.i.i.i.i, label %bb.w, !prof !8

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvNtCs4NRVxsYgnAr_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @164) #18
          to label %.noexc.i.i.i unwind label %bb.y, !noalias !82

.noexc.i.i.i:                                     ; preds = %bb.w
  unreachable

_RNvMst_NtCs4NRVxsYgnAr_4core4cellINtB5_7RefCellINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trie8NextIterEE6borrowB1n_.exit.i.i.i.i: ; preds = %bb.v
  %i.cy = add nuw nsw i64 %i.cw, 1
  store i64 %i.cy, ptr %i.cv, align 16, !noalias !84
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 472
  invoke void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trie8NextIterENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBM_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cz)
          to label %bb.z unwind label %bb.x, !noalias !84

bb.x:                                             ; preds = %_RNvMst_NtCs4NRVxsYgnAr_4core4cellINtB5_7RefCellINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trie8NextIterEE6borrowB1n_.exit.i.i.i.i
  %i.da = landingpad { ptr, i32 }
          cleanup
  %i.db = load i64, ptr %i.cv, align 16, !noalias !84, !noundef !4
  %i.dc = add i64 %i.db, -1
  store i64 %i.dc, ptr %i.cv, align 16, !noalias !84
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %.body6.i.i.i, %bb.y, %bb.x
  %.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn.pn.i.i.i, %.body6.i.i.i ], [ %i.dd, %bb.y ], [ %i.da, %bb.x ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trie5StateEEB1f_(ptr noalias noundef align 8 dereferenceable(24) %i.h) #19
          to label %bb.t unwind label %bb.ai, !noalias !82

bb.y:                                             ; preds = %bb.w
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

bb.z:                                             ; preds = %_RNvMst_NtCs4NRVxsYgnAr_4core4cellINtB5_7RefCellINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trie8NextIterEE6borrowB1n_.exit.i.i.i.i
  %i.de = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.de, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !82
  store i64 0, ptr %i.g, align 8, !alias.scope !83, !noalias !82
  %i.df = load i64, ptr %i.cv, align 16, !noalias !84, !noundef !4
  %i.dg = add i64 %i.df, -1
  store i64 %i.dg, ptr %i.cv, align 16, !noalias !84
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !84
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !82
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 496 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !85)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !86
  %i.di = load i64, ptr %i.dh, align 16, !noalias !86, !noundef !4 ; 2 uses
  %i.dj = icmp ult i64 %i.di, 9223372036854775807
  br i1 %i.dj, label %_RNvMst_NtCs4NRVxsYgnAr_4core4cellINtB5_7RefCellINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs79ICTHwG85D_12regex_syntax4utf89Utf8RangeEE6borrowCs98D8VPWzHuM_14regex_automata.exit.i.i.i.i, label %bb.aa, !prof !8

bb.aa:                                            ; preds = %bb.z
  invoke void @_RNvNtCs4NRVxsYgnAr_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @164) #18
          to label %.noexc5.i.i.i unwind label %bb.ac, !noalias !82

.noexc5.i.i.i:                                    ; preds = %bb.aa
  unreachable

_RNvMst_NtCs4NRVxsYgnAr_4core4cellINtB5_7RefCellINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs79ICTHwG85D_12regex_syntax4utf89Utf8RangeEE6borrowCs98D8VPWzHuM_14regex_automata.exit.i.i.i.i: ; preds = %bb.z
  %i.dk = add nuw nsw i64 %i.di, 1
  store i64 %i.dk, ptr %i.dh, align 16, !noalias !86
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 504
  invoke void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs79ICTHwG85D_12regex_syntax4utf89Utf8RangeENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs98D8VPWzHuM_14regex_automata(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dl)
          to label %bb.ad unwind label %bb.ab, !noalias !86

bb.ab:                                            ; preds = %_RNvMst_NtCs4NRVxsYgnAr_4core4cellINtB5_7RefCellINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs79ICTHwG85D_12regex_syntax4utf89Utf8RangeEE6borrowCs98D8VPWzHuM_14regex_automata.exit.i.i.i.i
  %i.dm = landingpad { ptr, i32 }
          cleanup
  %i.dn = load i64, ptr %i.dh, align 16, !noalias !86, !noundef !4
  %i.do = add i64 %i.dn, -1
  store i64 %i.do, ptr %i.dh, align 16, !noalias !86
  br label %.body6.i.i.i

.body6.i.i.i:                                     ; preds = %bb.ae, %bb.ac, %bb.ab
  %.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn.i.i13.i, %bb.ae ], [ %i.dp, %bb.ac ], [ %i.dm, %bb.ab ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trie8NextIterEEEB1A_(ptr noalias noundef align 8 dereferenceable(32) %i.g) #19
          to label %.body.i.i.i unwind label %bb.ai, !noalias !82

bb.ac:                                            ; preds = %bb.aa
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %.body6.i.i.i

bb.ad:                                            ; preds = %_RNvMst_NtCs4NRVxsYgnAr_4core4cellINtB5_7RefCellINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs79ICTHwG85D_12regex_syntax4utf89Utf8RangeEE6borrowCs98D8VPWzHuM_14regex_automata.exit.i.i.i.i
  %i.dq = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dq, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !82
  store i64 0, ptr %i.f, align 8, !alias.scope !85, !noalias !82
  %i.dr = load i64, ptr %i.dh, align 16, !noalias !86, !noundef !4
  %i.ds = add i64 %i.dr, -1
  store i64 %i.ds, ptr %i.dh, align 16, !noalias !86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !86
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !82
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 416
  invoke void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trie8NextDupeENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBM_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dt)
          to label %bb.ag unwind label %bb.af, !noalias !82

bb.ae:                                            ; preds = %bb.ah, %bb.af
  %.pn.i.i13.i = phi { ptr, i32 } [ %i.dw, %bb.ah ], [ %i.du, %bb.af ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs79ICTHwG85D_12regex_syntax4utf89Utf8RangeEEECs98D8VPWzHuM_14regex_automata(ptr noalias noundef align 8 dereferenceable(32) %i.f) #19
          to label %.body6.i.i.i unwind label %bb.ai, !noalias !82

bb.af:                                            ; preds = %bb.ad
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ag:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !82
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 440
  invoke void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trie10NextInsertENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBM_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dv)
          to label %bb.am unwind label %bb.ah, !noalias !82

bb.ah:                                            ; preds = %bb.ag
  %i.dw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trie8NextDupeEEB1f_(ptr noalias noundef align 8 dereferenceable(24) %i.e) #19
          to label %bb.ae unwind label %bb.ai, !noalias !82

bb.ai:                                            ; preds = %bb.ah, %bb.ae, %.body6.i.i.i, %.body.i.i.i, %bb.t
  %i.dx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20, !noalias !82
  unreachable

bb.aj:                                            ; preds = %_RNvMst_NtCs4NRVxsYgnAr_4core4cellINtB5_7RefCellNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trie9RangeTrieE6borrowBR_.exit.i.i
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.t
  %eh.lpad-body.i11.i = phi { ptr, i32 } [ %i.dy, %bb.aj ], [ %.pn.pn.pn.pn.i.i.i, %bb.t ]
  %i.dz = load i64, ptr %i.co, align 8, !noalias !81, !noundef !4
  %i.ea = add i64 %i.dz, -1
  store i64 %i.ea, ptr %i.co, align 8, !noalias !81
  br label %.body15.i

.body15.i:                                        ; preds = %.body18.i, %bb.al, %bb.ak
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body19.i, %.body18.i ], [ %i.eb, %bb.al ], [ %eh.lpad-body.i11.i, %bb.ak ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell7RefCellNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson8compiler9Utf8StateEEB14_(ptr noalias noundef align 8 dereferenceable(72) %i.r) #19
          to label %.body.i unwind label %bb.aq, !noalias !69

bb.al:                                            ; preds = %bb.s
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %.body15.i

bb.am:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !81
  %i.ec = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ec, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !81
  %i.ed = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ed, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false), !noalias !81
  %i.ee = getelementptr inbounds nuw i8, ptr %i.j, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ee, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false), !noalias !81
  %i.ef = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ef, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !81
  %i.eg = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eg, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !81
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !82
  store i64 0, ptr %i.q, align 8, !alias.scope !80, !noalias !69
  %i.eh = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.eh, ptr noundef nonnull align 8 dereferenceable(160) %i.j, i64 160, i1 false), !noalias !69
  %i.ei = load i64, ptr %i.co, align 8, !noalias !81, !noundef !4
  %i.ej = add i64 %i.ei, -1
  store i64 %i.ej, ptr %i.co, align 8, !noalias !81
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 528 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !87
  %i.el = load i64, ptr %i.ek, align 16, !noalias !87, !noundef !4 ; 2 uses
  %i.em = icmp ult i64 %i.el, 9223372036854775807
  br i1 %i.em, label %_RNvMst_NtCs4NRVxsYgnAr_4core4cellINtB5_7RefCellNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson3map13Utf8SuffixMapE6borrowBR_.exit.i.i, label %bb.an, !prof !8

bb.an:                                            ; preds = %bb.am
  invoke void @_RNvNtCs4NRVxsYgnAr_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @210) #18
          to label %.noexc17.i unwind label %bb.ap, !noalias !69

.noexc17.i:                                       ; preds = %bb.an
  unreachable

_RNvMst_NtCs4NRVxsYgnAr_4core4cellINtB5_7RefCellNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson3map13Utf8SuffixMapE6borrowBR_.exit.i.i: ; preds = %bb.am
  %i.en = add nuw nsw i64 %i.el, 1
  store i64 %i.en, ptr %i.ek, align 16, !noalias !87
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 536
  call void @llvm.experimental.noalias.scope.decl(metadata !88)
  call void @llvm.experimental.noalias.scope.decl(metadata !89)
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 568
  %i.eq = load i16, ptr %i.ep, align 8, !alias.scope !89, !noalias !90, !noundef !4
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 560
  %i.es = load i64, ptr %i.er, align 16, !alias.scope !89, !noalias !90, !noundef !4
  invoke void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson3map15Utf8SuffixEntryENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBM_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.eo)
          to label %bb.as unwind label %bb.ao, !noalias !87

bb.ao:                                            ; preds = %_RNvMst_NtCs4NRVxsYgnAr_4core4cellINtB5_7RefCellNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson3map13Utf8SuffixMapE6borrowBR_.exit.i.i
  %i.et = landingpad { ptr, i32 }
          cleanup
  %i.eu = load i64, ptr %i.ek, align 16, !noalias !87, !noundef !4
  %i.ev = add i64 %i.eu, -1
  store i64 %i.ev, ptr %i.ek, align 16, !noalias !87
  br label %.body18.i

bb.ap:                                            ; preds = %bb.an
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %.body18.i

.body18.i:                                        ; preds = %bb.ap, %bb.ao
  %eh.lpad-body19.i = phi { ptr, i32 } [ %i.ew, %bb.ap ], [ %i.et, %bb.ao ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell7RefCellNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trie9RangeTrieEEB14_(ptr noalias noundef align 8 dereferenceable(168) %i.q) #19
          to label %.body15.i unwind label %bb.aq, !noalias !69

bb.aq:                                            ; preds = %.body18.i, %.body15.i, %.body.i
  %i.ex = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20, !noalias !69
  unreachable

bb.ar:                                            ; preds = %bb.at, %bb.as
  %i.ey = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson8compiler8CompilerEBJ_(ptr noalias noundef align 8 dereferenceable(448) %i.v) #19
          to label %common.resume unwind label %bb.bb

bb.as:                                            ; preds = %_RNvMst_NtCs4NRVxsYgnAr_4core4cellINtB5_7RefCellNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson3map13Utf8SuffixMapE6borrowBR_.exit.i.i
  %i.ez = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i16 %i.eq, ptr %i.ez, align 8, !alias.scope !88, !noalias !91
  %i.fa = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.es, ptr %i.fa, align 8, !alias.scope !88, !noalias !91
  %.sroa.4.0..sroa_idx20.i = getelementptr inbounds nuw i8, ptr %i.v, i64 408
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.0..sroa_idx20.i, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  %i.fb = load i64, ptr %i.ek, align 16, !noalias !87, !noundef !4
  %i.fc = add i64 %i.fb, -1
  store i64 %i.fc, ptr %i.ek, align 16, !noalias !87
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !87
  %i.fd = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fd, ptr noundef nonnull align 4 dereferenceable(16) %i.t, i64 16, i1 false)
  store i64 %.sroa.01.0.i, ptr %i.v, align 8, !alias.scope !69
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 %.sroa.52.0.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !69
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i8 %i.al, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !69
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 17
  store i8 %i.an, ptr %.sroa.6.0..sroa_idx.i, align 1, !alias.scope !69
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 18
  store i8 %i.ab, ptr %.sroa.7.0..sroa_idx.i, align 2, !alias.scope !69
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 19
  store i8 %i.ad, ptr %.sroa.8.0..sroa_idx.i, align 1, !alias.scope !69
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 20
  store i8 %i.ah, ptr %.sroa.9.0..sroa_idx.i, align 4, !alias.scope !69
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 21
  store i8 %i.aj, ptr %.sroa.10.0..sroa_idx.i, align 1, !alias.scope !69
  %i.fe = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.fe, ptr noundef nonnull align 8 dereferenceable(120) %i.s, i64 120, i1 false)
  %i.ff = getelementptr inbounds nuw i8, ptr %i.v, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ff, ptr noundef nonnull align 8 dereferenceable(72) %i.r, i64 72, i1 false)
  %i.fg = getelementptr inbounds nuw i8, ptr %i.v, i64 232
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.fg, ptr noundef nonnull align 8 dereferenceable(168) %i.q, i64 168, i1 false)
  %i.fh = getelementptr inbounds nuw i8, ptr %i.v, i64 400
  store i64 0, ptr %i.fh, align 8, !alias.scope !69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store i64 2, ptr %i.u, align 8, !alias.scope !92
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i8 0, ptr %.sroa.426.0..sroa_idx, align 8, !alias.scope !92
  %.sroa.528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 18
  store i32 33686018, ptr %.sroa.528.0..sroa_idx, align 2
  %i.fi = invoke noundef nonnull align 8 ptr @_RNvMs1_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson8compilerNtB5_8Compiler9configure(ptr noalias noundef nonnull align 8 dereferenceable(448) %i.v, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.u)
          to label %bb.at unwind label %bb.ar

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  invoke void @_RINvMs1_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson8compilerNtB6_8Compiler10build_manyReEBc_(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.w, ptr noundef nonnull align 8 %i.fi, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef %3)
          to label %bb.au unwind label %bb.ar

bb.au:                                            ; preds = %bb.at
  %i.fj = load i64, ptr %i.w, align 8, !range !93, !noundef !4 ; 2 uses
  %.not = icmp eq i64 %i.fj, -2
  %i.fk = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.fl = load ptr, ptr %i.fk, align 8            ; 2 uses
  br i1 %.not, label %bb.av, label %bb.bc

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  store ptr %i.fl, ptr %i.x, align 8
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson8compiler8CompilerEBJ_(ptr noalias noundef align 8 dereferenceable(448) %i.v)
          to label %bb.ay unwind label %bb.aw

bb.aw:                                            ; preds = %bb.ay, %bb.av
  %i.fm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !94)
  call void @llvm.experimental.noalias.scope.decl(metadata !95)
  call void @llvm.experimental.noalias.scope.decl(metadata !96)
  %i.fn = load ptr, ptr %i.x, align 8, !alias.scope !97, !nonnull !4, !noundef !4
  %i.fo = atomicrmw sub ptr %i.fn, i64 1 release, align 8, !noalias !97
  %i.fp = icmp eq i64 %i.fo, 1
  br i1 %i.fp, label %bb.ax, label %common.resume

bb.ax:                                            ; preds = %bb.aw
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson3nfa5InnerE9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.x)
          to label %common.resume unwind label %bb.bb

bb.ay:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  invoke void @_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB4_7Builder14build_from_nfa(ptr noalias noundef nonnull sret([800 x i8]) align 16 captures(none) dereferenceable(800) %0, ptr noundef nonnull align 16 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.x)
          to label %bb.az unwind label %bb.aw

bb.az:                                            ; preds = %bb.ay
  call void @llvm.experimental.noalias.scope.decl(metadata !98)
  call void @llvm.experimental.noalias.scope.decl(metadata !99)
  call void @llvm.experimental.noalias.scope.decl(metadata !100)
  %i.fq = load ptr, ptr %i.x, align 8, !alias.scope !101, !nonnull !4, !noundef !4
  %i.fr = atomicrmw sub ptr %i.fq, i64 1 release, align 8, !noalias !101
  %i.fs = icmp eq i64 %i.fr, 1
  br i1 %i.fs, label %bb.ba, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson3nfa3NFAEBJ_.exit25

bb.ba:                                            ; preds = %bb.az
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson3nfa5InnerE9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.x)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson3nfa3NFAEBJ_.exit25

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson3nfa3NFAEBJ_.exit25: ; preds = %bb.ba, %bb.az, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  ret void

bb.bb:                                            ; preds = %bb.ax, %bb.ar
  %i.ft = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.bc:                                            ; preds = %bb.au
  %.sroa.535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %.sroa.521.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.535.0..sroa_idx, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  store i64 %i.fj, ptr %0, align 16
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fl, ptr %.sroa.420.0..sroa_idx, align 8
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 464
  store i64 2, ptr %i.fu, align 16
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson8compiler8CompilerEBJ_(ptr noalias noundef align 8 dereferenceable(448) %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson3nfa3NFAEBJ_.exit25
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsd_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB6_15TransitionTableINtNtCscdodAO9FK5_5alloc3vec3VecmEE5remapNCNvMs_NtB8_8minimizeNtB1X_9Minimizer3runs1_0EBa_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(288) %0, i32 noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 279
  %i.b = load i8, ptr %i.a, align 1, !noundef !4
  %i.c = zext i8 %i.b to i64
  %i.d = zext i32 %1 to i64                       ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !4
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !4, !align !9
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !4, !align !9 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = load ptr, ptr %2, align 8, !nonnull !4, !align !9 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = tail call i64 @llvm.usub.sat.i64(i64 %i.f, i64 %i.d)
  %i.s = add nuw nsw i64 %i.c, 1
  br label %bb.c

bb.b:                                             ; preds = %bb.i
end_hunk_0
begin_hunk_1_@_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEE12always_match:bb.a
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson8compiler8CompilerEBJ_(ptr noalias noundef align 8 dereferenceable(448) %i.n) #19
          to label %common.resume unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20
  unreachable

common.resume:                                    ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson3nfa3NFAEBJ_.exit4, %bb.d, %.body, %bb.n
  %common.resume.op = phi { ptr, i32 } [ %i.ae, %bb.n ], [ %.pn, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson3nfa3NFAEBJ_.exit4 ], [ %i.i, %bb.d ], [ %i.i, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense7BuilderEBH_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson3nfa3NFAEBJ_.exit6, %bb.k, %bb.l, %bb.m
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson8compiler8CompilerEBJ_(ptr noalias noundef align 8 dereferenceable(448) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.p:                                             ; preds = %bb.g, %bb.d, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson3nfa3NFAEBJ_.exit4
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs3_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_3DFARSmE7builder(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([576 x i8]) align 16 captures(none) dereferenceable(576) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [448 x i8], align 8               ; 4 uses
  %i.b = alloca [128 x i8], align 16              ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !357
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store i8 -1, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !357
  store i128 0, ptr %i.b, align 16, !noalias !357
  store <8 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -1>, ptr %i.c, align 16, !noalias !357
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 2, ptr %i.d, align 16, !noalias !357
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 2, ptr %i.e, align 16, !noalias !357
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !357
  invoke void @_RNvMs1_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson8compilerNtB5_8Compiler3new(ptr noalias noundef nonnull sret([448 x i8]) align 8 captures(none) dereferenceable(448) %i.a)
          to label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB4_7Builder3new.exit unwind label %bb.b, !noalias !357

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense6ConfigEBH_(ptr noalias noundef align 16 dereferenceable(128) %i.b) #19
          to label %bb.d unwind label %bb.c, !noalias !357

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20, !noalias !357
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.f

_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB4_7Builder3new.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(576) %0, ptr noundef nonnull align 16 dereferenceable(128) %i.b, i64 128, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(448) %i.h, ptr noundef nonnull align 8 dereferenceable(448) %i.a, i64 448, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !357
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !357
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, -3) i64 @_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEE12memory_usageB9_(ptr noalias noundef readonly align 16 captures(none) dereferenceable(800) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.val5 = load i64, ptr %i.a, align 16, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 496
  %.val3 = load i64, ptr %i.b, align 16, !noundef !4
  %i.c = add i64 %.val3, %.val5
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 400
  %.val3.i = load i64, ptr %i.d, align 16, !alias.scope !360, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 424
  %.val1.i = load i64, ptr %i.e, align 8, !alias.scope !360, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 456
  %.val1 = load i64, ptr %i.f, align 8, !noundef !4
  %i.g = add i64 %i.c, %.val3.i
  %i.h = add i64 %i.g, %.val1.i
  %i.i = add i64 %i.h, %.val1
  %i.j = shl i64 %i.i, 2
  ret i64 %i.j
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs5_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEE9to_sparseB9_(ptr dead_on_unwind noalias noundef writable sret([736 x i8]) align 16 captures(none) dereferenceable(736) %0, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(800) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvMs_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_3DFAINtNtCscdodAO9FK5_5alloc3vec3VechEE10from_denseIBZ_mEEB9_(ptr noalias noundef nonnull sret([736 x i8]) align 16 captures(none) dereferenceable(736) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(800) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs6_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_3DFARSmE10from_bytes(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([784 x i8]) align 16 captures(none) dereferenceable(784) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [784 x i8], align 16              ; 8 uses
  %.sroa.6 = alloca [32 x i8], align 8            ; 6 uses
  %i.g = alloca [768 x i8], align 16              ; 39 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvMs6_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_3DFARSmE20from_bytes_unchecked(ptr noalias noundef nonnull sret([784 x i8]) align 16 captures(none) dereferenceable(784) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.h = load i64, ptr %i.f, align 16, !range !5, !noundef !4 ; 2 uses
  %i.i = icmp eq i64 %i.h, 2
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false)
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, i64 32, i1 false)
  store i64 2, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.aj

bb.c:                                             ; preds = %bb.a
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(728) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(728) %.sroa.58.0..sroa_idx, i64 728, i1 false)
  %.sroa.69.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 768
  %.sroa.69.0.copyload = load i64, ptr %.sroa.69.0..sroa_idx, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, i64 32, i1 false)
  store i64 %i.h, ptr %i.g, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 352 ; 4 uses
  invoke void @_RNvMs0_NtNtCs98D8VPWzHuM_14regex_automata3dfa5accelINtB5_6AccelsRSmE8validateB9_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.l)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp

.loopexit:                                        ; preds = %bb.am, %bb.ao
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.ab
  %lpad.loopexit201 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.invoke418, %_RNvMse_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_15TransitionTableRSmE8is_validB9_.exit.thread.i.i.invoke, %.invoke, %bb.aa, %bb.i, %bb.ap, %bb.c
  %lpad.loopexit.split-lp202 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit201, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp202, %.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.experimental.noalias.scope.decl(metadata !412)
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 320 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !413)
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 344
  %i.o = load i8, ptr %i.n, align 8, !range !3, !alias.scope !414, !noundef !4
  %i.p = icmp eq i8 %i.o, 2
  br i1 %i.p, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFARSmEEBI_.exit, label %bb.d

bb.d:                                             ; preds = %.loopexit.split-lp
  call void @llvm.experimental.noalias.scope.decl(metadata !415)
  call void @llvm.experimental.noalias.scope.decl(metadata !416)
  call void @llvm.experimental.noalias.scope.decl(metadata !417)
  %i.q = load ptr, ptr %i.m, align 16, !alias.scope !418, !nonnull !4, !noundef !4
  %i.r = atomicrmw sub ptr %i.q, i64 1 release, align 8, !noalias !418
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFARSmEEBI_.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtNtNtCs98D8VPWzHuM_14regex_automata4util9prefilter10PrefilterIEL_E9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.m)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFARSmEEBI_.exit unwind label %bb.ax

bb.f:                                             ; preds = %bb.c
  %i.t = load i32, ptr %i.e, align 8, !range !12, !noundef !4
  %.not = icmp eq i32 %i.t, -1
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.au

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 712
  call void @llvm.experimental.noalias.scope.decl(metadata !419)
  call void @llvm.experimental.noalias.scope.decl(metadata !420)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !421
  %.val56.i = load ptr, ptr %i.v, align 8, !alias.scope !419, !noalias !422, !nonnull !4, !align !13, !noundef !4 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 720
  %.val57.i = load i64, ptr %i.w, align 16, !alias.scope !419, !noalias !422, !noundef !4 ; 7 uses
  %i.x = and i64 %.val57.i, 1                     ; 2 uses
  store i64 %i.x, ptr %i.b, align 8, !noalias !421
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %_RNvMsn_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_11MatchStatesRSmE3lenB9_.exit54.i, label %bb.i, !prof !8

bb.i:                                             ; preds = %bb.h
  invoke void @_RINvNtCs4NRVxsYgnAr_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @151, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @152) #18
          to label %.noexc33 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc33:                                         ; preds = %bb.i
  unreachable

_RNvMsn_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_11MatchStatesRSmE3lenB9_.exit54.i: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !421
  %i.z = lshr exact i64 %.val57.i, 1              ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 704 ; 3 uses
  %i.ab = load i64, ptr %i.aa, align 16, !alias.scope !420, !noalias !423, !noundef !4 ; 2 uses
  %i.ac = and i64 %i.ab, 63                       ; 5 uses
  %i.ad = shl nuw i64 1, %i.ac                    ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 376 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !alias.scope !420, !noalias !423, !noundef !4 ; 4 uses
  %.not.i32 = icmp eq i32 %i.af, 0
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 380 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !alias.scope !420, !noalias !423 ; 3 uses
  %i.ai = zext i32 %i.ah to i64
  %i.aj = zext i32 %i.af to i64
  %i.ak = sub i64 %i.ad, %i.aj
  %i.al = add i64 %i.ak, %i.ai
  %i.am = lshr i64 %i.al, %i.ac
  %.sroa.0.0.i = select i1 %.not.i32, i64 0, i64 %i.am
  %.not51.i = icmp eq i64 %i.z, %.sroa.0.0.i
  br i1 %.not51.i, label %_RNvMsn_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_11MatchStatesRSmE3lenB9_.exit.preheader.i, label %.loopexit206

_RNvMsn_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_11MatchStatesRSmE3lenB9_.exit.preheader.i: ; preds = %_RNvMsn_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_11MatchStatesRSmE3lenB9_.exit54.i
  %.not85.i = icmp eq i64 %.val57.i, 0
  br i1 %.not85.i, label %_RNvMsn_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_11MatchStatesRSmE8validateB9_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMsn_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_11MatchStatesRSmE3lenB9_.exit.preheader.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 728
  %.val70.i = load ptr, ptr %i.an, align 8, !alias.scope !419, !noalias !422, !nonnull !4, !align !13
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 736
  %.val71.i = load i64, ptr %i.ao, align 16, !alias.scope !419, !noalias !422 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.g, i64 744
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !419, !noalias !422
  br label %bb.j

_RNvMsn_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_11MatchStatesRSmE3lenB9_.exit.loopexit.i: ; preds = %bb.m, %.preheader.i
  %exitcond96.not.i = icmp eq i64 %3, %i.z
  br i1 %exitcond96.not.i, label %_RNvMsn_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_11MatchStatesRSmE8validateB9_.exit, label %bb.j

bb.j:                                             ; preds = %_RNvMsn_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_11MatchStatesRSmE3lenB9_.exit.loopexit.i, %.lr.ph.i
  %.sroa.011.084.i = phi i64 [ 0, %.lr.ph.i ], [ %3, %_RNvMsn_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_11MatchStatesRSmE3lenB9_.exit.loopexit.i ] ; 2 uses
  %3 = add nuw nsw i64 %.sroa.011.084.i, 1        ; 2 uses
  %4 = shl nuw nsw i64 %.sroa.011.084.i, 1        ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %.val56.i, i64 %4
  %i.as = load i32, ptr %i.ar, align 4, !noalias !424, !noundef !4
  %i.at = zext i32 %i.as to i64                   ; 3 uses
  %i.au = or disjoint i64 %4, 1                   ; 3 uses
  %i.av = icmp ult i64 %i.au, %.val57.i
  br i1 %i.av, label %bb.k, label %.invoke418

bb.k:                                             ; preds = %bb.j
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.val56.i, i64 %i.au
  %i.ax = load i32, ptr %i.aw, align 4, !noalias !424, !noundef !4 ; 2 uses
  %i.ay = zext i32 %i.ax to i64                   ; 2 uses
  %.not52.i = icmp ugt i64 %.val71.i, %i.at
  br i1 %.not52.i, label %bb.l, label %.loopexit206

bb.l:                                             ; preds = %bb.k
  %i.az = add nuw nsw i64 %i.ay, %i.at
  %i.ba = icmp ugt i64 %i.az, %.val71.i
  br i1 %i.ba, label %.loopexit206, label %.preheader.i

.preheader.i:                                     ; preds = %bb.l
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %.val70.i, i64 %i.at
  %exitcond.not.i453 = icmp eq i32 %i.ax, 0
  br i1 %exitcond.not.i453, label %_RNvMsn_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_11MatchStatesRSmE3lenB9_.exit.loopexit.i, label %.lr.ph455

bb.m:                                             ; preds = %.lr.ph455
  %i.bc = add nuw nsw i64 %.sroa.033.0.i454, 1    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bc, %i.ay
  br i1 %exitcond.not.i, label %_RNvMsn_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_11MatchStatesRSmE3lenB9_.exit.loopexit.i, label %.lr.ph455

.lr.ph455:                                        ; preds = %.preheader.i, %bb.m
  %.sroa.033.0.i454 = phi i64 [ %i.bc, %bb.m ], [ 0, %.preheader.i ] ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %.sroa.033.0.i454
  %i.be = load i32, ptr %i.bd, align 4, !noalias !424, !noundef !4
  %i.bf = zext i32 %i.be to i64
  %.not53.i = icmp ugt i64 %i.aq, %i.bf
  br i1 %.not53.i, label %bb.m, label %.loopexit206

.loopexit206:                                     ; preds = %bb.k, %bb.l, %.lr.ph455, %_RNvMsn_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_11MatchStatesRSmE3lenB9_.exit54.i
  %.sroa.14.0.ph = phi i64 [ 27, %_RNvMsn_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_11MatchStatesRSmE3lenB9_.exit54.i ], [ 18, %.lr.ph455 ], [ 31, %bb.k ], [ 25, %bb.l ]
  %.sroa.1063.0.ph = phi ptr [ @158, %_RNvMsn_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_11MatchStatesRSmE3lenB9_.exit54.i ], [ @155, %.lr.ph455 ], [ @157, %bb.k ], [ @156, %bb.l ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.bg, align 8
  %.sroa.5120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.1063.0.ph, ptr %.sroa.5120.0..sroa_idx, align 16
  %.sroa.6121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.14.0.ph, ptr %.sroa.6121.0..sroa_idx, align 8
  br label %bb.au

_RNvMsn_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_11MatchStatesRSmE8validateB9_.exit: ; preds = %_RNvMsn_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_11MatchStatesRSmE3lenB9_.exit.loopexit.i, %_RNvMsn_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_11MatchStatesRSmE3lenB9_.exit.preheader.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.g, i64 432
  call void @llvm.experimental.noalias.scope.decl(metadata !425)
  call void @llvm.experimental.noalias.scope.decl(metadata !426)
  %.val.i.i = load ptr, ptr %i.bh, align 16, !alias.scope !427, !noalias !428, !nonnull !4, !align !13, !noundef !4
  %i.bi = getelementptr inbounds nuw i8, ptr %i.g, i64 440 ; 3 uses
  %.val3.i.i = load i64, ptr %i.bi, align 8, !alias.scope !427, !noalias !428, !noundef !4 ; 6 uses
  %i.bj = icmp eq i64 %.val3.i.i, 0
  br i1 %i.bj, label %_RNvMse_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_15TransitionTableRSmE8validateB9_.exit, label %.lr.ph.i36

.lr.ph.i36:                                       ; preds = %_RNvMsn_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_11MatchStatesRSmE8validateB9_.exit
  %notmask.i.i.i.i = shl nsw i64 -1, %i.ac
  %i.bk = xor i64 %notmask.i.i.i.i, -1            ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.g, i64 703
  %i.bm = load i8, ptr %i.bl, align 1, !alias.scope !425, !noalias !429
  %i.bn = zext i8 %i.bm to i64
  %i.bo = add nuw nsw i64 %i.bn, 2                ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.g, i64 368
  %i.bq = load i32, ptr %i.bp, align 16, !alias.scope !426, !noalias !430
  %i.br = getelementptr inbounds nuw i8, ptr %i.g, i64 372
  %i.bs = load i32, ptr %i.br, align 4, !alias.scope !426, !noalias !430
  %i.bt = getelementptr inbounds nuw i8, ptr %i.g, i64 392
  %i.bu = load i32, ptr %i.bt, align 8, !alias.scope !426, !noalias !430
  %i.bv = getelementptr inbounds nuw i8, ptr %i.g, i64 396
  %i.bw = load i32, ptr %i.bv, align 4, !alias.scope !426, !noalias !430
  %i.bx = getelementptr inbounds nuw i8, ptr %i.g, i64 384
  %i.by = load i32, ptr %i.bx, align 16, !alias.scope !426, !noalias !430
  %i.bz = getelementptr inbounds nuw i8, ptr %i.g, i64 388
  %i.ca = load i32, ptr %i.bz, align 4, !alias.scope !426, !noalias !430
  %.idx = shl nuw nsw i64 %i.bo, 2
  br label %bb.n

bb.n:                                             ; preds = %_RNvXss_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB5_19StateTransitionIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread.i, %.lr.ph.i36
  %.sroa.8.098.i = phi i64 [ %.val3.i.i, %.lr.ph.i36 ], [ %i.cb, %_RNvXss_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB5_19StateTransitionIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread.i ] ; 2 uses
  %.sroa.13.097.i = phi i64 [ 0, %.lr.ph.i36 ], [ %i.cc, %_RNvXss_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB5_19StateTransitionIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread.i ] ; 2 uses
  %i.cb = call i64 @llvm.usub.sat.i64(i64 %.sroa.8.098.i, i64 %i.ad)
  %i.cc = add i64 %.sroa.13.097.i, 1
  %i.cd = shl i64 %.sroa.13.097.i, %i.ac          ; 2 uses
  %i.ce = trunc i64 %i.cd to i32                  ; 11 uses
  %i.cf = and i64 %i.cd, 4294967295               ; 5 uses
  %i.cg = icmp ugt i64 %.val3.i.i, %i.cf
  %i.ch = and i64 %i.cf, %i.bk
  %i.ci = icmp eq i64 %i.ch, 0
  %or.cond100.i = select i1 %i.cg, i1 %i.ci, i1 false, !prof !14
  br i1 %or.cond100.i, label %bb.o, label %_RNvMse_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_15TransitionTableRSmE8is_validB9_.exit.thread.i.i.invoke, !prof !14

bb.o:                                             ; preds = %bb.n
  %i.cj = add nuw nsw i64 %i.cf, %i.bo            ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.cj, %.val3.i.i
  br i1 %.not.i.i.i, label %.invoke, label %bb.p, !prof !15

bb.p:                                             ; preds = %bb.o
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i, i64 %i.cf ; 2 uses
  %.not40.i = icmp ult i32 %i.bq, %i.ce
  br i1 %.not40.i, label %.thread.i, label %bb.q

.thread.i:                                        ; preds = %_RNvMs9_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_3DFARSmE17match_pattern_lenB9_.exit.i, %bb.u, %bb.t, %bb.r, %bb.p
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.idx
  br label %bb.y

bb.q:                                             ; preds = %bb.p
  %i.cm = icmp eq i32 %i.ce, 0                    ; 2 uses
  %i.cn = icmp eq i32 %i.bs, %i.ce
  %or.cond.i = select i1 %i.cm, i1 true, i1 %i.cn
  %.not47.i = icmp ugt i32 %i.af, %i.ce           ; 3 uses
  br i1 %or.cond.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %or.cond57.i = or i1 %i.cm, %.not47.i
  %.not48.i = icmp ult i32 %i.ah, %i.ce
  %or.cond101.i = select i1 %or.cond57.i, i1 true, i1 %.not48.i
  br i1 %or.cond101.i, label %.thread.i, label %bb.v

bb.s:                                             ; preds = %bb.q
  %.not42.i = icmp ult i32 %i.ah, %i.ce
  %or.cond51.i = select i1 %.not47.i, i1 true, i1 %.not42.i
  br i1 %or.cond51.i, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %.not43.i = icmp ugt i32 %i.bu, %i.ce
  %.not44.i = icmp ult i32 %i.bw, %i.ce
  %or.cond53.i = select i1 %.not43.i, i1 true, i1 %.not44.i
  br i1 %or.cond53.i, label %bb.u, label %.thread.i

bb.u:                                             ; preds = %bb.t
  %.not45.i = icmp ugt i32 %i.by, %i.ce
  %.not46.i = icmp ult i32 %i.ca, %i.ce
  %or.cond55.i = select i1 %.not45.i, i1 true, i1 %.not46.i
  br i1 %or.cond55.i, label %.loopexit204, label %.thread.i

bb.v:                                             ; preds = %bb.s, %bb.r
  br i1 %.not47.i, label %_RNvMse_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_15TransitionTableRSmE8is_validB9_.exit.thread.i.i.invoke, label %bb.w, !prof !16

bb.w:                                             ; preds = %bb.v
  %i.co = sub nuw i32 %i.ce, %i.af
  %i.cp = zext i32 %i.co to i64
  %i.cq = lshr i64 %i.cp, %i.ac
  %i.cr = shl nuw nsw i64 %i.cq, 1
  %i.cs = or disjoint i64 %i.cr, 1                ; 3 uses
  %i.ct = icmp ult i64 %i.cs, %.val57.i
  br i1 %i.ct, label %_RNvMs9_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_3DFARSmE17match_pattern_lenB9_.exit.i, label %.invoke418

.invoke418:                                       ; preds = %bb.j, %bb.w, %.noexc19
  %5 = phi i64 [ %i.gf, %.noexc19 ], [ %i.cs, %bb.w ], [ %i.au, %bb.j ]
  %6 = phi i64 [ %i.gd, %.noexc19 ], [ %.val57.i, %bb.w ], [ %.val57.i, %bb.j ]
  %7 = phi ptr [ @23, %.noexc19 ], [ @66, %bb.w ], [ @154, %bb.j ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %5, i64 noundef %6, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %7) #18
          to label %.cont419 unwind label %.loopexit.split-lp.loopexit.split-lp

.cont419:                                         ; preds = %.invoke418
  unreachable

_RNvMs9_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_3DFARSmE17match_pattern_lenB9_.exit.i: ; preds = %bb.w
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %.val56.i, i64 %i.cs
  %i.cv = load i32, ptr %i.cu, align 4, !noalias !431, !noundef !4
  %i.cw = icmp eq i32 %i.cv, 0
  br i1 %i.cw, label %.loopexit204, label %.thread.i

bb.x:                                             ; preds = %bb.ac
  %i.cx = icmp eq ptr %i.cy, %i.cl
  br i1 %i.cx, label %_RNvXss_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB5_19StateTransitionIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread.i, label %bb.y

bb.y:                                             ; preds = %.thread.i, %bb.x
  %.sroa.865.0.i457 = phi i64 [ 0, %.thread.i ], [ %i.cz, %bb.x ] ; 4 uses
  %.sroa.064.0.i456 = phi ptr [ %i.ck, %.thread.i ], [ %i.cy, %bb.x ] ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.064.0.i456, i64 4 ; 2 uses
  %i.cz = add nuw nsw i64 %.sroa.865.0.i457, 1    ; 2 uses
  %.val7.i.i = load i32, ptr %.sroa.064.0.i456, align 4, !noalias !432, !noundef !4
  %i.da = icmp eq i64 %i.cz, %i.bo
  br i1 %i.da, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.db = icmp samesign ugt i64 %.sroa.865.0.i457, 255
  br i1 %i.db, label %bb.aa, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6expectCs98D8VPWzHuM_14regex_automata.exit.i.i.i, !prof !15

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !432
  store i8 2, ptr %i.a, align 1, !noalias !432
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 35, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @16, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #18
          to label %.noexc42 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc42:                                         ; preds = %bb.aa
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6expectCs98D8VPWzHuM_14regex_automata.exit.i.i.i: ; preds = %bb.z
  %.sroa.4.0.insert.ext.i.i.i = trunc nuw nsw i64 %.sroa.865.0.i457 to i32
  %.sroa.4.0.insert.shift.i.i.i = shl nuw nsw i32 %.sroa.4.0.insert.ext.i.i.i, 8
  br label %_RNvXss_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB5_19StateTransitionIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.i

bb.ab:                                            ; preds = %bb.y
  %i.dc = invoke i32 @_RNvMNtNtCs98D8VPWzHuM_14regex_automata4util8alphabetNtB2_4Unit3eoi(i64 noundef %.sroa.865.0.i457)
          to label %_RNvXss_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB5_19StateTransitionIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.i unwind label %.loopexit.split-lp.loopexit

_RNvXss_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB5_19StateTransitionIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.i: ; preds = %bb.ab, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6expectCs98D8VPWzHuM_14regex_automata.exit.i.i.i
  %.sroa.01.0.i.i.i = phi i32 [ %.sroa.4.0.insert.shift.i.i.i, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6expectCs98D8VPWzHuM_14regex_automata.exit.i.i.i ], [ %i.dc, %bb.ab ]
  %i.dd = and i32 %.sroa.01.0.i.i.i, 255
  %.not49.i = icmp eq i32 %i.dd, 2
  br i1 %.not49.i, label %_RNvXss_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB5_19StateTransitionIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread.i, label %bb.ac

bb.ac:                                            ; preds = %_RNvXss_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB5_19StateTransitionIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.i
  %.sroa.2.0.insert.ext.i.i.i = zext i32 %.val7.i.i to i64 ; 2 uses
  %i.de = icmp ugt i64 %.val3.i.i, %.sroa.2.0.insert.ext.i.i.i
  %i.df = and i64 %.sroa.2.0.insert.ext.i.i.i, %i.bk
  %i.dg = icmp eq i64 %i.df, 0
  %or.cond104.i = select i1 %i.de, i1 %i.dg, i1 false
  br i1 %or.cond104.i, label %bb.x, label %.loopexit204

_RNvXss_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB5_19StateTransitionIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread.i: ; preds = %bb.x, %_RNvXss_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB5_19StateTransitionIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.i
  %.not.i37 = icmp ugt i64 %.sroa.8.098.i, %i.ad
  br i1 %.not.i37, label %bb.n, label %_RNvMse_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_15TransitionTableRSmE8validateB9_.exit.loopexit

.loopexit204:                                     ; preds = %_RNvMs9_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_3DFARSmE17match_pattern_lenB9_.exit.i, %bb.u, %bb.ac
  %.sroa.12.0.ph = phi i64 [ 42, %bb.ac ], [ 63, %bb.u ], [ 39, %_RNvMs9_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_3DFARSmE17match_pattern_lenB9_.exit.i ]
  %.sroa.965.0.ph = phi ptr [ @94, %bb.ac ], [ @92, %bb.u ], [ @93, %_RNvMs9_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_3DFARSmE17match_pattern_lenB9_.exit.i ]
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.dh, align 8
  %.sroa.5145.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.965.0.ph, ptr %.sroa.5145.0..sroa_idx, align 16
  %.sroa.6146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.12.0.ph, ptr %.sroa.6146.0..sroa_idx, align 8
  br label %bb.au

_RNvMse_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_15TransitionTableRSmE8validateB9_.exit.loopexit: ; preds = %_RNvXss_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB5_19StateTransitionIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread.i
  %.val43.i.pre = load i64, ptr %i.bi, align 8, !alias.scope !433, !noalias !434
  %.val44.i.pre = load i64, ptr %i.aa, align 16, !alias.scope !433, !noalias !434
  br label %_RNvMse_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_15TransitionTableRSmE8validateB9_.exit

_RNvMse_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_15TransitionTableRSmE8validateB9_.exit: ; preds = %_RNvMse_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_15TransitionTableRSmE8validateB9_.exit.loopexit, %_RNvMsn_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_11MatchStatesRSmE8validateB9_.exit
  %.val44.i = phi i64 [ %.val44.i.pre, %_RNvMse_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_15TransitionTableRSmE8validateB9_.exit.loopexit ], [ %i.ab, %_RNvMsn_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_11MatchStatesRSmE8validateB9_.exit ] ; 4 uses
  %.val43.i = phi i64 [ %.val43.i.pre, %_RNvMse_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_15TransitionTableRSmE8validateB9_.exit.loopexit ], [ 0, %_RNvMsn_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_11MatchStatesRSmE8validateB9_.exit ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !435)
  call void @llvm.experimental.noalias.scope.decl(metadata !433)
  %i.di = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.dj = load i32, ptr %i.di, align 16, !range !17, !alias.scope !435, !noalias !436, !noundef !4
  %i.dk = trunc nuw i32 %i.dj to i1
  br i1 %i.dk, label %bb.ad, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDE6map_orbNCNvMsi_NtNtBO_3dfa5denseINtB1Y_10StartTableRSmE8validate0EBO_.exit.thread.i

bb.ad:                                            ; preds = %_RNvMse_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_15TransitionTableRSmE8validateB9_.exit
  %i.dl = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %i.dm = load i32, ptr %i.dl, align 4, !alias.scope !435, !noalias !436
  %i.dn = zext i32 %i.dm to i64                   ; 2 uses
  %i.do = icmp ugt i64 %.val43.i, %i.dn
  br i1 %i.do, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDE6map_orbNCNvMsi_NtNtBO_3dfa5denseINtB1Y_10StartTableRSmE8validate0EBO_.exit.i, label %.loopexit200

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDE6map_orbNCNvMsi_NtNtBO_3dfa5denseINtB1Y_10StartTableRSmE8validate0EBO_.exit.i: ; preds = %bb.ad
  %i.dp = and i64 %.val44.i, 63
  %notmask.i.i.i.i49 = shl nsw i64 -1, %i.dp
  %i.dq = xor i64 %notmask.i.i.i.i49, -1
  %i.dr = and i64 %i.dn, %i.dq
  %i.ds = icmp eq i64 %i.dr, 0
  br i1 %i.ds, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDE6map_orbNCNvMsi_NtNtBO_3dfa5denseINtB1Y_10StartTableRSmE8validate0EBO_.exit.thread.i, label %.loopexit200

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDE6map_orbNCNvMsi_NtNtBO_3dfa5denseINtB1Y_10StartTableRSmE8validate0EBO_.exit.thread.i: ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDE6map_orbNCNvMsi_NtNtBO_3dfa5denseINtB1Y_10StartTableRSmE8validate0EBO_.exit.i, %_RNvMse_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_15TransitionTableRSmE8validateB9_.exit
  %i.dt = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.du = load i32, ptr %i.dt, align 8, !range !17, !alias.scope !435, !noalias !436, !noundef !4
  %i.dv = trunc nuw i32 %i.du to i1
  br i1 %i.dv, label %bb.ae, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDE6map_orbNCNvMsi_NtNtBO_3dfa5denseINtB1Y_10StartTableRSmE8validate0EBO_.exit.thread._RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDE6map_orbNCNvMsi_NtNtBO_3dfa5denseINtB1Y_10StartTableRSmE8validates_0EBO_.exit.thread_crit_edge.i

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDE6map_orbNCNvMsi_NtNtBO_3dfa5denseINtB1Y_10StartTableRSmE8validate0EBO_.exit.thread._RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDE6map_orbNCNvMsi_NtNtBO_3dfa5denseINtB1Y_10StartTableRSmE8validates_0EBO_.exit.thread_crit_edge.i: ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDE6map_orbNCNvMsi_NtNtBO_3dfa5denseINtB1Y_10StartTableRSmE8validate0EBO_.exit.thread.i
  %.pre.i = and i64 %.val44.i, 63
  %.pre58.i = shl nsw i64 -1, %.pre.i
  %.pre59.i = xor i64 %.pre58.i, -1
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDE6map_orbNCNvMsi_NtNtBO_3dfa5denseINtB1Y_10StartTableRSmE8validates_0EBO_.exit.thread.i

bb.ae:                                            ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDE6map_orbNCNvMsi_NtNtBO_3dfa5denseINtB1Y_10StartTableRSmE8validate0EBO_.exit.thread.i
  %i.dw = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  %i.dx = load i32, ptr %i.dw, align 4, !alias.scope !435, !noalias !436
  %i.dy = zext i32 %i.dx to i64                   ; 2 uses
  %i.dz = icmp ugt i64 %.val43.i, %i.dy
  br i1 %i.dz, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDE6map_orbNCNvMsi_NtNtBO_3dfa5denseINtB1Y_10StartTableRSmE8validates_0EBO_.exit.i, label %.loopexit200

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDE6map_orbNCNvMsi_NtNtBO_3dfa5denseINtB1Y_10StartTableRSmE8validates_0EBO_.exit.i: ; preds = %bb.ae
  %i.ea = and i64 %.val44.i, 63
  %notmask.i.i.i48.i = shl nsw i64 -1, %i.ea
  %i.eb = xor i64 %notmask.i.i.i48.i, -1          ; 2 uses
  %i.ec = and i64 %i.dy, %i.eb
  %i.ed = icmp eq i64 %i.ec, 0
  br i1 %i.ed, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDE6map_orbNCNvMsi_NtNtBO_3dfa5denseINtB1Y_10StartTableRSmE8validates_0EBO_.exit.thread.i, label %.loopexit200

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDE6map_orbNCNvMsi_NtNtBO_3dfa5denseINtB1Y_10StartTableRSmE8validates_0EBO_.exit.thread.i: ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDE6map_orbNCNvMsi_NtNtBO_3dfa5denseINtB1Y_10StartTableRSmE8validates_0EBO_.exit.i, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDE6map_orbNCNvMsi_NtNtBO_3dfa5denseINtB1Y_10StartTableRSmE8validate0EBO_.exit.thread._RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDE6map_orbNCNvMsi_NtNtBO_3dfa5denseINtB1Y_10StartTableRSmE8validates_0EBO_.exit.thread_crit_edge.i
  %.pre-phi60.i = phi i64 [ %.pre59.i, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDE6map_orbNCNvMsi_NtNtBO_3dfa5denseINtB1Y_10StartTableRSmE8validate0EBO_.exit.thread._RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDE6map_orbNCNvMsi_NtNtBO_3dfa5denseINtB1Y_10StartTableRSmE8validates_0EBO_.exit.thread_crit_edge.i ], [ %i.eb, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDE6map_orbNCNvMsi_NtNtBO_3dfa5denseINtB1Y_10StartTableRSmE8validates_0EBO_.exit.i ]
  %i.ee = getelementptr inbounds nuw i8, ptr %i.g, i64 288
  %.val.i = load ptr, ptr %i.ee, align 16, !alias.scope !435, !noalias !436, !nonnull !4, !align !13, !noundef !4 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.g, i64 296
  %.val42.i = load i64, ptr %i.ef, align 8, !alias.scope !435, !noalias !436, !noundef !4 ; 2 uses
  %.idx462 = shl nuw nsw i64 %.val42.i, 2
  %i.eg = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.idx462
  %i.eh = load i32, ptr %i.ae, align 8, !alias.scope !433, !noalias !434
  %i.ei = load i32, ptr %i.ag, align 4, !alias.scope !433, !noalias !434
  %i.ej = icmp eq i64 %.val42.i, 0
  br i1 %i.ej, label %._crit_edge461, label %.lr.ph460

bb.af:                                            ; preds = %bb.ag
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i44459, i64 4 ; 2 uses
  %i.el = icmp eq ptr %i.ek, %i.eg
  br i1 %i.el, label %._crit_edge461, label %.lr.ph460

.lr.ph460:                                        ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDE6map_orbNCNvMsi_NtNtBO_3dfa5denseINtB1Y_10StartTableRSmE8validates_0EBO_.exit.thread.i, %bb.af
  %.sroa.0.0.i44459 = phi ptr [ %i.ek, %bb.af ], [ %.val.i, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDE6map_orbNCNvMsi_NtNtBO_3dfa5denseINtB1Y_10StartTableRSmE8validates_0EBO_.exit.thread.i ] ; 2 uses
  %i.em = load i32, ptr %.sroa.0.0.i44459, align 4, !noalias !437, !noundef !4 ; 4 uses
  %i.en = zext i32 %i.em to i64                   ; 2 uses
  %i.eo = icmp ugt i64 %.val43.i, %i.en
  %i.ep = and i64 %.pre-phi60.i, %i.en
  %i.eq = icmp eq i64 %i.ep, 0
  %or.cond57.i45 = select i1 %i.eo, i1 %i.eq, i1 false
  br i1 %or.cond57.i45, label %bb.ag, label %.loopexit200

bb.ag:                                            ; preds = %.lr.ph460
  %i.er = icmp eq i32 %i.em, 0
  %.not.i47 = icmp ugt i32 %i.eh, %i.em
  %or.cond.i48 = select i1 %i.er, i1 true, i1 %.not.i47
  %.not38.i = icmp ugt i32 %i.em, %i.ei
  %or.cond41.i = select i1 %or.cond.i48, i1 true, i1 %.not38.i
  br i1 %or.cond41.i, label %bb.af, label %.loopexit200

.loopexit200:                                     ; preds = %.lr.ph460, %bb.ag, %bb.ae, %bb.ad, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDE6map_orbNCNvMsi_NtNtBO_3dfa5denseINtB1Y_10StartTableRSmE8validate0EBO_.exit.i, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDE6map_orbNCNvMsi_NtNtBO_3dfa5denseINtB1Y_10StartTableRSmE8validates_0EBO_.exit.i
  %.sroa.1469.0.ph = phi i64 [ 50, %bb.ae ], [ 50, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDE6map_orbNCNvMsi_NtNtBO_3dfa5denseINtB1Y_10StartTableRSmE8validates_0EBO_.exit.i ], [ 52, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDE6map_orbNCNvMsi_NtNtBO_3dfa5denseINtB1Y_10StartTableRSmE8validate0EBO_.exit.i ], [ 52, %bb.ad ], [ 31, %.lr.ph460 ], [ 35, %bb.ag ]
  %.sroa.1068.0.ph = phi ptr [ @115, %bb.ae ], [ @115, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDE6map_orbNCNvMsi_NtNtBO_3dfa5denseINtB1Y_10StartTableRSmE8validates_0EBO_.exit.i ], [ @114, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDE6map_orbNCNvMsi_NtNtBO_3dfa5denseINtB1Y_10StartTableRSmE8validate0EBO_.exit.i ], [ @114, %bb.ad ], [ @116, %.lr.ph460 ], [ @117, %bb.ag ]
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.es, align 8
  %.sroa.5170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.1068.0.ph, ptr %.sroa.5170.0..sroa_idx, align 16
  %.sroa.6171.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.1469.0.ph, ptr %.sroa.6171.0..sroa_idx, align 8
  br label %bb.au

._crit_edge461:                                   ; preds = %bb.af, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDE6map_orbNCNvMsi_NtNtBO_3dfa5denseINtB1Y_10StartTableRSmE8validates_0EBO_.exit.thread.i
  %i.et = and i64 %.val44.i, 63
  %i.eu = shl nuw i64 1, %i.et                    ; 2 uses
  %i.ev = icmp eq i64 %.val43.i, 0
  br i1 %i.ev, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge461
  %i.ew = getelementptr inbounds nuw i8, ptr %i.g, i64 703
  %i.ex = getelementptr inbounds nuw i8, ptr %i.g, i64 384
  %i.ey = getelementptr inbounds nuw i8, ptr %i.g, i64 388
  %i.ez = getelementptr inbounds nuw i8, ptr %i.g, i64 360
  br label %bb.ah

bb.ah:                                            ; preds = %.lr.ph, %bb.al
  %.sroa.877.0266 = phi i64 [ %.val43.i, %.lr.ph ], [ %i.fa, %bb.al ] ; 2 uses
  %.sroa.13.0265 = phi i64 [ 0, %.lr.ph ], [ %i.fb, %bb.al ] ; 2 uses
  %i.fa = call i64 @llvm.usub.sat.i64(i64 %.sroa.877.0266, i64 %i.eu)
  %i.fb = add i64 %.sroa.13.0265, 1
  %i.fc = load i64, ptr %i.aa, align 16, !noalias !438, !noundef !4
  %i.fd = and i64 %i.fc, 63                       ; 3 uses
  %i.fe = shl i64 %.sroa.13.0265, %i.fd           ; 2 uses
end_hunk_1
begin_hunk_2_@_RNvMs8_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEE15set_start_state:bb.a
  %i.h = and i64 %i.g, 63
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = and i64 %i.i, %i.c
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.b, label %_RNvMse_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_15TransitionTableINtNtCscdodAO9FK5_5alloc3vec3VecmEE8is_validB9_.exit.thread, !prof !19

_RNvMse_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_15TransitionTableINtNtCscdodAO9FK5_5alloc3vec3VecmEE8is_validB9_.exit.thread: ; preds = %bb.a, %_RNvMse_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_15TransitionTableINtNtCscdodAO9FK5_5alloc3vec3VecmEE8is_validB9_.exit
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @57, ptr noundef nonnull inttoptr (i64 39 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #18
  unreachable

bb.b:                                             ; preds = %_RNvMse_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_15TransitionTableINtNtCscdodAO9FK5_5alloc3vec3VecmEE8is_validB9_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !513)
  %i.l = zext nneg i8 %3 to i64                   ; 3 uses
  switch i32 %1, label %default.unreachable [
    i32 0, label %bb.e
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !513, !noundef !4
  %i.o = add i64 %i.n, %i.l
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 464
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !513
  %i.q = zext i32 %2 to i64                       ; 3 uses
  store i64 %i.q, ptr %i.b, align 8, !noalias !513
  %i.r = load i64, ptr %i.p, align 16, !range !20, !alias.scope !513, !noundef !4
  %i.s = trunc nuw i64 %i.r to i1
  br i1 %i.s, label %bb.f, label %bb.g, !prof !8

bb.e:                                             ; preds = %bb.p, %bb.c, %bb.b
  %.sroa.02.0.i = phi i64 [ %i.ah, %bb.p ], [ %i.o, %bb.c ], [ %i.l, %bb.b ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 496
  %.val21.i = load i64, ptr %i.t, align 16, !alias.scope !513, !noundef !4 ; 2 uses
  %i.u = icmp ult i64 %.sroa.02.0.i, %.val21.i
  br i1 %i.u, label %_RNvMsj_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_10StartTableINtNtCscdodAO9FK5_5alloc3vec3VecmEE9set_startB9_.exit, label %bb.r

bb.f:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !513
  %i.x = icmp ugt i64 %i.w, %i.q
  br i1 %i.x, label %bb.i, label %bb.h, !prof !8

bb.g:                                             ; preds = %bb.d
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @118, i64 noundef 37, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #18, !noalias !513
  unreachable

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !513
  store ptr %i.b, ptr %i.a, align 8, !noalias !513
  %.sroa.417.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.417.0..sroa_idx.i, align 8, !noalias !513
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @120, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @121) #18, !noalias !513
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !513, !noundef !4 ; 3 uses
  %i.aa = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.z, i64 %i.q) ; 2 uses
  %i.ab = extractvalue { i64, i1 } %i.aa, 0       ; 2 uses
  %i.ac = extractvalue { i64, i1 } %i.aa, 1
  br i1 %i.ac, label %bb.k, label %bb.j, !prof !15

bb.j:                                             ; preds = %bb.i
  %i.ad = icmp slt i64 %i.z, 0
  br i1 %i.ad, label %bb.m, label %bb.l, !prof !15

bb.k:                                             ; preds = %bb.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @126) #18, !noalias !513
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ae = shl nuw i64 %i.z, 1
  %i.af = add i64 %i.ab, %i.ae                    ; 3 uses
  %i.ag = icmp ult i64 %i.af, %i.ab
  br i1 %i.ag, label %bb.o, label %bb.n, !prof !15

bb.m:                                             ; preds = %bb.j
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @125) #18, !noalias !513
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.ah = add i64 %i.af, %i.l                     ; 2 uses
  %i.ai = icmp ult i64 %i.ah, %i.af
  br i1 %i.ai, label %bb.q, label %bb.p, !prof !15

bb.o:                                             ; preds = %bb.l
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @124) #18, !noalias !513
  unreachable

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !513
  br label %bb.e

bb.q:                                             ; preds = %bb.n
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @123) #18, !noalias !513
  unreachable

bb.r:                                             ; preds = %bb.e
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.sroa.02.0.i, i64 noundef %.val21.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @122) #18, !noalias !513
  unreachable

_RNvMsj_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_10StartTableINtNtCscdodAO9FK5_5alloc3vec3VecmEE9set_startB9_.exit: ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 488
  %.val.i = load ptr, ptr %i.aj, align 8, !alias.scope !513, !nonnull !4, !noundef !4
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.sroa.02.0.i
  store i32 %4, ptr %i.ak, align 4, !noalias !513
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs8_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEE15truncate_states(ptr noalias noundef align 16 dereferenceable(800) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !516, !noundef !4
  %i.d = and i64 %i.c, 63
  %i.e = shl i64 %1, %i.d
  tail call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecmE8truncateCs98D8VPWzHuM_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(288) %i.a, i64 noundef %i.e)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs8_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEE7shuffle(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noalias noundef align 16 dereferenceable(800) initializes((4, 8)) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 3 uses
  %i.d = alloca [32 x i8], align 8                ; 5 uses
  %i.e = alloca [128 x i8], align 8               ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [72 x i8], align 8                ; 14 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [32 x i8], align 8                ; 6 uses
  %i.l = alloca [72 x i8], align 8                ; 14 uses
  %i.m = alloca [24 x i8], align 8                ; 7 uses
  %i.n = alloca [4 x i8], align 4                 ; 6 uses
  %i.o = alloca [32 x i8], align 8                ; 8 uses
  %i.p = alloca [16 x i8], align 8                ; 4 uses
  %i.q = alloca [4 x i8], align 4                 ; 6 uses
  %i.r = alloca [24 x i8], align 8                ; 12 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 376 ; 8 uses
  %i.t = load i64, ptr %i.s, align 8, !noundef !4
  %i.u = and i64 %i.t, 63                         ; 2 uses
  %i.v = shl nuw i64 1, %i.u
  %i.w = trunc i64 %i.v to i32
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.w, ptr %i.x, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.z = load i64, ptr %i.y, align 16, !noundef !4
  %i.aa = lshr i64 %i.z, %i.u
  %i.ab = icmp ult i64 %i.aa, 3
  br i1 %i.ab, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store ptr null, ptr %i.r, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.514.0..sroa_idx, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 488
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !4, !noundef !4
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 496
  %i.af = load i64, ptr %i.ae, align 16, !noundef !4 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 776
  %i.ah = load i64, ptr %i.ag, align 8, !noundef !4 ; 5 uses
  %.not.i223.not = icmp eq i64 %i.af, 0
  br i1 %.not.i223.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.ai = icmp eq i64 %i.ah, 0
  %i.aj = shl i64 %i.ah, 1                        ; 2 uses
  br i1 %i.ai, label %bb.d, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %invariant.umax = tail call i64 @llvm.umax.i64(i64 %i.ah, i64 %i.aj)
  br label %.lr.ph.split

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvMNtNtCs98D8VPWzHuM_14regex_automata3dfa7specialNtB2_7Special7set_max(ptr noalias noundef nonnull align 4 dereferenceable(32) %1)
          to label %bb.bg unwind label %.thread206

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %.backedge
  %.sroa.16157.0224 = phi i64 [ %i.ak, %.backedge ], [ 0, %.lr.ph.split.preheader ] ; 5 uses
  %i.ak = add nuw i64 %.sroa.16157.0224, 1        ; 2 uses
  %i.al = urem i64 %.sroa.16157.0224, %i.ah
  %i.am = icmp ult i64 %i.al, 6
  br i1 %i.am, label %switch.lookup.i, label %bb.e, !prof !22

bb.d:                                             ; preds = %.lr.ph
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @211) #18
          to label %.noexc unwind label %.thread.loopexit.split-lp

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %.lr.ph.split
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @213) #18
          to label %.noexc134 unwind label %.thread.loopexit.split-lp

.noexc134:                                        ; preds = %bb.e
  unreachable

switch.lookup.i:                                  ; preds = %.lr.ph.split
  %or.cond = icmp ult i64 %.sroa.16157.0224, %invariant.umax
  br i1 %or.cond, label %bb.i, label %bb.f

bb.f:                                             ; preds = %switch.lookup.i
  %i.an = sub nuw i64 %.sroa.16157.0224, %i.aj
  %i.ao = udiv i64 %i.an, %i.ah                   ; 2 uses
  %i.ap = icmp ugt i64 %i.ao, 2147483646
  br i1 %i.ap, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !532
  store i64 %i.ao, ptr %i.c, align 8, !noalias !532
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @212) #18
          to label %.noexc135 unwind label %.thread.loopexit.split-lp

.noexc135:                                        ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %.thread184
  br i1 %.sroa.010.1191, label %.thread, label %bb.bf

.thread.loopexit:                                 ; preds = %bb.bd, %bb.ba
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.thread.loopexit.split-lp:                        ; preds = %bb.g, %bb.e, %bb.d, %bb.bc, %._crit_edge
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.i:                                             ; preds = %bb.f, %switch.lookup.i
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %.sroa.16157.0224
  %i.ar = load i32, ptr %i.aq, align 4, !noalias !533, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store i32 %i.ar, ptr %i.q, align 4
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %.backedge, label %bb.ba

._crit_edge:                                      ; preds = %.backedge, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  invoke void @_RINvMNtNtCs98D8VPWzHuM_14regex_automata3dfa8remapperNtB3_8Remapper3newINtNtB5_5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEEEB7_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.o, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(800) %1)
          to label %bb.j unwind label %.thread.loopexit.split-lp

bb.j:                                             ; preds = %._crit_edge
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.au = load i64, ptr %i.at, align 8, !noundef !4 ; 2 uses
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %.thread239, label %bb.k

.thread239:                                       ; preds = %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 0, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 0, ptr %i.ax, align 4
  %.pre = load i64, ptr %i.s, align 8
  %.pre230 = and i64 %.pre, 63
  br label %bb.u

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.ay = load i64, ptr %i.s, align 8, !noundef !4
  %i.az = and i64 %i.ay, 63
  %i.ba = shl i64 2, %i.az
  %i.bb = trunc i64 %i.ba to i32                  ; 3 uses
  store i32 %i.bb, ptr %i.n, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr null, ptr %i.m, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 0, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i32 %i.bb, ptr %i.bd, align 8
  %i.be = load ptr, ptr %2, align 8, !noundef !4  ; 3 uses
  %.not114 = icmp eq ptr %i.be, null
  br i1 %.not114, label %bb.n, label %bb.m

bb.l:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8IntoIterNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDINtNtBK_3vec3VecNtB1B_9PatternIDEEEB1F_.exit138
  %i.bf = load i32, ptr %i.bd, align 8, !noundef !4 ; 2 uses
  %i.bg = add nuw nsw i64 %i.bw, 4294967295
  %i.bh = shl i64 %i.bg, %i.bv
  %i.bi = trunc i64 %i.bh to i32
  %.sroa.0.0.i = call noundef i32 @llvm.umax.i32(i32 %i.bi, i32 %i.bf) ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %.sroa.0.0.i, ptr %i.bj, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.bk = icmp eq i32 %i.bf, 0
  br i1 %i.bk, label %bb.u, label %bb.v

bb.m:                                             ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bm = load i64, ptr %i.bl, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.m
  %.sroa.01.sroa.0.0 = phi i64 [ 1, %bb.m ], [ 0, %bb.k ] ; 2 uses
  %.sroa.01.sroa.5.sroa.6.0 = phi i64 [ %i.bm, %bb.m ], [ undef, %bb.k ] ; 2 uses
  %.sroa.5.0 = phi i64 [ %i.au, %bb.m ], [ 0, %bb.k ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i64 %.sroa.01.sroa.0.0, ptr %i.l, align 8
  %.sroa.01.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr null, ptr %.sroa.01.sroa.5.0..sroa_idx, align 8
  %.sroa.01.sroa.5.sroa.5.0..sroa.01.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.be, ptr %.sroa.01.sroa.5.sroa.5.0..sroa.01.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.01.sroa.5.sroa.6.0..sroa.01.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i64 %.sroa.01.sroa.5.sroa.6.0, ptr %.sroa.01.sroa.5.sroa.6.0..sroa.01.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.01.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store i64 %.sroa.01.sroa.0.0, ptr %.sroa.01.sroa.6.0..sroa_idx, align 8
  %.sroa.01.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store ptr null, ptr %.sroa.01.sroa.7.0..sroa_idx, align 8
  %.sroa.01.sroa.7.sroa.5.0..sroa.01.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  store ptr %i.be, ptr %.sroa.01.sroa.7.sroa.5.0..sroa.01.sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.01.sroa.7.sroa.6.0..sroa.01.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  store i64 %.sroa.01.sroa.5.sroa.6.0, ptr %.sroa.01.sroa.7.sroa.6.0..sroa.01.sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  store i64 %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.ay, %bb.n
  %i.bo = phi i32 [ %i.dz, %bb.ay ], [ %i.bb, %bb.n ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  invoke void @_RNvXsA_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8IntoIterNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDINtNtBb_3vec3VecNtB18_9PatternIDEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1c_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.l)
          to label %bb.q unwind label %bb.p

.body.thread:                                     ; preds = %bb.at, %.body.thread203, %bb.az, %bb.p
  %.pn = phi { ptr, i32 } [ %lpad.thr_comm.split-lp202, %bb.az ], [ %lpad.thr_comm201, %.body.thread203 ], [ %i.bp, %bb.p ], [ %i.dp, %bb.at ]
  invoke void @_RNvXsy_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8IntoIterNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDINtNtBb_3vec3VecNtB18_9PatternIDEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1c_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.l)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8IntoIterNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDINtNtBK_3vec3VecNtB1B_9PatternIDEEEB1F_.exit.thread unwind label %bb.ap

bb.p:                                             ; preds = %bb.o
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.q:                                             ; preds = %bb.o
  %i.bq = load i64, ptr %i.bn, align 8, !range !23, !noundef !4
  %.not115 = icmp eq i64 %i.bq, -1
  br i1 %.not115, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.br = load i32, ptr %i.k, align 8, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i64 24, i1 false)
  invoke void @_RINvMNtNtCs98D8VPWzHuM_14regex_automata3dfa8remapperNtB3_8Remapper4swapINtNtB5_5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEEEB7_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.o, ptr noalias noundef nonnull align 16 dereferenceable(800) %1, i32 noundef %i.bo, i32 noundef %i.br)
          to label %bb.aq unwind label %bb.az

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  invoke void @_RNvXsy_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8IntoIterNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDINtNtBb_3vec3VecNtB18_9PatternIDEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1c_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.l)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8IntoIterNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDINtNtBK_3vec3VecNtB1B_9PatternIDEEEB1F_.exit138 unwind label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8IntoIterNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDINtNtBK_3vec3VecNtB1B_9PatternIDEEEB1F_.exit.thread181

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8IntoIterNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDINtNtBK_3vec3VecNtB1B_9PatternIDEEEB1F_.exit.thread181: ; preds = %bb.s
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8IntoIterNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDINtNtBK_3vec3VecNtB1B_9PatternIDEEEB1F_.exit.thread

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8IntoIterNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDINtNtBK_3vec3VecNtB1B_9PatternIDEEEB1F_.exit: ; preds = %bb.t
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %.thread184

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8IntoIterNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDINtNtBK_3vec3VecNtB1B_9PatternIDEEEB1F_.exit138: ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  %.val133 = load i64, ptr %i.s, align 8, !noundef !4
  %i.bu = zext i32 %i.bo to i64
  %i.bv = and i64 %.val133, 63                    ; 5 uses
  %i.bw = lshr i64 %i.bu, %i.bv                   ; 2 uses
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %bb.t, label %bb.l, !prof !15

bb.t:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8IntoIterNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDINtNtBK_3vec3VecNtB1B_9PatternIDEEEB1F_.exit138
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @88) #18
          to label %.noexc139 unwind label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8IntoIterNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDINtNtBK_3vec3VecNtB1B_9PatternIDEEEB1F_.exit

.noexc139:                                        ; preds = %bb.t
  unreachable

bb.u:                                             ; preds = %.thread239, %bb.v, %bb.l
  %.pre-phi242 = phi i64 [ %i.bv, %bb.l ], [ %i.bv, %bb.v ], [ %.pre230, %.thread239 ]
  %.pn238 = phi i64 [ 2, %bb.l ], [ %i.ce, %bb.v ], [ 2, %.thread239 ]
  %.sroa.02.0.in = shl i64 %.pn238, %.pre-phi242
  %.sroa.02.0 = trunc i64 %.sroa.02.0.in to i32   ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  store i32 %.sroa.02.0, ptr %i.by, align 8
  %i.bz = load ptr, ptr %i.r, align 8, !noundef !4 ; 3 uses
  %.not120 = icmp ne ptr %i.bz, null              ; 3 uses
  %i.ca = load i64, ptr %.sroa.514.0..sroa_idx, align 8
  %i.cb = load i64, ptr %.sroa.413.0..sroa_idx, align 8
  %.sroa.557.0 = select i1 %.not120, i64 %i.ca, i64 0
  %.sroa.056.sroa.6.0 = zext i1 %.not120 to i64   ; 2 uses
  %.sroa.056.sroa.5.sroa.6.0 = select i1 %.not120, i64 %i.cb, i64 undef ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 %.sroa.056.sroa.6.0, ptr %i.g, align 8
  %.sroa.058.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr null, ptr %.sroa.058.sroa.4.0..sroa_idx, align 8
  %.sroa.058.sroa.4.sroa.4.0..sroa.058.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.bz, ptr %.sroa.058.sroa.4.sroa.4.0..sroa.058.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.058.sroa.4.sroa.5.0..sroa.058.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 %.sroa.056.sroa.5.sroa.6.0, ptr %.sroa.058.sroa.4.sroa.5.0..sroa.058.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.058.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store i64 %.sroa.056.sroa.6.0, ptr %.sroa.058.sroa.5.0..sroa_idx, align 8
  %.sroa.058.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store ptr null, ptr %.sroa.058.sroa.6.0..sroa_idx, align 8
  %.sroa.058.sroa.6.sroa.4.0..sroa.058.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store ptr %i.bz, ptr %.sroa.058.sroa.6.sroa.4.0..sroa.058.sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.058.sroa.6.sroa.5.0..sroa.058.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  store i64 %.sroa.056.sroa.5.sroa.6.0, ptr %.sroa.058.sroa.6.sroa.5.0..sroa.058.sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  store i64 %.sroa.557.0, ptr %.sroa.459.0..sroa_idx, align 8
  br label %bb.x

end_hunk_2
begin_hunk_3_@_RNvMsn_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_11MatchStatesINtNtCscdodAO9FK5_5alloc3vec3VecmEE6to_mapB9_:.noexc17
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val24 = load i64, ptr %i.n, align 8           ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val23 = load ptr, ptr %i.o, align 8, !nonnull !4
  br label %bb.c

.body.thread:                                     ; preds = %bb.n, %bb.h, %.body, %bb.b
  %.pn = phi { ptr, i32 } [ %i.ai, %bb.h ], [ %lpad.thr_comm.split-lp, %.body ], [ %i.p, %bb.b ], [ %lpad.phi, %bb.n ]
  invoke void @_RNvXNtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDINtNtB8_3vec3VecNtB15_9PatternIDEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB19_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDINtNtBK_3vec3VecNtB1B_9PatternIDEEEB1F_.exit unwind label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

._crit_edge78:                                    ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives9PatternIDEEEB1z_.exit, %_RNvMsn_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_11MatchStatesINtNtCscdodAO9FK5_5alloc3vec3VecmEE3lenB9_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

.body:                                            ; preds = %bb.e, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives9PatternIDEEB1d_.exit.i
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.c:                                             ; preds = %.lr.ph, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives9PatternIDEEEB1z_.exit
  %.sroa.04.077 = phi i64 [ 0, %.lr.ph ], [ %i.q, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives9PatternIDEEEB1z_.exit ] ; 3 uses
  %i.q = add nuw nsw i64 %.sroa.04.077, 1         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 0, ptr %i.d, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.l, align 8
  store i64 0, ptr %i.m, align 8
  %i.r = shl nuw i64 %.sroa.04.077, 1             ; 2 uses
  %i.s = or disjoint i64 %i.r, 1                  ; 3 uses
  %i.t = icmp ult i64 %i.s, %.val22
  br i1 %i.t, label %.split, label %.invoke

.split:                                           ; preds = %bb.c
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %.val21, i64 %i.s ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !noundef !4 ; 2 uses
  %i.w = zext i32 %i.v to i64
  %.not79 = icmp eq i32 %i.v, 0
  br i1 %.not79, label %._crit_edge, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %.split
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %.val21, i64 %i.r
  br label %.noexc

._crit_edge:                                      ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives9PatternIDE8push_mutBK_.exit, %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.y = invoke fastcc noundef i32 @_RNvMsn_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_11MatchStatesINtNtCscdodAO9FK5_5alloc3vec3VecmEE14match_state_idB9_(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(800) %2, i64 noundef %.sroa.04.077)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit

.noexc:                                           ; preds = %.noexc.lr.ph, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives9PatternIDE8push_mutBK_.exit
  %i.z = phi i64 [ 0, %.noexc.lr.ph ], [ %i.as, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives9PatternIDE8push_mutBK_.exit ] ; 3 uses
  %.sroa.06.076 = phi i64 [ 0, %.noexc.lr.ph ], [ %i.aa, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives9PatternIDE8push_mutBK_.exit ] ; 4 uses
  %i.aa = add nuw nsw i64 %.sroa.06.076, 1        ; 2 uses
  %i.ab = load i32, ptr %i.x, align 4, !noundef !4
  %i.ac = zext i32 %i.ab to i64                   ; 3 uses
  %i.ad = load i32, ptr %i.u, align 4, !noundef !4
  %i.ae = zext i32 %i.ad to i64                   ; 3 uses
  %i.af = add nuw nsw i64 %i.ae, %i.ac            ; 2 uses
  %.not.i = icmp ugt i64 %i.af, %.val24
  br i1 %.not.i, label %bb.d, label %bb.j, !prof !15

bb.d:                                             ; preds = %.noexc
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.ac, i64 noundef %i.af, i64 noundef %.val24, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @150) #18
          to label %.noexc16 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc16:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  invoke void @_RNvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDINtNtBb_3vec3VecNtB18_9PatternIDEE6insertB1c_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, i32 noundef %i.y, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.f unwind label %.body

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ag = load i64, ptr %i.c, align 8, !range !23, !alias.scope !744, !noundef !4
  %i.ah = icmp eq i64 %i.ag, -1
  br i1 %i.ah, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives9PatternIDEEEB1z_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives9PatternIDENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives9PatternIDEEB1d_.exit.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives9PatternIDENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body.thread unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives9PatternIDEEB1d_.exit.i: ; preds = %bb.g
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives9PatternIDENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives9PatternIDEEEB1z_.exit unwind label %.body

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives9PatternIDEEEB1z_.exit: ; preds = %bb.f, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives9PatternIDEEB1d_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %exitcond102.not = icmp eq i64 %i.q, %i.k
  br i1 %exitcond102.not, label %._crit_edge78, label %bb.c

bb.j:                                             ; preds = %.noexc
  %i.ak = icmp samesign ult i64 %.sroa.06.076, %i.ae
  br i1 %i.ak, label %bb.k, label %.invoke

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %.val23, i64 %i.ac
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %.sroa.06.076
  %i.an = load i32, ptr %i.am, align 4, !noundef !4
  %i.ao = load i64, ptr %i.d, align 8, !range !21, !alias.scope !745, !noundef !4
  %i.ap = icmp eq i64 %i.z, %i.ao
  br i1 %i.ap, label %bb.l, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives9PatternIDE8push_mutBK_.exit

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives9PatternIDE8grow_oneBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives9PatternIDE8push_mutBK_.exit unwind label %.loopexit

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives9PatternIDE8push_mutBK_.exit: ; preds = %bb.l, %bb.k
  %i.aq = load ptr, ptr %i.l, align 8, !alias.scope !745, !nonnull !4, !noundef !4
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.z
  store i32 %i.an, ptr %i.ar, align 4
  %i.as = add i64 %i.z, 1                         ; 2 uses
  store i64 %i.as, ptr %i.m, align 8, !alias.scope !745
  %exitcond.not = icmp eq i64 %i.aa, %i.w
  br i1 %exitcond.not, label %._crit_edge, label %.noexc

.invoke:                                          ; preds = %bb.c, %bb.j
  %i.at = phi i64 [ %.sroa.06.076, %bb.j ], [ %i.s, %bb.c ]
  %i.au = phi i64 [ %i.ae, %bb.j ], [ %.val22, %bb.c ]
  %i.av = phi ptr [ @153, %bb.j ], [ @66, %bb.c ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.at, i64 noundef %i.au, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.av) #18
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

.loopexit:                                        ; preds = %bb.l
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %._crit_edge
  %lpad.loopexit43 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.invoke, %bb.d
  %lpad.loopexit.split-lp44 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit43, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp44, %.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives9PatternIDENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %.loopexit.split-lp
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives9PatternIDENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body35 unwind label %bb.o

bb.n:                                             ; preds = %.loopexit.split-lp
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives9PatternIDENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body.thread unwind label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.p:                                             ; preds = %bb.n, %.body.thread
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body35

.body35:                                          ; preds = %bb.m, %bb.p
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDINtNtBK_3vec3VecNtB1B_9PatternIDEEEB1F_.exit: ; preds = %.body.thread
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMso_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB5_5Flags10from_bytes(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 4), (8, 11), (16, 24)) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4wire12try_read_u32(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) @159, i64 noundef 11)
  %i.b = load i32, ptr %i.a, align 8, !range !12, !noundef !4 ; 2 uses
  %.not = icmp eq i32 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.sroa.634.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.sroa.634.0.copyload = load i32, ptr %.sroa.634.0..sroa_idx, align 4
  %.sroa.735.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.735.0.copyload = load i64, ptr %.sroa.735.0..sroa_idx, align 8
  %.sroa.836.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.836.0.copyload = load i64, ptr %.sroa.836.0..sroa_idx, align 8
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load <2 x i32>, ptr %.sroa.432.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store <2 x i32> %i.c, ptr %.sroa.438.0..sroa_idx, align 4
  %.sroa.640.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.634.0.copyload, ptr %.sroa.640.0..sroa_idx, align 4
  %.sroa.842.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.836.0.copyload, ptr %.sroa.842.0..sroa_idx, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i32, ptr %i.d, align 8, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.h = trunc i32 %i.e to i8                     ; 3 uses
  %i.i = and i8 %i.h, 1
  %i.j = lshr i8 %i.h, 1
  %i.k = and i8 %i.j, 1
  %i.l = lshr i8 %i.h, 2
  %i.m = and i8 %i.l, 1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.i, ptr %i.n, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.k, ptr %.sroa.421.0..sroa_idx, align 1
  %.sroa.522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %i.m, ptr %.sroa.522.0..sroa_idx, align 2
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.735.0.copyload.sink = phi i64 [ %i.g, %bb.c ], [ %.sroa.735.0.copyload, %bb.b ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.735.0.copyload.sink, ptr %i.o, align 8
  store i32 %i.b, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtNtNtCs98D8VPWzHuM_14regex_automata3dfa8remapper5denseINtNtB6_5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtB4_10Remappable11swap_states(ptr noalias nofree noundef readonly align 16 captures(none) dereferenceable(800) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs8_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEE11swap_states(ptr noalias noundef nonnull align 16 dereferenceable(800) %0, i32 noundef %1, i32 noundef %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB5_7BuilderNtNtCs4NRVxsYgnAr_4core7default7Default7default(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([576 x i8]) align 16 captures(none) dereferenceable(576) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [448 x i8], align 8               ; 4 uses
  %i.b = alloca [128 x i8], align 16              ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !748
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store i8 -1, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !748
  store i128 0, ptr %i.b, align 16, !noalias !748
  store <8 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -1>, ptr %i.c, align 16, !noalias !748
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 2, ptr %i.d, align 16, !noalias !748
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 2, ptr %i.e, align 16, !noalias !748
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !748
  invoke void @_RNvMs1_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson8compilerNtB5_8Compiler3new(ptr noalias noundef nonnull sret([448 x i8]) align 8 captures(none) dereferenceable(448) %i.a)
          to label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB4_7Builder3new.exit unwind label %bb.b, !noalias !748

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense6ConfigEBH_(ptr noalias noundef align 16 dereferenceable(128) %i.b) #19
          to label %bb.d unwind label %bb.c, !noalias !748

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20, !noalias !748
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.f

_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB4_7Builder3new.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(576) %0, ptr noundef nonnull align 16 dereferenceable(128) %i.b, i64 128, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(448) %i.h, ptr noundef nonnull align 8 dereferenceable(448) %i.a, i64 448, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !748
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !748
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1K_NtNtCs98D8VPWzHuM_14regex_automata4util10primitivesNtB6_12StateIDErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @161, i64 noundef 12, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @160)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtB6_5Debug3fmtBD_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !26, !noundef !4
  %i.b = tail call noundef zeroext i1 @_RNvXsa_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtB9_(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(800) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense14BuildErrorKindNtB6_5Debug3fmtBC_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = load ptr, ptr %0, align 8, !nonnull !4, !align !9, !noundef !4 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !752)
  %i.f = load i64, ptr %i.e, align 8, !range !10, !alias.scope !752, !noalias !753, !noundef !4 ; 2 uses
  %i.g = add i64 %i.f, 9223372036854775801
  %i.h = icmp ult i64 %i.g, 6
  %i.i = add nsw i64 %i.f, 9223372036854775802
  %i.j = select i1 %i.h, i64 %i.i, i64 0
  switch i64 %i.j, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
    i64 5, label %bb.h
    i64 6, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !754
  store ptr %i.e, ptr %i.d, align 8, !noalias !754
  %i.k = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @185, i64 noundef 3, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @184)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !754
  br label %_RNvXsR_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB5_14BuildErrorKindNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt.exit

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !754
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.l, ptr %i.c, align 8, !noalias !754
  %i.m = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @187, i64 noundef 11, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @186)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !754
  br label %_RNvXsR_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB5_14BuildErrorKindNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt.exit

bb.e:                                             ; preds = %bb.a
  %i.n = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @188, i64 noundef 13), !noalias !752
  br label %_RNvXsR_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB5_14BuildErrorKindNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt.exit

bb.f:                                             ; preds = %bb.a
  %i.o = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @189, i64 noundef 18), !noalias !752
  br label %_RNvXsR_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB5_14BuildErrorKindNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt.exit

bb.g:                                             ; preds = %bb.a
  %i.p = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @190, i64 noundef 22), !noalias !752
  br label %_RNvXsR_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB5_14BuildErrorKindNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt.exit

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !754
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.q, ptr %i.b, align 8, !noalias !754
  %i.r = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @192, i64 noundef 20, ptr noalias noundef nonnull readonly captures(address, read_provenance) @193, i64 noundef 5, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @191)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !754
  br label %_RNvXsR_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB5_14BuildErrorKindNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt.exit

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !754
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.s, ptr %i.a, align 8, !noalias !754
  %i.t = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @194, i64 noundef 28, ptr noalias noundef nonnull readonly captures(address, read_provenance) @193, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @191)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !754
  br label %_RNvXsR_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB5_14BuildErrorKindNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt.exit

_RNvXsR_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB5_14BuildErrorKindNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i
  %.sroa.0.0.in.i = phi i1 [ %i.k, %bb.c ], [ %i.m, %bb.d ], [ %i.n, %bb.e ], [ %i.o, %bb.f ], [ %i.p, %bb.g ], [ %i.r, %bb.h ], [ %i.t, %bb.i ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1h_NtCs4NRVxsYgnAr_4core3fmtQINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtB6_5Debug3fmtBD_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !26, !noundef !4
  %i.b = tail call noundef zeroext i1 @_RNvXsa_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtB9_(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(800) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1j_NtNtCs98D8VPWzHuM_14regex_automata4util10primitivesNtB6_14PatternIDErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @162, i64 noundef 14, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @160)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs6_NtNtCs4NRVxsYgnAr_4core3num5errorNtB5_15TryFromIntErrorNtNtB9_3fmt5Debug3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @166, i64 noundef 15, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @165)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs8_NtNtCs98D8VPWzHuM_14regex_automata4util4wireNtB5_16DeserializeErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @168, i64 noundef 16, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @167)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs8_NtNtCs98D8VPWzHuM_14regex_automata4util5startNtB5_5StartNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !27, !noundef !4 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs8_NtNtCs98D8VPWzHuM_14regex_automata4util5startNtB5_5StartNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs8_NtNtCs98D8VPWzHuM_14regex_automata4util5startNtB5_5StartNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt.70, i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsL_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB5_5FlagsNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(3) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2
  store ptr %i.c, ptr %i.a, align 8
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @177, i64 noundef 5, ptr noalias noundef nonnull readonly captures(address, read_provenance) @178, i64 noundef 9, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @175, ptr noalias noundef nonnull readonly captures(address, read_provenance) @179, i64 noundef 7, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @175, ptr noalias noundef nonnull readonly captures(address, read_provenance) @180, i64 noundef 24, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @176)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsP_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB5_10BuildErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @182, i64 noundef 10, ptr noalias noundef nonnull readonly captures(address, read_provenance) @183, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @181)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.b, 67108864
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvXs6_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_RNvXs8_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsa_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtB9_(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(800) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 3 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 10 uses
  %i.i = alloca [4 x i8], align 4                 ; 9 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [8 x i8], align 8                 ; 5 uses
  %i.l = alloca [32 x i8], align 8                ; 7 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [4 x i8], align 4                 ; 4 uses
  %i.o = alloca [8 x i8], align 8                 ; 9 uses
  %i.p = alloca [1 x i8], align 1                 ; 9 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [8 x i8], align 8                 ; 5 uses
  %i.s = alloca [32 x i8], align 8                ; 8 uses
  %i.t = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 18 uses
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !4, !align !9, !noundef !4
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !invariant.load !4, !nonnull !4 ; 2 uses
  %i.y = tail call noundef zeroext i1 %i.x(ptr noundef nonnull %i.t, ptr noalias noundef nonnull readonly captures(address, read_provenance) @195, i64 noundef 12)
  br i1 %i.y, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val.i = load ptr, ptr %i.z, align 8, !alias.scope !775, !noalias !776, !nonnull !4, !noundef !4
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.val3.i = load i64, ptr %i.aa, align 16, !alias.scope !775, !noalias !776, !noundef !4 ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !775, !noalias !776, !noundef !4 ; 2 uses
  %i.ad = and i64 %i.ac, 63                       ; 9 uses
  %i.ae = shl nuw i64 1, %i.ad                    ; 2 uses
  %i.af = icmp eq i64 %.val3.i, 0
  br i1 %i.af, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %notmask.i.i.i = shl nsw i64 -1, %i.ad
  %i.ag = xor i64 %notmask.i.i.i, -1
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 375
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = zext i8 %i.ai to i64
  %i.ak = add nuw nsw i64 %i.aj, 2                ; 2 uses
  %.sroa.8300.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.9301.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.ao
  %.sroa.8.0377 = phi i64 [ %.val3.i, %.lr.ph ], [ %i.am, %bb.ao ] ; 2 uses
  %.sroa.13.0376 = phi i64 [ 0, %.lr.ph ], [ %i.an, %bb.ao ] ; 2 uses
  %i.am = call i64 @llvm.usub.sat.i64(i64 %.sroa.8.0377, i64 %i.ae)
  %i.an = add i64 %.sroa.13.0376, 1
  %i.ao = shl i64 %.sroa.13.0376, %i.ad           ; 2 uses
  %i.ap = trunc i64 %i.ao to i32                  ; 2 uses
  %i.aq = and i64 %i.ao, 4294967295               ; 6 uses
  %i.ar = icmp ugt i64 %.val3.i, %i.aq
  %i.as = and i64 %i.aq, %i.ag
  %i.at = icmp eq i64 %i.as, 0
  %or.cond = select i1 %i.ar, i1 %i.at, i1 false, !prof !14
  br i1 %or.cond, label %bb.d, label %_RNvMse_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_15TransitionTableINtNtCscdodAO9FK5_5alloc3vec3VecmEE8is_validB9_.exit.thread.i.i, !prof !14

_RNvMse_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_15TransitionTableINtNtCscdodAO9FK5_5alloc3vec3VecmEE8is_validB9_.exit.thread.i.i: ; preds = %bb.c
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @89, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @90) #18, !noalias !777
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.au = add nuw nsw i64 %i.ak, %i.aq            ; 2 uses
  %.not.i.i = icmp ugt i64 %i.au, %.val3.i
  br i1 %.not.i.i, label %bb.e, label %bb.f, !prof !15

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.aq, i64 noundef %i.au, i64 noundef %.val3.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @91) #18, !noalias !777
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store ptr %i.av, ptr %i.s, align 8
  store i64 %i.ak, ptr %.sroa.8300.0..sroa_idx, align 8
  store i64 %i.ac, ptr %.sroa.9301.0..sroa_idx, align 8
  store i32 %i.ap, ptr %.sroa.10.0..sroa_idx, align 8
  %i.aw = call noundef zeroext i1 @_RINvNtNtCs98D8VPWzHuM_14regex_automata3dfa9automaton19fmt_state_indicatorRINtNtB4_5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEEEB6_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(800) %0, i32 noundef %i.ap)
  br i1 %i.aw, label %.loopexit342, label %bb.al

._crit_edge.loopexit:                             ; preds = %bb.ao
  %.pre = load ptr, ptr %1, align 8
  %.pre430 = load ptr, ptr %i.u, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre430, i64 24
  %.pre431 = load ptr, ptr %.phi.trans.insert, align 8, !invariant.load !4
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.ax = phi ptr [ %.pre431, %._crit_edge.loopexit ], [ %i.x, %bb.b ]
  %i.ay = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.t, %bb.b ]
  %i.az = call noundef zeroext i1 %i.ax(ptr noundef nonnull %i.ay, ptr noalias noundef nonnull readonly captures(address, read_provenance) @196, i64 noundef 1)
  br i1 %i.az, label %bb.t, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 488
  %.val291 = load ptr, ptr %i.ba, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 496
  %.val292 = load i64, ptr %i.bb, align 16, !noundef !4 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.bd = load i64, ptr %i.bc, align 8, !noundef !4 ; 5 uses
  %.not.i.i293378.not = icmp eq i64 %.val292, 0
  br i1 %.not.i.i293378.not, label %._crit_edge383, label %.lr.ph382

.lr.ph382:                                        ; preds = %bb.g
  %i.be = icmp eq i64 %i.bd, 0
  %i.bf = shl i64 %i.bd, 1                        ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %.sroa.488.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.4128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.4132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  br i1 %i.be, label %bb.h, label %.lr.ph382.split

.lr.ph382.split:                                  ; preds = %.lr.ph382, %bb.ak
  %.sroa.17309.0380 = phi i64 [ %i.bi, %bb.ak ], [ 0, %.lr.ph382 ] ; 8 uses
  %i.bi = add nuw i64 %.sroa.17309.0380, 1        ; 2 uses
  %i.bj = urem i64 %.sroa.17309.0380, %i.bd       ; 5 uses
  %i.bk = icmp ult i64 %i.bj, 6
  br i1 %i.bk, label %switch.lookup.i.i, label %bb.i, !prof !22

bb.h:                                             ; preds = %.lr.ph382
  call void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @211) #18, !noalias !778
  unreachable

bb.i:                                             ; preds = %.lr.ph382.split
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @213) #18, !noalias !778
  unreachable

switch.lookup.i.i:                                ; preds = %.lr.ph382.split
  %switch.idx.cast.i.i = trunc nuw nsw i64 %i.bj to i8 ; 3 uses
  %i.bl = icmp ult i64 %.sroa.17309.0380, %i.bd
  br i1 %i.bl, label %bb.ae, label %bb.j

bb.j:                                             ; preds = %switch.lookup.i.i
  %i.bm = icmp ult i64 %.sroa.17309.0380, %i.bf
  br i1 %i.bm, label %bb.ad, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bn = sub nuw i64 %.sroa.17309.0380, %i.bf
  %i.bo = udiv i64 %i.bn, %i.bd                   ; 3 uses
  %i.bp = icmp ugt i64 %i.bo, 2147483646
  br i1 %i.bp, label %bb.l, label %bb.af

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !779
  store i64 %i.bo, ptr %i.a, align 8, !noalias !779
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @212) #18, !noalias !779
  unreachable

._crit_edge383:                                   ; preds = %bb.ak, %bb.g
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.br = load i64, ptr %i.bq, align 16, !noundef !4 ; 2 uses
  %i.bs = icmp ugt i64 %i.br, 1
  br i1 %i.bs, label %bb.m, label %.loopexit339

.loopexit339:                                     ; preds = %bb.aa, %_RNvMsn_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_11MatchStatesINtNtCscdodAO9FK5_5alloc3vec3VecmEE3lenB9_.exit, %._crit_edge383
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.bt = lshr i64 %.val3.i, %i.ad
  store i64 %i.bt, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.g, ptr %i.f, align 8
  %.sroa.4218.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.4218.0..sroa_idx, align 8
  %i.bu = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.bv = load ptr, ptr %i.u, align 8, !nonnull !4, !align !9, !noundef !4
  %i.bw = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.bu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bv, ptr noundef nonnull @197, ptr noundef nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br i1 %i.bw, label %bb.t, label %bb.q

bb.m:                                             ; preds = %._crit_edge383
  %i.bx = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.by = load ptr, ptr %i.u, align 8, !nonnull !4, !align !9, !noundef !4
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !invariant.load !4, !nonnull !4
  %i.cb = call noundef zeroext i1 %i.ca(ptr noundef nonnull %i.bx, ptr noalias noundef nonnull readonly captures(address, read_provenance) @196, i64 noundef 1)
  br i1 %i.cb, label %bb.t, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !780
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 392
  %.val281 = load ptr, ptr %i.cc, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 400
  %.val282 = load i64, ptr %i.cd, align 16, !noundef !4 ; 5 uses
  %i.ce = and i64 %.val282, 1                     ; 2 uses
  store i64 %i.ce, ptr %i.b, align 8, !noalias !780
  %i.cf = icmp eq i64 %i.ce, 0
  br i1 %i.cf, label %_RNvMsn_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_11MatchStatesINtNtCscdodAO9FK5_5alloc3vec3VecmEE3lenB9_.exit, label %bb.o, !prof !8

bb.o:                                             ; preds = %bb.n
  call void @_RINvNtCs4NRVxsYgnAr_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @151, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @152) #18
  unreachable

_RNvMsn_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_11MatchStatesINtNtCscdodAO9FK5_5alloc3vec3VecmEE3lenB9_.exit: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !780
  %i.cg = lshr exact i64 %.val282, 1
  %.not389 = icmp eq i64 %.val282, 0
  br i1 %.not389, label %.loopexit339, label %.lr.ph387

.lr.ph387:                                        ; preds = %_RNvMsn_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_11MatchStatesINtNtCscdodAO9FK5_5alloc3vec3VecmEE3lenB9_.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.4162.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 424
  %.val284 = load i64, ptr %i.ci, align 8         ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 416
  %.val283 = load ptr, ptr %i.cj, align 16, !nonnull !4
  %.sroa.4190.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph387, %bb.aa
  %.sroa.0157.0386 = phi i64 [ 0, %.lr.ph387 ], [ %i.ck, %bb.aa ] ; 3 uses
  %i.ck = add nuw nsw i64 %.sroa.0157.0386, 1     ; 2 uses
  %i.cl = call fastcc noundef i32 @_RNvMsn_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_11MatchStatesINtNtCscdodAO9FK5_5alloc3vec3VecmEE14match_state_idB9_(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(800) %0, i64 noundef %.sroa.0157.0386)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.cm = load i32, ptr %i.ch, align 8, !noundef !4
  %i.cn = and i32 %i.cm, 8388608
  %i.co = icmp eq i32 %i.cn, 0
  %i.cp = zext nneg i32 %i.cl to i64
  %i.cq = select i1 %i.co, i64 %i.ad, i64 0
  %storemerge = lshr i64 %i.cp, %i.cq
  store i64 %storemerge, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.k, ptr %i.j, align 8
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.4162.0..sroa_idx, align 8
  %i.cr = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.cs = load ptr, ptr %i.u, align 8, !nonnull !4, !align !9, !noundef !4
  %i.ct = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.cr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cs, ptr noundef nonnull @201, ptr noundef nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br i1 %i.ct, label %.loopexit340, label %bb.u

bb.q:                                             ; preds = %.loopexit339
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 %i.br, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.e, ptr %i.d, align 8
  %.sroa.4234.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.4234.0..sroa_idx, align 8
  %i.cu = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.cv = load ptr, ptr %i.u, align 8, !nonnull !4, !align !9, !noundef !4
  %i.cw = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.cu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cv, ptr noundef nonnull @198, ptr noundef nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br i1 %i.cw, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 792
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.cx, ptr %i.c, align 8
  %.sroa.4250.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXsL_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB5_5FlagsNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.4250.0..sroa_idx, align 8
  %i.cy = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.cz = load ptr, ptr %i.u, align 8, !nonnull !4, !align !9, !noundef !4
  %i.da = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.cy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cz, ptr noundef nonnull @199, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.da, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.db = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.dc = load ptr, ptr %i.u, align 8, !nonnull !4, !align !9, !noundef !4
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  %i.de = load ptr, ptr %i.dd, align 8, !invariant.load !4, !nonnull !4
  %i.df = call noundef zeroext i1 %i.de(ptr noundef nonnull %i.db, ptr noalias noundef nonnull readonly captures(address, read_provenance) @200, i64 noundef 2)
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.q, %.loopexit339, %bb.s, %bb.m, %._crit_edge, %bb.a, %.loopexit340, %.loopexit342, %.loopexit341
  %.sroa.0.0 = phi i1 [ %i.df, %bb.s ], [ true, %.loopexit342 ], [ true, %bb.a ], [ true, %.loopexit341 ], [ true, %._crit_edge ], [ true, %.loopexit340 ], [ true, %bb.m ], [ true, %.loopexit339 ], [ true, %bb.q ], [ true, %bb.r ]
  ret i1 %.sroa.0.0

bb.u:                                             ; preds = %bb.p
  %2 = shl nuw i64 %.sroa.0157.0386, 1            ; 2 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %.val281, i64 %2
  %i.dh = load i32, ptr %i.dg, align 4, !noundef !4
  %i.di = zext i32 %i.dh to i64                   ; 3 uses
  %i.dj = or disjoint i64 %2, 1                   ; 3 uses
  %i.dk = icmp ult i64 %i.dj, %.val282
  br i1 %i.dk, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %.val281, i64 %i.dj
  %i.dm = load i32, ptr %i.dl, align 4, !noundef !4 ; 3 uses
  %i.dn = zext i32 %i.dm to i64                   ; 2 uses
  %i.do = add nuw nsw i64 %i.dn, %i.di            ; 2 uses
  %.not.i = icmp ugt i64 %i.do, %.val284
  br i1 %.not.i, label %bb.x, label %_RNvMsn_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_11MatchStatesINtNtCscdodAO9FK5_5alloc3vec3VecmEE16pattern_id_sliceB9_.exit, !prof !15

bb.w:                                             ; preds = %bb.u
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.dj, i64 noundef %.val282, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #18
  unreachable

bb.x:                                             ; preds = %bb.v
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.di, i64 noundef %i.do, i64 noundef %.val284, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @150) #18
  unreachable

_RNvMsn_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_11MatchStatesINtNtCscdodAO9FK5_5alloc3vec3VecmEE16pattern_id_sliceB9_.exit: ; preds = %bb.v
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %.val283, i64 %i.di ; 3 uses
  %.idx = shl nuw nsw i64 %i.dn, 2
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 %.idx
  %i.dr = icmp eq i32 %i.dm, 0
  br i1 %i.dr, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives9PatternIDEENtNtNtB8_6traits8iterator8Iterator4nextB1D_.exit.thread, label %bb.y

bb.y:                                             ; preds = %_RNvMsn_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_11MatchStatesINtNtCscdodAO9FK5_5alloc3vec3VecmEE16pattern_id_sliceB9_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.ds = load i32, ptr %i.dp, align 4, !noundef !4
  store i32 %i.ds, ptr %i.i, align 4
  %.pre434 = load ptr, ptr %i.u, align 8
  %.pre433 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.i, ptr %i.h, align 8
  store ptr @_RNvXs11_NtNtCs98D8VPWzHuM_14regex_automata4util10primitivesNtB6_9PatternIDNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.4190.0..sroa_idx, align 8
  %i.dt = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %.pre433, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.pre434, ptr noundef nonnull @203, ptr noundef nonnull %i.h)
  br i1 %i.dt, label %.loopexit426, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.du = icmp eq i32 %i.dm, 1
  br i1 %i.du, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives9PatternIDEENtNtNtB8_6traits8iterator8Iterator4nextB1D_.exit.thread, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives9PatternIDEENtNtNtB8_6traits8iterator8Iterator4nextB1D_.exit.peel.next.preheader

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives9PatternIDEENtNtNtB8_6traits8iterator8Iterator4nextB1D_.exit.peel.next.preheader: ; preds = %bb.z
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dp, i64 4
  br label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives9PatternIDEENtNtNtB8_6traits8iterator8Iterator4nextB1D_.exit.peel.next

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives9PatternIDEENtNtNtB8_6traits8iterator8Iterator4nextB1D_.exit.thread: ; preds = %bb.ac, %bb.z, %_RNvMsn_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_11MatchStatesINtNtCscdodAO9FK5_5alloc3vec3VecmEE16pattern_id_sliceB9_.exit
  %i.dw = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.dx = load ptr, ptr %i.u, align 8, !nonnull !4, !align !9, !noundef !4
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  %i.dz = load ptr, ptr %i.dy, align 8, !invariant.load !4, !nonnull !4
  %i.ea = call noundef zeroext i1 %i.dz(ptr noundef nonnull %i.dw, ptr noalias noundef nonnull readonly captures(address, read_provenance) @196, i64 noundef 1)
  br i1 %i.ea, label %.loopexit340, label %bb.aa

bb.aa:                                            ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives9PatternIDEENtNtNtB8_6traits8iterator8Iterator4nextB1D_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %exitcond429.not = icmp eq i64 %i.ck, %i.cg
  br i1 %exitcond429.not, label %.loopexit339, label %bb.p

.loopexit340:                                     ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives9PatternIDEENtNtNtB8_6traits8iterator8Iterator4nextB1D_.exit.thread, %bb.p, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.t

bb.ab:                                            ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives9PatternIDEENtNtNtB8_6traits8iterator8Iterator4nextB1D_.exit.peel.next
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.i, ptr %i.h, align 8
  store ptr @_RNvXs11_NtNtCs98D8VPWzHuM_14regex_automata4util10primitivesNtB6_9PatternIDNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.4190.0..sroa_idx, align 8
  %i.eb = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.ec = load ptr, ptr %i.u, align 8, !nonnull !4, !align !9, !noundef !4
  %i.ed = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.eb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ec, ptr noundef nonnull @203, ptr noundef nonnull %i.h)
  br i1 %i.ed, label %.loopexit426, label %bb.ac

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives9PatternIDEENtNtNtB8_6traits8iterator8Iterator4nextB1D_.exit.peel.next: ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives9PatternIDEENtNtNtB8_6traits8iterator8Iterator4nextB1D_.exit.peel.next.preheader, %bb.ac
  %.sroa.0315.0384 = phi ptr [ %i.ee, %bb.ac ], [ %i.dv, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives9PatternIDEENtNtNtB8_6traits8iterator8Iterator4nextB1D_.exit.peel.next.preheader ] ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.0315.0384, i64 4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.ef = load i32, ptr %.sroa.0315.0384, align 4, !noundef !4
  store i32 %i.ef, ptr %i.i, align 4
  %i.eg = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.eh = load ptr, ptr %i.u, align 8, !nonnull !4, !align !9, !noundef !4
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 24
  %i.ej = load ptr, ptr %i.ei, align 8, !invariant.load !4, !nonnull !4
  %i.ek = call noundef zeroext i1 %i.ej(ptr noundef nonnull %i.eg, ptr noalias noundef nonnull readonly captures(address, read_provenance) @202, i64 noundef 2)
  br i1 %i.ek, label %.loopexit, label %bb.ab

.loopexit426:                                     ; preds = %bb.y, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %.loopexit

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.el = icmp eq ptr %i.ee, %i.dq
  br i1 %i.el, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives9PatternIDEENtNtNtB8_6traits8iterator8Iterator4nextB1D_.exit.thread, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives9PatternIDEENtNtNtB8_6traits8iterator8Iterator4nextB1D_.exit.peel.next, !llvm.loop !774

.loopexit:                                        ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives9PatternIDEENtNtNtB8_6traits8iterator8Iterator4nextB1D_.exit.peel.next, %.loopexit426
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %.loopexit340

bb.ad:                                            ; preds = %bb.j
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %.val291, i64 %.sroa.17309.0380
  %i.en = load i32, ptr %i.em, align 4, !noalias !778, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i8 %switch.idx.cast.i.i, ptr %i.p, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.eo = load i32, ptr %i.bg, align 8, !noundef !4
  %i.ep = and i32 %i.eo, 8388608
  %i.eq = icmp eq i32 %i.ep, 0
  %i.er = zext i32 %i.en to i64
  %i.es = select i1 %i.eq, i64 %i.ad, i64 0
  %storemerge278.jt1 = lshr i64 %i.er, %i.es
  store i64 %storemerge278.jt1, ptr %i.o, align 8
  %i.et = icmp eq i64 %i.bj, 0
  br i1 %i.et, label %bb.aj, label %bb.ai

bb.ae:                                            ; preds = %switch.lookup.i.i
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %.val291, i64 %.sroa.17309.0380
  %i.ev = load i32, ptr %i.eu, align 4, !noalias !778, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i8 %switch.idx.cast.i.i, ptr %i.p, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.ew = load i32, ptr %i.bg, align 8, !noundef !4
  %i.ex = and i32 %i.ew, 8388608
  %i.ey = icmp eq i32 %i.ex, 0
  %i.ez = zext i32 %i.ev to i64
  %i.fa = select i1 %i.ey, i64 %i.ad, i64 0
  %storemerge278.jt0 = lshr i64 %i.ez, %i.fa
  store i64 %storemerge278.jt0, ptr %i.o, align 8
  %i.fb = icmp eq i64 %i.bj, 0
  br i1 %i.fb, label %bb.ah, label %bb.ai

bb.af:                                            ; preds = %bb.k
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %.val291, i64 %.sroa.17309.0380
  %i.fd = load i32, ptr %i.fc, align 4, !noalias !778, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i8 %switch.idx.cast.i.i, ptr %i.p, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.fe = load i32, ptr %i.bg, align 8, !noundef !4
  %i.ff = and i32 %i.fe, 8388608
  %i.fg = icmp eq i32 %i.ff, 0
  %i.fh = zext i32 %i.fd to i64
  %i.fi = select i1 %i.fg, i64 %i.ad, i64 0
  %storemerge278.jt2 = lshr i64 %i.fh, %i.fi
  store i64 %storemerge278.jt2, ptr %i.o, align 8
  %i.fj = icmp eq i64 %i.bj, 0
  br i1 %i.fj, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.fk = trunc nuw nsw i64 %i.bo to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i32 %i.fk, ptr %i.n, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr %i.n, ptr %i.m, align 8
  store ptr @_RNvXs11_NtNtCs98D8VPWzHuM_14regex_automata4util10primitivesNtB6_9PatternIDNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.488.0..sroa_idx, align 8
  %i.fl = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.fm = load ptr, ptr %i.u, align 8, !nonnull !4, !align !9, !noundef !4
  %i.fn = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.fl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.fm, ptr noundef nonnull @206, ptr noundef nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br i1 %i.fn, label %.loopexit341, label %bb.ai

bb.ah:                                            ; preds = %bb.ae
  %i.fo = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.fp = load ptr, ptr %i.u, align 8, !nonnull !4, !align !9, !noundef !4
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 24
  %i.fr = load ptr, ptr %i.fq, align 8, !invariant.load !4, !nonnull !4
  %i.fs = call noundef zeroext i1 %i.fr(ptr noundef nonnull %i.fo, ptr noalias noundef nonnull readonly captures(address, read_provenance) @204, i64 noundef 24)
  br i1 %i.fs, label %.loopexit341, label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ad, %bb.ae, %bb.af, %bb.aj, %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %i.p, ptr %i.l, align 8
  store ptr @_RNvXs8_NtNtCs98D8VPWzHuM_14regex_automata4util5startNtB5_5StartNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.4128.0..sroa_idx, align 8
  store ptr %i.o, ptr %i.bh, align 8
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.4132.0..sroa_idx, align 8
  %i.ft = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.fu = load ptr, ptr %i.u, align 8, !nonnull !4, !align !9, !noundef !4
  %i.fv = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.ft, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.fu, ptr noundef nonnull @207, ptr noundef nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br i1 %i.fv, label %.loopexit341, label %bb.ak

bb.aj:                                            ; preds = %bb.ad
  %i.fw = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.fx = load ptr, ptr %i.u, align 8, !nonnull !4, !align !9, !noundef !4
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 24
  %i.fz = load ptr, ptr %i.fy, align 8, !invariant.load !4, !nonnull !4
  %i.ga = call noundef zeroext i1 %i.fz(ptr noundef nonnull %i.fw, ptr noalias noundef nonnull readonly captures(address, read_provenance) @205, i64 noundef 22)
  br i1 %i.ga, label %.loopexit341, label %bb.ai

.loopexit341:                                     ; preds = %bb.ai, %bb.aj, %bb.ah, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.t

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %exitcond.not = icmp eq i64 %i.bi, %.val292
  br i1 %exitcond.not, label %._crit_edge383, label %.lr.ph382.split

bb.al:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.gb = load i32, ptr %i.al, align 8, !noundef !4
  %i.gc = and i32 %i.gb, 8388608
  %i.gd = icmp eq i32 %i.gc, 0
  %i.ge = select i1 %i.gd, i64 %i.ad, i64 0
  %storemerge279 = lshr i64 %i.aq, %i.ge
  store i64 %storemerge279, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store ptr %i.r, ptr %i.q, align 8
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.443.0..sroa_idx, align 8
  %i.gf = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.gg = load ptr, ptr %i.u, align 8, !nonnull !4, !align !9, !noundef !4
  %i.gh = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.gf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.gg, ptr noundef nonnull @208, ptr noundef nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br i1 %i.gh, label %.loopexit343, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gi = call noundef zeroext i1 @_RNvXsr_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB5_5StateNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.s, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.gi, label %.loopexit343, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gj = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.gk = load ptr, ptr %i.u, align 8, !nonnull !4, !align !9, !noundef !4
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 24
  %i.gm = load ptr, ptr %i.gl, align 8, !invariant.load !4, !nonnull !4
  %i.gn = call noundef zeroext i1 %i.gm(ptr noundef nonnull %i.gj, ptr noalias noundef nonnull readonly captures(address, read_provenance) @196, i64 noundef 1)
  br i1 %i.gn, label %.loopexit343, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %.not = icmp ugt i64 %.sroa.8.0377, %i.ae
  br i1 %.not, label %bb.c, label %._crit_edge.loopexit

.loopexit343:                                     ; preds = %bb.an, %bb.am, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %.loopexit342

.loopexit342:                                     ; preds = %bb.f, %.loopexit343
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.t
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsf_NtCs4NRVxsYgnAr_4core3fmtbNtB5_5Debug3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXsg_NtCs4NRVxsYgnAr_4core3fmtbNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsk_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB5_14StartStateIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 4 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(328) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 320 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !align !13, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.g = load i64, ptr %i.f, align 8, !noundef !4
  %.not = icmp ult i64 %i.c, %i.g
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = add nuw i64 %i.c, 1
  store i64 %i.h, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.j = load i64, ptr %i.i, align 8, !noundef !4 ; 5 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  store i32 -1, ptr %0, align 4
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  %i.l = urem i64 %i.c, %i.j                      ; 2 uses
  %i.m = icmp ult i64 %i.l, 6
  br i1 %i.m, label %switch.lookup, label %bb.f, !prof !22

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @211) #18
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @213) #18
  unreachable

switch.lookup:                                    ; preds = %bb.d
  %switch.idx.cast = trunc nuw i64 %i.l to i8
  %i.n = icmp ult i64 %i.c, %i.j
  br i1 %i.n, label %bb.j, label %bb.g

bb.g:                                             ; preds = %switch.lookup
  %i.o = shl i64 %i.j, 1                          ; 2 uses
  %i.p = icmp ult i64 %i.c, %i.o
  br i1 %i.p, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = sub nuw i64 %i.c, %i.o
  %i.r = udiv i64 %i.q, %i.j                      ; 3 uses
  %i.s = icmp ugt i64 %i.r, 2147483646
  br i1 %i.s, label %bb.i, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives9PatternIDNtBJ_14PatternIDErrorE6unwrapBN_.exit

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !783
  store i64 %i.r, ptr %i.a, align 8, !noalias !783
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @212) #18, !noalias !783
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives9PatternIDNtBJ_14PatternIDErrorE6unwrapBN_.exit: ; preds = %bb.h
  %i.t = trunc nuw nsw i64 %i.r to i32
  br label %bb.j

bb.j:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives9PatternIDNtBJ_14PatternIDErrorE6unwrapBN_.exit, %switch.lookup, %bb.g
  %.sroa.4.0 = phi i32 [ %i.t, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives9PatternIDNtBJ_14PatternIDErrorE6unwrapBN_.exit ], [ undef, %switch.lookup ], [ undef, %bb.g ]
  %.sroa.01.0 = phi i32 [ 2, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives9PatternIDNtBJ_14PatternIDErrorE6unwrapBN_.exit ], [ 0, %switch.lookup ], [ 1, %bb.g ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.c
  %i.v = load i32, ptr %i.u, align 4, !noundef !4
  store i32 %.sroa.01.0, ptr %0, align 4
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.4.0, ptr %.sroa.43.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.v, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %switch.idx.cast, ptr %.sroa.6.0..sroa_idx, align 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_9StateIterINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !794, !noalias !795, !noundef !4 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !794, !noalias !795, !noundef !4
  %.sroa.0.0.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.f, i64 range(i64 1, 0) %i.b) ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !alias.scope !794, !noalias !795, !nonnull !4, !align !13, !noundef !4
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.sroa.0.0.i.i.i
  %i.i = sub nuw nsw i64 %i.b, %.sroa.0.0.i.i.i
  store ptr %i.h, ptr %i.d, align 8, !alias.scope !794, !noalias !795
  store i64 %i.i, ptr %i.a, align 8, !alias.scope !794, !noalias !795
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !796, !noalias !795, !noundef !4 ; 2 uses
  %i.l = add i64 %i.k, 1
  store i64 %i.l, ptr %i.j, align 8, !alias.scope !796, !noalias !795
  %i.m = load ptr, ptr %1, align 8, !nonnull !4, !align !9, !noundef !4 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 280
  %i.o = load i64, ptr %i.n, align 8, !noundef !4 ; 2 uses
  %i.p = and i64 %i.o, 63                         ; 2 uses
  %i.q = shl i64 %i.k, %i.p                       ; 2 uses
  %i.r = trunc i64 %i.q to i32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !797)
  %i.s = and i64 %i.q, 4294967295                 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.val1.i.i = load i64, ptr %i.t, align 8, !alias.scope !798, !noalias !799, !noundef !4 ; 3 uses
  %i.u = icmp ugt i64 %.val1.i.i, %i.s
  br i1 %i.u, label %_RNvMse_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_15TransitionTableINtNtCscdodAO9FK5_5alloc3vec3VecmEE8is_validB9_.exit.i, label %_RNvMse_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_15TransitionTableINtNtCscdodAO9FK5_5alloc3vec3VecmEE8is_validB9_.exit.thread.i, !prof !18

_RNvMse_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_15TransitionTableINtNtCscdodAO9FK5_5alloc3vec3VecmEE8is_validB9_.exit.i: ; preds = %bb.b
  %notmask.i.i = shl nsw i64 -1, %i.p
  %i.v = xor i64 %notmask.i.i, -1
  %i.w = and i64 %i.s, %i.v
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.c, label %_RNvMse_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_15TransitionTableINtNtCscdodAO9FK5_5alloc3vec3VecmEE8is_validB9_.exit.thread.i, !prof !19

_RNvMse_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_15TransitionTableINtNtCscdodAO9FK5_5alloc3vec3VecmEE8is_validB9_.exit.thread.i: ; preds = %_RNvMse_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_15TransitionTableINtNtCscdodAO9FK5_5alloc3vec3VecmEE8is_validB9_.exit.i, %bb.b
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @89, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @90) #18, !noalias !800
  unreachable

bb.c:                                             ; preds = %_RNvMse_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_15TransitionTableINtNtCscdodAO9FK5_5alloc3vec3VecmEE8is_validB9_.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 279
  %i.z = load i8, ptr %i.y, align 1, !alias.scope !797, !noalias !799, !noundef !4
  %i.aa = zext i8 %i.z to i64
  %i.ab = add nuw nsw i64 %i.aa, 2                ; 2 uses
  %i.ac = add nuw nsw i64 %i.ab, %i.s             ; 2 uses
  %.not.i = icmp ugt i64 %i.ac, %.val1.i.i
  br i1 %.not.i, label %bb.d, label %_RNvMse_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_15TransitionTableINtNtCscdodAO9FK5_5alloc3vec3VecmEE5stateB9_.exit, !prof !15

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.s, i64 noundef %i.ac, i64 noundef %.val1.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @91) #18, !noalias !800
  unreachable

_RNvMse_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_15TransitionTableINtNtCscdodAO9FK5_5alloc3vec3VecmEE5stateB9_.exit: ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.val.i = load ptr, ptr %i.ad, align 8, !alias.scope !797, !noalias !799, !nonnull !4, !noundef !4
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.s
  store ptr %i.ae, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ab, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.o, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.63.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.r, ptr %.sroa.63.0..sroa_idx, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_RNvMse_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_15TransitionTableINtNtCscdodAO9FK5_5alloc3vec3VecmEE5stateB9_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsr_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB5_5StateNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [48 x i8], align 8                ; 9 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [8 x i8], align 8                 ; 6 uses
  %i.e = alloca [4 x i8], align 4                 ; 8 uses
  %i.f = alloca [4 x i8], align 4                 ; 9 uses
  %i.g = load ptr, ptr %0, align 8, !nonnull !4, !align !13, !noundef !4 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !noundef !4 ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.i ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load i32, ptr %i.k, align 8
  %i.m = and i32 %i.l, 8388608
  %i.n = icmp eq i32 %i.m, 0
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load i64, ptr %i.o, align 8
  %i.q = and i64 %i.p, 63
  %i.r = select i1 %i.n, i64 %i.q, i64 0
  %i.s = load ptr, ptr %1, align 8, !nonnull !4   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !4, !align !9 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %.sroa.447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  br label %bb.b

bb.b:                                             ; preds = %bb.q, %bb.a
  %.sroa.16.sroa.0.sroa.10.sroa.0.0 = phi i24 [ undef, %bb.a ], [ %.sroa.16.sroa.0.sroa.10.sroa.0.4, %bb.q ] ; 2 uses
  %.sroa.16.sroa.0.sroa.0.0 = phi i8 [ 2, %bb.a ], [ %.sroa.16.sroa.0.sroa.0.4, %bb.q ] ; 2 uses
  %.sroa.16.sroa.10.sroa.8.0 = phi i24 [ undef, %bb.a ], [ %.sroa.16.sroa.10.sroa.8.4, %bb.q ] ; 2 uses
  %.sroa.16.sroa.10.sroa.0.0 = phi i8 [ undef, %bb.a ], [ %.sroa.16.sroa.10.sroa.0.4, %bb.q ] ; 2 uses
  %.sroa.27.0 = phi i32 [ undef, %bb.a ], [ %.sroa.27.4, %bb.q ] ; 3 uses
  %.sroa.11.0 = phi i64 [ 0, %bb.a ], [ %.sroa.11.2, %bb.q ] ; 2 uses
  %.sroa.6.0 = phi ptr [ %i.g, %bb.a ], [ %.sroa.6.2, %bb.q ] ; 2 uses
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %i.ay, %bb.q ] ; 2 uses
  %i.ad = icmp eq ptr %.sroa.6.0, %i.j
  br i1 %i.ad, label %_RNvXss_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB5_19StateTransitionIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.backedge.i
  %.sroa.16.sroa.0.sroa.10.sroa.0.1 = phi i24 [ %.sroa.16.sroa.0.sroa.10.sroa.0.2, %.backedge.i ], [ %.sroa.16.sroa.0.sroa.10.sroa.0.0, %bb.b ] ; 3 uses
  %.sroa.16.sroa.0.sroa.0.1 = phi i8 [ %.sroa.16.sroa.0.sroa.0.2, %.backedge.i ], [ %.sroa.16.sroa.0.sroa.0.0, %bb.b ] ; 4 uses
  %.sroa.16.sroa.10.sroa.8.1 = phi i24 [ %.sroa.454.0.extract.trunc.i, %.backedge.i ], [ %.sroa.16.sroa.10.sroa.8.0, %bb.b ] ; 2 uses
  %.sroa.16.sroa.10.sroa.0.1 = phi i8 [ %.sroa.16.sroa.10.sroa.0.2, %.backedge.i ], [ %.sroa.16.sroa.10.sroa.0.0, %bb.b ] ; 2 uses
  %.sroa.27.1 = phi i32 [ %.sroa.27.2, %.backedge.i ], [ %.sroa.27.0, %bb.b ] ; 2 uses
  %i.ae = phi i32 [ %i.at, %.backedge.i ], [ %.sroa.27.0, %bb.b ] ; 4 uses
  %i.af = phi i64 [ %i.ai, %.backedge.i ], [ %.sroa.11.0, %bb.b ] ; 4 uses
  %i.ag = phi ptr [ %i.ah, %.backedge.i ], [ %.sroa.6.0, %bb.b ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4 ; 4 uses
  %i.ai = add i64 %i.af, 1                        ; 5 uses
  %.val7.i.i = load i32, ptr %i.ag, align 4, !noalias !808, !noundef !4 ; 6 uses
  %i.aj = icmp eq i64 %i.ai, %i.i
  br i1 %i.aj, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.ak = icmp ugt i64 %i.af, 255
  br i1 %i.ak, label %bb.d, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6expectCs98D8VPWzHuM_14regex_automata.exit.i.i.i, !prof !15

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !808
  store i8 2, ptr %i.a, align 1, !noalias !808
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 35, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @16, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #18, !noalias !808
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6expectCs98D8VPWzHuM_14regex_automata.exit.i.i.i: ; preds = %bb.c
  %.sroa.4.0.insert.ext.i.i.i = trunc nuw nsw i64 %i.af to i32
  %.sroa.4.0.insert.shift.i.i.i = shl nuw nsw i32 %.sroa.4.0.insert.ext.i.i.i, 8
  br label %_RNvXss_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB5_19StateTransitionIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.i

bb.e:                                             ; preds = %.lr.ph.i
  %i.al = call i32 @_RNvMNtNtCs98D8VPWzHuM_14regex_automata4util8alphabetNtB2_4Unit3eoi(i64 noundef %i.af), !noalias !808
  br label %_RNvXss_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB5_19StateTransitionIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.i

_RNvXss_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB5_19StateTransitionIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.i: ; preds = %bb.e, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6expectCs98D8VPWzHuM_14regex_automata.exit.i.i.i
  %.sroa.01.0.i.i.i = phi i32 [ %i.al, %bb.e ], [ %.sroa.4.0.insert.shift.i.i.i, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6expectCs98D8VPWzHuM_14regex_automata.exit.i.i.i ] ; 5 uses
  %i.am = lshr i32 %.sroa.01.0.i.i.i, 8
  %.sroa.454.0.extract.trunc.i = trunc nuw i32 %i.am to i24 ; 6 uses
  %i.an = and i32 %.sroa.01.0.i.i.i, 255
  %.not.i69 = icmp eq i32 %i.an, 2
  br i1 %.not.i69, label %_RNvXss_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB5_19StateTransitionIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread.i, label %bb.f

bb.f:                                             ; preds = %_RNvXss_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB5_19StateTransitionIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.i
  %.not63.i = icmp eq i8 %.sroa.16.sroa.0.sroa.0.1, 2
  br i1 %.not63.i, label %bb.h, label %bb.g

_RNvXss_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB5_19StateTransitionIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread.i: ; preds = %.backedge.i, %_RNvXss_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB5_19StateTransitionIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.i, %bb.b
  %.sroa.16.sroa.0.sroa.10.sroa.0.3 = phi i24 [ %.sroa.16.sroa.0.sroa.10.sroa.0.0, %bb.b ], [ %.sroa.16.sroa.0.sroa.10.sroa.0.2, %.backedge.i ], [ %.sroa.16.sroa.0.sroa.10.sroa.0.1, %_RNvXss_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB5_19StateTransitionIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.i ] ; 2 uses
  %.sroa.16.sroa.0.sroa.0.3 = phi i8 [ %.sroa.16.sroa.0.sroa.0.0, %bb.b ], [ %.sroa.16.sroa.0.sroa.0.2, %.backedge.i ], [ %.sroa.16.sroa.0.sroa.0.1, %_RNvXss_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB5_19StateTransitionIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.i ] ; 2 uses
  %.sroa.16.sroa.10.sroa.8.3 = phi i24 [ %.sroa.16.sroa.10.sroa.8.0, %bb.b ], [ %.sroa.454.0.extract.trunc.i, %.backedge.i ], [ %.sroa.16.sroa.10.sroa.8.1, %_RNvXss_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB5_19StateTransitionIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.i ] ; 2 uses
  %.sroa.16.sroa.10.sroa.0.3 = phi i8 [ %.sroa.16.sroa.10.sroa.0.0, %bb.b ], [ %.sroa.16.sroa.10.sroa.0.2, %.backedge.i ], [ %.sroa.16.sroa.10.sroa.0.1, %_RNvXss_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB5_19StateTransitionIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.i ] ; 2 uses
  %.sroa.27.3 = phi i32 [ %.sroa.27.0, %bb.b ], [ %.sroa.27.2, %.backedge.i ], [ %.sroa.27.1, %_RNvXss_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB5_19StateTransitionIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.i ] ; 3 uses
  %.sroa.11.1 = phi i64 [ %.sroa.11.0, %bb.b ], [ %i.ai, %_RNvXss_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB5_19StateTransitionIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.i ], [ %i.ai, %.backedge.i ]
  %.sroa.6.1 = phi ptr [ %i.j, %bb.b ], [ %i.j, %.backedge.i ], [ %i.ah, %_RNvXss_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB5_19StateTransitionIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.i ]
  %.sroa.16.sroa.0.sroa.10.0.insert.ext95 = zext i24 %.sroa.16.sroa.0.sroa.10.sroa.0.3 to i64
  %.sroa.16.sroa.0.sroa.10.0.insert.shift96 = shl nuw nsw i64 %.sroa.16.sroa.0.sroa.10.0.insert.ext95, 8
  %.sroa.16.sroa.10.sroa.8.0.insert.ext83 = zext i24 %.sroa.16.sroa.10.sroa.8.3 to i64
  %.sroa.16.sroa.10.sroa.0.0.insert.ext79 = zext i8 %.sroa.16.sroa.10.sroa.0.3 to i64
  %i.ao = shl nuw i64 %.sroa.16.sroa.10.sroa.8.0.insert.ext83, 40
  %i.ap = shl nuw nsw i64 %.sroa.16.sroa.10.sroa.0.0.insert.ext79, 32
  %.sroa.16.sroa.10.0.insert.shift76 = or disjoint i64 %i.ap, %i.ao
  %.sroa.16.sroa.0.0.insert.insert74 = or disjoint i64 %.sroa.16.sroa.10.0.insert.shift76, %.sroa.16.sroa.0.sroa.10.0.insert.shift96
  %.not61.i = icmp eq i8 %.sroa.16.sroa.0.sroa.0.3, 2
  %.not62.i = icmp eq i32 %.sroa.27.3, 0
  %or.cond66.i = select i1 %.not61.i, i1 true, i1 %.not62.i
  %i.aq = zext i8 %.sroa.16.sroa.0.sroa.0.3 to i64
  %.sroa.0104.0.insert.ext = select i1 %or.cond66.i, i64 2, i64 %i.aq
  %.sroa.0104.0.insert.insert = or disjoint i64 %.sroa.16.sroa.0.0.insert.insert74, %.sroa.0104.0.insert.ext
  br label %_RNvXst_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB5_25StateSparseTransitionIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit

bb.g:                                             ; preds = %bb.f
  %i.ar = icmp ne i32 %i.ae, %.val7.i.i
  %i.as = trunc i32 %.sroa.01.0.i.i.i to i1
  %or.cond.i = or i1 %i.ar, %i.as
  br i1 %or.cond.i, label %bb.i, label %.backedge.i

bb.h:                                             ; preds = %bb.f
  %.sroa.16.sroa.0.sroa.0.0.extract.trunc89 = trunc i32 %.sroa.01.0.i.i.i to i8 ; 2 uses
  br label %.backedge.i

.backedge.i:                                      ; preds = %bb.g, %bb.i, %bb.h
  %.sroa.16.sroa.0.sroa.10.sroa.0.2 = phi i24 [ %.sroa.454.0.extract.trunc.i, %bb.h ], [ %.sroa.454.0.extract.trunc.i, %bb.i ], [ %.sroa.16.sroa.0.sroa.10.sroa.0.1, %bb.g ] ; 2 uses
  %.sroa.16.sroa.0.sroa.0.2 = phi i8 [ %.sroa.16.sroa.0.sroa.0.0.extract.trunc89, %bb.h ], [ %.sroa.16.sroa.0.sroa.0.0.extract.trunc, %bb.i ], [ %.sroa.16.sroa.0.sroa.0.1, %bb.g ] ; 2 uses
  %.sroa.16.sroa.10.sroa.0.2 = phi i8 [ %.sroa.16.sroa.0.sroa.0.0.extract.trunc89, %bb.h ], [ %.sroa.16.sroa.0.sroa.0.0.extract.trunc, %bb.i ], [ 0, %bb.g ] ; 2 uses
  %.sroa.27.2 = phi i32 [ %.val7.i.i, %bb.h ], [ %.val7.i.i, %bb.i ], [ %.sroa.27.1, %bb.g ] ; 2 uses
  %i.at = phi i32 [ %.val7.i.i, %bb.h ], [ %.val7.i.i, %bb.i ], [ %i.ae, %bb.g ]
  %i.au = icmp eq ptr %i.ah, %i.j
  br i1 %i.au, label %_RNvXss_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB5_19StateTransitionIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread.i, label %.lr.ph.i

bb.i:                                             ; preds = %bb.g
  %.sroa.16.sroa.0.sroa.0.0.extract.trunc = trunc i32 %.sroa.01.0.i.i.i to i8 ; 4 uses
  %.not64.i = icmp eq i32 %i.ae, 0
  br i1 %.not64.i, label %.backedge.i, label %_RNvXst_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB5_25StateSparseTransitionIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.loopexit

_RNvXst_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB5_25StateSparseTransitionIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.loopexit: ; preds = %bb.i
  %.sroa.16.sroa.0.sroa.10.0.insert.ext.le = zext i24 %.sroa.16.sroa.0.sroa.10.sroa.0.1 to i64
  %.sroa.16.sroa.0.sroa.10.0.insert.shift.le = shl nuw nsw i64 %.sroa.16.sroa.0.sroa.10.0.insert.ext.le, 8
  %.sroa.16.sroa.0.sroa.0.0.insert.ext.le = zext i8 %.sroa.16.sroa.0.sroa.0.1 to i64
  %.sroa.16.sroa.0.sroa.0.0.insert.insert.le = or disjoint i64 %.sroa.16.sroa.0.sroa.10.0.insert.shift.le, %.sroa.16.sroa.0.sroa.0.0.insert.ext.le
  %.sroa.16.sroa.10.sroa.8.0.insert.ext.le = zext i24 %.sroa.16.sroa.10.sroa.8.1 to i64
  %.sroa.16.sroa.10.sroa.0.0.insert.ext.le = zext i8 %.sroa.16.sroa.10.sroa.0.1 to i64
  %i.av = shl nuw i64 %.sroa.16.sroa.10.sroa.8.0.insert.ext.le, 40
  %i.aw = shl nuw nsw i64 %.sroa.16.sroa.10.sroa.0.0.insert.ext.le, 32
  %.sroa.16.sroa.10.0.insert.shift.le = or disjoint i64 %i.aw, %i.av
  %.sroa.16.sroa.0.0.insert.insert.le = or disjoint i64 %.sroa.16.sroa.10.0.insert.shift.le, %.sroa.16.sroa.0.sroa.0.0.insert.insert.le
  br label %_RNvXst_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB5_25StateSparseTransitionIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit

_RNvXst_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB5_25StateSparseTransitionIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit: ; preds = %_RNvXst_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB5_25StateSparseTransitionIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.loopexit, %_RNvXss_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB5_19StateTransitionIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread.i
  %.sroa.0104.0 = phi i64 [ %.sroa.0104.0.insert.insert, %_RNvXss_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB5_19StateTransitionIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread.i ], [ %.sroa.16.sroa.0.0.insert.insert.le, %_RNvXst_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB5_25StateSparseTransitionIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.loopexit ] ; 4 uses
  %.sroa.16.sroa.0.sroa.10.sroa.0.4 = phi i24 [ %.sroa.16.sroa.0.sroa.10.sroa.0.3, %_RNvXss_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB5_19StateTransitionIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread.i ], [ %.sroa.454.0.extract.trunc.i, %_RNvXst_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB5_25StateSparseTransitionIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.loopexit ]
  %.sroa.16.sroa.0.sroa.0.4 = phi i8 [ 2, %_RNvXss_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB5_19StateTransitionIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread.i ], [ %.sroa.16.sroa.0.sroa.0.0.extract.trunc, %_RNvXst_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB5_25StateSparseTransitionIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.loopexit ]
  %.sroa.16.sroa.10.sroa.8.4 = phi i24 [ %.sroa.16.sroa.10.sroa.8.3, %_RNvXss_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB5_19StateTransitionIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread.i ], [ %.sroa.454.0.extract.trunc.i, %_RNvXst_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB5_25StateSparseTransitionIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.loopexit ]
  %.sroa.16.sroa.10.sroa.0.4 = phi i8 [ %.sroa.16.sroa.10.sroa.0.3, %_RNvXss_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB5_19StateTransitionIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread.i ], [ %.sroa.16.sroa.0.sroa.0.0.extract.trunc, %_RNvXst_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB5_25StateSparseTransitionIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.loopexit ]
  %.sroa.10109.0 = phi i32 [ %.sroa.27.3, %_RNvXss_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB5_19StateTransitionIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread.i ], [ %i.ae, %_RNvXst_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB5_25StateSparseTransitionIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.loopexit ]
  %.sroa.27.4 = phi i32 [ %.sroa.27.3, %_RNvXss_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB5_19StateTransitionIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread.i ], [ %.val7.i.i, %_RNvXst_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB5_25StateSparseTransitionIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.loopexit ]
  %.sroa.11.2 = phi i64 [ %.sroa.11.1, %_RNvXss_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB5_19StateTransitionIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread.i ], [ %i.ai, %_RNvXst_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB5_25StateSparseTransitionIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.loopexit ]
  %.sroa.6.2 = phi ptr [ %.sroa.6.1, %_RNvXss_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB5_19StateTransitionIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread.i ], [ %i.ah, %_RNvXst_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB5_25StateSparseTransitionIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.loopexit ]
  %i.ax = and i64 %.sroa.0104.0, 255
  %.not.i.not.not.not = icmp ne i64 %i.ax, 2      ; 2 uses
  br i1 %.not.i.not.not.not, label %bb.j, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense25StateSparseTransitionIterENtNtNtB8_6traits8iterator8Iterator4nextB1d_.exit.thread

bb.j:                                             ; preds = %_RNvXst_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB5_25StateSparseTransitionIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit
  %i.ay = add i64 %.sroa.0.0, 1
  %.sroa.0104.4.extract.shift = lshr i64 %.sroa.0104.0, 32 ; 2 uses
  %.sroa.0104.4.extract.trunc = trunc nuw i64 %.sroa.0104.4.extract.shift to i32
  %.sroa.0104.0.extract.trunc = trunc i64 %.sroa.0104.0 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i32 %.sroa.0104.0.extract.trunc, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i32 %.sroa.0104.4.extract.trunc, ptr %i.e, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.az = zext i32 %.sroa.10109.0 to i64
  %storemerge = lshr i64 %i.az, %i.r
  store i64 %storemerge, ptr %i.d, align 8
  %.not68 = icmp eq i64 %.sroa.0.0, 0
  %i.ba = trunc i64 %.sroa.0104.0 to i8
  %i.bb = trunc i64 %.sroa.0104.4.extract.shift to i8
  br i1 %.not68, label %bb.k, label %bb.l

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense25StateSparseTransitionIterENtNtNtB8_6traits8iterator8Iterator4nextB1d_.exit.thread: ; preds = %_RNvXst_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB5_25StateSparseTransitionIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit, %.loopexit
  ret i1 %.not.i.not.not.not

bb.k:                                             ; preds = %._crit_edge, %bb.j
  %i.bc = phi i8 [ %.pre151, %._crit_edge ], [ %i.bb, %bb.j ] ; 2 uses
  %i.bd = phi i8 [ %.pre, %._crit_edge ], [ %i.ba, %bb.j ]
  %i.be = icmp eq i8 %i.bd, %i.bc
  br i1 %i.be, label %bb.m, label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.bf = load ptr, ptr %i.v, align 8, !invariant.load !4, !nonnull !4
  %i.bg = call noundef zeroext i1 %i.bf(ptr noundef nonnull %i.s, ptr noalias noundef nonnull readonly captures(address, read_provenance) @202, i64 noundef 2)
  br i1 %i.bg, label %.loopexit, label %._crit_edge

._crit_edge:                                      ; preds = %bb.l
  %.pre = load i8, ptr %i.f, align 4, !range !7
  %.pre151 = load i8, ptr %i.e, align 4, !range !7
  br label %bb.k

bb.m:                                             ; preds = %bb.k
  %i.bh = trunc nuw i8 %i.bc to i1
  br i1 %i.bh, label %.split, label %bb.o

bb.n:                                             ; preds = %.split, %bb.k, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.f, ptr %i.b, align 8
  store ptr @_RNvXs_NtNtCs98D8VPWzHuM_14regex_automata4util8alphabetNtB4_4UnitNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.447.0..sroa_idx, align 8
  store ptr %i.e, ptr %i.aa, align 8
  store ptr @_RNvXs_NtNtCs98D8VPWzHuM_14regex_automata4util8alphabetNtB4_4UnitNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.451.0..sroa_idx, align 8
  store ptr %i.d, ptr %i.ab, align 8
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.455.0..sroa_idx, align 8
  %i.bi = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.s, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.u, ptr noundef nonnull @214, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.bi, label %.loopexit, label %bb.q

.split:                                           ; preds = %bb.m
  %i.bj = load i16, ptr %i.y, align 2, !noundef !4
  %i.bk = load i16, ptr %i.z, align 2, !noundef !4
  %i.bl = icmp eq i16 %i.bj, %i.bk
  br i1 %i.bl, label %bb.p, label %bb.n

bb.o:                                             ; preds = %bb.m
  %i.bm = load i8, ptr %i.w, align 1, !noundef !4
  %i.bn = load i8, ptr %i.x, align 1, !noundef !4
  %i.bo = icmp eq i8 %i.bm, %i.bn
  br i1 %i.bo, label %bb.p, label %bb.n

bb.p:                                             ; preds = %.split, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.f, ptr %i.c, align 8
  store ptr @_RNvXs_NtNtCs98D8VPWzHuM_14regex_automata4util8alphabetNtB4_4UnitNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.427.0..sroa_idx, align 8
  store ptr %i.d, ptr %i.ac, align 8
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.431.0..sroa_idx, align 8
  %i.bp = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.s, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.u, ptr noundef nonnull @215, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.bp, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.b

.loopexit:                                        ; preds = %bb.l, %bb.p, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense25StateSparseTransitionIterENtNtNtB8_6traits8iterator8Iterator4nextB1d_.exit.thread
}

; Function Attrs: nonlazybind uwtable
define i64 @_RNvXss_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB5_19StateTransitionIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = load ptr, ptr %0, align 8, !alias.scope !813, !nonnull !4, !noundef !4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !813, !nonnull !4, !noundef !4
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDEENtNtNtB8_6traits8iterator8Iterator4nextB1D_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store ptr %i.f, ptr %0, align 8, !alias.scope !813
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !814, !noundef !4 ; 4 uses
  %i.i = add i64 %i.h, 1                          ; 2 uses
  store i64 %i.i, ptr %i.g, align 8, !alias.scope !814
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load i64, ptr %i.j, align 8, !noundef !4
  %.val7 = load i32, ptr %i.b, align 4, !noundef !4
  %i.k = icmp eq i64 %i.i, %.val
  br i1 %i.k, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = icmp ugt i64 %i.h, 255
  br i1 %i.l, label %bb.d, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6expectCs98D8VPWzHuM_14regex_automata.exit.i, !prof !15

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 2, ptr %i.a, align 1
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 35, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @16, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #18
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6expectCs98D8VPWzHuM_14regex_automata.exit.i: ; preds = %bb.c
  %.sroa.4.0.insert.ext.i = trunc nuw nsw i64 %i.h to i32
  %.sroa.4.0.insert.shift.i = shl nuw nsw i32 %.sroa.4.0.insert.ext.i, 8
  br label %_RNCNvXss_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB7_19StateTransitionIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next0Bb_.exit

bb.e:                                             ; preds = %bb.b
  %i.m = tail call i32 @_RNvMNtNtCs98D8VPWzHuM_14regex_automata4util8alphabetNtB2_4Unit3eoi(i64 noundef %i.h)
  br label %_RNCNvXss_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB7_19StateTransitionIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next0Bb_.exit

_RNCNvXss_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB7_19StateTransitionIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next0Bb_.exit: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6expectCs98D8VPWzHuM_14regex_automata.exit.i, %bb.e
  %.sroa.01.0.i = phi i32 [ %i.m, %bb.e ], [ %.sroa.4.0.insert.shift.i, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6expectCs98D8VPWzHuM_14regex_automata.exit.i ]
  %.sroa.2.0.insert.ext.i = zext i32 %.val7 to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %.sroa.01.0.i to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  br label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDEENtNtNtB8_6traits8iterator8Iterator4nextB1D_.exit.thread

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDEENtNtNtB8_6traits8iterator8Iterator4nextB1D_.exit.thread: ; preds = %bb.a, %_RNCNvXss_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB7_19StateTransitionIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next0Bb_.exit
  %.sroa.0.0.insert.insert = phi i64 [ %.sroa.0.0.insert.insert.i, %_RNCNvXss_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB7_19StateTransitionIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next0Bb_.exit ], [ 2, %bb.a ]
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXst_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB5_25StateSparseTransitionIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr dead_on_unwind noalias nofree noundef writable sret([12 x i8]) align 4 captures(none) dereferenceable(12) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !821, !nonnull !4, !noundef !4 ; 2 uses
  %.promoted = load ptr, ptr %1, align 8, !alias.scope !821 ; 2 uses
  %i.d = icmp eq ptr %.promoted, %i.c
  br i1 %i.d, label %_RNvXss_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB5_19StateTransitionIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val.i = load i64, ptr %i.f, align 8, !alias.scope !822, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %.sroa.528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 37
  %.promoted74 = load i64, ptr %i.e, align 8, !alias.scope !823
  %.promoted75 = load i32, ptr %i.i, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.backedge
  %i.j = phi i32 [ %.promoted75, %.lr.ph ], [ %i.aa, %.backedge ] ; 4 uses
  %i.k = phi i64 [ %.promoted74, %.lr.ph ], [ %i.n, %.backedge ] ; 4 uses
  %i.l = phi ptr [ %.promoted, %.lr.ph ], [ %i.m, %.backedge ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !822)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 3 uses
  store ptr %i.m, ptr %1, align 8, !alias.scope !821
  %i.n = add i64 %i.k, 1                          ; 3 uses
  store i64 %i.n, ptr %i.e, align 8, !alias.scope !823
  %.val7.i = load i32, ptr %i.l, align 4, !noalias !822, !noundef !4 ; 5 uses
  %i.o = icmp eq i64 %i.n, %.val.i
  br i1 %i.o, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = icmp ugt i64 %i.k, 255
  br i1 %i.p, label %bb.d, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6expectCs98D8VPWzHuM_14regex_automata.exit.i.i, !prof !15

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !822
  store i8 2, ptr %i.a, align 1, !noalias !822
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 35, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @16, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #18, !noalias !822
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6expectCs98D8VPWzHuM_14regex_automata.exit.i.i: ; preds = %bb.c
  %.sroa.4.0.insert.ext.i.i = trunc nuw nsw i64 %i.k to i32
  %.sroa.4.0.insert.shift.i.i = shl nuw nsw i32 %.sroa.4.0.insert.ext.i.i, 8
  br label %_RNvXss_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB5_19StateTransitionIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit

bb.e:                                             ; preds = %bb.b
  %i.q = tail call i32 @_RNvMNtNtCs98D8VPWzHuM_14regex_automata4util8alphabetNtB2_4Unit3eoi(i64 noundef %i.k), !noalias !822
  br label %_RNvXss_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB5_19StateTransitionIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit

_RNvXss_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB5_19StateTransitionIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6expectCs98D8VPWzHuM_14regex_automata.exit.i.i, %bb.e
  %.sroa.01.0.i.i = phi i32 [ %i.q, %bb.e ], [ %.sroa.4.0.insert.shift.i.i, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6expectCs98D8VPWzHuM_14regex_automata.exit.i.i ] ; 7 uses
  %i.r = lshr i32 %.sroa.01.0.i.i, 8
  %.sroa.454.0.extract.trunc = trunc nuw i32 %i.r to i24
  %i.s = and i32 %.sroa.01.0.i.i, 255
  %.not = icmp eq i32 %i.s, 2
  br i1 %.not, label %_RNvXss_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB5_19StateTransitionIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread, label %bb.f

bb.f:                                             ; preds = %_RNvXss_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB5_19StateTransitionIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit
  %i.t = load i8, ptr %i.g, align 8, !range !3, !noundef !4
  %.not63 = icmp eq i8 %i.t, 2
  br i1 %.not63, label %bb.h, label %bb.g

_RNvXss_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB5_19StateTransitionIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread: ; preds = %_RNvXss_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB5_19StateTransitionIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit, %.backedge, %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(12) %i.u, i64 12, i1 false)
  store i8 2, ptr %i.u, align 8
  %i.v = load i8, ptr %0, align 4, !range !3, !noundef !4 ; 2 uses
  %.not61 = icmp eq i8 %i.v, 2
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i32, ptr %i.w, align 4
  %.not62 = icmp eq i32 %i.x, 0
  %or.cond66 = select i1 %.not61, i1 true, i1 %.not62
  %spec.store.select = select i1 %or.cond66, i8 2, i8 %i.v
  store i8 %spec.store.select, ptr %0, align 4
  br label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.y = icmp ne i32 %i.j, %.val7.i
  %i.z = trunc i32 %.sroa.01.0.i.i to i1
  %or.cond = or i1 %i.y, %i.z
  br i1 %or.cond, label %bb.i, label %bb.j

bb.h:                                             ; preds = %bb.f
  store i32 %.sroa.01.0.i.i, ptr %i.g, align 8
  store i32 %.sroa.01.0.i.i, ptr %i.h, align 4
  store i32 %.val7.i, ptr %i.i, align 8
  br label %.backedge

.backedge:                                        ; preds = %bb.j, %bb.i, %bb.h
  %i.aa = phi i32 [ %.val7.i, %bb.h ], [ %.val7.i, %bb.i ], [ %i.j, %bb.j ]
  %i.ab = icmp eq ptr %i.m, %i.c
  br i1 %i.ab, label %_RNvXss_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB5_19StateTransitionIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread, label %bb.b

bb.i:                                             ; preds = %bb.g
  %.sroa.050.0.copyload = load i64, ptr %i.g, align 8
  store i32 %.sroa.01.0.i.i, ptr %i.g, align 8
  store i32 %.sroa.01.0.i.i, ptr %i.h, align 4
  store i32 %.val7.i, ptr %i.i, align 8
  %.not64 = icmp eq i32 %i.j, 0
  br i1 %.not64, label %.backedge, label %bb.k

bb.j:                                             ; preds = %bb.g
  store i8 0, ptr %i.h, align 4
  store i24 %.sroa.454.0.extract.trunc, ptr %.sroa.528.0..sroa_idx, align 1
  br label %.backedge

bb.k:                                             ; preds = %bb.i
  store i64 %.sroa.050.0.copyload, ptr %0, align 4
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.j, ptr %.sroa.541.0..sroa_idx, align 4
  br label %bb.l

bb.l:                                             ; preds = %_RNvXss_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB5_19StateTransitionIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread, %bb.k
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsx_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB5_10BuildErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = load i64, ptr %0, align 8, !range !10, !noundef !4 ; 2 uses
  %i.l = add i64 %i.k, 9223372036854775801
  %i.m = icmp ult i64 %i.l, 6
  %i.n = add nsw i64 %i.k, 9223372036854775802
  %i.o = select i1 %i.m, i64 %i.n, i64 0
  switch i64 %i.o, label %bb.b [
    i64 0, label %bb.h
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs98D8VPWzHuM_14regex_automata.exit
    i64 4, label %bb.e
    i64 5, label %bb.f
    i64 6, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.j, ptr %i.i, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRReNtB6_7Display3fmtCs98D8VPWzHuM_14regex_automata, ptr %.sroa.419.0..sroa_idx, align 8
  %i.q = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !4, !align !9, !noundef !4
  %i.t = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.s, ptr noundef nonnull @217, ptr noundef nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr @218, ptr %i.h, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.415.0..sroa_idx, align 8
  %i.u = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !4, !align !9, !noundef !4
  %i.x = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.w, ptr noundef nonnull @219, ptr noundef nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.i

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs98D8VPWzHuM_14regex_automata.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 1537228672809129300, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.g, ptr %i.f, align 8
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.458.0..sroa_idx, align 8
  %i.y = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !4, !align !9, !noundef !4
  %i.ab = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.y, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aa, ptr noundef nonnull @220, ptr noundef nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr @218, ptr %i.e, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.411.0..sroa_idx, align 8
  %i.ac = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !4, !align !9, !noundef !4
  %i.af = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.ac, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ae, ptr noundef nonnull @221, ptr noundef nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ag, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRjNtB6_5Debug3fmtCs98D8VPWzHuM_14regex_automata, ptr %.sroa.47.0..sroa_idx, align 8
  %i.ah = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !nonnull !4, !align !9, !noundef !4
  %i.ak = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.ah, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aj, ptr noundef nonnull @222, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.al, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRjNtB6_5Debug3fmtCs98D8VPWzHuM_14regex_automata, ptr %.sroa.43.0..sroa_idx, align 8
  %i.am = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !4, !align !9, !noundef !4
  %i.ap = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.am, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ao, ptr noundef nonnull @223, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  %i.aq = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !nonnull !4, !align !9, !noundef !4
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !invariant.load !4, !nonnull !4
  %i.av = tail call noundef zeroext i1 %i.au(ptr noundef nonnull %i.aq, ptr noalias noundef nonnull readonly captures(address, read_provenance) @216, i64 noundef 18)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs98D8VPWzHuM_14regex_automata.exit, %bb.d, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.av, %bb.h ], [ %i.ap, %bb.g ], [ %i.t, %bb.c ], [ %i.x, %bb.d ], [ %i.ab, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs98D8VPWzHuM_14regex_automata.exit ], [ %i.af, %bb.e ], [ %i.ak, %bb.f ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton19start_state_forwardB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 16 captures(none) dereferenceable(800) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0                      ; 2 uses
  br i1 %i.c, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %i.b, -1                         ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !4
  %i.g = icmp ult i64 %i.d, %i.f
  br i1 %i.g, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %i.h = load i32, ptr %2, align 8, !range !28, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.j = load i32, ptr %i.i, align 4
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !4, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.d
  %i.n = load i8, ptr %i.m, align 1, !noundef !4  ; 4 uses
  %i.o = load i32, ptr %2, align 8, !range !28, !noundef !4
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.q = load i32, ptr %i.p, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.s = load i128, ptr %i.r, align 1
  %i.t = getelementptr i8, ptr %i.r, i64 16
  %i.u = load i128, ptr %i.t, align 1
  %i.v = or i128 %i.s, %i.u
  %i.w = icmp ne i128 %i.v, 0
  %i.x = zext i1 %i.w to i32
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.p, label %bb.n

bb.d:                                             ; preds = %.thread, %bb.p
  %i.z = phi i32 [ %i.q, %bb.p ], [ %i.j, %.thread ] ; 4 uses
  %i.aa = phi i32 [ %i.o, %bb.p ], [ %i.h, %.thread ]
  %.sroa.02.0.i = phi i64 [ %i.bl, %bb.p ], [ 2, %.thread ] ; 3 uses
  switch i32 %i.aa, label %default.unreachable [
    i32 0, label %bb.e
    i32 1, label %bb.f
    i32 2, label %bb.g
  ]

default.unreachable:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 784
  %i.ac = load i8, ptr %i.ab, align 16, !range !3, !alias.scope !829, !noalias !830, !noundef !4
  %i.ad = icmp eq i8 %i.ac, 2
  br i1 %i.ad, label %_RNvMsi_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_10StartTableINtNtCscdodAO9FK5_5alloc3vec3VecmEE5startB9_.exit.i, label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 784
  %i.af = load i8, ptr %i.ae, align 16, !range !3, !alias.scope !829, !noalias !830, !noundef !4
  %i.ag = icmp eq i8 %i.af, 1
  br i1 %i.ag, label %_RNvMsi_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_10StartTableINtNtCscdodAO9FK5_5alloc3vec3VecmEE5startB9_.exit.i, label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 464
  %i.ai = load i64, ptr %i.ah, align 16, !range !20, !alias.scope !829, !noalias !830, !noundef !4
  %i.aj = trunc nuw i64 %i.ai to i1
  br i1 %i.aj, label %bb.j, label %_RNvMsi_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_10StartTableINtNtCscdodAO9FK5_5alloc3vec3VecmEE5startB9_.exit.i

bb.h:                                             ; preds = %bb.k, %bb.i, %bb.e
  %.sroa.015.0.i.i = phi i64 [ %i.aw, %bb.k ], [ %i.ao, %bb.i ], [ %.sroa.02.0.i, %bb.e ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 496
  %.val13 = load i64, ptr %i.ak, align 16, !noundef !4 ; 2 uses
  %i.al = icmp ult i64 %.sroa.015.0.i.i, %.val13
  br i1 %i.al, label %bb.l, label %bb.m

bb.i:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 776
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !829, !noalias !830, !noundef !4
  %i.ao = add i64 %i.an, %.sroa.02.0.i
  br label %bb.h

bb.j:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 472
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !829, !noalias !830, !noundef !4
  %i.ar = zext i32 %i.z to i64                    ; 2 uses
  %.not.i.i = icmp ugt i64 %i.aq, %i.ar
  br i1 %.not.i.i, label %bb.k, label %_RNvMsi_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_10StartTableINtNtCscdodAO9FK5_5alloc3vec3VecmEE5startB9_.exit.i

bb.k:                                             ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 776
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !829, !noalias !830, !noundef !4
  %i.au = add nuw nsw i64 %i.ar, 2
  %i.av = mul i64 %i.at, %i.au
  %i.aw = add i64 %i.av, %.sroa.02.0.i
  br label %bb.h

bb.l:                                             ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 488
  %.val = load ptr, ptr %i.ax, align 8, !nonnull !4, !noundef !4
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %.sroa.015.0.i.i
  %i.az = load i32, ptr %i.ay, align 4, !noalias !830, !noundef !4
  br label %_RNvMsi_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_10StartTableINtNtCscdodAO9FK5_5alloc3vec3VecmEE5startB9_.exit.i

bb.m:                                             ; preds = %bb.h
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.sroa.015.0.i.i, i64 noundef %.val13, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @113) #18, !noalias !830
  unreachable

_RNvMsi_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_10StartTableINtNtCscdodAO9FK5_5alloc3vec3VecmEE5startB9_.exit.i: ; preds = %bb.l, %bb.j, %bb.g, %bb.f, %bb.e
  %.sroa.08.0.i.i = phi i64 [ 4294967294, %bb.l ], [ 1, %bb.f ], [ 0, %bb.e ], [ 2, %bb.g ], [ 4294967294, %bb.j ]
  %.sroa.6.0.i.i = phi i32 [ %i.az, %bb.l ], [ %i.z, %bb.f ], [ %i.z, %bb.e ], [ %i.z, %bb.g ], [ 0, %bb.j ]
  %.sroa.6.0.insert.ext.i.i = zext i32 %.sroa.6.0.i.i to i64
  br label %_RNvXsb_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton11start_stateB9_.exit

bb.n:                                             ; preds = %bb.c
  %.lobit.i = lshr i8 %i.n, 7
  %i.ba = zext nneg i8 %.lobit.i to i64
  %i.bb = and i8 %i.n, 127
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.ba
  %i.bd = load i128, ptr %i.bc, align 16, !alias.scope !831, !noalias !830, !noundef !4
  %i.be = zext nneg i8 %i.bb to i128
  %i.bf = shl nuw i128 1, %i.be
  %i.bg = and i128 %i.bd, %i.bf
  %.not.i = icmp eq i128 %i.bg, 0
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.sroa.4.0.insert.ext.i = zext i8 %i.n to i64
  br label %_RNvXsb_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton11start_stateB9_.exit

bb.p:                                             ; preds = %bb.n, %bb.c
  %i.bh = zext i8 %i.n to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 520
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bh
  %i.bk = load i8, ptr %i.bj, align 1, !range !27, !alias.scope !831, !noalias !830, !noundef !4
  %i.bl = zext nneg i8 %i.bk to i64
  br label %bb.d

_RNvXsb_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton11start_stateB9_.exit: ; preds = %_RNvMsi_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_10StartTableINtNtCscdodAO9FK5_5alloc3vec3VecmEE5startB9_.exit.i, %bb.o
  %.sroa.6.0.insert.ext.i.i.sink = phi i64 [ %.sroa.6.0.insert.ext.i.i, %_RNvMsi_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_10StartTableINtNtCscdodAO9FK5_5alloc3vec3VecmEE5startB9_.exit.i ], [ %.sroa.4.0.insert.ext.i, %bb.o ]
  %.sroa.08.0.i.i.sink = phi i64 [ %.sroa.08.0.i.i, %_RNvMsi_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_10StartTableINtNtCscdodAO9FK5_5alloc3vec3VecmEE5startB9_.exit.i ], [ 4294967295, %bb.o ] ; 3 uses
  %.sroa.6.0.insert.shift.i.i = shl nuw i64 %.sroa.6.0.insert.ext.i.i.sink, 32
  %.sroa.08.0.insert.insert.i.i = or disjoint i64 %.sroa.6.0.insert.shift.i.i, %.sroa.08.0.i.i.sink ; 2 uses
  %i.bm = and i64 %.sroa.08.0.i.i.sink, 4294967295
  %.not = icmp eq i64 %i.bm, 4294967294
  br i1 %.not, label %bb.v, label %bb.q

bb.q:                                             ; preds = %_RNvXsb_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton11start_stateB9_.exit
  %.sroa.03.0.extract.trunc.i = trunc i64 %.sroa.08.0.i.i.sink to i32 ; 2 uses
  %.sroa.4.0.extract.shift.i = lshr i64 %.sroa.08.0.insert.insert.i.i, 32 ; 2 uses
  %.not.i15 = icmp eq i32 %.sroa.03.0.extract.trunc.i, -1
  br i1 %.not.i15, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.sroa.4.0.extract.trunc.i = trunc nuw i64 %.sroa.4.0.extract.shift.i to i32
  %i.bn = tail call noundef nonnull align 8 ptr @_RNvMsj_NtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB5_10MatchError20unsupported_anchored(i32 noundef %.sroa.03.0.extract.trunc.i, i32 %.sroa.4.0.extract.trunc.i)
  br label %_RNCNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB9_9automaton9Automaton19start_state_forward0Bb_.exit

bb.s:                                             ; preds = %bb.q
  br i1 %i.c, label %bb.u, label %bb.t, !prof !15

bb.t:                                             ; preds = %bb.s
  %.sroa.3.4.extract.trunc.i = trunc i64 %.sroa.4.0.extract.shift.i to i8
  %i.bo = add i64 %i.b, -1
  %i.bp = tail call noundef nonnull align 8 ptr @_RNvMsj_NtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB5_10MatchError4quit(i8 noundef %.sroa.3.4.extract.trunc.i, i64 noundef %i.bo)
  br label %_RNCNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB9_9automaton9Automaton19start_state_forward0Bb_.exit

bb.u:                                             ; preds = %bb.s
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #18
  unreachable

_RNCNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB9_9automaton9Automaton19start_state_forward0Bb_.exit: ; preds = %bb.r, %bb.t
  %.sroa.04.0.i = phi ptr [ %i.bn, %bb.r ], [ %i.bp, %bb.t ]
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.04.0.i, ptr %i.bq, align 8
  br label %bb.w

bb.v:                                             ; preds = %_RNvXsb_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton11start_stateB9_.exit
  %.sroa.49.0.extract.shift = lshr i64 %.sroa.08.0.insert.insert.i.i, 32
  %.sroa.49.0.extract.trunc = trunc nuw i64 %.sroa.49.0.extract.shift to i32
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.49.0.extract.trunc, ptr %i.br, align 4
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_RNCNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB9_9automaton9Automaton19start_state_forward0Bb_.exit
  %storemerge = phi i32 [ 0, %bb.v ], [ 1, %_RNCNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB9_9automaton9Automaton19start_state_forward0Bb_.exit ]
  store i32 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton19start_state_reverseB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 16 captures(none) dereferenceable(800) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %2) unnamed_addr #0 {
end_hunk_3
