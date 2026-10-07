Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/regex-rs/original/regex_automata-c16a8546804556f4.regex_automata.70e7117356d4e434-cgu.10?download=true
inline.NumInlined: 352
inline.NumDeleted: 168
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0
@45 = private unnamed_addr constant <{ [24 x i8], [1 x i8], [7 x i8] }> <{ [24 x i8] undef, [1 x i8] c"\02", [7 x i8] undef }>, align 8
@46 = private unnamed_addr constant [38 x i8] c"regex-automata/src/util/sparse_set.rs\00", align 1
@47 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @46, [16 x i8] c"%\00\00\00\00\00\00\00\D1\00\00\00!\00\00\00" }>, align 8
@48 = private unnamed_addr constant [37 x i8] c"\22sparse set capacity cannot exceed \C0\00", align 1
@49 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @46, [16 x i8] c"%\00\00\00\00\00\00\00\82\00\00\00\09\00\00\00" }>, align 8
@50 = private unnamed_addr constant [9 x i8] c"SparseSet", align 1
@51 = private constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDEEB1e_, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsr_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDENtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmtBL_ }>, align 8, !dbg !1223
@52 = private unnamed_addr constant [9 x i8] c"PatternID", align 1
@53 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00", ptr @_RNvXsW_NtNtCsj6eKBz9Db1c_4core3fmt3nummNtB7_5Debug3fmt }>, align 8, !dbg !1224
@54 = private unnamed_addr constant [51 x i8] c"\1Efailed to create StateID from \C0\10, which exceeds \C0\00", align 1
@55 = private unnamed_addr constant [4 x i8] c"\FE\FF\FF\7F", align 4
@56 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives10SmallIndexNtB6_5Debug3fmtBC_ }>, align 8, !dbg !1225
@57 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRjNtB6_5Debug3fmtCs9GYDdpCSJ4S_14regex_automata }>, align 8, !dbg !1226
@58 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCsl4b0cIVMtRE_12aho_corasick4util10primitives9PatternIDNtB6_5Debug3fmtCs9GYDdpCSJ4S_14regex_automata }>, align 8, !dbg !1227
@59 = private unnamed_addr constant [53 x i8] c" failed to create PatternID from \C0\10, which exceeds \C0\00", align 1
@60 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives15SmallIndexErrorNtB6_5Debug3fmtBC_ }>, align 8, !dbg !1228
@61 = private unnamed_addr constant [14 x i8] c"PatternIDError", align 1
@62 = private unnamed_addr constant [7 x i8] c"StateID", align 1
@63 = private constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtNtNtCsl4b0cIVMtRE_12aho_corasick6packed5teddy7builder9SearcherTEL_EECs9GYDdpCSJ4S_14regex_automata, [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsW_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtNtNtCsl4b0cIVMtRE_12aho_corasick6packed5teddy7builder9SearcherTEL_ENtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmtCs9GYDdpCSJ4S_14regex_automata }>, align 8, !dbg !1229
@64 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsZ_NtNtCsj6eKBz9Db1c_4core3fmt3numjNtB7_5Debug3fmt }>, align 8, !dbg !1230
@65 = private unnamed_addr constant [8 x i8] c"Searcher", align 1
@66 = private unnamed_addr constant [3 x i8] c"imp", align 1
@67 = private unnamed_addr constant [12 x i8] c"memory_usage", align 1
@68 = private unnamed_addr constant [11 x i8] c"minimum_len", align 1
@69 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRmNtB6_5Debug3fmtCs9GYDdpCSJ4S_14regex_automata }>, align 8, !dbg !1231
@70 = private unnamed_addr constant [11 x i8] c"LazyStateID", align 1
@71 = private unnamed_addr constant [46 x i8] c"regex-automata/src/nfa/thompson/range_trie.rs\00", align 1
@72 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @71, [16 x i8] c"-\00\00\00\00\00\00\00\B2\00\00\00\0A\00\00\00" }>, align 8
@73 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtCs3roNzt6HBWW_12regex_syntax3ast5ErrorNtB6_5Debug3fmtCs9GYDdpCSJ4S_14regex_automata }>, align 8, !dbg !1233
@74 = private unnamed_addr constant [5 x i8] c"Parse", align 1
@75 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtCs3roNzt6HBWW_12regex_syntax3hir5ErrorNtB6_5Debug3fmtCs9GYDdpCSJ4S_14regex_automata }>, align 8, !dbg !1234
@76 = private unnamed_addr constant [9 x i8] c"Translate", align 1
@77 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRyNtB6_5Debug3fmtCs9GYDdpCSJ4S_14regex_automata }>, align 8, !dbg !1235
@78 = private unnamed_addr constant [15 x i8] c"SmallIndexError", align 1
@79 = private unnamed_addr constant [9 x i8] c"attempted", align 1
@80 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCs9GYDdpCSJ4S_14regex_automata4util8alphabet6BitSetNtB6_5Debug3fmtBC_ }>, align 8, !dbg !1236
@81 = private unnamed_addr constant [7 x i8] c"ByteSet", align 1
@82 = private unnamed_addr constant [4 x i8] c"bits", align 1
@83 = private unnamed_addr constant [4 x i8] c"None", align 1
@84 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRINtNtB8_6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterENtB6_5Debug3fmtBY_ }>, align 8, !dbg !1237
@85 = private unnamed_addr constant [4 x i8] c"Some", align 1
@86 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRINtNtB8_6option6OptionjENtB6_5Debug3fmtCs9GYDdpCSJ4S_14regex_automata }>, align 8, !dbg !1238
@87 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRINtNtCs4wP2HXfJTCR_5alloc4sync3ArceENtB6_5Debug3fmtCs9GYDdpCSJ4S_14regex_automata }>, align 8, !dbg !1239
@88 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappers12HybridEngineNtB6_5Debug3fmtBC_ }>, align 8, !dbg !1240
@89 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappers13OnePassEngineNtB6_5Debug3fmtBC_ }>, align 8, !dbg !1241
@90 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappers16ReverseDFAEngineNtB6_5Debug3fmtBC_ }>, align 8, !dbg !1242
@91 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappers19ReverseHybridEngineNtB6_5Debug3fmtBC_ }>, align 8, !dbg !1243
@92 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappers24BoundedBacktrackerEngineNtB6_5Debug3fmtBC_ }>, align 8, !dbg !1244
@93 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappers9DFAEngineNtB6_5Debug3fmtBC_ }>, align 8, !dbg !1245
@94 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCs9GYDdpCSJ4S_14regex_automata4util6search9MatchKindNtB6_5Debug3fmtBC_ }>, align 8, !dbg !1246
@95 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCs9GYDdpCSJ4S_14regex_automata4util8alphabet7ByteSetNtB6_5Debug3fmtBC_ }>, align 8, !dbg !1247
@96 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterNtB6_5Debug3fmtBC_ }>, align 8, !dbg !1248
@97 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRbNtB6_5Debug3fmtCs9GYDdpCSJ4S_14regex_automata }>, align 8, !dbg !1249
@98 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRhNtB6_5Debug3fmtCs9GYDdpCSJ4S_14regex_automata }>, align 8, !dbg !1250
@99 = private unnamed_addr constant [2 x i8] c"\C0\00", align 1
@100 = private unnamed_addr constant [6 x i8] c"config", align 1
@101 = private unnamed_addr constant [3 x i8] c"nfa", align 1
@102 = private unnamed_addr constant [7 x i8] c"stride2", align 1
@103 = private unnamed_addr constant [9 x i8] c"start_map", align 1
@104 = private unnamed_addr constant [7 x i8] c"classes", align 1
@105 = private unnamed_addr constant [7 x i8] c"quitset", align 1
@106 = private unnamed_addr constant [14 x i8] c"cache_capacity", align 1
@107 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @100, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @101, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @102, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @103, [8 x i8] c"\09\00\00\00\00\00\00\00", ptr @104, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @105, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @106, [8 x i8] c"\0E\00\00\00\00\00\00\00" }>, align 8
@108 = private constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfa6ConfigEBH_, [16 x i8] c"\90\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00", ptr @_RNvXsk_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_6ConfigNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt }>, align 8, !dbg !1251
@109 = private constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa3NFAEBJ_, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfaNtB4_3NFANtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt }>, align 8, !dbg !1252
@110 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4util5startNtB5_12StartByteMapNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt }>, align 8, !dbg !1253
@111 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs2_NtNtCs9GYDdpCSJ4S_14regex_automata4util8alphabetNtB5_11ByteClassesNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt }>, align 8, !dbg !1254
@112 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00 \00\00\00\00\00\00\00\10\00\00\00\00\00\00\00", ptr @_RNvXsF_NtNtCs9GYDdpCSJ4S_14regex_automata4util8alphabetNtB5_7ByteSetNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt }>, align 8, !dbg !1255
@113 = private unnamed_addr constant [3 x i8] c"DFA", align 1
@114 = private unnamed_addr constant [55 x i8] c"\22failed to create small index from \C0\10, which exceeds \C0\00", align 1
@115 = private unnamed_addr constant [44 x i8] c"regex-automata/src/nfa/thompson/compiler.rs\00", align 1
@116 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @115, [16 x i8] c"+\00\00\00\00\00\00\00\CD\02\00\00\0A\00\00\00" }>, align 8
@117 = private unnamed_addr constant [16 x i8] c"LazyStateIDError", align 1
@118 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRuNtB6_5Debug3fmtCs9GYDdpCSJ4S_14regex_automata }>, align 8, !dbg !1256
@119 = private unnamed_addr constant [10 x i8] c"CacheError", align 1
@120 = private unnamed_addr constant [10 x i8] c"match_kind", align 1
@121 = private unnamed_addr constant [3 x i8] c"pre", align 1
@122 = private unnamed_addr constant [23 x i8] c"starts_for_each_pattern", align 1
@123 = private unnamed_addr constant [12 x i8] c"byte_classes", align 1
@124 = private unnamed_addr constant [21 x i8] c"unicode_word_boundary", align 1
@125 = private unnamed_addr constant [23 x i8] c"specialize_start_states", align 1
@126 = private unnamed_addr constant [25 x i8] c"skip_cache_capacity_check", align 1
@127 = private unnamed_addr constant [25 x i8] c"minimum_cache_clear_count", align 1
@128 = private unnamed_addr constant [23 x i8] c"minimum_bytes_per_state", align 1
@129 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @120, [8 x i8] c"\0A\00\00\00\00\00\00\00", ptr @121, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @122, [8 x i8] c"\17\00\00\00\00\00\00\00", ptr @123, [8 x i8] c"\0C\00\00\00\00\00\00\00", ptr @124, [8 x i8] c"\15\00\00\00\00\00\00\00", ptr @105, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @125, [8 x i8] c"\17\00\00\00\00\00\00\00", ptr @106, [8 x i8] c"\0E\00\00\00\00\00\00\00", ptr @126, [8 x i8] c"\19\00\00\00\00\00\00\00", ptr @127, [8 x i8] c"\19\00\00\00\00\00\00\00", ptr @128, [8 x i8] c"\17\00\00\00\00\00\00\00" }>, align 8
@130 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsR_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util6search9MatchKindENtNtB7_3fmt5Debug3fmtBQ_ }>, align 8, !dbg !1257
@131 = private constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterEEEB17_, [16 x i8] c" \00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsR_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionIBy_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterEENtNtB7_3fmt5Debug3fmtBU_ }>, align 8, !dbg !1258
@132 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsR_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionbENtNtB7_3fmt5Debug3fmtCs9GYDdpCSJ4S_14regex_automata }>, align 8, !dbg !1259
@133 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\000\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00", ptr @_RNvXsR_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util8alphabet7ByteSetENtNtB7_3fmt5Debug3fmtBQ_ }>, align 8, !dbg !1260
@134 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsR_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionjENtNtB7_3fmt5Debug3fmtCs9GYDdpCSJ4S_14regex_automata }>, align 8, !dbg !1261
@135 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsR_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionIBy_jEENtNtB7_3fmt5Debug3fmtCs9GYDdpCSJ4S_14regex_automata }>, align 8, !dbg !1262
@136 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRINtNtB8_6option6OptionIBx_jEENtB6_5Debug3fmtCs9GYDdpCSJ4S_14regex_automata }>, align 8, !dbg !1263
@137 = private unnamed_addr constant [6 x i8] c"Config", align 1
@138 = private unnamed_addr constant [10 x i8] c"SmallIndex", align 1
@139 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\008\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsz_NtCs3roNzt6HBWW_12regex_syntax3astNtB5_9ErrorKindNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt }>, align 8, !dbg !1264
@140 = private constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs9GYDdpCSJ4S_14regex_automata, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsr_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt }>, align 8, !dbg !1265
@141 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtCs3roNzt6HBWW_12regex_syntax3ast4SpanNtB6_5Debug3fmtCs9GYDdpCSJ4S_14regex_automata }>, align 8, !dbg !1266
@142 = private unnamed_addr constant [5 x i8] c"Error", align 1
@143 = private unnamed_addr constant [4 x i8] c"kind", align 1
@144 = private unnamed_addr constant [7 x i8] c"pattern", align 1
@145 = private unnamed_addr constant [4 x i8] c"span", align 1
@146 = private unnamed_addr constant [20 x i8] c"CaptureLimitExceeded", align 1
@147 = private unnamed_addr constant [18 x i8] c"ClassEscapeInvalid", align 1
@148 = private unnamed_addr constant [17 x i8] c"ClassRangeInvalid", align 1
@149 = private unnamed_addr constant [17 x i8] c"ClassRangeLiteral", align 1
@150 = private unnamed_addr constant [13 x i8] c"ClassUnclosed", align 1
@151 = private unnamed_addr constant [12 x i8] c"DecimalEmpty", align 1
@152 = private unnamed_addr constant [14 x i8] c"DecimalInvalid", align 1
@153 = private unnamed_addr constant [14 x i8] c"EscapeHexEmpty", align 1
@154 = private unnamed_addr constant [16 x i8] c"EscapeHexInvalid", align 1
@155 = private unnamed_addr constant [21 x i8] c"EscapeHexInvalidDigit", align 1
@156 = private unnamed_addr constant [19 x i8] c"EscapeUnexpectedEof", align 1
@157 = private unnamed_addr constant [18 x i8] c"EscapeUnrecognized", align 1
@158 = private unnamed_addr constant [20 x i8] c"FlagDanglingNegation", align 1
@159 = private unnamed_addr constant [13 x i8] c"FlagDuplicate", align 1
@160 = private unnamed_addr constant [8 x i8] c"original", align 1
@161 = private unnamed_addr constant [20 x i8] c"FlagRepeatedNegation", align 1
@162 = private unnamed_addr constant [17 x i8] c"FlagUnexpectedEof", align 1
@163 = private unnamed_addr constant [16 x i8] c"FlagUnrecognized", align 1
@164 = private unnamed_addr constant [18 x i8] c"GroupNameDuplicate", align 1
@165 = private unnamed_addr constant [14 x i8] c"GroupNameEmpty", align 1
@166 = private unnamed_addr constant [16 x i8] c"GroupNameInvalid", align 1
@167 = private unnamed_addr constant [22 x i8] c"GroupNameUnexpectedEof", align 1
@168 = private unnamed_addr constant [13 x i8] c"GroupUnclosed", align 1
@169 = private unnamed_addr constant [13 x i8] c"GroupUnopened", align 1
@170 = private unnamed_addr constant [17 x i8] c"NestLimitExceeded", align 1
@171 = private unnamed_addr constant [22 x i8] c"RepetitionCountInvalid", align 1
@172 = private unnamed_addr constant [27 x i8] c"RepetitionCountDecimalEmpty", align 1
@173 = private unnamed_addr constant [23 x i8] c"RepetitionCountUnclosed", align 1
@174 = private unnamed_addr constant [17 x i8] c"RepetitionMissing", align 1
@175 = private unnamed_addr constant [27 x i8] c"SpecialWordBoundaryUnclosed", align 1
@176 = private unnamed_addr constant [31 x i8] c"SpecialWordBoundaryUnrecognized", align 1
@177 = private unnamed_addr constant [36 x i8] c"SpecialWordOrRepetitionUnexpectedEof", align 1
@178 = private unnamed_addr constant [19 x i8] c"UnicodeClassInvalid", align 1
@179 = private unnamed_addr constant [24 x i8] c"UnsupportedBackreference", align 1
@180 = private unnamed_addr constant [21 x i8] c"UnsupportedLookAround", align 1

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs7_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB6_7Builder10build_manyReEBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([720 x i8]) align 16 captures(none) dereferenceable(720) %0, ptr nofree noundef nonnull align 16 captures(address, read_provenance) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 576460752303423488) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !5209 {
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
  %i.s = alloca [120 x i8], align 8               ; 16 uses
  %i.t = alloca [16 x i8], align 4                ; 4 uses
    #dbg_declare(ptr poison, !5773, !DIExpression(DW_OP_LLVM_fragment, 128, 896), !5778)
    #dbg_declare(ptr poison, !5779, !DIExpression(DW_OP_LLVM_fragment, 128, 896), !5807)
    #dbg_declare(ptr poison, !5808, !DIExpression(DW_OP_LLVM_fragment, 128, 896), !5234)
    #dbg_declare(ptr poison, !5842, !DIExpression(DW_OP_LLVM_fragment, 128, 896), !5844)
    #dbg_declare(ptr poison, !5774, !DIExpression(DW_OP_LLVM_fragment, 128, 896), !5845)
    #dbg_declare(ptr poison, !5769, !DIExpression(DW_OP_LLVM_fragment, 128, 896), !5846)
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [448 x i8], align 8               ; 21 uses
  %i.w = alloca [128 x i8], align 8               ; 7 uses
    #dbg_declare(ptr poison, !5803, !DIExpression(DW_OP_LLVM_fragment, 128, 896), !5847)
  %i.x = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_value(ptr %1, !5766, !DIExpression(), !5848)
    #dbg_value(ptr %2, !5767, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5848)
    #dbg_value(i64 %3, !5767, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5848)
    #dbg_declare(ptr %i.x, !5768, !DIExpression(), !5849)
    #dbg_declare(ptr %i.w, !5839, !DIExpression(), !5850)
    #dbg_declare(ptr poison, !5840, !DIExpression(), !5851)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !dbg !6477
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !5806
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !5806
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 144, !dbg !5806
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5852), !dbg !6478
    #dbg_value(ptr %i.y, !5855, !DIExpression(), !5239)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !6479
    #dbg_value(ptr %i.y, !5862, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !5242)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 168, !dbg !6480
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %i.z, i64 16, i1 false), !dbg !6480, !noalias !5852
    #dbg_value(ptr %i.y, !5868, !DIExpression(), !5245)
    #dbg_value(ptr %i.y, !5874, !DIExpression(DW_OP_plus_uconst, 18, DW_OP_stack_value), !5251)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 162, !dbg !6481
  %i.ab = load i8, ptr %i.aa, align 2, !dbg !6481, !range !2648, !noalias !5852, !noundef !1285
    #dbg_value(ptr %i.y, !5874, !DIExpression(DW_OP_plus_uconst, 19, DW_OP_stack_value), !5253)
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 163, !dbg !6482
  %i.ad = load i8, ptr %i.ac, align 1, !dbg !6482, !range !2648, !noalias !5852, !noundef !1285
    #dbg_value(ptr %i.y, !5881, !DIExpression(), !5257)
  %i.ae = load i64, ptr %i.y, align 16, !dbg !6483, !range !2651, !noalias !5852, !noundef !1285 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 1, !dbg !6484
  br i1 %i.af, label %bb.p, label %bb.b, !dbg !6484

