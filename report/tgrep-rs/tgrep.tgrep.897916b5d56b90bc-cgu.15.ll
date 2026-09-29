Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tgrep-rs/original/tgrep.tgrep.897916b5d56b90bc-cgu.15?download=true
inline.NumInlined: 691
inline.NumDeleted: 235
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 27
begin_hunk_0
@30 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsjYKKaZ3qa7A_6anyhow5error9ErrorImplNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorEECsbNLsQi0JuJ4_5tgrep, [16 x i8] c"@\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs9_NtCsjYKKaZ3qa7A_6anyhow5errorINtB5_9ErrorImplNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorENtNtCsf3Ta7LF998c_4core3fmt7Display3fmtCsbNLsQi0JuJ4_5tgrep }>, align 8
@31 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsjYKKaZ3qa7A_6anyhow5error9ErrorImplNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorEECsbNLsQi0JuJ4_5tgrep, [16 x i8] c"@\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs8_NtCsjYKKaZ3qa7A_6anyhow5errorINtB5_9ErrorImplNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorENtNtCsf3Ta7LF998c_4core3fmt5Debug3fmtCsbNLsQi0JuJ4_5tgrep, ptr @_RNvXs9_NtCsjYKKaZ3qa7A_6anyhow5errorINtB5_9ErrorImplNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorENtNtCsf3Ta7LF998c_4core3fmt7Display3fmtCsbNLsQi0JuJ4_5tgrep, ptr @30, ptr @_RNvXs7_NtCsjYKKaZ3qa7A_6anyhow5errorINtB5_9ErrorImplNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorENtNtCsf3Ta7LF998c_4core5error5Error6sourceCsbNLsQi0JuJ4_5tgrep, ptr @_RNvYINtNtCsjYKKaZ3qa7A_6anyhow5error9ErrorImplNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorENtNtCsf3Ta7LF998c_4core5error5Error7type_idCsbNLsQi0JuJ4_5tgrep, ptr @_RNvYINtNtCsjYKKaZ3qa7A_6anyhow5error9ErrorImplNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorENtNtCsf3Ta7LF998c_4core5error5Error11descriptionCsbNLsQi0JuJ4_5tgrep, ptr @_RNvYINtNtCsjYKKaZ3qa7A_6anyhow5error9ErrorImplNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorENtNtCsf3Ta7LF998c_4core5error5Error5causeCsbNLsQi0JuJ4_5tgrep, ptr @_RNvXs7_NtCsjYKKaZ3qa7A_6anyhow5errorINtB5_9ErrorImplNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorENtNtCsf3Ta7LF998c_4core5error5Error7provideCsbNLsQi0JuJ4_5tgrep }>, align 8
@32 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsjYKKaZ3qa7A_6anyhow5error9ErrorImplNtNtCsbzNSmZPCnTx_10tgrep_core5error5ErrorEECsbNLsQi0JuJ4_5tgrep, [16 x i8] c"X\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs9_NtCsjYKKaZ3qa7A_6anyhow5errorINtB5_9ErrorImplNtNtCsbzNSmZPCnTx_10tgrep_core5error5ErrorENtNtCsf3Ta7LF998c_4core3fmt7Display3fmtCsbNLsQi0JuJ4_5tgrep }>, align 8
@33 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsjYKKaZ3qa7A_6anyhow5error9ErrorImplNtNtCsbzNSmZPCnTx_10tgrep_core5error5ErrorEECsbNLsQi0JuJ4_5tgrep, [16 x i8] c"X\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs8_NtCsjYKKaZ3qa7A_6anyhow5errorINtB5_9ErrorImplNtNtCsbzNSmZPCnTx_10tgrep_core5error5ErrorENtNtCsf3Ta7LF998c_4core3fmt5Debug3fmtCsbNLsQi0JuJ4_5tgrep, ptr @_RNvXs9_NtCsjYKKaZ3qa7A_6anyhow5errorINtB5_9ErrorImplNtNtCsbzNSmZPCnTx_10tgrep_core5error5ErrorENtNtCsf3Ta7LF998c_4core3fmt7Display3fmtCsbNLsQi0JuJ4_5tgrep, ptr @32, ptr @_RNvXs7_NtCsjYKKaZ3qa7A_6anyhow5errorINtB5_9ErrorImplNtNtCsbzNSmZPCnTx_10tgrep_core5error5ErrorENtNtCsf3Ta7LF998c_4core5error5Error6sourceCsbNLsQi0JuJ4_5tgrep, ptr @_RNvYINtNtCsjYKKaZ3qa7A_6anyhow5error9ErrorImplNtNtCsbzNSmZPCnTx_10tgrep_core5error5ErrorENtNtCsf3Ta7LF998c_4core5error5Error7type_idCsbNLsQi0JuJ4_5tgrep, ptr @_RNvYINtNtCsjYKKaZ3qa7A_6anyhow5error9ErrorImplNtNtCsbzNSmZPCnTx_10tgrep_core5error5ErrorENtNtCsf3Ta7LF998c_4core5error5Error11descriptionCsbNLsQi0JuJ4_5tgrep, ptr @_RNvYINtNtCsjYKKaZ3qa7A_6anyhow5error9ErrorImplNtNtCsbzNSmZPCnTx_10tgrep_core5error5ErrorENtNtCsf3Ta7LF998c_4core5error5Error5causeCsbNLsQi0JuJ4_5tgrep, ptr @_RNvXs7_NtCsjYKKaZ3qa7A_6anyhow5errorINtB5_9ErrorImplNtNtCsbzNSmZPCnTx_10tgrep_core5error5ErrorENtNtCsf3Ta7LF998c_4core5error5Error7provideCsbNLsQi0JuJ4_5tgrep }>, align 8
@34 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsjYKKaZ3qa7A_6anyhow5error9ErrorImplNtNtNtB4_2io5error5ErrorEECsbNLsQi0JuJ4_5tgrep, [16 x i8] c"@\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs9_NtCsjYKKaZ3qa7A_6anyhow5errorINtB5_9ErrorImplNtNtNtCsf3Ta7LF998c_4core2io5error5ErrorENtNtBU_3fmt7Display3fmtCsbNLsQi0JuJ4_5tgrep }>, align 8
@35 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsjYKKaZ3qa7A_6anyhow5error9ErrorImplNtNtNtB4_2io5error5ErrorEECsbNLsQi0JuJ4_5tgrep, [16 x i8] c"@\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs8_NtCsjYKKaZ3qa7A_6anyhow5errorINtB5_9ErrorImplNtNtNtCsf3Ta7LF998c_4core2io5error5ErrorENtNtBU_3fmt5Debug3fmtCsbNLsQi0JuJ4_5tgrep, ptr @_RNvXs9_NtCsjYKKaZ3qa7A_6anyhow5errorINtB5_9ErrorImplNtNtNtCsf3Ta7LF998c_4core2io5error5ErrorENtNtBU_3fmt7Display3fmtCsbNLsQi0JuJ4_5tgrep, ptr @34, ptr @_RNvXs7_NtCsjYKKaZ3qa7A_6anyhow5errorINtB5_9ErrorImplNtNtNtCsf3Ta7LF998c_4core2io5error5ErrorENtNtBU_5error5Error6sourceCsbNLsQi0JuJ4_5tgrep, ptr @_RNvYINtNtCsjYKKaZ3qa7A_6anyhow5error9ErrorImplNtNtNtCsf3Ta7LF998c_4core2io5error5ErrorENtNtBO_5error5Error7type_idCsbNLsQi0JuJ4_5tgrep, ptr @_RNvYINtNtCsjYKKaZ3qa7A_6anyhow5error9ErrorImplNtNtNtCsf3Ta7LF998c_4core2io5error5ErrorENtNtBO_5error5Error11descriptionCsbNLsQi0JuJ4_5tgrep, ptr @_RNvYINtNtCsjYKKaZ3qa7A_6anyhow5error9ErrorImplNtNtNtCsf3Ta7LF998c_4core2io5error5ErrorENtNtBO_5error5Error5causeCsbNLsQi0JuJ4_5tgrep, ptr @_RNvXs7_NtCsjYKKaZ3qa7A_6anyhow5errorINtB5_9ErrorImplNtNtNtCsf3Ta7LF998c_4core2io5error5ErrorENtNtBU_5error5Error7provideCsbNLsQi0JuJ4_5tgrep }>, align 8
@36 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -1499122982700787871 to ptr), ptr inttoptr (i64 8291119063049595167 to ptr) }>, align 8
@37 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 4075392157063980961 to ptr), ptr inttoptr (i64 1041077290162322864 to ptr) }>, align 8
@38 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 1714936928690080314 to ptr), ptr inttoptr (i64 -7528902393293797483 to ptr) }>, align 8
@39 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -9216570860904489526 to ptr), ptr inttoptr (i64 8600634586686509214 to ptr) }>, align 8
@40 = private unnamed_addr constant [40 x i8] c"internal error: entered unreachable code", align 1
@41 = private unnamed_addr constant [96 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/rayon-1.11.0/src/result.rs\00", align 1
@42 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @41, [16 x i8] c"_\00\00\00\00\00\00\00\7F\00\00\00(\00\00\00" }>, align 8
@43 = private unnamed_addr constant [126 x i8] c"/home/opt-bench/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/std/src/sync/mpmc/context.rs\00", align 1
@44 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @43, [16 x i8] c"}\00\00\00\00\00\00\000\00\00\00\1E\00\00\00" }>, align 8
@_RNvNCNKNvNvMNtNtNtCs5Xr050g3D4S_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL = external thread_local global { ptr, i8, [7 x i8] }
@_RNvNCNKNvNvNtNtNtCs5Xr050g3D4S_3std4sync4mpmc5waker17current_thread_id5DUMMY0s_023___RUST_STD_INTERNAL_VAL = external thread_local global i8
@45 = private unnamed_addr constant [123 x i8] c"/home/opt-bench/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/std/src/sync/mpmc/list.rs\00", align 1
@46 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @45, [16 x i8] c"z\00\00\00\00\00\00\00\C8\01\00\00*\00\00\00" }>, align 8
@47 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @45, [16 x i8] c"z\00\00\00\00\00\00\00\CA\01\00\009\00\00\00" }>, align 8
@48 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCs5Xr050g3D4S_3std4sync6poison11PoisonErrorINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEEECsbNLsQi0JuJ4_5tgrep, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtNtCs5Xr050g3D4S_3std4sync6poisonINtB4_11PoisonErrorINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtB10_3fmt5Debug3fmtCsbNLsQi0JuJ4_5tgrep }>, align 8
@49 = private unnamed_addr constant [43 x i8] c"called `Result::unwrap()` on an `Err` value", align 1
@50 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCs5Xr050g3D4S_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtNtBG_4mpmc5waker5WakerEEECsbNLsQi0JuJ4_5tgrep, [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtNtCs5Xr050g3D4S_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardNtNtNtB6_4mpmc5waker5WakerEENtNtCsf3Ta7LF998c_4core3fmt5Debug3fmtCsbNLsQi0JuJ4_5tgrep }>, align 8
@51 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbNLsQi0JuJ4_5tgrep, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs5_NtCs6MoqnCnVQOT_10serde_json5errorNtB5_5ErrorNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt }>, align 8
@_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count18GLOBAL_PANIC_COUNT = external local_unnamed_addr global { { { i64 } } }
@52 = private unnamed_addr constant ptr @_RNvYNCNKNvNvNtNtNtCs5Xr050g3D4S_3std4sync4mpmc5waker17current_thread_id5DUMMY0s_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTINtNtB1o_6option6OptionQIB23_hEEEE9call_onceCsbNLsQi0JuJ4_5tgrep, align 8
@53 = private unnamed_addr constant [124 x i8] c"/home/opt-bench/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/std/src/sync/mpmc/waker.rs\00", align 1
@54 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @53, [16 x i8] c"{\00\00\00\00\00\00\00\\\00\00\00+\00\00\00" }>, align 8
@55 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @53, [16 x i8] c"{\00\00\00\00\00\00\00:\00\00\00(\00\00\00" }>, align 8
@56 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @53, [16 x i8] c"{\00\00\00\00\00\00\00\BC\00\00\00+\00\00\00" }>, align 8
@57 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @53, [16 x i8] c"{\00\00\00\00\00\00\00\A2\00\00\00+\00\00\00" }>, align 8
@58 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @53, [16 x i8] c"{\00\00\00\00\00\00\00\AD\00\00\00/\00\00\00" }>, align 8
@59 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @53, [16 x i8] c"{\00\00\00\00\00\00\00\99\00\00\00+\00\00\00" }>, align 8
@60 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @45, [16 x i8] c"z\00\00\00\00\00\00\00\F3\00\00\00C\00\00\00" }>, align 8
@61 = private unnamed_addr constant [7 x i8] c"elapsed", align 1
@62 = private unnamed_addr constant [24 x i8] c"tgrep-cli/src/output.rs\00", align 1
@63 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @62, [16 x i8] c"\17\00\00\00\00\00\00\00\C5\00\00\00\09\00\00\00" }>, align 8
@64 = private unnamed_addr constant [19 x i8] c"searches_with_match", align 1
@65 = private unnamed_addr constant [14 x i8] c"bytes_searched", align 1
@66 = private unnamed_addr constant [13 x i8] c"bytes_printed", align 1
@67 = private unnamed_addr constant [13 x i8] c"matched_lines", align 1
@68 = private unnamed_addr constant [7 x i8] c"matches", align 1
@69 = private unnamed_addr constant [4 x i8] c"\C0\01\0A\00", align 1
@70 = private unnamed_addr constant [4 x i8] c"\C0\01\00\00", align 1
@71 = private unnamed_addr constant [6 x i8] c"\C0\C0\C0\01\0A\00", align 1
@72 = private unnamed_addr constant [5 x i8] c"\C0\C0\01\0A\00", align 1
@73 = private unnamed_addr constant [5 x i8] c"match", align 1
@74 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @73, [8 x i8] c"\05\00\00\00\00\00\00\00" }>, align 8
@75 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @62, [16 x i8] c"\17\00\00\00\00\00\00\00u\02\00\00\1B\00\00\00" }>, align 8
@76 = private unnamed_addr constant [4 x i8] c"path", align 1
@77 = private unnamed_addr constant [5 x i8] c"lines", align 1
@78 = private unnamed_addr constant [11 x i8] c"line_number", align 1
@79 = private unnamed_addr constant [15 x i8] c"absolute_offset", align 1
@80 = private unnamed_addr constant [10 x i8] c"submatches", align 1
@81 = private unnamed_addr constant [13 x i8] c"\C0\01:\C0\01:\C0\01:\C0\01\0A\00", align 1
@82 = private unnamed_addr constant [12 x i8] c"\C0\01:\C0\03:1:\C0\01\0A\00", align 1
@83 = private unnamed_addr constant [3 x i8] c"\C0\C0\00", align 1
@84 = private unnamed_addr constant [13 x i8] c"\05\1B[32m\C0\04\1B[0m\00", align 1
@85 = private unnamed_addr constant [1 x i8] c"\0A", align 1
@86 = private unnamed_addr constant [14 x i8] c"\05\1B[35m\C0\05\1B[0m\0A\00", align 1
@87 = private unnamed_addr constant [3 x i8] c"end", align 1
@88 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @87, [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
@89 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @62, [16 x i8] c"\17\00\00\00\00\00\00\00\8C\01\00\00\13\00\00\00" }>, align 8
@90 = private unnamed_addr constant [13 x i8] c"binary_offset", align 1
@91 = private unnamed_addr constant [5 x i8] c"stats", align 1
@92 = private unnamed_addr constant [27 x i8] c"[Omitted long context line]", align 1
@93 = private unnamed_addr constant [28 x i8] c"[Omitted long matching line]", align 1
@94 = private unnamed_addr constant [34 x i8] c"\C0\1F [... omitted end of long line]\00", align 1
@95 = private unnamed_addr constant [5 x i8] c"begin", align 1
@96 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @95, [8 x i8] c"\05\00\00\00\00\00\00\00" }>, align 8
@97 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @62, [16 x i8] c"\17\00\00\00\00\00\00\00n\01\00\00\13\00\00\00" }>, align 8
@98 = private unnamed_addr constant [56 x i8] c"3binary file matches (found \22\\0\22 byte around offset \C0\01)\00", align 1
@99 = private unnamed_addr constant [8 x i8] c"\C0\02: \C0\01\0A\00", align 1
@100 = private unnamed_addr constant [7 x i8] c"context", align 1
@101 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @100, [8 x i8] c"\07\00\00\00\00\00\00\00" }>, align 8
@102 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @62, [16 x i8] c"\17\00\00\00\00\00\00\00\1A\02\00\00\17\00\00\00" }>, align 8
@103 = private unnamed_addr constant [7 x i8] c"summary", align 1
@104 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @103, [8 x i8] c"\07\00\00\00\00\00\00\00" }>, align 8
@105 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @62, [16 x i8] c"\17\00\00\00\00\00\00\00\BD\02\00\00\17\00\00\00" }>, align 8
@106 = private unnamed_addr constant [13 x i8] c"elapsed_total", align 1
@107 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @62, [16 x i8] c"\17\00\00\00\00\00\00\00\D4\02\00\00&\00\00\00" }>, align 8
@108 = private unnamed_addr constant [7 x i8] c"\1B[1;31m", align 1
@109 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @62, [16 x i8] c"\17\00\00\00\00\00\00\00\D8\02\00\00&\00\00\00" }>, align 8
@110 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @62, [16 x i8] c"\17\00\00\00\00\00\00\00\DD\02\00\00\1E\00\00\00" }>, align 8
@111 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @62, [16 x i8] c"\17\00\00\00\00\00\00\00\D2\00\00\00\05\00\00\00" }>, align 8
@112 = private unnamed_addr constant [5 x i8] c"nanos", align 1
@113 = private unnamed_addr constant [5 x i8] c"human", align 1
@114 = private unnamed_addr constant [10 x i8] c"\C5 \00\00p\06\00\01s\00", align 1
@115 = private unnamed_addr constant [13 x i8] c"partial error", align 1
@116 = private unnamed_addr constant [40 x i8] c"description() is deprecated; use Display", align 1
@117 = private unnamed_addr constant [22 x i8] c"file system loop found", align 1
@118 = private unnamed_addr constant [22 x i8] c"unrecognized file type", align 1
@119 = private unnamed_addr constant [18 x i8] c"invalid definition", align 1
@120 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsr_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt }>, align 8
@121 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtB8_2io5error5ErrorNtB6_5Debug3fmtCsbNLsQi0JuJ4_5tgrep }>, align 8
@122 = private unnamed_addr constant [12 x i8] c"PublishError", align 1
@123 = private unnamed_addr constant [3 x i8] c"ctx", align 1
@124 = private unnamed_addr constant [6 x i8] c"source", align 1
@125 = private unnamed_addr constant [2 x i8] c"Io", align 1
@126 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorNtB6_5Debug3fmtCsbNLsQi0JuJ4_5tgrep }>, align 8
@127 = private unnamed_addr constant [4 x i8] c"Json", align 1
@128 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtCsgCecv3eZDcN_5alloc6string6StringNtB6_5Debug3fmtCsbNLsQi0JuJ4_5tgrep }>, align 8
@129 = private unnamed_addr constant [13 x i8] c"IndexNotFound", align 1
@130 = private unnamed_addr constant [14 x i8] c"IndexCorrupted", align 1
@131 = private unnamed_addr constant [5 x i8] c"Regex", align 1
@132 = private unnamed_addr constant [6 x i8] c"Server", align 1
@133 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRINtNtCsgCecv3eZDcN_5alloc3vec3VecNtCs30WoLBgco1_6ignore5ErrorENtB6_5Debug3fmtCsbNLsQi0JuJ4_5tgrep }>, align 8
@134 = private unnamed_addr constant [7 x i8] c"Partial", align 1
@135 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsX_NtNtCsf3Ta7LF998c_4core3fmt3numyNtB7_5Debug3fmt }>, align 8
@136 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtCs30WoLBgco1_6ignore5ErrorENtB6_5Debug3fmtCsbNLsQi0JuJ4_5tgrep }>, align 8
@137 = private unnamed_addr constant [14 x i8] c"WithLineNumber", align 1
@138 = private unnamed_addr constant [4 x i8] c"line", align 1
@139 = private unnamed_addr constant [3 x i8] c"err", align 1
@140 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbNLsQi0JuJ4_5tgrep, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsG_NtCs5Xr050g3D4S_3std4pathNtB5_7PathBufNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt }>, align 8
@141 = private unnamed_addr constant [8 x i8] c"WithPath", align 1
@142 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsZ_NtNtCsf3Ta7LF998c_4core3fmt3numjNtB7_5Debug3fmt }>, align 8
@143 = private unnamed_addr constant [9 x i8] c"WithDepth", align 1
@144 = private unnamed_addr constant [5 x i8] c"depth", align 1
@145 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtCs5Xr050g3D4S_3std4path7PathBufNtB6_5Debug3fmtCsbNLsQi0JuJ4_5tgrep }>, align 8
@146 = private unnamed_addr constant [4 x i8] c"Loop", align 1
@147 = private unnamed_addr constant [8 x i8] c"ancestor", align 1
@148 = private unnamed_addr constant [5 x i8] c"child", align 1
@149 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsR_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringENtNtB7_3fmt5Debug3fmtCsbNLsQi0JuJ4_5tgrep }>, align 8
@150 = private unnamed_addr constant [4 x i8] c"Glob", align 1
@151 = private unnamed_addr constant [4 x i8] c"glob", align 1
@152 = private unnamed_addr constant [20 x i8] c"UnrecognizedFileType", align 1
@153 = private unnamed_addr constant [17 x i8] c"InvalidDefinition", align 1
@154 = private unnamed_addr constant [4 x i8] c"None", align 1
@155 = private unnamed_addr constant [4 x i8] c"Some", align 1
@156 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCsbNLsQi0JuJ4_5tgrep }>, align 8
@157 = private unnamed_addr constant [13 x i8] c"ParseIntError", align 1
@158 = private unnamed_addr constant [4 x i8] c"kind", align 1
@159 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbNLsQi0JuJ4_5tgrep5serve12PublishErrorEBF_, [16 x i8] c" \00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsg_NtCsbNLsQi0JuJ4_5tgrep5serveNtB5_12PublishErrorNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt }>, align 8
@160 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbNLsQi0JuJ4_5tgrep5serve12PublishErrorEBF_, [16 x i8] c" \00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs12_NtCsbNLsQi0JuJ4_5tgrep5serveNtB6_12PublishErrorNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt, ptr @_RNvXsg_NtCsbNLsQi0JuJ4_5tgrep5serveNtB5_12PublishErrorNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr @159, ptr @_RNvXsh_NtCsbNLsQi0JuJ4_5tgrep5serveNtB5_12PublishErrorNtNtCsf3Ta7LF998c_4core5error5Error6source, ptr @_RNvYNtNtCsbNLsQi0JuJ4_5tgrep5serve12PublishErrorNtNtCsf3Ta7LF998c_4core5error5Error7type_idB6_, ptr @_RNvYNtNtCsbNLsQi0JuJ4_5tgrep5serve12PublishErrorNtNtCsf3Ta7LF998c_4core5error5Error11descriptionB6_, ptr @_RNvYNtNtCsbNLsQi0JuJ4_5tgrep5serve12PublishErrorNtNtCsf3Ta7LF998c_4core5error5Error5causeB6_, ptr @_RNvYNtNtCsbNLsQi0JuJ4_5tgrep5serve12PublishErrorNtNtCsf3Ta7LF998c_4core5error5Error7provideB6_ }>, align 8
@161 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs3_NtNtCsf3Ta7LF998c_4core3num5errorNtB5_13ParseIntErrorNtNtB9_3fmt7Display3fmt }>, align 8
@162 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsc_NtNtCsf3Ta7LF998c_4core3num5errorNtB5_13ParseIntErrorNtNtB9_3fmt5Debug3fmt, ptr @_RNvXs3_NtNtCsf3Ta7LF998c_4core3num5errorNtB5_13ParseIntErrorNtNtB9_3fmt7Display3fmt, ptr @161, ptr @_RNvYNtNtNtCsf3Ta7LF998c_4core3num5error13ParseIntErrorNtNtB8_5error5Error6sourceCsbNLsQi0JuJ4_5tgrep, ptr @_RNvYNtNtNtCsf3Ta7LF998c_4core3num5error13ParseIntErrorNtNtB8_5error5Error7type_idCsbNLsQi0JuJ4_5tgrep, ptr @_RNvYNtNtNtCsf3Ta7LF998c_4core3num5error13ParseIntErrorNtNtB8_5error5Error11descriptionCsbNLsQi0JuJ4_5tgrep, ptr @_RNvYNtNtNtCsf3Ta7LF998c_4core3num5error13ParseIntErrorNtNtB8_5error5Error5causeCsbNLsQi0JuJ4_5tgrep, ptr @_RNvYNtNtNtCsf3Ta7LF998c_4core3num5error13ParseIntErrorNtNtB8_5error5Error7provideCsbNLsQi0JuJ4_5tgrep }>, align 8
@163 = private unnamed_addr constant [2 x i8] c"()", align 1
@164 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 1529092121618456363 to ptr), ptr inttoptr (i64 2489887844218757296 to ptr) }>, align 8
@165 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -8669492143975730732 to ptr), ptr inttoptr (i64 -3633764041529900764 to ptr) }>, align 8
@166 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 368994047359312973 to ptr), ptr inttoptr (i64 5607712199609603308 to ptr) }>, align 8
@167 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -6022127391925862674 to ptr), ptr inttoptr (i64 -4152188554836500523 to ptr) }>, align 8
@168 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -7643399921539706559 to ptr), ptr inttoptr (i64 5648500856575389144 to ptr) }>, align 8
@169 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -6005111578814749368 to ptr), ptr inttoptr (i64 8648226028049758363 to ptr) }>, align 8
@170 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 9042674156784806288 to ptr), ptr inttoptr (i64 1797285378696272117 to ptr) }>, align 8
@171 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 4880585931850963567 to ptr), ptr inttoptr (i64 4281812425782570629 to ptr) }>, align 8
@172 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -7476139267491839551 to ptr), ptr inttoptr (i64 5958738223589126043 to ptr) }>, align 8
@173 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -2967678025193494254 to ptr), ptr inttoptr (i64 475058894427441962 to ptr) }>, align 8
@174 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -3480161023089589070 to ptr), ptr inttoptr (i64 622148315826613912 to ptr) }>, align 8
@175 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 1559906620355349045 to ptr), ptr inttoptr (i64 8856667211897474814 to ptr) }>, align 8

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMCsfmY3yR2dyUD_8clap_lexNtB3_7RawArgs3newNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringNtNtBN_3env6ArgsOsECsbNLsQi0JuJ4_5tgrep(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %1, i64 32, i1 false), !alias.scope !29
  call void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringEINtB2_12SpecFromIterBU_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapNtNtB10_3env6ArgsOsNCNvXs_CsfmY3yR2dyUD_8clap_lexNtB3e_7RawArgsINtNtB29_7convert4FromB2O_E4from0EE9from_iterCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMCsfmY3yR2dyUD_8clap_lexNtB3_7RawArgs6insertRNtNtCsgCecv3eZDcN_5alloc6string6StringABK_j1_ECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i64, ptr %1, align 8, !noundef !5   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34)
  call void @_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringE5drainINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(64) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %i.b), !noalias !34
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 0, ptr %i.c, align 8, !alias.scope !35, !noalias !36
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 1, ptr %.sroa.45.0..sroa_idx, align 8, !alias.scope !35, !noalias !36
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %2, ptr %.sroa.56.0..sroa_idx, align 8, !alias.scope !35, !noalias !36
  invoke void @_RNvXs1_NtNtCsgCecv3eZDcN_5alloc3vec6spliceINtB5_6SpliceINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB10_5array4iter8IntoIterRNtNtB9_6string6StringKj1_ENvYB2a_INtNtB10_7convert4IntoNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringE4intoEENtNtNtB10_3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.a)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec6splice6SpliceINtNtNtNtB4_4iter8adapters3map3MapINtNtNtB4_5array4iter8IntoIterRNtNtBI_6string6StringKj1_ENvYB2m_INtNtB4_7convert4IntoNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringE4intoEEECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtCsgCecv3eZDcN_5alloc3vec5drainINtB5_5DrainNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.a)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec5drain5DrainNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringEECsbNLsQi0JuJ4_5tgrep.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec5drain5DrainNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringEECsbNLsQi0JuJ4_5tgrep.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.d

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec6splice6SpliceINtNtNtNtB4_4iter8adapters3map3MapINtNtNtB4_5array4iter8IntoIterRNtNtBI_6string6StringKj1_ENvYB2m_INtNtB4_7convert4IntoNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringE4intoEEECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.a
  call void @_RNvXs5_NtNtCsgCecv3eZDcN_5alloc3vec5drainINtB5_5DrainNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden noalias noundef nonnull ptr @_RINvMNtCsjYKKaZ3qa7A_6anyhow5errorNtB5_5Error22construct_from_displayNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc noundef nonnull ptr @_RINvMNtCsjYKKaZ3qa7A_6anyhow5errorNtB5_5Error9constructINtNtB5_7wrapper12DisplayErrorNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %1)
  ret ptr %i.a
}

