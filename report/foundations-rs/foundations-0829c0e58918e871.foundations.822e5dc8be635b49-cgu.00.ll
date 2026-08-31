Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/foundations-rs/original/foundations-0829c0e58918e871.foundations.822e5dc8be635b49-cgu.00?download=true
inline.NumInlined: 1311
inline.NumDeleted: 640
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 9
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsgrxNvLvgM5Z_10hyper_util2rt5tokio7TokioIoNtNtNtCsbaWXNhtWAp9_11foundations9telemetry6server15TelemetryStreamEEB1v_, [16 x i8] c" \00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs2_NtNtCsgrxNvLvgM5Z_10hyper_util2rt5tokioINtB5_7TokioIoNtNtNtCsbaWXNhtWAp9_11foundations9telemetry6server15TelemetryStreamENtNtNtCsaCYLheajBls_5hyper2rt2io5Write10poll_writeB12_, ptr @_RNvXs2_NtNtCsgrxNvLvgM5Z_10hyper_util2rt5tokioINtB5_7TokioIoNtNtNtCsbaWXNhtWAp9_11foundations9telemetry6server15TelemetryStreamENtNtNtCsaCYLheajBls_5hyper2rt2io5Write10poll_flushB12_, ptr @_RNvXs2_NtNtCsgrxNvLvgM5Z_10hyper_util2rt5tokioINtB5_7TokioIoNtNtNtCsbaWXNhtWAp9_11foundations9telemetry6server15TelemetryStreamENtNtNtCsaCYLheajBls_5hyper2rt2io5Write13poll_shutdownB12_, ptr @_RNvXs2_NtNtCsgrxNvLvgM5Z_10hyper_util2rt5tokioINtB5_7TokioIoNtNtNtCsbaWXNhtWAp9_11foundations9telemetry6server15TelemetryStreamENtNtNtCsaCYLheajBls_5hyper2rt2io5Write17is_write_vectoredB12_, ptr @_RNvXs2_NtNtCsgrxNvLvgM5Z_10hyper_util2rt5tokioINtB5_7TokioIoNtNtNtCsbaWXNhtWAp9_11foundations9telemetry6server15TelemetryStreamENtNtNtCsaCYLheajBls_5hyper2rt2io5Write19poll_write_vectoredB12_ }>, align 8
@1 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsgrxNvLvgM5Z_10hyper_util2rt5tokio7TokioIoNtNtNtCsbaWXNhtWAp9_11foundations9telemetry6server15TelemetryStreamEEB1v_, [16 x i8] c" \00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1_NtNtCsgrxNvLvgM5Z_10hyper_util2rt5tokioINtB5_7TokioIoNtNtNtCsbaWXNhtWAp9_11foundations9telemetry6server15TelemetryStreamENtNtNtCsaCYLheajBls_5hyper2rt2io4Read9poll_readB12_, ptr @_RNvXs2_NtNtCsgrxNvLvgM5Z_10hyper_util2rt5tokioINtB5_7TokioIoNtNtNtCsbaWXNhtWAp9_11foundations9telemetry6server15TelemetryStreamENtNtNtCsaCYLheajBls_5hyper2rt2io5Write10poll_writeB12_, ptr @_RNvXs2_NtNtCsgrxNvLvgM5Z_10hyper_util2rt5tokioINtB5_7TokioIoNtNtNtCsbaWXNhtWAp9_11foundations9telemetry6server15TelemetryStreamENtNtNtCsaCYLheajBls_5hyper2rt2io5Write10poll_flushB12_, ptr @_RNvXs2_NtNtCsgrxNvLvgM5Z_10hyper_util2rt5tokioINtB5_7TokioIoNtNtNtCsbaWXNhtWAp9_11foundations9telemetry6server15TelemetryStreamENtNtNtCsaCYLheajBls_5hyper2rt2io5Write13poll_shutdownB12_, ptr @_RNvXs2_NtNtCsgrxNvLvgM5Z_10hyper_util2rt5tokioINtB5_7TokioIoNtNtNtCsbaWXNhtWAp9_11foundations9telemetry6server15TelemetryStreamENtNtNtCsaCYLheajBls_5hyper2rt2io5Write17is_write_vectoredB12_, ptr @_RNvXs2_NtNtCsgrxNvLvgM5Z_10hyper_util2rt5tokioINtB5_7TokioIoNtNtNtCsbaWXNhtWAp9_11foundations9telemetry6server15TelemetryStreamENtNtNtCsaCYLheajBls_5hyper2rt2io5Write19poll_write_vectoredB12_, ptr @0, ptr @_RNvYINtNtNtCsgrxNvLvgM5Z_10hyper_util2rt5tokio7TokioIoNtNtNtCsbaWXNhtWAp9_11foundations9telemetry6server15TelemetryStreamENtNtCsaCYLheajBls_5hyper7upgrade2Io15___hyper_type_idBW_ }>, align 8
@2 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaCYLheajBls_5hyper5proto2h27upgrade10H2UpgradedECsbaWXNhtWAp9_11foundations, [16 x i8] c"`\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs3_NtNtNtCsaCYLheajBls_5hyper5proto2h27upgradeNtB5_10H2UpgradedNtNtNtBb_2rt2io5Write10poll_write, ptr @_RNvXs3_NtNtNtCsaCYLheajBls_5hyper5proto2h27upgradeNtB5_10H2UpgradedNtNtNtBb_2rt2io5Write10poll_flush, ptr @_RNvXs3_NtNtNtCsaCYLheajBls_5hyper5proto2h27upgradeNtB5_10H2UpgradedNtNtNtBb_2rt2io5Write13poll_shutdown, ptr @_RNvYNtNtNtNtCsaCYLheajBls_5hyper5proto2h27upgrade10H2UpgradedNtNtNtBa_2rt2io5Write17is_write_vectoredCsbaWXNhtWAp9_11foundations, ptr @_RNvYNtNtNtNtCsaCYLheajBls_5hyper5proto2h27upgrade10H2UpgradedNtNtNtBa_2rt2io5Write19poll_write_vectoredCsbaWXNhtWAp9_11foundations }>, align 8
@3 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaCYLheajBls_5hyper5proto2h27upgrade10H2UpgradedECsbaWXNhtWAp9_11foundations, [16 x i8] c"`\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs2_NtNtNtCsaCYLheajBls_5hyper5proto2h27upgradeNtB5_10H2UpgradedNtNtNtBb_2rt2io4Read9poll_read, ptr @_RNvXs3_NtNtNtCsaCYLheajBls_5hyper5proto2h27upgradeNtB5_10H2UpgradedNtNtNtBb_2rt2io5Write10poll_write, ptr @_RNvXs3_NtNtNtCsaCYLheajBls_5hyper5proto2h27upgradeNtB5_10H2UpgradedNtNtNtBb_2rt2io5Write10poll_flush, ptr @_RNvXs3_NtNtNtCsaCYLheajBls_5hyper5proto2h27upgradeNtB5_10H2UpgradedNtNtNtBb_2rt2io5Write13poll_shutdown, ptr @_RNvYNtNtNtNtCsaCYLheajBls_5hyper5proto2h27upgrade10H2UpgradedNtNtNtBa_2rt2io5Write17is_write_vectoredCsbaWXNhtWAp9_11foundations, ptr @_RNvYNtNtNtNtCsaCYLheajBls_5hyper5proto2h27upgrade10H2UpgradedNtNtNtBa_2rt2io5Write19poll_write_vectoredCsbaWXNhtWAp9_11foundations, ptr @2, ptr @_RNvYNtNtNtNtCsaCYLheajBls_5hyper5proto2h27upgrade10H2UpgradedNtNtBa_7upgrade2Io15___hyper_type_idCsbaWXNhtWAp9_11foundations }>, align 8
@4 = private unnamed_addr constant [98 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/http-1.5.0/src/header/map.rs\00", align 1
@5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"a\00\00\00\00\00\00\00\C9\05\00\00\0C\00\00\00" }>, align 8
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"a\00\00\00\00\00\00\00\D5\05\00\00\11\00\00\00" }>, align 8
@7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"a\00\00\00\00\00\00\00:\05\00\00\0C\00\00\00" }>, align 8
@8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"a\00\00\00\00\00\00\00F\05\00\00\11\00\00\00" }>, align 8
@9 = private unnamed_addr constant [19 x i8] c"header_read_timeout", align 1
@10 = private unnamed_addr constant [101 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/hyper-1.11.0/src/proto/h1/io.rs\00", align 1
@_RNvNvMs_NtNtNtCs3zuhHmEJ01l_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID = external global { { { i64 } } }
@11 = private unnamed_addr constant [2 x i8] c"\C0\00", align 1
@12 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"a\00\00\00\00\00\00\00\FD\08\00\00\12\00\00\00" }>, align 8
@13 = private unnamed_addr constant <{ ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RNvNtCs8QTyv2gZm5j_5bytes5bytes12static_clone, ptr @_RNvNtCs8QTyv2gZm5j_5bytes5bytes13static_to_vec, ptr @_RNvNtCs8QTyv2gZm5j_5bytes5bytes13static_to_mut, ptr @_RNvNtCs8QTyv2gZm5j_5bytes5bytes16static_is_unique, ptr @_RNvNtCs8QTyv2gZm5j_5bytes5bytes11static_drop }>, align 8
@14 = private unnamed_addr constant [111 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/tokio-1.53.1/src/runtime/scheduler/mod.rs\00", align 1
@15 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @14, [16 x i8] c"n\00\00\00\00\00\00\00\9E\00\00\00-\00\00\00" }>, align 8
@16 = private unnamed_addr constant [113 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/tokio-1.53.1/src/runtime/context/current.rs\00", align 1
@17 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @16, [16 x i8] c"p\00\00\00\00\00\00\00)\00\00\005\00\00\00" }>, align 8
@_RNvNCNKNvNtNtCs3zuhHmEJ01l_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL = external thread_local global { { { i64, { { i64, ptr }, i64 }, ptr, i64, { { { i32, [2 x i32] } } }, { { { { i8, [1 x i8] } } } }, i8, [1 x i8] } }, i8, [7 x i8] }
@18 = private unnamed_addr constant [16 x i8] c"connection error", align 1
@19 = private unnamed_addr constant [34 x i8] c"JoinHandle polled after completion", align 1
@20 = private unnamed_addr constant [107 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/tokio-1.53.1/src/runtime/task/core.rs\00", align 1
@21 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @20, [16 x i8] c"j\00\00\00\00\00\00\00\AB\01\00\00\16\00\00\00" }>, align 8
@22 = private unnamed_addr constant [58 x i8] c"internal error: entered unreachable code: unexpected stage", align 1
@23 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @20, [16 x i8] c"j\00\00\00\00\00\00\00u\01\00\00\1A\00\00\00" }>, align 8
@24 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs14_NtNtCs74LoFwSioHw_4http6header3mapNtB6_14MaxSizeReachedNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt }>, align 8
@25 = private unnamed_addr constant [71 x i8] c"Dinternal error: entered unreachable code: write_body invalid state: \C0\00", align 1
@26 = private unnamed_addr constant [103 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/hyper-1.11.0/src/proto/h1/conn.rs\00", align 1
@27 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @26, [16 x i8] c"f\00\00\00\00\00\00\00\D3\02\00\00\12\00\00\00" }>, align 8
@28 = private unnamed_addr constant <{ [9 x i8], [23 x i8] }> <{ [9 x i8] c"\00\00\00\00\00\00\00\00\14", [23 x i8] undef }>, align 8
@29 = private unnamed_addr constant [10 x i8] c"keep-alive", align 1
@30 = private unnamed_addr constant [23 x i8] c"size overflows MAX_SIZE", align 1
@31 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"a\00\00\00\00\00\00\00\09\05\00\00#\00\00\00" }>, align 8
@32 = private unnamed_addr constant [25 x i8] c"HTTP/1.1 100 Continue\0D\0A\0D\0A", align 1
@33 = private unnamed_addr constant [75 x i8] c"Hinternal error: entered unreachable code: poll_read_body invalid state: \C0\00", align 1
@34 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @26, [16 x i8] c"f\00\00\00\00\00\00\00\A5\01\00\00\12\00\00\00" }>, align 8
@35 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @26, [16 x i8] c"f\00\00\00\00\00\00\00\DD\00\00\00 \00\00\00" }>, align 8
@36 = private unnamed_addr constant <{ [9 x i8], [23 x i8] }> <{ [9 x i8] c"\00\00\00\00\00\00\00\00C", [23 x i8] undef }>, align 8
@37 = private unnamed_addr constant [75 x i8] c"Hinternal error: entered unreachable code: write_trailers invalid state: \C0\00", align 1
@38 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @26, [16 x i8] c"f\00\00\00\00\00\00\00\EE\02\00\00\12\00\00\00" }>, align 8
@39 = private unnamed_addr constant [5 x i8] c"close", align 1
@40 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @26, [16 x i8] c"f\00\00\00\00\00\00\00\00\03\00\00\12\00\00\00" }>, align 8
@41 = private unnamed_addr constant [5 x i8] c"0\0D\0A\0D\0A", align 1
@42 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"a\00\00\00\00\00\00\00Z\05\00\00&\00\00\00" }>, align 8
@43 = private unnamed_addr constant <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [24 x i8] }> <{ ptr @_RINvNtNtNtCs3zuhHmEJ01l_5tokio7runtime4task3raw4pollINtNtCs3oUPovFnLWP_4core3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtBT_6future6future6Futurep6OutputuNtNtBT_6marker4SendEL_EEINtNtB1p_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECsbaWXNhtWAp9_11foundations, ptr @_RINvNtNtNtCs3zuhHmEJ01l_5tokio7runtime4task3raw8scheduleINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECsbaWXNhtWAp9_11foundations, ptr @_RINvNtNtNtCs3zuhHmEJ01l_5tokio7runtime4task3raw7deallocINtNtCs3oUPovFnLWP_4core3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtBW_6future6future6Futurep6OutputuNtNtBW_6marker4SendEL_EEINtNtB1s_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECsbaWXNhtWAp9_11foundations, ptr @_RINvNtNtNtCs3zuhHmEJ01l_5tokio7runtime4task3raw15try_read_outputINtNtCs3oUPovFnLWP_4core3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtB15_6future6future6Futurep6OutputuNtNtB15_6marker4SendEL_EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECsbaWXNhtWAp9_11foundations, ptr @_RINvNtNtNtCs3zuhHmEJ01l_5tokio7runtime4task3raw21drop_join_handle_slowINtNtCs3oUPovFnLWP_4core3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtB1b_6future6future6Futurep6OutputuNtNtB1b_6marker4SendEL_EEINtNtB1H_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECsbaWXNhtWAp9_11foundations, ptr @_RINvNtNtNtCs3zuhHmEJ01l_5tokio7runtime4task3raw17drop_abort_handleINtNtCs3oUPovFnLWP_4core3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtB17_6future6future6Futurep6OutputuNtNtB17_6marker4SendEL_EEINtNtB1D_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECsbaWXNhtWAp9_11foundations, ptr @_RINvNtNtNtCs3zuhHmEJ01l_5tokio7runtime4task3raw8shutdownINtNtCs3oUPovFnLWP_4core3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtBX_6future6future6Futurep6OutputuNtNtBX_6marker4SendEL_EEINtNtB1t_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECsbaWXNhtWAp9_11foundations, [24 x i8] c"P\00\00\00\00\00\00\00 \00\00\00\00\00\00\00(\00\00\00\00\00\00\00" }>, align 8
@44 = private unnamed_addr constant <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [24 x i8] }> <{ ptr @_RINvNtNtNtCs3zuhHmEJ01l_5tokio7runtime4task3raw4pollINtNtCs3oUPovFnLWP_4core3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxIBP_IB1l_DNtNtNtBT_6future6future6Futurep6OutputuNtNtBT_6marker4SendEL_EEEEINtNtB1p_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECsbaWXNhtWAp9_11foundations, ptr @_RINvNtNtNtCs3zuhHmEJ01l_5tokio7runtime4task3raw8scheduleINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECsbaWXNhtWAp9_11foundations, ptr @_RINvNtNtNtCs3zuhHmEJ01l_5tokio7runtime4task3raw7deallocINtNtCs3oUPovFnLWP_4core3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxIBS_IB1o_DNtNtNtBW_6future6future6Futurep6OutputuNtNtBW_6marker4SendEL_EEEEINtNtB1s_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECsbaWXNhtWAp9_11foundations, ptr @_RINvNtNtNtCs3zuhHmEJ01l_5tokio7runtime4task3raw15try_read_outputINtNtCs3oUPovFnLWP_4core3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxIB11_IB1x_DNtNtNtB15_6future6future6Futurep6OutputuNtNtB15_6marker4SendEL_EEEEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECsbaWXNhtWAp9_11foundations, ptr @_RINvNtNtNtCs3zuhHmEJ01l_5tokio7runtime4task3raw21drop_join_handle_slowINtNtCs3oUPovFnLWP_4core3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxIB17_IB1D_DNtNtNtB1b_6future6future6Futurep6OutputuNtNtB1b_6marker4SendEL_EEEEINtNtB1H_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECsbaWXNhtWAp9_11foundations, ptr @_RINvNtNtNtCs3zuhHmEJ01l_5tokio7runtime4task3raw17drop_abort_handleINtNtCs3oUPovFnLWP_4core3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxIB13_IB1z_DNtNtNtB17_6future6future6Futurep6OutputuNtNtB17_6marker4SendEL_EEEEINtNtB1D_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECsbaWXNhtWAp9_11foundations, ptr @_RINvNtNtNtCs3zuhHmEJ01l_5tokio7runtime4task3raw8shutdownINtNtCs3oUPovFnLWP_4core3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxIBT_IB1p_DNtNtNtBX_6future6future6Futurep6OutputuNtNtBX_6marker4SendEL_EEEEINtNtB1t_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECsbaWXNhtWAp9_11foundations, [24 x i8] c"P\00\00\00\00\00\00\00 \00\00\00\00\00\00\00(\00\00\00\00\00\00\00" }>, align 8
@45 = private unnamed_addr constant <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [24 x i8] }> <{ ptr @_RINvNtNtNtCs3zuhHmEJ01l_5tokio7runtime4task3raw4pollINtNtCs3oUPovFnLWP_4core3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtNtNtCsaCYLheajBls_5hyper6server4conn5http121UpgradeableConnectionINtNtNtCsgrxNvLvgM5Z_10hyper_util2rt5tokio7TokioIoNtNtNtCsbaWXNhtWAp9_11foundations9telemetry6server15TelemetryStreamENtNtB3R_6router6RouterEEEINtNtB1p_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB3V_, ptr @_RINvNtNtNtCs3zuhHmEJ01l_5tokio7runtime4task3raw8scheduleINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECsbaWXNhtWAp9_11foundations, ptr @_RINvNtNtNtCs3zuhHmEJ01l_5tokio7runtime4task3raw7deallocINtNtCs3oUPovFnLWP_4core3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtNtNtCsaCYLheajBls_5hyper6server4conn5http121UpgradeableConnectionINtNtNtCsgrxNvLvgM5Z_10hyper_util2rt5tokio7TokioIoNtNtNtCsbaWXNhtWAp9_11foundations9telemetry6server15TelemetryStreamENtNtB3U_6router6RouterEEEINtNtB1s_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB3Y_, ptr @_RINvNtNtNtCs3zuhHmEJ01l_5tokio7runtime4task3raw15try_read_outputINtNtCs3oUPovFnLWP_4core3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtNtNtCsaCYLheajBls_5hyper6server4conn5http121UpgradeableConnectionINtNtNtCsgrxNvLvgM5Z_10hyper_util2rt5tokio7TokioIoNtNtNtCsbaWXNhtWAp9_11foundations9telemetry6server15TelemetryStreamENtNtB43_6router6RouterEEEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB47_, ptr @_RINvNtNtNtCs3zuhHmEJ01l_5tokio7runtime4task3raw21drop_join_handle_slowINtNtCs3oUPovFnLWP_4core3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtNtNtCsaCYLheajBls_5hyper6server4conn5http121UpgradeableConnectionINtNtNtCsgrxNvLvgM5Z_10hyper_util2rt5tokio7TokioIoNtNtNtCsbaWXNhtWAp9_11foundations9telemetry6server15TelemetryStreamENtNtB49_6router6RouterEEEINtNtB1H_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB4d_, ptr @_RINvNtNtNtCs3zuhHmEJ01l_5tokio7runtime4task3raw17drop_abort_handleINtNtCs3oUPovFnLWP_4core3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtNtNtCsaCYLheajBls_5hyper6server4conn5http121UpgradeableConnectionINtNtNtCsgrxNvLvgM5Z_10hyper_util2rt5tokio7TokioIoNtNtNtCsbaWXNhtWAp9_11foundations9telemetry6server15TelemetryStreamENtNtB45_6router6RouterEEEINtNtB1D_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB49_, ptr @_RINvNtNtNtCs3zuhHmEJ01l_5tokio7runtime4task3raw8shutdownINtNtCs3oUPovFnLWP_4core3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtNtNtCsaCYLheajBls_5hyper6server4conn5http121UpgradeableConnectionINtNtNtCsgrxNvLvgM5Z_10hyper_util2rt5tokio7TokioIoNtNtNtCsbaWXNhtWAp9_11foundations9telemetry6server15TelemetryStreamENtNtB3V_6router6RouterEEEINtNtB1t_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB3Z_, [24 x i8] c"P\00\00\00\00\00\00\00 \00\00\00\00\00\00\00(\00\00\00\00\00\00\00" }>, align 8
@46 = private unnamed_addr constant <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [24 x i8] }> <{ ptr @_RINvNtNtNtCs3zuhHmEJ01l_5tokio7runtime4task3raw4pollINtNtNtNtCsaCYLheajBls_5hyper6server4conn5http121UpgradeableConnectionINtNtNtCsgrxNvLvgM5Z_10hyper_util2rt5tokio7TokioIoNtNtNtCsbaWXNhtWAp9_11foundations9telemetry6server15TelemetryStreamENtNtB2M_6router6RouterEINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB2Q_, ptr @_RINvNtNtNtCs3zuhHmEJ01l_5tokio7runtime4task3raw8scheduleINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECsbaWXNhtWAp9_11foundations, ptr @_RINvNtNtNtCs3zuhHmEJ01l_5tokio7runtime4task3raw7deallocINtNtNtNtCsaCYLheajBls_5hyper6server4conn5http121UpgradeableConnectionINtNtNtCsgrxNvLvgM5Z_10hyper_util2rt5tokio7TokioIoNtNtNtCsbaWXNhtWAp9_11foundations9telemetry6server15TelemetryStreamENtNtB2P_6router6RouterEINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB2T_, ptr @_RINvNtNtNtCs3zuhHmEJ01l_5tokio7runtime4task3raw15try_read_outputINtNtNtNtCsaCYLheajBls_5hyper6server4conn5http121UpgradeableConnectionINtNtNtCsgrxNvLvgM5Z_10hyper_util2rt5tokio7TokioIoNtNtNtCsbaWXNhtWAp9_11foundations9telemetry6server15TelemetryStreamENtNtB2Y_6router6RouterEINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB32_, ptr @_RINvNtNtNtCs3zuhHmEJ01l_5tokio7runtime4task3raw21drop_join_handle_slowINtNtNtNtCsaCYLheajBls_5hyper6server4conn5http121UpgradeableConnectionINtNtNtCsgrxNvLvgM5Z_10hyper_util2rt5tokio7TokioIoNtNtNtCsbaWXNhtWAp9_11foundations9telemetry6server15TelemetryStreamENtNtB34_6router6RouterEINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB38_, ptr @_RINvNtNtNtCs3zuhHmEJ01l_5tokio7runtime4task3raw17drop_abort_handleINtNtNtNtCsaCYLheajBls_5hyper6server4conn5http121UpgradeableConnectionINtNtNtCsgrxNvLvgM5Z_10hyper_util2rt5tokio7TokioIoNtNtNtCsbaWXNhtWAp9_11foundations9telemetry6server15TelemetryStreamENtNtB30_6router6RouterEINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB34_, ptr @_RINvNtNtNtCs3zuhHmEJ01l_5tokio7runtime4task3raw8shutdownINtNtNtNtCsaCYLheajBls_5hyper6server4conn5http121UpgradeableConnectionINtNtNtCsgrxNvLvgM5Z_10hyper_util2rt5tokio7TokioIoNtNtNtCsbaWXNhtWAp9_11foundations9telemetry6server15TelemetryStreamENtNtB2Q_6router6RouterEINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB2U_, [24 x i8] c"\C8\02\00\00\00\00\00\00 \00\00\00\00\00\00\00(\00\00\00\00\00\00\00" }>, align 8
@_RNvNtNtNtCs3zuhHmEJ01l_5tokio7runtime4task5waker12WAKER_VTABLE = external global { ptr, ptr, ptr, ptr }
@47 = private unnamed_addr constant [40 x i8] c"send stream capacity unexpectedly closed", align 1
@_RNvNtCs8QTyv2gZm5j_5bytes9bytes_mut13SHARED_VTABLE = external global { ptr, ptr, ptr, ptr, ptr }
@48 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"d\00\00\00\00\00\00\00\19\01\00\00P\00\00\00" }>, align 8
@49 = private unnamed_addr constant [8 x i8] c"\00 \00\00\00\00\00\00", align 8
@50 = private unnamed_addr constant [45 x i8] c"(The max_buf_size cannot be smaller than \C0\01.\00", align 1
@51 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"d\00\00\00\00\00\00\00W\00\00\00\09\00\00\00" }>, align 8
@52 = private unnamed_addr constant [95 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/hyper-1.11.0/src/rt/io.rs\00", align 1
@53 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @52, [16 x i8] c"^\00\00\00\00\00\00\00\05\01\00\000\00\00\00" }>, align 8
@54 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -4245045550742278614 to ptr), ptr inttoptr (i64 9003573210533611909 to ptr) }>, align 8
@55 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaCYLheajBls_5hyper7upgrade9OnUpgradeECsbaWXNhtWAp9_11foundations, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNtCs3oUPovFnLWP_4core3anyNtNtCsaCYLheajBls_5hyper7upgrade9OnUpgradeNtB2_3Any7type_idCsbaWXNhtWAp9_11foundations }>, align 8
@56 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaCYLheajBls_5hyper7upgrade9OnUpgradeECsbaWXNhtWAp9_11foundations, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNtCs3oUPovFnLWP_4core3anyNtNtCsaCYLheajBls_5hyper7upgrade9OnUpgradeNtB2_3Any7type_idCsbaWXNhtWAp9_11foundations, ptr @_RNvXs1_NtCs74LoFwSioHw_4http10extensionsNtNtCsaCYLheajBls_5hyper7upgrade9OnUpgradeNtB5_8AnyClone9clone_boxCsbaWXNhtWAp9_11foundations, ptr @_RNvXs1_NtCs74LoFwSioHw_4http10extensionsNtNtCsaCYLheajBls_5hyper7upgrade9OnUpgradeNtB5_8AnyClone6as_anyCsbaWXNhtWAp9_11foundations, ptr @_RNvXs1_NtCs74LoFwSioHw_4http10extensionsNtNtCsaCYLheajBls_5hyper7upgrade9OnUpgradeNtB5_8AnyClone10as_any_mutCsbaWXNhtWAp9_11foundations, ptr @_RNvXs1_NtCs74LoFwSioHw_4http10extensionsNtNtCsaCYLheajBls_5hyper7upgrade9OnUpgradeNtB5_8AnyClone8into_anyCsbaWXNhtWAp9_11foundations, ptr @_RNvXs1_NtCs74LoFwSioHw_4http10extensionsNtNtCsaCYLheajBls_5hyper7upgrade9OnUpgradeNtB5_8AnyClone9type_nameCsbaWXNhtWAp9_11foundations }>, align 8
@57 = private unnamed_addr constant [25 x i8] c"hyper::upgrade::OnUpgrade", align 1
@58 = private unnamed_addr constant [42 x i8] c"!cannot advance past `remaining`: \C0\04 <= \C0\00", align 1
@59 = private unnamed_addr constant [105 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/hyper-1.11.0/src/proto/h1/encode.rs\00", align 1
@60 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @59, [16 x i8] c"h\00\00\00\00\00\00\00p\01\00\00\14\00\00\00" }>, align 8
@61 = private unnamed_addr constant [95 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/bytes-1.12.1/src/bytes.rs\00", align 1
@62 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @61, [16 x i8] c"^\00\00\00\00\00\00\00\B6\02\00\00\09\00\00\00" }>, align 8
@63 = private unnamed_addr constant [51 x i8] c"upgradeable server connection missing after upgrade", align 1
@64 = private unnamed_addr constant [107 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/hyper-1.11.0/src/server/conn/http1.rs\00", align 1
@65 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @64, [16 x i8] c"j\00\00\00\00\00\00\00/\02\00\00\1A\00\00\00" }>, align 8
@66 = private unnamed_addr constant [4 x i8] c"Init", align 1
@67 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtNtCsaCYLheajBls_5hyper5proto2h16decode7DecoderNtB6_5Debug3fmtCsbaWXNhtWAp9_11foundations }>, align 8
@68 = private unnamed_addr constant [8 x i8] c"Continue", align 1
@69 = private unnamed_addr constant [4 x i8] c"Body", align 1
@70 = private unnamed_addr constant [9 x i8] c"KeepAlive", align 1
@71 = private unnamed_addr constant [6 x i8] c"Closed", align 1
@72 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"d\00\00\00\00\00\00\00\F7\01\00\00\1D\00\00\00" }>, align 8
@73 = private unnamed_addr constant [28 x i8] c"`len` greater than remaining", align 1
@74 = private unnamed_addr constant [102 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/http-body-util-0.1.5/src/util.rs\00", align 1
@75 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @74, [16 x i8] c"e\00\00\00\00\00\00\00V\00\00\00\11\00\00\00" }>, align 8
@76 = private unnamed_addr constant [20 x i8] c"out of bounds access", align 1
@77 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @74, [16 x i8] c"e\00\00\00\00\00\00\00,\00\00\00+\00\00\00" }>, align 8
@78 = private unnamed_addr constant [99 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/bytes-1.12.1/src/buf/chain.rs\00", align 1
@79 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @78, [16 x i8] c"b\00\00\00\00\00\00\00\A8\00\00\00-\00\00\00" }>, align 8
@80 = private unnamed_addr constant [100 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/hyper-1.11.0/src/common/buf.rs\00", align 1
@81 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @80, [16 x i8] c"c\00\00\00\00\00\00\00A\00\00\001\00\00\00" }>, align 8
@82 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @80, [16 x i8] c"c\00\00\00\00\00\00\00,\00\00\00+\00\00\00" }>, align 8
@83 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -200823944776657819 to ptr), ptr inttoptr (i64 -1451532556103554910 to ptr) }>, align 8
@84 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 5344184591794020039 to ptr), ptr inttoptr (i64 6148763644170294544 to ptr) }>, align 8

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCsaCYLheajBls_5hyper7upgradeNtB3_8Upgraded3newNtNtNtNtB5_5proto2h27upgrade10H2UpgradedECsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(96) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !8 {
bb.a:
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #32, !dbg !15, !noalias !37
  %i.a = tail call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 8, 769) 96, i64 noundef range(i64 8, 129) 8) #32, !dbg !40, !noalias !37 ; 3 uses
  %i.b = icmp eq ptr %i.a, null, !dbg !41
  br i1 %i.b, label %bb.b, label %bb.e, !dbg !42, !prof !43

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 96) #33
          to label %.noexc unwind label %bb.c, !dbg !44