bb.b:                                             ; preds = %bb.a, %bb.p
  %.sroa.52.0.i = phi i64 [ undef, %bb.a ], [ %i.co, %bb.p ], !dbg !6485
  %.sroa.01.0.i = phi i64 [ %i.ae, %bb.a ], [ 1, %bb.p ], !dbg !6485
    #dbg_value(ptr %i.y, !5874, !DIExpression(DW_OP_plus_uconst, 20, DW_OP_stack_value), !5259)
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 164, !dbg !6486
  %i.ah = load i8, ptr %i.ag, align 4, !dbg !6486, !range !2648, !noalias !5852, !noundef !1285
    #dbg_value(ptr %i.y, !5889, !DIExpression(DW_OP_plus_uconst, 21, DW_OP_stack_value), !5263)
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 165, !dbg !6487
  %i.aj = load i8, ptr %i.ai, align 1, !dbg !6487, !range !2652, !noalias !5852, !noundef !1285
    #dbg_value(ptr %i.y, !5897, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !5267)
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 160, !dbg !6488
  %i.al = load i8, ptr %i.ak, align 16, !dbg !6488, !range !2655, !noalias !5852, !noundef !1285
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 161, !dbg !6488
  %i.an = load i8, ptr %i.am, align 1, !dbg !6488, !noalias !5852
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !6489, !noalias !5852
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 184, !dbg !6489 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5903), !dbg !6489
    #dbg_declare(ptr poison, !5905, !DIExpression(DW_OP_LLVM_fragment, 128, 192), !5274)
    #dbg_declare(ptr poison, !5905, !DIExpression(DW_OP_LLVM_fragment, 320, 192), !5274)
    #dbg_declare(ptr poison, !5905, !DIExpression(DW_OP_LLVM_fragment, 512, 192), !5274)
    #dbg_value(ptr %i.ao, !5914, !DIExpression(), !5275)
    #dbg_value(ptr %i.ao, !5918, !DIExpression(), !5284)
    #dbg_value(ptr %i.ao, !5935, !DIExpression(), !5293)
    #dbg_declare(ptr poison, !5933, !DIExpression(), !5294)
    #dbg_value(i64 1, !5955, !DIExpression(), !5304)
    #dbg_value(ptr %i.ao, !5973, !DIExpression(), !5305)
    #dbg_value(ptr %i.ao, !5976, !DIExpression(), !5308)
    #dbg_value(ptr %i.ao, !5981, !DIExpression(), !5311)
  %i.ap = load i64, ptr %i.ao, align 8, !dbg !6490, !noalias !5987, !noundef !1285 ; 2 uses
    #dbg_value(i64 %i.ap, !5959, !DIExpression(), !5304)
    #dbg_value(i64 %i.ap, !5974, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !5312)
    #dbg_value(i64 %i.ap, !5988, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !5315)
    #dbg_value(i64 %i.ap, !5985, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !5311)
  %i.aq = icmp ult i64 %i.ap, 9223372036854775807, !dbg !6491
  br i1 %i.aq, label %_RNvMst_NtCsj6eKBz9Db1c_4core4cellINtB5_7RefCellNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson7builder7BuilderE6borrowBR_.exit.i.i, label %bb.c, !dbg !6492, !prof !2658

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsj6eKBz9Db1c_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @116) #20, !dbg !6493, !noalias !5987
  unreachable, !dbg !6493

_RNvMst_NtCsj6eKBz9Db1c_4core4cellINtB5_7RefCellNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson7builder7BuilderE6borrowBR_.exit.i.i: ; preds = %bb.b
  %i.ar = add nuw nsw i64 %i.ap, 1, !dbg !6494
    #dbg_value(i64 %i.ar, !5974, !DIExpression(), !5312)
    #dbg_value(i64 %i.ar, !5988, !DIExpression(), !5315)
    #dbg_value(i64 %i.ar, !5985, !DIExpression(), !5311)
  store i64 %i.ar, ptr %i.ao, align 8, !dbg !6495, !noalias !5987
    #dbg_value(ptr %i.ao, !5951, !DIExpression(), !5318)
    #dbg_value(ptr %i.ao, !5996, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !5321)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6002), !dbg !6496
    #dbg_value(ptr %i.ao, !6005, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !5326)
    #dbg_value(ptr %i.ao, !6011, !DIExpression(DW_OP_plus_uconst, 96, DW_OP_stack_value), !5330)
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 280, !dbg !6497
  %i.at = load i32, ptr %i.as, align 8, !dbg !6497, !range !6016, !alias.scope !6002, !noalias !6017, !noundef !1285 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 284, !dbg !6498
  %i.av = load i32, ptr %i.au, align 4, !dbg !6498, !alias.scope !6002, !noalias !6017
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !6499, !noalias !6018
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 208, !dbg !6499
  invoke void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson7builder5StateENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBN_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aw)
          to label %.noexc.i.i unwind label %bb.i, !dbg !6499, !noalias !5987

.noexc.i.i:                                       ; preds = %_RNvMst_NtCsj6eKBz9Db1c_4core4cellINtB5_7RefCellNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson7builder7BuilderE6borrowBR_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !6500, !noalias !6018
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 232, !dbg !6500
  invoke void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ax)
          to label %bb.f unwind label %bb.e, !dbg !6500, !noalias !6017

bb.d:                                             ; preds = %bb.g, %bb.e
  %.pn.i.i.i = phi { ptr, i32 } [ %i.ba, %bb.g ], [ %i.ay, %bb.e ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson7builder5StateEEB1g_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p) #21
          to label %bb.j unwind label %bb.h, !dbg !6501, !noalias !6017

bb.e:                                             ; preds = %.noexc.i.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.f:                                             ; preds = %.noexc.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !6502, !noalias !6018
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 256, !dbg !6502
  invoke void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_INtNtCsj6eKBz9Db1c_4core6option6OptionINtNtB7_4sync3ArceEEEENtNtBO_5clone5Clone5cloneCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.az)
          to label %_RNvXsx_NtCsj6eKBz9Db1c_4core4cellINtB5_7RefCellNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson7builder7BuilderENtNtB7_5clone5Clone5cloneBR_.exit.i unwind label %bb.g, !dbg !6502, !noalias !6017

bb.g:                                             ; preds = %bb.f
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDEEB1e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o) #21
          to label %bb.d unwind label %bb.h, !dbg !6501, !noalias !6017

bb.h:                                             ; preds = %bb.g, %bb.d
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #22, !dbg !6503, !noalias !6017
  unreachable, !dbg !6503

bb.i:                                             ; preds = %_RNvMst_NtCsj6eKBz9Db1c_4core4cellINtB5_7RefCellNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson7builder7BuilderE6borrowBR_.exit.i.i
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.j, !dbg !6504

common.resume:                                    ; preds = %bb.ar, %bb.az, %bb.ay, %bb.j, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.i, %.body.i ], [ %eh.lpad-body.i.i, %bb.j ], [ %i.fe, %bb.ar ], [ %i.fs, %bb.ay ], [ %i.fs, %bb.az ]
  resume { ptr, i32 } %common.resume.op, !dbg !5848

bb.j:                                             ; preds = %bb.i, %bb.d
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.bc, %bb.i ], [ %.pn.i.i.i, %bb.d ]
    #dbg_value(ptr poison, !6020, !DIExpression(), !5334)
    #dbg_value(ptr poison, !6026, !DIExpression(), !5337)
    #dbg_value(ptr poison, !6030, !DIExpression(), !5340)
  %i.bd = load i64, ptr %i.ao, align 8, !dbg !6505, !noalias !5987, !noundef !1285
  %i.be = add i64 %i.bd, -1, !dbg !6506
  store i64 %i.be, ptr %i.ao, align 8, !dbg !6507, !noalias !5987
  br label %common.resume, !dbg !6508