; Function Attrs: cold nonlazybind uwtable
define hidden noalias noundef nonnull ptr @_RINvMNtCsjYKKaZ3qa7A_6anyhow5errorNtB5_5Error3msgNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs2_NtCs5Xr050g3D4S_3std9backtraceNtB5_9Backtrace7capture(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a)
          to label %_RINvMNtCsjYKKaZ3qa7A_6anyhow5errorNtB5_5Error20construct_from_adhocNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.c

_RINvMNtCsjYKKaZ3qa7A_6anyhow5errorNtB5_5Error20construct_from_adhocNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = call fastcc noalias noundef nonnull ptr @_RINvMNtCsjYKKaZ3qa7A_6anyhow5errorNtB5_5Error9constructINtNtB5_7wrapper12MessageErrorNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret ptr %i.d

bb.b:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #31
          to label %bb.b unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define hidden noalias noundef nonnull ptr @_RINvMNtCsjYKKaZ3qa7A_6anyhow5errorNtB5_5Error3msgReECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs2_NtCs5Xr050g3D4S_3std9backtraceNtB5_9Backtrace7capture(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a) #32
  %i.b = call fastcc noalias noundef nonnull ptr @_RINvMNtCsjYKKaZ3qa7A_6anyhow5errorNtB5_5Error9constructINtNtB5_7wrapper12MessageErrorReEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.b
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noalias noundef nonnull ptr @_RINvMNtCsjYKKaZ3qa7A_6anyhow5errorNtB5_5Error9constructINtNtB5_7wrapper12DisplayErrorNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @6, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !39
  %i.d = tail call noundef align 8 dereferenceable_or_null(80) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 1, 1497) 80, i64 noundef range(i64 1, 9) 8) #25, !noalias !39 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxINtNtCsjYKKaZ3qa7A_6anyhow5error9ErrorImplINtNtBJ_7wrapper12DisplayErrorNtNtB4_6string6StringEEE3newCsbNLsQi0JuJ4_5tgrep.exit, !prof !6

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 80) #33
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsjYKKaZ3qa7A_6anyhow5error9ErrorImplINtNtBG_7wrapper12DisplayErrorNtNtCsgCecv3eZDcN_5alloc6string6StringEEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.a) #31
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxINtNtCsjYKKaZ3qa7A_6anyhow5error9ErrorImplINtNtBJ_7wrapper12DisplayErrorNtNtB4_6string6StringEEE3newCsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.d, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noalias noundef nonnull ptr @_RINvMNtCsjYKKaZ3qa7A_6anyhow5errorNtB5_5Error9constructINtNtB5_7wrapper12MessageErrorNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @4, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !42
  %i.d = tail call noundef align 8 dereferenceable_or_null(80) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 1, 1497) 80, i64 noundef range(i64 1, 9) 8) #25, !noalias !42 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxINtNtCsjYKKaZ3qa7A_6anyhow5error9ErrorImplINtNtBJ_7wrapper12MessageErrorNtNtB4_6string6StringEEE3newCsbNLsQi0JuJ4_5tgrep.exit, !prof !6

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 80) #33
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsjYKKaZ3qa7A_6anyhow5error9ErrorImplINtNtBG_7wrapper12MessageErrorNtNtCsgCecv3eZDcN_5alloc6string6StringEEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.a) #31
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxINtNtCsjYKKaZ3qa7A_6anyhow5error9ErrorImplINtNtBJ_7wrapper12MessageErrorNtNtB4_6string6StringEEE3newCsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.d, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noalias noundef nonnull ptr @_RINvMNtCsjYKKaZ3qa7A_6anyhow5errorNtB5_5Error9constructINtNtB5_7wrapper12MessageErrorReEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @5, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %1, ptr %i.d, align 8
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !49
  %i.e = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 1, 1497) 72, i64 noundef range(i64 1, 9) 8) #25, !noalias !49 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxINtNtCsjYKKaZ3qa7A_6anyhow5error9ErrorImplINtNtBJ_7wrapper12MessageErrorReEEE3newCsbNLsQi0JuJ4_5tgrep.exit, !prof !6

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #33
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load i64, ptr %i.b, align 8, !range !7, !alias.scope !50, !noundef !5
  %i.i = icmp eq i64 %i.h, 2
  br i1 %i.i, label %bb.d, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsjYKKaZ3qa7A_6anyhow5error9ErrorImplINtNtBG_7wrapper12MessageErrorReEEECsbNLsQi0JuJ4_5tgrep.exit

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  invoke void @_RNvXs0_NtNtCs5Xr050g3D4S_3std4sync9lazy_lockINtB5_8LazyLockNtNtB9_9backtrace7CaptureNCNvNtBX_6helper12lazy_resolve0ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.j)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsjYKKaZ3qa7A_6anyhow5error9ErrorImplINtNtBG_7wrapper12MessageErrorReEEECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsjYKKaZ3qa7A_6anyhow5error9ErrorImplINtNtBG_7wrapper12MessageErrorReEEECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.g

