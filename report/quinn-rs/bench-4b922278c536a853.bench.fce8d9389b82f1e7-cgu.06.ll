Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quinn-rs/original/bench-4b922278c536a853.bench.fce8d9389b82f1e7-cgu.06?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbHiBx3jRrxb_6anyhow5error12ContextErrorReNtNtCsB8MOEg02Qk_5quinn11send_stream10WriteErrorEECslIemzedAtQF_5bench, [16 x i8] c"H\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1_NtCsbHiBx3jRrxb_6anyhow7contextINtNtB7_5error12ContextErrorReNtNtCsB8MOEg02Qk_5quinn11send_stream10WriteErrorENtNtCskKLDkoKarTP_4core3fmt7Display3fmtCslIemzedAtQF_5bench }>, align 8
@1 = private constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbHiBx3jRrxb_6anyhow5error12ContextErrorReNtNtCsB8MOEg02Qk_5quinn11send_stream10WriteErrorEECslIemzedAtQF_5bench, [16 x i8] c"H\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs0_NtCsbHiBx3jRrxb_6anyhow7contextINtNtB7_5error12ContextErrorReNtNtCsB8MOEg02Qk_5quinn11send_stream10WriteErrorENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCslIemzedAtQF_5bench, ptr @_RNvXs1_NtCsbHiBx3jRrxb_6anyhow7contextINtNtB7_5error12ContextErrorReNtNtCsB8MOEg02Qk_5quinn11send_stream10WriteErrorENtNtCskKLDkoKarTP_4core3fmt7Display3fmtCslIemzedAtQF_5bench, ptr @0, ptr @_RNvXs2_NtCsbHiBx3jRrxb_6anyhow7contextINtNtB7_5error12ContextErrorReNtNtCsB8MOEg02Qk_5quinn11send_stream10WriteErrorENtNtCskKLDkoKarTP_4core5error5Error6sourceCslIemzedAtQF_5bench, ptr @_RNvYINtNtCsbHiBx3jRrxb_6anyhow5error12ContextErrorReNtNtCsB8MOEg02Qk_5quinn11send_stream10WriteErrorENtNtCskKLDkoKarTP_4core5error5Error7type_idCslIemzedAtQF_5bench, ptr @_RNvYINtNtCsbHiBx3jRrxb_6anyhow5error12ContextErrorReNtNtCsB8MOEg02Qk_5quinn11send_stream10WriteErrorENtNtCskKLDkoKarTP_4core5error5Error11descriptionCslIemzedAtQF_5bench, ptr @_RNvYINtNtCsbHiBx3jRrxb_6anyhow5error12ContextErrorReNtNtCsB8MOEg02Qk_5quinn11send_stream10WriteErrorENtNtCskKLDkoKarTP_4core5error5Error5causeCslIemzedAtQF_5bench, ptr @_RNvXs2_NtCsbHiBx3jRrxb_6anyhow7contextINtNtB7_5error12ContextErrorReNtNtCsB8MOEg02Qk_5quinn11send_stream10WriteErrorENtNtCskKLDkoKarTP_4core5error5Error7provideCslIemzedAtQF_5bench }>, align 8, !dbg !0
@2 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbHiBx3jRrxb_6anyhow5error12ContextErrorReNtNtCshovLROGBtMy_11quinn_proto10connection15ConnectionErrorEECslIemzedAtQF_5bench, [16 x i8] c"H\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1_NtCsbHiBx3jRrxb_6anyhow7contextINtNtB7_5error12ContextErrorReNtNtCshovLROGBtMy_11quinn_proto10connection15ConnectionErrorENtNtCskKLDkoKarTP_4core3fmt7Display3fmtCslIemzedAtQF_5bench }>, align 8
@3 = private constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbHiBx3jRrxb_6anyhow5error12ContextErrorReNtNtCshovLROGBtMy_11quinn_proto10connection15ConnectionErrorEECslIemzedAtQF_5bench, [16 x i8] c"H\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs0_NtCsbHiBx3jRrxb_6anyhow7contextINtNtB7_5error12ContextErrorReNtNtCshovLROGBtMy_11quinn_proto10connection15ConnectionErrorENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCslIemzedAtQF_5bench, ptr @_RNvXs1_NtCsbHiBx3jRrxb_6anyhow7contextINtNtB7_5error12ContextErrorReNtNtCshovLROGBtMy_11quinn_proto10connection15ConnectionErrorENtNtCskKLDkoKarTP_4core3fmt7Display3fmtCslIemzedAtQF_5bench, ptr @2, ptr @_RNvXs2_NtCsbHiBx3jRrxb_6anyhow7contextINtNtB7_5error12ContextErrorReNtNtCshovLROGBtMy_11quinn_proto10connection15ConnectionErrorENtNtCskKLDkoKarTP_4core5error5Error6sourceCslIemzedAtQF_5bench, ptr @_RNvYINtNtCsbHiBx3jRrxb_6anyhow5error12ContextErrorReNtNtCshovLROGBtMy_11quinn_proto10connection15ConnectionErrorENtNtCskKLDkoKarTP_4core5error5Error7type_idCslIemzedAtQF_5bench, ptr @_RNvYINtNtCsbHiBx3jRrxb_6anyhow5error12ContextErrorReNtNtCshovLROGBtMy_11quinn_proto10connection15ConnectionErrorENtNtCskKLDkoKarTP_4core5error5Error11descriptionCslIemzedAtQF_5bench, ptr @_RNvYINtNtCsbHiBx3jRrxb_6anyhow5error12ContextErrorReNtNtCshovLROGBtMy_11quinn_proto10connection15ConnectionErrorENtNtCskKLDkoKarTP_4core5error5Error5causeCslIemzedAtQF_5bench, ptr @_RNvXs2_NtCsbHiBx3jRrxb_6anyhow7contextINtNtB7_5error12ContextErrorReNtNtCshovLROGBtMy_11quinn_proto10connection15ConnectionErrorENtNtCskKLDkoKarTP_4core5error5Error7provideCslIemzedAtQF_5bench }>, align 8, !dbg !248
@4 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbHiBx3jRrxb_6anyhow7wrapper12MessageErrorNtNtCsexYYUdYSQU6_5alloc6string6StringEECslIemzedAtQF_5bench, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtCsbHiBx3jRrxb_6anyhow7wrapperINtB4_12MessageErrorNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtCskKLDkoKarTP_4core3fmt7Display3fmtCslIemzedAtQF_5bench }>, align 8
@5 = private constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbHiBx3jRrxb_6anyhow7wrapper12MessageErrorNtNtCsexYYUdYSQU6_5alloc6string6StringEECslIemzedAtQF_5bench, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNtCsbHiBx3jRrxb_6anyhow7wrapperINtB2_12MessageErrorNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCslIemzedAtQF_5bench, ptr @_RNvXs_NtCsbHiBx3jRrxb_6anyhow7wrapperINtB4_12MessageErrorNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtCskKLDkoKarTP_4core3fmt7Display3fmtCslIemzedAtQF_5bench, ptr @4, ptr @_RNvYINtNtCsbHiBx3jRrxb_6anyhow7wrapper12MessageErrorNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtCskKLDkoKarTP_4core5error5Error6sourceCslIemzedAtQF_5bench, ptr @_RNvYINtNtCsbHiBx3jRrxb_6anyhow7wrapper12MessageErrorNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtCskKLDkoKarTP_4core5error5Error7type_idCslIemzedAtQF_5bench, ptr @_RNvYINtNtCsbHiBx3jRrxb_6anyhow7wrapper12MessageErrorNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtCskKLDkoKarTP_4core5error5Error11descriptionCslIemzedAtQF_5bench, ptr @_RNvYINtNtCsbHiBx3jRrxb_6anyhow7wrapper12MessageErrorNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtCskKLDkoKarTP_4core5error5Error5causeCslIemzedAtQF_5bench, ptr @_RNvYINtNtCsbHiBx3jRrxb_6anyhow7wrapper12MessageErrorNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtCskKLDkoKarTP_4core5error5Error7provideCslIemzedAtQF_5bench }>, align 8, !dbg !269
@6 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsB8MOEg02Qk_5quinn11recv_stream9ReadErrorECslIemzedAtQF_5bench, [16 x i8] c"8\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsm_NtCsB8MOEg02Qk_5quinn11recv_streamNtB5_9ReadErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt }>, align 8
@7 = private constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsB8MOEg02Qk_5quinn11recv_stream9ReadErrorECslIemzedAtQF_5bench, [16 x i8] c"8\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsk_NtCsB8MOEg02Qk_5quinn11recv_streamNtB5_9ReadErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, ptr @_RNvXsm_NtCsB8MOEg02Qk_5quinn11recv_streamNtB5_9ReadErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr @6, ptr @_RNvXsl_NtCsB8MOEg02Qk_5quinn11recv_streamNtB5_9ReadErrorNtNtCskKLDkoKarTP_4core5error5Error6source, ptr @_RNvYNtNtCsB8MOEg02Qk_5quinn11recv_stream9ReadErrorNtNtCskKLDkoKarTP_4core5error5Error7type_idCslIemzedAtQF_5bench, ptr @_RNvYNtNtCsB8MOEg02Qk_5quinn11recv_stream9ReadErrorNtNtCskKLDkoKarTP_4core5error5Error11descriptionCslIemzedAtQF_5bench, ptr @_RNvYNtNtCsB8MOEg02Qk_5quinn11recv_stream9ReadErrorNtNtCskKLDkoKarTP_4core5error5Error5causeCslIemzedAtQF_5bench, ptr @_RNvYNtNtCsB8MOEg02Qk_5quinn11recv_stream9ReadErrorNtNtCskKLDkoKarTP_4core5error5Error7provideCslIemzedAtQF_5bench }>, align 8, !dbg !290
@8 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsjx2R6KBUtVL_6rustls5error5ErrorECslIemzedAtQF_5bench, [16 x i8] c"@\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsc_NtCsjx2R6KBUtVL_6rustls5errorNtB5_5ErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt }>, align 8
@9 = private constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsjx2R6KBUtVL_6rustls5error5ErrorECslIemzedAtQF_5bench, [16 x i8] c"@\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsg_NtCsjx2R6KBUtVL_6rustls5errorNtB5_5ErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, ptr @_RNvXsc_NtCsjx2R6KBUtVL_6rustls5errorNtB5_5ErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr @8, ptr @_RNvYNtNtCsjx2R6KBUtVL_6rustls5error5ErrorNtNtCskKLDkoKarTP_4core5error5Error6sourceCslIemzedAtQF_5bench, ptr @_RNvYNtNtCsjx2R6KBUtVL_6rustls5error5ErrorNtNtCskKLDkoKarTP_4core5error5Error7type_idCslIemzedAtQF_5bench, ptr @_RNvYNtNtCsjx2R6KBUtVL_6rustls5error5ErrorNtNtCskKLDkoKarTP_4core5error5Error11descriptionCslIemzedAtQF_5bench, ptr @_RNvYNtNtCsjx2R6KBUtVL_6rustls5error5ErrorNtNtCskKLDkoKarTP_4core5error5Error5causeCslIemzedAtQF_5bench, ptr @_RNvYNtNtCsjx2R6KBUtVL_6rustls5error5ErrorNtNtCskKLDkoKarTP_4core5error5Error7provideCslIemzedAtQF_5bench }>, align 8, !dbg !325
@10 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs6_NtNtCshovLROGBtMy_11quinn_proto6crypto6rustlsNtB5_20NoInitialCipherSuiteNtNtCskKLDkoKarTP_4core3fmt7Display3fmt }>, align 8
@11 = private constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXse_NtNtCshovLROGBtMy_11quinn_proto6crypto6rustlsNtB5_20NoInitialCipherSuiteNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, ptr @_RNvXs6_NtNtCshovLROGBtMy_11quinn_proto6crypto6rustlsNtB5_20NoInitialCipherSuiteNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr @10, ptr @_RNvYNtNtNtCshovLROGBtMy_11quinn_proto6crypto6rustls20NoInitialCipherSuiteNtNtCskKLDkoKarTP_4core5error5Error6sourceCslIemzedAtQF_5bench, ptr @_RNvYNtNtNtCshovLROGBtMy_11quinn_proto6crypto6rustls20NoInitialCipherSuiteNtNtCskKLDkoKarTP_4core5error5Error7type_idCslIemzedAtQF_5bench, ptr @_RNvYNtNtNtCshovLROGBtMy_11quinn_proto6crypto6rustls20NoInitialCipherSuiteNtNtCskKLDkoKarTP_4core5error5Error11descriptionCslIemzedAtQF_5bench, ptr @_RNvYNtNtNtCshovLROGBtMy_11quinn_proto6crypto6rustls20NoInitialCipherSuiteNtNtCskKLDkoKarTP_4core5error5Error5causeCslIemzedAtQF_5bench, ptr @_RNvYNtNtNtCshovLROGBtMy_11quinn_proto6crypto6rustls20NoInitialCipherSuiteNtNtCskKLDkoKarTP_4core5error5Error7provideCslIemzedAtQF_5bench }>, align 8, !dbg !1360
@12 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshovLROGBtMy_11quinn_proto10connection15ConnectionErrorECslIemzedAtQF_5bench, [16 x i8] c"8\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs9_NtCshovLROGBtMy_11quinn_proto10connectionNtB5_15ConnectionErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt }>, align 8
@13 = private constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshovLROGBtMy_11quinn_proto10connection15ConnectionErrorECslIemzedAtQF_5bench, [16 x i8] c"8\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs7_NtCshovLROGBtMy_11quinn_proto10connectionNtB5_15ConnectionErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, ptr @_RNvXs9_NtCshovLROGBtMy_11quinn_proto10connectionNtB5_15ConnectionErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr @12, ptr @_RNvXs8_NtCshovLROGBtMy_11quinn_proto10connectionNtB5_15ConnectionErrorNtNtCskKLDkoKarTP_4core5error5Error6source, ptr @_RNvYNtNtCshovLROGBtMy_11quinn_proto10connection15ConnectionErrorNtNtCskKLDkoKarTP_4core5error5Error7type_idCslIemzedAtQF_5bench, ptr @_RNvYNtNtCshovLROGBtMy_11quinn_proto10connection15ConnectionErrorNtNtCskKLDkoKarTP_4core5error5Error11descriptionCslIemzedAtQF_5bench, ptr @_RNvYNtNtCshovLROGBtMy_11quinn_proto10connection15ConnectionErrorNtNtCskKLDkoKarTP_4core5error5Error5causeCslIemzedAtQF_5bench, ptr @_RNvYNtNtCshovLROGBtMy_11quinn_proto10connection15ConnectionErrorNtNtCskKLDkoKarTP_4core5error5Error7provideCslIemzedAtQF_5bench }>, align 8, !dbg !1380
@14 = private unnamed_addr constant [5 x i8] c"Error", align 1
@15 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs4_NtCsbHiBx3jRrxb_6anyhow7contextINtB5_6QuotedRReENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCslIemzedAtQF_5bench }>, align 8, !dbg !1395
@16 = private unnamed_addr constant [7 x i8] c"context", align 1
@17 = private constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsB8MOEg02Qk_5quinn11send_stream10WriteErrorECslIemzedAtQF_5bench, [16 x i8] c"8\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs6_NtCsB8MOEg02Qk_5quinn11send_streamNtB5_10WriteErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt }>, align 8, !dbg !1410
@18 = private unnamed_addr constant [6 x i8] c"source", align 1
@19 = private constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshovLROGBtMy_11quinn_proto10connection15ConnectionErrorECslIemzedAtQF_5bench, [16 x i8] c"8\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs7_NtCshovLROGBtMy_11quinn_proto10connectionNtB5_15ConnectionErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt }>, align 8, !dbg !1418
@20 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00", ptr @_RNvXsZ_NtNtCsjx2R6KBUtVL_6rustls4msgs5enumsNtB5_13ExtensionTypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt }>, align 8, !dbg !1426
@21 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCsjx2R6KBUtVL_6rustls4msgs4base7PayloadNtB6_5Debug3fmtCslIemzedAtQF_5bench }>, align 8, !dbg !1434
@22 = private unnamed_addr constant [16 x i8] c"UnknownExtension", align 1
@23 = private unnamed_addr constant [3 x i8] c"typ", align 1
@24 = private unnamed_addr constant [7 x i8] c"payload", align 1
@25 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsB8MOEg02Qk_5quinn11send_stream10WriteErrorECslIemzedAtQF_5bench, [16 x i8] c"8\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs8_NtCsB8MOEg02Qk_5quinn11send_streamNtB5_10WriteErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt }>, align 8
@26 = private constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsB8MOEg02Qk_5quinn11send_stream10WriteErrorECslIemzedAtQF_5bench, [16 x i8] c"8\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs6_NtCsB8MOEg02Qk_5quinn11send_streamNtB5_10WriteErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, ptr @_RNvXs8_NtCsB8MOEg02Qk_5quinn11send_streamNtB5_10WriteErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr @25, ptr @_RNvXs7_NtCsB8MOEg02Qk_5quinn11send_streamNtB5_10WriteErrorNtNtCskKLDkoKarTP_4core5error5Error6source, ptr @_RNvYNtNtCsB8MOEg02Qk_5quinn11send_stream10WriteErrorNtNtCskKLDkoKarTP_4core5error5Error7type_idCslIemzedAtQF_5bench, ptr @_RNvYNtNtCsB8MOEg02Qk_5quinn11send_stream10WriteErrorNtNtCskKLDkoKarTP_4core5error5Error11descriptionCslIemzedAtQF_5bench, ptr @_RNvYNtNtCsB8MOEg02Qk_5quinn11send_stream10WriteErrorNtNtCskKLDkoKarTP_4core5error5Error5causeCslIemzedAtQF_5bench, ptr @_RNvYNtNtCsB8MOEg02Qk_5quinn11send_stream10WriteErrorNtNtCskKLDkoKarTP_4core5error5Error7provideCslIemzedAtQF_5bench }>, align 8, !dbg !1443
@27 = private unnamed_addr constant [3 x i8] c"DHE", align 1
@28 = private unnamed_addr constant [5 x i8] c"ECDHE", align 1
@29 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00", ptr @_RNvXs2W_NtNtCsjx2R6KBUtVL_6rustls4msgs5enumsNtB6_7HpkeKdfNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt }>, align 8, !dbg !1458
@30 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCsjx2R6KBUtVL_6rustls4msgs5enums8HpkeAeadNtB6_5Debug3fmtCslIemzedAtQF_5bench }>, align 8, !dbg !1466
@31 = private unnamed_addr constant [24 x i8] c"HpkeSymmetricCipherSuite", align 1
@32 = private unnamed_addr constant [6 x i8] c"kdf_id", align 1
@33 = private unnamed_addr constant [7 x i8] c"aead_id", align 1
@34 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsU_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_5Debug3fmt }>, align 8, !dbg !1475
@35 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00", ptr @_RNvXs2L_NtNtCsjx2R6KBUtVL_6rustls4msgs5enumsNtB6_7HpkeKemNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt }>, align 8, !dbg !1483
@36 = private constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjx2R6KBUtVL_6rustls4msgs4base10PayloadU16NtBE_8NonEmptyEECslIemzedAtQF_5bench, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs9_NtNtCsjx2R6KBUtVL_6rustls4msgs4baseINtB5_10PayloadU16NtB5_8NonEmptyENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCslIemzedAtQF_5bench }>, align 8, !dbg !1491
@37 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsjx2R6KBUtVL_6rustls4msgs9handshake24HpkeSymmetricCipherSuiteENtB6_5Debug3fmtCslIemzedAtQF_5bench }>, align 8, !dbg !1499
@38 = private unnamed_addr constant [13 x i8] c"HpkeKeyConfig", align 1
@39 = private unnamed_addr constant [9 x i8] c"config_id", align 1
@40 = private unnamed_addr constant [6 x i8] c"kem_id", align 1
@41 = private unnamed_addr constant [10 x i8] c"public_key", align 1
@42 = private unnamed_addr constant [23 x i8] c"symmetric_cipher_suites", align 1
@43 = private constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjx2R6KBUtVL_6rustls4msgs9handshake13HpkeKeyConfigECslIemzedAtQF_5bench, [16 x i8] c"8\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs46_NtNtCsjx2R6KBUtVL_6rustls4msgs9handshakeNtB6_13HpkeKeyConfigNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt }>, align 8, !dbg !1508
@44 = private constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCseEeXhZwqjpo_16rustls_pki_types11server_name7DnsNameECslIemzedAtQF_5bench, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsH_NtCseEeXhZwqjpo_16rustls_pki_types11server_nameNtB5_7DnsNameNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt }>, align 8, !dbg !1516
@45 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsjx2R6KBUtVL_6rustls4msgs9handshake18EchConfigExtensionENtB6_5Debug3fmtCslIemzedAtQF_5bench }>, align 8, !dbg !1524
@46 = private unnamed_addr constant [17 x i8] c"EchConfigContents", align 1
@47 = private unnamed_addr constant [10 x i8] c"key_config", align 1
@48 = private unnamed_addr constant [19 x i8] c"maximum_name_length", align 1
@49 = private unnamed_addr constant [11 x i8] c"public_name", align 1
@50 = private unnamed_addr constant [10 x i8] c"extensions", align 1
@51 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCsjx2R6KBUtVL_6rustls4msgs9handshake17EchConfigContentsNtB6_5Debug3fmtCslIemzedAtQF_5bench }>, align 8, !dbg !1533
@52 = private unnamed_addr constant [3 x i8] c"V18", align 1
@53 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00", ptr @_RNvXs3k_NtNtCsjx2R6KBUtVL_6rustls4msgs5enumsNtB6_10EchVersionNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt }>, align 8, !dbg !1542
@54 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCsjx2R6KBUtVL_6rustls4msgs4base10PayloadU16NtB6_5Debug3fmtCslIemzedAtQF_5bench }>, align 8, !dbg !1550
@55 = private unnamed_addr constant [7 x i8] c"Unknown", align 1
@56 = private unnamed_addr constant [7 x i8] c"version", align 1
@57 = private unnamed_addr constant [8 x i8] c"contents", align 1
@58 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCsjx2R6KBUtVL_6rustls4msgs9handshake16UnknownExtensionNtB6_5Debug3fmtCslIemzedAtQF_5bench }>, align 8, !dbg !1559
@59 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCshovLROGBtMy_11quinn_proto6varint6VarIntNtB6_5Debug3fmtCslIemzedAtQF_5bench }>, align 8, !dbg !1568
@60 = private unnamed_addr constant [7 x i8] c"Stopped", align 1
@61 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCshovLROGBtMy_11quinn_proto10connection15ConnectionErrorNtB6_5Debug3fmtCslIemzedAtQF_5bench }>, align 8, !dbg !1577
@62 = private unnamed_addr constant [14 x i8] c"ConnectionLost", align 1
@63 = private unnamed_addr constant [12 x i8] c"ClosedStream", align 1
@64 = private unnamed_addr constant [15 x i8] c"ZeroRttRejected", align 1
@65 = private unnamed_addr constant [15 x i8] c"VersionMismatch", align 1
@66 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCshovLROGBtMy_11quinn_proto15transport_error5ErrorNtB6_5Debug3fmtCslIemzedAtQF_5bench }>, align 8, !dbg !1586
@67 = private unnamed_addr constant [14 x i8] c"TransportError", align 1
@68 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCshovLROGBtMy_11quinn_proto5frame15ConnectionCloseNtB6_5Debug3fmtCslIemzedAtQF_5bench }>, align 8, !dbg !1595
@69 = private unnamed_addr constant [16 x i8] c"ConnectionClosed", align 1
@70 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCshovLROGBtMy_11quinn_proto5frame16ApplicationCloseNtB6_5Debug3fmtCslIemzedAtQF_5bench }>, align 8, !dbg !1604
@71 = private unnamed_addr constant [17 x i8] c"ApplicationClosed", align 1
@72 = private unnamed_addr constant [5 x i8] c"Reset", align 1
@73 = private unnamed_addr constant [8 x i8] c"TimedOut", align 1
@74 = private unnamed_addr constant [13 x i8] c"LocallyClosed", align 1
@75 = private unnamed_addr constant [13 x i8] c"CidsExhausted", align 1
@76 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCseEeXhZwqjpo_16rustls_pki_types11server_name12DnsNameInnerNtB6_5Debug3fmtCslIemzedAtQF_5bench }>, align 8, !dbg !1613
@77 = private unnamed_addr constant [7 x i8] c"DnsName", align 1
@78 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRbNtB6_5Debug3fmtCslIemzedAtQF_5bench }>, align 8, !dbg !1622
@79 = private unnamed_addr constant [20 x i8] c"NoInitialCipherSuite", align 1
@80 = private unnamed_addr constant [8 x i8] c"specific", align 1
@81 = private constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsjx2R6KBUtVL_6rustls5enums11ContentTypeEECslIemzedAtQF_5bench, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsr_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsjx2R6KBUtVL_6rustls5enums11ContentTypeENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCslIemzedAtQF_5bench }>, align 8, !dbg !1631
@82 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsjx2R6KBUtVL_6rustls5enums11ContentTypeNtB6_5Debug3fmtCslIemzedAtQF_5bench }>, align 8, !dbg !1639
@83 = private unnamed_addr constant [20 x i8] c"InappropriateMessage", align 1
@84 = private unnamed_addr constant [12 x i8] c"expect_types", align 1
@85 = private unnamed_addr constant [8 x i8] c"got_type", align 1
@86 = private constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsjx2R6KBUtVL_6rustls5enums13HandshakeTypeEECslIemzedAtQF_5bench, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsr_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsjx2R6KBUtVL_6rustls5enums13HandshakeTypeENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCslIemzedAtQF_5bench }>, align 8, !dbg !1648
@87 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsjx2R6KBUtVL_6rustls5enums13HandshakeTypeNtB6_5Debug3fmtCslIemzedAtQF_5bench }>, align 8, !dbg !1656
@88 = private unnamed_addr constant [29 x i8] c"InappropriateHandshakeMessage", align 1
@89 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsjx2R6KBUtVL_6rustls5error25EncryptedClientHelloErrorNtB6_5Debug3fmtCslIemzedAtQF_5bench }>, align 8, !dbg !1665
@90 = private unnamed_addr constant [27 x i8] c"InvalidEncryptedClientHello", align 1
@91 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsjx2R6KBUtVL_6rustls5error14InvalidMessageNtB6_5Debug3fmtCslIemzedAtQF_5bench }>, align 8, !dbg !1674
@92 = private unnamed_addr constant [14 x i8] c"InvalidMessage", align 1
@93 = private unnamed_addr constant [23 x i8] c"NoCertificatesPresented", align 1
@94 = private unnamed_addr constant [19 x i8] c"UnsupportedNameType", align 1
@95 = private unnamed_addr constant [12 x i8] c"DecryptError", align 1
@96 = private unnamed_addr constant [12 x i8] c"EncryptError", align 1
@97 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsjx2R6KBUtVL_6rustls5error16PeerIncompatibleNtB6_5Debug3fmtCslIemzedAtQF_5bench }>, align 8, !dbg !1683
@98 = private unnamed_addr constant [16 x i8] c"PeerIncompatible", align 1
@99 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsjx2R6KBUtVL_6rustls5error14PeerMisbehavedNtB6_5Debug3fmtCslIemzedAtQF_5bench }>, align 8, !dbg !1692
@100 = private unnamed_addr constant [14 x i8] c"PeerMisbehaved", align 1
@101 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsjx2R6KBUtVL_6rustls5enums16AlertDescriptionNtB6_5Debug3fmtCslIemzedAtQF_5bench }>, align 8, !dbg !1701
@102 = private unnamed_addr constant [13 x i8] c"AlertReceived", align 1
@103 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsjx2R6KBUtVL_6rustls5error16CertificateErrorNtB6_5Debug3fmtCslIemzedAtQF_5bench }>, align 8, !dbg !1710
@104 = private unnamed_addr constant [18 x i8] c"InvalidCertificate", align 1
@105 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsjx2R6KBUtVL_6rustls5error23CertRevocationListErrorNtB6_5Debug3fmtCslIemzedAtQF_5bench }>, align 8, !dbg !1719
@106 = private unnamed_addr constant [25 x i8] c"InvalidCertRevocationList", align 1
@107 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsexYYUdYSQU6_5alloc6string6StringNtB6_5Debug3fmtCslIemzedAtQF_5bench }>, align 8, !dbg !1728
@108 = private unnamed_addr constant [7 x i8] c"General", align 1
@109 = private unnamed_addr constant [22 x i8] c"FailedToGetCurrentTime", align 1
@110 = private unnamed_addr constant [22 x i8] c"FailedToGetRandomBytes", align 1
@111 = private unnamed_addr constant [20 x i8] c"HandshakeNotComplete", align 1
@112 = private unnamed_addr constant [23 x i8] c"PeerSentOversizedRecord", align 1
@113 = private unnamed_addr constant [21 x i8] c"NoApplicationProtocol", align 1
@114 = private unnamed_addr constant [18 x i8] c"BadMaxFragmentSize", align 1
@115 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsjx2R6KBUtVL_6rustls5error16InconsistentKeysNtB6_5Debug3fmtCslIemzedAtQF_5bench }>, align 8, !dbg !1737
@116 = private unnamed_addr constant [16 x i8] c"InconsistentKeys", align 1
@117 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCsjx2R6KBUtVL_6rustls5error11other_error10OtherErrorNtB6_5Debug3fmtCslIemzedAtQF_5bench }>, align 8, !dbg !1746
@118 = private unnamed_addr constant [5 x i8] c"Other", align 1
@119 = private unnamed_addr constant [18 x i8] c"IllegalOrderedRead", align 1
@120 = private unnamed_addr constant [40 x i8] c"description() is deprecated; use Display", align 1
@121 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -5336825086777916217 to ptr), ptr inttoptr (i64 5887339483984288364 to ptr) }>, align 8
@122 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -1672255679032699879 to ptr), ptr inttoptr (i64 6689660402040393922 to ptr) }>, align 8
@123 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 3579821670690353195 to ptr), ptr inttoptr (i64 761859082588392577 to ptr) }>, align 8
@124 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -4258696332038404618 to ptr), ptr inttoptr (i64 -1448448312792934647 to ptr) }>, align 8
@125 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -1501670778787100650 to ptr), ptr inttoptr (i64 -7725327325220663404 to ptr) }>, align 8
@126 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 8666550512412916572 to ptr), ptr inttoptr (i64 -3984745312521556635 to ptr) }>, align 8
@127 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -4280057148936993625 to ptr), ptr inttoptr (i64 -3932232119778239790 to ptr) }>, align 8
@128 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -5290053300871483598 to ptr), ptr inttoptr (i64 -850182550664218995 to ptr) }>, align 8

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsbHiBx3jRrxb_6anyhow5error11object_dropINtB2_12ContextErrorReNtNtCsB8MOEg02Qk_5quinn11send_stream10WriteErrorEECslIemzedAtQF_5bench(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1851 {
bb.a:
    #dbg_value(ptr %0, !2194, !DIExpression(), !2213)
    #dbg_value(ptr %0, !2195, !DIExpression(), !2214)
    #dbg_value(ptr %0, !2215, !DIExpression(), !2224)
    #dbg_value(ptr %0, !2215, !DIExpression(), !2224)
    #dbg_value(ptr undef, !2215, !DIExpression(DW_OP_deref), !2224)
    #dbg_value(ptr poison, !2226, !DIExpression(), !2233)
    #dbg_value(ptr %0, !2235, !DIExpression(), !2241)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2243
    #dbg_value(ptr %i.a, !2244, !DIExpression(), !2252)
  %i.b = load i64, ptr %i.a, align 8, !dbg !2254, !range !2255, !alias.scope !2256, !noundef !30
    #dbg_value(ptr %i.a, !2261, !DIExpression(), !2267)
    #dbg_value(ptr %i.a, !2269, !DIExpression(), !2277)
  %i.c = icmp eq i64 %i.b, 2, !dbg !2254
  br i1 %i.c, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std9backtrace9BacktraceEECslIemzedAtQF_5bench.exit.i.i, !dbg !2254

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2279
    #dbg_value(ptr %i.d, !2280, !DIExpression(), !2288)
  invoke void @_RNvXs0_NtNtCsG258MDvU3F_3std4sync9lazy_lockINtB5_8LazyLockNtNtB9_9backtrace7CaptureNCNvNtBW_6helper12lazy_resolve0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslIemzedAtQF_5bench(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std9backtrace9BacktraceEECslIemzedAtQF_5bench.exit.i.i unwind label %bb.c, !dbg !2290

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
    #dbg_value(ptr %0, !2291, !DIExpression(DW_OP_plus_uconst, 56, DW_OP_stack_value), !2299)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !2301 ; 2 uses
    #dbg_value(ptr %i.f, !2302, !DIExpression(), !2310)
  %i.g = load i64, ptr %i.f, align 8, !dbg !2312, !range !2313, !alias.scope !2314, !noundef !30 ; 2 uses
  %i.h = icmp ne i64 %i.g, 11, !dbg !2312
  tail call void @llvm.assume(i1 %i.h), !dbg !2312
  %i.i = icmp samesign ult i64 %i.g, 10, !dbg !2312
  br i1 %i.i, label %bb.d, label %bb.h, !dbg !2312

bb.d:                                             ; preds = %bb.c
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshovLROGBtMy_11quinn_proto10connection15ConnectionErrorECslIemzedAtQF_5bench(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.f)
          to label %bb.h unwind label %bb.f, !dbg !2312

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std9backtrace9BacktraceEECslIemzedAtQF_5bench.exit.i.i: ; preds = %bb.b, %bb.a
    #dbg_value(ptr %0, !2291, !DIExpression(DW_OP_plus_uconst, 56, DW_OP_stack_value), !2319)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !2321 ; 2 uses
    #dbg_value(ptr %i.j, !2302, !DIExpression(), !2322)
  %i.k = load i64, ptr %i.j, align 8, !dbg !2324, !range !2313, !alias.scope !2325, !noundef !30 ; 2 uses
  %i.l = icmp ne i64 %i.k, 11, !dbg !2324
  tail call void @llvm.assume(i1 %i.l), !dbg !2324
  %i.m = icmp samesign ult i64 %i.k, 10, !dbg !2324
  br i1 %i.m, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtCsbHiBx3jRrxb_6anyhow5error9ErrorImplINtB1d_12ContextErrorReNtNtCsB8MOEg02Qk_5quinn11send_stream10WriteErrorEEEECslIemzedAtQF_5bench.exit, !dbg !2324

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std9backtrace9BacktraceEECslIemzedAtQF_5bench.exit.i.i
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshovLROGBtMy_11quinn_proto10connection15ConnectionErrorECslIemzedAtQF_5bench(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.j)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtCsbHiBx3jRrxb_6anyhow5error9ErrorImplINtB1d_12ContextErrorReNtNtCsB8MOEg02Qk_5quinn11send_stream10WriteErrorEEEECslIemzedAtQF_5bench.exit unwind label %bb.g, !dbg !2324

bb.f:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !2243
  unreachable, !dbg !2243

bb.g:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.h, !dbg !2330

bb.h:                                             ; preds = %bb.g, %bb.d, %bb.c
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.o, %bb.g ], [ %i.e, %bb.d ], [ %i.e, %bb.c ]
    #dbg_value(ptr poison, !2331, !DIExpression(), !2356)
    #dbg_value(ptr %0, !2337, !DIExpression(), !2358)
    #dbg_value(i64 8, !2344, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2359)
    #dbg_value(i64 128, !2344, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2359)
    #dbg_value(ptr poison, !2360, !DIExpression(), !2370)
    #dbg_value(ptr poison, !2372, !DIExpression(), !2379)
    #dbg_value(ptr %0, !2368, !DIExpression(), !2370)
    #dbg_value(ptr %0, !2377, !DIExpression(), !2379)
    #dbg_value(ptr %0, !2381, !DIExpression(), !2388)
    #dbg_value(ptr %0, !2390, !DIExpression(), !2394)
    #dbg_value(i64 8, !2369, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2370)
    #dbg_value(i64 8, !2378, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2379)
    #dbg_value(i64 8, !2387, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2388)
    #dbg_value(i64 8, !2393, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2394)
    #dbg_value(i64 128, !2369, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2370)
    #dbg_value(i64 128, !2378, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2379)
    #dbg_value(i64 128, !2387, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2388)
    #dbg_value(i64 128, !2393, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2394)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 128, i64 noundef 8) #20, !dbg !2396
  resume { ptr, i32 } %eh.lpad-body.i, !dbg !2330

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtCsbHiBx3jRrxb_6anyhow5error9ErrorImplINtB1d_12ContextErrorReNtNtCsB8MOEg02Qk_5quinn11send_stream10WriteErrorEEEECslIemzedAtQF_5bench.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std9backtrace9BacktraceEECslIemzedAtQF_5bench.exit.i.i, %bb.e
    #dbg_value(ptr poison, !2331, !DIExpression(), !2397)
    #dbg_value(ptr %0, !2337, !DIExpression(), !2399)
    #dbg_value(i64 8, !2344, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2400)
    #dbg_value(i64 128, !2344, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2400)
    #dbg_value(ptr poison, !2360, !DIExpression(), !2401)
    #dbg_value(ptr poison, !2372, !DIExpression(), !2403)
    #dbg_value(ptr %0, !2368, !DIExpression(), !2401)
    #dbg_value(ptr %0, !2377, !DIExpression(), !2403)
    #dbg_value(ptr %0, !2381, !DIExpression(), !2405)
    #dbg_value(ptr %0, !2390, !DIExpression(), !2407)
    #dbg_value(i64 8, !2369, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2401)
    #dbg_value(i64 8, !2378, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2403)
    #dbg_value(i64 8, !2387, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2405)
    #dbg_value(i64 8, !2393, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2407)
    #dbg_value(i64 128, !2369, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2401)
    #dbg_value(i64 128, !2378, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2403)
    #dbg_value(i64 128, !2387, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2405)
    #dbg_value(i64 128, !2393, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2407)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 128, i64 noundef 8) #20, !dbg !2409
  ret void, !dbg !2410
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsbHiBx3jRrxb_6anyhow5error11object_dropINtB2_12ContextErrorReNtNtCshovLROGBtMy_11quinn_proto10connection15ConnectionErrorEECslIemzedAtQF_5bench(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2411 {
bb.a:
    #dbg_value(ptr %0, !2413, !DIExpression(), !2432)
    #dbg_value(ptr %0, !2414, !DIExpression(), !2433)
    #dbg_value(ptr %0, !2434, !DIExpression(), !2442)
    #dbg_value(ptr %0, !2434, !DIExpression(), !2442)
    #dbg_value(ptr undef, !2434, !DIExpression(DW_OP_deref), !2442)
    #dbg_value(ptr poison, !2444, !DIExpression(), !2450)
    #dbg_value(ptr %0, !2452, !DIExpression(), !2458)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2460
    #dbg_value(ptr %i.a, !2244, !DIExpression(), !2461)
  %i.b = load i64, ptr %i.a, align 8, !dbg !2463, !range !2255, !alias.scope !2464, !noundef !30
    #dbg_value(ptr %i.a, !2261, !DIExpression(), !2469)
    #dbg_value(ptr %i.a, !2269, !DIExpression(), !2471)
  %i.c = icmp eq i64 %i.b, 2, !dbg !2463
  br i1 %i.c, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std9backtrace9BacktraceEECslIemzedAtQF_5bench.exit.i.i, !dbg !2463

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2473
    #dbg_value(ptr %i.d, !2280, !DIExpression(), !2474)
  invoke void @_RNvXs0_NtNtCsG258MDvU3F_3std4sync9lazy_lockINtB5_8LazyLockNtNtB9_9backtrace7CaptureNCNvNtBW_6helper12lazy_resolve0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslIemzedAtQF_5bench(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std9backtrace9BacktraceEECslIemzedAtQF_5bench.exit.i.i unwind label %bb.c, !dbg !2476

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %0, !2477, !DIExpression(DW_OP_plus_uconst, 56, DW_OP_stack_value), !2485)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !2487
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshovLROGBtMy_11quinn_proto10connection15ConnectionErrorECslIemzedAtQF_5bench(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.f)
          to label %bb.f unwind label %bb.d, !dbg !2487

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std9backtrace9BacktraceEECslIemzedAtQF_5bench.exit.i.i: ; preds = %bb.b, %bb.a
    #dbg_value(ptr %0, !2477, !DIExpression(DW_OP_plus_uconst, 56, DW_OP_stack_value), !2488)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !2490
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshovLROGBtMy_11quinn_proto10connection15ConnectionErrorECslIemzedAtQF_5bench(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtCsbHiBx3jRrxb_6anyhow5error9ErrorImplINtB1d_12ContextErrorReNtNtCshovLROGBtMy_11quinn_proto10connection15ConnectionErrorEEEECslIemzedAtQF_5bench.exit unwind label %bb.e, !dbg !2490

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !2460
  unreachable, !dbg !2460

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std9backtrace9BacktraceEECslIemzedAtQF_5bench.exit.i.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.f, !dbg !2491

bb.f:                                             ; preds = %bb.e, %bb.c
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.i, %bb.e ], [ %i.e, %bb.c ]
    #dbg_value(ptr poison, !2492, !DIExpression(), !2505)
    #dbg_value(ptr %0, !2495, !DIExpression(), !2507)
    #dbg_value(i64 8, !2502, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2508)
    #dbg_value(i64 128, !2502, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2508)
    #dbg_value(ptr poison, !2360, !DIExpression(), !2509)
    #dbg_value(ptr poison, !2372, !DIExpression(), !2511)
    #dbg_value(ptr %0, !2368, !DIExpression(), !2509)
    #dbg_value(ptr %0, !2377, !DIExpression(), !2511)
    #dbg_value(ptr %0, !2381, !DIExpression(), !2513)
    #dbg_value(ptr %0, !2390, !DIExpression(), !2515)
    #dbg_value(i64 8, !2369, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2509)
    #dbg_value(i64 8, !2378, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2511)
    #dbg_value(i64 8, !2387, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2513)
    #dbg_value(i64 8, !2393, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2515)
    #dbg_value(i64 128, !2369, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2509)
    #dbg_value(i64 128, !2378, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2511)
    #dbg_value(i64 128, !2387, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2513)
    #dbg_value(i64 128, !2393, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2515)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 128, i64 noundef 8) #20, !dbg !2517
  resume { ptr, i32 } %eh.lpad-body.i, !dbg !2491

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtCsbHiBx3jRrxb_6anyhow5error9ErrorImplINtB1d_12ContextErrorReNtNtCshovLROGBtMy_11quinn_proto10connection15ConnectionErrorEEEECslIemzedAtQF_5bench.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std9backtrace9BacktraceEECslIemzedAtQF_5bench.exit.i.i
    #dbg_value(ptr poison, !2492, !DIExpression(), !2518)
    #dbg_value(ptr %0, !2495, !DIExpression(), !2520)
    #dbg_value(i64 8, !2502, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2521)
    #dbg_value(i64 128, !2502, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2521)
    #dbg_value(ptr poison, !2360, !DIExpression(), !2522)
    #dbg_value(ptr poison, !2372, !DIExpression(), !2524)
    #dbg_value(ptr %0, !2368, !DIExpression(), !2522)
    #dbg_value(ptr %0, !2377, !DIExpression(), !2524)
    #dbg_value(ptr %0, !2381, !DIExpression(), !2526)
    #dbg_value(ptr %0, !2390, !DIExpression(), !2528)
    #dbg_value(i64 8, !2369, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2522)
    #dbg_value(i64 8, !2378, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2524)
    #dbg_value(i64 8, !2387, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2526)
    #dbg_value(i64 8, !2393, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2528)
    #dbg_value(i64 128, !2369, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2522)
    #dbg_value(i64 128, !2378, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2524)
    #dbg_value(i64 128, !2387, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2526)
    #dbg_value(i64 128, !2393, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2528)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 128, i64 noundef 8) #20, !dbg !2530
  ret void, !dbg !2531
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsbHiBx3jRrxb_6anyhow5error11object_dropINtNtB4_7wrapper12MessageErrorNtNtCsexYYUdYSQU6_5alloc6string6StringEECslIemzedAtQF_5bench(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2532 {
bb.a:
    #dbg_value(ptr %0, !2534, !DIExpression(), !2553)
    #dbg_value(ptr %0, !2535, !DIExpression(), !2554)
    #dbg_value(ptr %0, !2555, !DIExpression(), !2563)
    #dbg_value(ptr %0, !2555, !DIExpression(), !2563)
    #dbg_value(ptr undef, !2555, !DIExpression(DW_OP_deref), !2563)
    #dbg_value(ptr poison, !2565, !DIExpression(), !2571)
    #dbg_value(ptr %0, !2573, !DIExpression(), !2579)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2581
    #dbg_value(ptr %i.a, !2244, !DIExpression(), !2582)
  %i.b = load i64, ptr %i.a, align 8, !dbg !2584, !range !2255, !alias.scope !2585, !noundef !30
    #dbg_value(ptr %i.a, !2261, !DIExpression(), !2590)
    #dbg_value(ptr %i.a, !2269, !DIExpression(), !2592)
  %i.c = icmp eq i64 %i.b, 2, !dbg !2584
  br i1 %i.c, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std9backtrace9BacktraceEECslIemzedAtQF_5bench.exit.i.i, !dbg !2584

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2594
    #dbg_value(ptr %i.d, !2280, !DIExpression(), !2595)
  invoke void @_RNvXs0_NtNtCsG258MDvU3F_3std4sync9lazy_lockINtB5_8LazyLockNtNtB9_9backtrace7CaptureNCNvNtBW_6helper12lazy_resolve0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslIemzedAtQF_5bench(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std9backtrace9BacktraceEECslIemzedAtQF_5bench.exit.i.i unwind label %bb.c, !dbg !2597

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !2581
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbHiBx3jRrxb_6anyhow7wrapper12MessageErrorNtNtCsexYYUdYSQU6_5alloc6string6StringEECslIemzedAtQF_5bench(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) #21
          to label %bb.h unwind label %bb.f, !dbg !2581

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std9backtrace9BacktraceEECslIemzedAtQF_5bench.exit.i.i: ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !2581 ; 3 uses
    #dbg_value(ptr %i.g, !2598, !DIExpression(), !2606)
    #dbg_value(ptr %i.g, !2608, !DIExpression(), !2614)
    #dbg_value(ptr %i.g, !2616, !DIExpression(), !2622)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslIemzedAtQF_5bench(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbHiBx3jRrxb_6anyhow7wrapper12MessageErrorNtNtCsexYYUdYSQU6_5alloc6string6StringEECslIemzedAtQF_5bench.exit.i.i unwind label %bb.d, !dbg !2624

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std9backtrace9BacktraceEECslIemzedAtQF_5bench.exit.i.i
  %i.h = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.g, !2625, !DIExpression(), !2633)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslIemzedAtQF_5bench(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.h unwind label %bb.e, !dbg !2635

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !2624
  unreachable, !dbg !2624

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbHiBx3jRrxb_6anyhow7wrapper12MessageErrorNtNtCsexYYUdYSQU6_5alloc6string6StringEECslIemzedAtQF_5bench.exit.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std9backtrace9BacktraceEECslIemzedAtQF_5bench.exit.i.i
    #dbg_value(ptr %i.g, !2625, !DIExpression(), !2636)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslIemzedAtQF_5bench(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtCsbHiBx3jRrxb_6anyhow5error9ErrorImplINtNtB1f_7wrapper12MessageErrorNtNtBG_6string6StringEEEECslIemzedAtQF_5bench.exit unwind label %bb.g, !dbg !2638

bb.f:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !2581
  unreachable, !dbg !2581

bb.g:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbHiBx3jRrxb_6anyhow7wrapper12MessageErrorNtNtCsexYYUdYSQU6_5alloc6string6StringEECslIemzedAtQF_5bench.exit.i.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.h, !dbg !2639

bb.h:                                             ; preds = %bb.g, %bb.d, %bb.c
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.k, %bb.g ], [ %i.h, %bb.d ], [ %i.e, %bb.c ]
    #dbg_value(ptr poison, !2640, !DIExpression(), !2653)
    #dbg_value(ptr %0, !2643, !DIExpression(), !2655)
    #dbg_value(i64 8, !2650, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2656)
    #dbg_value(i64 80, !2650, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2656)
    #dbg_value(ptr poison, !2360, !DIExpression(), !2657)
    #dbg_value(ptr poison, !2372, !DIExpression(), !2659)
    #dbg_value(ptr %0, !2368, !DIExpression(), !2657)
    #dbg_value(ptr %0, !2377, !DIExpression(), !2659)
    #dbg_value(ptr %0, !2381, !DIExpression(), !2661)
    #dbg_value(ptr %0, !2390, !DIExpression(), !2663)
    #dbg_value(i64 8, !2369, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2657)
    #dbg_value(i64 8, !2378, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2659)
    #dbg_value(i64 8, !2387, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2661)
    #dbg_value(i64 8, !2393, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2663)
    #dbg_value(i64 80, !2369, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2657)
    #dbg_value(i64 80, !2378, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2659)
    #dbg_value(i64 80, !2387, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2661)
    #dbg_value(i64 80, !2393, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2663)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 80, i64 noundef 8) #20, !dbg !2665
  resume { ptr, i32 } %eh.lpad-body.i, !dbg !2639

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtCsbHiBx3jRrxb_6anyhow5error9ErrorImplINtNtB1f_7wrapper12MessageErrorNtNtBG_6string6StringEEEECslIemzedAtQF_5bench.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbHiBx3jRrxb_6anyhow7wrapper12MessageErrorNtNtCsexYYUdYSQU6_5alloc6string6StringEECslIemzedAtQF_5bench.exit.i.i
    #dbg_value(ptr poison, !2640, !DIExpression(), !2666)
    #dbg_value(ptr %0, !2643, !DIExpression(), !2668)
    #dbg_value(i64 8, !2650, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2669)
    #dbg_value(i64 80, !2650, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2669)
    #dbg_value(ptr poison, !2360, !DIExpression(), !2670)
    #dbg_value(ptr poison, !2372, !DIExpression(), !2672)
    #dbg_value(ptr %0, !2368, !DIExpression(), !2670)
    #dbg_value(ptr %0, !2377, !DIExpression(), !2672)
    #dbg_value(ptr %0, !2381, !DIExpression(), !2674)
    #dbg_value(ptr %0, !2390, !DIExpression(), !2676)
    #dbg_value(i64 8, !2369, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2670)
    #dbg_value(i64 8, !2378, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2672)
    #dbg_value(i64 8, !2387, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2674)
    #dbg_value(i64 8, !2393, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2676)
    #dbg_value(i64 80, !2369, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2670)
    #dbg_value(i64 80, !2378, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2672)
    #dbg_value(i64 80, !2387, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2674)
    #dbg_value(i64 80, !2393, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2676)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 80, i64 noundef 8) #20, !dbg !2678
  ret void, !dbg !2679
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsbHiBx3jRrxb_6anyhow5error11object_dropNtNtCsB8MOEg02Qk_5quinn11recv_stream9ReadErrorECslIemzedAtQF_5bench(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2680 {
bb.a:
    #dbg_value(ptr %0, !2682, !DIExpression(), !2701)
    #dbg_value(ptr %0, !2683, !DIExpression(), !2702)
    #dbg_value(ptr %0, !2703, !DIExpression(), !2711)
    #dbg_value(ptr %0, !2703, !DIExpression(), !2711)
    #dbg_value(ptr undef, !2703, !DIExpression(DW_OP_deref), !2711)
    #dbg_value(ptr poison, !2713, !DIExpression(), !2719)
    #dbg_value(ptr %0, !2721, !DIExpression(), !2727)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2729
    #dbg_value(ptr %i.a, !2244, !DIExpression(), !2730)
  %i.b = load i64, ptr %i.a, align 8, !dbg !2732, !range !2255, !alias.scope !2733, !noundef !30
    #dbg_value(ptr %i.a, !2261, !DIExpression(), !2738)
    #dbg_value(ptr %i.a, !2269, !DIExpression(), !2740)
  %i.c = icmp eq i64 %i.b, 2, !dbg !2732
  br i1 %i.c, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std9backtrace9BacktraceEECslIemzedAtQF_5bench.exit.i.i, !dbg !2732

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2742
    #dbg_value(ptr %i.d, !2280, !DIExpression(), !2743)
  invoke void @_RNvXs0_NtNtCsG258MDvU3F_3std4sync9lazy_lockINtB5_8LazyLockNtNtB9_9backtrace7CaptureNCNvNtBW_6helper12lazy_resolve0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslIemzedAtQF_5bench(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std9backtrace9BacktraceEECslIemzedAtQF_5bench.exit.i.i unwind label %bb.c, !dbg !2745

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !2729 ; 2 uses
    #dbg_value(ptr %i.f, !2746, !DIExpression(), !2754)
  %i.g = load i64, ptr %i.f, align 8, !dbg !2756, !range !2757, !alias.scope !2758, !noundef !30 ; 2 uses
  %i.h = icmp ne i64 %i.g, 11, !dbg !2756
  tail call void @llvm.assume(i1 %i.h), !dbg !2756
  %i.i = icmp samesign ult i64 %i.g, 10, !dbg !2756
  br i1 %i.i, label %bb.d, label %bb.h, !dbg !2756

bb.d:                                             ; preds = %bb.c
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshovLROGBtMy_11quinn_proto10connection15ConnectionErrorECslIemzedAtQF_5bench(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.f)
          to label %bb.h unwind label %bb.f, !dbg !2756

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std9backtrace9BacktraceEECslIemzedAtQF_5bench.exit.i.i: ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !2729 ; 2 uses
    #dbg_value(ptr %i.j, !2746, !DIExpression(), !2761)
  %i.k = load i64, ptr %i.j, align 8, !dbg !2763, !range !2757, !alias.scope !2764, !noundef !30 ; 2 uses
  %i.l = icmp ne i64 %i.k, 11, !dbg !2763
  tail call void @llvm.assume(i1 %i.l), !dbg !2763
  %i.m = icmp samesign ult i64 %i.k, 10, !dbg !2763
  br i1 %i.m, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtCsbHiBx3jRrxb_6anyhow5error9ErrorImplNtNtCsB8MOEg02Qk_5quinn11recv_stream9ReadErrorEEECslIemzedAtQF_5bench.exit, !dbg !2763

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std9backtrace9BacktraceEECslIemzedAtQF_5bench.exit.i.i
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshovLROGBtMy_11quinn_proto10connection15ConnectionErrorECslIemzedAtQF_5bench(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.j)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtCsbHiBx3jRrxb_6anyhow5error9ErrorImplNtNtCsB8MOEg02Qk_5quinn11recv_stream9ReadErrorEEECslIemzedAtQF_5bench.exit unwind label %bb.g, !dbg !2763

bb.f:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !2729
  unreachable, !dbg !2729

bb.g:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.h, !dbg !2767

bb.h:                                             ; preds = %bb.g, %bb.d, %bb.c
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.o, %bb.g ], [ %i.e, %bb.d ], [ %i.e, %bb.c ]
    #dbg_value(ptr poison, !2768, !DIExpression(), !2781)
    #dbg_value(ptr %0, !2771, !DIExpression(), !2783)
    #dbg_value(i64 8, !2778, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2784)
    #dbg_value(i64 112, !2778, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2784)
    #dbg_value(ptr poison, !2360, !DIExpression(), !2785)
    #dbg_value(ptr poison, !2372, !DIExpression(), !2787)
    #dbg_value(ptr %0, !2368, !DIExpression(), !2785)
    #dbg_value(ptr %0, !2377, !DIExpression(), !2787)
    #dbg_value(ptr %0, !2381, !DIExpression(), !2789)
    #dbg_value(ptr %0, !2390, !DIExpression(), !2791)
    #dbg_value(i64 8, !2369, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2785)
    #dbg_value(i64 8, !2378, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2787)
    #dbg_value(i64 8, !2387, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2789)
    #dbg_value(i64 8, !2393, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2791)
    #dbg_value(i64 112, !2369, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2785)
    #dbg_value(i64 112, !2378, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2787)
    #dbg_value(i64 112, !2387, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2789)
    #dbg_value(i64 112, !2393, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2791)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 112, i64 noundef 8) #20, !dbg !2793
  resume { ptr, i32 } %eh.lpad-body.i, !dbg !2767

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtCsbHiBx3jRrxb_6anyhow5error9ErrorImplNtNtCsB8MOEg02Qk_5quinn11recv_stream9ReadErrorEEECslIemzedAtQF_5bench.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std9backtrace9BacktraceEECslIemzedAtQF_5bench.exit.i.i, %bb.e
    #dbg_value(ptr poison, !2768, !DIExpression(), !2794)
    #dbg_value(ptr %0, !2771, !DIExpression(), !2796)
    #dbg_value(i64 8, !2778, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2797)
    #dbg_value(i64 112, !2778, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2797)
    #dbg_value(ptr poison, !2360, !DIExpression(), !2798)
    #dbg_value(ptr poison, !2372, !DIExpression(), !2800)
    #dbg_value(ptr %0, !2368, !DIExpression(), !2798)
    #dbg_value(ptr %0, !2377, !DIExpression(), !2800)
    #dbg_value(ptr %0, !2381, !DIExpression(), !2802)
    #dbg_value(ptr %0, !2390, !DIExpression(), !2804)
    #dbg_value(i64 8, !2369, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2798)
    #dbg_value(i64 8, !2378, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2800)
    #dbg_value(i64 8, !2387, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2802)
    #dbg_value(i64 8, !2393, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2804)
    #dbg_value(i64 112, !2369, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2798)
    #dbg_value(i64 112, !2378, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2800)
    #dbg_value(i64 112, !2387, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2802)
    #dbg_value(i64 112, !2393, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2804)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 112, i64 noundef 8) #20, !dbg !2806
  ret void, !dbg !2807
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsbHiBx3jRrxb_6anyhow5error11object_dropNtNtCsjx2R6KBUtVL_6rustls5error5ErrorECslIemzedAtQF_5bench(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2808 {
bb.a:
    #dbg_value(ptr %0, !2810, !DIExpression(), !2829)
    #dbg_value(ptr %0, !2811, !DIExpression(), !2830)
    #dbg_value(ptr %0, !2831, !DIExpression(), !2839)
    #dbg_value(ptr %0, !2831, !DIExpression(), !2839)
    #dbg_value(ptr undef, !2831, !DIExpression(DW_OP_deref), !2839)
    #dbg_value(ptr poison, !2841, !DIExpression(), !2847)
    #dbg_value(ptr %0, !2849, !DIExpression(), !2855)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2857
    #dbg_value(ptr %i.a, !2244, !DIExpression(), !2858)
  %i.b = load i64, ptr %i.a, align 8, !dbg !2860, !range !2255, !alias.scope !2861, !noundef !30
    #dbg_value(ptr %i.a, !2261, !DIExpression(), !2866)
    #dbg_value(ptr %i.a, !2269, !DIExpression(), !2868)
  %i.c = icmp eq i64 %i.b, 2, !dbg !2860
  br i1 %i.c, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std9backtrace9BacktraceEECslIemzedAtQF_5bench.exit.i.i, !dbg !2860

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2870
    #dbg_value(ptr %i.d, !2280, !DIExpression(), !2871)
  invoke void @_RNvXs0_NtNtCsG258MDvU3F_3std4sync9lazy_lockINtB5_8LazyLockNtNtB9_9backtrace7CaptureNCNvNtBW_6helper12lazy_resolve0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslIemzedAtQF_5bench(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std9backtrace9BacktraceEECslIemzedAtQF_5bench.exit.i.i unwind label %bb.c, !dbg !2873

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !2857
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsjx2R6KBUtVL_6rustls5error5ErrorECslIemzedAtQF_5bench(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.f) #21
          to label %bb.f unwind label %bb.d, !dbg !2857

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std9backtrace9BacktraceEECslIemzedAtQF_5bench.exit.i.i: ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !2857
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsjx2R6KBUtVL_6rustls5error5ErrorECslIemzedAtQF_5bench(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtCsbHiBx3jRrxb_6anyhow5error9ErrorImplNtNtCsjx2R6KBUtVL_6rustls5error5ErrorEEECslIemzedAtQF_5bench.exit unwind label %bb.e, !dbg !2857

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !2857
  unreachable, !dbg !2857

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std9backtrace9BacktraceEECslIemzedAtQF_5bench.exit.i.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.f, !dbg !2874

bb.f:                                             ; preds = %bb.e, %bb.c
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.i, %bb.e ], [ %i.e, %bb.c ]
    #dbg_value(ptr poison, !2875, !DIExpression(), !2888)
    #dbg_value(ptr %0, !2878, !DIExpression(), !2890)
    #dbg_value(i64 8, !2885, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2891)
    #dbg_value(i64 120, !2885, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2891)
    #dbg_value(ptr poison, !2360, !DIExpression(), !2892)
    #dbg_value(ptr poison, !2372, !DIExpression(), !2894)
    #dbg_value(ptr %0, !2368, !DIExpression(), !2892)
    #dbg_value(ptr %0, !2377, !DIExpression(), !2894)
    #dbg_value(ptr %0, !2381, !DIExpression(), !2896)
    #dbg_value(ptr %0, !2390, !DIExpression(), !2898)
    #dbg_value(i64 8, !2369, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2892)
    #dbg_value(i64 8, !2378, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2894)
    #dbg_value(i64 8, !2387, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2896)
    #dbg_value(i64 8, !2393, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2898)
    #dbg_value(i64 120, !2369, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2892)
    #dbg_value(i64 120, !2378, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2894)
    #dbg_value(i64 120, !2387, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2896)
    #dbg_value(i64 120, !2393, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2898)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 120, i64 noundef 8) #20, !dbg !2900
  resume { ptr, i32 } %eh.lpad-body.i, !dbg !2874

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtCsbHiBx3jRrxb_6anyhow5error9ErrorImplNtNtCsjx2R6KBUtVL_6rustls5error5ErrorEEECslIemzedAtQF_5bench.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std9backtrace9BacktraceEECslIemzedAtQF_5bench.exit.i.i
    #dbg_value(ptr poison, !2875, !DIExpression(), !2901)
    #dbg_value(ptr %0, !2878, !DIExpression(), !2903)
    #dbg_value(i64 8, !2885, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2904)
    #dbg_value(i64 120, !2885, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2904)
    #dbg_value(ptr poison, !2360, !DIExpression(), !2905)
    #dbg_value(ptr poison, !2372, !DIExpression(), !2907)
    #dbg_value(ptr %0, !2368, !DIExpression(), !2905)
    #dbg_value(ptr %0, !2377, !DIExpression(), !2907)
    #dbg_value(ptr %0, !2381, !DIExpression(), !2909)
    #dbg_value(ptr %0, !2390, !DIExpression(), !2911)
    #dbg_value(i64 8, !2369, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2905)
    #dbg_value(i64 8, !2378, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2907)
    #dbg_value(i64 8, !2387, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2909)
    #dbg_value(i64 8, !2393, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2911)
    #dbg_value(i64 120, !2369, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2905)
    #dbg_value(i64 120, !2378, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2907)
    #dbg_value(i64 120, !2387, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2909)
    #dbg_value(i64 120, !2393, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2911)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 120, i64 noundef 8) #20, !dbg !2913
  ret void, !dbg !2914
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsbHiBx3jRrxb_6anyhow5error11object_dropNtNtNtCshovLROGBtMy_11quinn_proto6crypto6rustls20NoInitialCipherSuiteECslIemzedAtQF_5bench(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2915 {
bb.a:
    #dbg_value(ptr %0, !2917, !DIExpression(), !2936)
    #dbg_value(ptr %0, !2918, !DIExpression(), !2937)
    #dbg_value(ptr %0, !2938, !DIExpression(), !2946)
    #dbg_value(ptr %0, !2938, !DIExpression(), !2946)
    #dbg_value(ptr undef, !2938, !DIExpression(DW_OP_deref), !2946)
    #dbg_value(ptr poison, !2948, !DIExpression(), !2954)
    #dbg_value(ptr %0, !2956, !DIExpression(), !2962)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2964
    #dbg_value(ptr %i.a, !2244, !DIExpression(), !2965)
  %i.b = load i64, ptr %i.a, align 8, !dbg !2967, !range !2255, !alias.scope !2968, !noundef !30
    #dbg_value(ptr %i.a, !2261, !DIExpression(), !2973)
    #dbg_value(ptr %i.a, !2269, !DIExpression(), !2975)
  %i.c = icmp eq i64 %i.b, 2, !dbg !2967
  br i1 %i.c, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtCsbHiBx3jRrxb_6anyhow5error9ErrorImplNtNtNtCshovLROGBtMy_11quinn_proto6crypto6rustls20NoInitialCipherSuiteEEECslIemzedAtQF_5bench.exit, !dbg !2967

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2977
    #dbg_value(ptr %i.d, !2280, !DIExpression(), !2978)
  invoke void @_RNvXs0_NtNtCsG258MDvU3F_3std4sync9lazy_lockINtB5_8LazyLockNtNtB9_9backtrace7CaptureNCNvNtBW_6helper12lazy_resolve0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslIemzedAtQF_5bench(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtCsbHiBx3jRrxb_6anyhow5error9ErrorImplNtNtNtCshovLROGBtMy_11quinn_proto6crypto6rustls20NoInitialCipherSuiteEEECslIemzedAtQF_5bench.exit unwind label %bb.c, !dbg !2980

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !2981, !DIExpression(), !2994)
    #dbg_value(ptr %0, !2984, !DIExpression(), !2996)
    #dbg_value(i64 8, !2991, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2997)
    #dbg_value(i64 64, !2991, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2997)
    #dbg_value(ptr poison, !2360, !DIExpression(), !2998)
    #dbg_value(ptr poison, !2372, !DIExpression(), !3000)
    #dbg_value(ptr %0, !2368, !DIExpression(), !2998)
    #dbg_value(ptr %0, !2377, !DIExpression(), !3000)
    #dbg_value(ptr %0, !2381, !DIExpression(), !3002)
    #dbg_value(ptr %0, !2390, !DIExpression(), !3004)
    #dbg_value(i64 8, !2369, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2998)
    #dbg_value(i64 8, !2378, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3000)
    #dbg_value(i64 8, !2387, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3002)
    #dbg_value(i64 8, !2393, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3004)
    #dbg_value(i64 64, !2369, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2998)
    #dbg_value(i64 64, !2378, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3000)
    #dbg_value(i64 64, !2387, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3002)
    #dbg_value(i64 64, !2393, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3004)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 64, i64 noundef 8) #20, !dbg !3006
  resume { ptr, i32 } %i.e, !dbg !3007

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtCsbHiBx3jRrxb_6anyhow5error9ErrorImplNtNtNtCshovLROGBtMy_11quinn_proto6crypto6rustls20NoInitialCipherSuiteEEECslIemzedAtQF_5bench.exit: ; preds = %bb.a, %bb.b
    #dbg_value(ptr poison, !2981, !DIExpression(), !3008)
    #dbg_value(ptr %0, !2984, !DIExpression(), !3010)
    #dbg_value(i64 8, !2991, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3011)
    #dbg_value(i64 64, !2991, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3011)
    #dbg_value(ptr poison, !2360, !DIExpression(), !3012)
    #dbg_value(ptr poison, !2372, !DIExpression(), !3014)
    #dbg_value(ptr %0, !2368, !DIExpression(), !3012)
    #dbg_value(ptr %0, !2377, !DIExpression(), !3014)
    #dbg_value(ptr %0, !2381, !DIExpression(), !3016)
    #dbg_value(ptr %0, !2390, !DIExpression(), !3018)
    #dbg_value(i64 8, !2369, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3012)
    #dbg_value(i64 8, !2378, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3014)
    #dbg_value(i64 8, !2387, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3016)
    #dbg_value(i64 8, !2393, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3018)
    #dbg_value(i64 64, !2369, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3012)
    #dbg_value(i64 64, !2378, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3014)
    #dbg_value(i64 64, !2387, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3016)
    #dbg_value(i64 64, !2393, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3018)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 64, i64 noundef 8) #20, !dbg !3020
  ret void, !dbg !3021
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsbHiBx3jRrxb_6anyhow5error17context_drop_restReNtNtCsB8MOEg02Qk_5quinn11send_stream10WriteErrorECslIemzedAtQF_5bench(ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !3022 {
bb.a:
    #dbg_value(ptr %0, !3024, !DIExpression(), !3092)
    #dbg_declare(ptr %1, !3025, !DIExpression(), !3093)
    #dbg_value(ptr poison, !3094, !DIExpression(), !3103)
    #dbg_value(ptr %1, !3102, !DIExpression(), !3106)
  %i.a = load i128, ptr %1, align 8, !dbg !3107, !noundef !30
  %i.b = icmp eq i128 %i.a, 48856307742461772449142782864826955356, !dbg !3114
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3092
    #dbg_value(ptr %i.c, !2244, !DIExpression(), !3115)
    #dbg_value(ptr %i.c, !2244, !DIExpression(), !3140)
  %i.d = load i64, ptr %i.c, align 8, !dbg !3092, !range !2255, !noundef !30
    #dbg_value(ptr %i.c, !2261, !DIExpression(), !3165)
    #dbg_value(ptr %i.c, !2261, !DIExpression(), !3167)
    #dbg_value(ptr %i.c, !2269, !DIExpression(), !3169)
    #dbg_value(ptr %i.c, !2269, !DIExpression(), !3171)
  %i.e = icmp eq i64 %i.d, 2, !dbg !3092          ; 2 uses
  br i1 %i.b, label %bb.e, label %bb.b, !dbg !3173

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !3060, !DIExpression(), !3174)
    #dbg_value(ptr %0, !3163, !DIExpression(), !3175)
    #dbg_value(ptr %0, !3163, !DIExpression(), !3175)
    #dbg_value(ptr undef, !3163, !DIExpression(DW_OP_deref), !3175)
    #dbg_value(ptr poison, !3155, !DIExpression(), !3176)
    #dbg_value(ptr %0, !3147, !DIExpression(), !3177)
  br i1 %i.e, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtCsbHiBx3jRrxb_6anyhow5error9ErrorImplINtB1d_12ContextErrorReINtNtNtB4_3mem13manually_drop12ManuallyDropNtNtCsB8MOEg02Qk_5quinn11send_stream10WriteErrorEEEEECslIemzedAtQF_5bench.exit, !dbg !3178

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !3179
    #dbg_value(ptr %i.f, !2280, !DIExpression(), !3180)
  invoke void @_RNvXs0_NtNtCsG258MDvU3F_3std4sync9lazy_lockINtB5_8LazyLockNtNtB9_9backtrace7CaptureNCNvNtBW_6helper12lazy_resolve0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslIemzedAtQF_5bench(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.f)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtCsbHiBx3jRrxb_6anyhow5error9ErrorImplINtB1d_12ContextErrorReINtNtNtB4_3mem13manually_drop12ManuallyDropNtNtCsB8MOEg02Qk_5quinn11send_stream10WriteErrorEEEEECslIemzedAtQF_5bench.exit unwind label %bb.d, !dbg !3182

common.resume:                                    ; preds = %bb.g, %bb.h, %bb.k, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.d ], [ %i.s, %bb.k ], [ %i.i, %bb.h ], [ %i.i, %bb.g ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 128, i64 noundef 8) #20, !dbg !3092
  resume { ptr, i32 } %common.resume.op, !dbg !3092

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !3183, !DIExpression(), !3196)
    #dbg_value(ptr %0, !3186, !DIExpression(), !3198)
    #dbg_value(i64 8, !3193, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3199)
    #dbg_value(i64 128, !3193, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3199)
    #dbg_value(ptr poison, !2360, !DIExpression(), !3200)
    #dbg_value(ptr poison, !2372, !DIExpression(), !3202)
    #dbg_value(ptr %0, !2368, !DIExpression(), !3200)
    #dbg_value(ptr %0, !2377, !DIExpression(), !3202)
    #dbg_value(ptr %0, !2381, !DIExpression(), !3204)
    #dbg_value(ptr %0, !2390, !DIExpression(), !3206)
    #dbg_value(i64 8, !2369, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3200)
    #dbg_value(i64 8, !2378, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3202)
    #dbg_value(i64 8, !2387, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3204)
    #dbg_value(i64 8, !2393, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3206)
    #dbg_value(i64 128, !2369, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3200)
    #dbg_value(i64 128, !2378, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3202)
    #dbg_value(i64 128, !2387, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3204)
    #dbg_value(i64 128, !2393, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3206)
  br label %common.resume, !dbg !3208

bb.e:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !3026, !DIExpression(), !3209)
    #dbg_value(ptr %0, !3138, !DIExpression(), !3210)
    #dbg_value(ptr %0, !3138, !DIExpression(), !3210)
    #dbg_value(ptr undef, !3138, !DIExpression(DW_OP_deref), !3210)
    #dbg_value(ptr poison, !3130, !DIExpression(), !3211)
    #dbg_value(ptr %0, !3122, !DIExpression(), !3212)
  br i1 %i.e, label %bb.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std9backtrace9BacktraceEECslIemzedAtQF_5bench.exit.i.i, !dbg !3213

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !3214
    #dbg_value(ptr %i.h, !2280, !DIExpression(), !3215)
  invoke void @_RNvXs0_NtNtCsG258MDvU3F_3std4sync9lazy_lockINtB5_8LazyLockNtNtB9_9backtrace7CaptureNCNvNtBW_6helper12lazy_resolve0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslIemzedAtQF_5bench(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std9backtrace9BacktraceEECslIemzedAtQF_5bench.exit.i.i unwind label %bb.g, !dbg !3217

bb.g:                                             ; preds = %bb.f
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
    #dbg_value(ptr %0, !3218, !DIExpression(DW_OP_plus_uconst, 56, DW_OP_stack_value), !3226)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !3228 ; 2 uses
    #dbg_value(ptr %i.j, !2302, !DIExpression(), !3229)
  %i.k = load i64, ptr %i.j, align 8, !dbg !3231, !range !2313, !alias.scope !3232, !noundef !30 ; 2 uses
  %i.l = icmp ne i64 %i.k, 11, !dbg !3231
  tail call void @llvm.assume(i1 %i.l), !dbg !3231
  %i.m = icmp samesign ult i64 %i.k, 10, !dbg !3231
  br i1 %i.m, label %bb.h, label %common.resume, !dbg !3231

bb.h:                                             ; preds = %bb.g
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshovLROGBtMy_11quinn_proto10connection15ConnectionErrorECslIemzedAtQF_5bench(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.j)
          to label %common.resume unwind label %bb.j, !dbg !3231

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std9backtrace9BacktraceEECslIemzedAtQF_5bench.exit.i.i: ; preds = %bb.f, %bb.e
    #dbg_value(ptr %0, !3218, !DIExpression(DW_OP_plus_uconst, 56, DW_OP_stack_value), !3239)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !3241 ; 2 uses
    #dbg_value(ptr %i.n, !2302, !DIExpression(), !3242)
  %i.o = load i64, ptr %i.n, align 8, !dbg !3244, !range !2313, !alias.scope !3245, !noundef !30 ; 2 uses
  %i.p = icmp ne i64 %i.o, 11, !dbg !3244
  tail call void @llvm.assume(i1 %i.p), !dbg !3244
  %i.q = icmp samesign ult i64 %i.o, 10, !dbg !3244
  br i1 %i.q, label %bb.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtCsbHiBx3jRrxb_6anyhow5error9ErrorImplINtB1d_12ContextErrorReINtNtNtB4_3mem13manually_drop12ManuallyDropNtNtCsB8MOEg02Qk_5quinn11send_stream10WriteErrorEEEEECslIemzedAtQF_5bench.exit, !dbg !3244

bb.i:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std9backtrace9BacktraceEECslIemzedAtQF_5bench.exit.i.i
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshovLROGBtMy_11quinn_proto10connection15ConnectionErrorECslIemzedAtQF_5bench(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.n)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtCsbHiBx3jRrxb_6anyhow5error9ErrorImplINtB1d_12ContextErrorReINtNtNtB4_3mem13manually_drop12ManuallyDropNtNtCsB8MOEg02Qk_5quinn11send_stream10WriteErrorEEEEECslIemzedAtQF_5bench.exit unwind label %bb.k, !dbg !3244

bb.j:                                             ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !3250
  unreachable, !dbg !3250

bb.k:                                             ; preds = %bb.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %common.resume, !dbg !3251

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtCsbHiBx3jRrxb_6anyhow5error9ErrorImplINtB1d_12ContextErrorReINtNtNtB4_3mem13manually_drop12ManuallyDropNtNtCsB8MOEg02Qk_5quinn11send_stream10WriteErrorEEEEECslIemzedAtQF_5bench.exit: ; preds = %bb.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std9backtrace9BacktraceEECslIemzedAtQF_5bench.exit.i.i, %bb.c, %bb.b
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 128, i64 noundef 8) #20, !dbg !3092
  ret void, !dbg !3252
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsbHiBx3jRrxb_6anyhow5error17context_drop_restReNtNtCshovLROGBtMy_11quinn_proto10connection15ConnectionErrorECslIemzedAtQF_5bench(ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !3253 {
bb.a:
    #dbg_value(ptr %0, !3255, !DIExpression(), !3314)
    #dbg_declare(ptr %1, !3256, !DIExpression(), !3315)
    #dbg_value(ptr poison, !3316, !DIExpression(), !3320)
    #dbg_value(ptr %1, !3319, !DIExpression(), !3323)
  %i.a = load i128, ptr %1, align 8, !dbg !3324, !noundef !30
  %i.b = icmp eq i128 %i.a, 48856307742461772449142782864826955356, !dbg !3327
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3314
    #dbg_value(ptr %i.c, !2244, !DIExpression(), !3328)
    #dbg_value(ptr %i.c, !2244, !DIExpression(), !3353)
  %i.d = load i64, ptr %i.c, align 8, !dbg !3314, !range !2255, !noundef !30
    #dbg_value(ptr %i.c, !2261, !DIExpression(), !3378)
    #dbg_value(ptr %i.c, !2261, !DIExpression(), !3380)
    #dbg_value(ptr %i.c, !2269, !DIExpression(), !3382)
    #dbg_value(ptr %i.c, !2269, !DIExpression(), !3384)
  %i.e = icmp eq i64 %i.d, 2, !dbg !3314          ; 2 uses
  br i1 %i.b, label %bb.e, label %bb.b, !dbg !3386

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !3280, !DIExpression(), !3387)
    #dbg_value(ptr %0, !3376, !DIExpression(), !3388)
    #dbg_value(ptr %0, !3376, !DIExpression(), !3388)
    #dbg_value(ptr undef, !3376, !DIExpression(DW_OP_deref), !3388)
    #dbg_value(ptr poison, !3368, !DIExpression(), !3389)
    #dbg_value(ptr %0, !3360, !DIExpression(), !3390)
  br i1 %i.e, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtCsbHiBx3jRrxb_6anyhow5error9ErrorImplINtB1d_12ContextErrorReINtNtNtB4_3mem13manually_drop12ManuallyDropNtNtCshovLROGBtMy_11quinn_proto10connection15ConnectionErrorEEEEECslIemzedAtQF_5bench.exit, !dbg !3391

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !3392
    #dbg_value(ptr %i.f, !2280, !DIExpression(), !3393)
  invoke void @_RNvXs0_NtNtCsG258MDvU3F_3std4sync9lazy_lockINtB5_8LazyLockNtNtB9_9backtrace7CaptureNCNvNtBW_6helper12lazy_resolve0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslIemzedAtQF_5bench(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.f)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtCsbHiBx3jRrxb_6anyhow5error9ErrorImplINtB1d_12ContextErrorReINtNtNtB4_3mem13manually_drop12ManuallyDropNtNtCshovLROGBtMy_11quinn_proto10connection15ConnectionErrorEEEEECslIemzedAtQF_5bench.exit unwind label %bb.d, !dbg !3395

common.resume:                                    ; preds = %bb.g, %bb.i, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.d ], [ %i.m, %bb.i ], [ %i.i, %bb.g ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 128, i64 noundef 8) #20, !dbg !3314
  resume { ptr, i32 } %common.resume.op, !dbg !3314

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !3396, !DIExpression(), !3409)
    #dbg_value(ptr %0, !3399, !DIExpression(), !3411)
    #dbg_value(i64 8, !3406, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3412)
    #dbg_value(i64 128, !3406, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3412)
    #dbg_value(ptr poison, !2360, !DIExpression(), !3413)
    #dbg_value(ptr poison, !2372, !DIExpression(), !3415)
    #dbg_value(ptr %0, !2368, !DIExpression(), !3413)
    #dbg_value(ptr %0, !2377, !DIExpression(), !3415)
    #dbg_value(ptr %0, !2381, !DIExpression(), !3417)
    #dbg_value(ptr %0, !2390, !DIExpression(), !3419)
    #dbg_value(i64 8, !2369, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3413)
    #dbg_value(i64 8, !2378, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3415)
    #dbg_value(i64 8, !2387, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3417)
    #dbg_value(i64 8, !2393, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3419)
    #dbg_value(i64 128, !2369, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3413)
    #dbg_value(i64 128, !2378, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3415)
    #dbg_value(i64 128, !2387, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3417)
    #dbg_value(i64 128, !2393, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3419)
  br label %common.resume, !dbg !3421

bb.e:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !3257, !DIExpression(), !3422)
    #dbg_value(ptr %0, !3351, !DIExpression(), !3423)
    #dbg_value(ptr %0, !3351, !DIExpression(), !3423)
    #dbg_value(ptr undef, !3351, !DIExpression(DW_OP_deref), !3423)
    #dbg_value(ptr poison, !3343, !DIExpression(), !3424)
    #dbg_value(ptr %0, !3335, !DIExpression(), !3425)
  br i1 %i.e, label %bb.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std9backtrace9BacktraceEECslIemzedAtQF_5bench.exit.i.i, !dbg !3426

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !3427
    #dbg_value(ptr %i.h, !2280, !DIExpression(), !3428)
  invoke void @_RNvXs0_NtNtCsG258MDvU3F_3std4sync9lazy_lockINtB5_8LazyLockNtNtB9_9backtrace7CaptureNCNvNtBW_6helper12lazy_resolve0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslIemzedAtQF_5bench(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std9backtrace9BacktraceEECslIemzedAtQF_5bench.exit.i.i unwind label %bb.g, !dbg !3430

bb.g:                                             ; preds = %bb.f
  %i.i = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %0, !3431, !DIExpression(DW_OP_plus_uconst, 56, DW_OP_stack_value), !3439)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !3441
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshovLROGBtMy_11quinn_proto10connection15ConnectionErrorECslIemzedAtQF_5bench(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.j)
          to label %common.resume unwind label %bb.h, !dbg !3441

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std9backtrace9BacktraceEECslIemzedAtQF_5bench.exit.i.i: ; preds = %bb.f, %bb.e
    #dbg_value(ptr %0, !3431, !DIExpression(DW_OP_plus_uconst, 56, DW_OP_stack_value), !3442)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !3444
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshovLROGBtMy_11quinn_proto10connection15ConnectionErrorECslIemzedAtQF_5bench(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.k)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtCsbHiBx3jRrxb_6anyhow5error9ErrorImplINtB1d_12ContextErrorReINtNtNtB4_3mem13manually_drop12ManuallyDropNtNtCshovLROGBtMy_11quinn_proto10connection15ConnectionErrorEEEEECslIemzedAtQF_5bench.exit unwind label %bb.i, !dbg !3444

bb.h:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !3445
  unreachable, !dbg !3445

bb.i:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std9backtrace9BacktraceEECslIemzedAtQF_5bench.exit.i.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %common.resume, !dbg !3446

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtCsbHiBx3jRrxb_6anyhow5error9ErrorImplINtB1d_12ContextErrorReINtNtNtB4_3mem13manually_drop12ManuallyDropNtNtCshovLROGBtMy_11quinn_proto10connection15ConnectionErrorEEEEECslIemzedAtQF_5bench.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std9backtrace9BacktraceEECslIemzedAtQF_5bench.exit.i.i, %bb.c, %bb.b
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 128, i64 noundef 8) #20, !dbg !3314
  ret void, !dbg !3447
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsbHiBx3jRrxb_6anyhow5error17object_drop_frontNtNtCsB8MOEg02Qk_5quinn11recv_stream9ReadErrorECslIemzedAtQF_5bench(ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !3448 {
bb.a:
    #dbg_value(ptr %0, !3450, !DIExpression(), !3478)
    #dbg_declare(ptr %1, !3451, !DIExpression(), !3479)
    #dbg_value(ptr %0, !3452, !DIExpression(), !3480)
    #dbg_value(ptr %0, !3481, !DIExpression(), !3489)
    #dbg_value(ptr %0, !3481, !DIExpression(), !3489)
    #dbg_value(ptr undef, !3481, !DIExpression(DW_OP_deref), !3489)
    #dbg_value(ptr poison, !3491, !DIExpression(), !3497)
    #dbg_value(ptr %0, !3499, !DIExpression(), !3505)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3507
    #dbg_value(ptr %i.a, !2244, !DIExpression(), !3508)
  %i.b = load i64, ptr %i.a, align 8, !dbg !3510, !range !2255, !alias.scope !3511, !noundef !30
    #dbg_value(ptr %i.a, !2261, !DIExpression(), !3516)
    #dbg_value(ptr %i.a, !2269, !DIExpression(), !3518)
  %i.c = icmp eq i64 %i.b, 2, !dbg !3510
  br i1 %i.c, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtCsbHiBx3jRrxb_6anyhow5error9ErrorImplINtNtNtB4_3mem13manually_drop12ManuallyDropNtNtCsB8MOEg02Qk_5quinn11recv_stream9ReadErrorEEEECslIemzedAtQF_5bench.exit, !dbg !3510

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !3520
    #dbg_value(ptr %i.d, !2280, !DIExpression(), !3521)
  invoke void @_RNvXs0_NtNtCsG258MDvU3F_3std4sync9lazy_lockINtB5_8LazyLockNtNtB9_9backtrace7CaptureNCNvNtBW_6helper12lazy_resolve0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslIemzedAtQF_5bench(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtCsbHiBx3jRrxb_6anyhow5error9ErrorImplINtNtNtB4_3mem13manually_drop12ManuallyDropNtNtCsB8MOEg02Qk_5quinn11recv_stream9ReadErrorEEEECslIemzedAtQF_5bench.exit unwind label %bb.c, !dbg !3523

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !3524, !DIExpression(), !3537)
    #dbg_value(ptr %0, !3527, !DIExpression(), !3539)
    #dbg_value(i64 8, !3534, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3540)
    #dbg_value(i64 112, !3534, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3540)
    #dbg_value(ptr poison, !2360, !DIExpression(), !3541)
    #dbg_value(ptr poison, !2372, !DIExpression(), !3543)
    #dbg_value(ptr %0, !2368, !DIExpression(), !3541)
    #dbg_value(ptr %0, !2377, !DIExpression(), !3543)
    #dbg_value(ptr %0, !2381, !DIExpression(), !3545)
    #dbg_value(ptr %0, !2390, !DIExpression(), !3547)
    #dbg_value(i64 8, !2369, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3541)
    #dbg_value(i64 8, !2378, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3543)
    #dbg_value(i64 8, !2387, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3545)
    #dbg_value(i64 8, !2393, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3547)
    #dbg_value(i64 112, !2369, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3541)
    #dbg_value(i64 112, !2378, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3543)
    #dbg_value(i64 112, !2387, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3545)
    #dbg_value(i64 112, !2393, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3547)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 112, i64 noundef 8) #20, !dbg !3549
  resume { ptr, i32 } %i.e, !dbg !3550

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtCsbHiBx3jRrxb_6anyhow5error9ErrorImplINtNtNtB4_3mem13manually_drop12ManuallyDropNtNtCsB8MOEg02Qk_5quinn11recv_stream9ReadErrorEEEECslIemzedAtQF_5bench.exit: ; preds = %bb.a, %bb.b
    #dbg_value(ptr poison, !3524, !DIExpression(), !3551)
    #dbg_value(ptr %0, !3527, !DIExpression(), !3553)
    #dbg_value(i64 8, !3534, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3554)
    #dbg_value(i64 112, !3534, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3554)
    #dbg_value(ptr poison, !2360, !DIExpression(), !3555)
    #dbg_value(ptr poison, !2372, !DIExpression(), !3557)
    #dbg_value(ptr %0, !2368, !DIExpression(), !3555)
    #dbg_value(ptr %0, !2377, !DIExpression(), !3557)
    #dbg_value(ptr %0, !2381, !DIExpression(), !3559)
    #dbg_value(ptr %0, !2390, !DIExpression(), !3561)
    #dbg_value(i64 8, !2369, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3555)
    #dbg_value(i64 8, !2378, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3557)
    #dbg_value(i64 8, !2387, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3559)
    #dbg_value(i64 8, !2393, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3561)
    #dbg_value(i64 112, !2369, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3555)
    #dbg_value(i64 112, !2378, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3557)
    #dbg_value(i64 112, !2387, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3559)
    #dbg_value(i64 112, !2393, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3561)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 112, i64 noundef 8) #20, !dbg !3563
  ret void, !dbg !3564
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsbHiBx3jRrxb_6anyhow5error17object_drop_frontNtNtCsexYYUdYSQU6_5alloc6string6StringECslIemzedAtQF_5bench(ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !3565 {
bb.a:
    #dbg_value(ptr %0, !3567, !DIExpression(), !3597)
    #dbg_declare(ptr %1, !3568, !DIExpression(), !3598)
    #dbg_value(ptr %0, !3569, !DIExpression(), !3599)
    #dbg_value(ptr %0, !3600, !DIExpression(), !3608)
    #dbg_value(ptr %0, !3600, !DIExpression(), !3608)
    #dbg_value(ptr undef, !3600, !DIExpression(DW_OP_deref), !3608)
    #dbg_value(ptr poison, !3610, !DIExpression(), !3616)
    #dbg_value(ptr %0, !3618, !DIExpression(), !3624)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3626
    #dbg_value(ptr %i.a, !2244, !DIExpression(), !3627)
  %i.b = load i64, ptr %i.a, align 8, !dbg !3629, !range !2255, !alias.scope !3630, !noundef !30
    #dbg_value(ptr %i.a, !2261, !DIExpression(), !3635)
    #dbg_value(ptr %i.a, !2269, !DIExpression(), !3637)
  %i.c = icmp eq i64 %i.b, 2, !dbg !3629
  br i1 %i.c, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtCsbHiBx3jRrxb_6anyhow5error9ErrorImplINtNtNtB4_3mem13manually_drop12ManuallyDropNtNtBG_6string6StringEEEECslIemzedAtQF_5bench.exit, !dbg !3629

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !3639
    #dbg_value(ptr %i.d, !2280, !DIExpression(), !3640)
  invoke void @_RNvXs0_NtNtCsG258MDvU3F_3std4sync9lazy_lockINtB5_8LazyLockNtNtB9_9backtrace7CaptureNCNvNtBW_6helper12lazy_resolve0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslIemzedAtQF_5bench(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtCsbHiBx3jRrxb_6anyhow5error9ErrorImplINtNtNtB4_3mem13manually_drop12ManuallyDropNtNtBG_6string6StringEEEECslIemzedAtQF_5bench.exit unwind label %bb.c, !dbg !3642

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !3643, !DIExpression(), !3656)
    #dbg_value(ptr %0, !3646, !DIExpression(), !3658)
    #dbg_value(i64 8, !3653, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3659)
    #dbg_value(i64 80, !3653, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3659)
    #dbg_value(ptr poison, !2360, !DIExpression(), !3660)
    #dbg_value(ptr poison, !2372, !DIExpression(), !3662)
    #dbg_value(ptr %0, !2368, !DIExpression(), !3660)
    #dbg_value(ptr %0, !2377, !DIExpression(), !3662)
    #dbg_value(ptr %0, !2381, !DIExpression(), !3664)
    #dbg_value(ptr %0, !2390, !DIExpression(), !3666)
    #dbg_value(i64 8, !2369, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3660)
    #dbg_value(i64 8, !2378, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3662)
    #dbg_value(i64 8, !2387, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3664)
    #dbg_value(i64 8, !2393, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3666)
    #dbg_value(i64 80, !2369, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3660)
    #dbg_value(i64 80, !2378, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3662)
    #dbg_value(i64 80, !2387, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3664)
    #dbg_value(i64 80, !2393, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3666)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 80, i64 noundef 8) #20, !dbg !3668
  resume { ptr, i32 } %i.e, !dbg !3669

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtCsbHiBx3jRrxb_6anyhow5error9ErrorImplINtNtNtB4_3mem13manually_drop12ManuallyDropNtNtBG_6string6StringEEEECslIemzedAtQF_5bench.exit: ; preds = %bb.a, %bb.b
    #dbg_value(ptr poison, !3643, !DIExpression(), !3670)
    #dbg_value(ptr %0, !3646, !DIExpression(), !3672)
    #dbg_value(i64 8, !3653, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3673)
    #dbg_value(i64 80, !3653, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3673)
    #dbg_value(ptr poison, !2360, !DIExpression(), !3674)
    #dbg_value(ptr poison, !2372, !DIExpression(), !3676)
    #dbg_value(ptr %0, !2368, !DIExpression(), !3674)
    #dbg_value(ptr %0, !2377, !DIExpression(), !3676)
    #dbg_value(ptr %0, !2381, !DIExpression(), !3678)
    #dbg_value(ptr %0, !2390, !DIExpression(), !3680)
    #dbg_value(i64 8, !2369, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3674)
    #dbg_value(i64 8, !2378, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3676)
    #dbg_value(i64 8, !2387, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3678)
    #dbg_value(i64 8, !2393, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3680)
    #dbg_value(i64 80, !2369, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3674)
    #dbg_value(i64 80, !2378, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3676)
    #dbg_value(i64 80, !2387, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3678)
    #dbg_value(i64 80, !2393, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3680)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 80, i64 noundef 8) #20, !dbg !3682
  ret void, !dbg !3683
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsbHiBx3jRrxb_6anyhow5error17object_drop_frontNtNtCsjx2R6KBUtVL_6rustls5error5ErrorECslIemzedAtQF_5bench(ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !3684 {
bb.a:
    #dbg_value(ptr %0, !3686, !DIExpression(), !3716)
    #dbg_declare(ptr %1, !3687, !DIExpression(), !3717)
    #dbg_value(ptr %0, !3688, !DIExpression(), !3718)
    #dbg_value(ptr %0, !3719, !DIExpression(), !3727)
    #dbg_value(ptr %0, !3719, !DIExpression(), !3727)
    #dbg_value(ptr undef, !3719, !DIExpression(DW_OP_deref), !3727)
    #dbg_value(ptr poison, !3729, !DIExpression(), !3735)
    #dbg_value(ptr %0, !3737, !DIExpression(), !3743)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3745
    #dbg_value(ptr %i.a, !2244, !DIExpression(), !3746)
  %i.b = load i64, ptr %i.a, align 8, !dbg !3748, !range !2255, !alias.scope !3749, !noundef !30
    #dbg_value(ptr %i.a, !2261, !DIExpression(), !3754)
    #dbg_value(ptr %i.a, !2269, !DIExpression(), !3756)
  %i.c = icmp eq i64 %i.b, 2, !dbg !3748
  br i1 %i.c, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtCsbHiBx3jRrxb_6anyhow5error9ErrorImplINtNtNtB4_3mem13manually_drop12ManuallyDropNtNtCsjx2R6KBUtVL_6rustls5error5ErrorEEEECslIemzedAtQF_5bench.exit, !dbg !3748

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !3758
    #dbg_value(ptr %i.d, !2280, !DIExpression(), !3759)
  invoke void @_RNvXs0_NtNtCsG258MDvU3F_3std4sync9lazy_lockINtB5_8LazyLockNtNtB9_9backtrace7CaptureNCNvNtBW_6helper12lazy_resolve0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslIemzedAtQF_5bench(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtCsbHiBx3jRrxb_6anyhow5error9ErrorImplINtNtNtB4_3mem13manually_drop12ManuallyDropNtNtCsjx2R6KBUtVL_6rustls5error5ErrorEEEECslIemzedAtQF_5bench.exit unwind label %bb.c, !dbg !3761

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !3762, !DIExpression(), !3775)
    #dbg_value(ptr %0, !3765, !DIExpression(), !3777)
    #dbg_value(i64 8, !3772, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3778)
    #dbg_value(i64 120, !3772, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3778)
    #dbg_value(ptr poison, !2360, !DIExpression(), !3779)
    #dbg_value(ptr poison, !2372, !DIExpression(), !3781)
    #dbg_value(ptr %0, !2368, !DIExpression(), !3779)
    #dbg_value(ptr %0, !2377, !DIExpression(), !3781)
    #dbg_value(ptr %0, !2381, !DIExpression(), !3783)
    #dbg_value(ptr %0, !2390, !DIExpression(), !3785)
    #dbg_value(i64 8, !2369, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3779)
    #dbg_value(i64 8, !2378, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3781)
    #dbg_value(i64 8, !2387, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3783)
    #dbg_value(i64 8, !2393, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3785)
    #dbg_value(i64 120, !2369, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3779)
    #dbg_value(i64 120, !2378, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3781)
    #dbg_value(i64 120, !2387, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3783)
    #dbg_value(i64 120, !2393, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3785)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 120, i64 noundef 8) #20, !dbg !3787
  resume { ptr, i32 } %i.e, !dbg !3788

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtCsbHiBx3jRrxb_6anyhow5error9ErrorImplINtNtNtB4_3mem13manually_drop12ManuallyDropNtNtCsjx2R6KBUtVL_6rustls5error5ErrorEEEECslIemzedAtQF_5bench.exit: ; preds = %bb.a, %bb.b
    #dbg_value(ptr poison, !3762, !DIExpression(), !3789)
    #dbg_value(ptr %0, !3765, !DIExpression(), !3791)
    #dbg_value(i64 8, !3772, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3792)
    #dbg_value(i64 120, !3772, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3792)
    #dbg_value(ptr poison, !2360, !DIExpression(), !3793)
    #dbg_value(ptr poison, !2372, !DIExpression(), !3795)
    #dbg_value(ptr %0, !2368, !DIExpression(), !3793)
    #dbg_value(ptr %0, !2377, !DIExpression(), !3795)
    #dbg_value(ptr %0, !2381, !DIExpression(), !3797)
    #dbg_value(ptr %0, !2390, !DIExpression(), !3799)
    #dbg_value(i64 8, !2369, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3793)
    #dbg_value(i64 8, !2378, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3795)
    #dbg_value(i64 8, !2387, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3797)
    #dbg_value(i64 8, !2393, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3799)
    #dbg_value(i64 120, !2369, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3793)
    #dbg_value(i64 120, !2378, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3795)
    #dbg_value(i64 120, !2387, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3797)
    #dbg_value(i64 120, !2393, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3799)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 120, i64 noundef 8) #20, !dbg !3801
  ret void, !dbg !3802
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsbHiBx3jRrxb_6anyhow5error17object_drop_frontNtNtNtCshovLROGBtMy_11quinn_proto6crypto6rustls20NoInitialCipherSuiteECslIemzedAtQF_5bench(ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !3803 {
bb.a:
    #dbg_value(ptr %0, !3805, !DIExpression(), !3835)
    #dbg_declare(ptr %1, !3806, !DIExpression(), !3836)
    #dbg_value(ptr %0, !3807, !DIExpression(), !3837)
    #dbg_value(ptr %0, !3838, !DIExpression(), !3846)
    #dbg_value(ptr %0, !3838, !DIExpression(), !3846)
    #dbg_value(ptr undef, !3838, !DIExpression(DW_OP_deref), !3846)
    #dbg_value(ptr poison, !3848, !DIExpression(), !3854)
    #dbg_value(ptr %0, !3856, !DIExpression(), !3862)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3864
    #dbg_value(ptr %i.a, !2244, !DIExpression(), !3865)
  %i.b = load i64, ptr %i.a, align 8, !dbg !3867, !range !2255, !alias.scope !3868, !noundef !30
    #dbg_value(ptr %i.a, !2261, !DIExpression(), !3873)
    #dbg_value(ptr %i.a, !2269, !DIExpression(), !3875)
  %i.c = icmp eq i64 %i.b, 2, !dbg !3867
  br i1 %i.c, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtCsbHiBx3jRrxb_6anyhow5error9ErrorImplINtNtNtB4_3mem13manually_drop12ManuallyDropNtNtNtCshovLROGBtMy_11quinn_proto6crypto6rustls20NoInitialCipherSuiteEEEECslIemzedAtQF_5bench.exit, !dbg !3867

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !3877
    #dbg_value(ptr %i.d, !2280, !DIExpression(), !3878)
  invoke void @_RNvXs0_NtNtCsG258MDvU3F_3std4sync9lazy_lockINtB5_8LazyLockNtNtB9_9backtrace7CaptureNCNvNtBW_6helper12lazy_resolve0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslIemzedAtQF_5bench(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtCsbHiBx3jRrxb_6anyhow5error9ErrorImplINtNtNtB4_3mem13manually_drop12ManuallyDropNtNtNtCshovLROGBtMy_11quinn_proto6crypto6rustls20NoInitialCipherSuiteEEEECslIemzedAtQF_5bench.exit unwind label %bb.c, !dbg !3880

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !3881, !DIExpression(), !3894)
    #dbg_value(ptr %0, !3884, !DIExpression(), !3896)
    #dbg_value(i64 8, !3891, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3897)
    #dbg_value(i64 64, !3891, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3897)
    #dbg_value(ptr poison, !2360, !DIExpression(), !3898)
    #dbg_value(ptr poison, !2372, !DIExpression(), !3900)
    #dbg_value(ptr %0, !2368, !DIExpression(), !3898)
    #dbg_value(ptr %0, !2377, !DIExpression(), !3900)
    #dbg_value(ptr %0, !2381, !DIExpression(), !3902)
    #dbg_value(ptr %0, !2390, !DIExpression(), !3904)
    #dbg_value(i64 8, !2369, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3898)
    #dbg_value(i64 8, !2378, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3900)
    #dbg_value(i64 8, !2387, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3902)
    #dbg_value(i64 8, !2393, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3904)
    #dbg_value(i64 64, !2369, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3898)
    #dbg_value(i64 64, !2378, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3900)
    #dbg_value(i64 64, !2387, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3902)
    #dbg_value(i64 64, !2393, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3904)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 64, i64 noundef 8) #20, !dbg !3906
  resume { ptr, i32 } %i.e, !dbg !3907

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtCsbHiBx3jRrxb_6anyhow5error9ErrorImplINtNtNtB4_3mem13manually_drop12ManuallyDropNtNtNtCshovLROGBtMy_11quinn_proto6crypto6rustls20NoInitialCipherSuiteEEEECslIemzedAtQF_5bench.exit: ; preds = %bb.a, %bb.b
    #dbg_value(ptr poison, !3881, !DIExpression(), !3908)
    #dbg_value(ptr %0, !3884, !DIExpression(), !3910)
    #dbg_value(i64 8, !3891, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3911)
    #dbg_value(i64 64, !3891, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3911)
    #dbg_value(ptr poison, !2360, !DIExpression(), !3912)
    #dbg_value(ptr poison, !2372, !DIExpression(), !3914)
    #dbg_value(ptr %0, !2368, !DIExpression(), !3912)
    #dbg_value(ptr %0, !2377, !DIExpression(), !3914)
    #dbg_value(ptr %0, !2381, !DIExpression(), !3916)
    #dbg_value(ptr %0, !2390, !DIExpression(), !3918)
    #dbg_value(i64 8, !2369, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3912)
    #dbg_value(i64 8, !2378, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3914)
    #dbg_value(i64 8, !2387, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3916)
    #dbg_value(i64 8, !2393, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3918)
    #dbg_value(i64 64, !2369, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3912)
    #dbg_value(i64 64, !2378, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3914)
    #dbg_value(i64 64, !2387, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3916)
    #dbg_value(i64 64, !2393, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3918)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 64, i64 noundef 8) #20, !dbg !3920
  ret void, !dbg !3921
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvNtCsbHiBx3jRrxb_6anyhow5error23object_reallocate_boxedINtB2_12ContextErrorReNtNtCsB8MOEg02Qk_5quinn11send_stream10WriteErrorEECslIemzedAtQF_5bench(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !3922 {
bb.a:
    #dbg_value(ptr poison, !3927, !DIExpression(), !3935)
  %i.a = alloca [72 x i8], align 8                ; 5 uses
    #dbg_value(ptr %0, !3924, !DIExpression(), !3937)
    #dbg_value(ptr %0, !3925, !DIExpression(), !3938)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !3939
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !3939
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false), !dbg !3939
    #dbg_declare(ptr %i.a, !3940, !DIExpression(), !3950)
    #dbg_value(i64 8, !3952, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3972)
    #dbg_value(i64 8, !3974, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3998)
    #dbg_value(i64 8, !4000, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4008)
    #dbg_value(i64 72, !3952, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3972)
    #dbg_value(i64 72, !3974, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3998)
    #dbg_value(i64 72, !4000, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4008)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !3997, !DIExpression(), !3998)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !4006, !DIExpression(), !4008)
    #dbg_value(i8 0, !4007, !DIExpression(), !4008)
    #dbg_value(i64 8, !4010, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4042)
    #dbg_value(i64 8, !4044, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4047)
    #dbg_value(i64 72, !4010, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4042)
    #dbg_value(i64 72, !4044, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4047)
    #dbg_value(i1 false, !4016, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4042)
    #dbg_value(i64 72, !4017, !DIExpression(), !4049)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !dbg !4050, !noalias !4051
  %i.c = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 1, 73) 72, i64 noundef range(i64 1, 9) 8) #20, !dbg !4054, !noalias !4051 ; 3 uses
  %i.d = icmp eq ptr %i.c, null, !dbg !4055
  br i1 %i.d, label %bb.b, label %bb.g, !dbg !4056, !prof !4057

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #22
          to label %.noexc unwind label %bb.c, !dbg !4058

.noexc:                                           ; preds = %bb.b
  unreachable, !dbg !4058

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.a, !2291, !DIExpression(), !4059)
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !4061 ; 2 uses
    #dbg_value(ptr %i.f, !2302, !DIExpression(), !4062)
  %i.g = load i64, ptr %i.f, align 8, !dbg !4064, !range !2313, !alias.scope !4065, !noundef !30 ; 2 uses
  %i.h = icmp ne i64 %i.g, 11, !dbg !4064
  tail call void @llvm.assume(i1 %i.h), !dbg !4064
  %i.i = icmp samesign ult i64 %i.g, 10, !dbg !4064
  br i1 %i.i, label %bb.d, label %.body, !dbg !4064

bb.d:                                             ; preds = %bb.c
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshovLROGBtMy_11quinn_proto10connection15ConnectionErrorECslIemzedAtQF_5bench(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.f)
          to label %.body unwind label %bb.e, !dbg !4064

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !4070
  unreachable, !dbg !4070

.body:                                            ; preds = %bb.d, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3936
    #dbg_value(ptr %i.k, !2244, !DIExpression(), !4071)
  %i.l = load i64, ptr %i.k, align 8, !dbg !4073, !range !2255, !alias.scope !4074, !noundef !30
    #dbg_value(ptr %i.k, !2261, !DIExpression(), !4077)
    #dbg_value(ptr %i.k, !2269, !DIExpression(), !4079)
  %i.m = icmp eq i64 %i.l, 2, !dbg !4073
  br i1 %i.m, label %bb.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std9backtrace9BacktraceEECslIemzedAtQF_5bench.exit, !dbg !4073

bb.f:                                             ; preds = %.body
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !4081
    #dbg_value(ptr %i.n, !2280, !DIExpression(), !4082)
  invoke void @_RNvXs0_NtNtCsG258MDvU3F_3std4sync9lazy_lockINtB5_8LazyLockNtNtB9_9backtrace7CaptureNCNvNtBW_6helper12lazy_resolve0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslIemzedAtQF_5bench(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.n)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std9backtrace9BacktraceEECslIemzedAtQF_5bench.exit unwind label %bb.j, !dbg !4084

bb.g:                                             ; preds = %bb.a
    #dbg_value(ptr %i.c, !3947, !DIExpression(), !4085)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !dbg !4086
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !4087
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3936
    #dbg_value(ptr %i.o, !2244, !DIExpression(), !4088)
  %i.p = load i64, ptr %i.o, align 8, !dbg !4090, !range !2255, !alias.scope !4091, !noundef !30
    #dbg_value(ptr %i.o, !2261, !DIExpression(), !4094)
    #dbg_value(ptr %i.o, !2269, !DIExpression(), !4096)
  %i.q = icmp eq i64 %i.p, 2, !dbg !4090
  br i1 %i.q, label %bb.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std9backtrace9BacktraceEECslIemzedAtQF_5bench.exit19, !dbg !4090

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !4098
    #dbg_value(ptr %i.r, !2280, !DIExpression(), !4099)
  invoke void @_RNvXs0_NtNtCsG258MDvU3F_3std4sync9lazy_lockINtB5_8LazyLockNtNtB9_9backtrace7CaptureNCNvNtBW_6helper12lazy_resolve0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslIemzedAtQF_5bench(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.r)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std9backtrace9BacktraceEECslIemzedAtQF_5bench.exit19 unwind label %bb.i, !dbg !4101

bb.i:                                             ; preds = %bb.h
  %i.s = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !2331, !DIExpression(), !4102)
    #dbg_value(ptr %0, !2337, !DIExpression(), !4104)
    #dbg_value(i64 8, !2344, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4105)
    #dbg_value(i64 128, !2344, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4105)
    #dbg_value(ptr poison, !2360, !DIExpression(), !4106)
    #dbg_value(ptr poison, !2372, !DIExpression(), !4108)
    #dbg_value(ptr %0, !2368, !DIExpression(), !4106)
    #dbg_value(ptr %0, !2377, !DIExpression(), !4108)
    #dbg_value(ptr %0, !2381, !DIExpression(), !4110)
    #dbg_value(ptr %0, !2390, !DIExpression(), !4112)
    #dbg_value(i64 8, !2369, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4106)
    #dbg_value(i64 8, !2378, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4108)
    #dbg_value(i64 8, !2387, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4110)
    #dbg_value(i64 8, !2393, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4112)
    #dbg_value(i64 128, !2369, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4106)
    #dbg_value(i64 128, !2378, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4108)
    #dbg_value(i64 128, !2387, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4110)
    #dbg_value(i64 128, !2393, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4112)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 128, i64 noundef 8) #20, !dbg !4114
  br label %bb.k, !dbg !4115

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std9backtrace9BacktraceEECslIemzedAtQF_5bench.exit19: ; preds = %bb.g, %bb.h
    #dbg_value(ptr undef, !3927, !DIExpression(), !3935)
    #dbg_value(ptr %0, !3931, !DIExpression(), !4116)
    #dbg_value(i64 8, !3933, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4117)
    #dbg_value(i64 8, !4118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4123)
    #dbg_value(i64 8, !4125, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4130)
    #dbg_value(i64 8, !4132, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4136)
    #dbg_value(i64 8, !4138, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4142)
    #dbg_value(i64 128, !3933, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4117)
    #dbg_value(i64 128, !4118, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4123)
    #dbg_value(i64 128, !4125, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4130)
    #dbg_value(i64 128, !4132, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4136)
    #dbg_value(i64 128, !4138, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4142)
    #dbg_value(ptr undef, !4121, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4144)
    #dbg_value(ptr undef, !4128, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4145)
    #dbg_value(ptr %0, !4122, !DIExpression(), !4123)
    #dbg_value(ptr %0, !4129, !DIExpression(), !4130)
    #dbg_value(ptr %0, !4135, !DIExpression(), !4136)
    #dbg_value(ptr %0, !4141, !DIExpression(), !4142)
end_hunk_0
begin_hunk_1_@_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRNtNtCsgb4gPAseikh_12tracing_core4span2IdECslIemzedAtQF_5bench:._crit_edge.i.i.i.i.i
  %i.ai = xor i64 %i.ah, %i.ae, !dbg !6071        ; 3 uses
    #dbg_value(i64 %i.ai, !5782, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !6047)
    #dbg_value(i64 %i.ad, !5983, !DIExpression(), !6060)
    #dbg_value(i64 %i.ad, !6006, !DIExpression(), !6091)
    #dbg_value(i32 32, !6009, !DIExpression(), !6091)
  %i.aj = tail call noundef i64 @llvm.fshl.i64(i64 %i.ad, i64 %i.ad, i64 32), !dbg !6093
    #dbg_value(i64 %i.aj, !5782, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6047)
  %i.ak = xor i64 %i.ae, 576460752303423488, !dbg !6094
    #dbg_value(i64 %i.ak, !5782, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6047)
  %i.al = xor i64 %i.aj, 255, !dbg !6095
    #dbg_value(i64 %i.al, !5782, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6047)
    #dbg_value(ptr undef, !6040, !DIExpression(), !6043)
    #dbg_value(i32 13, !6096, !DIExpression(), !6100)
    #dbg_value(i32 16, !6096, !DIExpression(), !6102)
    #dbg_value(i32 32, !6096, !DIExpression(), !6104)
    #dbg_value(i32 17, !6096, !DIExpression(), !6106)
    #dbg_value(i32 21, !6096, !DIExpression(), !6108)
    #dbg_value(i32 32, !6096, !DIExpression(), !6110)
    #dbg_value(i32 13, !6096, !DIExpression(), !6112)
    #dbg_value(i32 16, !6096, !DIExpression(), !6115)
    #dbg_value(i32 32, !6096, !DIExpression(), !6117)
    #dbg_value(i32 17, !6096, !DIExpression(), !6119)
    #dbg_value(i32 21, !6096, !DIExpression(), !6121)
    #dbg_value(i32 32, !6096, !DIExpression(), !6123)
    #dbg_value(i32 13, !6096, !DIExpression(), !6125)
    #dbg_value(i32 16, !6096, !DIExpression(), !6128)
    #dbg_value(i32 32, !6096, !DIExpression(), !6130)
    #dbg_value(i32 17, !6096, !DIExpression(), !6132)
    #dbg_value(i32 21, !6096, !DIExpression(), !6134)
    #dbg_value(i32 32, !6096, !DIExpression(), !6136)
    #dbg_value(i64 %i.ak, !6138, !DIExpression(), !6142)
    #dbg_value(i64 %i.ag, !6141, !DIExpression(), !6142)
  %i.am = add i64 %i.ak, %i.ag, !dbg !6144        ; 3 uses
    #dbg_value(i64 %i.al, !6138, !DIExpression(), !6145)
    #dbg_value(i64 %i.ai, !6141, !DIExpression(), !6145)
  %i.an = add i64 %i.ai, %i.al, !dbg !6147        ; 2 uses
    #dbg_value(i64 %i.ag, !6099, !DIExpression(), !6100)
    #dbg_value(i64 %i.ag, !6006, !DIExpression(), !6148)
    #dbg_value(i32 13, !6009, !DIExpression(), !6148)
  %i.ao = tail call noundef i64 @llvm.fshl.i64(i64 %i.ag, i64 %i.ag, i64 13), !dbg !6150
  %i.ap = xor i64 %i.am, %i.ao, !dbg !6151        ; 3 uses
    #dbg_value(i64 %i.ai, !6099, !DIExpression(), !6102)
    #dbg_value(i64 %i.ai, !6006, !DIExpression(), !6152)
    #dbg_value(i32 16, !6009, !DIExpression(), !6152)
  %i.aq = tail call noundef i64 @llvm.fshl.i64(i64 %i.ai, i64 %i.ai, i64 16), !dbg !6154
  %i.ar = xor i64 %i.aq, %i.an, !dbg !6155        ; 3 uses
    #dbg_value(i64 %i.am, !6099, !DIExpression(), !6104)
    #dbg_value(i64 %i.am, !6006, !DIExpression(), !6156)
    #dbg_value(i32 32, !6009, !DIExpression(), !6156)
  %i.as = tail call noundef i64 @llvm.fshl.i64(i64 %i.am, i64 %i.am, i64 32), !dbg !6158
    #dbg_value(i64 %i.an, !6138, !DIExpression(), !6159)
    #dbg_value(i64 %i.ap, !6141, !DIExpression(), !6159)
  %i.at = add i64 %i.ap, %i.an, !dbg !6161        ; 3 uses
    #dbg_value(i64 %i.as, !6138, !DIExpression(), !6162)
    #dbg_value(i64 %i.ar, !6141, !DIExpression(), !6162)
  %i.au = add i64 %i.ar, %i.as, !dbg !6164        ; 2 uses
    #dbg_value(i64 %i.ap, !6099, !DIExpression(), !6106)
    #dbg_value(i64 %i.ap, !6006, !DIExpression(), !6165)
    #dbg_value(i32 17, !6009, !DIExpression(), !6165)
  %i.av = tail call noundef i64 @llvm.fshl.i64(i64 %i.ap, i64 %i.ap, i64 17), !dbg !6167
  %i.aw = xor i64 %i.at, %i.av, !dbg !6155        ; 3 uses
    #dbg_value(i64 %i.ar, !6099, !DIExpression(), !6108)
    #dbg_value(i64 %i.ar, !6006, !DIExpression(), !6168)
    #dbg_value(i32 21, !6009, !DIExpression(), !6168)
  %i.ax = tail call noundef i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 21), !dbg !6170
  %i.ay = xor i64 %i.ax, %i.au, !dbg !6151        ; 3 uses
    #dbg_value(i64 %i.at, !6099, !DIExpression(), !6110)
    #dbg_value(i64 %i.at, !6006, !DIExpression(), !6171)
    #dbg_value(i32 32, !6009, !DIExpression(), !6171)
  %i.az = tail call noundef i64 @llvm.fshl.i64(i64 %i.at, i64 %i.at, i64 32), !dbg !6173
    #dbg_value(i64 %i.au, !6138, !DIExpression(), !6174)
    #dbg_value(i64 %i.aw, !6141, !DIExpression(), !6174)
  %i.ba = add i64 %i.aw, %i.au, !dbg !6176        ; 3 uses
    #dbg_value(i64 %i.az, !6138, !DIExpression(), !6177)
    #dbg_value(i64 %i.ay, !6141, !DIExpression(), !6177)
  %i.bb = add i64 %i.ay, %i.az, !dbg !6179        ; 2 uses
    #dbg_value(i64 %i.aw, !6099, !DIExpression(), !6112)
    #dbg_value(i64 %i.aw, !6006, !DIExpression(), !6180)
    #dbg_value(i32 13, !6009, !DIExpression(), !6180)
  %i.bc = tail call noundef i64 @llvm.fshl.i64(i64 %i.aw, i64 %i.aw, i64 13), !dbg !6182
  %i.bd = xor i64 %i.bc, %i.ba, !dbg !6151        ; 3 uses
    #dbg_value(i64 %i.ay, !6099, !DIExpression(), !6115)
    #dbg_value(i64 %i.ay, !6006, !DIExpression(), !6183)
    #dbg_value(i32 16, !6009, !DIExpression(), !6183)
  %i.be = tail call noundef i64 @llvm.fshl.i64(i64 %i.ay, i64 %i.ay, i64 16), !dbg !6185
  %i.bf = xor i64 %i.be, %i.bb, !dbg !6155        ; 3 uses
    #dbg_value(i64 %i.ba, !6099, !DIExpression(), !6117)
    #dbg_value(i64 %i.ba, !6006, !DIExpression(), !6186)
    #dbg_value(i32 32, !6009, !DIExpression(), !6186)
  %i.bg = tail call noundef i64 @llvm.fshl.i64(i64 %i.ba, i64 %i.ba, i64 32), !dbg !6188
    #dbg_value(i64 %i.bb, !6138, !DIExpression(), !6189)
    #dbg_value(i64 %i.bd, !6141, !DIExpression(), !6189)
  %i.bh = add i64 %i.bd, %i.bb, !dbg !6191        ; 3 uses
    #dbg_value(i64 %i.bg, !6138, !DIExpression(), !6192)
    #dbg_value(i64 %i.bf, !6141, !DIExpression(), !6192)
  %i.bi = add i64 %i.bf, %i.bg, !dbg !6194        ; 2 uses
    #dbg_value(i64 %i.bd, !6099, !DIExpression(), !6119)
    #dbg_value(i64 %i.bd, !6006, !DIExpression(), !6195)
    #dbg_value(i32 17, !6009, !DIExpression(), !6195)
  %i.bj = tail call noundef i64 @llvm.fshl.i64(i64 %i.bd, i64 %i.bd, i64 17), !dbg !6197
  %i.bk = xor i64 %i.bj, %i.bh, !dbg !6155        ; 3 uses
    #dbg_value(i64 %i.bf, !6099, !DIExpression(), !6121)
    #dbg_value(i64 %i.bf, !6006, !DIExpression(), !6198)
    #dbg_value(i32 21, !6009, !DIExpression(), !6198)
  %i.bl = tail call noundef i64 @llvm.fshl.i64(i64 %i.bf, i64 %i.bf, i64 21), !dbg !6200
  %i.bm = xor i64 %i.bl, %i.bi, !dbg !6151        ; 3 uses
    #dbg_value(i64 %i.bh, !6099, !DIExpression(), !6123)
    #dbg_value(i64 %i.bh, !6006, !DIExpression(), !6201)
    #dbg_value(i32 32, !6009, !DIExpression(), !6201)
  %i.bn = tail call noundef i64 @llvm.fshl.i64(i64 %i.bh, i64 %i.bh, i64 32), !dbg !6203
    #dbg_value(i64 %i.bi, !6138, !DIExpression(), !6204)
    #dbg_value(i64 %i.bk, !6141, !DIExpression(), !6204)
  %i.bo = add i64 %i.bk, %i.bi, !dbg !6206
    #dbg_value(i64 %i.bn, !6138, !DIExpression(), !6207)
    #dbg_value(i64 %i.bm, !6141, !DIExpression(), !6207)
  %i.bp = add i64 %i.bm, %i.bn, !dbg !6209        ; 2 uses
    #dbg_value(i64 %i.bk, !6099, !DIExpression(), !6125)
    #dbg_value(i64 %i.bk, !6006, !DIExpression(), !6210)
    #dbg_value(i32 13, !6009, !DIExpression(), !6210)
  %i.bq = tail call noundef i64 @llvm.fshl.i64(i64 %i.bk, i64 %i.bk, i64 13), !dbg !6212
  %i.br = xor i64 %i.bq, %i.bo, !dbg !6151        ; 3 uses
    #dbg_value(i64 %i.bm, !6099, !DIExpression(), !6128)
    #dbg_value(i64 %i.bm, !6006, !DIExpression(), !6213)
    #dbg_value(i32 16, !6009, !DIExpression(), !6213)
  %i.bs = tail call noundef i64 @llvm.fshl.i64(i64 %i.bm, i64 %i.bm, i64 16), !dbg !6215
  %i.bt = xor i64 %i.bs, %i.bp, !dbg !6155        ; 2 uses
    #dbg_value(i64 %i.bo, !6099, !DIExpression(), !6130)
    #dbg_value(i64 %i.bo, !6006, !DIExpression(), !6216)
    #dbg_value(i32 32, !6009, !DIExpression(), !6216)
    #dbg_value(i64 %i.bp, !6138, !DIExpression(), !6218)
    #dbg_value(i64 %i.br, !6141, !DIExpression(), !6218)
  %i.bu = add i64 %i.br, %i.bp, !dbg !6220        ; 3 uses
    #dbg_value(i64 poison, !6138, !DIExpression(), !6221)
    #dbg_value(i64 %i.bt, !6141, !DIExpression(), !6221)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !5782, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !6047)
    #dbg_value(i64 %i.br, !6099, !DIExpression(), !6132)
    #dbg_value(i64 %i.br, !6006, !DIExpression(), !6223)
    #dbg_value(i32 17, !6009, !DIExpression(), !6223)
  %i.bv = tail call noundef i64 @llvm.fshl.i64(i64 %i.br, i64 %i.br, i64 17), !dbg !6225
    #dbg_value(!DIArgList(i64 %i.bv, i64 %i.bu), !5782, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 64), !6047)
    #dbg_value(i64 %i.bt, !6099, !DIExpression(), !6134)
    #dbg_value(i64 %i.bt, !6006, !DIExpression(), !6226)
    #dbg_value(i32 21, !6009, !DIExpression(), !6226)
  %i.bw = tail call noundef i64 @llvm.fshl.i64(i64 %i.bt, i64 %i.bt, i64 21), !dbg !6228
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !5782, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_xor, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 64), !6047)
    #dbg_value(i64 %i.bu, !6099, !DIExpression(), !6136)
    #dbg_value(i64 %i.bu, !6006, !DIExpression(), !6229)
    #dbg_value(i32 32, !6009, !DIExpression(), !6229)
  %i.bx = tail call noundef i64 @llvm.fshl.i64(i64 %i.bu, i64 %i.bu, i64 32), !dbg !6231
    #dbg_value(i64 %i.bx, !5782, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6047)
  %i.by = xor i64 %i.bw, %i.bv, !dbg !6232
  %i.bz = xor i64 %i.by, %i.bx, !dbg !6232
  %i.ca = xor i64 %i.bz, %i.bu, !dbg !6232
  ret i64 %i.ca, !dbg !6233
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRNtNtCsgb4gPAseikh_12tracing_core8callsite10IdentifierECslIemzedAtQF_5bench(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !6234 {
bb.a:
  %i.a = alloca [72 x i8], align 16               ; 11 uses
    #dbg_value(ptr %1, !6254, !DIExpression(), !6259)
    #dbg_value(ptr %1, !6254, !DIExpression(), !6259)
    #dbg_value(ptr %0, !6253, !DIExpression(), !6259)
    #dbg_declare(ptr %i.a, !6255, !DIExpression(), !6260)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !6261
    #dbg_value(ptr poison, !5950, !DIExpression(), !6262)
    #dbg_value(ptr poison, !5921, !DIExpression(), !6267)
    #dbg_value(i64 poison, !5929, !DIExpression(), !6268)
    #dbg_value(i64 poison, !5938, !DIExpression(), !6269)
    #dbg_value(i64 poison, !5935, !DIExpression(), !6268)
    #dbg_value(i64 poison, !5944, !DIExpression(), !6269)
    #dbg_value(i64 poison, !5945, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !6270)
    #dbg_value(i64 poison, !5945, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !6270)
    #dbg_value(i64 0, !5945, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !6270)
    #dbg_value(i64 0, !5945, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6270)
    #dbg_value(i64 0, !5945, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6270)
    #dbg_value(i64 0, !5945, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6270)
    #dbg_value(i64 0, !5945, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !6270)
    #dbg_value(i64 0, !5945, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !6270)
    #dbg_value(i64 0, !5945, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !6270)
    #dbg_value(ptr undef, !5950, !DIExpression(), !6262)
    #dbg_value(i64 0, !5945, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !6270)
    #dbg_value(i64 poison, !5945, !DIExpression(DW_OP_constu, 8317987319222330741, DW_OP_xor, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !6270)
    #dbg_value(i64 poison, !5945, !DIExpression(DW_OP_constu, 7237128888997146477, DW_OP_xor, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 64), !6270)
    #dbg_value(i64 poison, !5945, !DIExpression(DW_OP_constu, 7816392313619706465, DW_OP_xor, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !6270)
    #dbg_value(i64 poison, !5945, !DIExpression(DW_OP_constu, 8387220255154660723, DW_OP_xor, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 64), !6270)
    #dbg_value(i64 0, !5945, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !6270)
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !6271
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !6271 ; 2 uses
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !6271
  %.sroa.711.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !6271
  %i.b = load <2 x i64>, ptr %0, align 8, !dbg !6272 ; 3 uses
  %i.c = shufflevector <2 x i64> %i.b, <2 x i64> poison, <2 x i32> zeroinitializer, !dbg !6273
  %i.d = xor <2 x i64> %i.c, <i64 8317987319222330741, i64 7816392313619706465>, !dbg !6273
  store <2 x i64> %i.d, ptr %i.a, align 16, !dbg !6271, !alias.scope !6274
  %i.e = shufflevector <2 x i64> %i.b, <2 x i64> poison, <2 x i32> <i32 1, i32 1>, !dbg !6277
  %i.f = xor <2 x i64> %i.e, <i64 7237128888997146477, i64 8387220255154660723>, !dbg !6277
  store <2 x i64> %i.f, ptr %.sroa.59.0..sroa_idx.i, align 16, !dbg !6271, !alias.scope !6274
  store <2 x i64> %i.b, ptr %.sroa.711.0..sroa_idx.i, align 16, !dbg !6271, !alias.scope !6274
  %.sroa.913.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48, !dbg !6271 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.913.0..sroa_idx.i, i8 0, i64 24, i1 false), !dbg !6271, !alias.scope !6274
    #dbg_value(ptr undef, !6254, !DIExpression(DW_OP_deref), !6259)
    #dbg_value(ptr poison, !6278, !DIExpression(), !6287)
    #dbg_value(ptr %i.a, !6284, !DIExpression(), !6287)
  call void @_RINvXs3_NtCsgb4gPAseikh_12tracing_core8callsiteNtB6_10IdentifierNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECslIemzedAtQF_5bench(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a), !dbg !6289
    #dbg_value(ptr %i.a, !5803, !DIExpression(), !6290)
    #dbg_value(ptr %i.a, !5794, !DIExpression(), !6292)
    #dbg_value(ptr poison, !6040, !DIExpression(), !6294)
    #dbg_value(ptr poison, !5807, !DIExpression(), !6297)
    #dbg_value(ptr %i.a, !5774, !DIExpression(), !6299)
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 16, !dbg !6300, !alias.scope !6301
    #dbg_value(i64 %.sroa.0.0.copyload.i.i, !5782, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6306)
  %.sroa.10.0.copyload.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i, align 8, !dbg !6300, !alias.scope !6301
    #dbg_value(i64 %.sroa.10.0.copyload.i.i, !5782, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6306)
  %.sroa.17.0.copyload.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 16, !dbg !6300, !alias.scope !6301 ; 3 uses
    #dbg_value(i64 %.sroa.17.0.copyload.i.i, !5782, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6306)
  %.sroa.22.0.copyload.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i, align 8, !dbg !6300, !alias.scope !6301
    #dbg_value(i64 %.sroa.22.0.copyload.i.i, !5782, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !6306)
  %i.g = load i64, ptr %.sroa.913.0..sroa_idx.i, align 16, !dbg !6307, !alias.scope !6301, !noundef !30
  %i.h = shl i64 %i.g, 56, !dbg !6308
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56, !dbg !6309
  %i.j = load i64, ptr %i.i, align 8, !dbg !6309, !alias.scope !6301, !noundef !30
  %i.k = or i64 %i.h, %i.j, !dbg !6308            ; 2 uses
    #dbg_value(i64 %i.k, !5784, !DIExpression(), !6310)
  %i.l = xor i64 %i.k, %.sroa.22.0.copyload.i.i, !dbg !6311 ; 3 uses
    #dbg_value(i64 %i.l, !5782, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !6306)
    #dbg_value(ptr undef, !5807, !DIExpression(), !6297)
    #dbg_value(i32 13, !5976, !DIExpression(), !6312)
    #dbg_value(i32 16, !5976, !DIExpression(), !6314)
    #dbg_value(i32 32, !5976, !DIExpression(), !6316)
    #dbg_value(i32 17, !5976, !DIExpression(), !6318)
    #dbg_value(i32 21, !5976, !DIExpression(), !6320)
    #dbg_value(i32 32, !5976, !DIExpression(), !6322)
    #dbg_value(i64 %.sroa.0.0.copyload.i.i, !5996, !DIExpression(), !6324)
    #dbg_value(i64 %.sroa.17.0.copyload.i.i, !6001, !DIExpression(), !6324)
  %i.m = add i64 %.sroa.17.0.copyload.i.i, %.sroa.0.0.copyload.i.i, !dbg !6326 ; 3 uses
    #dbg_value(i64 %.sroa.10.0.copyload.i.i, !5996, !DIExpression(), !6327)
    #dbg_value(i64 %i.l, !6001, !DIExpression(), !6327)
  %i.n = add i64 %i.l, %.sroa.10.0.copyload.i.i, !dbg !6329 ; 2 uses
    #dbg_value(i64 %.sroa.17.0.copyload.i.i, !5983, !DIExpression(), !6312)
    #dbg_value(i64 %.sroa.17.0.copyload.i.i, !6006, !DIExpression(), !6330)
    #dbg_value(i32 13, !6009, !DIExpression(), !6330)
  %i.o = call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i, i64 %.sroa.17.0.copyload.i.i, i64 13), !dbg !6332
  %i.p = xor i64 %i.o, %i.m, !dbg !6333           ; 3 uses
    #dbg_value(i64 %i.l, !5983, !DIExpression(), !6314)
    #dbg_value(i64 %i.l, !6006, !DIExpression(), !6334)
    #dbg_value(i32 16, !6009, !DIExpression(), !6334)
  %i.q = call noundef i64 @llvm.fshl.i64(i64 %i.l, i64 %i.l, i64 16), !dbg !6336
  %i.r = xor i64 %i.q, %i.n, !dbg !6337           ; 3 uses
    #dbg_value(i64 %i.m, !5983, !DIExpression(), !6316)
    #dbg_value(i64 %i.m, !6006, !DIExpression(), !6338)
    #dbg_value(i32 32, !6009, !DIExpression(), !6338)
  %i.s = call noundef i64 @llvm.fshl.i64(i64 %i.m, i64 %i.m, i64 32), !dbg !6340
    #dbg_value(i64 %i.n, !5996, !DIExpression(), !6341)
    #dbg_value(i64 %i.p, !6001, !DIExpression(), !6341)
  %i.t = add i64 %i.n, %i.p, !dbg !6343           ; 3 uses
    #dbg_value(i64 %i.s, !5996, !DIExpression(), !6344)
    #dbg_value(i64 %i.r, !6001, !DIExpression(), !6344)
  %i.u = add i64 %i.r, %i.s, !dbg !6346           ; 2 uses
    #dbg_value(i64 %i.u, !5782, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6306)
    #dbg_value(i64 %i.p, !5983, !DIExpression(), !6318)
    #dbg_value(i64 %i.p, !6006, !DIExpression(), !6347)
    #dbg_value(i32 17, !6009, !DIExpression(), !6347)
  %i.v = call noundef i64 @llvm.fshl.i64(i64 %i.p, i64 %i.p, i64 17), !dbg !6349
  %i.w = xor i64 %i.t, %i.v, !dbg !6337           ; 3 uses
    #dbg_value(i64 %i.w, !5782, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6306)
    #dbg_value(i64 %i.r, !5983, !DIExpression(), !6320)
    #dbg_value(i64 %i.r, !6006, !DIExpression(), !6350)
    #dbg_value(i32 21, !6009, !DIExpression(), !6350)
  %i.x = call noundef i64 @llvm.fshl.i64(i64 %i.r, i64 %i.r, i64 21), !dbg !6352
  %i.y = xor i64 %i.x, %i.u, !dbg !6333           ; 3 uses
    #dbg_value(i64 %i.y, !5782, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !6306)
    #dbg_value(i64 %i.t, !5983, !DIExpression(), !6322)
    #dbg_value(i64 %i.t, !6006, !DIExpression(), !6353)
    #dbg_value(i32 32, !6009, !DIExpression(), !6353)
  %i.z = call noundef i64 @llvm.fshl.i64(i64 %i.t, i64 %i.t, i64 32), !dbg !6355
    #dbg_value(i64 %i.z, !5782, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6306)
  %i.aa = xor i64 %i.u, %i.k, !dbg !6356
    #dbg_value(i64 %i.aa, !5782, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6306)
  %i.ab = xor i64 %i.z, 255, !dbg !6357
    #dbg_value(i64 %i.ab, !5782, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6306)
    #dbg_value(ptr undef, !6040, !DIExpression(), !6294)
    #dbg_value(i32 13, !6096, !DIExpression(), !6358)
    #dbg_value(i32 16, !6096, !DIExpression(), !6360)
    #dbg_value(i32 32, !6096, !DIExpression(), !6362)
    #dbg_value(i32 17, !6096, !DIExpression(), !6364)
    #dbg_value(i32 21, !6096, !DIExpression(), !6366)
    #dbg_value(i32 32, !6096, !DIExpression(), !6368)
    #dbg_value(i32 13, !6096, !DIExpression(), !6370)
    #dbg_value(i32 16, !6096, !DIExpression(), !6372)
    #dbg_value(i32 32, !6096, !DIExpression(), !6374)
    #dbg_value(i32 17, !6096, !DIExpression(), !6376)
    #dbg_value(i32 21, !6096, !DIExpression(), !6378)
    #dbg_value(i32 32, !6096, !DIExpression(), !6380)
    #dbg_value(i32 13, !6096, !DIExpression(), !6382)
    #dbg_value(i32 16, !6096, !DIExpression(), !6384)
    #dbg_value(i32 32, !6096, !DIExpression(), !6386)
    #dbg_value(i32 17, !6096, !DIExpression(), !6388)
    #dbg_value(i32 21, !6096, !DIExpression(), !6390)
    #dbg_value(i32 32, !6096, !DIExpression(), !6392)
    #dbg_value(i64 %i.aa, !6138, !DIExpression(), !6394)
    #dbg_value(i64 %i.w, !6141, !DIExpression(), !6394)
  %i.ac = add i64 %i.aa, %i.w, !dbg !6396         ; 3 uses
    #dbg_value(i64 %i.ab, !6138, !DIExpression(), !6397)
    #dbg_value(i64 %i.y, !6141, !DIExpression(), !6397)
  %i.ad = add i64 %i.y, %i.ab, !dbg !6399         ; 2 uses
    #dbg_value(i64 %i.w, !6099, !DIExpression(), !6358)
    #dbg_value(i64 %i.w, !6006, !DIExpression(), !6400)
    #dbg_value(i32 13, !6009, !DIExpression(), !6400)
  %i.ae = call noundef i64 @llvm.fshl.i64(i64 %i.w, i64 %i.w, i64 13), !dbg !6402
  %i.af = xor i64 %i.ac, %i.ae, !dbg !6403        ; 3 uses
    #dbg_value(i64 %i.y, !6099, !DIExpression(), !6360)
    #dbg_value(i64 %i.y, !6006, !DIExpression(), !6404)
    #dbg_value(i32 16, !6009, !DIExpression(), !6404)
  %i.ag = call noundef i64 @llvm.fshl.i64(i64 %i.y, i64 %i.y, i64 16), !dbg !6406
  %i.ah = xor i64 %i.ag, %i.ad, !dbg !6407        ; 3 uses
    #dbg_value(i64 %i.ac, !6099, !DIExpression(), !6362)
    #dbg_value(i64 %i.ac, !6006, !DIExpression(), !6408)
    #dbg_value(i32 32, !6009, !DIExpression(), !6408)
  %i.ai = call noundef i64 @llvm.fshl.i64(i64 %i.ac, i64 %i.ac, i64 32), !dbg !6410
    #dbg_value(i64 %i.ad, !6138, !DIExpression(), !6411)
    #dbg_value(i64 %i.af, !6141, !DIExpression(), !6411)
  %i.aj = add i64 %i.af, %i.ad, !dbg !6413        ; 3 uses
    #dbg_value(i64 %i.ai, !6138, !DIExpression(), !6414)
    #dbg_value(i64 %i.ah, !6141, !DIExpression(), !6414)
  %i.ak = add i64 %i.ah, %i.ai, !dbg !6416        ; 2 uses
    #dbg_value(i64 %i.af, !6099, !DIExpression(), !6364)
    #dbg_value(i64 %i.af, !6006, !DIExpression(), !6417)
    #dbg_value(i32 17, !6009, !DIExpression(), !6417)
  %i.al = call noundef i64 @llvm.fshl.i64(i64 %i.af, i64 %i.af, i64 17), !dbg !6419
  %i.am = xor i64 %i.aj, %i.al, !dbg !6407        ; 3 uses
    #dbg_value(i64 %i.ah, !6099, !DIExpression(), !6366)
    #dbg_value(i64 %i.ah, !6006, !DIExpression(), !6420)
    #dbg_value(i32 21, !6009, !DIExpression(), !6420)
  %i.an = call noundef i64 @llvm.fshl.i64(i64 %i.ah, i64 %i.ah, i64 21), !dbg !6422
  %i.ao = xor i64 %i.an, %i.ak, !dbg !6403        ; 3 uses
    #dbg_value(i64 %i.aj, !6099, !DIExpression(), !6368)
    #dbg_value(i64 %i.aj, !6006, !DIExpression(), !6423)
    #dbg_value(i32 32, !6009, !DIExpression(), !6423)
  %i.ap = call noundef i64 @llvm.fshl.i64(i64 %i.aj, i64 %i.aj, i64 32), !dbg !6425
    #dbg_value(i64 %i.ak, !6138, !DIExpression(), !6426)
    #dbg_value(i64 %i.am, !6141, !DIExpression(), !6426)
  %i.aq = add i64 %i.am, %i.ak, !dbg !6428        ; 3 uses
    #dbg_value(i64 %i.ap, !6138, !DIExpression(), !6429)
    #dbg_value(i64 %i.ao, !6141, !DIExpression(), !6429)
  %i.ar = add i64 %i.ao, %i.ap, !dbg !6431        ; 2 uses
    #dbg_value(i64 %i.am, !6099, !DIExpression(), !6370)
    #dbg_value(i64 %i.am, !6006, !DIExpression(), !6432)
    #dbg_value(i32 13, !6009, !DIExpression(), !6432)
  %i.as = call noundef i64 @llvm.fshl.i64(i64 %i.am, i64 %i.am, i64 13), !dbg !6434
  %i.at = xor i64 %i.as, %i.aq, !dbg !6403        ; 3 uses
    #dbg_value(i64 %i.ao, !6099, !DIExpression(), !6372)
    #dbg_value(i64 %i.ao, !6006, !DIExpression(), !6435)
    #dbg_value(i32 16, !6009, !DIExpression(), !6435)
  %i.au = call noundef i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 16), !dbg !6437
  %i.av = xor i64 %i.au, %i.ar, !dbg !6407        ; 3 uses
    #dbg_value(i64 %i.aq, !6099, !DIExpression(), !6374)
    #dbg_value(i64 %i.aq, !6006, !DIExpression(), !6438)
    #dbg_value(i32 32, !6009, !DIExpression(), !6438)
  %i.aw = call noundef i64 @llvm.fshl.i64(i64 %i.aq, i64 %i.aq, i64 32), !dbg !6440
    #dbg_value(i64 %i.ar, !6138, !DIExpression(), !6441)
    #dbg_value(i64 %i.at, !6141, !DIExpression(), !6441)
  %i.ax = add i64 %i.at, %i.ar, !dbg !6443        ; 3 uses
    #dbg_value(i64 %i.aw, !6138, !DIExpression(), !6444)
    #dbg_value(i64 %i.av, !6141, !DIExpression(), !6444)
  %i.ay = add i64 %i.av, %i.aw, !dbg !6446        ; 2 uses
    #dbg_value(i64 %i.at, !6099, !DIExpression(), !6376)
    #dbg_value(i64 %i.at, !6006, !DIExpression(), !6447)
    #dbg_value(i32 17, !6009, !DIExpression(), !6447)
  %i.az = call noundef i64 @llvm.fshl.i64(i64 %i.at, i64 %i.at, i64 17), !dbg !6449
  %i.ba = xor i64 %i.az, %i.ax, !dbg !6407        ; 3 uses
    #dbg_value(i64 %i.av, !6099, !DIExpression(), !6378)
    #dbg_value(i64 %i.av, !6006, !DIExpression(), !6450)
    #dbg_value(i32 21, !6009, !DIExpression(), !6450)
  %i.bb = call noundef i64 @llvm.fshl.i64(i64 %i.av, i64 %i.av, i64 21), !dbg !6452
  %i.bc = xor i64 %i.bb, %i.ay, !dbg !6403        ; 3 uses
    #dbg_value(i64 %i.ax, !6099, !DIExpression(), !6380)
    #dbg_value(i64 %i.ax, !6006, !DIExpression(), !6453)
    #dbg_value(i32 32, !6009, !DIExpression(), !6453)
  %i.bd = call noundef i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 32), !dbg !6455
    #dbg_value(i64 %i.ay, !6138, !DIExpression(), !6456)
    #dbg_value(i64 %i.ba, !6141, !DIExpression(), !6456)
  %i.be = add i64 %i.ba, %i.ay, !dbg !6458
    #dbg_value(i64 %i.bd, !6138, !DIExpression(), !6459)
    #dbg_value(i64 %i.bc, !6141, !DIExpression(), !6459)
  %i.bf = add i64 %i.bc, %i.bd, !dbg !6461        ; 2 uses
    #dbg_value(i64 %i.ba, !6099, !DIExpression(), !6382)
    #dbg_value(i64 %i.ba, !6006, !DIExpression(), !6462)
    #dbg_value(i32 13, !6009, !DIExpression(), !6462)
  %i.bg = call noundef i64 @llvm.fshl.i64(i64 %i.ba, i64 %i.ba, i64 13), !dbg !6464
  %i.bh = xor i64 %i.bg, %i.be, !dbg !6403        ; 3 uses
    #dbg_value(i64 %i.bc, !6099, !DIExpression(), !6384)
    #dbg_value(i64 %i.bc, !6006, !DIExpression(), !6465)
    #dbg_value(i32 16, !6009, !DIExpression(), !6465)
  %i.bi = call noundef i64 @llvm.fshl.i64(i64 %i.bc, i64 %i.bc, i64 16), !dbg !6467
  %i.bj = xor i64 %i.bi, %i.bf, !dbg !6407        ; 2 uses
    #dbg_value(i64 %i.be, !6099, !DIExpression(), !6386)
    #dbg_value(i64 %i.be, !6006, !DIExpression(), !6468)
    #dbg_value(i32 32, !6009, !DIExpression(), !6468)
    #dbg_value(i64 %i.bf, !6138, !DIExpression(), !6470)
    #dbg_value(i64 %i.bh, !6141, !DIExpression(), !6470)
end_hunk_1