_RNvXsx_NtCsj6eKBz9Db1c_4core4cellINtB5_7RefCellNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson7builder7BuilderENtNtB7_5clone5Clone5cloneBR_.exit.i: ; preds = %bb.f
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 192, !dbg !6509
    #dbg_value(ptr %i.bf, !6005, !DIExpression(), !5326)
    #dbg_value(ptr %i.bf, !6011, !DIExpression(DW_OP_plus_uconst, 88, DW_OP_stack_value), !5330)
  %i.bg = trunc nuw i32 %i.at to i1, !dbg !6498
  %.sroa.5.0.i.i.i = select i1 %i.bg, i32 %i.av, i32 undef, !dbg !6498
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 288, !dbg !6510
  %i.bi = load i64, ptr %i.bh, align 16, !dbg !6510, !alias.scope !6002, !noalias !6017, !noundef !1285
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 296, !dbg !6511
  %i.bk = load i8, ptr %i.bj, align 8, !dbg !6511, !range !2655, !alias.scope !6002, !noalias !6017, !noundef !1285
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 297, !dbg !6512
  %i.bm = load i8, ptr %i.bl, align 1, !dbg !6512, !range !2655, !alias.scope !6002, !noalias !6017, !noundef !1285
    #dbg_value(ptr %i.bf, !6035, !DIExpression(DW_OP_plus_uconst, 106, DW_OP_stack_value), !5349)
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 298, !dbg !6513
  %i.bo = load i8, ptr %i.bn, align 2, !dbg !6513, !alias.scope !6002, !noalias !6017, !noundef !1285
    #dbg_value(ptr %i.bf, !6040, !DIExpression(), !5353)
  %i.bp = load i64, ptr %i.bf, align 16, !dbg !6514, !range !2667, !alias.scope !6002, !noalias !6017, !noundef !1285 ; 2 uses
  %i.bq = trunc nuw i64 %i.bp to i1, !dbg !6515
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 200, !dbg !6515
  %i.bs = load i64, ptr %i.br, align 8, !dbg !6515, !alias.scope !6002, !noalias !6017
  %.sroa.52.0.i.i.i = select i1 %i.bq, i64 %i.bs, i64 undef, !dbg !6515
    #dbg_value(i32 %i.at, !5905, !DIExpression(DW_OP_LLVM_fragment, 704, 32), !5354)
    #dbg_value(i32 %.sroa.5.0.i.i.i, !5905, !DIExpression(DW_OP_LLVM_fragment, 736, 32), !5354)
  %.sroa.54.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24, !dbg !6516
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.54.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !dbg !6503, !noalias !5852
  %.sroa.65.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 48, !dbg !6516
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.65.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !dbg !6503, !noalias !5852
  %.sroa.76.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 72, !dbg !6516
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.76.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !dbg !6503, !noalias !5852
    #dbg_value(i64 %i.bi, !5905, !DIExpression(DW_OP_LLVM_fragment, 768, 64), !5354)
    #dbg_value(i8 %i.bk, !5905, !DIExpression(DW_OP_LLVM_fragment, 832, 8), !5354)
    #dbg_value(i8 %i.bm, !5905, !DIExpression(DW_OP_LLVM_fragment, 840, 8), !5354)
    #dbg_value(i8 %i.bo, !5905, !DIExpression(DW_OP_LLVM_fragment, 848, 8), !5354)
    #dbg_value(i64 %i.bp, !5905, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5354)
    #dbg_value(i64 %.sroa.52.0.i.i.i, !5905, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5354)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !6501, !noalias !6018
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !6501, !noalias !6018
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !6501, !noalias !6018
  store i64 0, ptr %i.s, align 8, !dbg !6516, !alias.scope !5903, !noalias !5852
  %i.bt = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !6516
  store i64 %i.bp, ptr %i.bt, align 8, !dbg !6516, !alias.scope !5903, !noalias !5852
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !6516
  store i64 %.sroa.52.0.i.i.i, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !dbg !6516, !alias.scope !5903, !noalias !5852
  %.sroa.87.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 96, !dbg !6516
  store i32 %i.at, ptr %.sroa.87.0..sroa_idx.i.i, align 8, !dbg !6516, !alias.scope !5903, !noalias !5852
  %.sroa.98.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 100, !dbg !6516
  store i32 %.sroa.5.0.i.i.i, ptr %.sroa.98.0..sroa_idx.i.i, align 4, !dbg !6516, !alias.scope !5903, !noalias !5852
  %.sroa.109.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 104, !dbg !6516
  store i64 %i.bi, ptr %.sroa.109.0..sroa_idx.i.i, align 8, !dbg !6516, !alias.scope !5903, !noalias !5852
  %.sroa.1110.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 112, !dbg !6516
  store i8 %i.bk, ptr %.sroa.1110.0..sroa_idx.i.i, align 8, !dbg !6516, !alias.scope !5903, !noalias !5852
  %.sroa.1211.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 113, !dbg !6516
  store i8 %i.bm, ptr %.sroa.1211.0..sroa_idx.i.i, align 1, !dbg !6516, !alias.scope !5903, !noalias !5852
  %.sroa.1312.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 114, !dbg !6516
  store i8 %i.bo, ptr %.sroa.1312.0..sroa_idx.i.i, align 2, !dbg !6516, !alias.scope !5903, !noalias !5852
    #dbg_value(ptr poison, !6020, !DIExpression(), !5356)
    #dbg_value(ptr poison, !6026, !DIExpression(), !5358)
    #dbg_value(ptr poison, !6030, !DIExpression(), !5360)
  %i.bu = load i64, ptr %i.ao, align 8, !dbg !6517, !noalias !5987, !noundef !1285
  %i.bv = add i64 %i.bu, -1, !dbg !6518
  store i64 %i.bv, ptr %i.ao, align 8, !dbg !6519, !noalias !5987
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !6520, !noalias !5852
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 304, !dbg !6520 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6049), !dbg !6520
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !6521
    #dbg_value(ptr %i.bw, !6090, !DIExpression(), !5387)
    #dbg_declare(ptr %i.m, !6092, !DIExpression(), !5390)
    #dbg_value(ptr %i.bw, !6084, !DIExpression(), !5391)
    #dbg_value(ptr %i.bw, !6076, !DIExpression(), !5392)
    #dbg_declare(ptr poison, !6086, !DIExpression(), !5393)
    #dbg_value(i64 1, !6097, !DIExpression(), !5396)
    #dbg_value(ptr %i.bw, !6052, !DIExpression(), !5397)
    #dbg_value(ptr %i.bw, !6050, !DIExpression(), !5398)
    #dbg_value(ptr %i.bw, !6100, !DIExpression(), !5401)
  %i.bx = load i64, ptr %i.bw, align 16, !dbg !6521, !noalias !6103, !noundef !1285 ; 2 uses
    #dbg_value(i64 %i.bx, !6098, !DIExpression(), !5396)
    #dbg_value(i64 %i.bx, !6053, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !5402)
    #dbg_value(i64 %i.bx, !6104, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !5405)
    #dbg_value(i64 %i.bx, !6101, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !5401)
  %i.by = icmp ult i64 %i.bx, 9223372036854775807, !dbg !6522
  br i1 %i.by, label %_RNvMst_NtCsj6eKBz9Db1c_4core4cellINtB5_7RefCellNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson8compiler9Utf8StateE6borrowBR_.exit.i.i, label %bb.k, !dbg !6523, !prof !2658

bb.k:                                             ; preds = %_RNvXsx_NtCsj6eKBz9Db1c_4core4cellINtB5_7RefCellNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson7builder7BuilderENtNtB7_5clone5Clone5cloneBR_.exit.i
  invoke void @_RNvNtCsj6eKBz9Db1c_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @116) #20
          to label %.noexc.i unwind label %bb.q, !dbg !6524, !noalias !5852

.noexc.i:                                         ; preds = %bb.k
  unreachable, !dbg !6524

_RNvMst_NtCsj6eKBz9Db1c_4core4cellINtB5_7RefCellNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson8compiler9Utf8StateE6borrowBR_.exit.i.i: ; preds = %_RNvXsx_NtCsj6eKBz9Db1c_4core4cellINtB5_7RefCellNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson7builder7BuilderENtNtB7_5clone5Clone5cloneBR_.exit.i
end_hunk_0
begin_hunk_1_@_RINvMs7_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB6_7Builder10build_manyReEBa_:bb.a
  %.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn.i.i14.i, %bb.ae ], [ %i.dv, %bb.ac ], [ %i.ds, %bb.ab ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson10range_trie8NextIterEEEB1B_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.g) #21
          to label %.body.i.i.i unwind label %bb.ai, !dbg !6557, !noalias !6219

bb.ac:                                            ; preds = %bb.aa
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %.body7.i.i.i

bb.ad:                                            ; preds = %_RNvMst_NtCsj6eKBz9Db1c_4core4cellINtB5_7RefCellINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs3roNzt6HBWW_12regex_syntax4utf89Utf8RangeEE6borrowCs9GYDdpCSJ4S_14regex_automata.exit.i.i.i.i
  %i.dw = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !6592
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dw, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !6593, !noalias !6219
  store i64 0, ptr %i.f, align 8, !dbg !6592, !alias.scope !6293, !noalias !6219
    #dbg_value(ptr poison, !6358, !DIExpression(), !5630)
    #dbg_value(ptr poison, !6026, !DIExpression(), !5632)
    #dbg_value(ptr poison, !6030, !DIExpression(), !5634)
  %i.dx = load i64, ptr %i.dn, align 16, !dbg !6594, !noalias !6304, !noundef !1285
  %i.dy = add i64 %i.dx, -1, !dbg !6595
  store i64 %i.dy, ptr %i.dn, align 16, !dbg !6596, !noalias !6304
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !6597, !noalias !6304
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !6598, !noalias !6219
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 432, !dbg !6598
  invoke void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson10range_trie8NextDupeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBN_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dz)
          to label %bb.ag unwind label %bb.af, !dbg !6598, !noalias !6219

bb.ae:                                            ; preds = %bb.ah, %bb.af
  %.pn.i.i14.i = phi { ptr, i32 } [ %i.ec, %bb.ah ], [ %i.ea, %bb.af ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs3roNzt6HBWW_12regex_syntax4utf89Utf8RangeEEECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(32) %i.f) #21
          to label %.body7.i.i.i unwind label %bb.ai, !dbg !6557, !noalias !6219

bb.af:                                            ; preds = %bb.ad
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ag:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !6599, !noalias !6219
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 456, !dbg !6599
  invoke void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson10range_trie10NextInsertENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBN_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.eb)
          to label %bb.am unwind label %bb.ah, !dbg !6599, !noalias !6219

bb.ah:                                            ; preds = %bb.ag
  %i.ec = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson10range_trie8NextDupeEEB1g_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #21
          to label %bb.ae unwind label %bb.ai, !dbg !6557, !noalias !6219

bb.ai:                                            ; preds = %bb.ah, %bb.ae, %.body7.i.i.i, %.body.i.i.i, %bb.t
  %i.ed = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #22, !dbg !6600, !noalias !6219
  unreachable, !dbg !6600

bb.aj:                                            ; preds = %_RNvMst_NtCsj6eKBz9Db1c_4core4cellINtB5_7RefCellNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson10range_trie9RangeTrieE6borrowBR_.exit.i.i
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak, !dbg !6601

bb.ak:                                            ; preds = %bb.aj, %bb.t
  %eh.lpad-body.i12.i = phi { ptr, i32 } [ %i.ee, %bb.aj ], [ %.pn.pn.pn.pn.i.i.i, %bb.t ]
    #dbg_value(ptr poison, !6367, !DIExpression(), !5640)
    #dbg_value(ptr poison, !6026, !DIExpression(), !5642)
    #dbg_value(ptr poison, !6030, !DIExpression(), !5644)
  %i.ef = load i64, ptr %i.cu, align 8, !dbg !6602, !noalias !6202, !noundef !1285
  %i.eg = add i64 %i.ef, -1, !dbg !6603
  store i64 %i.eg, ptr %i.cu, align 8, !dbg !6604, !noalias !6202
  br label %.body16.i, !dbg !6605

.body16.i:                                        ; preds = %.body19.i, %bb.al, %bb.ak
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body20.i, %.body19.i ], [ %i.eh, %bb.al ], [ %eh.lpad-body.i12.i, %bb.ak ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_4cell7RefCellNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson8compiler9Utf8StateEEB14_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.r) #21
          to label %.body.i unwind label %bb.aq, !dbg !6541, !noalias !5852

bb.al:                                            ; preds = %bb.s
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %.body16.i

bb.am:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !dbg !6600, !noalias !6202
  %i.ei = getelementptr inbounds nuw i8, ptr %i.j, i64 24, !dbg !6600
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ei, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !dbg !6600, !noalias !6202
  %i.ej = getelementptr inbounds nuw i8, ptr %i.j, i64 96, !dbg !6600
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ej, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false), !dbg !6600, !noalias !6202
  %i.ek = getelementptr inbounds nuw i8, ptr %i.j, i64 128, !dbg !6600
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ek, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false), !dbg !6600, !noalias !6202
  %i.el = getelementptr inbounds nuw i8, ptr %i.j, i64 48, !dbg !6600
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.el, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !dbg !6600, !noalias !6202
  %i.em = getelementptr inbounds nuw i8, ptr %i.j, i64 72, !dbg !6600
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.em, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !6600, !noalias !6202
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !6557, !noalias !6219
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !6557, !noalias !6219
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !6557, !noalias !6219
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !6557, !noalias !6219
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !6557, !noalias !6219
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !6557, !noalias !6219
  store i64 0, ptr %i.q, align 8, !dbg !6606, !alias.scope !6148, !noalias !5852
  %i.en = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !6606
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.en, ptr noundef nonnull align 8 dereferenceable(160) %i.j, i64 160, i1 false), !dbg !6606, !noalias !5852
    #dbg_value(ptr poison, !6367, !DIExpression(), !5649)
    #dbg_value(ptr poison, !6026, !DIExpression(), !5651)
    #dbg_value(ptr poison, !6030, !DIExpression(), !5653)
  %i.eo = load i64, ptr %i.cu, align 8, !dbg !6607, !noalias !6202, !noundef !1285
  %i.ep = add i64 %i.eo, -1, !dbg !6608
  store i64 %i.ep, ptr %i.cu, align 8, !dbg !6609, !noalias !6202
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !6610
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 544, !dbg !6611 ; 6 uses
    #dbg_value(ptr %i.eq, !6373, !DIExpression(), !5659)
    #dbg_declare(ptr %i.a, !6377, !DIExpression(), !5662)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !6612, !noalias !6382
    #dbg_value(ptr %i.eq, !6383, !DIExpression(), !5671)
    #dbg_value(ptr %i.eq, !6397, !DIExpression(), !5680)
    #dbg_declare(ptr poison, !6395, !DIExpression(), !5681)
    #dbg_value(i64 1, !6415, !DIExpression(), !5687)
    #dbg_value(ptr %i.eq, !6418, !DIExpression(), !5688)
    #dbg_value(ptr %i.eq, !6421, !DIExpression(), !5691)
    #dbg_value(ptr %i.eq, !6423, !DIExpression(), !5694)
  %i.er = load i64, ptr %i.eq, align 16, !dbg !6613, !noalias !6382, !noundef !1285 ; 2 uses
    #dbg_value(i64 %i.er, !6416, !DIExpression(), !5687)
    #dbg_value(i64 %i.er, !6419, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !5695)
    #dbg_value(i64 %i.er, !6426, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !5698)
    #dbg_value(i64 %i.er, !6424, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !5694)
  %i.es = icmp ult i64 %i.er, 9223372036854775807, !dbg !6614
  br i1 %i.es, label %_RNvMst_NtCsj6eKBz9Db1c_4core4cellINtB5_7RefCellNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3map13Utf8SuffixMapE6borrowBR_.exit.i.i, label %bb.an, !dbg !6615, !prof !2658

bb.an:                                            ; preds = %bb.am
  invoke void @_RNvNtCsj6eKBz9Db1c_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @116) #20
          to label %.noexc18.i unwind label %bb.ap, !dbg !6616, !noalias !5852

.noexc18.i:                                       ; preds = %bb.an
  unreachable, !dbg !6616

