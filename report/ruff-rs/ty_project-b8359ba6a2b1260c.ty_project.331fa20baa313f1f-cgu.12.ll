Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_project-b8359ba6a2b1260c.ty_project.331fa20baa313f1f-cgu.12?download=true
inline.NumInlined: 972
inline.NumDeleted: 491
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 13
begin_hunk_0
@12 = private unnamed_addr constant [80 x i8] c"/rustc/8bab26f4f68e0e26f0bb7960be334d5b520ea452/library/core/src/str/pattern.rs\00", align 1
@13 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @12, [16 x i8] c"O\00\00\00\00\00\00\00\E7\05\00\00\14\00\00\00" }>, align 8
@14 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @12, [16 x i8] c"O\00\00\00\00\00\00\00\E7\05\00\00!\00\00\00" }>, align 8
@15 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @12, [16 x i8] c"O\00\00\00\00\00\00\00\DB\05\00\00!\00\00\00" }>, align 8
@16 = private unnamed_addr constant [16 x i8] c"0123456789abcdef", align 1
@17 = private unnamed_addr constant [100 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/shellexpand-3.1.2/src/funcs.rs\00", align 1
@18 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @17, [16 x i8] c"c\00\00\00\00\00\00\00\7F\01\00\00(\00\00\00" }>, align 8
@19 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @17, [16 x i8] c"c\00\00\00\00\00\00\00\81\01\00\00#\00\00\00" }>, align 8
@20 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @17, [16 x i8] c"c\00\00\00\00\00\00\00\92\01\00\00+\00\00\00" }>, align 8
@21 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @17, [16 x i8] c"c\00\00\00\00\00\00\00\E7\01\00\00\1F\00\00\00" }>, align 8
@22 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @17, [16 x i8] c"c\00\00\00\00\00\00\00\E5\01\00\00\1F\00\00\00" }>, align 8
@23 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @17, [16 x i8] c"c\00\00\00\00\00\00\00\D5\01\00\00*\00\00\00" }>, align 8
@24 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @17, [16 x i8] c"c\00\00\00\00\00\00\00\DD\01\00\004\00\00\00" }>, align 8
@25 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @17, [16 x i8] c"c\00\00\00\00\00\00\00\DE\01\00\00/\00\00\00" }>, align 8
@26 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @17, [16 x i8] c"c\00\00\00\00\00\00\00\D9\01\00\00/\00\00\00" }>, align 8
@27 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @17, [16 x i8] c"c\00\00\00\00\00\00\00\C5\01\00\004\00\00\00" }>, align 8
@28 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @17, [16 x i8] c"c\00\00\00\00\00\00\00\C6\01\00\00/\00\00\00" }>, align 8
@29 = private unnamed_addr constant [2 x i8] c":-", align 1
@30 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @17, [16 x i8] c"c\00\00\00\00\00\00\00\9E\01\00\004\00\00\00" }>, align 8
@31 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @17, [16 x i8] c"c\00\00\00\00\00\00\00\A4\01\00\002\00\00\00" }>, align 8
@32 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @17, [16 x i8] c"c\00\00\00\00\00\00\00\A9\01\00\007\00\00\00" }>, align 8
@33 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @17, [16 x i8] c"c\00\00\00\00\00\00\00\BA\01\00\00<\00\00\00" }>, align 8
@34 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @17, [16 x i8] c"c\00\00\00\00\00\00\00\BE\01\00\007\00\00\00" }>, align 8
@35 = private unnamed_addr constant [96 x i8] c"/rustc/8bab26f4f68e0e26f0bb7960be334d5b520ea452/library/core/src/slice/sort/stable/quicksort.rs\00", align 1
@36 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @35, [16 x i8] c"_\00\00\00\00\00\00\00M\00\00\00\1F\00\00\00" }>, align 8
@37 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @35, [16 x i8] c"_\00\00\00\00\00\00\00G\00\00\00\17\00\00\00" }>, align 8
@38 = private unnamed_addr constant [98 x i8] c"/rustc/8bab26f4f68e0e26f0bb7960be334d5b520ea452/library/core/src/slice/sort/unstable/quicksort.rs\00", align 1
@39 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @38, [16 x i8] c"a\00\00\00\00\00\00\00o\00\00\00\0B\00\00\00" }>, align 8
@40 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @38, [16 x i8] c"a\00\00\00\00\00\00\00\85\00\00\00\0B\00\00\00" }>, align 8
@41 = private unnamed_addr constant [1 x i8] c"~", align 1
@_RNvNCNCNvMNtCs4o81Y09oZk1_10ty_project2dbNtB8_15ProjectDatabase17salsa_memory_dumps1_0010___CALLSITE = external hidden global { ptr, { { { ptr } } }, { { { i8 } } }, { { { i8 } } }, [6 x i8] }
@_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher6EXISTS = external local_unnamed_addr global { { { i8 } } }
@_RNvCsdxG2AMukdbL_3log20MAX_LOG_LEVEL_FILTER = external local_unnamed_addr global { { { i64 } } }
@_RNvNCNCNvMNtCs4o81Y09oZk1_10ty_project2dbNtB8_15ProjectDatabase17salsa_memory_dumps2_0010___CALLSITE = external hidden global { ptr, { { { ptr } } }, { { { i8 } } }, { { { i8 } } }, [6 x i8] }
@42 = private unnamed_addr constant [18 x i8] c"interned_arguments", align 1
@_RNvNtCs3pBv9WGWlWf_12tracing_core8metadata9MAX_LEVEL = external local_unnamed_addr global { { { i64 } } }
@43 = private unnamed_addr constant [58 x i8] c"5expected `heap_size` to be provided by Salsa struct `\C0\01`\00", align 1
@44 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsl_NtCs3pBv9WGWlWf_12tracing_core5fieldNtNtCs4NRVxsYgnAr_4core3fmt9ArgumentsNtB5_5Value6record }>, align 8
@45 = private unnamed_addr constant [57 x i8] c"4expected `heap_size` to be provided by Salsa query `\C0\01`\00", align 1
@_RNvNCNKNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4pool5inner9THREAD_ID0s_023___RUST_STD_INTERNAL_VAL = external thread_local global { i64, i8, [7 x i8] }
@_RNvNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL = external thread_local global { { { [2 x i64] } }, i8, [7 x i8] }
@46 = private unnamed_addr constant [4 x i8] c"HOME", align 1
@47 = private unnamed_addr constant [91 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/wyz-0.5.1/src/comu.rs\00", align 1
@48 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @47, [16 x i8] c"Z\00\00\00\00\00\00\00'\01\00\00\02\00\00\00" }>, align 8
@49 = private unnamed_addr constant [9 x i8] c"mid > len", align 1
@50 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00", ptr @_RNvXs9_NtNtCs98D8VPWzHuM_14regex_automata3dfa9automatonNtB5_10StartErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt }>, align 8
@51 = private unnamed_addr constant [43 x i8] c"called `Result::unwrap()` on an `Err` value", align 1
@_RNvNtNtCs2AWtUsOyxgP_3std9panicking11panic_count18GLOBAL_PANIC_COUNT = external local_unnamed_addr global { { { i64 } } }
@52 = private unnamed_addr constant [38 x i8] c"crates/ty_project/src/glob/include.rs\00", align 1
@53 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @52, [16 x i8] c"%\00\00\00\00\00\00\00n\00\00\00;\00\00\00" }>, align 8
@54 = private unnamed_addr constant [97 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/bitvec-1.1.1/src/vec/api.rs\00", align 1
@55 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @54, [16 x i8] c"`\00\00\00\00\00\00\00\BF\01\00\00\03\00\00\00" }>, align 8
@56 = private unnamed_addr constant [28 x i8] c"bit-vector capacity exceeded", align 1
@57 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @54, [16 x i8] c"`\00\00\00\00\00\00\00\D3\00\00\00\05\00\00\00" }>, align 8
@58 = private unnamed_addr constant [109 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/regex-syntax-0.8.11/src/hir/interval.rs\00", align 1
@59 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @58, [16 x i8] c"l\00\00\00\00\00\00\00\87\01\00\00$\00\00\00" }>, align 8
@60 = private unnamed_addr constant ptr @_RNvYNCNKNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4pool5inner9THREAD_ID0s_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1j_6option6OptionQIB1Y_jEEEE9call_onceCs4o81Y09oZk1_10ty_project, align 8
@61 = private unnamed_addr constant [108 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/regex-automata-0.4.16/src/util/pool.rs\00", align 1
@62 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @61, [16 x i8] c"k\00\00\00\00\00\00\00^\02\00\00\1C\00\00\00" }>, align 8
@63 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @61, [16 x i8] c"k\00\00\00\00\00\00\00k\02\00\002\00\00\00" }>, align 8
@64 = private unnamed_addr constant [5 x i8] c"(?-u)", align 1
@65 = private unnamed_addr constant [34 x i8] c"a glob is a non-unicode byte regex", align 1
@66 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @52, [16 x i8] c"%\00\00\00\00\00\00\00\0A\01\00\00\0E\00\00\00" }>, align 8
@67 = private unnamed_addr constant [2 x i8] c"**", align 1
@68 = private unnamed_addr constant [6 x i8] c"\C0\03/**\00", align 1
@69 = private unnamed_addr constant [8 x i8] c"@B\0F\00\00\00\00\00", align 8
@70 = private unnamed_addr constant [91 x i8] c"&Glob expressions regex is larger than \C01 bytes, falling back to full directory traversal!\00", align 1
@_RNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4pool5inner17THREAD_ID_DROPPED = external global i64
@71 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @61, [16 x i8] c"k\00\00\00\00\00\00\00\01\03\00\00\15\00\00\00" }>, align 8
@72 = private unnamed_addr constant [100 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/salsa-0.28.2/src/table/memo.rs\00", align 1
@73 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @72, [16 x i8] c"c\00\00\00\00\00\00\00r\00\00\00\0F\00\00\00" }>, align 8
@74 = private unnamed_addr constant [108 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/regex-automata-0.4.16/src/dfa/dense.rs\00", align 1
@75 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @74, [16 x i8] c"k\00\00\00\00\00\00\00\A1\10\00\00\0C\00\00\00" }>, align 8
@_RNvNvMs4_NtNtCs4o81Y09oZk1_10ty_project4glob7includeNtB7_20IncludeFilterBuilder5build10___CALLSITE = internal global <{ ptr, [10 x i8], [6 x i8] }> <{ ptr @_RNvNvNvMs4_NtNtCs4o81Y09oZk1_10ty_project4glob7includeNtB9_20IncludeFilterBuilder5build10___CALLSITE4META, [10 x i8] c"\00\00\00\00\00\00\00\00\FF\00", [6 x i8] undef }>, align 8
@76 = private unnamed_addr constant [47 x i8] c"event crates/ty_project/src/glob/include.rs:299", align 1
@77 = private unnamed_addr constant [25 x i8] c"ty_project::glob::include", align 1
@78 = private unnamed_addr constant [7 x i8] c"message", align 1
@79 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @78, [8 x i8] c"\07\00\00\00\00\00\00\00" }>, align 8
@80 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtCs3pBv9WGWlWf_12tracing_core8callsiteNtB4_15DefaultCallsiteNtB4_8Callsite12set_interest, ptr @_RNvXs_NtCs3pBv9WGWlWf_12tracing_core8callsiteNtB4_15DefaultCallsiteNtB4_8Callsite8metadata, ptr @_RNvYNtNtCs3pBv9WGWlWf_12tracing_core8callsite15DefaultCallsiteNtB4_8Callsite15private_type_idCs4o81Y09oZk1_10ty_project }>, align 8
@81 = private unnamed_addr constant [37 x i8] c"crates/ty_project/src/glob/include.rs", align 1
@_RNvNvNvMs4_NtNtCs4o81Y09oZk1_10ty_project4glob7includeNtB9_20IncludeFilterBuilder5build10___CALLSITE4META = internal constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\03\00\00\00\00\00\00\00\01\00\00\00+\01\00\00", ptr @76, [8 x i8] c"/\00\00\00\00\00\00\00", ptr @77, [8 x i8] c"\19\00\00\00\00\00\00\00", ptr @79, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @_RNvNvMs4_NtNtCs4o81Y09oZk1_10ty_project4glob7includeNtB7_20IncludeFilterBuilder5build10___CALLSITE, ptr @80, ptr @77, [8 x i8] c"\19\00\00\00\00\00\00\00", ptr @81, [9 x i8] c"%\00\00\00\00\00\00\00\01", [7 x i8] undef }>, align 8
@82 = private unnamed_addr constant [13 x i8] c"SendError(..)", align 1
@83 = private unnamed_addr constant [19 x i8] c"error looking key '", align 1
@84 = private unnamed_addr constant [9 x i8] c"\06' up: \C0\00", align 1
@85 = private unnamed_addr constant [7 x i8] c"boolean", align 1
@86 = private unnamed_addr constant [122 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/regex-automata-0.4.16/src/nfa/thompson/range_trie.rs\00", align 1
@87 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @86, [16 x i8] c"y\00\00\00\00\00\00\00\B2\00\00\00\0A\00\00\00" }>, align 8
@88 = private unnamed_addr constant ptr @_RNvYNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs4o81Y09oZk1_10ty_project, align 8
@89 = private unnamed_addr constant [16 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16
@90 = private unnamed_addr constant <{ ptr, [24 x i8] }> <{ ptr @89, [24 x i8] zeroinitializer }>, align 8
@91 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRhNtB6_5Debug3fmtCs4o81Y09oZk1_10ty_project }>, align 8
@92 = private unnamed_addr constant [4 x i8] c"Quit", align 1
@93 = private unnamed_addr constant [4 x i8] c"byte", align 1
@94 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCs98D8VPWzHuM_14regex_automata4util6search8AnchoredNtB6_5Debug3fmtCs4o81Y09oZk1_10ty_project }>, align 8
@95 = private unnamed_addr constant [19 x i8] c"UnsupportedAnchored", align 1
@96 = private unnamed_addr constant [4 x i8] c"mode", align 1
@97 = private unnamed_addr constant [13 x i8] c"IncludeFilter", align 1
@98 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSIBC_eEEECs4o81Y09oZk1_10ty_project, [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsn_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSIBx_eEENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtCs4o81Y09oZk1_10ty_project }>, align 8
@99 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @74, [16 x i8] c"k\00\00\00\00\00\00\00~\0C\00\00\09\00\00\00" }>, align 8
@100 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @74, [16 x i8] c"k\00\00\00\00\00\00\00\95\0C\00\00\09\00\00\00" }>, align 8
@101 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @8, [16 x i8] c"w\00\00\00\00\00\00\00\CD\02\00\00\0A\00\00\00" }>, align 8
@102 = private unnamed_addr constant [45 x i8] c"invalid use of **; must be one path component", align 1
@103 = private unnamed_addr constant [37 x i8] c"unclosed character class; missing ']'", align 1
@104 = private unnamed_addr constant [23 x i8] c"invalid character range", align 1
@105 = private unnamed_addr constant [68 x i8] c"unopened alternate group; missing '{' (maybe escape '}' with '[}]'?)", align 1
@106 = private unnamed_addr constant [68 x i8] c"unclosed alternate group; missing '}' (maybe escape '{' with '[{]'?)", align 1
@107 = private unnamed_addr constant [39 x i8] c"nested alternate groups are not allowed", align 1
@108 = private unnamed_addr constant [12 x i8] c"dangling '\\'", align 1
@109 = private unnamed_addr constant [2 x i8] c"\C0\00", align 1
@110 = private unnamed_addr constant [68 x i8] c"1The parent directory operator (`..`) at position \C0\0F is not allowed\00", align 1
@111 = private unnamed_addr constant [89 x i8] c"\13Invalid character `\C0\0E` at position \C02. hint: Characters can be escaped with a backslash\00", align 1
@112 = private unnamed_addr constant [67 x i8] c"@Path separators can't be escaped, invalid character at position \C0\00", align 1
@113 = private unnamed_addr constant [47 x i8] c"\13Invalid character `\C0\17` in range at position \C0\00", align 1
@114 = private unnamed_addr constant [30 x i8] c"\1BToo many stars at position \C0\00", align 1
@115 = private unnamed_addr constant [34 x i8] c"\1FTrailing backslash at position \C0\00", align 1
@116 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRcNtB6_5Debug3fmtCs4o81Y09oZk1_10ty_project }>, align 8
@117 = private unnamed_addr constant [11 x i8] c"InvalidChar", align 1
@118 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @12, [16 x i8] c"O\00\00\00\00\00\00\00k\04\00\00$\00\00\00" }>, align 8
@119 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 1883480804971965807 to ptr), ptr inttoptr (i64 -6170572597727246856 to ptr) }>, align 8

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 0, 3) i8 @_RINvMNtNtCs4o81Y09oZk1_10ty_project4glob7includeNtB3_13IncludeFilter10match_fileRNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path10SystemPathEB7_(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(880) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 16, !nonnull !3, !noundef !3 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load i64, ptr %i.e, align 8, !noundef !3 ; 3 uses
  %i.g = icmp ult i64 %i.f, 8
  br i1 %i.g, label %bb.c, label %bb.d

bb.b:                                             ; preds = %bb.g
  resume { ptr, i32 } %lpad.phi

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_RINvMs3_Cs3AS159VDs7t_7globsetNtB6_7GlobSet8is_matchRNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path10SystemPathECs4o81Y09oZk1_10ty_project(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %spec.select = select i1 %i.h, i8 2, i8 0
  br label %bb.o

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.j = load ptr, ptr %i.i, align 16, !nonnull !3, !noundef !3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.m = tail call noundef i64 @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyjE4withNCNvMs2_NtNtNtCs98D8VPWzHuM_14regex_automata4util4pool5innerINtB19_4PoolINtNtCscdodAO9FK5_5alloc3vec3VecjEFEB2b_E3get0jECs4o81Y09oZk1_10ty_project(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @60), !noalias !26 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 2 uses
  %i.o = load atomic i64, ptr %i.n acquire, align 8, !noalias !26 ; 2 uses
  %i.p = icmp eq i64 %i.m, %i.o
  br i1 %i.p, label %bb.f, label %bb.e, !prof !4

bb.e:                                             ; preds = %bb.d
  call void @_RNvMs2_NtNtNtCs98D8VPWzHuM_14regex_automata4util4pool5innerINtB5_4PoolINtNtCscdodAO9FK5_5alloc3vec3VecjEFEB16_E8get_slowCs4o81Y09oZk1_10ty_project(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noundef nonnull align 8 %i.l, i64 noundef %i.m, i64 noundef %i.o)
  br label %_RNvMs2_NtNtNtCs98D8VPWzHuM_14regex_automata4util4pool5innerINtB5_4PoolINtNtCscdodAO9FK5_5alloc3vec3VecjEFEB16_E3getCs4o81Y09oZk1_10ty_project.exit

bb.f:                                             ; preds = %bb.d
  store atomic i64 1, ptr %i.n release, align 8, !noalias !26
  %i.q = inttoptr i64 %i.m to ptr
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.l, ptr %i.r, align 8
  store i64 1, ptr %i.b, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.q, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i8 0, ptr %i.t, align 8
  br label %_RNvMs2_NtNtNtCs98D8VPWzHuM_14regex_automata4util4pool5innerINtB5_4PoolINtNtCscdodAO9FK5_5alloc3vec3VecjEFEB16_E3getCs4o81Y09oZk1_10ty_project.exit

_RNvMs2_NtNtNtCs98D8VPWzHuM_14regex_automata4util4pool5innerINtB5_4PoolINtNtCscdodAO9FK5_5alloc3vec3VecjEFEB16_E3getCs4o81Y09oZk1_10ty_project.exit: ; preds = %bb.e, %bb.f
  %i.u = load i64, ptr %i.b, align 8, !range !5, !noundef !3
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.w = trunc nuw i64 %i.u to i1                 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !3, !align !6
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.aa = load ptr, ptr %i.v, align 8, !nonnull !3
  %.sroa.01.0 = select i1 %i.w, ptr %i.z, ptr %i.aa
  invoke void @_RINvMs3_Cs3AS159VDs7t_7globsetNtB6_7GlobSet12matches_intoRNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path10SystemPathECs4o81Y09oZk1_10ty_project(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.01.0)
          to label %bb.h unwind label %.loopexit.split-lp

.loopexit35:                                      ; preds = %bb.k
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

.loopexit.split-lp:                               ; preds = %_RNvMs2_NtNtNtCs98D8VPWzHuM_14regex_automata4util4pool5innerINtB5_4PoolINtNtCscdodAO9FK5_5alloc3vec3VecjEFEB16_E3getCs4o81Y09oZk1_10ty_project.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp, %.loopexit35
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit35 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs98D8VPWzHuM_14regex_automata4util4pool9PoolGuardINtNtCscdodAO9FK5_5alloc3vec3VecjEFEB1w_EECs4o81Y09oZk1_10ty_project(ptr noalias noundef align 8 dereferenceable(32) %i.b) #31
          to label %bb.b unwind label %bb.p

bb.h:                                             ; preds = %_RNvMs2_NtNtNtCs98D8VPWzHuM_14regex_automata4util4pool5innerINtB5_4PoolINtNtCscdodAO9FK5_5alloc3vec3VecjEFEB16_E3getCs4o81Y09oZk1_10ty_project.exit
  br i1 %i.w, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !3, !align !6, !noundef !3 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !3 ; 3 uses
  %i.af = icmp ult i64 %i.ae, 1152921504606846976
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = icmp eq i64 %i.ae, 0
  br i1 %i.ag, label %.loopexit, label %3

.thread:                                          ; preds = %bb.h
  %i.ah = load ptr, ptr %i.v, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !3 ; 3 uses
  %i.ak = icmp ult i64 %i.aj, 1152921504606846976
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = icmp eq i64 %i.aj, 0
  br i1 %i.al, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %bb.l, %.thread, %bb.i
  %.sroa.0.0 = phi i8 [ 0, %bb.i ], [ 0, %.thread ], [ 2, %bb.l ]
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs98D8VPWzHuM_14regex_automata4util4pool9PoolGuardINtNtCscdodAO9FK5_5alloc3vec3VecjEFEB1w_EECs4o81Y09oZk1_10ty_project(ptr noalias noundef align 8 dereferenceable(32) %i.b)
  br label %bb.o

3:                                                ; preds = %bb.i
  %4 = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  br label %.lr.ph

.lr.ph:                                           ; preds = %3, %.thread
  %i.am = phi i64 [ %i.ae, %3 ], [ %i.aj, %.thread ]
  %.sroa.04.0 = phi ptr [ %4, %3 ], [ %i.ah, %.thread ]
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %.idx = shl nuw nsw i64 %i.am, 3
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.idx
  %i.aq = lshr i64 %i.f, 3
  %i.ar = ptrtoint ptr %i.d to i64                ; 3 uses
  %i.as = and i64 %i.ar, -8
  %i.at = getelementptr i8, ptr %i.d, i64 %i.as
  %i.au = sub i64 0, %i.ar
  %i.av = getelementptr i8, ptr %i.at, i64 %i.au  ; 2 uses
  %i.aw = shl i64 %i.ar, 3
  %i.ax = and i64 %i.aw, 56
  %i.ay = and i64 %i.f, 7
  %i.az = or disjoint i64 %i.ax, %i.ay
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.l
  %.sroa.03.036 = phi ptr [ %i.ao, %.lr.ph ], [ %i.ba, %bb.l ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.03.036, i64 8 ; 2 uses
  %i.bb = load i64, ptr %.sroa.03.036, align 8, !noundef !3 ; 2 uses
  %i.bc = icmp ult i64 %i.bb, %i.aq
  br i1 %i.bc, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.av) ]
  %i.bd = add nuw nsw i64 %i.bb, %i.az            ; 2 uses
  %i.be = lshr i64 %i.bd, 6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !27
  store i64 %i.be, ptr %i.a, align 8, !noalias !27
  %i.bf = invoke noundef nonnull ptr @_RINvMs9_NtCs4PlFOFpHNjl_3wyz4comuINtB6_7AddressNtB6_5ConstjE8with_ptrjNCNvMs8_B6_Bv_6offset0ECs4o81Y09oZk1_10ty_project(ptr noundef nonnull readonly %i.av, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48)
          to label %bb.m unwind label %.loopexit35

bb.l:                                             ; preds = %bb.j, %bb.m
  %i.bg = icmp eq ptr %i.ba, %i.ap
  br i1 %i.bg, label %.loopexit, label %bb.j

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !27
  %.val.i = load i64, ptr %i.bf, align 8, !noalias !28, !noundef !3
  %i.bh = and i64 %i.bd, 63
  %i.bi = lshr i64 %.val.i, %i.bh
  %i.bj = trunc i64 %i.bi to i1
  br i1 %i.bj, label %bb.n, label %bb.l

bb.n:                                             ; preds = %bb.m
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs98D8VPWzHuM_14regex_automata4util4pool9PoolGuardINtNtCscdodAO9FK5_5alloc3vec3VecjEFEB1w_EECs4o81Y09oZk1_10ty_project(ptr noalias noundef align 8 dereferenceable(32) %i.b)
  br label %bb.o

bb.o:                                             ; preds = %bb.c, %bb.n, %.loopexit
  %.sroa.0.1 = phi i8 [ %spec.select, %bb.c ], [ 1, %bb.n ], [ %.sroa.0.0, %.loopexit ]
  ret i8 %.sroa.0.1

bb.p:                                             ; preds = %bb.g
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvMNtNtCs4o81Y09oZk1_10ty_project4glob7includeNtB3_13IncludeFilter15match_directoryRNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path10SystemPathEB7_(ptr noalias noundef readonly align 16 captures(none) dereferenceable(880) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 3 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [64 x i8], align 8                ; 4 uses
  %i.d = alloca [64 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.f = load i64, ptr %i.e, align 16, !range !7, !alias.scope !43, !noalias !44, !noundef !3
  %.not.i = icmp eq i64 %i.f, 2
  br i1 %.not.i, label %_RNvMNtNtCs4o81Y09oZk1_10ty_project4glob7includeNtB2_13IncludeFilter20match_directory_impl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !45
  call void @_RNvMs16_NtCs2AWtUsOyxgP_3std4pathNtB6_4Path10components(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !noalias !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !45
  call void @_RNvMs16_NtCs2AWtUsOyxgP_3std4pathNtB6_4Path10components(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0), !noalias !43
  %i.g = call noundef zeroext i1 @_RINvYNtCshFWUtO0bu8g_6camino14Utf8ComponentsNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator5eq_byB3_NCINvYB3_BG_2eqB3_E0ECs4o81Y09oZk1_10ty_project(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(64) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.c), !noalias !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !45
  br i1 %i.g, label %_RNvMNtNtCs4o81Y09oZk1_10ty_project4glob7includeNtB2_13IncludeFilter20match_directory_impl.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.i = load i8, ptr %i.h, align 16, !range !8, !alias.scope !46, !noalias !47, !noundef !3
  %i.j = icmp eq i8 %i.i, 1
  br i1 %i.j, label %_RNvXsb_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton11start_stateCs4o81Y09oZk1_10ty_project.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 840
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !46, !noalias !47, !noundef !3
  %i.m = add i64 %i.l, 2                          ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 560
  %.val24.i = load i64, ptr %i.n, align 16, !alias.scope !43, !noalias !44, !noundef !3 ; 2 uses
  %i.o = icmp ult i64 %i.m, %.val24.i
  br i1 %i.o, label %_RNvXsb_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton11start_stateCs4o81Y09oZk1_10ty_project.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.m, i64 noundef %.val24.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @75) #33, !noalias !48
  unreachable

_RNvXsb_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton11start_stateCs4o81Y09oZk1_10ty_project.exit.i: ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 552
  %.val23.i = load ptr, ptr %i.p, align 8, !alias.scope !43, !noalias !44, !nonnull !3, !noundef !3
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %.val23.i, i64 %i.m
  %i.r = load i32, ptr %i.q, align 4, !noalias !48, !noundef !3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !45
  store i32 47, ptr %i.b, align 4, !noalias !45
  %i.s = call noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCs4o81Y09oZk1_10ty_project(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1), !noalias !43
  %i.t = sext i1 %i.s to i64
  %.sroa.3.0.i = add i64 %2, %i.t                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !45
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.3.0.i
  %i.v = icmp samesign eq i64 %.sroa.3.0.i, 0
  br i1 %i.v, label %.._crit_edge_crit_edge.i, label %.lr.ph.i

_RNvXsb_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton11start_stateCs4o81Y09oZk1_10ty_project.exit.thread.i: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !45
  store i64 1, ptr %i.a, align 8, !noalias !45
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @50, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #33, !noalias !43
  unreachable

.._crit_edge_crit_edge.i:                         ; preds = %_RNvXsb_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton11start_stateCs4o81Y09oZk1_10ty_project.exit.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 168
  %.val.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !alias.scope !43, !noalias !44
  %.phi.trans.insert37.i = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.val22.pre.i = load i64, ptr %.phi.trans.insert37.i, align 16, !alias.scope !43, !noalias !44
  br label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_RNvXsb_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton11start_stateCs4o81Y09oZk1_10ty_project.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.val26.i = load i64, ptr %i.x, align 16, !alias.scope !43, !noalias !44, !noundef !3 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 168
  %.val25.i = load ptr, ptr %i.y, align 8, !alias.scope !43, !noalias !44, !nonnull !3 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %_RNvXsb_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton10next_stateCs4o81Y09oZk1_10ty_project.exit19.i, %.lr.ph.i
  %.sroa.09.033.i = phi i32 [ %i.r, %.lr.ph.i ], [ %i.aj, %_RNvXsb_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton10next_stateCs4o81Y09oZk1_10ty_project.exit19.i ]
  %.sroa.06.032.i = phi ptr [ %1, %.lr.ph.i ], [ %i.ah, %_RNvXsb_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton10next_stateCs4o81Y09oZk1_10ty_project.exit19.i ] ; 2 uses
  %i.z = load i8, ptr %.sroa.06.032.i, align 1, !alias.scope !44, !noalias !43, !noundef !3
  %i.aa = zext i8 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !alias.scope !49, !noalias !44, !noundef !3
  %i.ad = zext i32 %.sroa.09.033.i to i64
  %i.ae = zext i8 %i.ac to i64
  %i.af = add nuw nsw i64 %i.ae, %i.ad            ; 3 uses
  %i.ag = icmp ult i64 %i.af, %.val26.i
  br i1 %i.ag, label %_RNvXsb_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton10next_stateCs4o81Y09oZk1_10ty_project.exit19.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.af, i64 noundef %.val26.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #33, !noalias !43
  unreachable

_RNvXsb_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton10next_stateCs4o81Y09oZk1_10ty_project.exit19.i: ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.06.032.i, i64 1 ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.val25.i, i64 %i.af
  %i.aj = load i32, ptr %i.ai, align 4, !noalias !43, !noundef !3 ; 2 uses
  %i.ak = icmp eq ptr %i.ah, %i.u
  br i1 %i.ak, label %._crit_edge.i, label %bb.f

._crit_edge.i:                                    ; preds = %_RNvXsb_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton10next_stateCs4o81Y09oZk1_10ty_project.exit19.i, %.._crit_edge_crit_edge.i
  %.val22.i = phi i64 [ %.val22.pre.i, %.._crit_edge_crit_edge.i ], [ %.val26.i, %_RNvXsb_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton10next_stateCs4o81Y09oZk1_10ty_project.exit19.i ] ; 4 uses
  %.val.i = phi ptr [ %.val.pre.i, %.._crit_edge_crit_edge.i ], [ %.val25.i, %_RNvXsb_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton10next_stateCs4o81Y09oZk1_10ty_project.exit19.i ] ; 2 uses
  %.sroa.09.0.lcssa.in.i = phi i32 [ %i.r, %.._crit_edge_crit_edge.i ], [ %i.aj, %_RNvXsb_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton10next_stateCs4o81Y09oZk1_10ty_project.exit19.i ]
  %.sroa.09.0.lcssa.i = zext i32 %.sroa.09.0.lcssa.in.i to i64 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !50)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 439
  %i.am = load i8, ptr %i.al, align 1, !alias.scope !51, !noalias !44, !noundef !3
  %i.an = zext i8 %i.am to i64
  %i.ao = add nuw nsw i64 %i.an, 1
  %i.ap = call i32 @_RNvMNtNtCs98D8VPWzHuM_14regex_automata4util8alphabetNtB2_4Unit3eoi(i64 noundef %i.ao), !noalias !51 ; 3 uses
  %i.aq = trunc i32 %i.ap to i1
  %.sroa.54.0.extract.shift.i.i = lshr i32 %i.ap, 16
  %.sroa.43.0.extract.shift.i.i = lshr i32 %i.ap, 8
  %i.ar = and i32 %.sroa.43.0.extract.shift.i.i, 255
  %.sroa.0.0.in.i.i = select i1 %i.aq, i32 %.sroa.54.0.extract.shift.i.i, i32 %i.ar
  %.sroa.0.0.i21.i = zext nneg i32 %.sroa.0.0.in.i.i to i64
  %i.as = add nuw nsw i64 %.sroa.0.0.i21.i, %.sroa.09.0.lcssa.i ; 3 uses
  %i.at = icmp ult i64 %i.as, %.val22.i
  br i1 %i.at, label %_RNvXsb_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14next_eoi_stateCs4o81Y09oZk1_10ty_project.exit.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge.i
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.as, i64 noundef %.val22.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @100) #33, !noalias !43
  unreachable

_RNvXsb_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14next_eoi_stateCs4o81Y09oZk1_10ty_project.exit.i: ; preds = %._crit_edge.i
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 231
  %i.av = load i8, ptr %i.au, align 1, !alias.scope !52, !noalias !44, !noundef !3
  %i.aw = zext i8 %i.av to i64
  %i.ax = add nuw nsw i64 %i.aw, %.sroa.09.0.lcssa.i ; 3 uses
  %i.ay = icmp ult i64 %i.ax, %.val22.i
  br i1 %i.ay, label %_RNvXsb_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton10next_stateCs4o81Y09oZk1_10ty_project.exit.i, label %bb.i

bb.i:                                             ; preds = %_RNvXsb_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14next_eoi_stateCs4o81Y09oZk1_10ty_project.exit.i
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ax, i64 noundef %.val22.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #33, !noalias !43
  unreachable

_RNvXsb_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton10next_stateCs4o81Y09oZk1_10ty_project.exit.i: ; preds = %_RNvXsb_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14next_eoi_stateCs4o81Y09oZk1_10ty_project.exit.i
end_hunk_0