_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxINtNtCsjYKKaZ3qa7A_6anyhow5error9ErrorImplINtNtBJ_7wrapper12MessageErrorReEEE3newCsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.e
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noalias noundef nonnull ptr @_RINvMNtCsjYKKaZ3qa7A_6anyhow5errorNtB5_5Error9constructNtCs30WoLBgco1_6ignore5ErrorECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !53
  %i.d = tail call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 1, 1497) 112, i64 noundef range(i64 1, 9) 8) #25, !noalias !53 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxINtNtCsjYKKaZ3qa7A_6anyhow5error9ErrorImplNtCs30WoLBgco1_6ignore5ErrorEE3newCsbNLsQi0JuJ4_5tgrep.exit, !prof !6

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 112) #33
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsjYKKaZ3qa7A_6anyhow5error9ErrorImplNtCs30WoLBgco1_6ignore5ErrorEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.a) #31
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxINtNtCsjYKKaZ3qa7A_6anyhow5error9ErrorImplNtCs30WoLBgco1_6ignore5ErrorEE3newCsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.d, ptr noundef nonnull align 8 dereferenceable(112) %i.a, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noalias noundef nonnull ptr @_RINvMNtCsjYKKaZ3qa7A_6anyhow5errorNtB5_5Error9constructNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbNLsQi0JuJ4_5tgrep(ptr noalias noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %0, ptr %i.c, align 8
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !56
  %i.d = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 1, 1497) 64, i64 noundef range(i64 1, 9) 8) #25, !noalias !56 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxINtNtCsjYKKaZ3qa7A_6anyhow5error9ErrorImplNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorEE3newCsbNLsQi0JuJ4_5tgrep.exit, !prof !6

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #33
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsjYKKaZ3qa7A_6anyhow5error9ErrorImplNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.a) #31
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxINtNtCsjYKKaZ3qa7A_6anyhow5error9ErrorImplNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorEE3newCsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noalias noundef nonnull ptr @_RINvMNtCsjYKKaZ3qa7A_6anyhow5errorNtB5_5Error9constructNtNtCsbzNSmZPCnTx_10tgrep_core5error5ErrorECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !59
  %i.d = tail call noundef align 8 dereferenceable_or_null(88) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 1, 1497) 88, i64 noundef range(i64 1, 9) 8) #25, !noalias !59 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxINtNtCsjYKKaZ3qa7A_6anyhow5error9ErrorImplNtNtCsbzNSmZPCnTx_10tgrep_core5error5ErrorEE3newCsbNLsQi0JuJ4_5tgrep.exit, !prof !6

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 88) #33
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsjYKKaZ3qa7A_6anyhow5error9ErrorImplNtNtCsbzNSmZPCnTx_10tgrep_core5error5ErrorEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.a) #31
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxINtNtCsjYKKaZ3qa7A_6anyhow5error9ErrorImplNtNtCsbzNSmZPCnTx_10tgrep_core5error5ErrorEE3newCsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.d, ptr noundef nonnull align 8 dereferenceable(88) %i.a, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noalias noundef nonnull ptr @_RINvMNtCsjYKKaZ3qa7A_6anyhow5errorNtB5_5Error9constructNtNtNtCsf3Ta7LF998c_4core2io5error5ErrorECsbNLsQi0JuJ4_5tgrep(ptr noundef nonnull %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @3, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %0, ptr %i.c, align 8
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !62
  %i.d = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 1, 1497) 64, i64 noundef range(i64 1, 9) 8) #25, !noalias !62 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxINtNtCsjYKKaZ3qa7A_6anyhow5error9ErrorImplNtNtNtCsf3Ta7LF998c_4core2io5error5ErrorEE3newCsbNLsQi0JuJ4_5tgrep.exit, !prof !6

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #33
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsjYKKaZ3qa7A_6anyhow5error9ErrorImplNtNtNtB4_2io5error5ErrorEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.a) #31
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxINtNtCsjYKKaZ3qa7A_6anyhow5error9ErrorImplNtNtNtCsf3Ta7LF998c_4core2io5error5ErrorEE3newCsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs0_Cs3Hr4GOJ0UGa_7memmap2NtB6_11MmapOptions3mapRNtNtCs5Xr050g3D4S_3std2fs4FileECsbNLsQi0JuJ4_5tgrep(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %2, ptr %i.b, align 8
  %i.c = call noundef i32 @_RNvXs_Cs3Hr4GOJ0UGa_7memmap2RNtNtCs5Xr050g3D4S_3std2fs4FileNtB4_13MmapAsRawDesc11as_raw_descCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !66)
  %i.d = load i64, ptr %1, align 8, !range !8, !alias.scope !66, !noalias !67, !noundef !5
  %i.e = trunc nuw i64 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !66, !noalias !67, !noundef !5
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = call noundef i32 @_RNvXs_Cs3Hr4GOJ0UGa_7memmap2RNtNtCs5Xr050g3D4S_3std2fs4FileNtB4_13MmapAsRawDesc11as_raw_descCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b), !noalias !66
  %i.i = call { i64, ptr } @_RNvNtCs3Hr4GOJ0UGa_7memmap22os8file_len(i32 noundef %i.h), !noalias !66 ; 2 uses
  %i.j = extractvalue { i64, ptr } %i.i, 0
  %i.k = extractvalue { i64, ptr } %i.i, 1        ; 2 uses
  %i.l = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.m = trunc nuw i64 %i.j to i1
  br i1 %i.m, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.g, %bb.b
  %.sroa.01.0.i = phi i64 [ %i.g, %bb.b ], [ %i.s, %bb.g ]
  %i.n = call { i64, ptr } @_RNvMs0_Cs3Hr4GOJ0UGa_7memmap2NtB5_11MmapOptions12validate_len(i64 noundef %.sroa.01.0.i), !noalias !66
  br label %_RINvMs0_Cs3Hr4GOJ0UGa_7memmap2NtB6_11MmapOptions7get_lenRNtNtCs5Xr050g3D4S_3std2fs4FileECsbNLsQi0JuJ4_5tgrep.exit