_RNvMst_NtCsj6eKBz9Db1c_4core4cellINtB5_7RefCellNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3map13Utf8SuffixMapE6borrowBR_.exit.i.i: ; preds = %bb.am
  %i.et = add nuw nsw i64 %i.er, 1, !dbg !6617
    #dbg_value(i64 %i.et, !6419, !DIExpression(), !5695)
    #dbg_value(i64 %i.et, !6426, !DIExpression(), !5698)
    #dbg_value(i64 %i.et, !6424, !DIExpression(), !5694)
  store i64 %i.et, ptr %i.eq, align 16, !dbg !6618, !noalias !6382
    #dbg_value(ptr %i.eq, !6412, !DIExpression(), !5701)
    #dbg_value(ptr %i.eq, !6429, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !5704)
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 552, !dbg !6619
  call void @llvm.experimental.noalias.scope.decl(metadata !6435), !dbg !6620
  call void @llvm.experimental.noalias.scope.decl(metadata !6436), !dbg !6620
    #dbg_value(ptr %i.eu, !6438, !DIExpression(), !5710)
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 584, !dbg !6621
  %i.ew = load i16, ptr %i.ev, align 8, !dbg !6621, !alias.scope !6436, !noalias !6443, !noundef !1285
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 576, !dbg !6622
  %i.ey = load i64, ptr %i.ex, align 16, !dbg !6622, !alias.scope !6436, !noalias !6443, !noundef !1285
  invoke void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3map15Utf8SuffixEntryENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBN_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.eu)
          to label %bb.as unwind label %bb.ao, !dbg !6623, !noalias !6382

bb.ao:                                            ; preds = %_RNvMst_NtCsj6eKBz9Db1c_4core4cellINtB5_7RefCellNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3map13Utf8SuffixMapE6borrowBR_.exit.i.i
  %i.ez = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !6445, !DIExpression(), !5713)
    #dbg_value(ptr poison, !6026, !DIExpression(), !5715)
    #dbg_value(ptr poison, !6030, !DIExpression(), !5717)
  %i.fa = load i64, ptr %i.eq, align 16, !dbg !6624, !noalias !6382, !noundef !1285
  %i.fb = add i64 %i.fa, -1, !dbg !6625
  store i64 %i.fb, ptr %i.eq, align 16, !dbg !6626, !noalias !6382
  br label %.body19.i, !dbg !6627

bb.ap:                                            ; preds = %bb.an
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %.body19.i, !dbg !6541

.body19.i:                                        ; preds = %bb.ap, %bb.ao
  %eh.lpad-body20.i = phi { ptr, i32 } [ %i.fc, %bb.ap ], [ %i.ez, %bb.ao ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_4cell7RefCellNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson10range_trie9RangeTrieEEB14_(ptr noalias nofree noundef align 8 dereferenceable(168) %i.q) #21
          to label %.body16.i unwind label %bb.aq, !dbg !6541, !noalias !5852

bb.aq:                                            ; preds = %.body19.i, %.body16.i, %.body.i
  %i.fd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #22, !dbg !6628, !noalias !5852
  unreachable, !dbg !6628

bb.ar:                                            ; preds = %bb.at, %bb.as
  %i.fe = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson8compiler8CompilerEBJ_(ptr noalias nofree noundef align 8 dereferenceable(448) %i.v) #21
          to label %common.resume unwind label %bb.ba, !dbg !6629

bb.as:                                            ; preds = %_RNvMst_NtCsj6eKBz9Db1c_4core4cellINtB5_7RefCellNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3map13Utf8SuffixMapE6borrowBR_.exit.i.i
  %i.ff = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !6630
  store i16 %i.ew, ptr %i.ff, align 8, !dbg !6630, !alias.scope !6435, !noalias !6450
  %i.fg = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !6630
  store i64 %i.ey, ptr %i.fg, align 8, !dbg !6630, !alias.scope !6435, !noalias !6450
  %.sroa.4.0..sroa_idx21.i = getelementptr inbounds nuw i8, ptr %i.v, i64 408, !dbg !6628
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.0..sroa_idx21.i, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false), !dbg !6631
    #dbg_value(ptr poison, !6445, !DIExpression(), !5724)
    #dbg_value(ptr poison, !6026, !DIExpression(), !5726)
    #dbg_value(ptr poison, !6030, !DIExpression(), !5728)
  %i.fh = load i64, ptr %i.eq, align 16, !dbg !6632, !noalias !6382, !noundef !1285
  %i.fi = add i64 %i.fh, -1, !dbg !6633
  store i64 %i.fi, ptr %i.eq, align 16, !dbg !6634, !noalias !6382
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !6635, !noalias !6382
  %i.fj = getelementptr inbounds nuw i8, ptr %i.v, i64 24, !dbg !6628
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fj, ptr noundef nonnull align 4 dereferenceable(16) %i.t, i64 16, i1 false), !dbg !6628
  store i64 %.sroa.01.0.i, ptr %i.v, align 8, !dbg !6628, !alias.scope !5852
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !6628
  store i64 %.sroa.52.0.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !6628, !alias.scope !5852
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16, !dbg !6628
  store i8 %i.al, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !6628, !alias.scope !5852
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 17, !dbg !6628
  store i8 %i.an, ptr %.sroa.6.0..sroa_idx.i, align 1, !dbg !6628, !alias.scope !5852
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 18, !dbg !6628
  store i8 %i.ab, ptr %.sroa.7.0..sroa_idx.i, align 2, !dbg !6628, !alias.scope !5852
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 19, !dbg !6628
  store i8 %i.ad, ptr %.sroa.8.0..sroa_idx.i, align 1, !dbg !6628, !alias.scope !5852
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 20, !dbg !6628
  store i8 %i.ah, ptr %.sroa.9.0..sroa_idx.i, align 4, !dbg !6628, !alias.scope !5852
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 21, !dbg !6628
  store i8 %i.aj, ptr %.sroa.10.0..sroa_idx.i, align 1, !dbg !6628, !alias.scope !5852
  %i.fk = getelementptr inbounds nuw i8, ptr %i.v, i64 40, !dbg !6628
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.fk, ptr noundef nonnull align 8 dereferenceable(120) %i.s, i64 120, i1 false), !dbg !6628
  %i.fl = getelementptr inbounds nuw i8, ptr %i.v, i64 160, !dbg !6628
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.fl, ptr noundef nonnull align 8 dereferenceable(72) %i.r, i64 72, i1 false), !dbg !6628
  %i.fm = getelementptr inbounds nuw i8, ptr %i.v, i64 232, !dbg !6628
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.fm, ptr noundef nonnull align 8 dereferenceable(168) %i.q, i64 168, i1 false), !dbg !6628
  %i.fn = getelementptr inbounds nuw i8, ptr %i.v, i64 400, !dbg !6628
  store i64 0, ptr %i.fn, align 8, !dbg !6628, !alias.scope !5852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !6541, !noalias !5852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !6541, !noalias !5852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !6541, !noalias !5852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !6541
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !6636
    #dbg_value(i8 2, !6455, !DIExpression(DW_OP_LLVM_fragment, 144, 8), !6461)
    #dbg_value(i8 2, !6455, !DIExpression(DW_OP_LLVM_fragment, 152, 8), !6461)
    #dbg_value(i64 2, !6455, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6461)
    #dbg_value(i8 2, !6455, !DIExpression(DW_OP_LLVM_fragment, 160, 8), !6461)
    #dbg_value(i8 -1, !6455, !DIExpression(DW_OP_LLVM_fragment, 168, 8), !6461)
    #dbg_value(i8 0, !6455, !DIExpression(DW_OP_LLVM_fragment, 128, 8), !6461)
    #dbg_value(i8 2, !6459, !DIExpression(), !5734)
    #dbg_value(i8 2, !6455, !DIExpression(DW_OP_LLVM_fragment, 168, 8), !6461)
  store i64 2, ptr %i.u, align 8, !dbg !6637, !alias.scope !6466
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !6637
  store i8 0, ptr %.sroa.431.0..sroa_idx, align 8, !dbg !6637, !alias.scope !6466
  %.sroa.533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 18, !dbg !6637
  store i32 33686018, ptr %.sroa.533.0..sroa_idx, align 2, !dbg !6637
  %i.fo = invoke noundef nonnull align 8 ptr @_RNvMs1_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson8compilerNtB5_8Compiler9configure(ptr noalias nofree noundef nonnull align 8 dereferenceable(448) %i.v, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.u)
          to label %bb.at unwind label %bb.ar, !dbg !6638

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !6639
  invoke void @_RINvMs1_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson8compilerNtB6_8Compiler10build_manyReEBc_(ptr noalias nofree noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.w, ptr noundef nonnull align 8 %i.fo, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef %3)
          to label %bb.au unwind label %bb.ar, !dbg !6640

bb.au:                                            ; preds = %bb.at
  %i.fp = load i64, ptr %i.w, align 8, !dbg !6641, !range !6467, !noundef !1285 ; 2 uses
  %.not = icmp eq i64 %i.fp, -2, !dbg !6641
  %i.fq = getelementptr inbounds nuw i8, ptr %i.w, i64 8, !dbg !6642
  %i.fr = load ptr, ptr %i.fq, align 8, !dbg !6642 ; 4 uses
  br i1 %.not, label %bb.av, label %bb.bb, !dbg !6643

bb.av:                                            ; preds = %bb.au
    #dbg_value(ptr %i.fr, !5803, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6468)
    #dbg_value(i64 -2, !5803, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6468)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !6644
    #dbg_value(ptr %i.fr, !5770, !DIExpression(), !6469)
  store ptr %i.fr, ptr %i.x, align 8, !dbg !6645
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson8compiler8CompilerEBJ_(ptr noalias nofree noundef align 8 dereferenceable(448) %i.v)
          to label %bb.aw unwind label %bb.ay, !dbg !6629

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !6629
  call void @_RNvMs7_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_7Builder14build_from_nfa(ptr noalias nofree noundef nonnull sret([720 x i8]) align 16 captures(none) dereferenceable(720) %0, ptr noundef nonnull align 16 %1, ptr noundef nonnull %i.fr), !dbg !6646
  br label %bb.ax, !dbg !6647

bb.ax:                                            ; preds = %bb.bb, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !6648
  ret void, !dbg !6647

bb.ay:                                            ; preds = %bb.av
  %i.fs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
    #dbg_value(ptr %i.x, !2669, !DIExpression(), !5739)
    #dbg_value(ptr %i.x, !2675, !DIExpression(), !5741)
    #dbg_value(ptr %i.x, !2682, !DIExpression(), !5743)
    #dbg_value(i64 1, !2686, !DIExpression(), !5745)
    #dbg_value(i8 1, !2692, !DIExpression(), !5745)
    #dbg_value(i64 1, !2694, !DIExpression(), !5747)
    #dbg_value(i8 1, !2699, !DIExpression(), !5747)
    #dbg_value(ptr %i.fr, !2691, !DIExpression(), !5748)
    #dbg_value(ptr %i.fr, !2698, !DIExpression(), !5747)
  %i.ft = atomicrmw sub ptr %i.fr, i64 1 release, align 8, !dbg !6649, !noalias !6470
  %i.fu = icmp eq i64 %i.ft, 1, !dbg !6650
  br i1 %i.fu, label %bb.az, label %common.resume, !dbg !6650

bb.az:                                            ; preds = %bb.ay
    #dbg_value(i8 2, !2703, !DIExpression(), !5756)
  fence acquire, !dbg !6651
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa5InnerE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.x) #23
          to label %common.resume unwind label %bb.ba, !dbg !6652

bb.ba:                                            ; preds = %bb.az, %bb.ar
  %i.fv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #22, !dbg !6653
  unreachable, !dbg !6653