.noexc:                                           ; preds = %bb.b
  unreachable, !dbg !44

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaCYLheajBls_5hyper5proto2h27upgrade10H2UpgradedECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1) #34
          to label %.body unwind label %bb.d, !dbg !45

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35, !dbg !46
  unreachable, !dbg !46

.body:                                            ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47), !dbg !50
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51), !dbg !54
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !60
  %i.f = load ptr, ptr %i.e, align 8, !dbg !90, !alias.scope !95, !noundef !14
  %i.g = load ptr, ptr %2, align 8, !dbg !96, !alias.scope !95, !nonnull !14, !align !98, !noundef !14
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32, !dbg !96
  %i.i = load ptr, ptr %i.h, align 8, !dbg !96, !noalias !95, !nonnull !14, !noundef !14
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !99
  %i.k = load ptr, ptr %i.j, align 8, !dbg !99, !alias.scope !95, !noundef !14
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !100
  %i.m = load i64, ptr %i.l, align 8, !dbg !100, !alias.scope !95, !noundef !14
  invoke void %i.i(ptr noundef %i.f, ptr noundef %i.k, i64 noundef %i.m)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesECsbaWXNhtWAp9_11foundations.exit unwind label %bb.f, !dbg !96, !inline_history !101

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false), !dbg !102
  store ptr %i.a, ptr %0, align 8, !dbg !104
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !104
  store ptr @3, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !104
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !104
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !dbg !104
  ret void, !dbg !105