bb.e:                                             ; preds = %bb.c
  %i.o = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %i.k, 1
  br label %_RINvMs0_Cs3Hr4GOJ0UGa_7memmap2NtB6_11MmapOptions7get_lenRNtNtCs5Xr050g3D4S_3std2fs4FileECsbNLsQi0JuJ4_5tgrep.exit

bb.f:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !66, !noalias !67, !noundef !5 ; 2 uses
  %i.r = icmp ugt i64 %i.q, %i.l
  br i1 %i.r, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = sub nuw i64 %i.l, %i.q
  br label %bb.d

bb.h:                                             ; preds = %bb.f
  %i.t = call noundef nonnull ptr @_RINvMNtNtCsgCecv3eZDcN_5alloc2io5errorNtNtNtCsf3Ta7LF998c_4core2io5error5Error3newReECs5Xr050g3D4S_3std(i8 noundef 21, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 39) #32, !noalias !66
  %i.u = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %i.t, 1
  br label %_RINvMs0_Cs3Hr4GOJ0UGa_7memmap2NtB6_11MmapOptions7get_lenRNtNtCs5Xr050g3D4S_3std2fs4FileECsbNLsQi0JuJ4_5tgrep.exit

_RINvMs0_Cs3Hr4GOJ0UGa_7memmap2NtB6_11MmapOptions7get_lenRNtNtCs5Xr050g3D4S_3std2fs4FileECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.d, %bb.e, %bb.h
  %.merged.i = phi { i64, ptr } [ %i.n, %bb.d ], [ %i.o, %bb.e ], [ %i.u, %bb.h ] ; 2 uses
  %i.v = extractvalue { i64, ptr } %.merged.i, 0
  %i.w = extractvalue { i64, ptr } %.merged.i, 1  ; 2 uses
  %i.x = trunc nuw i64 %i.v to i1
  br i1 %i.x, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_RINvMs0_Cs3Hr4GOJ0UGa_7memmap2NtB6_11MmapOptions7get_lenRNtNtCs5Xr050g3D4S_3std2fs4FileECsbNLsQi0JuJ4_5tgrep.exit
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !noundef !5
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 27
  %i.ac = load i8, ptr %i.ab, align 1, !range !9, !noundef !5
  %i.ad = trunc nuw i8 %i.ac to i1
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.af = load i8, ptr %i.ae, align 4, !range !9, !noundef !5
  %i.ag = trunc nuw i8 %i.af to i1
  call void @_RNvMNtCs3Hr4GOJ0UGa_7memmap22osNtB2_9MmapInner3map(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %i.y, i32 noundef %i.c, i64 noundef %i.aa, i1 noundef zeroext %i.ad, i1 noundef zeroext %i.ag)
  %i.ah = load i64, ptr %i.a, align 8, !range !8, !noundef !5
  %i.ai = trunc nuw i64 %i.ah to i1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !noundef !5 ; 2 uses
  br i1 %i.ai, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.am = load i64, ptr %i.al, align 8, !noundef !5
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.am, ptr %i.an, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %_RINvMs0_Cs3Hr4GOJ0UGa_7memmap2NtB6_11MmapOptions7get_lenRNtNtCs5Xr050g3D4S_3std2fs4FileECsbNLsQi0JuJ4_5tgrep.exit
  %.sink = phi ptr [ %i.w, %_RINvMs0_Cs3Hr4GOJ0UGa_7memmap2NtB6_11MmapOptions7get_lenRNtNtCs5Xr050g3D4S_3std2fs4FileECsbNLsQi0JuJ4_5tgrep.exit ], [ %i.ak, %bb.i ], [ %i.ak, %bb.j ]
  %storemerge.sink = phi i64 [ 1, %_RINvMs0_Cs3Hr4GOJ0UGa_7memmap2NtB6_11MmapOptions7get_lenRNtNtCs5Xr050g3D4S_3std2fs4FileECsbNLsQi0JuJ4_5tgrep.exit ], [ 1, %bb.i ], [ 0, %bb.j ]
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.ao, align 8
  store i64 %storemerge.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define hidden noundef i64 @_RINvMs7_NtCs4ciboHeBKjP_15crossbeam_epoch6atomicINtB6_6AtomicINtNtCsdB2fuMRIQJX_15crossbeam_deque5deque6BufferNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefEE4swapINtB6_6SharedBX_EECsbNLsQi0JuJ4_5tgrep(ptr nofree noundef nonnull align 8 captures(none) %0, i64 noundef %1, i8 noundef range(i8 0, 5) %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %3) unnamed_addr #2 {