bb.bb:                                            ; preds = %bb.au
    #dbg_value(i64 %i.fp, !5842, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6471)
    #dbg_value(i64 %i.fp, !5808, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6472)
    #dbg_value(ptr %i.fr, !5842, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6471)
    #dbg_value(ptr %i.fr, !5808, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6472)
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16, !dbg !6654
  %.sroa.522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !6655
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %.sroa.522.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.540.0..sroa_idx, i64 112, i1 false), !dbg !6654
    #dbg_value(i64 %i.fp, !5803, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6468)
    #dbg_value(ptr %i.fr, !5803, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6468)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !6644
    #dbg_value(i64 %i.fp, !5779, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6473)
    #dbg_value(ptr %i.fr, !5779, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6473)
    #dbg_value(i64 %i.fp, !5769, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6474)
    #dbg_value(i64 %i.fp, !5774, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6475)
    #dbg_value(ptr %i.fr, !5769, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6474)
    #dbg_value(ptr %i.fr, !5774, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6475)
    #dbg_value(i64 %i.fp, !5773, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6476)
    #dbg_value(ptr %i.fr, !5773, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6476)
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !6655
  store i64 %i.fp, ptr %i.fw, align 16, !dbg !6655
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !6655
  store ptr %i.fr, ptr %.sroa.421.0..sroa_idx, align 8, !dbg !6655
  store i128 2, ptr %0, align 16, !dbg !6655
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson8compiler8CompilerEBJ_(ptr noalias nofree noundef align 8 dereferenceable(448) %i.v), !dbg !6629
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !6629
  br label %bb.ax, !dbg !6647
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs3roNzt6HBWW_12regex_syntax4utf89Utf8RangeEEECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !451 {
bb.a:
    #dbg_value(ptr %0, !2710, !DIExpression(), !6664)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !6665 ; 3 uses
    #dbg_value(ptr %i.a, !2715, !DIExpression(), !6657)
    #dbg_value(ptr %i.a, !2722, !DIExpression(), !6659)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax4utf89Utf8RangeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs3roNzt6HBWW_12regex_syntax4utf89Utf8RangeEEECs9GYDdpCSJ4S_14regex_automata.exit unwind label %bb.b, !dbg !6666

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.a, !2727, !DIExpression(), !6661)
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax4utf89Utf8RangeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtCs3roNzt6HBWW_12regex_syntax4utf89Utf8RangeEECs9GYDdpCSJ4S_14regex_automata.exit.i.i unwind label %bb.c, !dbg !6667

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #22, !dbg !6666
  unreachable, !dbg !6666

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtCs3roNzt6HBWW_12regex_syntax4utf89Utf8RangeEECs9GYDdpCSJ4S_14regex_automata.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.b, !dbg !6666

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs3roNzt6HBWW_12regex_syntax4utf89Utf8RangeEEECs9GYDdpCSJ4S_14regex_automata.exit: ; preds = %bb.a
    #dbg_value(ptr %i.a, !2727, !DIExpression(), !6663)
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax4utf89Utf8RangeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !dbg !6668
  ret void, !dbg !6665
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson10range_trie8NextIterEEEB1B_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !455 {
bb.a:
    #dbg_value(ptr %0, !2736, !DIExpression(), !6677)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !6678 ; 3 uses
    #dbg_value(ptr %i.a, !2741, !DIExpression(), !6670)
    #dbg_value(ptr %i.a, !2748, !DIExpression(), !6672)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson10range_trie8NextIterENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson10range_trie8NextIterEEEB1F_.exit unwind label %bb.b, !dbg !6679

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.a, !2753, !DIExpression(), !6674)
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson10range_trie8NextIterENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson10range_trie8NextIterEEB1n_.exit.i.i unwind label %bb.c, !dbg !6680

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #22, !dbg !6679
  unreachable, !dbg !6679

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson10range_trie8NextIterEEB1n_.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.b, !dbg !6679

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson10range_trie8NextIterEEEB1F_.exit: ; preds = %bb.a
    #dbg_value(ptr %i.a, !2753, !DIExpression(), !6676)
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson10range_trie8NextIterENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !dbg !6681
  ret void, !dbg !6678
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_4cell7RefCellNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson10range_trie9RangeTrieEEB14_(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !6682 {
bb.a:
    #dbg_value(ptr %0, !6736, !DIExpression(), !6740)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !6753 ; 3 uses
    #dbg_value(ptr %i.a, !6742, !DIExpression(), !6685)
    #dbg_value(ptr %i.a, !6749, !DIExpression(), !6688)
    #dbg_value(ptr %i.a, !2760, !DIExpression(), !6690)
end_hunk_1
begin_hunk_2_@_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4util10sparse_setNtB5_9SparseSetNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt:bb.a
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
    #dbg_value(ptr %0, !17274, !DIExpression(), !17278)
    #dbg_value(ptr %1, !17275, !DIExpression(), !17278)
    #dbg_declare(ptr %i.b, !17276, !DIExpression(), !17279)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !17377
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17280), !dbg !17378
    #dbg_value(ptr %0, !17281, !DIExpression(), !17207)
    #dbg_value(ptr %0, !17288, !DIExpression(), !17210)
    #dbg_value(i64 0, !17291, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17220)
    #dbg_value(i64 0, !17319, !DIExpression(), !17223)
    #dbg_value(ptr %0, !17315, !DIExpression(), !17224)
    #dbg_value(ptr %0, !17322, !DIExpression(), !17227)
    #dbg_value(ptr %0, !17324, !DIExpression(), !17230)
    #dbg_value(ptr %0, !17326, !DIExpression(), !17233)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !17379
  %i.d = load i64, ptr %i.c, align 8, !dbg !17379, !alias.scope !17280, !noundef !1285 ; 3 uses
    #dbg_value(i64 %i.d, !17316, !DIExpression(), !17234)
    #dbg_value(i64 %i.d, !17309, !DIExpression(), !17235)
    #dbg_value(i64 %i.d, !17303, !DIExpression(), !17236)
    #dbg_value(i64 %i.d, !17291, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17220)
    #dbg_value(i64 %i.d, !17296, !DIExpression(), !17220)
    #dbg_value(i64 %i.d, !17320, !DIExpression(), !17223)
    #dbg_value(i64 %i.d, !17328, !DIExpression(), !17244)
    #dbg_value(i64 %i.d, !17335, !DIExpression(), !17247)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !17380
  %i.f = load i64, ptr %i.e, align 8, !dbg !17380, !alias.scope !17280, !noundef !1285 ; 2 uses
    #dbg_value(ptr poison, !17308, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17235)
    #dbg_value(ptr poison, !17304, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17236)
    #dbg_value(ptr poison, !17295, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17220)
    #dbg_value(i64 %i.f, !17308, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17235)
    #dbg_value(i64 %i.f, !17304, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17236)
    #dbg_value(i64 %i.f, !17295, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17220)
  %.not.i = icmp ugt i64 %i.d, %i.f
  br i1 %.not.i, label %bb.b, label %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata4util10sparse_setNtB4_9SparseSet4iter.exit, !dbg !17381, !prof !17338

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.d, i64 noundef %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #20, !dbg !17382, !noalias !17280
  unreachable, !dbg !17382

_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata4util10sparse_setNtB4_9SparseSet4iter.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !17383
  %i.h = load ptr, ptr %i.g, align 8, !dbg !17383, !alias.scope !17280, !nonnull !1285, !noundef !1285 ; 2 uses
    #dbg_value(ptr %i.h, !17308, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17235)
    #dbg_value(ptr %i.h, !17304, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17236)
    #dbg_value(ptr %i.h, !17295, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17220)
    #dbg_value(ptr %i.h, !17333, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17254)
    #dbg_value(ptr %i.h, !17329, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17255)
    #dbg_value(i64 %i.d, !17333, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17254)
    #dbg_value(i64 %i.d, !17329, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17255)
    #dbg_value(ptr %i.h, !17330, !DIExpression(), !17256)
    #dbg_value(ptr %i.h, !17336, !DIExpression(), !17247)
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.d, !dbg !17384
    #dbg_value(ptr %i.h, !17340, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17362)
    #dbg_value(ptr %i.h, !17363, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17369)
    #dbg_value(ptr %i.h, !17371, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17376)
    #dbg_value(ptr %i.i, !17340, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17362)
    #dbg_value(ptr %i.i, !17363, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17369)
    #dbg_value(ptr %i.i, !17371, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17376)
  call void @_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDEINtB2_18SpecFromIterNestedB11_NtNtB15_10sparse_set13SparseSetIterE9from_iterB17_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i), !dbg !17385
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !17386
  invoke void @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter11debug_tuple(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @50, i64 noundef 9)
          to label %bb.d unwind label %bb.c, !dbg !17387

bb.c:                                             ; preds = %bb.e, %bb.d, %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata4util10sparse_setNtB4_9SparseSet4iter.exit
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDEEB1e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #21
          to label %common.resume unwind label %bb.i, !dbg !17388

bb.d:                                             ; preds = %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata4util10sparse_setNtB4_9SparseSet4iter.exit
  %i.k = invoke noundef nonnull align 8 ptr @_RNvMs3_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @51)
          to label %bb.e unwind label %bb.c, !dbg !17389

bb.e:                                             ; preds = %bb.d
  %i.l = invoke noundef zeroext i1 @_RNvMs3_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_10DebugTuple6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.f unwind label %bb.c, !dbg !17390

bb.f:                                             ; preds = %bb.e
    #dbg_value(ptr %i.b, !2850, !DIExpression(), !17266)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDEEB1e_.exit unwind label %bb.g, !dbg !17391

bb.g:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.b, !2857, !DIExpression(), !17268)
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.h, !dbg !17392

bb.h:                                             ; preds = %bb.g
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #22, !dbg !17391
  unreachable, !dbg !17391

common.resume:                                    ; preds = %bb.c, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.g ], [ %i.j, %bb.c ]
  resume { ptr, i32 } %common.resume.op, !dbg !17278

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDEEB1e_.exit: ; preds = %bb.f
    #dbg_value(ptr %i.b, !2857, !DIExpression(), !17270)
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b), !dbg !17393
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !17388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !17388
  ret i1 %i.l, !dbg !17394