bb.f:                                             ; preds = %.body
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35, !dbg !106
  unreachable, !dbg !106

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesECsbaWXNhtWAp9_11foundations.exit: ; preds = %.body
  resume { ptr, i32 } %i.c, !dbg !106
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvMs0_NtNtCs74LoFwSioHw_4http6header3mapNtB6_9HeaderMap11try_insert2NtNtB8_4name10HeaderNameECsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(40) %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !107 {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 15 uses
  %i.b = alloca [104 x i8], align 8               ; 15 uses
  %i.c = invoke noundef zeroext i1 @_RNvMs0_NtNtCs74LoFwSioHw_4http6header3mapNtB5_9HeaderMap15try_reserve_oneCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1)
          to label %bb.b unwind label %bb.ay, !dbg !113

bb.b:                                             ; preds = %bb.a
  br i1 %i.c, label %bb.c, label %bb.d, !dbg !114

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !120
  store i8 -1, ptr %i.d, align 8, !dbg !120
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128), !dbg !131
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132), !dbg !135
  tail call void @llvm.experimental.noalias.scope.decl(metadata !138), !dbg !141
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !143
  %i.f = load ptr, ptr %i.e, align 8, !dbg !150, !alias.scope !152, !noundef !14
  %i.g = load ptr, ptr %3, align 8, !dbg !153, !alias.scope !152, !nonnull !14, !align !98, !noundef !14
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32, !dbg !153
  %i.i = load ptr, ptr %i.h, align 8, !dbg !153, !noalias !152, !nonnull !14, !noundef !14
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !154
  %i.k = load ptr, ptr %i.j, align 8, !dbg !154, !alias.scope !152, !noundef !14
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !155
  %i.m = load i64, ptr %i.l, align 8, !dbg !155, !alias.scope !152, !noundef !14
  invoke void %i.i(ptr noundef %i.f, ptr noundef %i.k, i64 noundef %i.m)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs74LoFwSioHw_4http6header5value11HeaderValueECsbaWXNhtWAp9_11foundations.exit unwind label %bb.aw, !dbg !153, !inline_history !156

bb.d:                                             ; preds = %bb.b
  %i.n = tail call fastcc noundef i16 @_RINvNtNtCs74LoFwSioHw_4http6header3map15hash_elem_usingNtNtB4_4name10HeaderNameECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noundef nonnull align 8 %2), !dbg !157 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 88, !dbg !158
  %i.p = load i16, ptr %i.o, align 8, !dbg !158, !noundef !14 ; 3 uses
  %i.q = and i16 %i.p, %i.n, !dbg !160
  %i.r = zext nneg i16 %i.q to i64, !dbg !160
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.u = load i64, ptr %i.t, align 8, !noundef !14 ; 2 uses
  %i.v = load ptr, ptr %i.s, align 8, !nonnull !14
  %i.w = zext i16 %i.p to i64
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.y = load i64, ptr %i.x, align 8              ; 15 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !14 ; 3 uses
  %i.ab = load ptr, ptr %2, align 8               ; 8 uses
  %i.ac = icmp eq ptr %i.ab, null                 ; 8 uses
  %not..i.i = xor i1 %i.ac, true
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 8, !range !163
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ag = load i64, ptr %i.af, align 8            ; 9 uses
  %i.ah = load ptr, ptr %i.ad, align 8            ; 8 uses
  %.not244 = icmp eq i64 %i.u, 0
  br label %.outer228, !dbg !164

.outer228:                                        ; preds = %_RNvXsy_NtNtCs74LoFwSioHw_4http6header4nameNtB5_10HeaderNameNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.thread, %bb.d
  %.sroa.08.0.ph = phi i64 [ %i.bw, %_RNvXsy_NtNtCs74LoFwSioHw_4http6header4nameNtB5_10HeaderNameNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.thread ], [ 0, %bb.d ] ; 3 uses
  %.sroa.0.0.ph = phi i64 [ %i.bx, %_RNvXsy_NtNtCs74LoFwSioHw_4http6header4nameNtB5_10HeaderNameNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.thread ], [ %i.r, %bb.d ] ; 2 uses
  %i.ai = icmp ult i64 %.sroa.0.0.ph, %i.u, !dbg !168 ; 2 uses
  %.not244.not = xor i1 %.not244, true, !dbg !168
  %brmerge = or i1 %i.ai, %.not244.not, !dbg !168
  %.sroa.0.0.ph.mux = select i1 %i.ai, i64 %.sroa.0.0.ph, i64 0, !dbg !168 ; 7 uses
  br i1 %brmerge, label %.loopexit, label %infloop, !dbg !168

.loopexit:                                        ; preds = %.outer228
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %.sroa.0.0.ph.mux, !dbg !169 ; 2 uses
  %i.ak = load i16, ptr %i.aj, align 2, !dbg !171, !noundef !14 ; 2 uses
  %.not = icmp eq i16 %i.ak, -1, !dbg !171
  br i1 %.not, label %bb.g, label %bb.f, !dbg !179

bb.e:                                             ; preds = %bb.z
  unreachable

bb.f:                                             ; preds = %.loopexit
  %i.al = zext i16 %i.ak to i64, !dbg !180        ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 2, !dbg !181
  %i.an = load i16, ptr %i.am, align 2, !dbg !181, !noundef !14 ; 2 uses
  %i.ao = and i16 %i.an, %i.p, !dbg !182
  %i.ap = zext i16 %i.ao to i64, !dbg !182
  %i.aq = sub i64 %.sroa.0.0.ph.mux, %i.ap, !dbg !186
  %i.ar = and i64 %i.aq, %i.w, !dbg !192
  %i.as = icmp samesign ult i64 %i.ar, %.sroa.08.0.ph, !dbg !193
  br i1 %i.as, label %bb.ah, label %bb.u, !dbg !193

bb.g:                                             ; preds = %.loopexit
  %i.at = icmp ult i64 %i.y, 88686269585142076, !dbg !195
  tail call void @llvm.assume(i1 %i.at), !dbg !204
  %.sroa.6117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !205
  %.sroa.6117.0.copyload = load ptr, ptr %.sroa.6117.0..sroa_idx, align 8, !dbg !205 ; 3 uses
  %.sroa.0118.0.copyload = load ptr, ptr %3, align 8, !dbg !207 ; 3 uses
  %.sroa.5120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !207
  %.sroa.5120.0.copyload = load ptr, ptr %.sroa.5120.0..sroa_idx, align 8, !dbg !207 ; 2 uses
  %.sroa.6123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !207
  %.sroa.6123.0.copyload = load i64, ptr %.sroa.6123.0..sroa_idx, align 8, !dbg !207 ; 2 uses
  %.sroa.7126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !207
  %.sroa.7126.0.copyload = load ptr, ptr %.sroa.7126.0..sroa_idx, align 8, !dbg !207 ; 2 uses
  %.sroa.8129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 32, !dbg !207
  %.sroa.8129.0.copyload = load i64, ptr %.sroa.8129.0..sroa_idx, align 8, !dbg !207
  tail call void @llvm.experimental.noalias.scope.decl(metadata !208), !dbg !211
  %i.au = icmp samesign ugt i64 %i.y, 32767, !dbg !212
  br i1 %i.au, label %bb.l, label %bb.h, !dbg !212

bb.h:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !215 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !218, !noalias !219
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 96, !dbg !218
  store i16 %i.n, ptr %i.aw, align 8, !dbg !218, !noalias !219
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 64, !dbg !218
  store ptr %i.ab, ptr %i.ax, align 8, !dbg !218, !noalias !222
  %.sroa.6102.0..sroa_idx103 = getelementptr inbounds nuw i8, ptr %i.b, i64 72, !dbg !218
  store ptr %i.ah, ptr %.sroa.6102.0..sroa_idx103, align 8, !dbg !218, !noalias !222
  %.sroa.8106.0..sroa_idx107 = getelementptr inbounds nuw i8, ptr %i.b, i64 80, !dbg !218
  store i64 %i.ag, ptr %.sroa.8106.0..sroa_idx107, align 8, !dbg !218, !noalias !222
  %.sroa.10110.0..sroa_idx111 = getelementptr inbounds nuw i8, ptr %i.b, i64 88, !dbg !218
  store ptr %.sroa.6117.0.copyload, ptr %.sroa.10110.0..sroa_idx111, align 8, !dbg !218, !noalias !222
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !218
  store ptr %.sroa.0118.0.copyload, ptr %i.ay, align 8, !dbg !218, !noalias !223
  %.sroa.5120.0..sroa_idx121 = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !218
  store ptr %.sroa.5120.0.copyload, ptr %.sroa.5120.0..sroa_idx121, align 8, !dbg !218, !noalias !223
  %.sroa.6123.0..sroa_idx124 = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !218
  store i64 %.sroa.6123.0.copyload, ptr %.sroa.6123.0..sroa_idx124, align 8, !dbg !218, !noalias !223
  %.sroa.7126.0..sroa_idx127 = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !218
  store ptr %.sroa.7126.0.copyload, ptr %.sroa.7126.0..sroa_idx127, align 8, !dbg !218, !noalias !223
  %.sroa.8129.0..sroa_idx130 = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !218
  store i64 %.sroa.8129.0.copyload, ptr %.sroa.8129.0..sroa_idx130, align 8, !dbg !218, !noalias !223
  store i64 0, ptr %i.b, align 8, !dbg !218, !noalias !219
  %i.az = load i64, ptr %i.av, align 8, !dbg !224, !range !238, !alias.scope !239, !noalias !242, !noundef !14
  %i.ba = icmp eq i64 %i.y, %i.az, !dbg !244
  br i1 %i.ba, label %bb.i, label %bb.r, !dbg !244

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtNtCs74LoFwSioHw_4http6header3map6BucketNtNtBR_5value11HeaderValueEE8grow_oneCsb6T6P0NKlCh_2h2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.av)
          to label %._crit_edge192 unwind label %bb.j, !dbg !245, !noalias !242

._crit_edge192:                                   ; preds = %bb.i
  %.pre193 = load ptr, ptr %i.z, align 8, !dbg !246, !alias.scope !239, !noalias !242
  br label %bb.r, !dbg !245

bb.j:                                             ; preds = %bb.i
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs74LoFwSioHw_4http6header3map6BucketNtNtBG_5value11HeaderValueEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(104) %i.b) #34
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs74LoFwSioHw_4http6header4name10HeaderNameECsbaWXNhtWAp9_11foundations.exit45 unwind label %bb.k, !dbg !255, !noalias !256

bb.k:                                             ; preds = %bb.j
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35, !dbg !257, !noalias !242
  unreachable, !dbg !257

bb.l:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0118.0.copyload) ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0118.0.copyload, i64 32, !dbg !258
  %i.be = load ptr, ptr %i.bd, align 8, !dbg !258, !noalias !262, !nonnull !14, !noundef !14
  invoke void %i.be(ptr noundef %.sroa.7126.0.copyload, ptr noundef %.sroa.5120.0.copyload, i64 noundef %.sroa.6123.0.copyload)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs74LoFwSioHw_4http6header5value11HeaderValueECsbaWXNhtWAp9_11foundations.exit.i unwind label %bb.n, !dbg !258, !noalias !219, !inline_history !156

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs74LoFwSioHw_4http6header5value11HeaderValueECsbaWXNhtWAp9_11foundations.exit.i: ; preds = %bb.l
  br i1 %i.ac, label %bb.q, label %bb.m, !dbg !269

bb.m:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs74LoFwSioHw_4http6header5value11HeaderValueECsbaWXNhtWAp9_11foundations.exit.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ab, i64 32, !dbg !274
  %i.bg = load ptr, ptr %i.bf, align 8, !dbg !274, !noalias !281, !nonnull !14, !noundef !14
  tail call void %i.bg(ptr noundef %.sroa.6117.0.copyload, ptr noundef %i.ah, i64 noundef %i.ag), !dbg !274, !inline_history !294
  br label %bb.q, !dbg !274

bb.n:                                             ; preds = %bb.l
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.ac, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs74LoFwSioHw_4http6header4name10HeaderNameECsbaWXNhtWAp9_11foundations.exit45, label %bb.o, !dbg !295