bb.a:
  switch i8 %2, label %default.unreachable1 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.a = atomicrmw xchg ptr %0, i64 %1 monotonic, align 8
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.b = atomicrmw xchg ptr %0, i64 %1 release, align 8
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.c = atomicrmw xchg ptr %0, i64 %1 acquire, align 8
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.d = atomicrmw xchg ptr %0, i64 %1 acq_rel, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.e = atomicrmw xchg ptr %0, i64 %1 seq_cst, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0 = phi i64 [ %i.a, %bb.b ], [ %i.b, %bb.c ], [ %i.c, %bb.d ], [ %i.d, %bb.e ], [ %i.e, %bb.f ]
  ret i64 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !10, !noundef !5
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECsbNLsQi0JuJ4_5tgrep.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECsbNLsQi0JuJ4_5tgrep.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c
end_hunk_0
begin_hunk_1_@_RNvMs3_NtCsbNLsQi0JuJ4_5tgrep6outputNtB5_12OutputWriter9highlight:bb.a
  unreachable

_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit32.thread: ; preds = %bb.t, %bb.r, %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit32
  %gepdiff = sub nuw nsw i64 %i.am, %.sroa.0.021  ; 3 uses
  invoke void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %gepdiff)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit32.thread
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.021
  %i.bj = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !1094, !noundef !5 ; 2 uses
  %i.bk = icmp sgt i64 %i.bj, -1
  call void @llvm.assume(i1 %i.bk)
  %i.bl = load ptr, ptr %.sroa.413.0..sroa_idx, align 8, !alias.scope !1094, !nonnull !5, !noundef !5
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bj
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bm, ptr nonnull readonly align 1 %i.bi, i64 %gepdiff, i1 false)
  %.pre.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !1094
  %i.bn = add i64 %.pre.i, %gepdiff
  store i64 %i.bn, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !1094
  br label %bb.v

bb.w:                                             ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsbNLsQi0JuJ4_5tgrep.exit52, %bb.v
  %i.bo = icmp eq ptr %i.y, %i.x
  br i1 %i.bo, label %._crit_edge, label %.lr.ph

bb.x:                                             ; preds = %bb.v
  invoke void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 7)
          to label %bb.y unwind label %.loopexit

bb.y:                                             ; preds = %bb.x
  %i.bp = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !1095, !noundef !5 ; 2 uses
  %i.bq = icmp sgt i64 %i.bp, -1
  call void @llvm.assume(i1 %i.bq)
  %i.br = load ptr, ptr %.sroa.413.0..sroa_idx, align 8, !alias.scope !1095, !nonnull !5, !noundef !5
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.bs, ptr noundef nonnull align 1 dereferenceable(7) @108, i64 7, i1 false)
  %.pre.i43 = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !1095
  %i.bt = add i64 %.pre.i43, 7
  store i64 %i.bt, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !1095
  %i.bu = icmp ugt i64 %i.as, %2
  br i1 %i.bu, label %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit32.thread3.invoke, label %bb.z, !prof !1090

bb.z:                                             ; preds = %bb.y
  %i.bv = icmp eq i64 %i.am, %2
  br i1 %i.bv, label %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bw = icmp eq i64 %i.am, 0
  br i1 %i.bw, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.ac, %bb.aa
  %i.bx = icmp eq i64 %i.as, %2
  br i1 %i.bx, label %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.thread, label %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit

bb.ac:                                            ; preds = %bb.aa
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 %i.am
  %i.bz = load i8, ptr %i.by, align 1, !alias.scope !1096, !noundef !5
  %i.ca = icmp sgt i8 %i.bz, -65
  br i1 %i.ca, label %bb.ab, label %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit32.thread3.invoke, !prof !1092

_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit: ; preds = %bb.ab
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 %i.as
  %i.cc = load i8, ptr %i.cb, align 1, !alias.scope !1096, !noundef !5
  %i.cd = icmp sgt i8 %i.cc, -65
  br i1 %i.cd, label %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.thread, label %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit32.thread3.invoke, !prof !1093

_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.thread: ; preds = %bb.ab, %bb.z, %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit
  %gepdiff29 = sub nuw nsw i64 %i.as, %i.am       ; 3 uses
  invoke void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %gepdiff29)
          to label %.noexc48 unwind label %.loopexit

.noexc48:                                         ; preds = %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.thread
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 %i.am
  %i.cf = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !1097, !noundef !5 ; 2 uses
  %i.cg = icmp sgt i64 %i.cf, -1
  call void @llvm.assume(i1 %i.cg)
  %i.ch = load ptr, ptr %.sroa.413.0..sroa_idx, align 8, !alias.scope !1097, !nonnull !5, !noundef !5
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cf
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ci, ptr nonnull readonly align 1 %i.ce, i64 %gepdiff29, i1 false)
  %.pre.i47 = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !1097
  %i.cj = add i64 %.pre.i47, %gepdiff29
  store i64 %i.cj, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !1097
  invoke void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 4)
          to label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsbNLsQi0JuJ4_5tgrep.exit52 unwind label %.loopexit

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsbNLsQi0JuJ4_5tgrep.exit52: ; preds = %.noexc48
  %i.ck = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !1098, !noundef !5 ; 2 uses
  %i.cl = icmp sgt i64 %i.ck, -1
  call void @llvm.assume(i1 %i.cl)
  %i.cm = load ptr, ptr %.sroa.413.0..sroa_idx, align 8, !alias.scope !1098, !nonnull !5, !noundef !5
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.ck
  store i32 1831885595, ptr %i.cn, align 1
  %.pre.i50 = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !1098
  %i.co = add i64 %.pre.i50, 4
  store i64 %i.co, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !1098
  br label %bb.w