bb.i:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #22, !dbg !17395
  unreachable, !dbg !17395
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs11_NtNtCs9GYDdpCSJ4S_14regex_automata4util10primitivesNtB6_9PatternIDNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !969 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
    #dbg_value(ptr %0, !4882, !DIExpression(), !17396)
    #dbg_value(ptr %0, !4885, !DIExpression(), !17398)
    #dbg_value(ptr %1, !4883, !DIExpression(), !17396)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !17401
  call void @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter11debug_tuple(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @52, i64 noundef 9), !dbg !17402
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !17403
    #dbg_value(ptr %0, !4890, !DIExpression(), !17400)
  %i.c = load i32, ptr %0, align 4, !dbg !17404, !noundef !1285
  store i32 %i.c, ptr %i.a, align 4, !dbg !17404
  %i.d = call noundef nonnull align 8 ptr @_RNvMs3_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @53), !dbg !17405
  %i.e = call noundef zeroext i1 @_RNvMs3_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_10DebugTuple6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d), !dbg !17406
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !17407
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !17407
  ret i1 %i.e, !dbg !17408
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1E_NtNtCs9GYDdpCSJ4S_14regex_automata4util10primitivesNtB6_12StateIDErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 !dbg !976 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_value(ptr %0, !4901, !DIExpression(), !17409)
    #dbg_value(ptr %0, !4912, !DIExpression(), !17411)
    #dbg_value(ptr %1, !4902, !DIExpression(), !17409)
    #dbg_value(ptr %1, !4918, !DIExpression(), !17413)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !17417
    #dbg_value(ptr %0, !4934, !DIExpression(), !17415)
  %i.c = load i64, ptr %0, align 8, !dbg !17418, !noundef !1285
  store i64 %i.c, ptr %i.b, align 8, !dbg !17418
    #dbg_value(ptr %i.b, !4904, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17416)
    #dbg_value(ptr @55, !4904, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17416)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !17419
  store ptr %i.b, ptr %i.a, align 8, !dbg !17419
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !17419
  store ptr @_RNvXsX_NtNtCsj6eKBz9Db1c_4core3fmt3numyNtB7_5Debug3fmt, ptr %.sroa.43.0..sroa_idx, align 8, !dbg !17419
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !17419
  store ptr @55, ptr %i.d, align 8, !dbg !17419
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !17419
  store ptr @_RNvXs1s_NtNtCs9GYDdpCSJ4S_14regex_automata4util10primitivesNtB6_7StateIDNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt, ptr %.sroa.47.0..sroa_idx, align 8, !dbg !17419
    #dbg_value(ptr @54, !4930, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17413)
    #dbg_value(ptr %i.a, !4930, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17413)
  %i.e = load ptr, ptr %1, align 8, !dbg !17420, !nonnull !1285, !noundef !1285
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !17420
  %i.g = load ptr, ptr %i.f, align 8, !dbg !17420, !nonnull !1285, !align !3651, !noundef !1285
  %i.h = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g, ptr noundef nonnull @54, ptr noundef nonnull %i.a), !dbg !17421
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !17422
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !17422
  ret i1 %i.h, !dbg !17423
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, ptr } @_RNvXs1I_NtNtCs9GYDdpCSJ4S_14regex_automata4util10primitivesINtB6_15WithStateIDIterINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtNtNtBa_3nfa8thompson12literal_trie5StateEENtNtNtNtB1p_4iter6traits8iterator8Iterator4nextBa_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !17433 {
bb.a:
    #dbg_value(ptr %0, !17478, !DIExpression(), !17484)
    #dbg_value(ptr %0, !17486, !DIExpression(), !17443)
    #dbg_value(i64 1, !17500, !DIExpression(), !17446)
  %i.a = load ptr, ptr %0, align 8, !dbg !17541, !alias.scope !17506, !nonnull !1285, !noundef !1285 ; 3 uses
    #dbg_value(ptr %i.a, !17496, !DIExpression(), !17449)
    #dbg_value(ptr %i.a, !17504, !DIExpression(), !17446)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !17542
  %i.c = load ptr, ptr %i.b, align 8, !dbg !17542, !alias.scope !17506, !nonnull !1285, !noundef !1285
    #dbg_value(ptr %i.c, !17497, !DIExpression(), !17450)
    #dbg_value(ptr poison, !17508, !DIExpression(), !17453)
    #dbg_value(ptr poison, !17511, !DIExpression(), !17454)
  %i.d = icmp eq ptr %i.a, %i.c, !dbg !17543
  br i1 %i.d, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson12literal_trie5StateENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBX_.exit.thread, label %bb.b, !dbg !17544

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 48, !dbg !17545
  store ptr %i.e, ptr %0, align 8, !dbg !17546, !alias.scope !17506
    #dbg_value(ptr %i.a, !17479, !DIExpression(), !17513)
    #dbg_value(ptr %0, !17514, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !17517)
    #dbg_value(ptr %0, !17518, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !17523)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !17547 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !dbg !17547, !noundef !1285 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !17548
  %i.i = load i64, ptr %i.h, align 8, !dbg !17548, !noundef !1285
  %.not14 = icmp ult i64 %i.g, %i.i, !dbg !17547
  br i1 %.not14, label %bb.c, label %bb.d, !dbg !17547, !prof !2658

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson12literal_trie5StateENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBX_.exit.thread: ; preds = %bb.a, %bb.c
  %.sroa.2.0 = phi ptr [ %i.a, %bb.c ], [ null, %bb.a ], !dbg !17484
  %.sroa.0.0 = phi i32 [ %i.m, %bb.c ], [ undef, %bb.a ]
  %i.j = insertvalue { i32, ptr } poison, i32 %.sroa.0.0, 0, !dbg !17549
  %i.k = insertvalue { i32, ptr } %i.j, ptr %.sroa.2.0, 1, !dbg !17549
  ret { i32, ptr } %i.k, !dbg !17549

bb.c:                                             ; preds = %bb.b
  %i.l = add nuw i64 %i.g, 1, !dbg !17550
    #dbg_value(i64 %i.l, !17519, !DIExpression(), !17524)
    #dbg_value(i64 %i.l, !17525, !DIExpression(), !17529)
    #dbg_value(ptr %0, !17526, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !17530)
    #dbg_value(i64 %i.g, !17520, !DIExpression(), !17531)
    #dbg_value(i64 %i.g, !17532, !DIExpression(), !17535)
  store i64 %i.l, ptr %i.f, align 8, !dbg !17551
  %i.m = trunc i64 %i.g to i32, !dbg !17552
    #dbg_value(i32 %i.m, !17536, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !17540)
    #dbg_value(i32 1, !17536, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !17540)
  br label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson12literal_trie5StateENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBX_.exit.thread, !dbg !17549

bb.d:                                             ; preds = %bb.b
    #dbg_value(i32 poison, !17536, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !17540)
    #dbg_value(i32 poison, !17536, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !17540)
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #20, !dbg !17553
  unreachable, !dbg !17553
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, ptr } @_RNvXs1I_NtNtCs9GYDdpCSJ4S_14regex_automata4util10primitivesINtB6_15WithStateIDIterINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtNtNtBa_3nfa8thompson3nfa5StateEENtNtNtNtB1p_4iter6traits8iterator8Iterator4nextBa_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !17563 {
bb.a:
    #dbg_value(ptr %0, !17608, !DIExpression(), !17614)
    #dbg_value(ptr %0, !17616, !DIExpression(), !17573)
    #dbg_value(i64 1, !17630, !DIExpression(), !17576)
  %i.a = load ptr, ptr %0, align 8, !dbg !17671, !alias.scope !17636, !nonnull !1285, !noundef !1285 ; 3 uses
    #dbg_value(ptr %i.a, !17626, !DIExpression(), !17579)
    #dbg_value(ptr %i.a, !17634, !DIExpression(), !17576)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !17672
  %i.c = load ptr, ptr %i.b, align 8, !dbg !17672, !alias.scope !17636, !nonnull !1285, !noundef !1285
    #dbg_value(ptr %i.c, !17627, !DIExpression(), !17580)
    #dbg_value(ptr poison, !17638, !DIExpression(), !17583)
    #dbg_value(ptr poison, !17641, !DIExpression(), !17584)
  %i.d = icmp eq ptr %i.a, %i.c, !dbg !17673
  br i1 %i.d, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa5StateENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBX_.exit.thread, label %bb.b, !dbg !17674

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !17675
  store ptr %i.e, ptr %0, align 8, !dbg !17676, !alias.scope !17636
    #dbg_value(ptr %i.a, !17609, !DIExpression(), !17643)
    #dbg_value(ptr %0, !17644, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !17647)
    #dbg_value(ptr %0, !17648, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !17653)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !17677 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !dbg !17677, !noundef !1285 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !17678
  %i.i = load i64, ptr %i.h, align 8, !dbg !17678, !noundef !1285
  %.not14 = icmp ult i64 %i.g, %i.i, !dbg !17677
  br i1 %.not14, label %bb.c, label %bb.d, !dbg !17677, !prof !2658

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa5StateENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBX_.exit.thread: ; preds = %bb.a, %bb.c
  %.sroa.2.0 = phi ptr [ %i.a, %bb.c ], [ null, %bb.a ], !dbg !17614
  %.sroa.0.0 = phi i32 [ %i.m, %bb.c ], [ undef, %bb.a ]
  %i.j = insertvalue { i32, ptr } poison, i32 %.sroa.0.0, 0, !dbg !17679
  %i.k = insertvalue { i32, ptr } %i.j, ptr %.sroa.2.0, 1, !dbg !17679
  ret { i32, ptr } %i.k, !dbg !17679

bb.c:                                             ; preds = %bb.b
  %i.l = add nuw i64 %i.g, 1, !dbg !17680
    #dbg_value(i64 %i.l, !17649, !DIExpression(), !17654)
    #dbg_value(i64 %i.l, !17655, !DIExpression(), !17659)
    #dbg_value(ptr %0, !17656, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !17660)
    #dbg_value(i64 %i.g, !17650, !DIExpression(), !17661)
    #dbg_value(i64 %i.g, !17662, !DIExpression(), !17665)
  store i64 %i.l, ptr %i.f, align 8, !dbg !17681
  %i.m = trunc i64 %i.g to i32, !dbg !17682
    #dbg_value(i32 %i.m, !17666, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !17670)
    #dbg_value(i32 1, !17666, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !17670)
  br label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa5StateENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBX_.exit.thread, !dbg !17679

bb.d:                                             ; preds = %bb.b
    #dbg_value(i32 poison, !17666, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !17670)
    #dbg_value(i32 poison, !17666, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !17670)
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #20, !dbg !17683
  unreachable, !dbg !17683
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, ptr } @_RNvXs1I_NtNtCs9GYDdpCSJ4S_14regex_automata4util10primitivesINtB6_15WithStateIDIterINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtNtNtBa_3nfa8thompson7builder5StateEENtNtNtNtB1p_4iter6traits8iterator8Iterator4nextBa_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !17693 {
bb.a:
    #dbg_value(ptr %0, !17738, !DIExpression(), !17744)
    #dbg_value(ptr %0, !17746, !DIExpression(), !17703)
    #dbg_value(i64 1, !17760, !DIExpression(), !17706)
  %i.a = load ptr, ptr %0, align 8, !dbg !17801, !alias.scope !17766, !nonnull !1285, !noundef !1285 ; 3 uses
    #dbg_value(ptr %i.a, !17756, !DIExpression(), !17709)
    #dbg_value(ptr %i.a, !17764, !DIExpression(), !17706)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !17802
  %i.c = load ptr, ptr %i.b, align 8, !dbg !17802, !alias.scope !17766, !nonnull !1285, !noundef !1285
    #dbg_value(ptr %i.c, !17757, !DIExpression(), !17710)
    #dbg_value(ptr poison, !17768, !DIExpression(), !17713)
    #dbg_value(ptr poison, !17771, !DIExpression(), !17714)
  %i.d = icmp eq ptr %i.a, %i.c, !dbg !17803
  br i1 %i.d, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson7builder5StateENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBX_.exit.thread, label %bb.b, !dbg !17804

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !17805
  store ptr %i.e, ptr %0, align 8, !dbg !17806, !alias.scope !17766
    #dbg_value(ptr %i.a, !17739, !DIExpression(), !17773)
    #dbg_value(ptr %0, !17774, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !17777)
    #dbg_value(ptr %0, !17778, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !17783)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !17807 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !dbg !17807, !noundef !1285 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !17808
  %i.i = load i64, ptr %i.h, align 8, !dbg !17808, !noundef !1285
  %.not14 = icmp ult i64 %i.g, %i.i, !dbg !17807
  br i1 %.not14, label %bb.c, label %bb.d, !dbg !17807, !prof !2658

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson7builder5StateENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBX_.exit.thread: ; preds = %bb.a, %bb.c
  %.sroa.2.0 = phi ptr [ %i.a, %bb.c ], [ null, %bb.a ], !dbg !17744
  %.sroa.0.0 = phi i32 [ %i.m, %bb.c ], [ undef, %bb.a ]
  %i.j = insertvalue { i32, ptr } poison, i32 %.sroa.0.0, 0, !dbg !17809
  %i.k = insertvalue { i32, ptr } %i.j, ptr %.sroa.2.0, 1, !dbg !17809
  ret { i32, ptr } %i.k, !dbg !17809

bb.c:                                             ; preds = %bb.b
  %i.l = add nuw i64 %i.g, 1, !dbg !17810
    #dbg_value(i64 %i.l, !17779, !DIExpression(), !17784)
    #dbg_value(i64 %i.l, !17785, !DIExpression(), !17789)
    #dbg_value(ptr %0, !17786, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !17790)
    #dbg_value(i64 %i.g, !17780, !DIExpression(), !17791)
    #dbg_value(i64 %i.g, !17792, !DIExpression(), !17795)
  store i64 %i.l, ptr %i.f, align 8, !dbg !17811
  %i.m = trunc i64 %i.g to i32, !dbg !17812
    #dbg_value(i32 %i.m, !17796, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !17800)
    #dbg_value(i32 1, !17796, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !17800)
  br label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson7builder5StateENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBX_.exit.thread, !dbg !17809

bb.d:                                             ; preds = %bb.b
    #dbg_value(i32 poison, !17796, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !17800)
    #dbg_value(i32 poison, !17796, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !17800)
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #20, !dbg !17813
  unreachable, !dbg !17813
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1d_NtNtCs9GYDdpCSJ4S_14regex_automata4util10primitivesNtB6_14PatternIDErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 !dbg !990 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_value(ptr %0, !4972, !DIExpression(), !17814)
    #dbg_value(ptr %0, !4982, !DIExpression(), !17816)
    #dbg_value(ptr %1, !4973, !DIExpression(), !17814)
    #dbg_value(ptr %1, !4987, !DIExpression(), !17818)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !17822
    #dbg_value(ptr %0, !4992, !DIExpression(), !17820)
  %i.c = load i64, ptr %0, align 8, !dbg !17823, !noundef !1285
  store i64 %i.c, ptr %i.b, align 8, !dbg !17823
    #dbg_value(ptr %i.b, !4975, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17821)
    #dbg_value(ptr @55, !4975, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17821)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !17824
  store ptr %i.b, ptr %i.a, align 8, !dbg !17824
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !17824
  store ptr @_RNvXsX_NtNtCsj6eKBz9Db1c_4core3fmt3numyNtB7_5Debug3fmt, ptr %.sroa.43.0..sroa_idx, align 8, !dbg !17824
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !17824
  store ptr @55, ptr %i.d, align 8, !dbg !17824
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !17824
  store ptr @_RNvXs11_NtNtCs9GYDdpCSJ4S_14regex_automata4util10primitivesNtB6_9PatternIDNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt, ptr %.sroa.47.0..sroa_idx, align 8, !dbg !17824
    #dbg_value(ptr @59, !4988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17818)
    #dbg_value(ptr %i.a, !4988, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17818)
  %i.e = load ptr, ptr %1, align 8, !dbg !17825, !nonnull !1285, !noundef !1285
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !17825
  %i.g = load ptr, ptr %i.f, align 8, !dbg !17825, !nonnull !1285, !align !3651, !noundef !1285
  %i.h = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g, ptr noundef nonnull @59, ptr noundef nonnull %i.a), !dbg !17826
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !17827
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !17827
  ret i1 %i.h, !dbg !17828
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRINtNtB8_6option6OptionIBx_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterEENtB6_5Debug3fmtB12_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !17829 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_value(ptr %0, !17839, !DIExpression(), !17842)
    #dbg_value(ptr %1, !17840, !DIExpression(), !17842)
  %i.b = load ptr, ptr %0, align 8, !dbg !17846, !nonnull !1285, !align !3651, !noundef !1285 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17843), !dbg !17847
    #dbg_value(ptr %i.b, !4995, !DIExpression(), !17833)
    #dbg_value(ptr %1, !4999, !DIExpression(), !17833)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !17848
  %i.d = load i8, ptr %i.c, align 8, !dbg !17848, !range !2652, !alias.scope !17843, !noalias !17844, !noundef !1285
  %.not.i = icmp eq i8 %i.d, -1, !dbg !17848
  br i1 %.not.i, label %bb.c, label %bb.b, !dbg !17848

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !17849, !noalias !17845
    #dbg_value(ptr %i.b, !5000, !DIExpression(), !17835)
  store ptr %i.b, ptr %i.a, align 8, !dbg !17849, !noalias !17845
    #dbg_value(ptr %i.a, !5000, !DIExpression(DW_OP_deref), !17835)
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @85, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @84), !dbg !17850
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !17851, !noalias !17845
  br label %_RNvXsR_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionIBy_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterEENtNtB7_3fmt5Debug3fmtBU_.exit, !dbg !17851

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @83, i64 noundef 4), !dbg !17848, !noalias !17843
  br label %_RNvXsR_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionIBy_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterEENtNtB7_3fmt5Debug3fmtBU_.exit, !dbg !17848

_RNvXsR_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionIBy_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterEENtNtB7_3fmt5Debug3fmtBU_.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i = phi i1 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  ret i1 %.sroa.0.0.in.i, !dbg !17852
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRINtNtB8_6option6OptionIBx_jEENtB6_5Debug3fmtCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !17853 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_value(ptr %0, !17863, !DIExpression(), !17868)
    #dbg_value(ptr %1, !17864, !DIExpression(), !17868)
  %i.b = load ptr, ptr %0, align 8, !dbg !17872, !nonnull !1285, !align !3651, !noundef !1285 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17869), !dbg !17873
    #dbg_value(ptr %i.b, !5002, !DIExpression(), !17857)
    #dbg_value(ptr %1, !5005, !DIExpression(), !17857)
  %i.c = load i64, ptr %i.b, align 8, !dbg !17874, !range !2651, !alias.scope !17869, !noalias !17870, !noundef !1285
  %.not.i = icmp eq i64 %i.c, 2, !dbg !17874
  br i1 %.not.i, label %bb.c, label %bb.b, !dbg !17874

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !17875, !noalias !17871
    #dbg_value(ptr %i.b, !5006, !DIExpression(), !17859)
  store ptr %i.b, ptr %i.a, align 8, !dbg !17875, !noalias !17871
    #dbg_value(ptr %i.a, !5006, !DIExpression(DW_OP_deref), !17859)
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @85, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @86), !dbg !17876
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !17877, !noalias !17871
  br label %_RNvXsR_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionIBy_jEENtNtB7_3fmt5Debug3fmtCs9GYDdpCSJ4S_14regex_automata.exit, !dbg !17877

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @83, i64 noundef 4), !dbg !17874, !noalias !17869
  br label %_RNvXsR_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionIBy_jEENtNtB7_3fmt5Debug3fmtCs9GYDdpCSJ4S_14regex_automata.exit, !dbg !17874

_RNvXsR_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionIBy_jEENtNtB7_3fmt5Debug3fmtCs9GYDdpCSJ4S_14regex_automata.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i = phi i1 [ %i.d, %bb.b ], [ %i.e, %bb.c ]
  ret i1 %.sroa.0.0.in.i, !dbg !17878
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRINtNtB8_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArceEENtB6_5Debug3fmtCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !17879 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_value(ptr %0, !17891, !DIExpression(), !17894)
    #dbg_value(ptr %1, !17892, !DIExpression(), !17894)
  %i.b = load ptr, ptr %0, align 8, !dbg !17904, !nonnull !1285, !align !3651, !noundef !1285 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17895), !dbg !17905
    #dbg_value(ptr %i.b, !17896, !DIExpression(), !17885)
    #dbg_value(ptr %1, !17899, !DIExpression(), !17885)
  %i.c = load ptr, ptr %i.b, align 8, !dbg !17906, !alias.scope !17895, !noalias !17902, !noundef !1285
  %.not.i = icmp eq ptr %i.c, null, !dbg !17906
  br i1 %.not.i, label %bb.c, label %bb.b, !dbg !17906

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !17907, !noalias !17903
    #dbg_value(ptr %i.b, !17900, !DIExpression(), !17887)
  store ptr %i.b, ptr %i.a, align 8, !dbg !17907, !noalias !17903
    #dbg_value(ptr %i.a, !17900, !DIExpression(DW_OP_deref), !17887)
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @85, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @87), !dbg !17908
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !17909, !noalias !17903
  br label %_RNvXsR_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArceEENtNtB7_3fmt5Debug3fmtCs9GYDdpCSJ4S_14regex_automata.exit, !dbg !17909

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @83, i64 noundef 4), !dbg !17906, !noalias !17895
  br label %_RNvXsR_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArceEENtNtB7_3fmt5Debug3fmtCs9GYDdpCSJ4S_14regex_automata.exit, !dbg !17906