bb.o:                                             ; preds = %bb.n
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ab, i64 32, !dbg !298
  %i.bj = load ptr, ptr %i.bi, align 8, !dbg !298, !noalias !303, !nonnull !14, !noundef !14
  invoke void %i.bj(ptr noundef %.sroa.6117.0.copyload, ptr noundef %i.ah, i64 noundef %i.ag)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs74LoFwSioHw_4http6header4name10HeaderNameECsbaWXNhtWAp9_11foundations.exit45 unwind label %bb.p, !dbg !298, !noalias !219, !inline_history !316

bb.p:                                             ; preds = %bb.o
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35, !dbg !317, !noalias !219
  unreachable, !dbg !317

bb.q:                                             ; preds = %bb.m, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs74LoFwSioHw_4http6header5value11HeaderValueECsbaWXNhtWAp9_11foundations.exit.i
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !318
  store i8 -1, ptr %i.bl, align 8, !dbg !318
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs74LoFwSioHw_4http6header4name10HeaderNameECsbaWXNhtWAp9_11foundations.exit, !dbg !324

bb.r:                                             ; preds = %._crit_edge192, %bb.h
  %i.bm = phi ptr [ %.pre193, %._crit_edge192 ], [ %i.aa, %bb.h ], !dbg !246
  %i.bn = getelementptr inbounds nuw [104 x i8], ptr %i.bm, i64 %i.y, !dbg !327
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.bn, ptr noundef nonnull readonly align 8 dereferenceable(104) %i.b, i64 104, i1 false), !dbg !333, !noalias !256
  %i.bo = add nuw nsw i64 %i.y, 1, !dbg !337
  store i64 %i.bo, ptr %i.x, align 8, !dbg !337, !alias.scope !239, !noalias !242
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !338, !noalias !219
  %i.bp = load i64, ptr %i.t, align 8, !dbg !339, !noundef !14 ; 2 uses
  %i.bq = icmp ult i64 %.sroa.0.0.ph.mux, %i.bp, !dbg !339
  br i1 %i.bq, label %bb.s, label %bb.t, !dbg !339

bb.s:                                             ; preds = %bb.r
  %i.br = load ptr, ptr %i.s, align 8, !dbg !339, !nonnull !14, !noundef !14
  %i.bs = trunc nuw nsw i64 %i.y to i16, !dbg !340
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %.sroa.0.0.ph.mux, !dbg !339 ; 2 uses
  store i16 %i.bs, ptr %i.bt, align 2, !dbg !339
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 2, !dbg !339
  store i16 %i.n, ptr %i.bu, align 2, !dbg !339
  br label %.thread, !dbg !324

bb.t:                                             ; preds = %bb.r
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.0.ph.mux, i64 noundef %i.bp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #33, !dbg !339
  unreachable

.thread:                                          ; preds = %bb.au, %bb.at, %bb.s
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !343
  store i8 2, ptr %.sroa.3.0..sroa_idx, align 8, !dbg !343
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs74LoFwSioHw_4http6header4name10HeaderNameECsbaWXNhtWAp9_11foundations.exit, !dbg !131

bb.u:                                             ; preds = %bb.f
  %i.bv = icmp eq i16 %i.an, %i.n, !dbg !344
  br i1 %i.bv, label %bb.v, label %_RNvXsy_NtNtCs74LoFwSioHw_4http6header4nameNtB5_10HeaderNameNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.thread, !dbg !347

_RNvXsy_NtNtCs74LoFwSioHw_4http6header4nameNtB5_10HeaderNameNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.thread: ; preds = %bb.y, %bb.w, %.split, %_RNvXsy_NtNtCs74LoFwSioHw_4http6header4nameNtB5_10HeaderNameNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit, %bb.u
  %i.bw = add nuw nsw i64 %.sroa.08.0.ph, 1, !dbg !348
  %i.bx = add i64 %.sroa.0.0.ph.mux, 1, !dbg !349
  br label %.outer228, !dbg !350

bb.v:                                             ; preds = %bb.u
  %i.by = icmp ugt i64 %i.y, %i.al, !dbg !351
  br i1 %i.by, label %bb.w, label %bb.z, !dbg !351

bb.w:                                             ; preds = %bb.v
  %i.bz = getelementptr inbounds nuw [104 x i8], ptr %i.aa, i64 %i.al, !dbg !364 ; 6 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 64, !dbg !365
  %i.cb = load ptr, ptr %i.ca, align 8, !dbg !366, !noundef !14
  %i.cc = icmp ne ptr %i.cb, null, !dbg !366      ; 2 uses
  %i.cd = xor i1 %i.cc, %i.ac, !dbg !375
  br i1 %i.cd, label %bb.x, label %_RNvXsy_NtNtCs74LoFwSioHw_4http6header4nameNtB5_10HeaderNameNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.thread, !dbg !375

bb.x:                                             ; preds = %bb.w
  br i1 %i.cc, label %bb.y, label %_RNvXsy_NtNtCs74LoFwSioHw_4http6header4nameNtB5_10HeaderNameNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit, !dbg !375

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.assume(i1 %not..i.i), !dbg !375
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 80, !dbg !378
  %i.cf = load i64, ptr %i.ce, align 8, !dbg !378, !noundef !14
  %i.cg = icmp eq i64 %i.cf, %i.ag, !dbg !399
  br i1 %i.cg, label %.split, label %_RNvXsy_NtNtCs74LoFwSioHw_4http6header4nameNtB5_10HeaderNameNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.thread, !dbg !399

.split:                                           ; preds = %bb.y
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bz, i64 72, !dbg !408
  %i.ci = load ptr, ptr %i.ch, align 8, !dbg !408, !noundef !14
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr %i.ci, ptr %i.ah, i64 %i.ag), !dbg !409
  %i.cj = icmp eq i32 %bcmp.i.i.i.i, 0, !dbg !409
  br i1 %i.cj, label %bb.aa, label %_RNvXsy_NtNtCs74LoFwSioHw_4http6header4nameNtB5_10HeaderNameNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.thread, !dbg !414

bb.z:                                             ; preds = %bb.v
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.al, i64 noundef %i.y, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #33
          to label %bb.e unwind label %bb.ay, !dbg !351

_RNvXsy_NtNtCs74LoFwSioHw_4http6header4nameNtB5_10HeaderNameNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit: ; preds = %bb.x
  tail call void @llvm.assume(i1 %i.ac), !dbg !375
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bz, i64 72, !dbg !415
  %i.cl = load i8, ptr %i.ck, align 8, !dbg !415, !range !163, !noundef !14
  %i.cm = icmp eq i8 %i.cl, %i.ae, !dbg !422
  br i1 %i.cm, label %bb.aa, label %_RNvXsy_NtNtCs74LoFwSioHw_4http6header4nameNtB5_10HeaderNameNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.thread, !dbg !414

bb.aa:                                            ; preds = %_RNvXsy_NtNtCs74LoFwSioHw_4http6header4nameNtB5_10HeaderNameNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit, %.split
  %i.cn = load <2 x ptr>, ptr %3, align 8, !dbg !425 ; 3 uses
  %.sroa.690.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !425
  %.sroa.690.0.copyload = load i64, ptr %.sroa.690.0..sroa_idx, align 8, !dbg !425 ; 2 uses
  %.sroa.793.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !425
  %.sroa.793.0.copyload = load ptr, ptr %.sroa.793.0..sroa_idx, align 8, !dbg !425 ; 2 uses
  %.sroa.896.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 32, !dbg !425
  %.sroa.896.0.copyload = load i64, ptr %.sroa.896.0..sroa_idx, align 8, !dbg !425
  tail call void @llvm.experimental.noalias.scope.decl(metadata !426), !dbg !429
  %i.co = load i64, ptr %i.bz, align 8, !dbg !430, !range !434, !noalias !435, !noundef !14
  %i.cp = trunc nuw i64 %i.co to i1, !dbg !438
  br i1 %i.cp, label %bb.ac, label %bb.ad, !dbg !438

bb.ab:                                            ; preds = %.invoke.i, %bb.ac
  %i.cq = landingpad { ptr, i32 }
          cleanup
  %i.cr = extractelement <2 x ptr> %i.cn, i64 0, !dbg !439 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cr) ]
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 32, !dbg !439
  %i.ct = load ptr, ptr %i.cs, align 8, !dbg !439, !noalias !443, !nonnull !14, !noundef !14
  %i.cu = extractelement <2 x ptr> %i.cn, i64 1, !dbg !439
  invoke void %i.ct(ptr noundef %.sroa.793.0.copyload, ptr noundef %i.cu, i64 noundef %.sroa.690.0.copyload)
          to label %.thread145 unwind label %bb.ae, !dbg !439, !noalias !450, !inline_history !156

bb.ac:                                            ; preds = %bb.aa
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bz, i64 8, !dbg !451
  %i.cw = load i64, ptr %i.cv, align 8, !dbg !451, !noalias !435, !noundef !14
  invoke void @_RNvMs0_NtNtCs74LoFwSioHw_4http6header3mapNtB5_9HeaderMap23remove_all_extra_valuesCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1, i64 noundef %i.cw)
          to label %._crit_edge.i unwind label %bb.ab, !dbg !452, !noalias !450

._crit_edge.i:                                    ; preds = %bb.ac
  %.pre.i = load i64, ptr %i.x, align 8, !dbg !453, !alias.scope !426, !noalias !450
  br label %bb.ad, !dbg !452

bb.ad:                                            ; preds = %._crit_edge.i, %bb.aa
  %i.cx = phi i64 [ %.pre.i, %._crit_edge.i ], [ %i.y, %bb.aa ], !dbg !453 ; 2 uses
  %i.cy = icmp ugt i64 %i.cx, %i.al, !dbg !462
  br i1 %i.cy, label %bb.af, label %.invoke.i, !dbg !462

.invoke.i:                                        ; preds = %bb.ad
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef range(i64 0, 65536) %i.al, i64 noundef %i.cx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #33
          to label %.cont.i unwind label %bb.ab, !dbg !468, !noalias !450

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.ae:                                            ; preds = %bb.ab
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35, !dbg !469, !noalias !450
  unreachable, !dbg !469

bb.af:                                            ; preds = %bb.ad
  %i.da = load ptr, ptr %i.z, align 8, !dbg !470, !alias.scope !426, !noalias !450, !nonnull !14, !noundef !14
  %i.db = getelementptr inbounds nuw [104 x i8], ptr %i.da, i64 %i.al, !dbg !481 ; 5 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 24, !dbg !482 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.dc, i64 32, i1 false), !dbg !482
  %.sroa.483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.db, i64 56, !dbg !482 ; 2 uses
  %.sroa.483.0.copyload = load i8, ptr %.sroa.483.0..sroa_idx, align 8, !dbg !482, !noalias !488
  %.sroa.584.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.db, i64 57, !dbg !482
  %.sroa.5.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %0, i64 33, !dbg !343
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.0..sroa_idx20, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.584.0..sroa_idx, i64 7, i1 false), !dbg !482
  store <2 x ptr> %i.cn, ptr %i.dc, align 8, !dbg !489, !noalias !491
  %.sroa.690.0..sroa_idx91 = getelementptr inbounds nuw i8, ptr %i.db, i64 40, !dbg !489
  store i64 %.sroa.690.0.copyload, ptr %.sroa.690.0..sroa_idx91, align 8, !dbg !489, !noalias !491
  %.sroa.793.0..sroa_idx94 = getelementptr inbounds nuw i8, ptr %i.db, i64 48, !dbg !489
  store ptr %.sroa.793.0.copyload, ptr %.sroa.793.0..sroa_idx94, align 8, !dbg !489, !noalias !491
  store i64 %.sroa.896.0.copyload, ptr %.sroa.483.0..sroa_idx, align 8, !dbg !489, !noalias !491
  %.sroa.3.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !343
  store i8 %.sroa.483.0.copyload, ptr %.sroa.3.0..sroa_idx17, align 8, !dbg !343
  tail call void @llvm.experimental.noalias.scope.decl(metadata !492), !dbg !131
  tail call void @llvm.experimental.noalias.scope.decl(metadata !495), !dbg !498
  br i1 %i.ac, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs74LoFwSioHw_4http6header4name10HeaderNameECsbaWXNhtWAp9_11foundations.exit, label %bb.ag, !dbg !500

bb.ag:                                            ; preds = %bb.af
  tail call void @llvm.experimental.noalias.scope.decl(metadata !502), !dbg !500
  tail call void @llvm.experimental.noalias.scope.decl(metadata !505), !dbg !508
  tail call void @llvm.experimental.noalias.scope.decl(metadata !510), !dbg !513
  tail call void @llvm.experimental.noalias.scope.decl(metadata !515), !dbg !518
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !520
  %i.de = load ptr, ptr %i.dd, align 8, !dbg !527, !alias.scope !529, !noundef !14
  %i.df = getelementptr inbounds nuw i8, ptr %i.ab, i64 32, !dbg !530
  %i.dg = load ptr, ptr %i.df, align 8, !dbg !530, !noalias !529, !nonnull !14, !noundef !14
  tail call void %i.dg(ptr noundef %i.de, ptr noundef %i.ah, i64 noundef %i.ag), !dbg !530, !noalias !529, !inline_history !531
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs74LoFwSioHw_4http6header4name10HeaderNameECsbaWXNhtWAp9_11foundations.exit, !dbg !500

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs74LoFwSioHw_4http6header4name10HeaderNameECsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.ax, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs74LoFwSioHw_4http6header5value11HeaderValueECsbaWXNhtWAp9_11foundations.exit, %bb.ag, %bb.af, %bb.q, %bb.av, %.thread
  ret void, !dbg !532

bb.ah:                                            ; preds = %bb.f
  %i.dh = icmp samesign ugt i64 %.sroa.08.0.ph, 511, !dbg !533
  %i.di = load i64, ptr %1, align 8, !dbg !533, !range !534
  %i.dj = icmp ne i64 %i.di, 2, !dbg !533
  %.sroa.013.0 = select i1 %i.dh, i1 %i.dj, i1 false, !dbg !533
  %.sroa.668.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !535
  %.sroa.668.0.copyload = load ptr, ptr %.sroa.668.0..sroa_idx, align 8, !dbg !535 ; 3 uses
  %.sroa.069.0.copyload = load ptr, ptr %3, align 8, !dbg !537 ; 3 uses
  %.sroa.571.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !537
  %.sroa.571.0.copyload = load ptr, ptr %.sroa.571.0..sroa_idx, align 8, !dbg !537 ; 2 uses
  %.sroa.674.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !537
  %.sroa.674.0.copyload = load i64, ptr %.sroa.674.0..sroa_idx, align 8, !dbg !537 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !537
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !537 ; 2 uses
  %.sroa.879.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 32, !dbg !537
  %.sroa.879.0.copyload = load i64, ptr %.sroa.879.0..sroa_idx, align 8, !dbg !537
  %i.dk = icmp ult i64 %i.y, 88686269585142076, !dbg !538
  tail call void @llvm.assume(i1 %i.dk), !dbg !544
  tail call void @llvm.experimental.noalias.scope.decl(metadata !545), !dbg !548
  %i.dl = icmp samesign ugt i64 %i.y, 32767, !dbg !550
  br i1 %i.dl, label %bb.am, label %bb.ai, !dbg !550