bb.ad:                                            ; preds = %bb.m, %.split.i, %._crit_edge
  %i.cp = sub nuw i64 %2, %i.as                   ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 %i.as
  invoke void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.cp)
          to label %.noexc55 unwind label %.loopexit.split-lp

.noexc55:                                         ; preds = %bb.ad
  %i.cr = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !1099, !noundef !5 ; 3 uses
  %i.cs = icmp sgt i64 %i.cr, -1
  call void @llvm.assume(i1 %i.cs)
  %.not.i53 = icmp eq i64 %2, %i.as
  br i1 %.not.i53, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.noexc55
  %i.ct = load ptr, ptr %.sroa.413.0..sroa_idx, align 8, !alias.scope !1099, !nonnull !5, !noundef !5
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cr
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cu, ptr nonnull readonly align 1 %i.cq, i64 %i.cp, i1 false)
  %.pre.i54 = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !1099
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.noexc55
  %i.cv = phi i64 [ %.pre.i54, %bb.ae ], [ %i.cr, %.noexc55 ]
  %i.cw = add i64 %i.cv, %i.cp
  store i64 %i.cw, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !1099
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.h

bb.ag:                                            ; preds = %bb.n
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.ah:                                            ; preds = %bb.n
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs_NtCsbNLsQi0JuJ4_5tgrep6outputNtB4_9ColorMode10is_enabled(i8 noundef range(i8 0, 3) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  switch i8 %0, label %default.unreachable1 [
    i8 0, label %bb.b
    i8 1, label %bb.d
    i8 2, label %bb.c
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call noundef nonnull align 8 ptr @_RNvNtNtCs5Xr050g3D4S_3std2io5stdio6stdout()
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RINvNtNtNtNtCs5Xr050g3D4S_3std3sys2io11is_terminal6isatty11is_terminalNtNtNtBa_2io5stdio6StdoutECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.sroa.0.0 = phi i1 [ %i.c, %bb.b ], [ false, %bb.c ], [ true, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtB6_11collections11linked_list4NodeINtNtB6_3vec3VecNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultEERNtNtB6_5alloc6GlobalE13new_uninit_inB1F_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !1102
  %i.a = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 1, 1497) 40, i64 noundef 8) #25, !noalias !1102 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #33
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.d = insertvalue { ptr, ptr } %i.c, ptr %0, 1
  ret { ptr, ptr } %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtB6_11collections11linked_list4NodeINtNtB6_3vec3VecTNtNtB6_6string6StringINtNtCsf3Ta7LF998c_4core6option6OptionTIB1m_mENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB2J_11FileVersionEEERNtNtB6_5alloc6GlobalE13new_uninit_inCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !1105
  %i.a = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 1, 1497) 40, i64 noundef 8) #25, !noalias !1105 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #33
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.d = insertvalue { ptr, ptr } %i.c, ptr %0, 1
  ret { ptr, ptr } %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEE13new_uninit_inCsbNLsQi0JuJ4_5tgrep() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(728) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 1, 1497) 728, i64 noundef 8) #25 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 728) #33
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringbEE13new_uninit_inCsbNLsQi0JuJ4_5tgrep() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(384) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 1, 1497) 384, i64 noundef 8) #25 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 384) #33
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodejINtNtB6_3vec3VecTjjEEEE13new_uninit_inCsbNLsQi0JuJ4_5tgrep() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(464) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 1, 1497) 464, i64 noundef 8) #25 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 464) #33
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodejNtNtBL_7set_val9SetValZSTEE13new_uninit_inCsbNLsQi0JuJ4_5tgrep() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(200) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 1, 1497) 200, i64 noundef 8) #25 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 200) #33
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtB6_6string6StringNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEE13new_uninit_inCsbNLsQi0JuJ4_5tgrep() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(632) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 1, 1497) 632, i64 noundef 8) #25 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 632) #33
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtB6_6string6StringbEE13new_uninit_inCsbNLsQi0JuJ4_5tgrep() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(288) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 1, 1497) 288, i64 noundef 8) #25 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 288) #33
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodejINtNtB6_3vec3VecTjjEEEE13new_uninit_inCsbNLsQi0JuJ4_5tgrep() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(368) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 1, 1497) 368, i64 noundef 8) #25 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 368) #33
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodejNtNtBL_7set_val9SetValZSTEE13new_uninit_inCsbNLsQi0JuJ4_5tgrep() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(104) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 1, 1497) 104, i64 noundef 8) #25 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 104) #33
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxNtNtCs6mHKL3HfXZM_12notify_types5event20EventAttributesInnerE13new_uninit_inCsbNLsQi0JuJ4_5tgrep() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(80) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 1, 1497) 80, i64 noundef 8) #25 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 80) #33
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxNtNtNtNtCs1L7Mk9ubPba_12clap_builder6parser7matches11arg_matches10SubCommandE13new_uninit_inCsbNLsQi0JuJ4_5tgrep() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(80) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 1, 1497) 80, i64 noundef 8) #25 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 80) #33
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvMsb_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringINtNtBb_3vec3VecB1J_EE10take_frontCsbNLsQi0JuJ4_5tgrep(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %1) unnamed_addr #7 {
bb.a:
  %.sroa.01.0.copyload = load i64, ptr %1, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.sroa.5.0.copyload = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 5 uses
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.sroa.6.0.copyload = load i64, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 6 uses
  store i64 0, ptr %1, align 8
  %i.a = trunc nuw i64 %.sroa.01.0.copyload to i1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %.sroa.5.sroa.0.0.copyload, null
  br i1 %.not, label %bb.f, label %bb.e

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %._crit_edge, %bb.c
  ret void

bb.e:                                             ; preds = %bb.b
  store ptr %.sroa.5.sroa.0.0.copyload, ptr %0, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.sroa.5.0.copyload, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.sroa.6.0.copyload, ptr %.sroa.511.0..sroa_idx, align 8
  br label %bb.d

bb.f:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.5.0.copyload) ]
  %i.b = icmp eq i64 %.sroa.5.sroa.6.0.copyload, 0
  br i1 %i.b, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.f
  %xtraiter = and i64 %.sroa.5.sroa.6.0.copyload, 7 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.sroa.022.025.prol = phi ptr [ %i.d, %.lr.ph.prol ], [ %.sroa.5.sroa.5.0.copyload, %.lr.ph.preheader ]
  %.sroa.020.024.prol = phi i64 [ %i.e, %.lr.ph.prol ], [ %.sroa.5.sroa.6.0.copyload, %.lr.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.022.025.prol, i64 544
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.e = add i64 %.sroa.020.024.prol, -1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !1106

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.d, %.lr.ph.prol ]
  %.sroa.022.025.unr = phi ptr [ %.sroa.5.sroa.5.0.copyload, %.lr.ph.preheader ], [ %i.d, %.lr.ph.prol ]
  %.sroa.020.024.unr = phi i64 [ %.sroa.5.sroa.6.0.copyload, %.lr.ph.preheader ], [ %i.e, %.lr.ph.prol ]
  %i.f = icmp ult i64 %.sroa.5.sroa.6.0.copyload, 8
  br i1 %i.f, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.f
  %.sroa.022.0.lcssa = phi ptr [ %.sroa.5.sroa.5.0.copyload, %bb.f ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.v, %.lr.ph ]
  store ptr %.sroa.022.0.lcssa, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, i8 0, i64 16, i1 false)
  br label %bb.d

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.022.025 = phi ptr [ %i.v, %.lr.ph ], [ %.sroa.022.025.unr, %.lr.ph.prol.loopexit ]
  %.sroa.020.024 = phi i64 [ %i.w, %.lr.ph ], [ %.sroa.020.024.unr, %.lr.ph.prol.loopexit ]
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.022.025, i64 544
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 544
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !5, !noundef !5
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 544
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !5, !noundef !5
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 544
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !5, !noundef !5
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 544
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !5, !noundef !5
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 544
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !5, !noundef !5
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 544
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !5, !noundef !5
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 544
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.w = add i64 %.sroa.020.024, -8               ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvMsb_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringNtNtCs6MoqnCnVQOT_10serde_json5value5ValueE10take_frontCsbNLsQi0JuJ4_5tgrep(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %1) unnamed_addr #7 {
bb.a:
  %.sroa.01.0.copyload = load i64, ptr %1, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.sroa.5.0.copyload = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 5 uses
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.sroa.6.0.copyload = load i64, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 6 uses
  store i64 0, ptr %1, align 8
  %i.a = trunc nuw i64 %.sroa.01.0.copyload to i1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %.sroa.5.sroa.0.0.copyload, null
  br i1 %.not, label %bb.f, label %bb.e

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %._crit_edge, %bb.c
  ret void

bb.e:                                             ; preds = %bb.b
  store ptr %.sroa.5.sroa.0.0.copyload, ptr %0, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.sroa.5.0.copyload, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.sroa.6.0.copyload, ptr %.sroa.511.0..sroa_idx, align 8
  br label %bb.d