_RNvXsR_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArceEENtNtB7_3fmt5Debug3fmtCs9GYDdpCSJ4S_14regex_automata.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i = phi i1 [ %i.d, %bb.b ], [ %i.e, %bb.c ]
  ret i1 %.sroa.0.0.in.i, !dbg !17910
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRINtNtB8_6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappers12HybridEngineENtB6_5Debug3fmtBY_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !17915 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_value(ptr %0, !17937, !DIExpression(), !17942)
    #dbg_value(ptr %1, !17938, !DIExpression(), !17942)
  %i.b = load ptr, ptr %0, align 8, !dbg !17952, !nonnull !1285, !align !3640, !noundef !1285 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17943), !dbg !17953
    #dbg_value(ptr %i.b, !17944, !DIExpression(), !17921)
    #dbg_value(ptr %1, !17947, !DIExpression(), !17921)
  %i.c = load i128, ptr %i.b, align 16, !dbg !17954, !range !5009, !alias.scope !17943, !noalias !17950, !noundef !1285
  %.not.i = icmp eq i128 %i.c, 2, !dbg !17954
  br i1 %.not.i, label %bb.c, label %bb.b, !dbg !17954

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !17955, !noalias !17951
    #dbg_value(ptr %i.b, !17948, !DIExpression(), !17923)
  store ptr %i.b, ptr %i.a, align 8, !dbg !17955, !noalias !17951
    #dbg_value(ptr %i.a, !17948, !DIExpression(DW_OP_deref), !17923)
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @85, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @88), !dbg !17956
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !17957, !noalias !17951
  br label %_RNvXsR_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappers12HybridEngineENtNtB7_3fmt5Debug3fmtBQ_.exit, !dbg !17957

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @83, i64 noundef 4), !dbg !17954, !noalias !17943
  br label %_RNvXsR_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappers12HybridEngineENtNtB7_3fmt5Debug3fmtBQ_.exit, !dbg !17954

_RNvXsR_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappers12HybridEngineENtNtB7_3fmt5Debug3fmtBQ_.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i = phi i1 [ %i.d, %bb.b ], [ %i.e, %bb.c ]
  ret i1 %.sroa.0.0.in.i, !dbg !17958
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRINtNtB8_6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappers13OnePassEngineENtB6_5Debug3fmtBY_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !17963 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_value(ptr %0, !17985, !DIExpression(), !17990)
    #dbg_value(ptr %1, !17986, !DIExpression(), !17990)
  %i.b = load ptr, ptr %0, align 8, !dbg !18001, !nonnull !1285, !align !3651, !noundef !1285 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17991), !dbg !18002
    #dbg_value(ptr %i.b, !17992, !DIExpression(), !17969)
    #dbg_value(ptr %1, !17995, !DIExpression(), !17969)
  %i.c = load i64, ptr %i.b, align 8, !dbg !18003, !range !17998, !alias.scope !17991, !noalias !17999, !noundef !1285
  %.not.i = icmp eq i64 %i.c, -1, !dbg !18003