bb.ai:                                            ; preds = %bb.ah
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !552 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !554, !noalias !555
  %i.dn = getelementptr inbounds nuw i8, ptr %i.a, i64 96, !dbg !554
  store i16 %i.n, ptr %i.dn, align 8, !dbg !554, !noalias !555
  %i.do = getelementptr inbounds nuw i8, ptr %i.a, i64 64, !dbg !554
  store ptr %i.ab, ptr %i.do, align 8, !dbg !554, !noalias !558
  %.sroa.6.0..sroa_idx57 = getelementptr inbounds nuw i8, ptr %i.a, i64 72, !dbg !554
  store ptr %i.ah, ptr %.sroa.6.0..sroa_idx57, align 8, !dbg !554, !noalias !558
  %.sroa.8.0..sroa_idx60 = getelementptr inbounds nuw i8, ptr %i.a, i64 80, !dbg !554
  store i64 %i.ag, ptr %.sroa.8.0..sroa_idx60, align 8, !dbg !554, !noalias !558
  %.sroa.10.0..sroa_idx63 = getelementptr inbounds nuw i8, ptr %i.a, i64 88, !dbg !554
  store ptr %.sroa.668.0.copyload, ptr %.sroa.10.0..sroa_idx63, align 8, !dbg !554, !noalias !558
  %i.dp = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !554
  store ptr %.sroa.069.0.copyload, ptr %i.dp, align 8, !dbg !554, !noalias !559
  %.sroa.571.0..sroa_idx72 = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !554
  store ptr %.sroa.571.0.copyload, ptr %.sroa.571.0..sroa_idx72, align 8, !dbg !554, !noalias !559
  %.sroa.674.0..sroa_idx75 = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !554
  store i64 %.sroa.674.0.copyload, ptr %.sroa.674.0..sroa_idx75, align 8, !dbg !554, !noalias !559
  %.sroa.7.0..sroa_idx77 = getelementptr inbounds nuw i8, ptr %i.a, i64 48, !dbg !554
  store ptr %.sroa.7.0.copyload, ptr %.sroa.7.0..sroa_idx77, align 8, !dbg !554, !noalias !559
  %.sroa.879.0..sroa_idx80 = getelementptr inbounds nuw i8, ptr %i.a, i64 56, !dbg !554
  store i64 %.sroa.879.0.copyload, ptr %.sroa.879.0..sroa_idx80, align 8, !dbg !554, !noalias !559
  store i64 0, ptr %i.a, align 8, !dbg !554, !noalias !555
  %i.dq = load i64, ptr %i.dm, align 8, !dbg !560, !range !238, !alias.scope !565, !noalias !568, !noundef !14
  %i.dr = icmp eq i64 %i.y, %i.dq, !dbg !570
  br i1 %i.dr, label %bb.aj, label %bb.ar, !dbg !570

bb.aj:                                            ; preds = %bb.ai
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtNtCs74LoFwSioHw_4http6header3map6BucketNtNtBR_5value11HeaderValueEE8grow_oneCsb6T6P0NKlCh_2h2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dm)
          to label %._crit_edge unwind label %bb.ak, !dbg !571, !noalias !568

._crit_edge:                                      ; preds = %bb.aj
  %.pre = load ptr, ptr %i.z, align 8, !dbg !572, !alias.scope !565, !noalias !568
  br label %bb.ar, !dbg !571

bb.ak:                                            ; preds = %bb.aj
  %i.ds = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs74LoFwSioHw_4http6header3map6BucketNtNtBG_5value11HeaderValueEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(104) %i.a) #34
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs74LoFwSioHw_4http6header4name10HeaderNameECsbaWXNhtWAp9_11foundations.exit45 unwind label %bb.al, !dbg !577, !noalias !578

bb.al:                                            ; preds = %bb.ak
  %i.dt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35, !dbg !579, !noalias !568
  unreachable, !dbg !579

bb.am:                                            ; preds = %bb.ah
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.069.0.copyload) ]
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.069.0.copyload, i64 32, !dbg !580
  %i.dv = load ptr, ptr %i.du, align 8, !dbg !580, !noalias !584, !nonnull !14, !noundef !14
  invoke void %i.dv(ptr noundef %.sroa.7.0.copyload, ptr noundef %.sroa.571.0.copyload, i64 noundef %.sroa.674.0.copyload)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs74LoFwSioHw_4http6header5value11HeaderValueECsbaWXNhtWAp9_11foundations.exit.i48 unwind label %bb.ao, !dbg !580, !noalias !555, !inline_history !156

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs74LoFwSioHw_4http6header5value11HeaderValueECsbaWXNhtWAp9_11foundations.exit.i48: ; preds = %bb.am
  br i1 %i.ac, label %bb.av, label %bb.an, !dbg !591

bb.an:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs74LoFwSioHw_4http6header5value11HeaderValueECsbaWXNhtWAp9_11foundations.exit.i48
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ab, i64 32, !dbg !594
  %i.dx = load ptr, ptr %i.dw, align 8, !dbg !594, !noalias !599, !nonnull !14, !noundef !14
  tail call void %i.dx(ptr noundef %.sroa.668.0.copyload, ptr noundef %i.ah, i64 noundef %i.ag), !dbg !594, !inline_history !294
  br label %bb.av, !dbg !594

bb.ao:                                            ; preds = %bb.am
  %i.dy = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_RINvMs1_NtNtNtCsaCYLheajBls_5hyper6server4conn5http1NtB6_7Builder16serve_connectionINtNtNtCsgrxNvLvgM5Z_10hyper_util2rt5tokio7TokioIoNtNtNtCsbaWXNhtWAp9_11foundations9telemetry6server15TelemetryStreamENtNtB29_6router6RouterEB2d_:bb.a

bb.as:                                            ; preds = %bb.ar
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #33
          to label %.noexc.i40 unwind label %.body.i39, !dbg !1154, !noalias !1132

.noexc.i40:                                       ; preds = %bb.as
  unreachable, !dbg !1154

.body.i39:                                        ; preds = %bb.as
  %i.db = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaCYLheajBls_5hyper5proto2h18dispatch15SenderDropGuardECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(40) %i.a) #34
          to label %bb.au unwind label %bb.at, !dbg !1155, !noalias !1132

bb.at:                                            ; preds = %bb.av, %bb.au, %.body.i39
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35, !dbg !1156, !noalias !1132
  unreachable, !dbg !1156

bb.au:                                            ; preds = %.body.i39
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaCYLheajBls_5hyper5proto2h18dispatch6ServerNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry6server6router6RouterNtNtNtBK_4body8incoming8IncomingEEB1B_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #34
          to label %bb.av unwind label %bb.at, !dbg !1155, !noalias !1132

bb.av:                                            ; preds = %bb.au
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaCYLheajBls_5hyper5proto2h14conn4ConnINtNtNtCsgrxNvLvgM5Z_10hyper_util2rt5tokio7TokioIoNtNtNtCsbaWXNhtWAp9_11foundations9telemetry6server15TelemetryStreamENtNtCs8QTyv2gZm5j_5bytes5bytes5BytesNtNtBG_4role6ServerEEB2h_(ptr noalias nofree noundef align 8 dereferenceable(576) %i.c) #34
          to label %.body30.thread78 unwind label %bb.at, !dbg !1155, !noalias !1132

bb.aw:                                            ; preds = %bb.ar
  store ptr null, ptr %i.cz, align 8, !dbg !1157, !noalias !1132
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(576) %.sroa.050, ptr noundef nonnull align 8 dereferenceable(576) %i.j, i64 576, i1 false), !dbg !1159, !alias.scope !1135, !noalias !1160
  %.sroa.050.576..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.050, i64 576, !dbg !1159
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.050.576..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false), !dbg !1159, !noalias !1161
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1155, !noalias !1132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !1155, !noalias !1132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !1155, !noalias !1132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !1162
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(616) %0, ptr noundef nonnull align 8 dereferenceable(616) %.sroa.050, i64 616, i1 false), !dbg !1163
  %.sroa.551.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 616, !dbg !1163
  store ptr %i.cv, ptr %.sroa.551.0..sroa_idx, align 8, !dbg !1163
  %.sroa.652.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 624, !dbg !1163
  store ptr %i.cs, ptr %.sroa.652.0..sroa_idx, align 8, !dbg !1163
  %.sroa.7.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %0, i64 632, !dbg !1163
  store ptr %i.ct, ptr %.sroa.7.0..sroa_idx53, align 8, !dbg !1163
  %.sroa.8.0..sroa_idx54 = getelementptr inbounds nuw i8, ptr %0, i64 640, !dbg !1163
  store ptr %i.cz, ptr %.sroa.8.0..sroa_idx54, align 8, !dbg !1163
  %.sroa.9.0..sroa_idx55 = getelementptr inbounds nuw i8, ptr %0, i64 648, !dbg !1163
  store i8 0, ptr %.sroa.9.0..sroa_idx55, align 8, !dbg !1163
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.050), !dbg !1165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !887
  ret void, !dbg !1166

bb.ax:                                            ; preds = %bb.p, %bb.q, %.body.i
  %.sroa.07.1.lpad-body.ph = phi i1 [ true, %bb.q ], [ true, %bb.p ], [ false, %.body.i ]
  %eh.lpad-body31.ph = phi { ptr, i32 } [ %i.bd, %bb.q ], [ %i.bb, %bb.p ], [ %i.cx, %.body.i ] ; 2 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaCYLheajBls_5hyper5proto2h14conn4ConnINtNtNtCsgrxNvLvgM5Z_10hyper_util2rt5tokio7TokioIoNtNtNtCsbaWXNhtWAp9_11foundations9telemetry6server15TelemetryStreamENtNtCs8QTyv2gZm5j_5bytes5bytes5BytesNtNtBG_4role6ServerEEB2h_(ptr noalias nofree noundef align 8 dereferenceable(576) %i.k) #34
          to label %.body30 unwind label %bb.ay, !dbg !887

bb.ay:                                            ; preds = %.thread, %bb.ax
  %i.dd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35, !dbg !1167
  unreachable, !dbg !1167

.body30.thread78:                                 ; preds = %bb.av, %.thread, %.body30
  %.pn71 = phi { ptr, i32 } [ %.pn72, %.thread ], [ %eh.lpad-body31.ph, %.body30 ], [ %i.db, %bb.av ]
  resume { ptr, i32 } %.pn71, !dbg !1167

.thread:                                          ; preds = %bb.h, %bb.i, %.body30
  %.pn72 = phi { ptr, i32 } [ %eh.lpad-body31.ph, %.body30 ], [ %i.ag, %bb.h ], [ %i.ai, %bb.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry6server6router6RouterEBJ_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.l) #34
          to label %.body30.thread78 unwind label %bb.ay, !dbg !887
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs4_NtCs74LoFwSioHw_4http8responseNtB6_7Builder4bodyINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtCs3oUPovFnLWP_4core5error5ErrorNtNtB3b_6marker4SendNtB3I_4SyncEL_EEECsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) initializes((0, 10)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(112) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1168 {
bb.a:
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !dbg !1172 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !1172
  %.sroa.5.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !1172 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 9, !dbg !1172
  %.sroa.6.0.copyload = load i8, ptr %.sroa.6.0..sroa_idx, align 1, !dbg !1172 ; 2 uses
  %i.a = icmp eq i64 %.sroa.0.0.copyload, -1, !dbg !1173
  br i1 %i.a, label %bb.b, label %bb.h, !dbg !1177

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1178
  store i8 %.sroa.5.0.copyload, ptr %i.b, align 8, !dbg !1178
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9, !dbg !1178
  store i8 %.sroa.6.0.copyload, ptr %i.c, align 1, !dbg !1178
  store i64 -1, ptr %0, align 8, !dbg !1178
  %i.d = load ptr, ptr %3, align 8, !dbg !1180, !invariant.load !14 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null, !dbg !1180
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c, !dbg !1180

bb.c:                                             ; preds = %bb.b
  invoke void %i.d(ptr noundef nonnull %2)
          to label %bb.d unwind label %bb.f, !dbg !1180

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !1190
  %i.f = load i64, ptr %i.e, align 8, !dbg !1190, !range !238, !invariant.load !14 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0, !dbg !1203
  br i1 %i.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvMs4_NtCs74LoFwSioHw_4http8responseNtBK_7Builder4bodyINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB46_4SyncEL_EEE0ECsbaWXNhtWAp9_11foundations.exit, label %bb.e, !dbg !1203

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !1190
  %i.i = load i64, ptr %i.h, align 8, !dbg !1205, !range !1213, !invariant.load !14
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %2, i64 noundef range(i64 1, 0) %i.f, i64 noundef range(i64 1, 536870913) %i.i) #32, !dbg !1214
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvMs4_NtCs74LoFwSioHw_4http8responseNtBK_7Builder4bodyINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB46_4SyncEL_EEE0ECsbaWXNhtWAp9_11foundations.exit, !dbg !1223

bb.f:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !1224
  %i.l = load i64, ptr %i.k, align 8, !dbg !1224, !range !238, !invariant.load !14 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0, !dbg !1228
  br i1 %i.m, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtCshXnn1MjyudA_9http_body4Bodyp4DataNtNtCs8QTyv2gZm5j_5bytes5bytes5Bytesp5ErrorIBy_DNtNtCs3oUPovFnLWP_4core5error5ErrorNtNtB29_6marker4SendNtB2G_4SyncEL_EB2E_B2Y_EL_ENtNtNtB29_3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations.exit4.i.i.i.i, label %bb.g, !dbg !1228

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !1224
  %i.o = load i64, ptr %i.n, align 8, !dbg !1229, !range !1213, !invariant.load !14
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %2, i64 noundef range(i64 1, 0) %i.l, i64 noundef range(i64 1, 536870913) %i.o) #32, !dbg !1232
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtCshXnn1MjyudA_9http_body4Bodyp4DataNtNtCs8QTyv2gZm5j_5bytes5bytes5Bytesp5ErrorIBy_DNtNtCs3oUPovFnLWP_4core5error5ErrorNtNtB29_6marker4SendNtB2G_4SyncEL_EB2E_B2Y_EL_ENtNtNtB29_3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations.exit4.i.i.i.i, !dbg !1237

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtCshXnn1MjyudA_9http_body4Bodyp4DataNtNtCs8QTyv2gZm5j_5bytes5bytes5Bytesp5ErrorIBy_DNtNtCs3oUPovFnLWP_4core5error5ErrorNtNtB29_6marker4SendNtB2G_4SyncEL_EB2E_B2Y_EL_ENtNtNtB29_3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations.exit4.i.i.i.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.j, !dbg !1180

