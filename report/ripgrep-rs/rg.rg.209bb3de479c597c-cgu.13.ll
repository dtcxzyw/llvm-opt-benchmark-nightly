Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ripgrep-rs/original/rg.rg.209bb3de479c597c-cgu.13?download=true
inline.NumInlined: 887
inline.NumDeleted: 421
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvCs2NzvFoTxuAy_2rg5files0EEB20_, [16 x i8] c"`\01\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_mapINtB5_9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvCs2NzvFoTxuAy_2rg5files0ENtNtNtB9_6traits8iterator8Iterator4nextB1N_, ptr @_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_mapINtB5_9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvCs2NzvFoTxuAy_2rg5files0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1N_, ptr @_RNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvCs2NzvFoTxuAy_2rg5files0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1H_, ptr @_RNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvCs2NzvFoTxuAy_2rg5files0ENtNtNtB9_6traits8iterator8Iterator3nthB1H_ }>, align 8
@1 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackEEB1t_, [16 x i8] c" \00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB10_, ptr @_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator9size_hintB10_, ptr @_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byB10_, ptr @_RNvYINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthBU_ }>, align 8
@2 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEEENCINvMNtNtB22_5flags6hiargsNtB3I_6HiArgs4sortINtNtBG_10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB22_5files0EEs3_0EEB22_, [16 x i8] c" \00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBb_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEEENCINvMNtNtB1P_5flags6hiargsNtB3v_6HiArgs4sortINtNtB7_10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1P_5files0EEs3_0ENtNtNtB9_6traits8iterator8Iterator4nextB1P_, ptr @_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBb_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEEENCINvMNtNtB1P_5flags6hiargsNtB3v_6HiArgs4sortINtNtB7_10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1P_5files0EEs3_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1P_, ptr @_RNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBb_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEEENCINvMNtNtB1J_5flags6hiargsNtB3p_6HiArgs4sortINtNtB7_10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1J_5files0EEs3_0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1J_, ptr @_RNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBb_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEEENCINvMNtNtB1J_5flags6hiargsNtB3p_6HiArgs4sortINtNtB7_10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1J_5files0EEs3_0ENtNtNtB9_6traits8iterator8Iterator3nthB1J_ }>, align 8
@3 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvCs2NzvFoTxuAy_2rg6search0EEB20_, [16 x i8] c"`\01\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_mapINtB5_9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvCs2NzvFoTxuAy_2rg6search0ENtNtNtB9_6traits8iterator8Iterator4nextB1N_, ptr @_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_mapINtB5_9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvCs2NzvFoTxuAy_2rg6search0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1N_, ptr @_RNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvCs2NzvFoTxuAy_2rg6search0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1H_, ptr @_RNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvCs2NzvFoTxuAy_2rg6search0ENtNtNtB9_6traits8iterator8Iterator3nthB1H_ }>, align 8
@4 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEEENCINvMNtNtB22_5flags6hiargsNtB3I_6HiArgs4sortINtNtBG_10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB22_6search0EEs3_0EEB22_, [16 x i8] c" \00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBb_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEEENCINvMNtNtB1P_5flags6hiargsNtB3v_6HiArgs4sortINtNtB7_10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1P_6search0EEs3_0ENtNtNtB9_6traits8iterator8Iterator4nextB1P_, ptr @_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBb_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEEENCINvMNtNtB1P_5flags6hiargsNtB3v_6HiArgs4sortINtNtB7_10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1P_6search0EEs3_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1P_, ptr @_RNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBb_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEEENCINvMNtNtB1J_5flags6hiargsNtB3p_6HiArgs4sortINtNtB7_10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1J_6search0EEs3_0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1J_, ptr @_RNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBb_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEEENCINvMNtNtB1J_5flags6hiargsNtB3p_6HiArgs4sortINtNtB7_10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1J_6search0EEs3_0ENtNtNtB9_6traits8iterator8Iterator3nthB1J_ }>, align 8
@5 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtCsc0anycpf6TS_6ignore5ErrorNtB6_5Debug3fmtCs2NzvFoTxuAy_2rg }>, align 8
@6 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringNtB6_5Debug3fmtCs2NzvFoTxuAy_2rg }>, align 8
@7 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRhNtB6_5Debug3fmtCs2NzvFoTxuAy_2rg }>, align 8
@8 = private unnamed_addr constant [80 x i8] c"/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed/library/core/src/str/pattern.rs\00", align 1
@9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @8, [16 x i8] c"O\00\00\00\00\00\00\00A\06\00\00\14\00\00\00" }>, align 8
@10 = private unnamed_addr constant [93 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/bstr-1.13.0/src/utf8.rs\00", align 1
@11 = private unnamed_addr constant [16 x i8] c"0123456789abcdef", align 1
@12 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtB8_6option6OptionNtNtNtCs2NzvFoTxuAy_2rg5flags7lowargs11SpecialModeENtB6_5Debug3fmtBY_ }>, align 8
@_RNvNCNKNvNvMNtNtCsG258MDvU3F_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL = external thread_local global { { { [2 x i64] } }, i8, [7 x i8] }
@13 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsK_NtCskKLDkoKarTP_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt }>, align 8
@14 = private unnamed_addr constant [28 x i8] c"crates/core/flags/hiargs.rs\00", align 1
@15 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @14, [16 x i8] c"\1B\00\00\00\00\00\00\00k\03\00\00E\00\00\00" }>, align 8
@_RNvNvNtNtCsG258MDvU3F_3std2io5stdio6stderr8INSTANCE = external global { { { { { i64 } } } }, { { { { i32 } } } }, i32, i64 }
@16 = private unnamed_addr constant [4 x i8] c"rg: ", align 1
@17 = private unnamed_addr constant [4 x i8] c"\C0\01\0A\00", align 1
@18 = private unnamed_addr constant [9 x i8] c".rgignore", align 1
@19 = private unnamed_addr constant [8 x i8] c"\01\00\00\00\00\00\00\00", align 8
@20 = private unnamed_addr constant [31 x i8] c"sorting implies single threaded", align 1
@21 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @14, [16 x i8] c"\1B\00\00\00\00\00\00\00\90\03\00\00\0D\00\00\00" }>, align 8
@22 = private unnamed_addr constant [1 x i8] c"\FF", align 1
@23 = private unnamed_addr constant [37 x i8] c"special mode demands short-circuiting", align 1
@24 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @14, [16 x i8] c"\1B\00\00\00\00\00\00\00t\00\00\00\09\00\00\00" }>, align 8
@_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER = external local_unnamed_addr global { { { i64 } } }
@25 = private unnamed_addr constant [20 x i8] c"\06using \C0\0A thread(s)\00", align 1
@26 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @14, [16 x i8] c"\1B\00\00\00\00\00\00\00\AF\00\00\00\09\00\00\00" }>, align 8
@27 = private unnamed_addr constant [17 x i8] c"rg::flags::hiargs", align 1
@28 = private unnamed_addr constant [47 x i8] c"PCRE2 is not available in this build of ripgrep", align 1
@29 = private unnamed_addr constant [45 x i8] c"*error building Rust regex in hybrid mode:\0A\C0\00", align 1
@30 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @14, [16 x i8] c"\1B\00\00\00\00\00\00\00~\01\00\00\11\00\00\00" }>, align 8
@31 = private unnamed_addr constant [1 x i8] c"~", align 1
@32 = private unnamed_addr constant [152 x i8] c"mregex could not be compiled with either the default regex engine or with PCRE2.\0A\0Adefault regex engine error:\0A\C0\01\0A\C0\01\0A\C8\00\00\1C\0A\0APCRE2 regex engine error:\0A\C8\02\00\00", align 1
@33 = private unnamed_addr constant [60 x i8] c"internal error: entered unreachable code: invalid Once state", align 1
@34 = private unnamed_addr constant [87 x i8] c"/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed/library/std/src/sys/sync/once/futex.rs\00", align 1
@35 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @34, [16 x i8] c"V\00\00\00\00\00\00\00`\00\00\00\12\00\00\00" }>, align 8
@36 = private unnamed_addr constant ptr @_RNvYNCNKNvNvMNtNtCsG258MDvU3F_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB1k_6option6OptionQIB1Z_INtNtB1k_4cell4CellTyyEEEEEE9call_onceCs2NzvFoTxuAy_2rg, align 8
@37 = private unnamed_addr constant [16 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16
@38 = private unnamed_addr constant <{ ptr, [24 x i8] }> <{ ptr @37, [24 x i8] zeroinitializer }>, align 8
@39 = private unnamed_addr constant [1 x i8] c"-", align 1
@40 = private unnamed_addr constant [67 x i8] c"error reading -f/--file from stdin: stdin has already been consumed", align 1
@41 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @14, [16 x i8] c"\1B\00\00\00\00\00\00\00\E9\03\00\00(\00\00\00" }>, align 8
@42 = private unnamed_addr constant [32 x i8] c"pattern given is not valid UTF-8", align 1
@43 = private unnamed_addr constant [57 x i8] c"ripgrep requires at least one pattern to execute a search", align 1
@44 = private unnamed_addr constant [71 x i8] c"error: attempted to read patterns from stdin while also searching stdin", align 1
@45 = private unnamed_addr constant [36 x i8] c"!number of paths given to search: \C0\00", align 1
@46 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @14, [16 x i8] c"\1B\00\00\00\00\00\00\00D\04\00\00\09\00\00\00" }>, align 8
@47 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @14, [16 x i8] c"\1B\00\00\00\00\00\00\00N\04\00\009\00\00\00" }>, align 8
@48 = private unnamed_addr constant [16 x i8] c"\0Dis_one_file? \C0\00", align 1
@49 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @14, [16 x i8] c"\1B\00\00\00\00\00\00\00O\04\00\00\0D\00\00\00" }>, align 8
@50 = private unnamed_addr constant [122 x i8] c"Yusing heuristics to determine whether to read from stdin or search ./ (is_readable_stdin=\C0\11, stdin_consumed=\C0\07, mode=\C0\01)\00", align 1
@51 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @14, [16 x i8] c"\1B\00\00\00\00\00\00\00]\04\00\00\09\00\00\00" }>, align 8
@52 = private unnamed_addr constant [31 x i8] c"heuristic chose to search stdin", align 1
@53 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @14, [16 x i8] c"\1B\00\00\00\00\00\00\00j\04\00\00\0D\00\00\00" }>, align 8
@54 = private unnamed_addr constant [28 x i8] c"heuristic chose to search ./", align 1
@55 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @14, [16 x i8] c"\1B\00\00\00\00\00\00\00g\04\00\00\0D\00\00\00" }>, align 8
@56 = private unnamed_addr constant [30 x i8] c"\1Bread CWD from environment: \C0\00", align 1
@57 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @14, [16 x i8] c"\1B\00\00\00\00\00\00\00\BA\03\00\00\09\00\00\00" }>, align 8
@58 = private unnamed_addr constant [256 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\08\08\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\0A\03\03\03\03\03\03\03\03\03\03\03\03\04\03\03\0B\06\06\06\05\08\08\08\08\08\08\08\08\08\08\08", align 1
@59 = private unnamed_addr constant [108 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\0C\00\18$<`T\00\00\000H\00\0C\00\00\00\00\00\0C\00\0C\00\00\00\18\00\00\00\00\00\18\00\18\00\00\00\00\00\00\00\00\00\18\00\00\00\00\00\18\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\00\00$\00$\00\00\00$\00\00\00\00\00$\00$\00\00\00$\00\00\00\00\00\00\00\00\00\00", align 1
@60 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"\\\00\00\00\00\00\00\00O\03\00\00\0E\00\00\00" }>, align 8
@61 = private unnamed_addr constant [15 x i8] c"WSL_DISTRO_NAME", align 1
@62 = private unnamed_addr constant [8 x i8] c"\05wsl$/\C0\00", align 1
@63 = private unnamed_addr constant [50 x i8] c"\16found WSL_DISTRO_NAME=\C0\18, but value is not UTF-8\00", align 1
@64 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @14, [16 x i8] c"\1B\00\00\00\00\00\00\00\80\05\00\00\09\00\00\00" }>, align 8
@65 = private unnamed_addr constant [3 x i8] c"PWD", align 1
@66 = private unnamed_addr constant [71 x i8] c")failed to get current working directory: \C0\1A\0Adid your CWD get deleted?\00", align 1
@67 = private unnamed_addr constant [21 x i8] c"pattern contains \22\\0\22", align 1
@68 = private unnamed_addr constant [152 x i8] c"\C0\80\93\00\0A\0AConsider enabling text mode with the --text flag (or -a for short). Otherwise,\0Abinary detection is enabled and matching a NUL byte is impossible.\00", align 1
@69 = private unnamed_addr constant [43 x i8] c"\0Dgot hostname \C0\1A, but it's not valid UTF-8\00", align 1
@70 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @14, [16 x i8] c"\1B\00\00\00\00\00\00\00h\05\00\00\09\00\00\00" }>, align 8
@71 = private unnamed_addr constant [27 x i8] c"\18could not get hostname: \C0\00", align 1
@72 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @14, [16 x i8] c"\1B\00\00\00\00\00\00\00c\05\00\00\0D\00\00\00" }>, align 8
@73 = private unnamed_addr constant [11 x i8] c"the literal", align 1
@74 = private unnamed_addr constant [11 x i8] c"not allowed", align 1
@75 = private unnamed_addr constant [152 x i8] c"\C0\80\93\00\0A\0AConsider enabling multiline mode with the --multiline flag (or -U for short).\0AWhen multiline mode is enabled, new line characters can be matched.\00", align 1
@76 = private unnamed_addr constant [47 x i8] c",found hostname for hyperlink configuration: \C0\00", align 1
@77 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @14, [16 x i8] c"\1B\00\00\00\00\00\00\00\FE\04\00\00\09\00\00\00" }>, align 8
@78 = private unnamed_addr constant [49 x i8] c".found wsl_prefix for hyperlink configuration: \C0\00", align 1
@79 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @14, [16 x i8] c"\1B\00\00\00\00\00\00\00\02\05\00\00\09\00\00\00" }>, align 8
@80 = private unnamed_addr constant [21 x i8] c"\12hyperlink format: \C0\00", align 1
@81 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @14, [16 x i8] c"\1B\00\00\00\00\00\00\00\08\05\00\00\05\00\00\00" }>, align 8
@82 = private unnamed_addr constant [118 x i8] c"\15output from command '\C0]' is empty after trimming leading and trailing whitespace (falling back to platform hostname)\00", align 1
@83 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @14, [16 x i8] c"\1B\00\00\00\00\00\00\00Q\05\00\00\09\00\00\00" }>, align 8
@84 = private unnamed_addr constant [96 x i8] c"$failed to read output from command '\C07' to get hostname (falling back to platform hostname): \C0\00", align 1
@85 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @14, [16 x i8] c"\1B\00\00\00\00\00\00\00H\05\00\00\0D\00\00\00" }>, align 8
@86 = private unnamed_addr constant [85 x i8] c"\19failed to spawn command '\C07' to get hostname (falling back to platform hostname): \C0\00", align 1
@87 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @14, [16 x i8] c"\1B\00\00\00\00\00\00\00>\05\00\00\0D\00\00\00" }>, align 8
@88 = private unnamed_addr constant [83 x i8] c"\17failed to run command '\C07' to get hostname (falling back to platform hostname): \C0\00", align 1
@89 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @14, [16 x i8] c"\1B\00\00\00\00\00\00\002\05\00\00\0D\00\00\00" }>, align 8
@_RNvNtNtNtCskKLDkoKarTP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP = external local_unnamed_addr global [256 x i8]
@90 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"\\\00\00\00\00\00\00\00\E2\00\00\00\1B\00\00\00" }>, align 8
@91 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsc0anycpf6TS_6ignore5ErrorENtB6_5Debug3fmtCs2NzvFoTxuAy_2rg }>, align 8
@92 = private unnamed_addr constant [7 x i8] c"Partial", align 1
@93 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsX_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_5Debug3fmt }>, align 8
@94 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsc0anycpf6TS_6ignore5ErrorENtB6_5Debug3fmtCs2NzvFoTxuAy_2rg }>, align 8
@95 = private unnamed_addr constant [14 x i8] c"WithLineNumber", align 1
@96 = private unnamed_addr constant [4 x i8] c"line", align 1
@97 = private unnamed_addr constant [3 x i8] c"err", align 1
@98 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs2NzvFoTxuAy_2rg, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsG_NtCsG258MDvU3F_3std4pathNtB5_7PathBufNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt }>, align 8
@99 = private unnamed_addr constant [8 x i8] c"WithPath", align 1
@100 = private unnamed_addr constant [4 x i8] c"path", align 1
@101 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsZ_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_5Debug3fmt }>, align 8
@102 = private unnamed_addr constant [9 x i8] c"WithDepth", align 1
@103 = private unnamed_addr constant [5 x i8] c"depth", align 1
@104 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsG258MDvU3F_3std4path7PathBufNtB6_5Debug3fmtCs2NzvFoTxuAy_2rg }>, align 8
@105 = private unnamed_addr constant [4 x i8] c"Loop", align 1
@106 = private unnamed_addr constant [8 x i8] c"ancestor", align 1
@107 = private unnamed_addr constant [5 x i8] c"child", align 1
@108 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_2io5error5ErrorNtB6_5Debug3fmtCs2NzvFoTxuAy_2rg }>, align 8
@109 = private unnamed_addr constant [2 x i8] c"Io", align 1
@110 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs2NzvFoTxuAy_2rg, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtB7_3fmt5Debug3fmtCs2NzvFoTxuAy_2rg }>, align 8
@111 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsexYYUdYSQU6_5alloc6string6StringNtB6_5Debug3fmtCs2NzvFoTxuAy_2rg }>, align 8
@112 = private unnamed_addr constant [4 x i8] c"Glob", align 1
@113 = private unnamed_addr constant [4 x i8] c"glob", align 1
@114 = private unnamed_addr constant [20 x i8] c"UnrecognizedFileType", align 1
@115 = private unnamed_addr constant [17 x i8] c"InvalidDefinition", align 1
@116 = private unnamed_addr constant [26 x i8] c"crates/ignore/src/walk.rs\00", align 1
@117 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @116, [16 x i8] c"\19\00\00\00\00\00\00\00\98\04\00\00*\00\00\00" }>, align 8
@118 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @116, [16 x i8] c"\19\00\00\00\00\00\00\00\8F\04\00\000\00\00\00" }>, align 8
@119 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs2NzvFoTxuAy_2rg, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_str, ptr @_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char, ptr @_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCs2NzvFoTxuAy_2rg }>, align 8
@120 = private unnamed_addr constant [55 x i8] c"a Display implementation returned an error unexpectedly", align 1
@121 = private unnamed_addr constant [76 x i8] c"/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed/library/alloc/src/string.rs\00", align 1
@122 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @121, [16 x i8] c"K\00\00\00\00\00\00\00\9A\0B\00\00\0E\00\00\00" }>, align 8
@123 = private unnamed_addr constant [5 x i8] c"Error", align 1
@124 = private unnamed_addr constant [4 x i8] c"None", align 1
@125 = private unnamed_addr constant [4 x i8] c"Some", align 1
@126 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCs2NzvFoTxuAy_2rg5flags7lowargs11SpecialModeNtB6_5Debug3fmtBC_ }>, align 8
@127 = private unnamed_addr constant [1 x i8] c"\22", align 1
@128 = private unnamed_addr constant [2 x i8] c"\\0", align 1
@129 = private unnamed_addr constant [2 x i8] c"\C0\00", align 1
@130 = private unnamed_addr constant [94 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/bstr-1.13.0/src/impls.rs\00", align 1
@131 = private unnamed_addr constant [11 x i8] c"\02\\x\C3 \00\00i\02\00\00", align 1
@132 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @130, [16 x i8] c"]\00\00\00\00\00\00\00\14\02\00\00)\00\00\00" }>, align 8
@133 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCs2NzvFoTxuAy_2rg5flags7lowargs10SearchModeNtB6_5Debug3fmtBC_ }>, align 8
@134 = private unnamed_addr constant [6 x i8] c"Search", align 1
@135 = private unnamed_addr constant [5 x i8] c"Files", align 1
@136 = private unnamed_addr constant [5 x i8] c"Types", align 1
@137 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCs2NzvFoTxuAy_2rg5flags7lowargs12GenerateModeNtB6_5Debug3fmtBC_ }>, align 8
@138 = private unnamed_addr constant [8 x i8] c"Generate", align 1
@139 = private unnamed_addr constant [2 x i8] c"()", align 1
@140 = private unnamed_addr constant [5 x i8] c"\1B]8;;", align 1
@141 = private unnamed_addr constant [2 x i8] c"\1B\\", align 1
@142 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @8, [16 x i8] c"O\00\00\00\00\00\00\00|\04\00\00$\00\00\00" }>, align 8
@143 = private unnamed_addr constant [28 x i8] c"failed to write whole buffer", align 1
@144 = private unnamed_addr constant <{ ptr, [9 x i8], [7 x i8] }> <{ ptr @143, [9 x i8] c"\1C\00\00\00\00\00\00\00\17", [7 x i8] undef }>, align 8
@145 = private unnamed_addr constant [77 x i8] c"/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed/library/core/src/io/write.rs\00", align 1
@146 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @145, [16 x i8] c"L\00\00\00\00\00\00\00\DC\00\00\00$\00\00\00" }>, align 8

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i64 1, 0) i64 @_RINvMNtCskKLDkoKarTP_4core6resultINtB3_6ResultINtNtNtB5_3num7nonzero7NonZerojENtNtNtB5_2io5error5ErrorE6map_orjNCNvMNtNtCs2NzvFoTxuAy_2rg5flags6hiargsNtB1Q_6HiArgs13from_low_args0EB1U_(i64 noundef range(i64 0, 2) %0, ptr noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !790 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.c = trunc nuw i64 %0 to i1, !dbg !809
  br i1 %i.c, label %bb.b, label %bb.e, !dbg !809

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !810
  %i.d = and i64 %i.b, 3, !dbg !811
  switch i64 %i.d, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtB4_3num7nonzero7NonZerojENtNtNtB4_2io5error5ErrorEECs2NzvFoTxuAy_2rg.exit
    i64 3, label %bb.c
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtB4_3num7nonzero7NonZerojENtNtNtB4_2io5error5ErrorEECs2NzvFoTxuAy_2rg.exit
    i64 1, label %bb.d
  ], !dbg !812, !prof !423

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.e = icmp ult ptr %1, inttoptr (i64 188978561024 to ptr), !dbg !813
  %i.f = and i64 %i.b, 1095216660480, !dbg !814
  %i.g = icmp ne i64 %i.f, 1095216660480, !dbg !814
  tail call void @llvm.assume(i1 %i.e), !dbg !815
  tail call void @llvm.assume(i1 %i.g), !dbg !815
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtB4_3num7nonzero7NonZerojENtNtNtB4_2io5error5ErrorEECs2NzvFoTxuAy_2rg.exit, !dbg !816

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %1, i64 -1, !dbg !817 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ], !dbg !818
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !819 ; 2 uses
  store ptr %i.h, ptr %i.i, align 8, !dbg !819, !alias.scope !808
  store i8 3, ptr %i.a, align 8, !dbg !820, !alias.scope !808
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i), !dbg !821
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtB4_3num7nonzero7NonZerojENtNtNtB4_2io5error5ErrorEECs2NzvFoTxuAy_2rg.exit, !dbg !822

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtB4_3num7nonzero7NonZerojENtNtNtB4_2io5error5ErrorEECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.b, %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !823
  br label %bb.e, !dbg !824

bb.e:                                             ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtB4_3num7nonzero7NonZerojENtNtNtB4_2io5error5ErrorEECs2NzvFoTxuAy_2rg.exit
  %.sroa.0.010 = phi i64 [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtB4_3num7nonzero7NonZerojENtNtNtB4_2io5error5ErrorEECs2NzvFoTxuAy_2rg.exit ], [ %i.b, %bb.a ]
  ret i64 %.sroa.0.010, !dbg !825
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtCs2NzvFoTxuAy_2rg5flags6hiargsNtB3_6HiArgs13search_workerNtCs6Ur84ob3I15_9termcolor6BufferEB7_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([816 x i8]) align 8 captures(none) dereferenceable(816) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(944) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(104) %2, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(264) %3, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(240) %4) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !826 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.0 = alloca [80 x i8], align 8            ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [240 x i8], align 8               ; 4 uses
  %i.g = alloca [264 x i8], align 8               ; 4 uses
  %i.h = alloca [104 x i8], align 8               ; 4 uses
  %i.i = alloca [816 x i8], align 8               ; 4 uses
  %i.j = alloca [104 x i8], align 8               ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 5 uses
  %i.l = alloca [144 x i8], align 8               ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !903
  invoke void @_RNvMs0_NtCs2NzvFoTxuAy_2rg6searchNtB5_19SearchWorkerBuilder3new(ptr noalias nofree noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.l)
          to label %bb.b unwind label %.split.thread, !dbg !904

.body:                                            ; preds = %.body15
  br i1 %.sroa.06.2.lpad-body, label %.body.thread, label %.body.thread39, !dbg !905

.split.thread:                                    ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2NzvFoTxuAy_2rg6search6ConfigEBF_.exit.i, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread, !dbg !905

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !906
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 688, !dbg !907 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !dbg !907, !range !442, !noundef !413
  %.not = icmp eq i64 %i.n, -1, !dbg !907
  br i1 %.not, label %bb.d, label %bb.c, !dbg !908

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !909
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.m)
          to label %bb.g unwind label %bb.f, !dbg !910

bb.d:                                             ; preds = %bb.b
  store i64 -1, ptr %i.k, align 8, !dbg !911
  br label %bb.e, !dbg !911

bb.e:                                             ; preds = %bb.g, %bb.d
  %i.o = invoke { i64, ptr } @_RNvMs0_NtCs2NzvFoTxuAy_2rg6searchNtB5_19SearchWorkerBuilder12preprocessor(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %i.l, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.k)
          to label %bb.h unwind label %bb.f, !dbg !912 ; 2 uses

bb.f:                                             ; preds = %bb.o, %bb.y, %bb.x, %bb.e, %bb.c
  %.sroa.06.2 = phi i1 [ false, %bb.y ], [ true, %bb.x ], [ true, %bb.o ], [ true, %bb.e ], [ true, %bb.c ], !dbg !913
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body15, !dbg !905

.body15:                                          ; preds = %bb.p, %bb.f
  %.sroa.06.2.lpad-body = phi i1 [ %.sroa.06.2, %bb.f ], [ true, %bb.p ]
  %eh.lpad-body16 = phi { ptr, i32 } [ %i.p, %bb.f ], [ %.pn.i, %bb.p ] ; 2 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2NzvFoTxuAy_2rg6search19SearchWorkerBuilderEBF_(ptr noalias nofree noundef align 8 dereferenceable(144) %i.l) #31
          to label %.body unwind label %bb.ak, !dbg !905

bb.g:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !dbg !914
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !915
  br label %bb.e, !dbg !916

bb.h:                                             ; preds = %bb.e
  %i.q = extractvalue { i64, ptr } %i.o, 0, !dbg !889
  %i.r = extractvalue { i64, ptr } %i.o, 1, !dbg !889 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !917
  %i.s = trunc nuw i64 %i.q to i1, !dbg !918
  br i1 %i.s, label %bb.i, label %bb.o, !dbg !918

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !919
  store ptr %i.r, ptr %i.t, align 8, !dbg !919
  store i64 2, ptr %0, align 8, !dbg !919
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 104, !dbg !920 ; 4 uses
  %i.v = load i64, ptr %i.u, align 8, !dbg !921, !range !442, !alias.scope !892, !noundef !413
  %i.w = icmp eq i64 %i.v, -1, !dbg !921
  br i1 %i.w, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2NzvFoTxuAy_2rg6search6ConfigEBF_.exit.i, label %bb.j, !dbg !921

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs2NzvFoTxuAy_2rg.exit.i.i.i unwind label %bb.k, !dbg !922

bb.k:                                             ; preds = %bb.j
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %.body.i.i unwind label %bb.l, !dbg !923

bb.l:                                             ; preds = %bb.k
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !dbg !922
  unreachable, !dbg !922

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs2NzvFoTxuAy_2rg.exit.i.i.i: ; preds = %bb.j
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2NzvFoTxuAy_2rg6search6ConfigEBF_.exit.i unwind label %bb.m, !dbg !924

bb.m:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs2NzvFoTxuAy_2rg.exit.i.i.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i, !dbg !920

.body.i.i:                                        ; preds = %bb.m, %bb.k
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.z, %bb.m ], [ %i.x, %bb.k ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsc0anycpf6TS_6ignore9overrides8OverrideECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %i.l) #31
          to label %.body.thread unwind label %bb.n, !dbg !920

bb.n:                                             ; preds = %.body.i.i
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !dbg !920
  unreachable, !dbg !920

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2NzvFoTxuAy_2rg6search6ConfigEBF_.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs2NzvFoTxuAy_2rg.exit.i.i.i, %bb.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsc0anycpf6TS_6ignore9overrides8OverrideECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %i.l)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2NzvFoTxuAy_2rg6search19SearchWorkerBuilderEBF_.exit unwind label %.split.thread, !dbg !920

bb.o:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !925
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0), !dbg !926
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 416, !dbg !926
  call void @llvm.experimental.noalias.scope.decl(metadata !894), !dbg !926
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !927, !noalias !895
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 440, !dbg !928
  %i.ad = load i64, ptr %i.ac, align 8, !dbg !928, !alias.scope !894, !noalias !896, !noundef !413
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtCs8XVSHBVmna6_7globset20GlobSetMatchStrategyENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.ab)
          to label %.noexc unwind label %bb.f, !dbg !928

.noexc:                                           ; preds = %bb.o
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 24, !dbg !928
  store i64 %i.ad, ptr %i.ae, align 8, !dbg !928, !noalias !895
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !929, !noalias !895
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !930, !noalias !895
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 448, !dbg !930
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.af)
          to label %bb.r unwind label %bb.q, !dbg !931, !noalias !896

bb.p:                                             ; preds = %bb.s, %bb.q
  %.pn.i = phi { ptr, i32 } [ %i.ai, %bb.s ], [ %i.ag, %bb.q ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs8XVSHBVmna6_7globset7GlobSetECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(32) %i.d) #31
          to label %.body15 unwind label %bb.w, !dbg !932, !noalias !896

bb.q:                                             ; preds = %.noexc
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.r:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !933, !noalias !895
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !934, !noalias !895
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !935, !noalias !895
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 472, !dbg !935
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsc0anycpf6TS_6ignore9gitignore4GlobENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ah)
          to label %bb.t unwind label %bb.s, !dbg !935, !noalias !896

bb.s:                                             ; preds = %bb.r
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #31
          to label %bb.p unwind label %bb.w, !dbg !932, !noalias !896

bb.t:                                             ; preds = %bb.r
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 496, !dbg !936
  %i.ak = load <2 x i64>, ptr %i.aj, align 8, !dbg !936, !alias.scope !894, !noalias !896
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 512, !dbg !937
  %i.am = load ptr, ptr %i.al, align 8, !dbg !937, !alias.scope !894, !noalias !896, !noundef !413 ; 3 uses
  %.not.i = icmp eq ptr %i.am, null, !dbg !937
  br i1 %.not.i, label %bb.x, label %bb.u, !dbg !938

bb.u:                                             ; preds = %bb.t
  %i.an = atomicrmw add ptr %i.am, i64 1 monotonic, align 8, !dbg !939, !noalias !896
  %i.ao = icmp slt i64 %i.an, 0, !dbg !940
  br i1 %i.ao, label %bb.v, label %bb.x, !dbg !940

bb.v:                                             ; preds = %bb.u
  call void @llvm.trap(), !dbg !941
  unreachable, !dbg !941

bb.w:                                             ; preds = %bb.s, %bb.p
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !dbg !942, !noalias !896
  unreachable, !dbg !942

bb.x:                                             ; preds = %bb.u, %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !dbg !942, !noalias !894
  %.sroa.0.32..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 32, !dbg !942
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.32..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !942, !noalias !894
  %.sroa.0.56..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 56, !dbg !942
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.56..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !942, !noalias !894
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !932, !noalias !895
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !932, !noalias !895
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !932, !noalias !895
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.j, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0, i64 80, i1 false), !dbg !926
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 80, !dbg !926
  store <2 x i64> %i.ak, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !926
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 96, !dbg !926
  store ptr %i.am, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !926
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0), !dbg !926
  %i.aq = invoke noundef nonnull align 8 ptr @_RNvMs0_NtCs2NzvFoTxuAy_2rg6searchNtB5_19SearchWorkerBuilder18preprocessor_globs(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %i.j)
          to label %bb.y unwind label %bb.f, !dbg !943 ; 5 uses

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !944
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 932, !dbg !945
  %i.as = load i8, ptr %i.ar, align 4, !dbg !945, !range !476, !noundef !413
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 132, !dbg !946
  store i8 %i.as, ptr %i.at, align 4, !dbg !946
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 816, !dbg !947
  %i.av = load i8, ptr %i.au, align 8, !dbg !947, !range !484, !noundef !413
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 817, !dbg !947
  %i.ax = load i8, ptr %i.aw, align 1, !dbg !947
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aq, i64 130, !dbg !948
  store i8 %i.av, ptr %i.ay, align 2, !dbg !948
  %i.az = getelementptr inbounds nuw i8, ptr %i.aq, i64 131, !dbg !948
  store i8 %i.ax, ptr %i.az, align 1, !dbg !948
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 818, !dbg !949
  %i.bb = load i8, ptr %i.ba, align 2, !dbg !949, !range !484, !noundef !413
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 819, !dbg !949
  %i.bd = load i8, ptr %i.bc, align 1, !dbg !949
  %i.be = getelementptr inbounds nuw i8, ptr %i.aq, i64 128, !dbg !950
  store i8 %i.bb, ptr %i.be, align 8, !dbg !950
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aq, i64 129, !dbg !950
  store i8 %i.bd, ptr %i.bf, align 1, !dbg !950
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !951
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !952
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.h, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 104, i1 false), !dbg !952
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !953
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.g, ptr noundef nonnull align 8 dereferenceable(264) %3, i64 264, i1 false), !dbg !953
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !954
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.f, ptr noundef nonnull align 8 dereferenceable(240) %4, i64 240, i1 false), !dbg !954
  invoke void @_RINvMs0_NtCs2NzvFoTxuAy_2rg6searchNtB6_19SearchWorkerBuilder5buildNtCs6Ur84ob3I15_9termcolor6BufferEB8_(ptr noalias nofree noundef nonnull sret([816 x i8]) align 8 captures(none) dereferenceable(816) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.l, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(104) %i.h, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(264) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(240) %i.f)
          to label %bb.z unwind label %bb.f, !dbg !955

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !956
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !956
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !956
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(816) %0, ptr noundef nonnull align 8 dereferenceable(816) %i.i, i64 816, i1 false), !dbg !957
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !958
  %i.bg = getelementptr inbounds nuw i8, ptr %i.l, i64 104, !dbg !959 ; 4 uses
  %i.bh = load i64, ptr %i.bg, align 8, !dbg !960, !range !442, !alias.scope !902, !noundef !413
  %i.bi = icmp eq i64 %i.bh, -1, !dbg !960
  br i1 %i.bi, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2NzvFoTxuAy_2rg6search6ConfigEBF_.exit.i20, label %bb.aa, !dbg !960

bb.aa:                                            ; preds = %bb.z
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs2NzvFoTxuAy_2rg.exit.i.i.i19 unwind label %bb.ab, !dbg !961

bb.ab:                                            ; preds = %bb.aa
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg)
          to label %.body.i.i17 unwind label %bb.ac, !dbg !962

bb.ac:                                            ; preds = %bb.ab
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !dbg !961
  unreachable, !dbg !961

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs2NzvFoTxuAy_2rg.exit.i.i.i19: ; preds = %bb.aa
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2NzvFoTxuAy_2rg6search6ConfigEBF_.exit.i20 unwind label %bb.ad, !dbg !963

bb.ad:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs2NzvFoTxuAy_2rg.exit.i.i.i19
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i17, !dbg !959

.body.i.i17:                                      ; preds = %bb.ad, %bb.ab
  %eh.lpad-body.i.i18 = phi { ptr, i32 } [ %i.bl, %bb.ad ], [ %i.bj, %bb.ab ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsc0anycpf6TS_6ignore9overrides8OverrideECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %i.l) #31
          to label %.body.thread39 unwind label %bb.ae, !dbg !959

bb.ae:                                            ; preds = %.body.i.i17
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !dbg !959
  unreachable, !dbg !959

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2NzvFoTxuAy_2rg6search6ConfigEBF_.exit.i20: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs2NzvFoTxuAy_2rg.exit.i.i.i19, %bb.z
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsc0anycpf6TS_6ignore9overrides8OverrideECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %i.l), !dbg !959
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !905
  br label %bb.af, !dbg !905

bb.af:                                            ; preds = %bb.aj, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2NzvFoTxuAy_2rg6search6ConfigEBF_.exit.i20
  ret void, !dbg !964

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2NzvFoTxuAy_2rg6search19SearchWorkerBuilderEBF_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2NzvFoTxuAy_2rg6search6ConfigEBF_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !905
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs2NzvFoTxuAy_2rg6search7PrinterNtCs6Ur84ob3I15_9termcolor6BufferEEBG_(ptr noalias nofree noundef align 8 dereferenceable(240) %4)
          to label %bb.ah unwind label %bb.ag, !dbg !905

bb.ag:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2NzvFoTxuAy_2rg6search19SearchWorkerBuilderEBF_.exit
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.ah:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2NzvFoTxuAy_2rg6search19SearchWorkerBuilderEBF_.exit
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshqpdr3wwzuw_13grep_searcher8searcher8SearcherECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(264) %3)
          to label %bb.aj unwind label %bb.ai, !dbg !905

bb.ai:                                            ; preds = %bb.ah
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.aj:                                            ; preds = %bb.ah
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2NzvFoTxuAy_2rg6search14PatternMatcherEBF_(ptr noalias nofree noundef align 8 dereferenceable(104) %2), !dbg !905
  br label %bb.af, !dbg !905

bb.ak:                                            ; preds = %bb.am, %bb.al, %.body.thread, %.body15
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !dbg !965
  unreachable, !dbg !965

.body.thread:                                     ; preds = %.split.thread, %.body.i.i, %.body
  %.pn38 = phi { ptr, i32 } [ %eh.lpad-body16, %.body ], [ %eh.lpad-body.i.i, %.body.i.i ], [ %lpad.thr_comm, %.split.thread ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs2NzvFoTxuAy_2rg6search7PrinterNtCs6Ur84ob3I15_9termcolor6BufferEEBG_(ptr noalias nofree noundef align 8 dereferenceable(240) %4) #31
          to label %bb.al unwind label %bb.ak, !dbg !905

bb.al:                                            ; preds = %bb.ag, %.body.thread
  %.pn11.ph = phi { ptr, i32 } [ %.pn38, %.body.thread ], [ %i.bn, %bb.ag ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshqpdr3wwzuw_13grep_searcher8searcher8SearcherECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(264) %3) #31
          to label %bb.am unwind label %bb.ak, !dbg !905

.body.thread39:                                   ; preds = %.body.i.i17, %.body, %bb.am
  %.pn1334 = phi { ptr, i32 } [ %.pn13.ph, %bb.am ], [ %eh.lpad-body16, %.body ], [ %eh.lpad-body.i.i18, %.body.i.i17 ]
  resume { ptr, i32 } %.pn1334, !dbg !965

bb.am:                                            ; preds = %bb.ai, %bb.al
  %.pn13.ph = phi { ptr, i32 } [ %.pn11.ph, %bb.al ], [ %i.bo, %bb.ai ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2NzvFoTxuAy_2rg6search14PatternMatcherEBF_(ptr noalias nofree noundef align 8 dereferenceable(104) %2) #31
          to label %.body.thread39 unwind label %bb.ak, !dbg !905
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtCs2NzvFoTxuAy_2rg5flags6hiargsNtB3_6HiArgs13search_workerNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEB7_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([848 x i8]) align 8 captures(none) dereferenceable(848) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(944) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(104) %2, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(264) %3, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(272) %4) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !966 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.0 = alloca [80 x i8], align 8            ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [272 x i8], align 8               ; 4 uses
  %i.g = alloca [264 x i8], align 8               ; 4 uses
  %i.h = alloca [104 x i8], align 8               ; 4 uses
  %i.i = alloca [848 x i8], align 8               ; 4 uses
  %i.j = alloca [104 x i8], align 8               ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 5 uses
  %i.l = alloca [144 x i8], align 8               ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !1043
  invoke void @_RNvMs0_NtCs2NzvFoTxuAy_2rg6searchNtB5_19SearchWorkerBuilder3new(ptr noalias nofree noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.l)
          to label %bb.b unwind label %.split.thread, !dbg !1044

.body:                                            ; preds = %.body15
  br i1 %.sroa.06.2.lpad-body, label %.body.thread, label %.body.thread39, !dbg !1045

.split.thread:                                    ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2NzvFoTxuAy_2rg6search6ConfigEBF_.exit.i, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread, !dbg !1045

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !1046
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 688, !dbg !1047 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !dbg !1047, !range !442, !noundef !413
  %.not = icmp eq i64 %i.n, -1, !dbg !1047
  br i1 %.not, label %bb.d, label %bb.c, !dbg !1048

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !1049
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.m)
          to label %bb.g unwind label %bb.f, !dbg !1050

bb.d:                                             ; preds = %bb.b
  store i64 -1, ptr %i.k, align 8, !dbg !1051
  br label %bb.e, !dbg !1051

bb.e:                                             ; preds = %bb.g, %bb.d
  %i.o = invoke { i64, ptr } @_RNvMs0_NtCs2NzvFoTxuAy_2rg6searchNtB5_19SearchWorkerBuilder12preprocessor(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %i.l, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.k)
          to label %bb.h unwind label %bb.f, !dbg !1052 ; 2 uses

bb.f:                                             ; preds = %bb.o, %bb.y, %bb.x, %bb.e, %bb.c
  %.sroa.06.2 = phi i1 [ false, %bb.y ], [ true, %bb.x ], [ true, %bb.o ], [ true, %bb.e ], [ true, %bb.c ], !dbg !1053
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body15, !dbg !1045

.body15:                                          ; preds = %bb.p, %bb.f
  %.sroa.06.2.lpad-body = phi i1 [ %.sroa.06.2, %bb.f ], [ true, %bb.p ]
  %eh.lpad-body16 = phi { ptr, i32 } [ %i.p, %bb.f ], [ %.pn.i, %bb.p ] ; 2 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2NzvFoTxuAy_2rg6search19SearchWorkerBuilderEBF_(ptr noalias nofree noundef align 8 dereferenceable(144) %i.l) #31
          to label %.body unwind label %bb.ak, !dbg !1045

bb.g:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !dbg !1054
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !1055
  br label %bb.e, !dbg !1056

bb.h:                                             ; preds = %bb.e
  %i.q = extractvalue { i64, ptr } %i.o, 0, !dbg !1029
  %i.r = extractvalue { i64, ptr } %i.o, 1, !dbg !1029 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !1057
  %i.s = trunc nuw i64 %i.q to i1, !dbg !1058
  br i1 %i.s, label %bb.i, label %bb.o, !dbg !1058

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1059
  store ptr %i.r, ptr %i.t, align 8, !dbg !1059
  store i64 2, ptr %0, align 8, !dbg !1059
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 104, !dbg !1060 ; 4 uses
  %i.v = load i64, ptr %i.u, align 8, !dbg !1061, !range !442, !alias.scope !1032, !noundef !413
  %i.w = icmp eq i64 %i.v, -1, !dbg !1061
  br i1 %i.w, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2NzvFoTxuAy_2rg6search6ConfigEBF_.exit.i, label %bb.j, !dbg !1061

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs2NzvFoTxuAy_2rg.exit.i.i.i unwind label %bb.k, !dbg !1062

bb.k:                                             ; preds = %bb.j
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %.body.i.i unwind label %bb.l, !dbg !1063

bb.l:                                             ; preds = %bb.k
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !dbg !1062
  unreachable, !dbg !1062

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs2NzvFoTxuAy_2rg.exit.i.i.i: ; preds = %bb.j
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2NzvFoTxuAy_2rg6search6ConfigEBF_.exit.i unwind label %bb.m, !dbg !1064

bb.m:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs2NzvFoTxuAy_2rg.exit.i.i.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i, !dbg !1060

.body.i.i:                                        ; preds = %bb.m, %bb.k
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.z, %bb.m ], [ %i.x, %bb.k ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsc0anycpf6TS_6ignore9overrides8OverrideECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %i.l) #31
          to label %.body.thread unwind label %bb.n, !dbg !1060

bb.n:                                             ; preds = %.body.i.i
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !dbg !1060
  unreachable, !dbg !1060

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2NzvFoTxuAy_2rg6search6ConfigEBF_.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs2NzvFoTxuAy_2rg.exit.i.i.i, %bb.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsc0anycpf6TS_6ignore9overrides8OverrideECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %i.l)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2NzvFoTxuAy_2rg6search19SearchWorkerBuilderEBF_.exit unwind label %.split.thread, !dbg !1060

bb.o:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !1065
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0), !dbg !1066
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 416, !dbg !1066
  call void @llvm.experimental.noalias.scope.decl(metadata !1034), !dbg !1066
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !1067, !noalias !1035
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 440, !dbg !1068
  %i.ad = load i64, ptr %i.ac, align 8, !dbg !1068, !alias.scope !1034, !noalias !1036, !noundef !413
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtCs8XVSHBVmna6_7globset20GlobSetMatchStrategyENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.ab)
          to label %.noexc unwind label %bb.f, !dbg !1068

.noexc:                                           ; preds = %bb.o
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 24, !dbg !1068
  store i64 %i.ad, ptr %i.ae, align 8, !dbg !1068, !noalias !1035
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !1069, !noalias !1035
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !1070, !noalias !1035
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 448, !dbg !1070
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.af)
          to label %bb.r unwind label %bb.q, !dbg !1071, !noalias !1036

bb.p:                                             ; preds = %bb.s, %bb.q
  %.pn.i = phi { ptr, i32 } [ %i.ai, %bb.s ], [ %i.ag, %bb.q ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs8XVSHBVmna6_7globset7GlobSetECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(32) %i.d) #31
          to label %.body15 unwind label %bb.w, !dbg !1072, !noalias !1036

bb.q:                                             ; preds = %.noexc
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.r:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !1073, !noalias !1035
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1074, !noalias !1035
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !1075, !noalias !1035
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 472, !dbg !1075
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsc0anycpf6TS_6ignore9gitignore4GlobENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ah)
          to label %bb.t unwind label %bb.s, !dbg !1075, !noalias !1036

bb.s:                                             ; preds = %bb.r
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #31
          to label %bb.p unwind label %bb.w, !dbg !1072, !noalias !1036

bb.t:                                             ; preds = %bb.r
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 496, !dbg !1076
  %i.ak = load <2 x i64>, ptr %i.aj, align 8, !dbg !1076, !alias.scope !1034, !noalias !1036
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 512, !dbg !1077
  %i.am = load ptr, ptr %i.al, align 8, !dbg !1077, !alias.scope !1034, !noalias !1036, !noundef !413 ; 3 uses
  %.not.i = icmp eq ptr %i.am, null, !dbg !1077
  br i1 %.not.i, label %bb.x, label %bb.u, !dbg !1078

bb.u:                                             ; preds = %bb.t
  %i.an = atomicrmw add ptr %i.am, i64 1 monotonic, align 8, !dbg !1079, !noalias !1036
  %i.ao = icmp slt i64 %i.an, 0, !dbg !1080
  br i1 %i.ao, label %bb.v, label %bb.x, !dbg !1080

bb.v:                                             ; preds = %bb.u
  call void @llvm.trap(), !dbg !1081
  unreachable, !dbg !1081

bb.w:                                             ; preds = %bb.s, %bb.p
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !dbg !1082, !noalias !1036
  unreachable, !dbg !1082

bb.x:                                             ; preds = %bb.u, %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !dbg !1082, !noalias !1034
  %.sroa.0.32..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 32, !dbg !1082
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.32..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !1082, !noalias !1034
  %.sroa.0.56..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 56, !dbg !1082
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.56..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !1082, !noalias !1034
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !1072, !noalias !1035
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !1072, !noalias !1035
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !1072, !noalias !1035
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.j, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0, i64 80, i1 false), !dbg !1066
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 80, !dbg !1066
  store <2 x i64> %i.ak, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !1066
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 96, !dbg !1066
  store ptr %i.am, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !1066
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0), !dbg !1066
  %i.aq = invoke noundef nonnull align 8 ptr @_RNvMs0_NtCs2NzvFoTxuAy_2rg6searchNtB5_19SearchWorkerBuilder18preprocessor_globs(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %i.j)
          to label %bb.y unwind label %bb.f, !dbg !1083 ; 5 uses

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !1084
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 932, !dbg !1085
  %i.as = load i8, ptr %i.ar, align 4, !dbg !1085, !range !476, !noundef !413
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 132, !dbg !1086
  store i8 %i.as, ptr %i.at, align 4, !dbg !1086
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 816, !dbg !1087
  %i.av = load i8, ptr %i.au, align 8, !dbg !1087, !range !484, !noundef !413
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 817, !dbg !1087
  %i.ax = load i8, ptr %i.aw, align 1, !dbg !1087
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aq, i64 130, !dbg !1088
  store i8 %i.av, ptr %i.ay, align 2, !dbg !1088
  %i.az = getelementptr inbounds nuw i8, ptr %i.aq, i64 131, !dbg !1088
  store i8 %i.ax, ptr %i.az, align 1, !dbg !1088
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 818, !dbg !1089
  %i.bb = load i8, ptr %i.ba, align 2, !dbg !1089, !range !484, !noundef !413
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 819, !dbg !1089
  %i.bd = load i8, ptr %i.bc, align 1, !dbg !1089
  %i.be = getelementptr inbounds nuw i8, ptr %i.aq, i64 128, !dbg !1090
  store i8 %i.bb, ptr %i.be, align 8, !dbg !1090
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aq, i64 129, !dbg !1090
  store i8 %i.bd, ptr %i.bf, align 1, !dbg !1090
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !1091
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !1092
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.h, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 104, i1 false), !dbg !1092
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !1093
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.g, ptr noundef nonnull align 8 dereferenceable(264) %3, i64 264, i1 false), !dbg !1093
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !1094
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %i.f, ptr noundef nonnull align 8 dereferenceable(272) %4, i64 272, i1 false), !dbg !1094
  invoke void @_RINvMs0_NtCs2NzvFoTxuAy_2rg6searchNtB6_19SearchWorkerBuilder5buildNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEB8_(ptr noalias nofree noundef nonnull sret([848 x i8]) align 8 captures(none) dereferenceable(848) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.l, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(104) %i.h, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(264) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(272) %i.f)
          to label %bb.z unwind label %bb.f, !dbg !1095

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !1096
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !1096
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !1096
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(848) %0, ptr noundef nonnull align 8 dereferenceable(848) %i.i, i64 848, i1 false), !dbg !1097
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !1098
  %i.bg = getelementptr inbounds nuw i8, ptr %i.l, i64 104, !dbg !1099 ; 4 uses
  %i.bh = load i64, ptr %i.bg, align 8, !dbg !1100, !range !442, !alias.scope !1042, !noundef !413
  %i.bi = icmp eq i64 %i.bh, -1, !dbg !1100
  br i1 %i.bi, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2NzvFoTxuAy_2rg6search6ConfigEBF_.exit.i20, label %bb.aa, !dbg !1100

bb.aa:                                            ; preds = %bb.z
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs2NzvFoTxuAy_2rg.exit.i.i.i19 unwind label %bb.ab, !dbg !1101

bb.ab:                                            ; preds = %bb.aa
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg)
          to label %.body.i.i17 unwind label %bb.ac, !dbg !1102

bb.ac:                                            ; preds = %bb.ab
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !dbg !1101
  unreachable, !dbg !1101

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs2NzvFoTxuAy_2rg.exit.i.i.i19: ; preds = %bb.aa
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2NzvFoTxuAy_2rg6search6ConfigEBF_.exit.i20 unwind label %bb.ad, !dbg !1103

bb.ad:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs2NzvFoTxuAy_2rg.exit.i.i.i19
end_hunk_0
begin_hunk_1_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTjjEEECs2NzvFoTxuAy_2rg:bb.a
  ret void, !dbg !3731

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !dbg !3731
  unreachable, !dbg !3731

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecTjjEEECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !3731
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !20 {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b, !dbg !3736

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs2NzvFoTxuAy_2rg.exit unwind label %bb.d, !dbg !3737

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0), !dbg !3738
  ret void, !dbg !3736

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !dbg !3736
  unreachable, !dbg !3736

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !3736
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsc0anycpf6TS_6ignore5ErrorEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !183 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !3749, !nonnull !413, !noundef !413 ; 3 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsc0anycpf6TS_6ignore5ErrorECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.a)
          to label %bb.b unwind label %bb.c, !dbg !3749

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 56, i64 noundef 8) #33, !dbg !3750
  ret void, !dbg !3749

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 56, i64 noundef 8) #33, !dbg !3751
  resume { ptr, i32 } %i.b, !dbg !3749
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtCs6Ur84ob3I15_9termcolor6BufferEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !100 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !3765, !range !566, !alias.scope !3764, !noundef !413
  %i.b = icmp eq i64 %i.a, 0, !dbg !3765
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3765 ; 5 uses
  br i1 %i.b, label %bb.b, label %bb.e, !dbg !3765

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs6Ur84ob3I15_9termcolor6BufferECs2NzvFoTxuAy_2rg.exit unwind label %bb.c, !dbg !3766

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume.i.i unwind label %bb.d, !dbg !3767

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !dbg !3766
  unreachable, !dbg !3766

common.resume.i.i:                                ; preds = %bb.f, %bb.c
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.d, %bb.c ], [ %i.f, %bb.f ]
  resume { ptr, i32 } %common.resume.op.i.i, !dbg !3765

bb.e:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs6Ur84ob3I15_9termcolor6BufferECs2NzvFoTxuAy_2rg.exit unwind label %bb.f, !dbg !3768

bb.f:                                             ; preds = %bb.e
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume.i.i unwind label %bb.g, !dbg !3769

bb.g:                                             ; preds = %bb.f
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !dbg !3768
  unreachable, !dbg !3768

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs6Ur84ob3I15_9termcolor6BufferECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.b, %bb.e
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c), !dbg !3765
  ret void, !dbg !3770
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync9once_lock8OnceLockINtNtB4_6result6ResultNtNtBI_4path7PathBufINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB4_2io5error5ErrorEEEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !3771 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3813), !dbg !3834
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !3835
  %.val.i = load i32, ptr %i.a, align 8, !dbg !3835, !alias.scope !3813, !noundef !413
  switch i32 %.val.i, label %bb.b [
    i32 3, label %_RNvXs9_NtNtCsG258MDvU3F_3std4sync9once_lockINtB5_8OnceLockINtNtCskKLDkoKarTP_4core6result6ResultNtNtB9_4path7PathBufINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBZ_2io5error5ErrorEEENtNtNtBZ_3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg.exit
    i32 2, label %_RNvXs9_NtNtCsG258MDvU3F_3std4sync9once_lockINtB5_8OnceLockINtNtCskKLDkoKarTP_4core6result6ResultNtNtB9_4path7PathBufINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBZ_2io5error5ErrorEEENtNtNtBZ_3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg.exit
    i32 0, label %bb.c
  ], !dbg !3836, !prof !3817

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @33, ptr noundef nonnull inttoptr (i64 121 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #36, !dbg !3837, !noalias !3813
  unreachable, !dbg !3837

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3826), !dbg !3838
  %i.b = load i64, ptr %0, align 8, !dbg !3839, !range !442, !alias.scope !3830, !noundef !413
  %.not.i.i = icmp eq i64 %i.b, -1, !dbg !3839
  br i1 %.not.i.i, label %bb.g, label %bb.d, !dbg !3839

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs2NzvFoTxuAy_2rg.exit.i.i unwind label %bb.e, !dbg !3840

bb.e:                                             ; preds = %bb.d
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i unwind label %bb.f, !dbg !3841

bb.f:                                             ; preds = %bb.e
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !dbg !3840
  unreachable, !dbg !3840

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i: ; preds = %bb.e
  resume { ptr, i32 } %i.c, !dbg !3840

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs2NzvFoTxuAy_2rg.exit.i.i: ; preds = %bb.d
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0), !dbg !3842
  br label %_RNvXs9_NtNtCsG258MDvU3F_3std4sync9once_lockINtB5_8OnceLockINtNtCskKLDkoKarTP_4core6result6ResultNtNtB9_4path7PathBufINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBZ_2io5error5ErrorEEENtNtNtBZ_3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg.exit, !dbg !3839

bb.g:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3839 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3831), !dbg !3839
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3832), !dbg !3843
  %i.f = load ptr, ptr %i.e, align 8, !dbg !3844, !alias.scope !3833, !nonnull !413, !noundef !413
  %i.g = atomicrmw sub ptr %i.f, i64 1 release, align 8, !dbg !3845, !noalias !3833
  %i.h = icmp eq i64 %i.g, 1, !dbg !3846
  br i1 %i.h, label %bb.h, label %_RNvXs9_NtNtCsG258MDvU3F_3std4sync9once_lockINtB5_8OnceLockINtNtCskKLDkoKarTP_4core6result6ResultNtNtB9_4path7PathBufINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBZ_2io5error5ErrorEEENtNtNtBZ_3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg.exit, !dbg !3846

bb.h:                                             ; preds = %bb.g
  fence acquire, !dbg !3847
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCskKLDkoKarTP_4core2io5error5ErrorE9drop_slowCsc0anycpf6TS_6ignore(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #35, !dbg !3848
  br label %_RNvXs9_NtNtCsG258MDvU3F_3std4sync9once_lockINtB5_8OnceLockINtNtCskKLDkoKarTP_4core6result6ResultNtNtB9_4path7PathBufINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBZ_2io5error5ErrorEEENtNtNtBZ_3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg.exit, !dbg !3848

_RNvXs9_NtNtCsG258MDvU3F_3std4sync9once_lockINtB5_8OnceLockINtNtCskKLDkoKarTP_4core6result6ResultNtNtB9_4path7PathBufINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBZ_2io5error5ErrorEEENtNtNtBZ_3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg.exit: ; preds = %bb.a, %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs2NzvFoTxuAy_2rg.exit.i.i, %bb.g, %bb.h
  ret void, !dbg !3834
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackEEB1t_(ptr noalias nofree noundef align 8 dereferenceable(32) %0) unnamed_addr #1 !dbg !44 {
bb.a:
  tail call void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB10_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0), !dbg !3849
  ret void, !dbg !3849
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool4PoolNtNtNtBI_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputB1r_NtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtNtB4_6marker4SendNtB3O_4SyncNtB37_10UnwindSafeEL_EEECs2NzvFoTxuAy_2rg(ptr %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !3850 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3900), !dbg !3901
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 24, !dbg !3902
  %.val.i.i = load ptr, ptr %i.a, align 8, !dbg !3902, !alias.scope !3900 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 32, !dbg !3902
  %.val2.i.i = load ptr, ptr %i.b, align 8, !dbg !3902, !alias.scope !3900, !nonnull !413, !align !612, !noundef !413 ; 5 uses
  %i.c = load ptr, ptr %.val2.i.i, align 8, !dbg !3903, !invariant.load !413, !noalias !3900 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.c, null, !dbg !3903
  br i1 %.not.i.i.i, label %bb.c, label %bb.b, !dbg !3903

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.c(ptr noundef nonnull %.val.i.i)
          to label %bb.c unwind label %bb.d, !dbg !3903, !noalias !3900

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 8, !dbg !3904
  %i.e = load i64, ptr %i.d, align 8, !dbg !3904, !range !528, !invariant.load !413, !noalias !3900 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0, !dbg !3905
  br i1 %i.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheNtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtNtB4_6marker4SendNtB3l_4SyncNtB2E_10UnwindSafeEL_EECs2NzvFoTxuAy_2rg.exit.i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i, !dbg !3905

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.g = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 16, !dbg !3904
  %i.h = load i64, ptr %i.g, align 8, !dbg !3906, !range !605, !invariant.load !413, !noalias !3900
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) %i.h) #33, !dbg !3907, !noalias !3900
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheNtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtNtB4_6marker4SendNtB3l_4SyncNtB2E_10UnwindSafeEL_EECs2NzvFoTxuAy_2rg.exit.i.i, !dbg !3908

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 8, !dbg !3909
  %i.k = load i64, ptr %i.j, align 8, !dbg !3909, !range !528, !invariant.load !413, !noalias !3900 ; 2 uses
  %i.l = icmp eq i64 %i.k, 0, !dbg !3910
  br i1 %i.l, label %.body.i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i, !dbg !3910

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i: ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 16, !dbg !3909
  %i.n = load i64, ptr %i.m, align 8, !dbg !3911, !range !605, !invariant.load !413, !noalias !3900
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) %i.n) #33, !dbg !3912, !noalias !3900
  br label %.body.i.i, !dbg !3913

.body.i.i:                                        ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i, %bb.d
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexIBC_INtNtBG_5boxed3BoxNtNtNtB1h_4meta5regex5CacheEEEEEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(1448) %.0.val) #31
          to label %.body3.i.i unwind label %bb.i, !dbg !3902

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheNtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtNtB4_6marker4SendNtB3l_4SyncNtB2E_10UnwindSafeEL_EECs2NzvFoTxuAy_2rg.exit.i.i: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %bb.c
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexIBw_INtNtB7_5boxed3BoxNtNtNtBO_4meta5regex5CacheEEEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(1448) %.0.val)
          to label %bb.f unwind label %bb.e, !dbg !3914

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheNtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtNtB4_6marker4SendNtB3l_4SyncNtB2E_10UnwindSafeEL_EECs2NzvFoTxuAy_2rg.exit.i.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtB7_3vec3VecINtNtB7_5boxed3BoxNtNtNtBV_4meta5regex5CacheEEEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(1448) %.0.val)
          to label %.body3.i.i unwind label %bb.g, !dbg !3915

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheNtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtNtB4_6marker4SendNtB3l_4SyncNtB2E_10UnwindSafeEL_EECs2NzvFoTxuAy_2rg.exit.i.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtB7_3vec3VecINtNtB7_5boxed3BoxNtNtNtBV_4meta5regex5CacheEEEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(1448) %.0.val)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexIBC_INtNtBG_5boxed3BoxNtNtNtB1h_4meta5regex5CacheEEEEEECs2NzvFoTxuAy_2rg.exit.i.i unwind label %bb.h, !dbg !3916

bb.g:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !dbg !3914
  unreachable, !dbg !3914

.body3.i.i:                                       ; preds = %bb.h, %bb.e, %.body.i.i
  %.pn.i.i = phi { ptr, i32 } [ %i.i, %.body.i.i ], [ %i.r, %bb.h ], [ %i.o, %bb.e ]
  %i.q = getelementptr inbounds nuw i8, ptr %.0.val, i64 48, !dbg !3902
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheEEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(1400) %i.q) #31
          to label %bb.k unwind label %bb.i, !dbg !3902

bb.h:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body3.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexIBC_INtNtBG_5boxed3BoxNtNtNtB1h_4meta5regex5CacheEEEEEECs2NzvFoTxuAy_2rg.exit.i.i: ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %.0.val, i64 48, !dbg !3902
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheEEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(1400) %i.s)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5inner4PoolNtNtNtB1j_4meta5regex5CacheIBC_DINtNtNtB4_3ops8function2FnuEp6OutputB28_NtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtNtB4_6marker4SendNtB41_4SyncNtB3k_10UnwindSafeEL_EEEECs2NzvFoTxuAy_2rg.exit unwind label %bb.j, !dbg !3902

bb.i:                                             ; preds = %.body3.i.i, %.body.i.i
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !dbg !3902
  unreachable, !dbg !3902

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexIBC_INtNtBG_5boxed3BoxNtNtNtB1h_4meta5regex5CacheEEEEEECs2NzvFoTxuAy_2rg.exit.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.k, !dbg !3901

bb.k:                                             ; preds = %bb.j, %.body3.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.u, %bb.j ], [ %.pn.i.i, %.body3.i.i ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 1448, i64 noundef 8) #33, !dbg !3917
  resume { ptr, i32 } %eh.lpad-body.i, !dbg !3901

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5inner4PoolNtNtNtB1j_4meta5regex5CacheIBC_DINtNtNtB4_3ops8function2FnuEp6OutputB28_NtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtNtB4_6marker4SendNtB41_4SyncNtB3k_10UnwindSafeEL_EEEECs2NzvFoTxuAy_2rg.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexIBC_INtNtBG_5boxed3BoxNtNtNtB1h_4meta5regex5CacheEEEEEECs2NzvFoTxuAy_2rg.exit.i.i
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 1448, i64 noundef 8) #33, !dbg !3918
  ret void, !dbg !3919
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvCs2NzvFoTxuAy_2rg5files0EEB20_(ptr noalias nofree noundef align 8 dereferenceable(352) %0) unnamed_addr #1 !dbg !42 {
bb.a:
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsc0anycpf6TS_6ignore4walk4WalkECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(344) %0), !dbg !3920
  ret void, !dbg !3920
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvCs2NzvFoTxuAy_2rg6search0EEB20_(ptr noalias nofree noundef align 8 dereferenceable(352) %0) unnamed_addr #1 !dbg !48 {
bb.a:
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsc0anycpf6TS_6ignore4walk4WalkECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(344) %0), !dbg !3921
  ret void, !dbg !3921
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEEENCINvMNtNtB22_5flags6hiargsNtB3I_6HiArgs4sortINtNtBG_10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB22_5files0EEs3_0EEB22_(ptr noalias nofree noundef align 8 dereferenceable(32) %0) unnamed_addr #1 !dbg !47 {
bb.a:
  tail call void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEEENtNtNtB1F_3ops4drop4Drop4dropB11_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0), !dbg !3923
  ret void, !dbg !3924
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEEENCINvMNtNtB22_5flags6hiargsNtB3I_6HiArgs4sortINtNtBG_10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB22_6search0EEs3_0EEB22_(ptr noalias nofree noundef align 8 dereferenceable(32) %0) unnamed_addr #1 !dbg !49 {
bb.a:
  tail call void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEEENtNtNtB1F_3ops4drop4Drop4dropB11_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0), !dbg !3926
  ret void, !dbg !3927
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs6Ur84ob3I15_9termcolor12BufferWriterECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !3928 {
bb.a:
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs6Ur84ob3I15_9termcolor16IoStandardStreamECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs6Ur84ob3I15_9termcolor19LossyStandardStreamNtBE_16IoStandardStreamEECs2NzvFoTxuAy_2rg.exit unwind label %bb.b, !dbg !3938

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !3939
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #31
          to label %common.resume unwind label %bb.f, !dbg !3939

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs6Ur84ob3I15_9termcolor19LossyStandardStreamNtBE_16IoStandardStreamEECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !3939 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !dbg !3940, !range !442, !alias.scope !3937, !noundef !413
  %i.e = icmp eq i64 %i.d, -1, !dbg !3940
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs2NzvFoTxuAy_2rg.exit, label %bb.c, !dbg !3940

bb.c:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs6Ur84ob3I15_9termcolor19LossyStandardStreamNtBE_16IoStandardStreamEECs2NzvFoTxuAy_2rg.exit
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2NzvFoTxuAy_2rg.exit.i unwind label %bb.d, !dbg !3941

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume unwind label %bb.e, !dbg !3942

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !dbg !3941
  unreachable, !dbg !3941

common.resume:                                    ; preds = %bb.b, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.d ], [ %i.a, %bb.b ]
  resume { ptr, i32 } %common.resume.op, !dbg !3939

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2NzvFoTxuAy_2rg.exit.i: ; preds = %bb.c
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c), !dbg !3943
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs2NzvFoTxuAy_2rg.exit, !dbg !3940

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs2NzvFoTxuAy_2rg.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs6Ur84ob3I15_9termcolor19LossyStandardStreamNtBE_16IoStandardStreamEECs2NzvFoTxuAy_2rg.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2NzvFoTxuAy_2rg.exit.i
  ret void, !dbg !3939

bb.f:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !dbg !3939
  unreachable, !dbg !3939
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs6Ur84ob3I15_9termcolor16IoStandardStreamECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !3944 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !3953, !range !609, !noundef !413
  switch i64 %i.a, label %default.unreachable3 [
    i64 0, label %bb.h
    i64 1, label %bb.h
    i64 2, label %bb.i
    i64 3, label %bb.b
  ], !dbg !3953

default.unreachable3:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3953 ; 5 uses
  invoke void @_RNvXs7_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StderrENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %bb.d unwind label %bb.c, !dbg !3954

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b) #31
          to label %common.resume unwind label %bb.g, !dbg !3954

bb.d:                                             ; preds = %bb.b
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %.sink.split unwind label %bb.e, !dbg !3955

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %common.resume unwind label %bb.f, !dbg !3956

bb.f:                                             ; preds = %bb.e
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !dbg !3955
  unreachable, !dbg !3955

end_hunk_1
begin_hunk_2_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs2NzvFoTxuAy_2rg:bb.a
bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs2NzvFoTxuAy_2rg.exit.i.i.i unwind label %bb.c, !dbg !4220

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !dbg !4219
  unreachable, !dbg !4219

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs2NzvFoTxuAy_2rg.exit.i.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !4219

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0), !dbg !4221
  ret void, !dbg !4222
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std7process7CommandECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !4223 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4353), !dbg !4365
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !4366
  %.val.i = load ptr, ptr %i.a, align 8, !dbg !4366, !alias.scope !4353, !nonnull !413, !noundef !413 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136, !dbg !4366
  %.val16.i = load i64, ptr %i.b, align 8, !dbg !4366, !alias.scope !4353 ; 2 uses
  store i8 0, ptr %.val.i, align 1, !dbg !4367, !noalias !4353
  %i.c = icmp eq i64 %.val16.i, 0, !dbg !4368
  br i1 %i.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsexYYUdYSQU6_5alloc3ffi5c_str7CStringECs2NzvFoTxuAy_2rg.exit.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i5.i.i, !dbg !4368

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i5.i.i: ; preds = %bb.a
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %.val16.i, i64 noundef 1) #33, !dbg !4369
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsexYYUdYSQU6_5alloc3ffi5c_str7CStringECs2NzvFoTxuAy_2rg.exit.i, !dbg !4370

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsexYYUdYSQU6_5alloc3ffi5c_str7CStringECs2NzvFoTxuAy_2rg.exit.i: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i5.i.i, %bb.a
  invoke void @_RNvXs3_NtNtNtNtNtCsG258MDvU3F_3std3sys7process4unix6common13cstring_arrayNtB5_12CStringArrayNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %0)
          to label %bb.c unwind label %bb.b, !dbg !4371

bb.b:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsexYYUdYSQU6_5alloc3ffi5c_str7CStringECs2NzvFoTxuAy_2rg.exit.i
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecPaEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %0) #31
          to label %.body.i unwind label %bb.f, !dbg !4371

bb.c:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsexYYUdYSQU6_5alloc3ffi5c_str7CStringECs2NzvFoTxuAy_2rg.exit.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecPaENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecPaEECs2NzvFoTxuAy_2rg.exit.i.i unwind label %bb.d, !dbg !4372

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecPaENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %0)
          to label %.body.i unwind label %bb.e, !dbg !4373

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !dbg !4372
  unreachable, !dbg !4372

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecPaEECs2NzvFoTxuAy_2rg.exit.i.i: ; preds = %bb.c
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecPaENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtNtCsG258MDvU3F_3std3sys7process4unix6common13cstring_array12CStringArrayECs2NzvFoTxuAy_2rg.exit.i unwind label %bb.g, !dbg !4374

bb.f:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !dbg !4371
  unreachable, !dbg !4371

.body.i:                                          ; preds = %bb.g, %bb.d, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.d, %bb.b ], [ %i.i, %bb.g ], [ %i.e, %bb.d ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !4366
  invoke void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringINtNtCskKLDkoKarTP_4core6option6OptionB14_EENtNtNtB1Q_3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std3sys7process3env10CommandEnvECs2NzvFoTxuAy_2rg.exit.i unwind label %bb.w, !dbg !4375

bb.g:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecPaEECs2NzvFoTxuAy_2rg.exit.i.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtNtCsG258MDvU3F_3std3sys7process4unix6common13cstring_array12CStringArrayECs2NzvFoTxuAy_2rg.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecPaEECs2NzvFoTxuAy_2rg.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !4366
  invoke void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringINtNtCskKLDkoKarTP_4core6option6OptionB14_EENtNtNtB1Q_3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std3sys7process3env10CommandEnvECs2NzvFoTxuAy_2rg.exit41.i unwind label %bb.i, !dbg !4376

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std3sys7process3env10CommandEnvECs2NzvFoTxuAy_2rg.exit.i: ; preds = %bb.i, %.body.i
  %.pn2.i = phi { ptr, i32 } [ %i.o, %bb.i ], [ %.pn.i, %.body.i ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 144, !dbg !4366
  %.val23.i = load ptr, ptr %i.k, align 8, !dbg !4366, !alias.scope !4353, !noundef !413 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 152, !dbg !4366
  %.val24.i = load i64, ptr %i.l, align 8, !dbg !4366, !alias.scope !4353 ; 2 uses
  %i.m = icmp eq ptr %.val23.i, null, !dbg !4377
  br i1 %i.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsexYYUdYSQU6_5alloc3ffi5c_str7CStringEECs2NzvFoTxuAy_2rg.exit.i, label %bb.h, !dbg !4377

bb.h:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std3sys7process3env10CommandEnvECs2NzvFoTxuAy_2rg.exit.i
  store i8 0, ptr %.val23.i, align 1, !dbg !4378
  %i.n = icmp eq i64 %.val24.i, 0, !dbg !4379
  br i1 %i.n, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsexYYUdYSQU6_5alloc3ffi5c_str7CStringEECs2NzvFoTxuAy_2rg.exit.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i5.i.i.i, !dbg !4379

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i5.i.i.i: ; preds = %bb.h
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val23.i, i64 noundef %.val24.i, i64 noundef 1) #33, !dbg !4380
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsexYYUdYSQU6_5alloc3ffi5c_str7CStringEECs2NzvFoTxuAy_2rg.exit.i, !dbg !4381

bb.i:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtNtCsG258MDvU3F_3std3sys7process4unix6common13cstring_array12CStringArrayECs2NzvFoTxuAy_2rg.exit.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std3sys7process3env10CommandEnvECs2NzvFoTxuAy_2rg.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std3sys7process3env10CommandEnvECs2NzvFoTxuAy_2rg.exit41.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtNtCsG258MDvU3F_3std3sys7process4unix6common13cstring_array12CStringArrayECs2NzvFoTxuAy_2rg.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 144, !dbg !4366
  %.val21.i = load ptr, ptr %i.p, align 8, !dbg !4366, !alias.scope !4353, !noundef !413 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 152, !dbg !4366
  %.val22.i = load i64, ptr %i.q, align 8, !dbg !4366, !alias.scope !4353 ; 2 uses
  %i.r = icmp eq ptr %.val21.i, null, !dbg !4382
  br i1 %i.r, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsexYYUdYSQU6_5alloc3ffi5c_str7CStringEECs2NzvFoTxuAy_2rg.exit43.i, label %bb.j, !dbg !4382

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std3sys7process3env10CommandEnvECs2NzvFoTxuAy_2rg.exit41.i
  store i8 0, ptr %.val21.i, align 1, !dbg !4383
  %i.s = icmp eq i64 %.val22.i, 0, !dbg !4384
  br i1 %i.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsexYYUdYSQU6_5alloc3ffi5c_str7CStringEECs2NzvFoTxuAy_2rg.exit43.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i5.i.i42.i, !dbg !4384

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i5.i.i42.i: ; preds = %bb.j
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val21.i, i64 noundef %.val22.i, i64 noundef 1) #33, !dbg !4385
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsexYYUdYSQU6_5alloc3ffi5c_str7CStringEECs2NzvFoTxuAy_2rg.exit43.i, !dbg !4386

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsexYYUdYSQU6_5alloc3ffi5c_str7CStringEECs2NzvFoTxuAy_2rg.exit.i: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i5.i.i.i, %bb.h, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std3sys7process3env10CommandEnvECs2NzvFoTxuAy_2rg.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 160, !dbg !4366
  %.val19.i = load ptr, ptr %i.t, align 8, !dbg !4366, !alias.scope !4353, !noundef !413 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 168, !dbg !4366
  %.val20.i = load i64, ptr %i.u, align 8, !dbg !4366, !alias.scope !4353 ; 2 uses
  %i.v = icmp eq ptr %.val19.i, null, !dbg !4387
  br i1 %i.v, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsexYYUdYSQU6_5alloc3ffi5c_str7CStringEECs2NzvFoTxuAy_2rg.exit45.i, label %bb.k, !dbg !4387

bb.k:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsexYYUdYSQU6_5alloc3ffi5c_str7CStringEECs2NzvFoTxuAy_2rg.exit.i
  store i8 0, ptr %.val19.i, align 1, !dbg !4388
  %i.w = icmp eq i64 %.val20.i, 0, !dbg !4389
  br i1 %i.w, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsexYYUdYSQU6_5alloc3ffi5c_str7CStringEECs2NzvFoTxuAy_2rg.exit45.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i5.i.i44.i, !dbg !4389

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i5.i.i44.i: ; preds = %bb.k
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val19.i, i64 noundef %.val20.i, i64 noundef 1) #33, !dbg !4390
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsexYYUdYSQU6_5alloc3ffi5c_str7CStringEECs2NzvFoTxuAy_2rg.exit45.i, !dbg !4391

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsexYYUdYSQU6_5alloc3ffi5c_str7CStringEECs2NzvFoTxuAy_2rg.exit43.i: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i5.i.i42.i, %bb.j, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std3sys7process3env10CommandEnvECs2NzvFoTxuAy_2rg.exit41.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 160, !dbg !4366
  %.val17.i = load ptr, ptr %i.x, align 8, !dbg !4366, !alias.scope !4353, !noundef !413 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 168, !dbg !4366
  %.val18.i = load i64, ptr %i.y, align 8, !dbg !4366, !alias.scope !4353 ; 2 uses
  %i.z = icmp eq ptr %.val17.i, null, !dbg !4392
  br i1 %i.z, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsexYYUdYSQU6_5alloc3ffi5c_str7CStringEECs2NzvFoTxuAy_2rg.exit47.i, label %bb.l, !dbg !4392

bb.l:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsexYYUdYSQU6_5alloc3ffi5c_str7CStringEECs2NzvFoTxuAy_2rg.exit43.i
  store i8 0, ptr %.val17.i, align 1, !dbg !4393
  %i.aa = icmp eq i64 %.val18.i, 0, !dbg !4394
  br i1 %i.aa, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsexYYUdYSQU6_5alloc3ffi5c_str7CStringEECs2NzvFoTxuAy_2rg.exit47.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i5.i.i46.i, !dbg !4394

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i5.i.i46.i: ; preds = %bb.l
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val17.i, i64 noundef %.val18.i, i64 noundef 1) #33, !dbg !4395
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsexYYUdYSQU6_5alloc3ffi5c_str7CStringEECs2NzvFoTxuAy_2rg.exit47.i, !dbg !4396

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsexYYUdYSQU6_5alloc3ffi5c_str7CStringEECs2NzvFoTxuAy_2rg.exit45.i: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i5.i.i44.i, %bb.k, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsexYYUdYSQU6_5alloc3ffi5c_str7CStringEECs2NzvFoTxuAy_2rg.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !4366
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBG_5boxed3BoxDINtNtNtB4_3ops8function5FnMutuEp6OutputINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorENtNtB4_6marker4SendNtB2S_4SyncEL_EEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ab) #31
          to label %.body48.i unwind label %bb.w, !dbg !4366

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsexYYUdYSQU6_5alloc3ffi5c_str7CStringEECs2NzvFoTxuAy_2rg.exit47.i: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i5.i.i46.i, %bb.l, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsexYYUdYSQU6_5alloc3ffi5c_str7CStringEECs2NzvFoTxuAy_2rg.exit43.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !4366 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function5FnMutuEp6OutputINtNtB15_6result6ResultuNtNtNtB15_2io5error5ErrorENtNtB15_6marker4SendNtB2H_4SyncEL_EENtNtB13_4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %bb.n unwind label %bb.m, !dbg !4397

bb.m:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsexYYUdYSQU6_5alloc3ffi5c_str7CStringEECs2NzvFoTxuAy_2rg.exit47.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function5FnMutuEp6OutputINtNtB1c_6result6ResultuNtNtNtB1c_2io5error5ErrorENtNtB1c_6marker4SendNtB2O_4SyncEL_EENtNtB1a_4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %.body48.i unwind label %bb.o, !dbg !4398

bb.n:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsexYYUdYSQU6_5alloc3ffi5c_str7CStringEECs2NzvFoTxuAy_2rg.exit47.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function5FnMutuEp6OutputINtNtB1c_6result6ResultuNtNtNtB1c_2io5error5ErrorENtNtB1c_6marker4SendNtB2O_4SyncEL_EENtNtB1a_4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBG_5boxed3BoxDINtNtNtB4_3ops8function5FnMutuEp6OutputINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorENtNtB4_6marker4SendNtB2S_4SyncEL_EEECs2NzvFoTxuAy_2rg.exit.i unwind label %bb.p, !dbg !4399

bb.o:                                             ; preds = %bb.m
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !dbg !4397
  unreachable, !dbg !4397

.body48.i:                                        ; preds = %bb.p, %bb.m, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsexYYUdYSQU6_5alloc3ffi5c_str7CStringEECs2NzvFoTxuAy_2rg.exit45.i
  %.pn8.i = phi { ptr, i32 } [ %.pn2.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsexYYUdYSQU6_5alloc3ffi5c_str7CStringEECs2NzvFoTxuAy_2rg.exit45.i ], [ %i.aj, %bb.p ], [ %i.ad, %bb.m ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 176, !dbg !4366
  %.val27.i = load ptr, ptr %i.af, align 8, !dbg !4366, !alias.scope !4353, !align !4358, !noundef !413 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 184, !dbg !4366
  %.val28.i = load i64, ptr %i.ag, align 8, !dbg !4366, !alias.scope !4353 ; 2 uses
  %i.ah = icmp eq ptr %.val27.i, null, !dbg !4400
  %i.ai = icmp eq i64 %.val28.i, 0
  %or.cond.i.i = select i1 %i.ah, i1 true, i1 %i.ai, !dbg !4400
  br i1 %or.cond.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSmEEECs2NzvFoTxuAy_2rg.exit.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i, !dbg !4400

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %.body48.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val27.i) ]
  %1 = shl nuw nsw i64 %.val28.i, 2, !dbg !4401
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val27.i, i64 noundef %1, i64 noundef 4) #33, !dbg !4402
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSmEEECs2NzvFoTxuAy_2rg.exit.i, !dbg !4403

bb.p:                                             ; preds = %bb.n
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body48.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBG_5boxed3BoxDINtNtNtB4_3ops8function5FnMutuEp6OutputINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorENtNtB4_6marker4SendNtB2S_4SyncEL_EEECs2NzvFoTxuAy_2rg.exit.i: ; preds = %bb.n
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 176, !dbg !4366
  %.val25.i = load ptr, ptr %i.ak, align 8, !dbg !4366, !alias.scope !4353, !align !4358, !noundef !413 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 184, !dbg !4366
  %.val26.i = load i64, ptr %i.al, align 8, !dbg !4366, !alias.scope !4353 ; 2 uses
  %i.am = icmp eq ptr %.val25.i, null, !dbg !4404
  %i.an = icmp eq i64 %.val26.i, 0
  %or.cond.i50.i = select i1 %i.am, i1 true, i1 %i.an, !dbg !4404
  br i1 %or.cond.i50.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSmEEECs2NzvFoTxuAy_2rg.exit52.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i51.i, !dbg !4404

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i51.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBG_5boxed3BoxDINtNtNtB4_3ops8function5FnMutuEp6OutputINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorENtNtB4_6marker4SendNtB2S_4SyncEL_EEECs2NzvFoTxuAy_2rg.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val25.i) ]
  %2 = shl nuw nsw i64 %.val26.i, 2, !dbg !4405
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val25.i, i64 noundef %2, i64 noundef 4) #33, !dbg !4406
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSmEEECs2NzvFoTxuAy_2rg.exit52.i, !dbg !4407

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSmEEECs2NzvFoTxuAy_2rg.exit.i: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %.body48.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !4366
  %.val39.i = load i32, ptr %i.ao, align 8, !dbg !4366, !range !4359, !alias.scope !4353, !noundef !413
  %cond.i.i = icmp eq i32 %.val39.i, 3, !dbg !4408
  br i1 %cond.i.i, label %bb.q, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCsG258MDvU3F_3std3sys7process4unix6common5StdioEECs2NzvFoTxuAy_2rg.exit.i, !dbg !4408

bb.q:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSmEEECs2NzvFoTxuAy_2rg.exit.i
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 76, !dbg !4366
  %.val40.i = load i32, ptr %i.ap, align 4, !dbg !4366, !alias.scope !4353
  %i.aq = tail call noundef i32 @close(i32 noundef %.val40.i) #33, !dbg !4409 ; 0 uses
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCsG258MDvU3F_3std3sys7process4unix6common5StdioEECs2NzvFoTxuAy_2rg.exit.i, !dbg !4410

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSmEEECs2NzvFoTxuAy_2rg.exit52.i: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i51.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBG_5boxed3BoxDINtNtNtB4_3ops8function5FnMutuEp6OutputINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorENtNtB4_6marker4SendNtB2S_4SyncEL_EEECs2NzvFoTxuAy_2rg.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !4366
  %.val37.i = load i32, ptr %i.ar, align 8, !dbg !4366, !range !4359, !alias.scope !4353, !noundef !413
  %cond.i53.i = icmp eq i32 %.val37.i, 3, !dbg !4411
  br i1 %cond.i53.i, label %bb.r, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCsG258MDvU3F_3std3sys7process4unix6common5StdioEECs2NzvFoTxuAy_2rg.exit54.i, !dbg !4411

bb.r:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSmEEECs2NzvFoTxuAy_2rg.exit52.i
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 76, !dbg !4366
  %.val38.i = load i32, ptr %i.as, align 4, !dbg !4366, !alias.scope !4353
  %i.at = tail call noundef i32 @close(i32 noundef %.val38.i) #33, !dbg !4412 ; 0 uses
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCsG258MDvU3F_3std3sys7process4unix6common5StdioEECs2NzvFoTxuAy_2rg.exit54.i, !dbg !4413

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCsG258MDvU3F_3std3sys7process4unix6common5StdioEECs2NzvFoTxuAy_2rg.exit.i: ; preds = %bb.q, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSmEEECs2NzvFoTxuAy_2rg.exit.i
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !4366
  %.val35.i = load i32, ptr %i.au, align 8, !dbg !4366, !range !4359, !alias.scope !4353, !noundef !413
  %cond.i55.i = icmp eq i32 %.val35.i, 3, !dbg !4414
  br i1 %cond.i55.i, label %bb.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCsG258MDvU3F_3std3sys7process4unix6common5StdioEECs2NzvFoTxuAy_2rg.exit56.i, !dbg !4414

bb.s:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCsG258MDvU3F_3std3sys7process4unix6common5StdioEECs2NzvFoTxuAy_2rg.exit.i
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 84, !dbg !4366
  %.val36.i = load i32, ptr %i.av, align 4, !dbg !4366, !alias.scope !4353
  %i.aw = tail call noundef i32 @close(i32 noundef %.val36.i) #33, !dbg !4415 ; 0 uses
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCsG258MDvU3F_3std3sys7process4unix6common5StdioEECs2NzvFoTxuAy_2rg.exit56.i, !dbg !4416

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCsG258MDvU3F_3std3sys7process4unix6common5StdioEECs2NzvFoTxuAy_2rg.exit54.i: ; preds = %bb.r, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSmEEECs2NzvFoTxuAy_2rg.exit52.i
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !4366
  %.val33.i = load i32, ptr %i.ax, align 8, !dbg !4366, !range !4359, !alias.scope !4353, !noundef !413
  %cond.i57.i = icmp eq i32 %.val33.i, 3, !dbg !4417
  br i1 %cond.i57.i, label %bb.t, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCsG258MDvU3F_3std3sys7process4unix6common5StdioEECs2NzvFoTxuAy_2rg.exit58.i, !dbg !4417

bb.t:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCsG258MDvU3F_3std3sys7process4unix6common5StdioEECs2NzvFoTxuAy_2rg.exit54.i
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 84, !dbg !4366
  %.val34.i = load i32, ptr %i.ay, align 4, !dbg !4366, !alias.scope !4353
  %i.az = tail call noundef i32 @close(i32 noundef %.val34.i) #33, !dbg !4418 ; 0 uses
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCsG258MDvU3F_3std3sys7process4unix6common5StdioEECs2NzvFoTxuAy_2rg.exit58.i, !dbg !4419

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCsG258MDvU3F_3std3sys7process4unix6common5StdioEECs2NzvFoTxuAy_2rg.exit56.i: ; preds = %bb.s, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCsG258MDvU3F_3std3sys7process4unix6common5StdioEECs2NzvFoTxuAy_2rg.exit.i
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !4366
  %.val31.i = load i32, ptr %i.ba, align 8, !dbg !4366, !range !4359, !alias.scope !4353, !noundef !413
  %cond.i59.i = icmp eq i32 %.val31.i, 3, !dbg !4420
  br i1 %cond.i59.i, label %bb.u, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCsG258MDvU3F_3std3sys7process4unix6common5StdioEECs2NzvFoTxuAy_2rg.exit60.i, !dbg !4420

bb.u:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCsG258MDvU3F_3std3sys7process4unix6common5StdioEECs2NzvFoTxuAy_2rg.exit56.i
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 92, !dbg !4366
  %.val32.i = load i32, ptr %i.bb, align 4, !dbg !4366, !alias.scope !4353
  %i.bc = tail call noundef i32 @close(i32 noundef %.val32.i) #33, !dbg !4421 ; 0 uses
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCsG258MDvU3F_3std3sys7process4unix6common5StdioEECs2NzvFoTxuAy_2rg.exit60.i, !dbg !4422

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCsG258MDvU3F_3std3sys7process4unix6common5StdioEECs2NzvFoTxuAy_2rg.exit58.i: ; preds = %bb.t, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCsG258MDvU3F_3std3sys7process4unix6common5StdioEECs2NzvFoTxuAy_2rg.exit54.i
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !4366
  %.val29.i = load i32, ptr %i.bd, align 8, !dbg !4366, !range !4359, !alias.scope !4353, !noundef !413
  %cond.i61.i = icmp eq i32 %.val29.i, 3, !dbg !4423
  br i1 %cond.i61.i, label %bb.v, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCsG258MDvU3F_3std3sys7process4unix6common7CommandECs2NzvFoTxuAy_2rg.exit, !dbg !4423

bb.v:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCsG258MDvU3F_3std3sys7process4unix6common5StdioEECs2NzvFoTxuAy_2rg.exit58.i
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 92, !dbg !4366
  %.val30.i = load i32, ptr %i.be, align 4, !dbg !4366, !alias.scope !4353
  %i.bf = tail call noundef i32 @close(i32 noundef %.val30.i) #33, !dbg !4424 ; 0 uses
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCsG258MDvU3F_3std3sys7process4unix6common7CommandECs2NzvFoTxuAy_2rg.exit, !dbg !4425

bb.w:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsexYYUdYSQU6_5alloc3ffi5c_str7CStringEECs2NzvFoTxuAy_2rg.exit45.i, %.body.i
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !dbg !4366
  unreachable, !dbg !4366

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCsG258MDvU3F_3std3sys7process4unix6common5StdioEECs2NzvFoTxuAy_2rg.exit60.i: ; preds = %bb.u, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCsG258MDvU3F_3std3sys7process4unix6common5StdioEECs2NzvFoTxuAy_2rg.exit56.i
  resume { ptr, i32 } %.pn8.i, !dbg !4366

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCsG258MDvU3F_3std3sys7process4unix6common7CommandECs2NzvFoTxuAy_2rg.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCsG258MDvU3F_3std3sys7process4unix6common5StdioEECs2NzvFoTxuAy_2rg.exit58.i, %bb.v
  ret void, !dbg !4365
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsZksW4mvB0a_7walkdir4dent8DirEntryECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !109 {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs2NzvFoTxuAy_2rg.exit unwind label %bb.b, !dbg !4432

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs2NzvFoTxuAy_2rg.exit.i.i.i.i unwind label %bb.c, !dbg !4433

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !dbg !4432
  unreachable, !dbg !4432

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs2NzvFoTxuAy_2rg.exit.i.i.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !4432

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0), !dbg !4434
  ret void, !dbg !4435
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsZksW4mvB0a_7walkdir5error5ErrorECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !4436 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4478), !dbg !4481
  %i.b = load i64, ptr %0, align 8, !dbg !4482, !range !442, !alias.scope !4478, !noundef !413
  %i.c = icmp eq i64 %i.b, -1, !dbg !4482
  br i1 %i.c, label %bb.b, label %bb.f, !dbg !4482

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !4482 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !dbg !4483, !range !442, !alias.scope !4479, !noundef !413
  %i.f = icmp eq i64 %i.e, -1, !dbg !4483
  br i1 %i.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECs2NzvFoTxuAy_2rg.exit.i, label %bb.c, !dbg !4483

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs2NzvFoTxuAy_2rg.exit.i.i unwind label %bb.d, !dbg !4484

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body.i unwind label %bb.e, !dbg !4485

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !dbg !4484
  unreachable, !dbg !4484

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs2NzvFoTxuAy_2rg.exit.i.i: ; preds = %bb.c
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECs2NzvFoTxuAy_2rg.exit.i unwind label %bb.i, !dbg !4486

bb.f:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs2NzvFoTxuAy_2rg.exit.i.i unwind label %bb.g, !dbg !4487

bb.g:                                             ; preds = %bb.f
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
          to label %.body3.i unwind label %bb.h, !dbg !4488

bb.h:                                             ; preds = %bb.g
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !dbg !4487
  unreachable, !dbg !4487

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs2NzvFoTxuAy_2rg.exit.i.i: ; preds = %bb.f
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs2NzvFoTxuAy_2rg.exit.i unwind label %bb.m, !dbg !4489

bb.i:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs2NzvFoTxuAy_2rg.exit.i.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.body.i, !dbg !4482

.body.i:                                          ; preds = %bb.i, %bb.d
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.k, %bb.i ], [ %i.g, %bb.d ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !4482
  %.val2.i = load ptr, ptr %i.l, align 8, !dbg !4482, !alias.scope !4478, !nonnull !413, !noundef !413
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs2NzvFoTxuAy_2rg(ptr nonnull %.val2.i) #31
          to label %common.resume.i unwind label %bb.l, !dbg !4482

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECs2NzvFoTxuAy_2rg.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs2NzvFoTxuAy_2rg.exit.i.i, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !4482
  %.val.i = load ptr, ptr %i.m, align 8, !dbg !4482, !alias.scope !4478, !nonnull !413, !noundef !413 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !4490, !noalias !4478
  %i.n = ptrtoint ptr %.val.i to i64, !dbg !4491  ; 2 uses
  %i.o = and i64 %i.n, 3, !dbg !4492
  switch i64 %i.o, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs2NzvFoTxuAy_2rg.exit.i
    i64 3, label %bb.j
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs2NzvFoTxuAy_2rg.exit.i
    i64 1, label %bb.k
  ], !dbg !4493, !prof !423

default.unreachable:                              ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECs2NzvFoTxuAy_2rg.exit.i
  unreachable

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECs2NzvFoTxuAy_2rg.exit.i
  %i.p = icmp ult ptr %.val.i, inttoptr (i64 188978561024 to ptr), !dbg !4494
  %i.q = and i64 %i.n, 1095216660480, !dbg !4495
end_hunk_2
begin_hunk_3_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer9hyperlink15HyperlinkFormatECs2NzvFoTxuAy_2rg:bb.a
bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCshhHc5tDBDRu_12grep_printer9hyperlink4PartENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtCshhHc5tDBDRu_12grep_printer9hyperlink4PartEECs2NzvFoTxuAy_2rg.exit.i unwind label %bb.c, !dbg !5641

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !dbg !5640
  unreachable, !dbg !5640

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtCshhHc5tDBDRu_12grep_printer9hyperlink4PartEECs2NzvFoTxuAy_2rg.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !5640

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCshhHc5tDBDRu_12grep_printer9hyperlink4PartEECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCshhHc5tDBDRu_12grep_printer9hyperlink4PartENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0), !dbg !5642
  ret void, !dbg !5643
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer9hyperlink20HyperlinkEnvironmentECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !5644 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !5661, !range !442, !alias.scope !5659, !noundef !413
  %i.b = icmp eq i64 %i.a, -1, !dbg !5661
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs2NzvFoTxuAy_2rg.exit, label %bb.b, !dbg !5661

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs2NzvFoTxuAy_2rg.exit.i unwind label %bb.c, !dbg !5662

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.d, !dbg !5663

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !dbg !5662
  unreachable, !dbg !5662

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs2NzvFoTxuAy_2rg.exit.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs2NzvFoTxuAy_2rg.exit unwind label %bb.e, !dbg !5664

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs2NzvFoTxuAy_2rg.exit.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !5665

.body:                                            ; preds = %bb.c, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.c, %bb.c ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !5665
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) #31
          to label %common.resume unwind label %bb.i, !dbg !5665

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs2NzvFoTxuAy_2rg.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !5665 ; 4 uses
  %i.h = load i64, ptr %i.g, align 8, !dbg !5666, !range !442, !alias.scope !5660, !noundef !413
  %i.i = icmp eq i64 %i.h, -1, !dbg !5666
  br i1 %i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs2NzvFoTxuAy_2rg.exit3, label %bb.f, !dbg !5666

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs2NzvFoTxuAy_2rg.exit
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs2NzvFoTxuAy_2rg.exit.i2 unwind label %bb.g, !dbg !5667

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %common.resume unwind label %bb.h, !dbg !5668

bb.h:                                             ; preds = %bb.g
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !dbg !5667
  unreachable, !dbg !5667

common.resume:                                    ; preds = %.body, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.g ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op, !dbg !5665

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs2NzvFoTxuAy_2rg.exit.i2: ; preds = %bb.f
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g), !dbg !5669
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs2NzvFoTxuAy_2rg.exit3, !dbg !5666

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs2NzvFoTxuAy_2rg.exit3: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs2NzvFoTxuAy_2rg.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs2NzvFoTxuAy_2rg.exit.i2
  ret void, !dbg !5665

bb.i:                                             ; preds = %.body
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !dbg !5665
  unreachable, !dbg !5665
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshqpdr3wwzuw_13grep_searcher8searcher8SearcherECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(264) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !5670 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !5687 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs2NzvFoTxuAy_2rg.exit.i unwind label %bb.b, !dbg !5688

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.c, !dbg !5689

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !dbg !5688
  unreachable, !dbg !5688

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs2NzvFoTxuAy_2rg.exit.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs2NzvFoTxuAy_2rg.exit unwind label %bb.d, !dbg !5690

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs2NzvFoTxuAy_2rg.exit.i
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !5691

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.d, %bb.d ], [ %i.b, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !5691
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellNtNtCshqpdr3wwzuw_13grep_searcher11line_buffer10LineBufferEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(112) %i.e) #31
          to label %.body2 unwind label %bb.j, !dbg !5691

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs2NzvFoTxuAy_2rg.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs2NzvFoTxuAy_2rg.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 176, !dbg !5692 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellNtNtCshqpdr3wwzuw_13grep_searcher11line_buffer10LineBufferEECs2NzvFoTxuAy_2rg.exit.i unwind label %bb.e, !dbg !5693

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs2NzvFoTxuAy_2rg.exit
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body2 unwind label %bb.f, !dbg !5694

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !dbg !5693
  unreachable, !dbg !5693

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellNtNtCshqpdr3wwzuw_13grep_searcher11line_buffer10LineBufferEECs2NzvFoTxuAy_2rg.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs2NzvFoTxuAy_2rg.exit
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellNtNtCshqpdr3wwzuw_13grep_searcher11line_buffer10LineBufferEECs2NzvFoTxuAy_2rg.exit unwind label %bb.g, !dbg !5695

.body2:                                           ; preds = %bb.g, %bb.e, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.j, %bb.g ], [ %i.g, %bb.e ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 232, !dbg !5691
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(32) %i.i) #31
          to label %common.resume unwind label %bb.j, !dbg !5691

bb.g:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellNtNtCshqpdr3wwzuw_13grep_searcher11line_buffer10LineBufferEECs2NzvFoTxuAy_2rg.exit.i
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %.body2

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellNtNtCshqpdr3wwzuw_13grep_searcher11line_buffer10LineBufferEECs2NzvFoTxuAy_2rg.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellNtNtCshqpdr3wwzuw_13grep_searcher11line_buffer10LineBufferEECs2NzvFoTxuAy_2rg.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 240, !dbg !5696 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs2NzvFoTxuAy_2rg.exit6 unwind label %bb.h, !dbg !5697

bb.h:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellNtNtCshqpdr3wwzuw_13grep_searcher11line_buffer10LineBufferEECs2NzvFoTxuAy_2rg.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %common.resume unwind label %bb.i, !dbg !5698

bb.i:                                             ; preds = %bb.h
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !dbg !5697
  unreachable, !dbg !5697

common.resume:                                    ; preds = %.body2, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.h ], [ %.pn, %.body2 ]
  resume { ptr, i32 } %common.resume.op, !dbg !5691

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs2NzvFoTxuAy_2rg.exit6: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellNtNtCshqpdr3wwzuw_13grep_searcher11line_buffer10LineBufferEECs2NzvFoTxuAy_2rg.exit
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k), !dbg !5699
  ret void, !dbg !5691

bb.j:                                             ; preds = %.body2, %.body
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !dbg !5691
  unreachable, !dbg !5691
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs2NzvFoTxuAy_2rg(ptr %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !3 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !5716
  %i.b = ptrtoint ptr %.0.val to i64, !dbg !5717  ; 2 uses
  %i.c = and i64 %i.b, 3, !dbg !5718
  switch i64 %i.c, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs2NzvFoTxuAy_2rg.exit
    i64 3, label %bb.b
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs2NzvFoTxuAy_2rg.exit
    i64 1, label %bb.c
  ], !dbg !5719, !prof !423

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult ptr %.0.val, inttoptr (i64 188978561024 to ptr), !dbg !5720
  %i.e = and i64 %i.b, 1095216660480, !dbg !5721
  %i.f = icmp ne i64 %i.e, 1095216660480, !dbg !5721
  tail call void @llvm.assume(i1 %i.d), !dbg !5722
  tail call void @llvm.assume(i1 %i.f), !dbg !5722
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs2NzvFoTxuAy_2rg.exit, !dbg !5723

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %.0.val, i64 -1, !dbg !5724 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ], !dbg !5725
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !5726 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8, !dbg !5726, !alias.scope !5715
  store i8 3, ptr %i.a, align 8, !dbg !5727, !alias.scope !5715
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h), !dbg !5728
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs2NzvFoTxuAy_2rg.exit, !dbg !5729

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.a, %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !5730
  ret void, !dbg !5731
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2NzvFoTxuAy_2rg5flags6hiargs5PathsEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !230 {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsG258MDvU3F_3std4path7PathBufENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsG258MDvU3F_3std4path7PathBufEECs2NzvFoTxuAy_2rg.exit unwind label %bb.b, !dbg !5735

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsG258MDvU3F_3std4path7PathBufENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtCsG258MDvU3F_3std4path7PathBufEECs2NzvFoTxuAy_2rg.exit.i unwind label %bb.c, !dbg !5736

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !dbg !5735
  unreachable, !dbg !5735

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtCsG258MDvU3F_3std4path7PathBufEECs2NzvFoTxuAy_2rg.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !5735

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsG258MDvU3F_3std4path7PathBufEECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsG258MDvU3F_3std4path7PathBufENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0), !dbg !5737
  ret void, !dbg !5738
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2NzvFoTxuAy_2rg5flags6hiargs5StateEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !231 {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs2NzvFoTxuAy_2rg.exit unwind label %bb.b, !dbg !5745

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs2NzvFoTxuAy_2rg.exit.i.i.i.i unwind label %bb.c, !dbg !5746

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !dbg !5745
  unreachable, !dbg !5745

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs2NzvFoTxuAy_2rg.exit.i.i.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !5745

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0), !dbg !5747
  ret void, !dbg !5748
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2NzvFoTxuAy_2rg5flags6hiargs8PatternsEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !232 {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECs2NzvFoTxuAy_2rg.exit unwind label %bb.b, !dbg !5752

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtBG_6string6StringEECs2NzvFoTxuAy_2rg.exit.i unwind label %bb.c, !dbg !5753

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !dbg !5752
  unreachable, !dbg !5752

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtBG_6string6StringEECs2NzvFoTxuAy_2rg.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !5752

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0), !dbg !5754
  ret void, !dbg !5755
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2NzvFoTxuAy_2rg5flags7lowargs16ContextSeparatorEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !233 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !5764, !range !442, !alias.scope !5763, !noundef !413
  %i.b = icmp eq i64 %i.a, -1, !dbg !5764
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7A2UQWilAX1_4bstr7bstring7BStringEECs2NzvFoTxuAy_2rg.exit, label %bb.b, !dbg !5764

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs7A2UQWilAX1_4bstr7bstring7BStringECs2NzvFoTxuAy_2rg.exit.i unwind label %bb.c, !dbg !5765

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs2NzvFoTxuAy_2rg.exit.i.i.i unwind label %bb.d, !dbg !5766

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !dbg !5765
  unreachable, !dbg !5765

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs2NzvFoTxuAy_2rg.exit.i.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.c, !dbg !5765

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs7A2UQWilAX1_4bstr7bstring7BStringECs2NzvFoTxuAy_2rg.exit.i: ; preds = %bb.b
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0), !dbg !5767
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7A2UQWilAX1_4bstr7bstring7BStringEECs2NzvFoTxuAy_2rg.exit, !dbg !5764

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7A2UQWilAX1_4bstr7bstring7BStringEECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs7A2UQWilAX1_4bstr7bstring7BStringECs2NzvFoTxuAy_2rg.exit.i
  ret void, !dbg !5768
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2NzvFoTxuAy_2rg5flags7lowargs19FieldMatchSeparatorEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !234 {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs7A2UQWilAX1_4bstr7bstring7BStringECs2NzvFoTxuAy_2rg.exit unwind label %bb.b, !dbg !5773

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs2NzvFoTxuAy_2rg.exit.i.i unwind label %bb.c, !dbg !5774

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !dbg !5773
  unreachable, !dbg !5773

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs2NzvFoTxuAy_2rg.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !5773

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs7A2UQWilAX1_4bstr7bstring7BStringECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0), !dbg !5775
  ret void, !dbg !5776
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2NzvFoTxuAy_2rg5flags7lowargs21FieldContextSeparatorEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !235 {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs7A2UQWilAX1_4bstr7bstring7BStringECs2NzvFoTxuAy_2rg.exit unwind label %bb.b, !dbg !5781

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs2NzvFoTxuAy_2rg.exit.i.i unwind label %bb.c, !dbg !5782

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !dbg !5781
  unreachable, !dbg !5781

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs2NzvFoTxuAy_2rg.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !5781

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs7A2UQWilAX1_4bstr7bstring7BStringECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0), !dbg !5783
  ret void, !dbg !5784
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std2io5stdio10StderrLockECs2NzvFoTxuAy_2rg(ptr %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !236 {
end_hunk_3
begin_hunk_4_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsgPiXjGfBJkm_14regex_automata3nfa8thompson6pikevm12ActiveStatesECs2NzvFoTxuAy_2rg:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !6046
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsgPiXjGfBJkm_14regex_automata3nfa8thompson6pikevm9SlotTableECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(40) %i.b) #31
          to label %common.resume unwind label %bb.f, !dbg !6046

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !6046 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsgPiXjGfBJkm_14regex_automata4util10primitives11NonMaxUsizeEENtNtNtBK_3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsgPiXjGfBJkm_14regex_automata3nfa8thompson6pikevm9SlotTableECs2NzvFoTxuAy_2rg.exit unwind label %bb.d, !dbg !6047

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsgPiXjGfBJkm_14regex_automata4util10primitives11NonMaxUsizeEENtNtNtBR_3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %common.resume unwind label %bb.e, !dbg !6048

bb.e:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !dbg !6047
  unreachable, !dbg !6047

common.resume:                                    ; preds = %bb.b, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.d ], [ %i.a, %bb.b ]
  resume { ptr, i32 } %common.resume.op, !dbg !6046

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsgPiXjGfBJkm_14regex_automata3nfa8thompson6pikevm9SlotTableECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsgPiXjGfBJkm_14regex_automata4util10primitives11NonMaxUsizeEENtNtNtBR_3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c), !dbg !6049
  ret void, !dbg !6046

bb.f:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !dbg !6046
  unreachable, !dbg !6046
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsgPiXjGfBJkm_14regex_automata3nfa8thompson6pikevm9SlotTableECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !258 {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsgPiXjGfBJkm_14regex_automata4util10primitives11NonMaxUsizeEENtNtNtBK_3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCsgPiXjGfBJkm_14regex_automata4util10primitives11NonMaxUsizeEEECs2NzvFoTxuAy_2rg.exit unwind label %bb.b, !dbg !6053

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsgPiXjGfBJkm_14regex_automata4util10primitives11NonMaxUsizeEENtNtNtBR_3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecINtNtB4_6option6OptionNtNtNtCsgPiXjGfBJkm_14regex_automata4util10primitives11NonMaxUsizeEEECs2NzvFoTxuAy_2rg.exit.i unwind label %bb.c, !dbg !6054

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !dbg !6053
  unreachable, !dbg !6053

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecINtNtB4_6option6OptionNtNtNtCsgPiXjGfBJkm_14regex_automata4util10primitives11NonMaxUsizeEEECs2NzvFoTxuAy_2rg.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !6053

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCsgPiXjGfBJkm_14regex_automata4util10primitives11NonMaxUsizeEEECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsgPiXjGfBJkm_14regex_automata4util10primitives11NonMaxUsizeEENtNtNtBR_3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0), !dbg !6055
  ret void, !dbg !6056
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsgPiXjGfBJkm_14regex_automata3nfa8thompson9backtrack7VisitedECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !260 {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecjEECs2NzvFoTxuAy_2rg.exit unwind label %bb.b, !dbg !6060

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecjEECs2NzvFoTxuAy_2rg.exit.i unwind label %bb.c, !dbg !6061

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !dbg !6060
  unreachable, !dbg !6060

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecjEECs2NzvFoTxuAy_2rg.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !6060

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecjEECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0), !dbg !6062
  ret void, !dbg !6063
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsgPiXjGfBJkm_14regex_automata4util11determinize5state17StateBuilderEmptyECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !263 {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2NzvFoTxuAy_2rg.exit unwind label %bb.b, !dbg !6067

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs2NzvFoTxuAy_2rg.exit.i unwind label %bb.c, !dbg !6068

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !dbg !6067
  unreachable, !dbg !6067

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs2NzvFoTxuAy_2rg.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !6067

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0), !dbg !6069
  ret void, !dbg !6070
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull writeonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) unnamed_addr #1 !dbg !6071 {
bb.a:
  %.not = icmp eq i64 %1, %3, !dbg !6074
  br i1 %.not, label %bb.c, label %bb.b, !dbg !6074, !prof !524

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNvNtCskKLDkoKarTP_4core5slice20copy_from_slice_impl17len_mismatch_fail(i64 noundef %1, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) #36, !dbg !6075
  unreachable, !dbg !6075

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %0, ptr nonnull align 1 %2, i64 %1, i1 false), !dbg !6076
  ret void, !dbg !6077
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull writeonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) unnamed_addr #1 !dbg !6078 {
bb.a:
  %.not = icmp eq i64 %1, %3, !dbg !6081
  br i1 %.not, label %bb.c, label %bb.b, !dbg !6081, !prof !524

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNvNtCskKLDkoKarTP_4core5slice20copy_from_slice_impl17len_mismatch_fail(i64 noundef %1, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) #36, !dbg !6082
  unreachable, !dbg !6082

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %0, ptr nonnull align 1 %2, i64 %1, i1 false), !dbg !6083
  ret void, !dbg !6084
}

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core9panicking13assert_failedINtNtB4_6option6OptionNtNtNtCs2NzvFoTxuAy_2rg5flags7lowargs11SpecialModeEBM_EB1e_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %0) unnamed_addr #3 !dbg !6085 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr @22, ptr %i.b, align 8
  store ptr %0, ptr %i.a, align 8
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19assert_failed_inner(i8 noundef 0, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @12, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @12, ptr noundef nonnull @23, ptr nonnull inttoptr (i64 75 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #36, !dbg !6088
  unreachable, !dbg !6088
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs0_NtNtCs2NzvFoTxuAy_2rg5flags6hiargsNtB7_8Patterns13from_low_args0Bb_(ptr nonnull %.0.val, ptr %.8.val, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !6089 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = invoke noundef zeroext i1 @_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringuNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE12contains_keyBO_ECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.0.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0)
          to label %bb.b unwind label %bb.n, !dbg !6133

bb.b:                                             ; preds = %bb.a
  br i1 %i.c, label %bb.d, label %bb.c, !dbg !6134

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !6135
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0)
          to label %bb.g unwind label %bb.n, !dbg !6136

bb.d:                                             ; preds = %bb.b
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs2NzvFoTxuAy_2rg.exit unwind label %bb.e, !dbg !6137

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %common.resume unwind label %bb.f, !dbg !6138

bb.f:                                             ; preds = %bb.e
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !dbg !6137
  unreachable, !dbg !6137

common.resume:                                    ; preds = %bb.n, %bb.j, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.q, %bb.n ], [ %i.k, %bb.j ]
  resume { ptr, i32 } %common.resume.op, !dbg !6139

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.d
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0), !dbg !6140
  br label %bb.m, !dbg !6141

bb.g:                                             ; preds = %bb.c
  %i.f = invoke noundef zeroext i1 @_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringuNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6insertCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %.0.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.h unwind label %bb.n, !dbg !6142 ; 0 uses

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !6143
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !6144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !dbg !6144
  %i.g = getelementptr inbounds nuw i8, ptr %.8.val, i64 16, !dbg !6145 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !dbg !6145, !alias.scope !6131, !noalias !6132, !noundef !413 ; 3 uses
  %i.i = load i64, ptr %.8.val, align 8, !dbg !6146, !range !528, !alias.scope !6131, !noalias !6132, !noundef !413
  %i.j = icmp eq i64 %i.h, %i.i, !dbg !6147
  br i1 %i.j, label %bb.i, label %bb.l, !dbg !6147

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringE8grow_oneCsG258MDvU3F_3std(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.8.val)
          to label %bb.l unwind label %bb.j, !dbg !6148, !noalias !6132

bb.j:                                             ; preds = %bb.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #31
          to label %common.resume unwind label %bb.k, !dbg !6149

bb.k:                                             ; preds = %bb.j
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !dbg !6150
  unreachable, !dbg !6150

bb.l:                                             ; preds = %bb.i, %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %.8.val, i64 8, !dbg !6151
  %i.n = load ptr, ptr %i.m, align 8, !dbg !6151, !alias.scope !6131, !noalias !6132, !nonnull !413, !noundef !413
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %i.h, !dbg !6152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !6153
  %i.p = add i64 %i.h, 1, !dbg !6154
  store i64 %i.p, ptr %i.g, align 8, !dbg !6154, !alias.scope !6131, !noalias !6132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !6155
  br label %bb.m, !dbg !6141

bb.m:                                             ; preds = %bb.l, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs2NzvFoTxuAy_2rg.exit
  ret void, !dbg !6156

bb.n:                                             ; preds = %bb.a, %bb.c, %bb.g
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #31
          to label %common.resume unwind label %bb.o, !dbg !6141

bb.o:                                             ; preds = %bb.n
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !dbg !6157
  unreachable, !dbg !6157
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCNvNtNtCskKLDkoKarTP_4core3str7pattern13simd_containss0_0Cs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i16 noundef range(i16 1, 0) %2, i1 noundef zeroext %3) unnamed_addr #4 personality ptr @rust_eh_personality !dbg !6158 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 11 uses
  br i1 %3, label %.loopexit, label %.preheader, !dbg !6242

.preheader:                                       ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !nonnull !413, !noundef !413
  %i.c = getelementptr i8, ptr %i.b, i64 %1       ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !noundef !413 ; 4 uses
  %i.g = load ptr, ptr %i.d, align 8, !nonnull !413, !noundef !413 ; 3 uses
  %i.h = icmp samesign ult i64 %i.f, 4
  %i.i = getelementptr i8, ptr %i.g, i64 %i.f     ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 -4
  %.sroa.518.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.619.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  br i1 %i.h, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %_RNvNtNtCskKLDkoKarTP_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us
  %.sroa.0.08.us = phi i16 [ %i.w, %_RNvNtNtCskKLDkoKarTP_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us ], [ %2, %.preheader ] ; 2 uses
  %i.k = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0.08.us, i1 true), !dbg !6243 ; 2 uses
  %i.l = zext nneg i16 %i.k to i64, !dbg !6244
  %i.m = getelementptr i8, ptr %i.c, i64 %i.l, !dbg !6245
  %i.n = getelementptr i8, ptr %i.m, i64 1, !dbg !6245 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6227), !dbg !6246
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6228), !dbg !6246
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !6247
  %i.o = getelementptr i8, ptr %i.n, i64 %i.f, !dbg !6248
  call void @_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull readonly %i.n, ptr noundef nonnull readonly %i.o, ptr noundef nonnull readonly %i.g, ptr noundef nonnull readonly %i.i), !dbg !6249
  %.sroa.0.0.copyload.i.us = load ptr, ptr %i.a, align 8, !dbg !6250, !noalias !6232 ; 2 uses
  %.sroa.518.0.copyload.i.us = load ptr, ptr %.sroa.518.0..sroa_idx.i, align 8, !dbg !6250, !noalias !6232 ; 2 uses
  %.sroa.619.0.copyload.i.us = load i64, ptr %.sroa.619.0..sroa_idx.i, align 8, !dbg !6250, !noalias !6232 ; 3 uses
  %.sroa.8.0.copyload.i.us = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8, !dbg !6250, !noalias !6232 ; 2 uses
  %umax.i.us = tail call i64 @llvm.umax.i64(i64 %.sroa.619.0.copyload.i.us, i64 %.sroa.8.0.copyload.i.us), !dbg !6251
  %exitcond.not.i.us17.not = icmp ult i64 %.sroa.619.0.copyload.i.us, %.sroa.8.0.copyload.i.us, !dbg !6252
  br i1 %exitcond.not.i.us17.not, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs2NzvFoTxuAy_2rg.exit.i.us.preheader, label %_RNvNtNtCskKLDkoKarTP_4core3str7pattern14small_slice_eq.exit.thread5, !dbg !6252

_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs2NzvFoTxuAy_2rg.exit.i.us.preheader: ; preds = %.preheader.split.us
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.us), "nonnull"(ptr %.sroa.518.0.copyload.i.us) ]
  br label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs2NzvFoTxuAy_2rg.exit.i.us, !dbg !6253

bb.b:                                             ; preds = %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs2NzvFoTxuAy_2rg.exit.i.us
  %i.p = add i64 %.sroa.619.0.i.us18, 1, !dbg !6254 ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.p, %umax.i.us, !dbg !6252
  br i1 %exitcond.not.i.us, label %_RNvNtNtCskKLDkoKarTP_4core3str7pattern14small_slice_eq.exit.thread5, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs2NzvFoTxuAy_2rg.exit.i.us, !dbg !6252

_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs2NzvFoTxuAy_2rg.exit.i.us: ; preds = %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs2NzvFoTxuAy_2rg.exit.i.us.preheader, %bb.b
  %.sroa.619.0.i.us18 = phi i64 [ %i.p, %bb.b ], [ %.sroa.619.0.copyload.i.us, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs2NzvFoTxuAy_2rg.exit.i.us.preheader ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.us, i64 %.sroa.619.0.i.us18, !dbg !6255
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.518.0.copyload.i.us, i64 %.sroa.619.0.i.us18, !dbg !6256
  %i.s = load i8, ptr %i.q, align 1, !dbg !6257, !noundef !413
  %i.t = load i8, ptr %i.r, align 1, !dbg !6258, !noundef !413
  %.not17.i.us = icmp eq i8 %i.s, %i.t, !dbg !6253
  br i1 %.not17.i.us, label %bb.b, label %_RNvNtNtCskKLDkoKarTP_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us, !dbg !6253

_RNvNtNtCskKLDkoKarTP_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us: ; preds = %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs2NzvFoTxuAy_2rg.exit.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !6259
  %i.u = shl nuw i16 1, %i.k, !dbg !6260
  %i.v = xor i16 %i.u, -1, !dbg !6261
  %i.w = and i16 %.sroa.0.08.us, %i.v, !dbg !6262 ; 2 uses
  %i.x = icmp eq i16 %i.w, 0, !dbg !6263
  br i1 %i.x, label %.loopexit, label %.preheader.split.us, !dbg !6263

.preheader.split:                                 ; preds = %.preheader, %bb.d
  %.sroa.0.08 = phi i16 [ %i.al, %bb.d ], [ %2, %.preheader ] ; 2 uses
  %i.y = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0.08, i1 true), !dbg !6243 ; 2 uses
  %i.z = zext nneg i16 %i.y to i64, !dbg !6244
  %i.aa = getelementptr i8, ptr %i.c, i64 %i.z, !dbg !6245
  %i.ab = getelementptr i8, ptr %i.aa, i64 1, !dbg !6245 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6227), !dbg !6246
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6228), !dbg !6246
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !6247
  %i.ac = getelementptr i8, ptr %i.ab, i64 %i.f, !dbg !6248
  %i.ad = getelementptr i8, ptr %i.ac, i64 -4, !dbg !6264 ; 3 uses
  %i.ae = icmp ult ptr %i.ab, %i.ad, !dbg !6265
  br i1 %i.ae, label %.lr.ph.i, label %_RNvNtNtCskKLDkoKarTP_4core3str7pattern14small_slice_eq.exit, !dbg !6265

.lr.ph.i:                                         ; preds = %.preheader.split, %bb.c
  %.sroa.04.026.i = phi ptr [ %i.af, %bb.c ], [ %i.ab, %.preheader.split ] ; 2 uses
  %.sroa.08.025.i = phi ptr [ %i.ag, %bb.c ], [ %i.g, %.preheader.split ] ; 2 uses
  %.sroa.011.0.copyload.i = load i32, ptr %.sroa.04.026.i, align 1, !dbg !6266, !alias.scope !6227, !noalias !6228
  %.sroa.012.0.copyload.i = load i32, ptr %.sroa.08.025.i, align 1, !dbg !6267, !alias.scope !6228, !noalias !6227
  %.not.i = icmp eq i32 %.sroa.011.0.copyload.i, %.sroa.012.0.copyload.i, !dbg !6268
  br i1 %.not.i, label %bb.c, label %_RNvNtNtCskKLDkoKarTP_4core3str7pattern14small_slice_eq.exit.thread.loopexit7, !dbg !6268

bb.c:                                             ; preds = %.lr.ph.i
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.04.026.i, i64 4, !dbg !6269 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.08.025.i, i64 4, !dbg !6270
  %i.ah = icmp ult ptr %i.af, %i.ad, !dbg !6265
  br i1 %i.ah, label %.lr.ph.i, label %_RNvNtNtCskKLDkoKarTP_4core3str7pattern14small_slice_eq.exit, !dbg !6265

_RNvNtNtCskKLDkoKarTP_4core3str7pattern14small_slice_eq.exit.thread5: ; preds = %.preheader.split.us, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !6259
  br label %.loopexit, !dbg !6246

_RNvNtNtCskKLDkoKarTP_4core3str7pattern14small_slice_eq.exit.thread.loopexit7: ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !6259
  br label %bb.d, !dbg !6246

_RNvNtNtCskKLDkoKarTP_4core3str7pattern14small_slice_eq.exit: ; preds = %bb.c, %.preheader.split
  %.sroa.013.0.copyload.i = load i32, ptr %i.ad, align 1, !dbg !6271, !alias.scope !6227, !noalias !6228
  %.sroa.014.0.copyload.i = load i32, ptr %i.j, align 1, !dbg !6272, !alias.scope !6228, !noalias !6227
  %i.ai = icmp eq i32 %.sroa.013.0.copyload.i, %.sroa.014.0.copyload.i, !dbg !6273
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !6259
  br i1 %i.ai, label %.loopexit, label %bb.d, !dbg !6246

.loopexit:                                        ; preds = %bb.d, %_RNvNtNtCskKLDkoKarTP_4core3str7pattern14small_slice_eq.exit, %_RNvNtNtCskKLDkoKarTP_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us, %_RNvNtNtCskKLDkoKarTP_4core3str7pattern14small_slice_eq.exit.thread5, %bb.a
  %.sroa.03.0 = phi i1 [ true, %_RNvNtNtCskKLDkoKarTP_4core3str7pattern14small_slice_eq.exit.thread5 ], [ false, %bb.a ], [ false, %_RNvNtNtCskKLDkoKarTP_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us ], [ true, %_RNvNtNtCskKLDkoKarTP_4core3str7pattern14small_slice_eq.exit ], [ false, %bb.d ], !dbg !6274
  ret i1 %.sroa.03.0, !dbg !6275

bb.d:                                             ; preds = %_RNvNtNtCskKLDkoKarTP_4core3str7pattern14small_slice_eq.exit.thread.loopexit7, %_RNvNtNtCskKLDkoKarTP_4core3str7pattern14small_slice_eq.exit
  %i.aj = shl nuw i16 1, %i.y, !dbg !6260
  %i.ak = xor i16 %i.aj, -1, !dbg !6261
  %i.al = and i16 %.sroa.0.08, %i.ak, !dbg !6262  ; 2 uses
  %i.am = icmp eq i16 %i.al, 0, !dbg !6263
  br i1 %i.am, label %.loopexit, label %.preheader.split, !dbg !6263
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvMNtCskKLDkoKarTP_4core5sliceSh11starts_withCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #5 !dbg !6276 {
bb.a:
  %.not = icmp samesign ult i64 %1, %3, !dbg !6284
  br i1 %.not, label %bb.b, label %bb.c, !dbg !6284

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.0 = phi i1 [ %i.a, %bb.c ], [ false, %bb.a ], !dbg !6285
  ret i1 %.sroa.0.0, !dbg !6286

bb.c:                                             ; preds = %bb.a
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %2, ptr nonnull readonly %0, i64 range(i64 0, -9223372036854775808) %3), !dbg !6287
  %i.a = icmp eq i32 %bcmp.i, 0, !dbg !6287
  br label %bb.b, !dbg !6284
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvMNtCskKLDkoKarTP_4core5sliceSh9ends_withCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #5 !dbg !6288 {
bb.a:
  %.not = icmp samesign ult i64 %1, %3, !dbg !6304
  br i1 %.not, label %bb.b, label %bb.c, !dbg !6304

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.0 = phi i1 [ %i.c, %bb.c ], [ false, %bb.a ], !dbg !6305
  ret i1 %.sroa.0.0, !dbg !6306

bb.c:                                             ; preds = %bb.a
  %i.a = sub nuw nsw i64 %1, %3, !dbg !6307
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %i.a, !dbg !6308
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %2, ptr nonnull readonly %i.b, i64 range(i64 0, -9223372036854775808) %3), !dbg !6309
  %i.c = icmp eq i32 %bcmp.i, 0, !dbg !6309
  br label %bb.b, !dbg !6310
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtNtCs2NzvFoTxuAy_2rg5flags6hiargsNtB2_6HiArgs12matcher_rust(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(104) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(944) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !6311 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 11 uses
  %i.g = alloca [24 x i8], align 8                ; 12 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [32 x i8], align 8                ; 6 uses
  %i.j = alloca [104 x i8], align 8               ; 6 uses
  %i.k = alloca [40 x i8], align 8                ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !6470
  store i64 104857600, ptr %i.k, align 8, !dbg !6471
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !6471 ; 2 uses
  store i64 1048576000, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !6471
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !6471
  store i32 250, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !6471
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 20, !dbg !6471 ; 5 uses
  store i8 2, ptr %.sroa.6.0..sroa_idx, align 4, !dbg !6471
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 22, !dbg !6471 ; 2 uses
  store i8 0, ptr %.sroa.8.0..sroa_idx, align 2, !dbg !6471
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24, !dbg !6471 ; 2 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 26, !dbg !6471
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 27, !dbg !6471 ; 2 uses
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 30, !dbg !6471
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %.sroa.10.0..sroa_idx, i8 0, i64 6, i1 false), !dbg !6471
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 31, !dbg !6471
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32, !dbg !6471 ; 2 uses
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 33, !dbg !6471
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 34, !dbg !6471
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 35, !dbg !6471
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32, !dbg !6471
  store i32 0, ptr %i.l, align 8, !dbg !6471
  store i8 1, ptr %.sroa.12.0..sroa_idx, align 2, !dbg !6472
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 926, !dbg !6473
  %i.n = load i8, ptr %i.m, align 2, !dbg !6473, !range !476, !noundef !413
  %i.o = xor i8 %i.n, 1, !dbg !6474
  store i8 %i.o, ptr %.sroa.16.0..sroa_idx, align 2, !dbg !6475
  store i8 0, ptr %.sroa.17.0..sroa_idx, align 1, !dbg !6476
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 906, !dbg !6477
  %i.q = load i8, ptr %i.p, align 2, !dbg !6477, !range !476, !noundef !413
  store i8 %i.q, ptr %.sroa.20.0..sroa_idx, align 2, !dbg !6478
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 939, !dbg !6479
  %i.s = load i8, ptr %i.r, align 1, !dbg !6479, !range !484, !noundef !413
  switch i8 %i.s, label %default.unreachable16 [
    i8 0, label %bb.d
    i8 1, label %bb.b
    i8 2, label %bb.c
  ], !dbg !6480

default.unreachable16:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %.sroa.10.0..sroa_idx, align 8, !dbg !6481
  br label %bb.d, !dbg !6482

bb.c:                                             ; preds = %bb.a
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 25, !dbg !6471
  store i8 1, ptr %.sroa.11.0..sroa_idx, align 1, !dbg !6483
  br label %bb.d, !dbg !6484

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 937, !dbg !6485
  %i.u = load i8, ptr %i.t, align 1, !dbg !6485, !range !484, !noundef !413
  switch i8 %i.u, label %bb.f [
    i8 2, label %bb.e
    i8 0, label %bb.g
  ], !dbg !6486

bb.e:                                             ; preds = %bb.d, %bb.g, %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 917, !dbg !6487
  %i.w = load i8, ptr %i.v, align 1, !dbg !6487, !range !476, !noundef !413
  %i.x = trunc nuw i8 %i.w to i1, !dbg !6487
  br i1 %i.x, label %bb.i, label %bb.h, !dbg !6487

bb.f:                                             ; preds = %bb.d
  store i8 1, ptr %.sroa.19.0..sroa_idx, align 1, !dbg !6488
  br label %bb.e, !dbg !6489

bb.g:                                             ; preds = %bb.d
  store i8 1, ptr %.sroa.21.0..sroa_idx, align 1, !dbg !6490
  br label %bb.e, !dbg !6491

end_hunk_4
begin_hunk_5_@_RNvMNtNtCs2NzvFoTxuAy_2rg5flags6hiargsNtB2_6HiArgs13from_low_args:bb.a
  %i.adk = getelementptr inbounds nuw i8, ptr %.sroa.0.060.i, i64 8, !dbg !9684
  %i.adl = load ptr, ptr %i.adk, align 8, !dbg !9684, !noalias !8781, !nonnull !413, !noundef !413
  %i.adm = getelementptr inbounds nuw i8, ptr %.sroa.0.060.i, i64 16, !dbg !9685
  %i.adn = load i64, ptr %i.adm, align 8, !dbg !9685, !noalias !8781, !noundef !413
  invoke void @_RNvMs0_NtCsc0anycpf6TS_6ignore9overridesNtB5_15OverrideBuilder3add(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.o, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.adl, i64 noundef %i.adn)
          to label %bb.nc unwind label %.body.loopexit.split-lp.loopexit.i, !dbg !9686, !noalias !8781

bb.nc:                                            ; preds = %.lr.ph.i264
  %i.ado = load i64, ptr %i.o, align 8, !dbg !9687, !range !614, !noalias !8776, !noundef !413 ; 2 uses
  %.not.i267 = icmp eq i64 %i.ado, -1, !dbg !9687
  br i1 %.not.i267, label %bb.ne, label %bb.nd, !dbg !9688

bb.nd:                                            ; preds = %bb.nc
  %.sroa.433.0..sroa_idx.i268 = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !9689
  %.sroa.433.0.copyload.i = load ptr, ptr %.sroa.433.0..sroa_idx.i268, align 8, !dbg !9689, !noalias !8776
  %.sroa.534.0..sroa_idx.i269 = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !9689
  %.sroa.5.0..sroa_idx.i270 = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !9690
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !9690, !noalias !8776
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx.i270, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.534.0..sroa_idx.i269, i64 40, i1 false), !dbg !9689, !noalias !8776
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !9691, !noalias !8776
  store i64 %i.ado, ptr %i.k, align 8, !dbg !9690, !noalias !8776
  %.sroa.4.0..sroa_idx.i271 = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !9690
  store ptr %.sroa.433.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i271, align 8, !dbg !9690, !noalias !8776
  %i.adp = invoke noundef nonnull ptr @_RNvXs_NtCseNfSUspcXaQ_6anyhow5errorNtB6_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtCsc0anycpf6TS_6ignore5ErrorE4fromCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.k)
          to label %bb.nf unwind label %.body.loopexit.split-lp.loopexit.split-lp.i, !dbg !9692, !noalias !8781

bb.ne:                                            ; preds = %bb.nc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !9691, !noalias !8776
  %i.adq = icmp eq ptr %i.adj, %i.adh, !dbg !9693
  br i1 %i.adq, label %._crit_edge.i272, label %.lr.ph.i264, !dbg !9678

bb.nf:                                            ; preds = %bb.nd
  %i.adr = getelementptr inbounds nuw i8, ptr %i.dy, i64 8, !dbg !9694
  store ptr %i.adp, ptr %i.adr, align 8, !dbg !9694, !alias.scope !8773, !noalias !8787
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !9695, !noalias !8776
  br label %bb.ng, !dbg !9696

bb.ng:                                            ; preds = %bb.no, %bb.nk, %bb.nf
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsc0anycpf6TS_6ignore9overrides15OverrideBuilderECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(80) %i.p)
          to label %_RNvNtNtCs2NzvFoTxuAy_2rg5flags6hiargs5globs.exit.thread496 unwind label %bb.nq, !dbg !9679

_RNvNtNtCs2NzvFoTxuAy_2rg5flags6hiargs5globs.exit.thread496: ; preds = %bb.ng
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !9679, !noalias !8776
  br label %bb.nr, !dbg !9697

._crit_edge.i272:                                 ; preds = %bb.ne, %bb.na
  %i.ads = getelementptr inbounds nuw i8, ptr %i.p, i64 72, !dbg !9698
  store i8 1, ptr %i.ads, align 8, !dbg !9698, !noalias !8776
  %i.adt = getelementptr inbounds nuw i8, ptr %1, i64 360, !dbg !9699
  %i.adu = load ptr, ptr %i.adt, align 8, !dbg !9699, !alias.scope !8774, !noalias !8775, !nonnull !413, !noundef !413 ; 2 uses
  %i.adv = getelementptr inbounds nuw i8, ptr %1, i64 368, !dbg !9700
  %i.adw = load i64, ptr %i.adv, align 8, !dbg !9700, !alias.scope !8774, !noalias !8775, !noundef !413 ; 2 uses
  %.idx65.i = mul nuw nsw i64 %i.adw, 24, !dbg !9701
  %i.adx = getelementptr inbounds nuw i8, ptr %i.adu, i64 %.idx65.i, !dbg !9701
  %i.ady = icmp eq i64 %i.adw, 0, !dbg !9702
  br i1 %i.ady, label %._crit_edge64.i, label %.lr.ph63.i, !dbg !9703

.lr.ph63.i:                                       ; preds = %._crit_edge.i272, %bb.nj
  %.sroa.08.061.i = phi ptr [ %i.adz, %bb.nj ], [ %i.adu, %._crit_edge.i272 ] ; 3 uses
  %i.adz = getelementptr inbounds nuw i8, ptr %.sroa.08.061.i, i64 24, !dbg !9704 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !9705, !noalias !8776
  %i.aea = getelementptr inbounds nuw i8, ptr %.sroa.08.061.i, i64 8, !dbg !9706
  %i.aeb = load ptr, ptr %i.aea, align 8, !dbg !9706, !noalias !8781, !nonnull !413, !noundef !413
  %i.aec = getelementptr inbounds nuw i8, ptr %.sroa.08.061.i, i64 16, !dbg !9707
  %i.aed = load i64, ptr %i.aec, align 8, !dbg !9707, !noalias !8781, !noundef !413
  invoke void @_RNvMs0_NtCsc0anycpf6TS_6ignore9overridesNtB5_15OverrideBuilder3add(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aeb, i64 noundef %i.aed)
          to label %bb.nh unwind label %.body.loopexit.i, !dbg !9708, !noalias !8781

._crit_edge64.i:                                  ; preds = %bb.nj, %._crit_edge.i272
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.623.i), !dbg !9709
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !9709, !noalias !8776
  invoke void @_RNvMs0_NtCsc0anycpf6TS_6ignore9overridesNtB5_15OverrideBuilder5build(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.p)
          to label %bb.nl unwind label %.body.loopexit.split-lp.loopexit.split-lp.i, !dbg !9710, !noalias !8781

bb.nh:                                            ; preds = %.lr.ph63.i
  %i.aee = load i64, ptr %i.n, align 8, !dbg !9711, !range !614, !noalias !8776, !noundef !413 ; 2 uses
  %.not47.i = icmp eq i64 %i.aee, -1, !dbg !9711
  br i1 %.not47.i, label %bb.nj, label %bb.ni, !dbg !9712

bb.ni:                                            ; preds = %bb.nh
  %.sroa.439.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !9713
  %.sroa.439.0.copyload.i = load ptr, ptr %.sroa.439.0..sroa_idx.i, align 8, !dbg !9713, !noalias !8776
  %.sroa.540.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !9713
  %.sroa.520.0..sroa_idx.i274 = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !9714
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !9714, !noalias !8776
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.520.0..sroa_idx.i274, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.540.0..sroa_idx.i, i64 40, i1 false), !dbg !9713, !noalias !8776
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !9715, !noalias !8776
  store i64 %i.aee, ptr %i.j, align 8, !dbg !9714, !noalias !8776
  %.sroa.419.0..sroa_idx.i275 = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !9714
  store ptr %.sroa.439.0.copyload.i, ptr %.sroa.419.0..sroa_idx.i275, align 8, !dbg !9714, !noalias !8776
  %i.aef = invoke noundef nonnull ptr @_RNvXs_NtCseNfSUspcXaQ_6anyhow5errorNtB6_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtCsc0anycpf6TS_6ignore5ErrorE4fromCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.j)
          to label %bb.nk unwind label %.body.loopexit.split-lp.loopexit.split-lp.i, !dbg !9716, !noalias !8781

bb.nj:                                            ; preds = %bb.nh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !9715, !noalias !8776
  %i.aeg = icmp eq ptr %i.adz, %i.adx, !dbg !9702
  br i1 %i.aeg, label %._crit_edge64.i, label %.lr.ph63.i, !dbg !9703

bb.nk:                                            ; preds = %bb.ni
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.dy, i64 8, !dbg !9717
  store ptr %i.aef, ptr %i.aeh, align 8, !dbg !9717, !alias.scope !8773, !noalias !8787
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !9718, !noalias !8776
  br label %bb.ng, !dbg !9696

bb.nl:                                            ; preds = %._crit_edge64.i
  %i.aei = load i64, ptr %i.m, align 8, !dbg !9719, !range !442, !noalias !8776, !noundef !413 ; 2 uses
  %i.aej = icmp eq i64 %i.aei, -1, !dbg !9719
  %i.aek = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !9720
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.623.i, ptr noundef nonnull align 8 dereferenceable(56) %i.aek, i64 56, i1 false), !dbg !9720, !noalias !8776
  br i1 %i.aej, label %bb.nm, label %bb.nn, !dbg !9721

bb.nm:                                            ; preds = %bb.nl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !9722, !noalias !8776
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !9723, !noalias !8776
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.623.i, i64 56, i1 false), !dbg !9722, !noalias !8776
  %i.ael = invoke noundef nonnull ptr @_RNvXs_NtCseNfSUspcXaQ_6anyhow5errorNtB6_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtCsc0anycpf6TS_6ignore5ErrorE4fromCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.i)
          to label %bb.no unwind label %.body.loopexit.split-lp.loopexit.split-lp.i, !dbg !9724, !noalias !8781

bb.nn:                                            ; preds = %bb.nl
  %.sroa.543.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 64, !dbg !9725
  %.sroa.328.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dy, i64 64, !dbg !9726
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.328.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.543.0..sroa_idx.i, i64 40, i1 false), !dbg !9725, !noalias !8787
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !9722, !noalias !8776
  %.sroa.2.0..sroa_idx.i276 = getelementptr inbounds nuw i8, ptr %i.dy, i64 8, !dbg !9726
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.2.0..sroa_idx.i276, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.623.i, i64 56, i1 false), !dbg !9709, !noalias !8787
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.623.i), !dbg !9727
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsc0anycpf6TS_6ignore9overrides15OverrideBuilderECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(80) %i.p)
          to label %_RNvNtNtCs2NzvFoTxuAy_2rg5flags6hiargs5globs.exit.thread unwind label %bb.nq, !dbg !9679

_RNvNtNtCs2NzvFoTxuAy_2rg5flags6hiargs5globs.exit.thread: ; preds = %bb.nn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !9679, !noalias !8776
  br label %bb.ns, !dbg !9697

bb.no:                                            ; preds = %bb.nm
  %i.aem = getelementptr inbounds nuw i8, ptr %i.dy, i64 8, !dbg !9728
  store ptr %i.ael, ptr %i.aem, align 8, !dbg !9728, !alias.scope !8773, !noalias !8787
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !9729, !noalias !8776
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.623.i), !dbg !9727
  br label %bb.ng, !dbg !9696

bb.np:                                            ; preds = %.body.i265
  %i.aen = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !dbg !9730, !noalias !8781
  unreachable, !dbg !9730

.body281:                                         ; preds = %bb.nq, %.body.i265, %.body301
  %.pn151 = phi { ptr, i32 } [ %.pn148.pn, %.body301 ], [ %i.aeo, %bb.nq ], [ %lpad.phi.i266, %.body.i265 ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsc0anycpf6TS_6ignore5types5TypesECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(120) %i.ea) #31
          to label %.body260 unwind label %bb.qd, !dbg !9731

bb.nq:                                            ; preds = %bb.nn, %bb.ng, %bb.mz, %bb.mx, %bb.og
  %i.aeo = landingpad { ptr, i32 }
          cleanup
  br label %.body281

_RNvNtNtCs2NzvFoTxuAy_2rg5flags6hiargs5globs.exit: ; preds = %bb.mz
  %.pr.pre = load i64, ptr %i.dy, align 8, !dbg !9732 ; 2 uses
  %i.aep = icmp eq i64 %.pr.pre, -1, !dbg !9732
  br i1 %i.aep, label %bb.nr, label %bb.ns, !dbg !9697

bb.nr:                                            ; preds = %_RNvNtNtCs2NzvFoTxuAy_2rg5flags6hiargs5globs.exit.thread496, %_RNvNtNtCs2NzvFoTxuAy_2rg5flags6hiargs5globs.exit
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.dy, i64 8, !dbg !9733
  %i.aer = load ptr, ptr %i.aeq, align 8, !dbg !9733, !nonnull !413, !noundef !413
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dy), !dbg !9734
  %i.aes = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9735
  store ptr %i.aer, ptr %i.aes, align 8, !dbg !9735
  store i64 2, ptr %0, align 8, !dbg !9735
  br label %bb.ri, !dbg !9736

bb.ns:                                            ; preds = %_RNvNtNtCs2NzvFoTxuAy_2rg5flags6hiargs5globs.exit.thread, %_RNvNtNtCs2NzvFoTxuAy_2rg5flags6hiargs5globs.exit
  %i.aet = phi i64 [ %i.aei, %_RNvNtNtCs2NzvFoTxuAy_2rg5flags6hiargs5globs.exit.thread ], [ %.pr.pre, %_RNvNtNtCs2NzvFoTxuAy_2rg5flags6hiargs5globs.exit ]
  %.sroa.4115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dy, i64 8, !dbg !9737
  %.sroa.4115.0.copyload = load ptr, ptr %.sroa.4115.0..sroa_idx, align 8, !dbg !9737
  %.sroa.5116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dy, i64 16, !dbg !9737
  %.sroa.569.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dz, i64 16, !dbg !9738
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.569.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5116.0..sroa_idx, i64 88, i1 false), !dbg !9737
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dy), !dbg !9734
  store i64 %i.aet, ptr %i.dz, align 8, !dbg !9738
  %.sroa.468.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dz, i64 8, !dbg !9738
  store ptr %.sroa.4115.0.copyload, ptr %.sroa.468.0..sroa_idx, align 8, !dbg !9738
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dx), !dbg !9739
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dw), !dbg !8821
  %i.aeu = getelementptr inbounds nuw i8, ptr %1, i64 408, !dbg !8821
  %.val169 = load ptr, ptr %i.aeu, align 8, !dbg !8821 ; 3 uses
  %i.aev = getelementptr inbounds nuw i8, ptr %1, i64 416, !dbg !8821
  %.val170 = load i64, ptr %i.aev, align 8, !dbg !8821, !noundef !413 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8811), !dbg !8821
  %i.aew = icmp ult i64 %.val170, 384307168202282326, !dbg !9740
  call void @llvm.assume(i1 %i.aew), !dbg !9741
  %i.aex = icmp eq i64 %.val170, 0, !dbg !9742
  br i1 %i.aex, label %bb.nt, label %.lr.ph.preheader.i, !dbg !9743

.lr.ph.preheader.i:                               ; preds = %bb.ns
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !9744, !noalias !8812
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !9745, !noalias !8812
  invoke void @_RINvMs0_NtCsc0anycpf6TS_6ignore9gitignoreNtB6_16GitignoreBuilder3newRNtNtCsG258MDvU3F_3std4path7PathBufECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ef)
          to label %.noexc297 unwind label %bb.of, !dbg !9746

.noexc297:                                        ; preds = %.lr.ph.preheader.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val169) ]
  %i.aey = getelementptr inbounds nuw i8, ptr %i.e, i64 73, !dbg !9747
  store i8 0, ptr %i.aey, align 1, !dbg !9747, !noalias !8812
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.h, ptr noundef nonnull align 8 dereferenceable(80) %i.e, i64 80, i1 false), !dbg !9748, !noalias !8812
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !9745, !noalias !8812
  %.idx.i283 = mul nuw nsw i64 %.val170, 24, !dbg !9749
  %i.aez = getelementptr inbounds nuw i8, ptr %.val169, i64 %.idx.i283, !dbg !9749
  br label %.lr.ph.i284, !dbg !9750

bb.nt:                                            ; preds = %bb.ns
  invoke void @_RNvMs_NtCsc0anycpf6TS_6ignore9overridesNtB4_8Override5empty(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.dw)
          to label %_RNvNtNtCs2NzvFoTxuAy_2rg5flags6hiargs18preprocessor_globs.exit unwind label %bb.of, !dbg !9751

.lr.ph.i284:                                      ; preds = %bb.nx, %.noexc297
  %.sroa.0.01.i285 = phi ptr [ %i.afa, %bb.nx ], [ %.val169, %.noexc297 ] ; 3 uses
  %i.afa = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i285, i64 24, !dbg !9752 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !9753, !noalias !8812
  %i.afb = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i285, i64 8, !dbg !9754
  %i.afc = load ptr, ptr %i.afb, align 8, !dbg !9754, !noalias !8812, !nonnull !413, !noundef !413
  %i.afd = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i285, i64 16, !dbg !9755
  %i.afe = load i64, ptr %i.afd, align 8, !dbg !9755, !noalias !8812, !noundef !413
  invoke void @_RNvMs0_NtCsc0anycpf6TS_6ignore9overridesNtB5_15OverrideBuilder3add(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.afc, i64 noundef %i.afe)
          to label %bb.nv unwind label %.loopexit.i286, !dbg !9750, !noalias !8811

._crit_edge.i294:                                 ; preds = %bb.nx
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.610.i), !dbg !9756
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !9756, !noalias !8812
  invoke void @_RNvMs0_NtCsc0anycpf6TS_6ignore9overridesNtB5_15OverrideBuilder5build(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.h)
          to label %bb.oa unwind label %.loopexit.split-lp.i292, !dbg !9757, !noalias !8811

.loopexit.i286:                                   ; preds = %.lr.ph.i284
  %lpad.loopexit.i287 = landingpad { ptr, i32 }
          cleanup
  br label %bb.nu

.loopexit.split-lp.i292:                          ; preds = %bb.ob, %bb.nw, %._crit_edge.i294
  %lpad.loopexit.split-lp.i293 = landingpad { ptr, i32 }
          cleanup
  br label %bb.nu

bb.nu:                                            ; preds = %.loopexit.split-lp.i292, %.loopexit.i286
  %lpad.phi.i288 = phi { ptr, i32 } [ %lpad.loopexit.i287, %.loopexit.i286 ], [ %lpad.loopexit.split-lp.i293, %.loopexit.split-lp.i292 ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsc0anycpf6TS_6ignore9overrides15OverrideBuilderECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(80) %i.h) #31
          to label %.body301 unwind label %bb.oe, !dbg !9758, !noalias !8811

bb.nv:                                            ; preds = %.lr.ph.i284
  %i.aff = load i64, ptr %i.g, align 8, !dbg !9759, !range !614, !noalias !8812, !noundef !413 ; 2 uses
  %.not.i289 = icmp eq i64 %i.aff, -1, !dbg !9759
  br i1 %.not.i289, label %bb.nx, label %bb.nw, !dbg !9760

bb.nw:                                            ; preds = %bb.nv
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !9761
  %.sroa.420.0.copyload.i = load ptr, ptr %.sroa.420.0..sroa_idx.i, align 8, !dbg !9761, !noalias !8812
  %.sroa.521.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !9761
  %.sroa.5.0..sroa_idx.i290 = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !9762
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !9762, !noalias !8812
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx.i290, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.521.0..sroa_idx.i, i64 40, i1 false), !dbg !9761, !noalias !8812
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !9763, !noalias !8812
  store i64 %i.aff, ptr %i.d, align 8, !dbg !9762, !noalias !8812
  %.sroa.4.0..sroa_idx.i291 = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !9762
  store ptr %.sroa.420.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i291, align 8, !dbg !9762, !noalias !8812
  %i.afg = invoke noundef nonnull ptr @_RNvXs_NtCseNfSUspcXaQ_6anyhow5errorNtB6_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtCsc0anycpf6TS_6ignore5ErrorE4fromCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.d)
          to label %bb.ny unwind label %.loopexit.split-lp.i292, !dbg !9764, !noalias !8811

bb.nx:                                            ; preds = %bb.nv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !9763, !noalias !8812
  %i.afh = icmp eq ptr %i.afa, %i.aez, !dbg !9765
  br i1 %i.afh, label %._crit_edge.i294, label %.lr.ph.i284, !dbg !9766

bb.ny:                                            ; preds = %bb.nw
  %i.afi = getelementptr inbounds nuw i8, ptr %i.dw, i64 8, !dbg !9767
  store ptr %i.afg, ptr %i.afi, align 8, !dbg !9767, !alias.scope !8811, !noalias !8819
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !9768, !noalias !8812
  br label %bb.nz, !dbg !9769

bb.nz:                                            ; preds = %bb.od, %bb.ny
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsc0anycpf6TS_6ignore9overrides15OverrideBuilderECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(80) %i.h)
          to label %_RNvNtNtCs2NzvFoTxuAy_2rg5flags6hiargs18preprocessor_globs.exit.thread498 unwind label %bb.of, !dbg !9758

_RNvNtNtCs2NzvFoTxuAy_2rg5flags6hiargs18preprocessor_globs.exit.thread498: ; preds = %bb.nz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !9758, !noalias !8812
  br label %bb.og, !dbg !9770

bb.oa:                                            ; preds = %._crit_edge.i294
  %i.afj = load i64, ptr %i.f, align 8, !dbg !9771, !range !442, !noalias !8812, !noundef !413 ; 2 uses
  %i.afk = icmp eq i64 %i.afj, -1, !dbg !9771
  %i.afl = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !9772
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.610.i, ptr noundef nonnull align 8 dereferenceable(56) %i.afl, i64 56, i1 false), !dbg !9772, !noalias !8812
  br i1 %i.afk, label %bb.ob, label %bb.oc, !dbg !9773

bb.ob:                                            ; preds = %bb.oa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !9774, !noalias !8812
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !9775, !noalias !8812
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.610.i, i64 56, i1 false), !dbg !9774, !noalias !8812
  %i.afm = invoke noundef nonnull ptr @_RNvXs_NtCseNfSUspcXaQ_6anyhow5errorNtB6_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtCsc0anycpf6TS_6ignore5ErrorE4fromCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.c)
          to label %bb.od unwind label %.loopexit.split-lp.i292, !dbg !9776, !noalias !8811

bb.oc:                                            ; preds = %bb.oa
  %.sroa.524.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 64, !dbg !9777
  %.sroa.315.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dw, i64 64, !dbg !9778
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.315.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.524.0..sroa_idx.i, i64 40, i1 false), !dbg !9777, !noalias !8819
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !9774, !noalias !8812
  %.sroa.2.0..sroa_idx.i296 = getelementptr inbounds nuw i8, ptr %i.dw, i64 8, !dbg !9778
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.2.0..sroa_idx.i296, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.610.i, i64 56, i1 false), !dbg !9756, !noalias !8819
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.610.i), !dbg !9779
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsc0anycpf6TS_6ignore9overrides15OverrideBuilderECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(80) %i.h)
          to label %_RNvNtNtCs2NzvFoTxuAy_2rg5flags6hiargs18preprocessor_globs.exit.thread unwind label %bb.of, !dbg !9758

_RNvNtNtCs2NzvFoTxuAy_2rg5flags6hiargs18preprocessor_globs.exit.thread: ; preds = %bb.oc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !9758, !noalias !8812
  br label %bb.oh, !dbg !9770

bb.od:                                            ; preds = %bb.ob
  %i.afn = getelementptr inbounds nuw i8, ptr %i.dw, i64 8, !dbg !9780
  store ptr %i.afm, ptr %i.afn, align 8, !dbg !9780, !alias.scope !8811, !noalias !8819
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !9781, !noalias !8812
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.610.i), !dbg !9779
  br label %bb.nz, !dbg !9769

bb.oe:                                            ; preds = %bb.nu
  %i.afo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !dbg !9782, !noalias !8811
  unreachable, !dbg !9782

.body301:                                         ; preds = %bb.of, %bb.nu, %bb.oo
  %.pn148.pn = phi { ptr, i32 } [ %.pn148, %bb.oo ], [ %i.afp, %bb.of ], [ %lpad.phi.i288, %bb.nu ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsc0anycpf6TS_6ignore9overrides8OverrideECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(104) %i.dz) #31
          to label %.body281 unwind label %bb.qd, !dbg !9783

bb.of:                                            ; preds = %bb.oc, %bb.nz, %bb.nt, %.lr.ph.preheader.i
  %i.afp = landingpad { ptr, i32 }
          cleanup
  br label %.body301

_RNvNtNtCs2NzvFoTxuAy_2rg5flags6hiargs18preprocessor_globs.exit: ; preds = %bb.nt
  %.pr428.pre = load i64, ptr %i.dw, align 8, !dbg !9784 ; 2 uses
  %i.afq = icmp eq i64 %.pr428.pre, -1, !dbg !9784
  br i1 %i.afq, label %bb.og, label %bb.oh, !dbg !9770

bb.og:                                            ; preds = %_RNvNtNtCs2NzvFoTxuAy_2rg5flags6hiargs18preprocessor_globs.exit.thread498, %_RNvNtNtCs2NzvFoTxuAy_2rg5flags6hiargs18preprocessor_globs.exit
  %i.afr = getelementptr inbounds nuw i8, ptr %i.dw, i64 8, !dbg !9785
  %i.afs = load ptr, ptr %i.afr, align 8, !dbg !9785, !nonnull !413, !noundef !413
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dw), !dbg !9786
  %i.aft = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9787
  store ptr %i.afs, ptr %i.aft, align 8, !dbg !9787
  store i64 2, ptr %0, align 8, !dbg !9787
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dx), !dbg !9788
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsc0anycpf6TS_6ignore9overrides8OverrideECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(104) %i.dz)
          to label %bb.ri unwind label %bb.nq, !dbg !9783

bb.oh:                                            ; preds = %_RNvNtNtCs2NzvFoTxuAy_2rg5flags6hiargs18preprocessor_globs.exit.thread, %_RNvNtNtCs2NzvFoTxuAy_2rg5flags6hiargs18preprocessor_globs.exit
  %i.afu = phi i64 [ %i.afj, %_RNvNtNtCs2NzvFoTxuAy_2rg5flags6hiargs18preprocessor_globs.exit.thread ], [ %.pr428.pre, %_RNvNtNtCs2NzvFoTxuAy_2rg5flags6hiargs18preprocessor_globs.exit ]
  %.sroa.4118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8, !dbg !9789
  %.sroa.4118.0.copyload = load ptr, ptr %.sroa.4118.0..sroa_idx, align 8, !dbg !9789
  %.sroa.5119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16, !dbg !9789
  %.sroa.579.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dx, i64 16, !dbg !9790
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.579.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5119.0..sroa_idx, i64 88, i1 false), !dbg !9789
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dw), !dbg !9786
  store i64 %i.afu, ptr %i.dx, align 8, !dbg !9790
  %.sroa.478.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dx, i64 8, !dbg !9790
  store ptr %.sroa.4118.0.copyload, ptr %.sroa.478.0..sroa_idx, align 8, !dbg !9790
  %i.afv = getelementptr inbounds nuw i8, ptr %1, i64 602, !dbg !9791
  %i.afw = load i8, ptr %i.afv, align 2, !dbg !9791, !range !485, !noundef !413 ; 2 uses
  %i.afx = icmp ne i8 %i.afw, 1, !dbg !9792
  %i.afy = load i8, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8, !range !476 ; 2 uses
  %i.afz = trunc nuw i8 %i.afy to i1
  %or.cond11 = select i1 %i.afx, i1 true, i1 %i.afz, !dbg !9792
  %. = select i1 %or.cond11, i8 %i.afw, i8 0, !dbg !9793
  %i.aga = getelementptr inbounds nuw i8, ptr %1, i64 595, !dbg !9794
  %i.agb = load i8, ptr %i.aga, align 1, !dbg !9794, !range !484, !noundef !413 ; 2 uses
  %i.agc = getelementptr inbounds nuw i8, ptr %1, i64 590, !dbg !9795 ; 4 uses
  %.not129 = icmp eq i8 %i.agb, 2, !dbg !9796
  %i.agd = load i8, ptr %i.agc, align 2, !dbg !9797, !range !476 ; 3 uses
  %storemerge = select i1 %.not129, i8 %i.agd, i8 %i.agb, !dbg !9797 ; 3 uses
  %i.age = getelementptr inbounds nuw i8, ptr %1, i64 597, !dbg !9798
  %i.agf = load i8, ptr %i.age, align 1, !dbg !9798, !range !484, !noundef !413 ; 2 uses
  switch i8 %i.agf, label %bb.ok [
    i8 2, label %bb.oi
    i8 0, label %bb.oj
  ], !dbg !9799

bb.oi:                                            ; preds = %bb.oh
  %i.agg = trunc nuw i8 %i.agd to i1, !dbg !9800
  %spec.select = select i1 %i.agg, i8 0, i8 %i.afy, !dbg !9800
  br label %bb.oj, !dbg !9800

bb.oj:                                            ; preds = %bb.oi, %bb.oh, %bb.ok
  %.sroa.083.0 = phi i8 [ %i.agp, %bb.ok ], [ %spec.select, %bb.oi ], [ %i.agf, %bb.oh ], !dbg !9801 ; 2 uses
  %i.agh = getelementptr inbounds nuw i8, ptr %1, i64 581, !dbg !9802
  %i.agi = load i8, ptr %i.agh, align 1, !dbg !9802, !range !476, !noundef !413
  %i.agj = getelementptr inbounds nuw i8, ptr %1, i64 585, !dbg !9803 ; 3 uses
  %i.agk = load i8, ptr %i.agj, align 1, !dbg !9803, !range !476
  %.sroa.086.0 = select i1 %.not131, i8 %i.agk, i8 0, !dbg !9803
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dv), !dbg !9804
  %i.agl = load i8, ptr %i.ej, align 2, !dbg !9805, !range !484, !noundef !413
  %i.agm = icmp ne i8 %i.agl, 2, !dbg !9805
  %i.agn = load i8, ptr %.sroa.540.sroa.5.0..sroa.540.0..sroa_idx.sroa_idx, align 1, !range !476
  %i.ago = trunc nuw i8 %i.agn to i1
  %or.cond = select i1 %i.agm, i1 true, i1 %i.ago, !dbg !9806
  br i1 %or.cond, label %bb.os, label %bb.ol, !dbg !9806

bb.ok:                                            ; preds = %bb.oh
  %i.agp = xor i8 %i.agd, 1, !dbg !9807
  br label %bb.oj, !dbg !9808
end_hunk_5