end_hunk_2
begin_hunk_3_@_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives9PatternIDNtB6_5Debug3fmtBC_:bb.a
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
    #dbg_value(ptr %0, !18485, !DIExpression(), !18488)
    #dbg_value(ptr %1, !18486, !DIExpression(), !18488)
  %i.c = load ptr, ptr %0, align 8, !dbg !18492, !nonnull !1285, !align !5017, !noundef !1285
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18489), !dbg !18493
    #dbg_value(ptr %i.c, !4882, !DIExpression(), !18476)
    #dbg_value(ptr %i.c, !4885, !DIExpression(), !18478)
    #dbg_value(ptr %1, !4883, !DIExpression(), !18476)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !18494, !noalias !18490
  call void @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter11debug_tuple(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @52, i64 noundef 9), !dbg !18495, !noalias !18489
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !18496, !noalias !18490
    #dbg_value(ptr %i.c, !4890, !DIExpression(), !18481)
  %i.d = load i32, ptr %i.c, align 4, !dbg !18497, !alias.scope !18489, !noalias !18491, !noundef !1285
  store i32 %i.d, ptr %i.a, align 4, !dbg !18497, !noalias !18490
  %i.e = call noundef nonnull align 8 ptr @_RNvMs3_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @53), !dbg !18498, !noalias !18489
  %i.f = call noundef zeroext i1 @_RNvMs3_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_10DebugTuple6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e), !dbg !18499, !noalias !18489
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !18500, !noalias !18490
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !18500, !noalias !18490
  ret i1 %i.f, !dbg !18501
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfa3DFANtB6_5Debug3fmtBC_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !18502 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [112 x i8], align 8               ; 17 uses
    #dbg_value(ptr %0, !18516, !DIExpression(), !18520)
    #dbg_value(ptr %1, !18517, !DIExpression(), !18520)
  %i.c = load ptr, ptr %0, align 8, !dbg !18534, !nonnull !1285, !align !3640, !noundef !1285 ; 7 uses
    #dbg_value(ptr %i.c, !18521, !DIExpression(), !18507)
    #dbg_value(ptr %1, !18525, !DIExpression(), !18507)
    #dbg_value(ptr @107, !18530, !DIExpression(), !18508)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !18535, !noalias !18533
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 688, !dbg !18536
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 696, !dbg !18537
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 144, !dbg !18538
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 400, !dbg !18539
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 656, !dbg !18540
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !18541, !noalias !18533
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 704, !dbg !18541
  store ptr %i.i, ptr %i.a, align 8, !dbg !18541, !noalias !18533
  store ptr %i.c, ptr %i.b, align 8, !dbg !18535, !noalias !18533
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !18535
  store ptr @108, ptr %i.j, align 8, !dbg !18535, !noalias !18533
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !18535
  store ptr %i.d, ptr %i.k, align 8, !dbg !18535, !noalias !18533
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !18535
  store ptr @109, ptr %i.l, align 8, !dbg !18535, !noalias !18533
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !18535
  store ptr %i.e, ptr %i.m, align 8, !dbg !18535, !noalias !18533
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !18535
  store ptr @64, ptr %i.n, align 8, !dbg !18535, !noalias !18533
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !18535
  store ptr %i.f, ptr %i.o, align 8, !dbg !18535, !noalias !18533
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !18535
  store ptr @110, ptr %i.p, align 8, !dbg !18535, !noalias !18533
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 64, !dbg !18535
  store ptr %i.g, ptr %i.q, align 8, !dbg !18535, !noalias !18533
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 72, !dbg !18535
  store ptr @111, ptr %i.r, align 8, !dbg !18535, !noalias !18533
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 80, !dbg !18535
  store ptr %i.h, ptr %i.s, align 8, !dbg !18535, !noalias !18533
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 88, !dbg !18535
  store ptr @112, ptr %i.t, align 8, !dbg !18535, !noalias !18533
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 96, !dbg !18535
  store ptr %i.a, ptr %i.u, align 8, !dbg !18535, !noalias !18533
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 104, !dbg !18535
  store ptr @57, ptr %i.v, align 8, !dbg !18535, !noalias !18533
    #dbg_value(ptr %i.b, !18531, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18512)
    #dbg_value(i64 7, !18531, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18512)
  %i.w = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter26debug_struct_fields_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @113, i64 noundef 3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @107, i64 noundef 7, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.b, i64 noundef 7), !dbg !18542
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !18543, !noalias !18533
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !18543, !noalias !18533
  ret i1 %i.w, !dbg !18544
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCsl4b0cIVMtRE_12aho_corasick4util10primitives9PatternIDNtB6_5Debug3fmtCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !18545 {
bb.a:
    #dbg_value(ptr %0, !18549, !DIExpression(), !18552)
    #dbg_value(ptr %1, !18550, !DIExpression(), !18552)
  %i.a = load ptr, ptr %0, align 8, !dbg !18553, !nonnull !1285, !align !5017, !noundef !1285
  %i.b = tail call noundef zeroext i1 @_RNvXsS_NtNtCsl4b0cIVMtRE_12aho_corasick4util10primitivesNtB5_9PatternIDNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !18554
  ret i1 %i.b, !dbg !18555
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtNtCsl4b0cIVMtRE_12aho_corasick6packed5teddy7builder8SearcherNtB6_5Debug3fmtCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !18557 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_value(ptr %0, !18575, !DIExpression(), !18580)
    #dbg_value(ptr %1, !18576, !DIExpression(), !18580)
  %i.b = load ptr, ptr %0, align 8, !dbg !18589, !nonnull !1285, !align !3651, !noundef !1285 ; 3 uses
    #dbg_value(ptr %i.b, !18582, !DIExpression(), !18560)
    #dbg_value(ptr %1, !18586, !DIExpression(), !18560)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !18590
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !18591, !noalias !18588
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !18591
  store ptr %i.d, ptr %i.a, align 8, !dbg !18591, !noalias !18588
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @65, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @66, i64 noundef 3, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @63, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 12, ptr noundef nonnull readonly %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @64, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @68, i64 noundef 11, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @57), !dbg !18592
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !18593, !noalias !18588
  ret i1 %i.e, !dbg !18594
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRTNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives10SmallIndexBx_ENtB6_5Debug3fmtBD_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !18595 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
    #dbg_value(ptr %0, !18609, !DIExpression(), !18612)
    #dbg_value(ptr %1, !18610, !DIExpression(), !18612)
  %i.d = load ptr, ptr %0, align 8, !dbg !18625, !nonnull !1285, !align !5017, !noundef !1285 ; 2 uses
    #dbg_value(ptr %i.d, !18613, !DIExpression(), !18600)
    #dbg_value(ptr %1, !18616, !DIExpression(), !18600)
    #dbg_declare(ptr %i.c, !18617, !DIExpression(), !18601)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !18626, !noalias !18623
  call void @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter11debug_tuple(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0), !dbg !18627, !noalias !18624
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !18628, !noalias !18623
    #dbg_value(ptr %i.d, !18618, !DIExpression(), !18605)
  store ptr %i.d, ptr %i.b, align 8, !dbg !18628, !noalias !18623
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !18628, !noalias !18623
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4, !dbg !18628
    #dbg_value(ptr %i.e, !18619, !DIExpression(), !18605)
  store ptr %i.e, ptr %i.a, align 8, !dbg !18628, !noalias !18623
    #dbg_value(ptr %i.b, !18618, !DIExpression(DW_OP_deref), !18605)
  %i.f = call noundef nonnull align 8 ptr @_RNvMs3_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @56), !dbg !18629 ; 0 uses
    #dbg_value(ptr %i.a, !18619, !DIExpression(DW_OP_deref), !18605)
  %i.g = call noundef nonnull align 8 ptr @_RNvMs3_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @56), !dbg !18629 ; 0 uses
  %i.h = call noundef zeroext i1 @_RNvMs3_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_10DebugTuple6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c), !dbg !18630
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !18631, !noalias !18623
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !18631, !noalias !18623
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !18632, !noalias !18623
  ret i1 %i.h, !dbg !18633
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRTjNtNtNtCsl4b0cIVMtRE_12aho_corasick4util10primitives9PatternIDENtB6_5Debug3fmtCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !18634 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
    #dbg_value(ptr %0, !18648, !DIExpression(), !18651)
    #dbg_value(ptr %1, !18649, !DIExpression(), !18651)
  %i.d = load ptr, ptr %0, align 8, !dbg !18663, !nonnull !1285, !align !3651, !noundef !1285 ; 2 uses
    #dbg_value(ptr %i.d, !18652, !DIExpression(), !18639)
    #dbg_value(ptr %1, !18655, !DIExpression(), !18639)
    #dbg_declare(ptr %i.c, !18656, !DIExpression(), !18640)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !18664, !noalias !18661
  call void @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter11debug_tuple(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0), !dbg !18665, !noalias !18662
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !18666, !noalias !18661
    #dbg_value(ptr %i.d, !18657, !DIExpression(), !18644)
  store ptr %i.d, ptr %i.b, align 8, !dbg !18666, !noalias !18661
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !18666, !noalias !18661
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !18666
    #dbg_value(ptr %i.e, !18658, !DIExpression(), !18644)
  store ptr %i.e, ptr %i.a, align 8, !dbg !18666, !noalias !18661
    #dbg_value(ptr %i.b, !18657, !DIExpression(DW_OP_deref), !18644)
  %i.f = call noundef nonnull align 8 ptr @_RNvMs3_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @57), !dbg !18667 ; 0 uses
    #dbg_value(ptr %i.a, !18658, !DIExpression(DW_OP_deref), !18644)
  %i.g = call noundef nonnull align 8 ptr @_RNvMs3_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @58), !dbg !18667 ; 0 uses
  %i.h = call noundef zeroext i1 @_RNvMs3_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_10DebugTuple6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c), !dbg !18668
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !18669, !noalias !18661
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !18669, !noalias !18661
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !18670, !noalias !18661
  ret i1 %i.h, !dbg !18671
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, ptr } @_RNvXs1h_NtNtCs9GYDdpCSJ4S_14regex_automata4util10primitivesINtB6_17WithPatternIDIterINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterReEENtNtNtNtB1r_4iter6traits8iterator8Iterator4nextBa_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !18681 {
bb.a:
    #dbg_value(ptr %0, !18726, !DIExpression(), !18732)
    #dbg_value(ptr %0, !18734, !DIExpression(), !18691)
    #dbg_value(i64 1, !18748, !DIExpression(), !18694)
  %i.a = load ptr, ptr %0, align 8, !dbg !18789, !alias.scope !18754, !nonnull !1285, !noundef !1285 ; 3 uses
    #dbg_value(ptr %i.a, !18744, !DIExpression(), !18697)
    #dbg_value(ptr %i.a, !18752, !DIExpression(), !18694)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !18790
  %i.c = load ptr, ptr %i.b, align 8, !dbg !18790, !alias.scope !18754, !nonnull !1285, !noundef !1285
    #dbg_value(ptr %i.c, !18745, !DIExpression(), !18698)
    #dbg_value(ptr poison, !18756, !DIExpression(), !18701)
    #dbg_value(ptr poison, !18759, !DIExpression(), !18702)
  %i.d = icmp eq ptr %i.a, %i.c, !dbg !18791
  br i1 %i.d, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterReENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9GYDdpCSJ4S_14regex_automata.exit.thread, label %bb.b, !dbg !18792

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !18793
  store ptr %i.e, ptr %0, align 8, !dbg !18794, !alias.scope !18754
    #dbg_value(ptr %i.a, !18727, !DIExpression(), !18761)
    #dbg_value(ptr %0, !18762, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !18765)
    #dbg_value(ptr %0, !18766, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !18771)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !18795 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !dbg !18795, !noundef !1285 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !18796
  %i.i = load i64, ptr %i.h, align 8, !dbg !18796, !noundef !1285
  %.not14 = icmp ult i64 %i.g, %i.i, !dbg !18795
  br i1 %.not14, label %bb.c, label %bb.d, !dbg !18795, !prof !2658

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterReENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9GYDdpCSJ4S_14regex_automata.exit.thread: ; preds = %bb.a, %bb.c
  %.sroa.2.0 = phi ptr [ %i.a, %bb.c ], [ null, %bb.a ], !dbg !18732
  %.sroa.0.0 = phi i32 [ %i.m, %bb.c ], [ undef, %bb.a ]
  %i.j = insertvalue { i32, ptr } poison, i32 %.sroa.0.0, 0, !dbg !18797
  %i.k = insertvalue { i32, ptr } %i.j, ptr %.sroa.2.0, 1, !dbg !18797
  ret { i32, ptr } %i.k, !dbg !18797

bb.c:                                             ; preds = %bb.b
  %i.l = add nuw i64 %i.g, 1, !dbg !18798
    #dbg_value(i64 %i.l, !18767, !DIExpression(), !18772)
    #dbg_value(i64 %i.l, !18773, !DIExpression(), !18777)
    #dbg_value(ptr %0, !18774, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !18778)
    #dbg_value(i64 %i.g, !18768, !DIExpression(), !18779)
    #dbg_value(i64 %i.g, !18780, !DIExpression(), !18783)
  store i64 %i.l, ptr %i.f, align 8, !dbg !18799
  %i.m = trunc i64 %i.g to i32, !dbg !18800
    #dbg_value(i32 %i.m, !18784, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !18788)
    #dbg_value(i32 1, !18784, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !18788)
  br label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterReENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9GYDdpCSJ4S_14regex_automata.exit.thread, !dbg !18797

bb.d:                                             ; preds = %bb.b
    #dbg_value(i32 poison, !18784, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !18788)
    #dbg_value(i32 poison, !18784, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !18788)
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #20, !dbg !18801
  unreachable, !dbg !18801
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, ptr } @_RNvXs1h_NtNtCs9GYDdpCSJ4S_14regex_automata4util10primitivesINtB6_17WithPatternIDIterINtNtNtCsj6eKBz9Db1c_4core5slice4iter7IterMutTNtB6_10SmallIndexB24_EEENtNtNtNtB1r_4iter6traits8iterator8Iterator4nextBa_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !18811 {
bb.a:
    #dbg_value(ptr %0, !18856, !DIExpression(), !18862)
    #dbg_value(ptr %0, !18864, !DIExpression(), !18821)
    #dbg_value(i64 1, !18879, !DIExpression(), !18824)
  %i.a = load ptr, ptr %0, align 8, !dbg !18920, !alias.scope !18885, !nonnull !1285, !noundef !1285 ; 3 uses
    #dbg_value(ptr %i.a, !18875, !DIExpression(), !18827)
    #dbg_value(ptr %i.a, !18883, !DIExpression(), !18824)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !18921
  %i.c = load ptr, ptr %i.b, align 8, !dbg !18921, !alias.scope !18885, !nonnull !1285, !noundef !1285
    #dbg_value(ptr %i.c, !18876, !DIExpression(), !18828)
    #dbg_value(ptr poison, !18887, !DIExpression(), !18831)
    #dbg_value(ptr poison, !18890, !DIExpression(), !18832)
  %i.d = icmp eq ptr %i.a, %i.c, !dbg !18922
  br i1 %i.d, label %_RNvXs2Q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_7IterMutTNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives10SmallIndexBT_EENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBZ_.exit.thread, label %bb.b, !dbg !18923

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !18924
  store ptr %i.e, ptr %0, align 8, !dbg !18925, !alias.scope !18885
    #dbg_value(ptr %i.a, !18857, !DIExpression(), !18892)
    #dbg_value(ptr %0, !18893, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !18896)
    #dbg_value(ptr %0, !18897, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !18902)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !18926 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !dbg !18926, !noundef !1285 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !18927
  %i.i = load i64, ptr %i.h, align 8, !dbg !18927, !noundef !1285
  %.not14 = icmp ult i64 %i.g, %i.i, !dbg !18926
  br i1 %.not14, label %bb.c, label %bb.d, !dbg !18926, !prof !2658

_RNvXs2Q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_7IterMutTNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives10SmallIndexBT_EENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBZ_.exit.thread: ; preds = %bb.a, %bb.c
  %.sroa.2.0 = phi ptr [ %i.a, %bb.c ], [ null, %bb.a ], !dbg !18862
  %.sroa.0.0 = phi i32 [ %i.m, %bb.c ], [ undef, %bb.a ]
  %i.j = insertvalue { i32, ptr } poison, i32 %.sroa.0.0, 0, !dbg !18928
  %i.k = insertvalue { i32, ptr } %i.j, ptr %.sroa.2.0, 1, !dbg !18928
  ret { i32, ptr } %i.k, !dbg !18928

bb.c:                                             ; preds = %bb.b
  %i.l = add nuw i64 %i.g, 1, !dbg !18929
    #dbg_value(i64 %i.l, !18898, !DIExpression(), !18903)
    #dbg_value(i64 %i.l, !18904, !DIExpression(), !18908)
    #dbg_value(ptr %0, !18905, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !18909)
    #dbg_value(i64 %i.g, !18899, !DIExpression(), !18910)
    #dbg_value(i64 %i.g, !18911, !DIExpression(), !18914)
  store i64 %i.l, ptr %i.f, align 8, !dbg !18930
  %i.m = trunc i64 %i.g to i32, !dbg !18931
    #dbg_value(i32 %i.m, !18915, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !18919)
    #dbg_value(i32 1, !18915, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !18919)
  br label %_RNvXs2Q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_7IterMutTNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives10SmallIndexBT_EENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBZ_.exit.thread, !dbg !18928

bb.d:                                             ; preds = %bb.b
    #dbg_value(i32 poison, !18915, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !18919)
    #dbg_value(i32 poison, !18915, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !18919)
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #20, !dbg !18932
  unreachable, !dbg !18932
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives12StateIDErrorNtB6_7Display3fmtBC_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 !dbg !18933 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_value(ptr %0, !18949, !DIExpression(), !18954)
    #dbg_value(ptr %1, !18950, !DIExpression(), !18954)
  %i.c = load ptr, ptr %0, align 8, !dbg !18958, !nonnull !1285, !align !3651, !noundef !1285
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18955), !dbg !18959
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18956), !dbg !18959
    #dbg_value(ptr %i.c, !4901, !DIExpression(), !18938)
    #dbg_value(ptr %i.c, !4912, !DIExpression(), !18940)
    #dbg_value(ptr %1, !4902, !DIExpression(), !18938)
    #dbg_value(ptr %1, !4918, !DIExpression(), !18942)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !18960, !noalias !18957
    #dbg_value(ptr %i.c, !4934, !DIExpression(), !18944)
  %i.d = load i64, ptr %i.c, align 8, !dbg !18961, !alias.scope !18955, !noalias !18956, !noundef !1285
  store i64 %i.d, ptr %i.b, align 8, !dbg !18961, !noalias !18957
    #dbg_value(ptr %i.b, !4904, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18945)
    #dbg_value(ptr @55, !4904, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18945)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !18962, !noalias !18957
  store ptr %i.b, ptr %i.a, align 8, !dbg !18962, !noalias !18957
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !18962
  store ptr @_RNvXsX_NtNtCsj6eKBz9Db1c_4core3fmt3numyNtB7_5Debug3fmt, ptr %.sroa.43.0..sroa_idx.i, align 8, !dbg !18962, !noalias !18957
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !18962
  store ptr @55, ptr %i.e, align 8, !dbg !18962, !noalias !18957
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !18962
  store ptr @_RNvXs1s_NtNtCs9GYDdpCSJ4S_14regex_automata4util10primitivesNtB6_7StateIDNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8, !dbg !18962, !noalias !18957
    #dbg_value(ptr @54, !4930, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18942)
    #dbg_value(ptr %i.a, !4930, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18942)
  %i.f = load ptr, ptr %1, align 8, !dbg !18963, !alias.scope !18956, !noalias !18955, !nonnull !1285, !noundef !1285
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !18963
  %i.h = load ptr, ptr %i.g, align 8, !dbg !18963, !alias.scope !18956, !noalias !18955, !nonnull !1285, !align !3651, !noundef !1285
  %i.i = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.h, ptr noundef nonnull @54, ptr noundef nonnull %i.a), !dbg !18964, !noalias !18957
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !18965, !noalias !18957
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !18965, !noalias !18957
  ret i1 %i.i, !dbg !18966
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives14PatternIDErrorNtB6_7Display3fmtBC_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 !dbg !18967 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_value(ptr %0, !18980, !DIExpression(), !18983)
    #dbg_value(ptr %1, !18981, !DIExpression(), !18983)
  %i.c = load ptr, ptr %0, align 8, !dbg !18987, !nonnull !1285, !align !3651, !noundef !1285
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18984), !dbg !18988
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18985), !dbg !18988
    #dbg_value(ptr %i.c, !4972, !DIExpression(), !18972)
    #dbg_value(ptr %i.c, !4982, !DIExpression(), !18974)
    #dbg_value(ptr %1, !4973, !DIExpression(), !18972)
    #dbg_value(ptr %1, !4987, !DIExpression(), !18976)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !18989, !noalias !18986
    #dbg_value(ptr %i.c, !4992, !DIExpression(), !18978)
  %i.d = load i64, ptr %i.c, align 8, !dbg !18990, !alias.scope !18984, !noalias !18985, !noundef !1285
  store i64 %i.d, ptr %i.b, align 8, !dbg !18990, !noalias !18986
    #dbg_value(ptr %i.b, !4975, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18979)
    #dbg_value(ptr @55, !4975, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18979)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !18991, !noalias !18986
  store ptr %i.b, ptr %i.a, align 8, !dbg !18991, !noalias !18986
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !18991
  store ptr @_RNvXsX_NtNtCsj6eKBz9Db1c_4core3fmt3numyNtB7_5Debug3fmt, ptr %.sroa.43.0..sroa_idx.i, align 8, !dbg !18991, !noalias !18986
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !18991
  store ptr @55, ptr %i.e, align 8, !dbg !18991, !noalias !18986
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !18991
  store ptr @_RNvXs11_NtNtCs9GYDdpCSJ4S_14regex_automata4util10primitivesNtB6_9PatternIDNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8, !dbg !18991, !noalias !18986
    #dbg_value(ptr @59, !4988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18976)
    #dbg_value(ptr %i.a, !4988, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18976)
  %i.f = load ptr, ptr %1, align 8, !dbg !18992, !alias.scope !18985, !noalias !18984, !nonnull !1285, !noundef !1285
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !18992
  %i.h = load ptr, ptr %i.g, align 8, !dbg !18992, !alias.scope !18985, !noalias !18984, !nonnull !1285, !align !3651, !noundef !1285
  %i.i = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.h, ptr noundef nonnull @59, ptr noundef nonnull %i.a), !dbg !18993, !noalias !18986
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !18994, !noalias !18986
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !18994, !noalias !18986
  ret i1 %i.i, !dbg !18995
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1s_NtNtCs9GYDdpCSJ4S_14regex_automata4util10primitivesNtB6_7StateIDNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !1002 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
    #dbg_value(ptr %0, !5031, !DIExpression(), !18996)
    #dbg_value(ptr %0, !5037, !DIExpression(), !18998)
    #dbg_value(ptr %1, !5035, !DIExpression(), !18996)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !19001
  call void @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter11debug_tuple(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @62, i64 noundef 7), !dbg !19002
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !19003
    #dbg_value(ptr %0, !5042, !DIExpression(), !19000)
  %i.c = load i32, ptr %0, align 4, !dbg !19004, !noundef !1285
  store i32 %i.c, ptr %i.a, align 4, !dbg !19004
  %i.d = call noundef nonnull align 8 ptr @_RNvMs3_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @53), !dbg !19005
  %i.e = call noundef zeroext i1 @_RNvMs3_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_10DebugTuple6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d), !dbg !19006
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !19007
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !19007
  ret i1 %i.e, !dbg !19008
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs5_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid2idNtB5_11LazyStateIDNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 !dbg !19009 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_value(ptr %0, !19013, !DIExpression(), !19016)
    #dbg_value(ptr %1, !19014, !DIExpression(), !19016)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !19017
  store ptr %0, ptr %i.a, align 8, !dbg !19017
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 11, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @69), !dbg !19018
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !19019
  ret i1 %i.b, !dbg !19020
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsF_NtNtCs9GYDdpCSJ4S_14regex_automata4util8alphabetNtB5_7ByteSetNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 !dbg !19021 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_value(ptr %0, !19025, !DIExpression(), !19028)
    #dbg_value(ptr %1, !19026, !DIExpression(), !19028)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !19029
  store ptr %0, ptr %i.a, align 8, !dbg !19029
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @81, i64 noundef 7, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @82, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @80), !dbg !19030
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !19031
  ret i1 %i.b, !dbg !19032
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionIBy_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterEENtNtB7_3fmt5Debug3fmtBU_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 !dbg !996 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_value(ptr %0, !4995, !DIExpression(), !19033)
    #dbg_value(ptr %1, !4999, !DIExpression(), !19033)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !19035
  %i.c = load i8, ptr %i.b, align 8, !dbg !19035, !range !2652, !noundef !1285
  %.not = icmp eq i8 %i.c, -1, !dbg !19035
  br i1 %.not, label %bb.c, label %bb.b, !dbg !19035

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !19036
    #dbg_value(ptr %0, !5000, !DIExpression(), !19034)
  store ptr %0, ptr %i.a, align 8, !dbg !19036
    #dbg_value(ptr %i.a, !5000, !DIExpression(DW_OP_deref), !19034)
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @85, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @84), !dbg !19037
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !19038
  br label %bb.d, !dbg !19038

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @83, i64 noundef 4), !dbg !19035
  br label %bb.d, !dbg !19035

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.d, %bb.b ], [ %i.e, %bb.c ]
  ret i1 %.sroa.0.0.in, !dbg !19039
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionIBy_jEENtNtB7_3fmt5Debug3fmtCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 !dbg !998 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_value(ptr %0, !5002, !DIExpression(), !19040)
    #dbg_value(ptr %1, !5005, !DIExpression(), !19040)
  %i.b = load i64, ptr %0, align 8, !dbg !19042, !range !2651, !noundef !1285
  %.not = icmp eq i64 %i.b, 2, !dbg !19042
  br i1 %.not, label %bb.c, label %bb.b, !dbg !19042

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !19043
    #dbg_value(ptr %0, !5006, !DIExpression(), !19041)
  store ptr %0, ptr %i.a, align 8, !dbg !19043
    #dbg_value(ptr %i.a, !5006, !DIExpression(DW_OP_deref), !19041)
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @85, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @86), !dbg !19044
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !19045
  br label %bb.d, !dbg !19045

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @83, i64 noundef 4), !dbg !19042
end_hunk_3