bb.h:                                             ; preds = %bb.a
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 10, !dbg !1172
  %.sroa.613.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10, !dbg !1238
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(102) %.sroa.613.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(102) %.sroa.7.0..sroa_idx, i64 102, i1 false), !dbg !1240
  store i64 %.sroa.0.0.copyload, ptr %0, align 8, !dbg !1238
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1238
  store i8 %.sroa.5.0.copyload, ptr %.sroa.411.0..sroa_idx, align 8, !dbg !1238
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9, !dbg !1238
  store i8 %.sroa.6.0.copyload, ptr %.sroa.512.0..sroa_idx, align 1, !dbg !1238
  %.sroa.714.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !1238
  store ptr %2, ptr %.sroa.714.0..sroa_idx, align 8, !dbg !1238
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !1238
  store ptr %3, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !1238
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvMs4_NtCs74LoFwSioHw_4http8responseNtBK_7Builder4bodyINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB46_4SyncEL_EEE0ECsbaWXNhtWAp9_11foundations.exit, !dbg !1241

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvMs4_NtCs74LoFwSioHw_4http8responseNtBK_7Builder4bodyINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB46_4SyncEL_EEE0ECsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.e, %bb.d, %bb.h
  ret void, !dbg !1242
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_RINvMs4_NtCs74LoFwSioHw_4http8responseNtB6_7Builder6statusNtNtB8_6status10StatusCodeECsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) initializes((0, 112)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(112) %1, i16 noundef range(i16 1, 0) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !1243 {
bb.a:
  %.sroa.5.sroa.0.i = alloca [96 x i8], align 8   ; 5 uses
  %.sroa.5.sroa.6.i = alloca [6 x i8], align 2    ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1244), !dbg !1247
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1248), !dbg !1247
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.sroa.0.i), !dbg !1250
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.sroa.6.i), !dbg !1250
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !dbg !1250, !alias.scope !1248, !noalias !1244 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !1250 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.5.sroa.0.i, ptr noundef nonnull readonly align 8 dereferenceable(96) %.sroa.5.0..sroa_idx.i, i64 96, i1 false), !dbg !1250, !noalias !1244
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 104, !dbg !1250
  %.sroa.5.sroa.4.0.copyload.i = load i16, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i, align 8, !dbg !1250, !alias.scope !1248, !noalias !1244
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 106, !dbg !1250 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.5.sroa.6.i, ptr noundef nonnull readonly align 2 dereferenceable(6) %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i, i64 6, i1 false), !dbg !1250, !noalias !1244
  %i.a = icmp eq i64 %.sroa.0.0.copyload.i, -1, !dbg !1253
  br i1 %i.a, label %_RINvMs4_NtCs74LoFwSioHw_4http8responseNtB6_7Builder8and_thenNCINvB2_6statusNtNtB8_6status10StatusCodeE0ECsbaWXNhtWAp9_11foundations.exit, label %bb.b, !dbg !1256

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.5.sroa.0.i, ptr noundef nonnull readonly align 8 dereferenceable(96) %.sroa.5.0..sroa_idx.i, i64 96, i1 false), !dbg !1257, !noalias !1244
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.5.sroa.6.i, ptr noundef nonnull readonly align 2 dereferenceable(6) %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i, i64 6, i1 false), !dbg !1257, !noalias !1244
  br label %_RINvMs4_NtCs74LoFwSioHw_4http8responseNtB6_7Builder8and_thenNCINvB2_6statusNtNtB8_6status10StatusCodeE0ECsbaWXNhtWAp9_11foundations.exit, !dbg !1258

_RINvMs4_NtCs74LoFwSioHw_4http8responseNtB6_7Builder8and_thenNCINvB2_6statusNtNtB8_6status10StatusCodeE0ECsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.a, %bb.b
  %.sroa.5.sroa.4.0.i = phi i16 [ %.sroa.5.sroa.4.0.copyload.i, %bb.a ], [ %2, %bb.b ], !dbg !1259
  store i64 %.sroa.0.0.copyload.i, ptr %0, align 8, !dbg !1260, !alias.scope !1244, !noalias !1248
  %.sroa.5.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1260
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.5.0..sroa_idx5.i, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.5.sroa.0.i, i64 96, i1 false), !dbg !1260, !noalias !1248
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx5.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 104, !dbg !1260
  store i16 %.sroa.5.sroa.4.0.i, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx5.sroa_idx.i, align 8, !dbg !1260, !alias.scope !1244, !noalias !1248
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx5.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 106, !dbg !1260
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx5.sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.5.sroa.6.i, i64 6, i1 false), !dbg !1260, !noalias !1248
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.0.i), !dbg !1261
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.6.i), !dbg !1261
  ret void, !dbg !1262
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs4_NtCs74LoFwSioHw_4http8responseNtB6_7Builder8and_thenNCINvB2_6headerNtNtNtB8_6header4name10HeaderNameReE0ECsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(112) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1263 {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 15 uses
  %i.b = alloca [104 x i8], align 8               ; 15 uses
  %i.c = alloca [32 x i8], align 8                ; 8 uses
  %i.d = alloca [40 x i8], align 8                ; 10 uses
  %i.e = alloca [112 x i8], align 8               ; 27 uses
  %.sroa.9 = alloca [103 x i8], align 1           ; 3 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !dbg !1264 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !1264
  %.sroa.7.0.copyload = load i8, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !1264 ; 3 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 9, !dbg !1264 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(103) %.sroa.9, ptr noundef nonnull align 1 dereferenceable(103) %.sroa.9.0..sroa_idx, i64 103, i1 false), !dbg !1264
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !1265
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !1265 ; 17 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !1265
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !1265 ; 13 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32, !dbg !1265
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !1265 ; 13 uses
  %.sroa.720.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 40, !dbg !1265
  %.sroa.720.0.copyload = load ptr, ptr %.sroa.720.0..sroa_idx, align 8, !dbg !1265 ; 11 uses
  %i.f = icmp eq i64 %.sroa.0.0.copyload, -1, !dbg !1266
  br i1 %i.f, label %bb.b, label %bb.d, !dbg !1269

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq ptr %.sroa.4.0.copyload, null, !dbg !1270
  br i1 %i.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvMs4_NtCs74LoFwSioHw_4http8responseNtBK_7Builder6headerNtNtNtBM_6header4name10HeaderNameReE0ECsbaWXNhtWAp9_11foundations.exit, label %bb.c, !dbg !1270

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 32, !dbg !1275
  %i.i = load ptr, ptr %i.h, align 8, !dbg !1275, !noalias !1280, !nonnull !14, !noundef !14
  tail call void %i.i(ptr noundef %.sroa.720.0.copyload, ptr noundef %.sroa.5.0.copyload, i64 noundef %.sroa.6.0.copyload), !dbg !1275, !noalias !1280, !inline_history !1295
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvMs4_NtCs74LoFwSioHw_4http8responseNtBK_7Builder6headerNtNtNtBM_6header4name10HeaderNameReE0ECsbaWXNhtWAp9_11foundations.exit, !dbg !1270

bb.d:                                             ; preds = %bb.a
  %.sroa.013.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !1265
  %.sroa.013.sroa.4.0.copyload = load i64, ptr %.sroa.013.sroa.4.0..sroa_idx, align 8, !dbg !1265
  %.sroa.013.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !1265, !nonnull !14, !noundef !14
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 9, !dbg !1296 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !1296
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(103) %.sroa.525.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(103) %.sroa.9.0..sroa_idx, i64 103, i1 false), !dbg !1298
  store i64 %.sroa.0.0.copyload, ptr %i.e, align 8, !dbg !1296
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !1296 ; 2 uses
  store i8 %.sroa.7.0.copyload, ptr %.sroa.424.0..sroa_idx, align 8, !dbg !1296
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1299), !dbg !1296
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1302), !dbg !1296
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !1304, !noalias !1310
  invoke void @_RINvMNtNtCs74LoFwSioHw_4http6header5valueNtB3_11HeaderValue16try_from_genericReNCNvB2_8from_str0ECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.013.sroa.0.0.copyload, i64 noundef %.sroa.013.sroa.4.0.copyload)
          to label %_RNvXs3_NtCs3oUPovFnLWP_4core7convertReINtB5_7TryIntoNtNtNtCs74LoFwSioHw_4http6header5value11HeaderValueE8try_intoCsbaWXNhtWAp9_11foundations.exit.i unwind label %bb.bp, !dbg !1312, !noalias !1310

.body.thread.i:                                   ; preds = %bb.bq, %bb.bp, %bb.bf, %.thread.i.i, %bb.aw, %bb.av, %bb.as, %bb.s, %bb.r, %bb.o, %.body.thread103.i, %bb.e
  %.pn.i = phi { ptr, i32 } [ %i.j, %bb.e ], [ %i.bc, %bb.o ], [ %lpad.thr_comm.i, %.body.thread103.i ], [ %i.bg, %bb.r ], [ %.pn128.i.i, %.thread.i.i ], [ %.pn128.i.i, %bb.bf ], [ %i.el, %bb.av ], [ %i.el, %bb.aw ], [ %i.eh, %bb.as ], [ %i.bg, %bb.s ], [ %lpad.thr_comm.split-lp.i, %bb.bq ], [ %lpad.thr_comm.split-lp.i, %bb.bp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs74LoFwSioHw_4http8response5PartsECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.e) #34
          to label %common.resume.i unwind label %bb.br, !dbg !1334, !noalias !1335

bb.e:                                             ; preds = %bb.bo
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

.body.thread103.i:                                ; preds = %.invoke.i, %bb.ao, %bb.w
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i, !dbg !1334

_RNvXs3_NtCs3oUPovFnLWP_4core7convertReINtB5_7TryIntoNtNtNtCs74LoFwSioHw_4http6header5value11HeaderValueE8try_intoCsbaWXNhtWAp9_11foundations.exit.i: ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 32, !dbg !1336
  %i.l = load i8, ptr %i.k, align 8, !dbg !1336, !range !1003, !noalias !1310, !noundef !14 ; 4 uses
  %i.m = icmp eq i8 %i.l, 2, !dbg !1336
  br i1 %i.m, label %bb.bn, label %bb.f, !dbg !1339

bb.f:                                             ; preds = %_RNvXs3_NtCs3oUPovFnLWP_4core7convertReINtB5_7TryIntoNtNtNtCs74LoFwSioHw_4http6header5value11HeaderValueE8try_intoCsbaWXNhtWAp9_11foundations.exit.i
  %.sroa.031.0.copyload.i = load i64, ptr %i.d, align 8, !dbg !1340, !noalias !1310 ; 3 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !1340
  %.sroa.5.sroa.4.0.copyload.i = load ptr, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i, align 8, !dbg !1340, !noalias !1310 ; 10 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !1340
  %.sroa.5.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i, align 8, !dbg !1340, !noalias !1310 ; 10 uses
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24, !dbg !1340
  %.sroa.5.sroa.6.0.copyload.i = load ptr, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i, align 8, !dbg !1340, !noalias !1310 ; 10 uses
  %.sroa.732.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 33, !dbg !1340
  %.sroa.732.sroa.0.0.copyload.i = load i56, ptr %.sroa.732.0..sroa_idx.i, align 1, !dbg !1340, !noalias !1310 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !1341, !noalias !1310
  %i.n = inttoptr i64 %.sroa.031.0.copyload.i to ptr, !dbg !1304 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !1342, !noalias !1310
  store ptr %.sroa.4.0.copyload, ptr %i.c, align 8, !dbg !1342, !noalias !1310
  %.sroa.7.0..sroa_idx50.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !1342
  store ptr %.sroa.5.0.copyload, ptr %.sroa.7.0..sroa_idx50.i, align 8, !dbg !1342, !noalias !1310
  %.sroa.953.0..sroa_idx54.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !1342
  store i64 %.sroa.6.0.copyload, ptr %.sroa.953.0..sroa_idx54.i, align 8, !dbg !1342, !noalias !1310
  %.sroa.11.0..sroa_idx57.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !1342
  store ptr %.sroa.720.0.copyload, ptr %.sroa.11.0..sroa_idx57.i, align 8, !dbg !1342, !noalias !1310
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1344), !dbg !1347
  %i.o = ptrtoint ptr %.sroa.5.0.copyload to i64, !dbg !1354
  %i.p = trunc i64 %i.o to i8, !dbg !1354
  %i.q = invoke noundef zeroext i1 @_RNvMs0_NtNtCs74LoFwSioHw_4http6header3mapNtB5_9HeaderMap15try_reserve_oneCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.e)
          to label %bb.g unwind label %bb.bd, !dbg !1354, !noalias !1357

.body.i.i:                                        ; preds = %bb.an
  %lpad.thr_comm.split-lp136.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i, !dbg !1360

bb.g:                                             ; preds = %bb.f
  br i1 %i.q, label %bb.h, label %bb.i, !dbg !1361

bb.h:                                             ; preds = %bb.g
  %i.r = icmp ne i64 %.sroa.031.0.copyload.i, 0
  call void @llvm.assume(i1 %i.r)
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 32, !dbg !1364
  %i.t = load ptr, ptr %i.s, align 8, !dbg !1364, !noalias !1368, !nonnull !14, !noundef !14
  invoke void %i.t(ptr noundef %.sroa.5.sroa.6.0.copyload.i, ptr noundef %.sroa.5.sroa.4.0.copyload.i, i64 noundef %.sroa.5.sroa.5.0.copyload.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs74LoFwSioHw_4http6header5value11HeaderValueECsbaWXNhtWAp9_11foundations.exit.i.i unwind label %bb.bc, !dbg !1364, !noalias !1357, !inline_history !156

bb.i:                                             ; preds = %bb.g
  %i.u = call fastcc noundef i16 @_RINvNtNtCs74LoFwSioHw_4http6header3map15hash_elem_usingNtNtB4_4name10HeaderNameECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.c), !dbg !1375, !noalias !1376 ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 88, !dbg !1377
  %i.w = load i16, ptr %i.v, align 8, !dbg !1377, !alias.scope !1379, !noalias !1357, !noundef !14 ; 3 uses
  %i.x = and i16 %i.w, %i.u, !dbg !1380
  %i.y = zext nneg i16 %i.x to i64, !dbg !1380
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 72 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 80 ; 3 uses
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !1379, !noalias !1357, !noundef !14 ; 2 uses
  %i.ac = load ptr, ptr %i.z, align 8, !alias.scope !1379, !noalias !1357, !nonnull !14
  %i.ad = zext i16 %i.w to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 3 uses
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !1379, !noalias !1357 ; 14 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !1379, !noalias !1357, !nonnull !14 ; 3 uses
  %i.ai = icmp eq ptr %.sroa.4.0.copyload, null   ; 8 uses
  %not..i.i.i.i = xor i1 %i.ai, true
  %.not = icmp eq i64 %i.ab, 0
  br label %.outer81, !dbg !1383

.outer81:                                         ; preds = %_RNvXsy_NtNtCs74LoFwSioHw_4http6header4nameNtB5_10HeaderNameNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.thread.i.i, %bb.i
  %.sroa.09.0.i.i.ph = phi i64 [ %i.bu, %_RNvXsy_NtNtCs74LoFwSioHw_4http6header4nameNtB5_10HeaderNameNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.thread.i.i ], [ 0, %bb.i ] ; 3 uses
  %.sroa.01.0.i.i.ph = phi i64 [ %i.bv, %_RNvXsy_NtNtCs74LoFwSioHw_4http6header4nameNtB5_10HeaderNameNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.thread.i.i ], [ %i.y, %bb.i ] ; 2 uses
  %i.aj = icmp ult i64 %.sroa.01.0.i.i.ph, %i.ab, !dbg !1387 ; 2 uses
  %.not.not = xor i1 %.not, true, !dbg !1387
  %brmerge = or i1 %i.aj, %.not.not, !dbg !1387
  %.sroa.01.0.i.i.ph.mux = select i1 %i.aj, i64 %.sroa.01.0.i.i.ph, i64 0, !dbg !1387 ; 7 uses
  br i1 %brmerge, label %.loopexit, label %infloop, !dbg !1387