bb.f:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.5.0.copyload) ]
  %i.b = icmp eq i64 %.sroa.5.sroa.6.0.copyload, 0
  br i1 %i.b, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.f
  %xtraiter = and i64 %.sroa.5.sroa.6.0.copyload, 7 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.sroa.022.025.prol = phi ptr [ %i.d, %.lr.ph.prol ], [ %.sroa.5.sroa.5.0.copyload, %.lr.ph.preheader ]
  %.sroa.020.024.prol = phi i64 [ %i.e, %.lr.ph.prol ], [ %.sroa.5.sroa.6.0.copyload, %.lr.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.022.025.prol, i64 632
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.e = add i64 %.sroa.020.024.prol, -1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !1107

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.d, %.lr.ph.prol ]
  %.sroa.022.025.unr = phi ptr [ %.sroa.5.sroa.5.0.copyload, %.lr.ph.preheader ], [ %i.d, %.lr.ph.prol ]
  %.sroa.020.024.unr = phi i64 [ %.sroa.5.sroa.6.0.copyload, %.lr.ph.preheader ], [ %i.e, %.lr.ph.prol ]
  %i.f = icmp ult i64 %.sroa.5.sroa.6.0.copyload, 8
  br i1 %i.f, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.f
  %.sroa.022.0.lcssa = phi ptr [ %.sroa.5.sroa.5.0.copyload, %bb.f ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.v, %.lr.ph ]
  store ptr %.sroa.022.0.lcssa, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, i8 0, i64 16, i1 false)
  br label %bb.d

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.022.025 = phi ptr [ %i.v, %.lr.ph ], [ %.sroa.022.025.unr, %.lr.ph.prol.loopexit ]
  %.sroa.020.024 = phi i64 [ %i.w, %.lr.ph ], [ %.sroa.020.024.unr, %.lr.ph.prol.loopexit ]
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.022.025, i64 632
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 632
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !5, !noundef !5
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 632
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !5, !noundef !5
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 632
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !5, !noundef !5
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 632
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !5, !noundef !5
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 632
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !5, !noundef !5
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 632
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !5, !noundef !5
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 632
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.w = add i64 %.sroa.020.024, -8               ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvMsb_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringbE10take_frontCsbNLsQi0JuJ4_5tgrep(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %1) unnamed_addr #7 {
end_hunk_1
begin_hunk_2_@_RNvXs8_NtCsjYKKaZ3qa7A_6anyhow5errorINtB5_9ErrorImplINtNtB7_7wrapper12MessageErrorReEENtNtCsf3Ta7LF998c_4core3fmt5Debug3fmtCsbNLsQi0JuJ4_5tgrep:bb.a

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs8_NtCsjYKKaZ3qa7A_6anyhow5errorINtB5_9ErrorImplNtCs30WoLBgco1_6ignore5ErrorENtNtCsf3Ta7LF998c_4core3fmt5Debug3fmtCsbNLsQi0JuJ4_5tgrep(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMNtCsjYKKaZ3qa7A_6anyhow3fmtNtNtB4_5error9ErrorImpl5debug(ptr noundef nonnull %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs8_NtCsjYKKaZ3qa7A_6anyhow5errorINtB5_9ErrorImplNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorENtNtCsf3Ta7LF998c_4core3fmt5Debug3fmtCsbNLsQi0JuJ4_5tgrep(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMNtCsjYKKaZ3qa7A_6anyhow3fmtNtNtB4_5error9ErrorImpl5debug(ptr noundef nonnull %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs8_NtCsjYKKaZ3qa7A_6anyhow5errorINtB5_9ErrorImplNtNtCsbzNSmZPCnTx_10tgrep_core5error5ErrorENtNtCsf3Ta7LF998c_4core3fmt5Debug3fmtCsbNLsQi0JuJ4_5tgrep(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMNtCsjYKKaZ3qa7A_6anyhow3fmtNtNtB4_5error9ErrorImpl5debug(ptr noundef nonnull %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs8_NtCsjYKKaZ3qa7A_6anyhow5errorINtB5_9ErrorImplNtNtNtCsf3Ta7LF998c_4core2io5error5ErrorENtNtBU_3fmt5Debug3fmtCsbNLsQi0JuJ4_5tgrep(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMNtCsjYKKaZ3qa7A_6anyhow3fmtNtNtB4_5error9ErrorImpl5debug(ptr noundef nonnull %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs9_NtCsjYKKaZ3qa7A_6anyhow5errorINtB5_9ErrorImplINtNtB7_7wrapper12DisplayErrorNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtCsf3Ta7LF998c_4core3fmt7Display3fmtCsbNLsQi0JuJ4_5tgrep(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCsjYKKaZ3qa7A_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !5, !nonnull !5
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #35
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs9_NtCsjYKKaZ3qa7A_6anyhow5errorINtB5_9ErrorImplINtNtB7_7wrapper12MessageErrorNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtCsf3Ta7LF998c_4core3fmt7Display3fmtCsbNLsQi0JuJ4_5tgrep(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCsjYKKaZ3qa7A_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !5, !nonnull !5
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #35
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs9_NtCsjYKKaZ3qa7A_6anyhow5errorINtB5_9ErrorImplINtNtB7_7wrapper12MessageErrorReEENtNtCsf3Ta7LF998c_4core3fmt7Display3fmtCsbNLsQi0JuJ4_5tgrep(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCsjYKKaZ3qa7A_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !5, !nonnull !5
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #35
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs9_NtCsjYKKaZ3qa7A_6anyhow5errorINtB5_9ErrorImplNtCs30WoLBgco1_6ignore5ErrorENtNtCsf3Ta7LF998c_4core3fmt7Display3fmtCsbNLsQi0JuJ4_5tgrep(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCsjYKKaZ3qa7A_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !5, !nonnull !5
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #35
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs9_NtCsjYKKaZ3qa7A_6anyhow5errorINtB5_9ErrorImplNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorENtNtCsf3Ta7LF998c_4core3fmt7Display3fmtCsbNLsQi0JuJ4_5tgrep(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCsjYKKaZ3qa7A_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !5, !nonnull !5
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #35
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs9_NtCsjYKKaZ3qa7A_6anyhow5errorINtB5_9ErrorImplNtNtCsbzNSmZPCnTx_10tgrep_core5error5ErrorENtNtCsf3Ta7LF998c_4core3fmt7Display3fmtCsbNLsQi0JuJ4_5tgrep(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCsjYKKaZ3qa7A_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !5, !nonnull !5
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #35
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs9_NtCsjYKKaZ3qa7A_6anyhow5errorINtB5_9ErrorImplNtNtNtCsf3Ta7LF998c_4core2io5error5ErrorENtNtBU_3fmt7Display3fmtCsbNLsQi0JuJ4_5tgrep(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCsjYKKaZ3qa7A_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !5, !nonnull !5
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #35
  ret i1 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringENtNtB7_3fmt5Debug3fmtCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !10, !noundef !5
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @155, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @128)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @154, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsX_NtNtCsf3Ta7LF998c_4core3fmt3numyNtB7_5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 67108864
  %.not1 = icmp eq i32 %i.d, 0
  br i1 %.not1, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvXsC_NtNtCsf3Ta7LF998c_4core3fmt3numyNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_RNvXsd_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impyNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXsE_NtNtCsf3Ta7LF998c_4core3fmt3numyNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.c ], [ %i.g, %bb.e ], [ %i.f, %bb.d ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtNtCsf3Ta7LF998c_4core3fmt3numjNtB7_5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 67108864
  %.not1 = icmp eq i32 %i.d, 0
  br i1 %.not1, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvXs6_NtNtCsf3Ta7LF998c_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXs8_NtNtCsf3Ta7LF998c_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.c ], [ %i.g, %bb.e ], [ %i.f, %bb.d ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: cold nonlazybind uwtable
define hidden noalias noundef nonnull ptr @_RNvXs_NtCsjYKKaZ3qa7A_6anyhow5errorNtB6_5ErrorINtNtCsf3Ta7LF998c_4core7convert4FromNtCs30WoLBgco1_6ignore5ErrorE4fromCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(56) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 3 uses
  %i.d = invoke noundef align 8 ptr @_RNvNtCsjYKKaZ3qa7A_6anyhow7nightly21request_ref_backtrace(ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @15)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.c, !prof !13

bb.c:                                             ; preds = %bb.b
  store i64 -1, ptr %i.c, align 8
  br label %_RINvMNtCsjYKKaZ3qa7A_6anyhow5errorNtB5_5Error18construct_from_stdNtCs30WoLBgco1_6ignore5ErrorECsbNLsQi0JuJ4_5tgrep.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs2_NtCs5Xr050g3D4S_3std9backtraceNtB5_9Backtrace7capture(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.b)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvMNtCsjYKKaZ3qa7A_6anyhow5errorNtB5_5Error18construct_from_stdNtCs30WoLBgco1_6ignore5ErrorECsbNLsQi0JuJ4_5tgrep.exit

_RINvMNtCsjYKKaZ3qa7A_6anyhow5errorNtB5_5Error18construct_from_stdNtCs30WoLBgco1_6ignore5ErrorECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.e, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false)
  %i.e = call fastcc noalias noundef nonnull ptr @_RINvMNtCsjYKKaZ3qa7A_6anyhow5errorNtB5_5Error9constructNtCs30WoLBgco1_6ignore5ErrorECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.e

bb.f:                                             ; preds = %bb.g
  resume { ptr, i32 } %lpad.thr_comm

bb.g:                                             ; preds = %bb.d, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs30WoLBgco1_6ignore5ErrorECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) #31
          to label %bb.f unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define hidden noalias noundef nonnull ptr @_RNvXs_NtCsjYKKaZ3qa7A_6anyhow5errorNtB6_5ErrorINtNtCsf3Ta7LF998c_4core7convert4FromNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorE4fromCsbNLsQi0JuJ4_5tgrep(ptr noalias noundef nonnull align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  store ptr %0, ptr %i.c, align 8
  %i.d = invoke noundef align 8 ptr @_RNvNtCsjYKKaZ3qa7A_6anyhow7nightly21request_ref_backtrace(ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @17)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.c, !prof !13

bb.c:                                             ; preds = %bb.b
  store i64 -1, ptr %i.b, align 8
  br label %_RINvMNtCsjYKKaZ3qa7A_6anyhow5errorNtB5_5Error18construct_from_stdNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs2_NtCs5Xr050g3D4S_3std9backtraceNtB5_9Backtrace7capture(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvMNtCsjYKKaZ3qa7A_6anyhow5errorNtB5_5Error18construct_from_stdNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit

_RINvMNtCsjYKKaZ3qa7A_6anyhow5errorNtB5_5Error18construct_from_stdNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.e, %bb.c
  %i.e = load ptr, ptr %i.c, align 8, !nonnull !5, !align !12, !noundef !5
  %i.f = call fastcc noalias noundef nonnull ptr @_RINvMNtCsjYKKaZ3qa7A_6anyhow5errorNtB5_5Error9constructNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbNLsQi0JuJ4_5tgrep(ptr noalias noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.b)
  ret ptr %i.f

bb.f:                                             ; preds = %bb.g
  resume { ptr, i32 } %lpad.thr_comm

bb.g:                                             ; preds = %bb.d, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #31
          to label %bb.f unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define hidden noalias noundef nonnull ptr @_RNvXs_NtCsjYKKaZ3qa7A_6anyhow5errorNtB6_5ErrorINtNtCsf3Ta7LF998c_4core7convert4FromNtNtCsbzNSmZPCnTx_10tgrep_core5error5ErrorE4fromCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 3 uses
  %i.d = invoke noundef align 8 ptr @_RNvNtCsjYKKaZ3qa7A_6anyhow7nightly21request_ref_backtrace(ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @19)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.c, !prof !13

bb.c:                                             ; preds = %bb.b
  store i64 -1, ptr %i.c, align 8
  br label %_RINvMNtCsjYKKaZ3qa7A_6anyhow5errorNtB5_5Error18construct_from_stdNtNtCsbzNSmZPCnTx_10tgrep_core5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs2_NtCs5Xr050g3D4S_3std9backtraceNtB5_9Backtrace7capture(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.b)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvMNtCsjYKKaZ3qa7A_6anyhow5errorNtB5_5Error18construct_from_stdNtNtCsbzNSmZPCnTx_10tgrep_core5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit

_RINvMNtCsjYKKaZ3qa7A_6anyhow5errorNtB5_5Error18construct_from_stdNtNtCsbzNSmZPCnTx_10tgrep_core5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.e, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %i.e = call fastcc noalias noundef nonnull ptr @_RINvMNtCsjYKKaZ3qa7A_6anyhow5errorNtB5_5Error9constructNtNtCsbzNSmZPCnTx_10tgrep_core5error5ErrorECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.e

bb.f:                                             ; preds = %bb.g
  resume { ptr, i32 } %lpad.thr_comm

bb.g:                                             ; preds = %bb.d, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core5error5ErrorECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) #31
          to label %bb.f unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define hidden noalias noundef nonnull ptr @_RNvXs_NtCsjYKKaZ3qa7A_6anyhow5errorNtB6_5ErrorINtNtCsf3Ta7LF998c_4core7convert4FromNtNtNtBN_2io5error5ErrorE4fromCsbNLsQi0JuJ4_5tgrep(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  store ptr %0, ptr %i.c, align 8
  %i.d = invoke noundef align 8 ptr @_RNvNtCsjYKKaZ3qa7A_6anyhow7nightly21request_ref_backtrace(ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @21)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.c, !prof !13

bb.c:                                             ; preds = %bb.b
  store i64 -1, ptr %i.b, align 8
  br label %_RINvMNtCsjYKKaZ3qa7A_6anyhow5errorNtB5_5Error18construct_from_stdNtNtNtCsf3Ta7LF998c_4core2io5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs2_NtCs5Xr050g3D4S_3std9backtraceNtB5_9Backtrace7capture(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvMNtCsjYKKaZ3qa7A_6anyhow5errorNtB5_5Error18construct_from_stdNtNtNtCsf3Ta7LF998c_4core2io5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit

_RINvMNtCsjYKKaZ3qa7A_6anyhow5errorNtB5_5Error18construct_from_stdNtNtNtCsf3Ta7LF998c_4core2io5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.e, %bb.c
  %i.e = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5
  %i.f = call fastcc noalias noundef nonnull ptr @_RINvMNtCsjYKKaZ3qa7A_6anyhow5errorNtB5_5Error9constructNtNtNtCsf3Ta7LF998c_4core2io5error5ErrorECsbNLsQi0JuJ4_5tgrep(ptr noundef nonnull %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.b)
  ret ptr %i.f

bb.f:                                             ; preds = %bb.g
  resume { ptr, i32 } %lpad.thr_comm

bb.g:                                             ; preds = %bb.d, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #31
          to label %bb.f unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtCsjYKKaZ3qa7A_6anyhow7wrapperINtB4_12MessageErrorNtNtCsgCecv3eZDcN_5alloc6string6StringENtNtCsf3Ta7LF998c_4core3fmt7Display3fmtCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1196)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !1196, !noalias !1197, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !1196, !noalias !1197, !noundef !5
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCsf3Ta7LF998c_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !1196
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtCsjYKKaZ3qa7A_6anyhow7wrapperINtB4_12MessageErrorReENtNtCsf3Ta7LF998c_4core3fmt7Display3fmtCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1201)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !1201, !noalias !1202, !nonnull !5, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !1201, !noalias !1202, !noundef !5
  %i.d = tail call noundef zeroext i1 @_RNvXsi_NtCsf3Ta7LF998c_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !1201
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsc_NtNtCsf3Ta7LF998c_4core3num5errorNtB5_13ParseIntErrorNtNtB9_3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @157, i64 noundef 13, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @158, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @156)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXse_NtNtCsgCecv3eZDcN_5alloc5boxed7convertINtB7_3BoxDNtNtCsf3Ta7LF998c_4core5error5ErrorNtNtBW_6marker4SendNtB1t_4SyncEL_EINtNtBW_7convert4FromNtNtCsbNLsQi0JuJ4_5tgrep5serve12PublishErrorE4fromB2o_(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !1205
  %i.a = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 1, 1497) 32, i64 noundef range(i64 1, 9) 8) #25, !noalias !1205 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxNtNtCsbNLsQi0JuJ4_5tgrep5serve12PublishErrorE3newBI_.exit, !prof !6

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #33
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbNLsQi0JuJ4_5tgrep5serve12PublishErrorEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) #31
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.c

_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxNtNtCsbNLsQi0JuJ4_5tgrep5serve12PublishErrorE3newBI_.exit: ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %i.e = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.f = insertvalue { ptr, ptr } %i.e, ptr @160, 1
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXse_NtNtCsgCecv3eZDcN_5alloc5boxed7convertINtB7_3BoxDNtNtCsf3Ta7LF998c_4core5error5ErrorNtNtBW_6marker4SendNtB1t_4SyncEL_EINtNtBW_7convert4FromNtNtNtBW_3num5error13ParseIntErrorE4fromCsbNLsQi0JuJ4_5tgrep(i8 noundef range(i8 0, 6) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25
  %i.a = tail call noundef dereferenceable_or_null(1) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 1, 1497) 1, i64 noundef range(i64 1, 9) 1) #25 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 1) #33
  unreachable

_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  store i8 %0, ptr %i.a, align 1
  %i.c = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.d = insertvalue { ptr, ptr } %i.c, ptr @162, 1
  ret { ptr, ptr } %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXsh_NtCsbNLsQi0JuJ4_5tgrep5serveNtB5_12PublishErrorNtNtCsf3Ta7LF998c_4core5error5Error6source(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr @21, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCsf3Ta7LF998c_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsr_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  %i.e = tail call noundef zeroext i1 @_RNvXsh_NtCsf3Ta7LF998c_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsv_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDINtNtNtCsf3Ta7LF998c_4core3ops8function2FnuEp6OutputNtNtNtCs22empcGmRho_14regex_automata4meta5regex5CacheNtNtNtBP_5panic11unwind_safe10UnwindSafeNtNtBP_6marker4SendNtB2r_13RefUnwindSafeNtB35_4SyncEL_EIBJ_uE4callCsbNLsQi0JuJ4_5tgrep(ptr dead_on_unwind noalias nofree noundef writable sret([1400 x i8]) align 8 captures(address) dereferenceable(1400) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !align !12, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !5, !nonnull !5
  tail call void %i.e(ptr noalias nofree noundef nonnull sret([1400 x i8]) align 8 captures(address) dereferenceable(1400) %0, ptr noundef nonnull %i.a) #35
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCsjYKKaZ3qa7A_6anyhow5error9ErrorImplINtNtB7_7wrapper12DisplayErrorNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtCsf3Ta7LF998c_4core5error5Error11descriptionCsbNLsQi0JuJ4_5tgrep(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @116, i64 40 }
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvYINtNtCsjYKKaZ3qa7A_6anyhow5error9ErrorImplINtNtB7_7wrapper12DisplayErrorNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtCsf3Ta7LF998c_4core5error5Error5causeCsbNLsQi0JuJ4_5tgrep(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCsjYKKaZ3qa7A_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !5, !nonnull !5
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b) #35, !inline_history !1206
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsjYKKaZ3qa7A_6anyhow5error9ErrorImplINtNtB7_7wrapper12DisplayErrorNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtCsf3Ta7LF998c_4core5error5Error7type_idCsbNLsQi0JuJ4_5tgrep(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @164, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCsjYKKaZ3qa7A_6anyhow5error9ErrorImplINtNtB7_7wrapper12MessageErrorNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtCsf3Ta7LF998c_4core5error5Error11descriptionCsbNLsQi0JuJ4_5tgrep(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @116, i64 40 }
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvYINtNtCsjYKKaZ3qa7A_6anyhow5error9ErrorImplINtNtB7_7wrapper12MessageErrorNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtCsf3Ta7LF998c_4core5error5Error5causeCsbNLsQi0JuJ4_5tgrep(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCsjYKKaZ3qa7A_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !5, !nonnull !5
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b) #35, !inline_history !1207
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsjYKKaZ3qa7A_6anyhow5error9ErrorImplINtNtB7_7wrapper12MessageErrorNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtCsf3Ta7LF998c_4core5error5Error7type_idCsbNLsQi0JuJ4_5tgrep(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @165, i64 16, i1 false)
  ret void
}
end_hunk_2