.loopexit:                                        ; preds = %.outer81
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %.sroa.01.0.i.i.ph.mux, !dbg !1388 ; 2 uses
  %i.al = load i16, ptr %i.ak, align 2, !dbg !1390, !noalias !1357, !noundef !14 ; 2 uses
  %.not.i.i = icmp eq i16 %i.al, -1, !dbg !1390
  br i1 %.not.i.i, label %bb.l, label %bb.k, !dbg !1397

bb.j:                                             ; preds = %bb.ac
  unreachable

bb.k:                                             ; preds = %.loopexit
  %i.am = zext i16 %i.al to i64, !dbg !1398       ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 2, !dbg !1399
  %i.ao = load i16, ptr %i.an, align 2, !dbg !1399, !noalias !1357, !noundef !14 ; 2 uses
  %i.ap = and i16 %i.ao, %i.w, !dbg !1400
  %i.aq = zext i16 %i.ap to i64, !dbg !1400
  %i.ar = sub i64 %.sroa.01.0.i.i.ph.mux, %i.aq, !dbg !1404
  %i.as = and i64 %i.ar, %i.ad, !dbg !1407
  %i.at = icmp samesign ult i64 %i.as, %.sroa.09.0.i.i.ph, !dbg !1408
  br i1 %i.at, label %bb.ap, label %bb.x, !dbg !1408

bb.l:                                             ; preds = %.loopexit
  %i.au = icmp ult i64 %i.af, 88686269585142076, !dbg !1410
  call void @llvm.assume(i1 %i.au), !dbg !1416
  call void @llvm.experimental.noalias.scope.decl(metadata !1417), !dbg !1420
  %i.av = icmp samesign ugt i64 %i.af, 32767, !dbg !1422
  br i1 %i.av, label %bb.q, label %bb.m, !dbg !1422

bb.m:                                             ; preds = %bb.l
  %.sroa.27.32.insert.ext79.i = zext i56 %.sroa.732.sroa.0.0.copyload.i to i64, !dbg !1420
  %.sroa.27.32.insert.shift80.i = shl nuw i64 %.sroa.27.32.insert.ext79.i, 8, !dbg !1420
  %.sroa.23.32.insert.ext72.i = zext nneg i8 %i.l to i64, !dbg !1420
  %.sroa.23.32.insert.insert74.i = or disjoint i64 %.sroa.27.32.insert.shift80.i, %.sroa.23.32.insert.ext72.i, !dbg !1420
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 24, !dbg !1424 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !1426, !noalias !1427
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 96, !dbg !1426
  store i16 %i.u, ptr %i.ax, align 8, !dbg !1426, !noalias !1427
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 64, !dbg !1426
  store ptr %.sroa.4.0.copyload, ptr %i.ay, align 8, !dbg !1426, !noalias !1430
  %.sroa.684.0..sroa_idx85.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 72, !dbg !1426
  store ptr %.sroa.5.0.copyload, ptr %.sroa.684.0..sroa_idx85.i.i, align 8, !dbg !1426, !noalias !1430
  %.sroa.888.0..sroa_idx89.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 80, !dbg !1426
  store i64 %.sroa.6.0.copyload, ptr %.sroa.888.0..sroa_idx89.i.i, align 8, !dbg !1426, !noalias !1430
  %.sroa.1092.0..sroa_idx93.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 88, !dbg !1426
  store ptr %.sroa.720.0.copyload, ptr %.sroa.1092.0..sroa_idx93.i.i, align 8, !dbg !1426, !noalias !1430
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !1426
  store ptr %i.n, ptr %i.az, align 8, !dbg !1426, !noalias !1431
  %.sroa.5102.0..sroa_idx103.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !1426
  store ptr %.sroa.5.sroa.4.0.copyload.i, ptr %.sroa.5102.0..sroa_idx103.i.i, align 8, !dbg !1426, !noalias !1431
  %.sroa.6105.0..sroa_idx106.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !1426
  store i64 %.sroa.5.sroa.5.0.copyload.i, ptr %.sroa.6105.0..sroa_idx106.i.i, align 8, !dbg !1426, !noalias !1431
  %.sroa.7108.0..sroa_idx109.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !1426
  store ptr %.sroa.5.sroa.6.0.copyload.i, ptr %.sroa.7108.0..sroa_idx109.i.i, align 8, !dbg !1426, !noalias !1431
  %.sroa.8111.0..sroa_idx112.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !1426
  store i64 %.sroa.23.32.insert.insert74.i, ptr %.sroa.8111.0..sroa_idx112.i.i, align 8, !dbg !1426, !noalias !1431
  store i64 0, ptr %i.b, align 8, !dbg !1426, !noalias !1427
  %i.ba = load i64, ptr %i.aw, align 8, !dbg !1432, !range !238, !alias.scope !1437, !noalias !1440, !noundef !14
  %i.bb = icmp eq i64 %i.af, %i.ba, !dbg !1442
  br i1 %i.bb, label %bb.n, label %bb.u, !dbg !1442

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtNtCs74LoFwSioHw_4http6header3map6BucketNtNtBR_5value11HeaderValueEE8grow_oneCsb6T6P0NKlCh_2h2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aw)
          to label %._crit_edge172.i.i unwind label %bb.o, !dbg !1443, !noalias !1440

._crit_edge172.i.i:                               ; preds = %bb.n
  %.pre173.i.i = load ptr, ptr %i.ag, align 8, !dbg !1444, !alias.scope !1437, !noalias !1440
  br label %bb.u, !dbg !1443

bb.o:                                             ; preds = %bb.n
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs74LoFwSioHw_4http6header3map6BucketNtNtBG_5value11HeaderValueEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(104) %i.b) #34
          to label %.body.thread.i unwind label %bb.p, !dbg !1449, !noalias !1450

bb.p:                                             ; preds = %bb.o
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35, !dbg !1451, !noalias !1440
  unreachable, !dbg !1451

bb.q:                                             ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n) ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.n, i64 32, !dbg !1452
  %i.bf = load ptr, ptr %i.be, align 8, !dbg !1452, !noalias !1456, !nonnull !14, !noundef !14
  invoke void %i.bf(ptr noundef %.sroa.5.sroa.6.0.copyload.i, ptr noundef %.sroa.5.sroa.4.0.copyload.i, i64 noundef %.sroa.5.sroa.5.0.copyload.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs74LoFwSioHw_4http6header5value11HeaderValueECsbaWXNhtWAp9_11foundations.exit.i.i.i unwind label %bb.r, !dbg !1452, !noalias !1463, !inline_history !156

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs74LoFwSioHw_4http6header5value11HeaderValueECsbaWXNhtWAp9_11foundations.exit.i.i.i: ; preds = %bb.q
  br i1 %i.ai, label %bb.bg, label %.invoke.i, !dbg !1464

bb.r:                                             ; preds = %bb.q
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.ai, label %.body.thread.i, label %bb.s, !dbg !1467

bb.s:                                             ; preds = %bb.r
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 32, !dbg !1470
  %i.bi = load ptr, ptr %i.bh, align 8, !dbg !1470, !noalias !1475, !nonnull !14, !noundef !14
  invoke void %i.bi(ptr noundef %.sroa.720.0.copyload, ptr noundef %.sroa.5.0.copyload, i64 noundef %.sroa.6.0.copyload)
          to label %.body.thread.i unwind label %bb.t, !dbg !1470, !noalias !1463, !inline_history !316

bb.t:                                             ; preds = %bb.s
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35, !dbg !1488, !noalias !1463
  unreachable, !dbg !1488

bb.u:                                             ; preds = %._crit_edge172.i.i, %bb.m
  %i.bk = phi ptr [ %.pre173.i.i, %._crit_edge172.i.i ], [ %i.ah, %bb.m ], !dbg !1444
  %i.bl = getelementptr inbounds nuw [104 x i8], ptr %i.bk, i64 %i.af, !dbg !1489
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.bl, ptr noundef nonnull readonly align 8 dereferenceable(104) %i.b, i64 104, i1 false), !dbg !1491, !noalias !1450
  %i.bm = add nuw nsw i64 %i.af, 1, !dbg !1493
  store i64 %i.bm, ptr %i.ae, align 8, !dbg !1493, !alias.scope !1437, !noalias !1440
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !1494, !noalias !1427
  %i.bn = load i64, ptr %i.aa, align 8, !dbg !1495, !alias.scope !1379, !noalias !1357, !noundef !14 ; 2 uses
  %i.bo = icmp ult i64 %.sroa.01.0.i.i.ph.mux, %i.bn, !dbg !1495
  br i1 %i.bo, label %bb.v, label %bb.w, !dbg !1495

bb.v:                                             ; preds = %bb.u
  %i.bp = load ptr, ptr %i.z, align 8, !dbg !1495, !alias.scope !1379, !noalias !1357, !nonnull !14, !noundef !14
  %i.bq = trunc nuw nsw i64 %i.af to i16, !dbg !1496
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %.sroa.01.0.i.i.ph.mux, !dbg !1495 ; 2 uses
  store i16 %i.bq, ptr %i.br, align 2, !dbg !1495, !noalias !1357
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 2, !dbg !1495
  store i16 %i.u, ptr %i.bs, align 2, !dbg !1495, !noalias !1357
  br label %bb.bh, !dbg !1499

bb.w:                                             ; preds = %bb.u
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.01.0.i.i.ph.mux, i64 noundef %i.bn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #33
          to label %.noexc41.i unwind label %.body.thread103.i, !dbg !1495, !noalias !1335

.noexc41.i:                                       ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %bb.k
  %i.bt = icmp eq i16 %i.ao, %i.u, !dbg !1501
  br i1 %i.bt, label %bb.y, label %_RNvXsy_NtNtCs74LoFwSioHw_4http6header4nameNtB5_10HeaderNameNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.thread.i.i, !dbg !1504

_RNvXsy_NtNtCs74LoFwSioHw_4http6header4nameNtB5_10HeaderNameNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.thread.i.i: ; preds = %_RNvXsy_NtNtCs74LoFwSioHw_4http6header4nameNtB5_10HeaderNameNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.i.i, %.split.i.i, %bb.ab, %bb.z, %bb.x
  %i.bu = add nuw nsw i64 %.sroa.09.0.i.i.ph, 1, !dbg !1505
  %i.bv = add i64 %.sroa.01.0.i.i.ph.mux, 1, !dbg !1506
  br label %.outer81, !dbg !1507

bb.y:                                             ; preds = %bb.x
  %i.bw = icmp ugt i64 %i.af, %i.am, !dbg !1508
  br i1 %i.bw, label %bb.z, label %bb.ac, !dbg !1508

bb.z:                                             ; preds = %bb.y
  %i.bx = getelementptr inbounds nuw [104 x i8], ptr %i.ah, i64 %i.am, !dbg !1515 ; 10 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 64, !dbg !1516
  %i.bz = load ptr, ptr %i.by, align 8, !dbg !1517, !noalias !1357, !noundef !14
  %i.ca = icmp ne ptr %i.bz, null, !dbg !1517     ; 2 uses
  %i.cb = xor i1 %i.ai, %i.ca, !dbg !1520
  br i1 %i.cb, label %bb.aa, label %_RNvXsy_NtNtCs74LoFwSioHw_4http6header4nameNtB5_10HeaderNameNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.thread.i.i, !dbg !1520

bb.aa:                                            ; preds = %bb.z
  br i1 %i.ca, label %bb.ab, label %_RNvXsy_NtNtCs74LoFwSioHw_4http6header4nameNtB5_10HeaderNameNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.i.i, !dbg !1520

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.assume(i1 %not..i.i.i.i), !dbg !1520
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 80, !dbg !1521
  %i.cd = load i64, ptr %i.cc, align 8, !dbg !1521, !noalias !1357, !noundef !14
  %i.ce = icmp eq i64 %i.cd, %.sroa.6.0.copyload, !dbg !1527
  br i1 %i.ce, label %.split.i.i, label %_RNvXsy_NtNtCs74LoFwSioHw_4http6header4nameNtB5_10HeaderNameNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.thread.i.i, !dbg !1527

.split.i.i:                                       ; preds = %bb.ab
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bx, i64 72, !dbg !1530
  %i.cg = load ptr, ptr %i.cf, align 8, !dbg !1530, !noalias !1357, !noundef !14
  %bcmp.i.i.i.i.i.i = call i32 @bcmp(ptr %i.cg, ptr %.sroa.5.0.copyload, i64 %.sroa.6.0.copyload), !dbg !1531, !noalias !1357
  %i.ch = icmp eq i32 %bcmp.i.i.i.i.i.i, 0, !dbg !1531
  br i1 %i.ch, label %bb.ad, label %_RNvXsy_NtNtCs74LoFwSioHw_4http6header4nameNtB5_10HeaderNameNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.thread.i.i, !dbg !1533

bb.ac:                                            ; preds = %bb.y
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.am, i64 noundef %i.af, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #33
          to label %bb.j unwind label %bb.bd, !dbg !1508, !noalias !1357

_RNvXsy_NtNtCs74LoFwSioHw_4http6header4nameNtB5_10HeaderNameNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.i.i: ; preds = %bb.aa
  call void @llvm.assume(i1 %i.ai), !dbg !1520
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bx, i64 72, !dbg !1534
  %i.cj = load i8, ptr %i.ci, align 8, !dbg !1534, !range !163, !noalias !1357, !noundef !14
  %i.ck = icmp eq i8 %i.cj, %i.p, !dbg !1537
  br i1 %i.ck, label %bb.ad, label %_RNvXsy_NtNtCs74LoFwSioHw_4http6header4nameNtB5_10HeaderNameNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.thread.i.i, !dbg !1533

bb.ad:                                            ; preds = %_RNvXsy_NtNtCs74LoFwSioHw_4http6header4nameNtB5_10HeaderNameNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.i.i, %.split.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.e, i64 48, !dbg !1538 ; 4 uses
  %.sroa.27.32.insert.ext.i = zext i56 %.sroa.732.sroa.0.0.copyload.i to i64, !dbg !1539
  %.sroa.27.32.insert.shift.i = shl nuw i64 %.sroa.27.32.insert.ext.i, 8, !dbg !1539
  %.sroa.23.32.insert.ext.i = zext nneg i8 %i.l to i64, !dbg !1539
  %.sroa.23.32.insert.insert.i = or disjoint i64 %.sroa.27.32.insert.shift.i, %.sroa.23.32.insert.ext.i, !dbg !1539 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1540), !dbg !1539
  call void @llvm.experimental.noalias.scope.decl(metadata !1543), !dbg !1539
  %i.cm = load i64, ptr %i.bx, align 8, !dbg !1545, !range !434, !alias.scope !1540, !noalias !1548, !noundef !14
  %i.cn = trunc nuw i64 %i.cm to i1, !dbg !1550
  br i1 %i.cn, label %bb.ae, label %bb.ai, !dbg !1550

bb.ae:                                            ; preds = %bb.ad
  %i.co = getelementptr inbounds nuw i8, ptr %i.bx, i64 16, !dbg !1551 ; 2 uses
  %i.cp = load i64, ptr %i.co, align 8, !dbg !1551, !alias.scope !1540, !noalias !1548, !noundef !14 ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.e, i64 64, !dbg !1552 ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8, !dbg !1552, !alias.scope !1556, !noalias !1557, !noundef !14 ; 7 uses
  %i.cs = icmp ult i64 %i.cr, 128102389400760776, !dbg !1558
  call void @llvm.assume(i1 %i.cs), !dbg !1560
  %i.ct = load i64, ptr %i.cl, align 8, !dbg !1561, !range !238, !alias.scope !1572, !noalias !1575, !noundef !14
  %i.cu = icmp eq i64 %i.cr, %i.ct, !dbg !1577
  br i1 %i.cu, label %bb.af, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtNtCs74LoFwSioHw_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCsbaWXNhtWAp9_11foundations.exit.i.i.i, !dbg !1577

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtNtCs74LoFwSioHw_4http6header3map10ExtraValueNtNtBR_5value11HeaderValueEE8grow_oneCsb6T6P0NKlCh_2h2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cl)
          to label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtNtCs74LoFwSioHw_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCsbaWXNhtWAp9_11foundations.exit.i.i.i unwind label %bb.ag, !dbg !1578, !noalias !1575

bb.ag:                                            ; preds = %bb.af
  %i.cv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n) ]
  %i.cw = getelementptr inbounds nuw i8, ptr %i.n, i64 32, !dbg !1579
  %i.cx = load ptr, ptr %i.cw, align 8, !dbg !1579, !noalias !1585, !nonnull !14, !noundef !14
  invoke void %i.cx(ptr noundef %.sroa.5.sroa.6.0.copyload.i, ptr noundef %.sroa.5.sroa.4.0.copyload.i, i64 noundef %.sroa.5.sroa.5.0.copyload.i)
          to label %.thread.i.i unwind label %bb.ah, !dbg !1579, !noalias !1575, !inline_history !1594

bb.ah:                                            ; preds = %bb.ag
  %i.cy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35, !dbg !1595, !noalias !1575
  unreachable, !dbg !1595

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtNtCs74LoFwSioHw_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCsbaWXNhtWAp9_11foundations.exit.i.i.i: ; preds = %bb.af, %bb.ae
  %i.cz = getelementptr inbounds nuw i8, ptr %i.e, i64 56, !dbg !1596 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !dbg !1596, !alias.scope !1572, !noalias !1575, !nonnull !14, !noundef !14
  %i.db = getelementptr inbounds nuw [72 x i8], ptr %i.da, i64 %i.cr, !dbg !1605 ; 9 uses
  store i64 1, ptr %i.db, align 8, !dbg !1608, !noalias !1557
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.db, i64 8, !dbg !1608
  store i64 %i.cp, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !dbg !1608, !noalias !1557
  %.sroa.5.0..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %i.db, i64 16, !dbg !1608
  store i64 0, ptr %.sroa.5.0..sroa_idx10.i.i.i, align 8, !dbg !1608, !noalias !1557
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.db, i64 24, !dbg !1608
  store i64 %i.am, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !dbg !1608, !noalias !1557
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.db, i64 32, !dbg !1608
  store ptr %i.n, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !dbg !1608, !noalias !1557
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.db, i64 40, !dbg !1608
  store ptr %.sroa.5.sroa.4.0.copyload.i, ptr %.sroa.9.0..sroa_idx.i.i.i, align 8, !dbg !1608, !noalias !1557
  %.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.db, i64 48, !dbg !1608
  store i64 %.sroa.5.sroa.5.0.copyload.i, ptr %.sroa.10.0..sroa_idx.i.i.i, align 8, !dbg !1608, !noalias !1557
  %.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.db, i64 56, !dbg !1608
  store ptr %.sroa.5.sroa.6.0.copyload.i, ptr %.sroa.11.0..sroa_idx.i.i.i, align 8, !dbg !1608, !noalias !1557
  %.sroa.12.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.db, i64 64, !dbg !1608
  store i64 %.sroa.23.32.insert.insert.i, ptr %.sroa.12.0..sroa_idx.i.i.i, align 8, !dbg !1608, !noalias !1557
  %i.dc = add nuw nsw i64 %i.cr, 1, !dbg !1612    ; 2 uses
  store i64 %i.dc, ptr %i.cq, align 8, !dbg !1612, !alias.scope !1572, !noalias !1575
  %.not.i.i.i = icmp ugt i64 %i.cp, %i.cr, !dbg !1613
  br i1 %.not.i.i.i, label %bb.an, label %bb.am, !dbg !1613

bb.ai:                                            ; preds = %bb.ad
  %i.dd = getelementptr inbounds nuw i8, ptr %i.e, i64 64, !dbg !1620 ; 2 uses
  %i.de = load i64, ptr %i.dd, align 8, !dbg !1620, !alias.scope !1556, !noalias !1557, !noundef !14 ; 6 uses
  %i.df = icmp ult i64 %i.de, 128102389400760776, !dbg !1622
  call void @llvm.assume(i1 %i.df), !dbg !1624
  %i.dg = load i64, ptr %i.cl, align 8, !dbg !1625, !range !238, !alias.scope !1631, !noalias !1634, !noundef !14
  %i.dh = icmp eq i64 %i.de, %i.dg, !dbg !1636
  br i1 %i.dh, label %bb.aj, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtNtCs74LoFwSioHw_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCsbaWXNhtWAp9_11foundations.exit9.i.i.i, !dbg !1636

bb.aj:                                            ; preds = %bb.ai
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtNtCs74LoFwSioHw_4http6header3map10ExtraValueNtNtBR_5value11HeaderValueEE8grow_oneCsb6T6P0NKlCh_2h2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cl)
          to label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtNtCs74LoFwSioHw_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCsbaWXNhtWAp9_11foundations.exit9.i.i.i unwind label %bb.ak, !dbg !1637, !noalias !1634

bb.ak:                                            ; preds = %bb.aj
  %i.di = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n) ]
  %i.dj = getelementptr inbounds nuw i8, ptr %i.n, i64 32, !dbg !1638
  %i.dk = load ptr, ptr %i.dj, align 8, !dbg !1638, !noalias !1643, !nonnull !14, !noundef !14
  invoke void %i.dk(ptr noundef %.sroa.5.sroa.6.0.copyload.i, ptr noundef %.sroa.5.sroa.4.0.copyload.i, i64 noundef %.sroa.5.sroa.5.0.copyload.i)
          to label %.thread.i.i unwind label %bb.al, !dbg !1638, !noalias !1634, !inline_history !1594

bb.al:                                            ; preds = %bb.ak
  %i.dl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35, !dbg !1652, !noalias !1634
  unreachable, !dbg !1652

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtNtCs74LoFwSioHw_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCsbaWXNhtWAp9_11foundations.exit9.i.i.i: ; preds = %bb.aj, %bb.ai
  %i.dm = getelementptr inbounds nuw i8, ptr %i.e, i64 56, !dbg !1653
  %i.dn = load ptr, ptr %i.dm, align 8, !dbg !1653, !alias.scope !1631, !noalias !1634, !nonnull !14, !noundef !14
  %i.do = getelementptr inbounds nuw [72 x i8], ptr %i.dn, i64 %i.de, !dbg !1658 ; 9 uses
  store i64 0, ptr %i.do, align 8, !dbg !1660, !noalias !1557
  %.sroa.417.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.do, i64 8, !dbg !1660
  store i64 %i.am, ptr %.sroa.417.0..sroa_idx.i.i.i, align 8, !dbg !1660, !noalias !1557
  %.sroa.518.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.do, i64 16, !dbg !1660
  store i64 0, ptr %.sroa.518.0..sroa_idx.i.i.i, align 8, !dbg !1660, !noalias !1557
  %.sroa.619.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.do, i64 24, !dbg !1660
  store i64 %i.am, ptr %.sroa.619.0..sroa_idx.i.i.i, align 8, !dbg !1660, !noalias !1557
  %.sroa.720.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.do, i64 32, !dbg !1660
  store ptr %i.n, ptr %.sroa.720.0..sroa_idx.i.i.i, align 8, !dbg !1660, !noalias !1557
  %.sroa.921.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.do, i64 40, !dbg !1660
  store ptr %.sroa.5.sroa.4.0.copyload.i, ptr %.sroa.921.0..sroa_idx.i.i.i, align 8, !dbg !1660, !noalias !1557
  %.sroa.1022.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.do, i64 48, !dbg !1660
  store i64 %.sroa.5.sroa.5.0.copyload.i, ptr %.sroa.1022.0..sroa_idx.i.i.i, align 8, !dbg !1660, !noalias !1557
  %.sroa.1123.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.do, i64 56, !dbg !1660
  store ptr %.sroa.5.sroa.6.0.copyload.i, ptr %.sroa.1123.0..sroa_idx.i.i.i, align 8, !dbg !1660, !noalias !1557
  %.sroa.1224.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.do, i64 64, !dbg !1660
  store i64 %.sroa.23.32.insert.insert.i, ptr %.sroa.1224.0..sroa_idx.i.i.i, align 8, !dbg !1660, !noalias !1557
  %i.dp = add nuw nsw i64 %i.de, 1, !dbg !1662
  store i64 %i.dp, ptr %i.dd, align 8, !dbg !1662, !alias.scope !1631, !noalias !1634
  store i64 1, ptr %i.bx, align 8, !dbg !1663, !alias.scope !1540, !noalias !1548
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 8, !dbg !1663
  store i64 %i.de, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !dbg !1663, !alias.scope !1540, !noalias !1548
  %.sroa.53.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 16, !dbg !1663
  store i64 %i.de, ptr %.sroa.53.0..sroa_idx.i.i.i, align 8, !dbg !1663, !alias.scope !1540, !noalias !1548
  br label %_RINvNtNtCs74LoFwSioHw_4http6header3map12append_valueNtNtB4_5value11HeaderValueECsbaWXNhtWAp9_11foundations.exit.i.i, !dbg !1664

bb.am:                                            ; preds = %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtNtCs74LoFwSioHw_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCsbaWXNhtWAp9_11foundations.exit.i.i.i
  %i.dq = load ptr, ptr %i.cz, align 8, !dbg !1665, !alias.scope !1556, !noalias !1557, !nonnull !14, !noundef !14
  %i.dr = getelementptr inbounds nuw [72 x i8], ptr %i.dq, i64 %i.cp, !dbg !1678 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16, !dbg !1679
  store i64 1, ptr %i.ds, align 8, !dbg !1679, !noalias !1557
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 24, !dbg !1679
  store i64 %i.cr, ptr %i.dt, align 8, !dbg !1679, !noalias !1557
  store i64 1, ptr %i.bx, align 8, !dbg !1680, !alias.scope !1540, !noalias !1548
  store i64 %i.cr, ptr %i.co, align 8, !dbg !1680, !alias.scope !1540, !noalias !1548
  br label %_RINvNtNtCs74LoFwSioHw_4http6header3map12append_valueNtNtB4_5value11HeaderValueECsbaWXNhtWAp9_11foundations.exit.i.i, !dbg !1681

bb.an:                                            ; preds = %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtNtCs74LoFwSioHw_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCsbaWXNhtWAp9_11foundations.exit.i.i.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.cp, i64 noundef %i.dc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #33
          to label %.noexc35.i.i unwind label %.body.i.i, !dbg !1613, !noalias !1357

.noexc35.i.i:                                     ; preds = %bb.an
  unreachable

_RINvNtNtCs74LoFwSioHw_4http6header3map12append_valueNtNtB4_5value11HeaderValueECsbaWXNhtWAp9_11foundations.exit.i.i: ; preds = %bb.am, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtNtCs74LoFwSioHw_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCsbaWXNhtWAp9_11foundations.exit9.i.i.i
  br i1 %i.ai, label %bb.bh, label %bb.ao, !dbg !1682

bb.ao:                                            ; preds = %_RINvNtNtCs74LoFwSioHw_4http6header3map12append_valueNtNtB4_5value11HeaderValueECsbaWXNhtWAp9_11foundations.exit.i.i
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 32, !dbg !1685
  %i.dv = load ptr, ptr %i.du, align 8, !dbg !1685, !noalias !1690, !nonnull !14, !noundef !14
  invoke void %i.dv(ptr noundef %.sroa.720.0.copyload, ptr noundef %.sroa.5.0.copyload, i64 noundef %.sroa.6.0.copyload)
          to label %bb.bh unwind label %.body.thread103.i, !dbg !1685, !noalias !1335, !inline_history !1703

bb.ap:                                            ; preds = %bb.k
  %i.dw = icmp samesign ugt i64 %.sroa.09.0.i.i.ph, 511, !dbg !1704
  %i.dx = load i64, ptr %i.e, align 8, !dbg !1704, !range !534, !alias.scope !1379, !noalias !1357
  %i.dy = icmp ne i64 %i.dx, 2, !dbg !1704
  %.sroa.016.0.i.i = select i1 %i.dw, i1 %i.dy, i1 false, !dbg !1704
  %i.dz = icmp ult i64 %i.af, 88686269585142076, !dbg !1705
  call void @llvm.assume(i1 %i.dz), !dbg !1709
  call void @llvm.experimental.noalias.scope.decl(metadata !1710), !dbg !1713
  %i.ea = icmp samesign ugt i64 %i.af, 32767, !dbg !1714
  br i1 %i.ea, label %bb.au, label %bb.aq, !dbg !1714

bb.aq:                                            ; preds = %bb.ap
  %.sroa.27.32.insert.ext75.i = zext i56 %.sroa.732.sroa.0.0.copyload.i to i64, !dbg !1705
  %.sroa.27.32.insert.shift76.i = shl nuw i64 %.sroa.27.32.insert.ext75.i, 8, !dbg !1705
  %.sroa.23.32.insert.ext69.i = zext nneg i8 %i.l to i64, !dbg !1705
  %.sroa.23.32.insert.insert71.i = or disjoint i64 %.sroa.27.32.insert.shift76.i, %.sroa.23.32.insert.ext69.i, !dbg !1705
  %i.eb = getelementptr inbounds nuw i8, ptr %i.e, i64 24, !dbg !1716 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !1718, !noalias !1719
  %i.ec = getelementptr inbounds nuw i8, ptr %i.a, i64 96, !dbg !1718
  store i16 %i.u, ptr %i.ec, align 8, !dbg !1718, !noalias !1719
  %i.ed = getelementptr inbounds nuw i8, ptr %i.a, i64 64, !dbg !1718
  store ptr %.sroa.4.0.copyload, ptr %i.ed, align 8, !dbg !1718, !noalias !1722
  %.sroa.6.0..sroa_idx53.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72, !dbg !1718
  store ptr %.sroa.5.0.copyload, ptr %.sroa.6.0..sroa_idx53.i.i, align 8, !dbg !1718, !noalias !1722
end_hunk_1
