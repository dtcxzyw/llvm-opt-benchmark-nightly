Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/build_script_build.build_script_build.9e51834dcc762beb-cgu.1?download=true
inline.NumInlined: 160
inline.NumDeleted: 97
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [95 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/globwalk-0.9.1/src/lib.rs\00", align 1
@1 = private unnamed_addr constant [1 x i8] c".", align 1
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"^\00\00\00\00\00\00\00\B9\01\00\00$\00\00\00" }>, align 8
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"^\00\00\00\00\00\00\00\BD\01\00\002\00\00\00" }>, align 8
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"^\00\00\00\00\00\00\00\AA\01\00\00-\00\00\00" }>, align 8
@5 = private unnamed_addr constant [1 x i8] c"*", align 1
@6 = private unnamed_addr constant [1 x i8] c"{", align 1
@7 = private unnamed_addr constant [1 x i8] c"}", align 1
@8 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @5, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @6, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @7, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"^\00\00\00\00\00\00\00\AB\01\00\00&\00\00\00" }>, align 8
@10 = private unnamed_addr constant <{ ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCsgQ5TqoB4KuO_6anyhow5error11object_dropINtB2_12ContextErrorNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCskKLDkoKarTP_4core2io5error5ErrorEECsdAIXAMGuHRT_18build_script_build, ptr @_RINvNtCsgQ5TqoB4KuO_6anyhow5error10object_refINtB2_12ContextErrorNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCskKLDkoKarTP_4core2io5error5ErrorEECsdAIXAMGuHRT_18build_script_build, ptr @_RINvNtCsgQ5TqoB4KuO_6anyhow5error12object_boxedINtB2_12ContextErrorNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCskKLDkoKarTP_4core2io5error5ErrorEECsdAIXAMGuHRT_18build_script_build, ptr @_RINvNtCsgQ5TqoB4KuO_6anyhow5error23object_reallocate_boxedINtB2_12ContextErrorNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCskKLDkoKarTP_4core2io5error5ErrorEECsdAIXAMGuHRT_18build_script_build, ptr @_RINvNtCsgQ5TqoB4KuO_6anyhow5error16context_downcastNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCskKLDkoKarTP_4core2io5error5ErrorECsdAIXAMGuHRT_18build_script_build, ptr @_RINvNtCsgQ5TqoB4KuO_6anyhow5error17context_drop_restNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCskKLDkoKarTP_4core2io5error5ErrorECsdAIXAMGuHRT_18build_script_build }>, align 8
@11 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"^\00\00\00\00\00\00\00\B9\00\00\00!\00\00\00" }>, align 8
@12 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvNtCsG258MDvU3F_3std2rt10lang_startuE0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuE9call_once6vtableCsdAIXAMGuHRT_18build_script_build, ptr @_RNCINvNtCsG258MDvU3F_3std2rt10lang_startuE0CsdAIXAMGuHRT_18build_script_build, ptr @_RNCINvNtCsG258MDvU3F_3std2rt10lang_startuE0CsdAIXAMGuHRT_18build_script_build }>, align 8
@13 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgQ5TqoB4KuO_6anyhow5error12ContextErrorNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtB4_2io5error5ErrorEECsdAIXAMGuHRT_18build_script_build, [16 x i8] c" \00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1_NtCsgQ5TqoB4KuO_6anyhow7contextINtNtB7_5error12ContextErrorNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCskKLDkoKarTP_4core2io5error5ErrorENtNtB1K_3fmt7Display3fmtCsdAIXAMGuHRT_18build_script_build }>, align 8
@14 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgQ5TqoB4KuO_6anyhow5error12ContextErrorNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtB4_2io5error5ErrorEECsdAIXAMGuHRT_18build_script_build, [16 x i8] c" \00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs0_NtCsgQ5TqoB4KuO_6anyhow7contextINtNtB7_5error12ContextErrorNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCskKLDkoKarTP_4core2io5error5ErrorENtNtB1K_3fmt5Debug3fmtCsdAIXAMGuHRT_18build_script_build, ptr @_RNvXs1_NtCsgQ5TqoB4KuO_6anyhow7contextINtNtB7_5error12ContextErrorNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCskKLDkoKarTP_4core2io5error5ErrorENtNtB1K_3fmt7Display3fmtCsdAIXAMGuHRT_18build_script_build, ptr @13, ptr @_RNvXs2_NtCsgQ5TqoB4KuO_6anyhow7contextINtNtB7_5error12ContextErrorNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCskKLDkoKarTP_4core2io5error5ErrorENtNtB1K_5error5Error6sourceCsdAIXAMGuHRT_18build_script_build, ptr @_RNvYINtNtCsgQ5TqoB4KuO_6anyhow5error12ContextErrorNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCskKLDkoKarTP_4core2io5error5ErrorENtNtB1u_5error5Error7type_idCsdAIXAMGuHRT_18build_script_build, ptr @_RNvYINtNtCsgQ5TqoB4KuO_6anyhow5error12ContextErrorNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCskKLDkoKarTP_4core2io5error5ErrorENtNtB1u_5error5Error11descriptionCsdAIXAMGuHRT_18build_script_build, ptr @_RNvYINtNtCsgQ5TqoB4KuO_6anyhow5error12ContextErrorNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCskKLDkoKarTP_4core2io5error5ErrorENtNtB1u_5error5Error5causeCsdAIXAMGuHRT_18build_script_build, ptr @_RNvXs2_NtCsgQ5TqoB4KuO_6anyhow7contextINtNtB7_5error12ContextErrorNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCskKLDkoKarTP_4core2io5error5ErrorENtNtB1K_5error5Error7provideCsdAIXAMGuHRT_18build_script_build }>, align 8
@15 = private unnamed_addr constant [97 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/anyhow-1.0.104/src/error.rs\00", align 1
@16 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @15, [16 x i8] c"`\00\00\00\00\00\00\00\F9\02\00\00\09\00\00\00" }>, align 8
@17 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgQ5TqoB4KuO_6anyhow5error9ErrorImplINtBE_12ContextErrorNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtB4_2io5error5ErrorEEECsdAIXAMGuHRT_18build_script_build, [16 x i8] c"X\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs9_NtCsgQ5TqoB4KuO_6anyhow5errorINtB5_9ErrorImplINtB5_12ContextErrorNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCskKLDkoKarTP_4core2io5error5ErrorEENtNtB1Q_3fmt7Display3fmtCsdAIXAMGuHRT_18build_script_build }>, align 8
@18 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgQ5TqoB4KuO_6anyhow5error9ErrorImplINtBE_12ContextErrorNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtB4_2io5error5ErrorEEECsdAIXAMGuHRT_18build_script_build, [16 x i8] c"X\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs8_NtCsgQ5TqoB4KuO_6anyhow5errorINtB5_9ErrorImplINtB5_12ContextErrorNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCskKLDkoKarTP_4core2io5error5ErrorEENtNtB1Q_3fmt5Debug3fmtCsdAIXAMGuHRT_18build_script_build, ptr @_RNvXs9_NtCsgQ5TqoB4KuO_6anyhow5errorINtB5_9ErrorImplINtB5_12ContextErrorNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCskKLDkoKarTP_4core2io5error5ErrorEENtNtB1Q_3fmt7Display3fmtCsdAIXAMGuHRT_18build_script_build, ptr @17, ptr @_RNvXs7_NtCsgQ5TqoB4KuO_6anyhow5errorINtB5_9ErrorImplINtB5_12ContextErrorNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCskKLDkoKarTP_4core2io5error5ErrorEENtNtB1Q_5error5Error6sourceCsdAIXAMGuHRT_18build_script_build, ptr @_RNvYINtNtCsgQ5TqoB4KuO_6anyhow5error9ErrorImplINtB5_12ContextErrorNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCskKLDkoKarTP_4core2io5error5ErrorEENtNtB1K_5error5Error7type_idCsdAIXAMGuHRT_18build_script_build, ptr @_RNvYINtNtCsgQ5TqoB4KuO_6anyhow5error9ErrorImplINtB5_12ContextErrorNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCskKLDkoKarTP_4core2io5error5ErrorEENtNtB1K_5error5Error11descriptionCsdAIXAMGuHRT_18build_script_build, ptr @_RNvYINtNtCsgQ5TqoB4KuO_6anyhow5error9ErrorImplINtB5_12ContextErrorNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCskKLDkoKarTP_4core2io5error5ErrorEENtNtB1K_5error5Error5causeCsdAIXAMGuHRT_18build_script_build, ptr @_RNvXs7_NtCsgQ5TqoB4KuO_6anyhow5errorINtB5_9ErrorImplINtB5_12ContextErrorNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCskKLDkoKarTP_4core2io5error5ErrorEENtNtB1Q_5error5Error7provideCsdAIXAMGuHRT_18build_script_build }>, align 8
@19 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @15, [16 x i8] c"`\00\00\00\00\00\00\00;\03\00\00%\00\00\00" }>, align 8
@20 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @15, [16 x i8] c"`\00\00\00\00\00\00\007\03\00\00%\00\00\00" }>, align 8
@21 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @5, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@22 = private unnamed_addr constant [2 x i8] c"/*", align 1
@23 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ5TqoB4KuO_6anyhow5ErrorECs9Fz3Nxyg3zf_14protobuf_parse, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs3_NtCsgQ5TqoB4KuO_6anyhow5errorNtB7_5ErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt }>, align 8
@24 = private unnamed_addr constant [81 x i8] c"/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed/library/core/src/char/methods.rs\00", align 1
@25 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @24, [16 x i8] c"P\00\00\00\00\00\00\00\DA\09\00\00\09\00\00\00" }>, align 8
@26 = private unnamed_addr constant [71 x i8] c"\12encode_utf8: need \C0\13 bytes to encode U+\C3 \00\00i\04\00\15 but buffer has just \C0\00", align 1
@27 = private unnamed_addr constant [5 x i8] c"Error", align 1
@28 = private unnamed_addr constant [7 x i8] c"context", align 1
@29 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs4_NtCsgQ5TqoB4KuO_6anyhow7contextINtB5_6QuotedRNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCs9Fz3Nxyg3zf_14protobuf_parse }>, align 8
@30 = private unnamed_addr constant [6 x i8] c"source", align 1
@31 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5YNYYMCeUDn_8protobuf, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNtNtCskKLDkoKarTP_4core2io5errorNtB2_5ErrorNtNtB6_3fmt5Debug3fmt }>, align 8
@32 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5YNYYMCeUDn_8protobuf, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt }>, align 8
@33 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5YNYYMCeUDn_8protobuf, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNtNtCskKLDkoKarTP_4core2io5errorNtB2_5ErrorNtNtB6_3fmt5Debug3fmt, ptr @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr @32, ptr @_RNvXs4_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_5error5Error6source, ptr @_RNvYNtNtNtCskKLDkoKarTP_4core2io5error5ErrorNtNtB8_5error5Error7type_idCsyeC6ktic4j_8tempfile, ptr @_RNvYNtNtNtCskKLDkoKarTP_4core2io5error5ErrorNtNtB8_5error5Error11descriptionCsyeC6ktic4j_8tempfile, ptr @_RNvXs4_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_5error5Error5cause, ptr @_RNvYNtNtNtCskKLDkoKarTP_4core2io5error5ErrorNtNtB8_5error5Error7provideCsyeC6ktic4j_8tempfile }>, align 8
@34 = private unnamed_addr constant [5 x i8] c"depth", align 1
@35 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsZ_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_5Debug3fmtCsdAIXAMGuHRT_18build_script_build }>, align 8
@36 = private unnamed_addr constant [5 x i8] c"inner", align 1
@37 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsjL3H11RzO0w_7walkdir5error10ErrorInnerNtB6_5Debug3fmtBA_ }>, align 8
@38 = private unnamed_addr constant [9 x i8] c"GlobError", align 1
@39 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtCsfLixTUEF4oz_6ignore5ErrorNtB6_5Debug3fmtBy_ }>, align 8
@40 = private unnamed_addr constant [1 x i8] c"\0B", align 1
@41 = private unnamed_addr constant [113 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/protobuf-3.7.2/src/reflect/runtime_types.rs\00", align 1
@42 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @41, [16 x i8] c"p\00\00\00\00\00\00\00\B4\03\00\00\09\00\00\00" }>, align 8
@43 = private unnamed_addr constant [10 x i8] c"NotPresent", align 1
@44 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringNtB6_5Debug3fmtCs1MS712VqFlc_16protobuf_codegen }>, align 8
@45 = private unnamed_addr constant [10 x i8] c"NotUnicode", align 1
@46 = private unnamed_addr constant [40 x i8] c"description() is deprecated; use Display", align 1
@47 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 7166783705366675330 to ptr), ptr inttoptr (i64 -5017678092987224044 to ptr) }>, align 8
@48 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -2492009861691147657 to ptr), ptr inttoptr (i64 -2210800241442349568 to ptr) }>, align 8
@49 = private unnamed_addr constant [99 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/protobuf-3.7.2/src/message.rs\00", align 1
@50 = private unnamed_addr constant [13 x i8] c"ModuleOptions", align 1
@51 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @49, [16 x i8] c"b\00\00\00\00\00\00\00\90\00\00\00M\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvCseVyiZOR58h4_8globwalk4globNtNtCsexYYUdYSQU6_5alloc6string6StringECsdAIXAMGuHRT_18build_script_build(ptr sret([288 x i8]) align 8 %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 9 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [72 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [56 x i8], align 8                ; 4 uses
  %i.k = alloca [56 x i8], align 8                ; 4 uses
  %i.l = alloca [56 x i8], align 8                ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [56 x i8], align 8                ; 5 uses
  %i.o = alloca [56 x i8], align 8                ; 6 uses
  %i.p = alloca [64 x i8], align 8                ; 4 uses
  %i.q = alloca [64 x i8], align 8                ; 4 uses
  %i.r = alloca [64 x i8], align 8                ; 4 uses
  %i.s = alloca [24 x i8], align 8                ; 7 uses
  %i.t = alloca [24 x i8], align 8                ; 7 uses
  %i.u = alloca [24 x i8], align 8                ; 7 uses
  %i.v = alloca [24 x i8], align 8                ; 5 uses
  %i.w = alloca [136 x i8], align 8               ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.x = invoke { ptr, i64 } @_RNvXsH_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringINtNtCskKLDkoKarTP_4core7convert5AsRefeE6as_refCsdAIXAMGuHRT_18build_script_build(ptr nonnull align 8 %i.v)
          to label %bb.d unwind label %bb.b, !noalias !14 ; 2 uses

2:                                                ; preds = %.body.i
  br i1 %.sroa.03.2.i, label %bb.ay, label %bb.ax

bb.b:                                             ; preds = %bb.d, %bb.a
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.c:                                             ; preds = %bb.u
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.af, label %bb.ay, label %bb.ax

bb.d:                                             ; preds = %bb.a
  %i.z = extractvalue { ptr, i64 } %i.x, 0
  %i.aa = extractvalue { ptr, i64 } %i.x, 1
  invoke void @_RNvXsz_NtCsG258MDvU3F_3std4pathNtB5_7PathBufINtNtCskKLDkoKarTP_4core7convert4FromReE4fromCsfLixTUEF4oz_6ignore(ptr nonnull sret([24 x i8]) align 8 %i.u, ptr %i.z, i64 %i.aa) #24
          to label %_RNvXs1_NtCskKLDkoKarTP_4core7convertReINtB5_4IntoNtNtCsG258MDvU3F_3std4path7PathBufE4intoCsdAIXAMGuHRT_18build_script_build.exit.i unwind label %bb.b, !noalias !14

_RNvXs1_NtCskKLDkoKarTP_4core7convertReINtB5_4IntoNtNtCsG258MDvU3F_3std4path7PathBufE4intoCsdAIXAMGuHRT_18build_script_build.exit.i: ; preds = %bb.d
  %i.ab = invoke { ptr, i64 } @_RNvXsH_NtCsG258MDvU3F_3std4pathNtB5_7PathBufNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsdAIXAMGuHRT_18build_script_build(ptr nonnull align 8 %i.u)
          to label %bb.f unwind label %bb.e, !noalias !14 ; 2 uses

.body.i:                                          ; preds = %bb.w, %.body.i.i, %bb.e
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %bb.w ], [ %i.ac, %bb.e ], [ %eh.lpad-body.i.i, %.body.i.i ] ; 2 uses
  %.sroa.03.2.i = phi i1 [ true, %bb.w ], [ %.sroa.03.3.i, %bb.e ], [ false, %.body.i.i ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECsyeC6ktic4j_8tempfile(ptr nonnull align 8 %i.u) #25
          to label %2 unwind label %bb.aw, !noalias !14

bb.e:                                             ; preds = %bb.ak, %bb.t, %bb.r, %bb.f, %_RNvXs1_NtCskKLDkoKarTP_4core7convertReINtB5_4IntoNtNtCsG258MDvU3F_3std4path7PathBufE4intoCsdAIXAMGuHRT_18build_script_build.exit.i
  %.sroa.03.3.i = phi i1 [ true, %bb.ak ], [ true, %bb.t ], [ false, %bb.r ], [ true, %bb.f ], [ true, %_RNvXs1_NtCskKLDkoKarTP_4core7convertReINtB5_4IntoNtNtCsG258MDvU3F_3std4path7PathBufE4intoCsdAIXAMGuHRT_18build_script_build.exit.i ]
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.f:                                             ; preds = %_RNvXs1_NtCskKLDkoKarTP_4core7convertReINtB5_4IntoNtNtCsG258MDvU3F_3std4path7PathBufE4intoCsdAIXAMGuHRT_18build_script_build.exit.i
  %i.ad = extractvalue { ptr, i64 } %i.ab, 0
  %i.ae = extractvalue { ptr, i64 } %i.ab, 1
  %i.af = invoke zeroext i1 @_RNvMs16_NtCsG258MDvU3F_3std4pathNtB6_4Path11is_absolute(ptr %i.ad, i64 %i.ae)
          to label %bb.g unwind label %bb.e, !noalias !14 ; 3 uses

bb.g:                                             ; preds = %bb.f
  br i1 %i.af, label %bb.t, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false), !noalias !14
  call void @llvm.experimental.noalias.scope.decl(metadata !15)
  call void @llvm.experimental.noalias.scope.decl(metadata !16)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !17
  store ptr @1, ptr %i.h, align 8, !noalias !18
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store i64 1, ptr %i.ag, align 8, !noalias !18
  %i.ah = invoke { ptr, i64 } @_RNvXNtCskKLDkoKarTP_4core7convertReINtB2_5AsRefNtNtCsG258MDvU3F_3std4path4PathE6as_refCs7w4qHFuqA31_14iana_time_zone(ptr nonnull align 8 %i.h) #24
          to label %.noexc.i.i unwind label %bb.q, !noalias !17 ; 2 uses

.noexc.i.i:                                       ; preds = %bb.h
  %i.ai = extractvalue { ptr, i64 } %i.ah, 0
  %i.aj = extractvalue { ptr, i64 } %i.ah, 1
  invoke void @_RNvXs1_NtCskKLDkoKarTP_4core7convertRNtNtCsG258MDvU3F_3std4path4PathINtB5_4IntoNtBB_7PathBufE4intoCsyeC6ktic4j_8tempfile(ptr nonnull sret([24 x i8]) align 8 %i.g, ptr %i.ai, i64 %i.aj, ptr nonnull align 8 @11) #24
          to label %.noexc1.i.i unwind label %bb.q, !noalias !17

.noexc1.i.i:                                      ; preds = %.noexc.i.i
  %i.ak = invoke { ptr, ptr } @_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsexYYUdYSQU6_5alloc6string6String4iterCs5YNYYMCeUDn_8protobuf(ptr nonnull align 8 %i.i, i64 1)
          to label %bb.k unwind label %bb.j, !noalias !18 ; 2 uses

bb.i:                                             ; preds = %.body.i.i.i, %bb.j
  %.pn.i.i.i = phi { ptr, i32 } [ %i.aw, %.body.i.i.i ], [ %i.al, %bb.j ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECsyeC6ktic4j_8tempfile(ptr nonnull align 8 %i.g) #25
          to label %.body.i.i unwind label %bb.p, !noalias !18

bb.j:                                             ; preds = %bb.k, %.noexc1.i.i
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.k:                                             ; preds = %.noexc1.i.i
  %i.am = extractvalue { ptr, ptr } %i.ak, 0
  %i.an = extractvalue { ptr, ptr } %i.ak, 1
  invoke void @_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtCsexYYUdYSQU6_5alloc6string6StringEINvNvMs2_CseVyiZOR58h4_8globwalkNtB23_17GlobWalkerBuilder13from_patterns17normalize_patternRB1h_EENtNtNtBa_6traits8iterator8Iterator7collectINtNtB1l_3vec3VecB1h_EECsdAIXAMGuHRT_18build_script_build(ptr nonnull sret([24 x i8]) align 8 %i.f, ptr %i.am, ptr %i.an)
          to label %bb.l unwind label %bb.j, !noalias !18

bb.l:                                             ; preds = %bb.k
  %i.ao = load ptr, ptr %i.h, align 8, !noalias !18
  %i.ap = load i64, ptr %i.ag, align 8, !noalias !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !18
  store ptr %i.ao, ptr %i.d, align 8, !noalias !19
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.ap, ptr %i.aq, align 8, !noalias !19
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 10, ptr %i.as, align 8, !noalias !19
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 0, ptr %i.at, align 8, !noalias !19
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 -1, ptr %i.au, align 8, !noalias !19
  store ptr null, ptr %i.c, align 8, !noalias !19
  store <4 x i8> <i8 0, i8 1, i8 0, i8 0>, ptr %i.ar, align 8, !noalias !19
  %i.av = invoke { ptr, i64 } @_RNvXNtCskKLDkoKarTP_4core7convertReINtB2_5AsRefNtNtCsG258MDvU3F_3std4path4PathE6as_refCs7w4qHFuqA31_14iana_time_zone(ptr nonnull align 8 %i.d)
          to label %bb.n unwind label %bb.m, !noalias !19 ; 2 uses

bb.m:                                             ; preds = %bb.n, %bb.l
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsjL3H11RzO0w_7walkdir14WalkDirOptionsEBD_(ptr nonnull align 8 %i.c) #25
          to label %.body.i.i.i unwind label %bb.o, !noalias !19

bb.n:                                             ; preds = %bb.l
  %i.ax = extractvalue { ptr, i64 } %i.av, 0
  %i.ay = extractvalue { ptr, i64 } %i.av, 1
  invoke void @_RNvMs16_NtCsG258MDvU3F_3std4pathNtB6_4Path11to_path_buf(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr %i.ax, i64 %i.ay)
          to label %bb.r unwind label %bb.m, !noalias !19

bb.o:                                             ; preds = %bb.m
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !19
  unreachable

.body.i.i.i:                                      ; preds = %bb.m
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECs5ir8AFLADJ7_12aho_corasick(ptr nonnull align 8 %i.f) #25
          to label %bb.i unwind label %bb.p, !noalias !18

bb.p:                                             ; preds = %.body.i.i.i, %bb.i
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !18
  unreachable

bb.q:                                             ; preds = %.noexc.i.i, %bb.h
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.q, %bb.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.bb, %bb.q ], [ %.pn.i.i.i, %bb.i ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCsexYYUdYSQU6_5alloc6string6StringECs5ir8AFLADJ7_12aho_corasick(ptr nonnull align 8 %i.i, i64 1)
          to label %.body.i unwind label %bb.s, !noalias !17

bb.r:                                             ; preds = %bb.n
  %i.bc = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bc, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false), !noalias !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.be, ptr noundef nonnull align 8 dereferenceable(72) %i.e, i64 72, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.w, i64 128
  store i8 0, ptr %i.bf, align 8, !alias.scope !18
  %i.bg = getelementptr inbounds nuw i8, ptr %i.w, i64 120
  store i32 0, ptr %i.bg, align 8, !alias.scope !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !17
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCsexYYUdYSQU6_5alloc6string6StringECs5ir8AFLADJ7_12aho_corasick(ptr nonnull align 8 %i.i, i64 1)
          to label %_RINvMs2_CseVyiZOR58h4_8globwalkNtB6_17GlobWalkerBuilder3newReNtNtCsexYYUdYSQU6_5alloc6string6StringECsdAIXAMGuHRT_18build_script_build.exit.i unwind label %bb.e, !noalias !14

bb.s:                                             ; preds = %.body.i.i
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !17
  unreachable

_RINvMs2_CseVyiZOR58h4_8globwalkNtB6_17GlobWalkerBuilder3newReNtNtCsexYYUdYSQU6_5alloc6string6StringECsdAIXAMGuHRT_18build_script_build.exit.i: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !14
  br label %bb.u

bb.t:                                             ; preds = %bb.g
  invoke void @_RNvMsr_NtCsG258MDvU3F_3std4pathNtB5_7PathBuf3newCsdAIXAMGuHRT_18build_script_build(ptr nonnull sret([24 x i8]) align 8 %i.t)
          to label %bb.v unwind label %bb.e, !noalias !14

bb.u:                                             ; preds = %bb.ak, %_RINvMs2_CseVyiZOR58h4_8globwalkNtB6_17GlobWalkerBuilder3newReNtNtCsexYYUdYSQU6_5alloc6string6StringECsdAIXAMGuHRT_18build_script_build.exit.i
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECsyeC6ktic4j_8tempfile(ptr nonnull align 8 %i.u)
          to label %bb.al unwind label %bb.c, !noalias !14

bb.v:                                             ; preds = %bb.t
  invoke void @_RNvMsr_NtCsG258MDvU3F_3std4pathNtB5_7PathBuf3newCsdAIXAMGuHRT_18build_script_build(ptr nonnull sret([24 x i8]) align 8 %i.s)
          to label %bb.y unwind label %bb.x, !noalias !14

bb.w:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.x
  %.pn.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp14, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.bi, %bb.x ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECsyeC6ktic4j_8tempfile(ptr nonnull align 8 %i.t) #25
          to label %.body.i unwind label %bb.aw, !noalias !14

bb.x:                                             ; preds = %bb.aj, %bb.v
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.y:                                             ; preds = %bb.v
  %i.bj = invoke { ptr, i64 } @_RNvXsH_NtCsG258MDvU3F_3std4pathNtB5_7PathBufNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsdAIXAMGuHRT_18build_script_build(ptr nonnull align 8 %i.u)
          to label %bb.z unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !14 ; 2 uses

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ar, %bb.at, %.critedge.i, %bb.av, %bb.ap, %_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionReE6unwrapCsdAIXAMGuHRT_18build_script_build.exit.i, %bb.an, %bb.ad, %.backedge.i, %_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionReE6unwrapCsdAIXAMGuHRT_18build_script_build.exit12.i, %bb.ah, %_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionReE6unwrapCsdAIXAMGuHRT_18build_script_build.exit15.i, %.invoke.i, %bb.af, %bb.ae, %bb.aa, %bb.z, %bb.y
  %lpad.loopexit.split-lp14 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECsyeC6ktic4j_8tempfile(ptr nonnull align 8 %i.s) #25
          to label %bb.w unwind label %bb.aw, !noalias !14

bb.z:                                             ; preds = %bb.y
  %i.bk = extractvalue { ptr, i64 } %i.bj, 0
  %i.bl = extractvalue { ptr, i64 } %i.bj, 1
  invoke void @_RNvMs16_NtCsG258MDvU3F_3std4pathNtB6_4Path10components(ptr nonnull sret([64 x i8]) align 8 %i.q, ptr %i.bk, i64 %i.bl)
          to label %bb.aa unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !14

bb.aa:                                            ; preds = %bb.z
  invoke void @_RNvXNtNtNtCskKLDkoKarTP_4core4iter6traits7collectNtNtCsG258MDvU3F_3std4path10ComponentsNtB2_12IntoIterator9into_iterCsk8L13k0QrCg_5which(ptr nonnull sret([64 x i8]) align 8 %i.r, ptr nonnull align 8 %i.q)
          to label %bb.ab unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !14

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.p, ptr noundef nonnull align 8 dereferenceable(64) %i.r, i64 64, i1 false), !noalias !14
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bo = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.backedge, %bb.ab
  %.sroa.0.0.i = phi i1 [ false, %bb.ab ], [ %.sroa.0.0.i.be, %.backedge.i.backedge ]
  invoke void @_RNvXsi_NtCsG258MDvU3F_3std4pathNtB5_10ComponentsNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr nonnull sret([56 x i8]) align 8 %i.o, ptr nonnull align 8 %i.p)
          to label %bb.ac unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !14

bb.ac:                                            ; preds = %.backedge.i
  %i.bp = load i8, ptr %i.o, align 8, !noalias !14
  %.not.i = icmp eq i8 %i.bp, -1
  br i1 %.not.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.n, ptr noundef nonnull align 8 dereferenceable(56) %i.o, i64 56, i1 false), !noalias !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.l, ptr noundef nonnull align 8 dereferenceable(56) %i.o, i64 56, i1 false), !noalias !14
  %i.bq = invoke { ptr, i64 } @_RNvMs4_NtCsG258MDvU3F_3std4pathNtB5_9Component9as_os_strCsdAIXAMGuHRT_18build_script_build(ptr nonnull align 8 %i.l)
          to label %bb.an unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !14 ; 2 uses

bb.ae:                                            ; preds = %bb.ac
  %i.br = invoke { ptr, i64 } @_RNvXsH_NtCsG258MDvU3F_3std4pathNtB5_7PathBufNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsdAIXAMGuHRT_18build_script_build(ptr nonnull align 8 %i.s)
          to label %bb.af unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !14 ; 2 uses

bb.af:                                            ; preds = %bb.ae
  %i.bs = extractvalue { ptr, i64 } %i.br, 0
  %i.bt = extractvalue { ptr, i64 } %i.br, 1
  %i.bu = invoke { ptr, i64 } @_RNvMs16_NtCsG258MDvU3F_3std4pathNtB6_4Path6to_strCsdAIXAMGuHRT_18build_script_build(ptr %i.bs, i64 %i.bt)
          to label %bb.ag unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !14 ; 2 uses

bb.ag:                                            ; preds = %bb.af
  %i.bv = extractvalue { ptr, i64 } %i.bu, 0      ; 2 uses
  %.not.i13.i = icmp eq ptr %i.bv, null
  br i1 %.not.i13.i, label %.invoke.i, label %_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionReE6unwrapCsdAIXAMGuHRT_18build_script_build.exit15.i

.invoke.i:                                        ; preds = %bb.ao, %bb.ai, %bb.ag
  %i.bw = phi ptr [ @3, %bb.ai ], [ @2, %bb.ag ], [ @4, %bb.ao ]
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr nonnull align 8 %i.bw) #27
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !14

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionReE6unwrapCsdAIXAMGuHRT_18build_script_build.exit15.i: ; preds = %bb.ag
  %i.bx = extractvalue { ptr, i64 } %i.bu, 1
  %i.by = invoke { ptr, i64 } @_RNvXsH_NtCsG258MDvU3F_3std4pathNtB5_7PathBufNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsdAIXAMGuHRT_18build_script_build(ptr nonnull align 8 %i.t)
          to label %bb.ah unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !14 ; 2 uses

bb.ah:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionReE6unwrapCsdAIXAMGuHRT_18build_script_build.exit15.i
  %i.bz = extractvalue { ptr, i64 } %i.by, 0
  %i.ca = extractvalue { ptr, i64 } %i.by, 1
  %i.cb = invoke { ptr, i64 } @_RNvMs16_NtCsG258MDvU3F_3std4pathNtB6_4Path6to_strCsdAIXAMGuHRT_18build_script_build(ptr %i.bz, i64 %i.ca)
          to label %bb.ai unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !14 ; 2 uses

bb.ai:                                            ; preds = %bb.ah
  %i.cc = extractvalue { ptr, i64 } %i.cb, 0      ; 2 uses
  %.not.i10.i = icmp eq ptr %i.cc, null
  br i1 %.not.i10.i, label %.invoke.i, label %_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionReE6unwrapCsdAIXAMGuHRT_18build_script_build.exit12.i

_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionReE6unwrapCsdAIXAMGuHRT_18build_script_build.exit12.i: ; preds = %bb.ai
  %i.cd = extractvalue { ptr, i64 } %i.cb, 1
  invoke fastcc void @_RINvMs2_CseVyiZOR58h4_8globwalkNtB6_17GlobWalkerBuilder3newReBV_ECsdAIXAMGuHRT_18build_script_build(ptr noalias nonnull align 8 %i.w, ptr nonnull %i.cc, i64 %i.cd, ptr nonnull %i.bv, i64 %i.bx)
          to label %bb.aj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aj:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionReE6unwrapCsdAIXAMGuHRT_18build_script_build.exit12.i
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECsyeC6ktic4j_8tempfile(ptr nonnull align 8 %i.s)
          to label %bb.ak unwind label %bb.x, !noalias !14

bb.ak:                                            ; preds = %bb.aj
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECsyeC6ktic4j_8tempfile(ptr nonnull align 8 %i.t)
          to label %bb.u unwind label %bb.e, !noalias !14

bb.al:                                            ; preds = %bb.u
  br i1 %i.af, label %bb.am, label %_RINvCseVyiZOR58h4_8globwalk12glob_builderNtNtCsexYYUdYSQU6_5alloc6string6StringECsdAIXAMGuHRT_18build_script_build.exit

bb.am:                                            ; preds = %bb.al
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs5ir8AFLADJ7_12aho_corasick(ptr nonnull align 8 %i.v), !noalias !14
  br label %_RINvCseVyiZOR58h4_8globwalk12glob_builderNtNtCsexYYUdYSQU6_5alloc6string6StringECsdAIXAMGuHRT_18build_script_build.exit

bb.an:                                            ; preds = %bb.ad
  %i.ce = extractvalue { ptr, i64 } %i.bq, 0
  %i.cf = extractvalue { ptr, i64 } %i.bq, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14
  invoke void @_RNvNtNtCskKLDkoKarTP_4core3str8converts9from_utf8(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr %i.ce, i64 %i.cf)
          to label %bb.ao unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !14

bb.ao:                                            ; preds = %bb.an
  %i.cg = load i64, ptr %i.a, align 8, !noalias !14
  %i.ch = trunc nuw i64 %i.cg to i1               ; 2 uses
  %i.ci = load ptr, ptr %i.bm, align 8, !noalias !14 ; 2 uses
  %i.cj = load i64, ptr %i.bn, align 8, !noalias !14
  %.sroa.3.0.i.i = select i1 %i.ch, i64 undef, i64 %i.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14
  %.not.i20.i = icmp eq ptr %i.ci, null
  %.not.i.i = select i1 %i.ch, i1 true, i1 %.not.i20.i
  br i1 %.not.i.i, label %.invoke.i, label %_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionReE6unwrapCsdAIXAMGuHRT_18build_script_build.exit.i

_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionReE6unwrapCsdAIXAMGuHRT_18build_script_build.exit.i: ; preds = %bb.ao
  %i.ck = invoke { ptr, i64 } @_RNvXsd_NtCskKLDkoKarTP_4core5arrayARej3_INtNtNtB7_3ops5index5IndexNtNtBH_5range9RangeFullE5indexCsdAIXAMGuHRT_18build_script_build(ptr nonnull align 8 @8, ptr nonnull align 8 @9)
          to label %bb.ap unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !14 ; 2 uses

bb.ap:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionReE6unwrapCsdAIXAMGuHRT_18build_script_build.exit.i
  %i.cl = extractvalue { ptr, i64 } %i.ck, 0
  %i.cm = extractvalue { ptr, i64 } %i.ck, 1
  %i.cn = invoke { ptr, ptr } @_RNvXs_NtNtCskKLDkoKarTP_4core5slice4iterRSReNtNtNtNtB8_4iter6traits7collect12IntoIterator9into_iterCs7w4qHFuqA31_14iana_time_zone(ptr align 8 %i.cl, i64 %i.cm)
          to label %bb.aq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !14 ; 2 uses

bb.aq:                                            ; preds = %bb.ap
  %i.co = extractvalue { ptr, ptr } %i.cn, 0
  %i.cp = extractvalue { ptr, ptr } %i.cn, 1
  store ptr %i.co, ptr %i.m, align 8, !noalias !14
  store ptr %i.cp, ptr %i.bo, align 8, !noalias !14
  br label %bb.ar

bb.ar:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core3stre8containsRReECsdAIXAMGuHRT_18build_script_build.exit.i, %bb.aq
  %i.cq = invoke align 8 ptr @_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterReENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5YNYYMCeUDn_8protobuf(ptr nonnull align 8 %i.m)
          to label %bb.as unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !14 ; 2 uses

bb.as:                                            ; preds = %bb.ar
  %.not6.i = icmp eq ptr %i.cq, null
  br i1 %.not6.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.cr = invoke zeroext i1 @_RNvXss_NtNtCskKLDkoKarTP_4core3str7patternRReNtB5_7Pattern15is_contained_inCsdAIXAMGuHRT_18build_script_build(ptr nonnull align 8 %i.cq, ptr %i.ci, i64 %.sroa.3.0.i.i) #24
          to label %_RINvMNtCskKLDkoKarTP_4core3stre8containsRReECsdAIXAMGuHRT_18build_script_build.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !14

bb.au:                                            ; preds = %bb.as
  br i1 %.sroa.0.0.i, label %.critedge.i, label %bb.av

_RINvMNtCskKLDkoKarTP_4core3stre8containsRReECsdAIXAMGuHRT_18build_script_build.exit.i: ; preds = %bb.at
  br i1 %i.cr, label %.critedge.i, label %bb.ar

bb.av:                                            ; preds = %bb.au
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.k, ptr noundef nonnull align 8 dereferenceable(56) %i.n, i64 56, i1 false), !noalias !14
  invoke void @_RINvMsr_NtCsG258MDvU3F_3std4pathNtB6_7PathBuf4pushNtB6_9ComponentECsdAIXAMGuHRT_18build_script_build(ptr nonnull align 8 %i.t, ptr nonnull align 8 %i.k)
          to label %.backedge.i.backedge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !14

.critedge.i:                                      ; preds = %_RINvMNtCskKLDkoKarTP_4core3stre8containsRReECsdAIXAMGuHRT_18build_script_build.exit.i, %bb.au
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.j, ptr noundef nonnull align 8 dereferenceable(56) %i.n, i64 56, i1 false), !noalias !14
  invoke void @_RINvMsr_NtCsG258MDvU3F_3std4pathNtB6_7PathBuf4pushNtB6_9ComponentECsdAIXAMGuHRT_18build_script_build(ptr nonnull align 8 %i.s, ptr nonnull align 8 %i.j)
          to label %.backedge.i.backedge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !14

.backedge.i.backedge:                             ; preds = %.critedge.i, %bb.av
  %.sroa.0.0.i.be = phi i1 [ true, %.critedge.i ], [ false, %bb.av ]
  br label %.backedge.i

bb.aw:                                            ; preds = %bb.ay, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.w, %.body.i
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !14
  unreachable

bb.ax:                                            ; preds = %bb.ay, %bb.c, %2
  %.pn.pn.pn20.i = phi { ptr, i32 } [ %i.y, %bb.c ], [ %.pn.pn.pn21.i, %bb.ay ], [ %.pn.pn.i, %2 ]
  resume { ptr, i32 } %.pn.pn.pn20.i

bb.ay:                                            ; preds = %bb.c, %bb.b, %2
  %.pn.pn.pn21.i = phi { ptr, i32 } [ %i.y, %bb.c ], [ %.pn.pn.i, %2 ], [ %lpad.thr_comm.i, %bb.b ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs5ir8AFLADJ7_12aho_corasick(ptr nonnull align 8 %i.v) #25
          to label %bb.ax unwind label %bb.aw, !noalias !14

_RINvCseVyiZOR58h4_8globwalk12glob_builderNtNtCsexYYUdYSQU6_5alloc6string6StringECsdAIXAMGuHRT_18build_script_build.exit: ; preds = %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @_RNvMs2_CseVyiZOR58h4_8globwalkNtB5_17GlobWalkerBuilder5build(ptr sret([288 x i8]) align 8 %0, ptr nonnull align 8 %i.w)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvCseVyiZOR58h4_8globwalk4globReECsdAIXAMGuHRT_18build_script_build(ptr sret([288 x i8]) align 8 %0, ptr %1, i64 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [56 x i8], align 8                ; 4 uses
  %i.c = alloca [56 x i8], align 8                ; 4 uses
  %i.d = alloca [56 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [56 x i8], align 8                ; 5 uses
  %i.g = alloca [56 x i8], align 8                ; 6 uses
  %i.h = alloca [64 x i8], align 8                ; 4 uses
  %i.i = alloca [64 x i8], align 8                ; 4 uses
  %i.j = alloca [64 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 7 uses
  %i.l = alloca [24 x i8], align 8                ; 7 uses
  %i.m = alloca [24 x i8], align 8                ; 7 uses
  %i.n = alloca [16 x i8], align 8                ; 6 uses
  %i.o = alloca [136 x i8], align 8               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %1, ptr %i.n, align 8, !noalias !22
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  store i64 %2, ptr %i.p, align 8, !noalias !22
  %i.q = call { ptr, i64 } @_RNvXNtCskKLDkoKarTP_4core7convertReINtB2_5AsRefeE6as_refCs9Fz3Nxyg3zf_14protobuf_parse(ptr nonnull align 8 %i.n) #24, !noalias !22 ; 2 uses
  %i.r = extractvalue { ptr, i64 } %i.q, 0
  %i.s = extractvalue { ptr, i64 } %i.q, 1
  call void @_RNvXsz_NtCsG258MDvU3F_3std4pathNtB5_7PathBufINtNtCskKLDkoKarTP_4core7convert4FromReE4fromCsfLixTUEF4oz_6ignore(ptr nonnull sret([24 x i8]) align 8 %i.m, ptr %i.r, i64 %i.s) #24, !noalias !22
  %i.t = invoke { ptr, i64 } @_RNvXsH_NtCsG258MDvU3F_3std4pathNtB5_7PathBufNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsdAIXAMGuHRT_18build_script_build(ptr nonnull align 8 %i.m)
          to label %bb.d unwind label %bb.c, !noalias !22 ; 2 uses

bb.b:                                             ; preds = %bb.i, %bb.c
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %bb.i ], [ %i.u, %bb.c ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECsyeC6ktic4j_8tempfile(ptr nonnull align 8 %i.m) #25
          to label %bb.ah unwind label %bb.ag, !noalias !22

bb.c:                                             ; preds = %bb.w, %bb.g, %bb.f, %bb.d, %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.v = extractvalue { ptr, i64 } %i.t, 0
  %i.w = extractvalue { ptr, i64 } %i.t, 1
  %i.x = invoke zeroext i1 @_RNvMs16_NtCsG258MDvU3F_3std4pathNtB6_4Path11is_absolute(ptr %i.v, i64 %i.w)
          to label %bb.e unwind label %bb.c, !noalias !22

bb.e:                                             ; preds = %bb.d
  br i1 %i.x, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = load ptr, ptr %i.n, align 8, !noalias !22
  %i.z = load i64, ptr %i.p, align 8, !noalias !22
  invoke fastcc void @_RINvMs2_CseVyiZOR58h4_8globwalkNtB6_17GlobWalkerBuilder3newReBV_ECsdAIXAMGuHRT_18build_script_build(ptr noalias nonnull align 8 %i.o, ptr nonnull @1, i64 1, ptr %i.y, i64 %i.z)
          to label %_RINvCseVyiZOR58h4_8globwalk12glob_builderReECsdAIXAMGuHRT_18build_script_build.exit unwind label %bb.c

bb.g:                                             ; preds = %bb.e
  invoke void @_RNvMsr_NtCsG258MDvU3F_3std4pathNtB5_7PathBuf3newCsdAIXAMGuHRT_18build_script_build(ptr nonnull sret([24 x i8]) align 8 %i.l)
          to label %bb.h unwind label %bb.c, !noalias !22

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvMsr_NtCsG258MDvU3F_3std4pathNtB5_7PathBuf3newCsdAIXAMGuHRT_18build_script_build(ptr nonnull sret([24 x i8]) align 8 %i.k)
          to label %bb.k unwind label %bb.j, !noalias !22

bb.i:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.j
  %.pn.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp14, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.aa, %bb.j ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECsyeC6ktic4j_8tempfile(ptr nonnull align 8 %i.l) #25
          to label %bb.b unwind label %bb.ag, !noalias !22

bb.j:                                             ; preds = %bb.v, %bb.h
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.k:                                             ; preds = %bb.h
  %i.ab = invoke { ptr, i64 } @_RNvXsH_NtCsG258MDvU3F_3std4pathNtB5_7PathBufNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsdAIXAMGuHRT_18build_script_build(ptr nonnull align 8 %i.m)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !22 ; 2 uses

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ab, %bb.ad, %.critedge.i, %bb.af, %bb.z, %_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionReE6unwrapCsdAIXAMGuHRT_18build_script_build.exit.i, %bb.x, %bb.p, %.backedge.i, %_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionReE6unwrapCsdAIXAMGuHRT_18build_script_build.exit10.i, %bb.t, %_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionReE6unwrapCsdAIXAMGuHRT_18build_script_build.exit13.i, %.invoke.i, %bb.r, %bb.q, %bb.m, %bb.l, %bb.k
  %lpad.loopexit.split-lp14 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECsyeC6ktic4j_8tempfile(ptr nonnull align 8 %i.k) #25
          to label %bb.i unwind label %bb.ag, !noalias !22

bb.l:                                             ; preds = %bb.k
  %i.ac = extractvalue { ptr, i64 } %i.ab, 0
  %i.ad = extractvalue { ptr, i64 } %i.ab, 1
  invoke void @_RNvMs16_NtCsG258MDvU3F_3std4pathNtB6_4Path10components(ptr nonnull sret([64 x i8]) align 8 %i.i, ptr %i.ac, i64 %i.ad)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !22

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvXNtNtNtCskKLDkoKarTP_4core4iter6traits7collectNtNtCsG258MDvU3F_3std4path10ComponentsNtB2_12IntoIterator9into_iterCsk8L13k0QrCg_5which(ptr nonnull sret([64 x i8]) align 8 %i.j, ptr nonnull align 8 %i.i)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !22

bb.n:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.h, ptr noundef nonnull align 8 dereferenceable(64) %i.j, i64 64, i1 false), !noalias !22
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.backedge, %bb.n
  %.sroa.0.0.i = phi i1 [ false, %bb.n ], [ %.sroa.0.0.i.be, %.backedge.i.backedge ]
  invoke void @_RNvXsi_NtCsG258MDvU3F_3std4pathNtB5_10ComponentsNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr nonnull sret([56 x i8]) align 8 %i.g, ptr nonnull align 8 %i.h)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !22

bb.o:                                             ; preds = %.backedge.i
  %i.ah = load i8, ptr %i.g, align 8, !noalias !22
  %.not.i = icmp eq i8 %i.ah, -1
  br i1 %.not.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.f, ptr noundef nonnull align 8 dereferenceable(56) %i.g, i64 56, i1 false), !noalias !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(56) %i.g, i64 56, i1 false), !noalias !22
  %i.ai = invoke { ptr, i64 } @_RNvMs4_NtCsG258MDvU3F_3std4pathNtB5_9Component9as_os_strCsdAIXAMGuHRT_18build_script_build(ptr nonnull align 8 %i.d)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !22 ; 2 uses

bb.q:                                             ; preds = %bb.o
  %i.aj = invoke { ptr, i64 } @_RNvXsH_NtCsG258MDvU3F_3std4pathNtB5_7PathBufNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsdAIXAMGuHRT_18build_script_build(ptr nonnull align 8 %i.k)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !22 ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.ak = extractvalue { ptr, i64 } %i.aj, 0
  %i.al = extractvalue { ptr, i64 } %i.aj, 1
  %i.am = invoke { ptr, i64 } @_RNvMs16_NtCsG258MDvU3F_3std4pathNtB6_4Path6to_strCsdAIXAMGuHRT_18build_script_build(ptr %i.ak, i64 %i.al)
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !22 ; 2 uses

bb.s:                                             ; preds = %bb.r
  %i.an = extractvalue { ptr, i64 } %i.am, 0      ; 2 uses
  %.not.i11.i = icmp eq ptr %i.an, null
  br i1 %.not.i11.i, label %.invoke.i, label %_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionReE6unwrapCsdAIXAMGuHRT_18build_script_build.exit13.i

.invoke.i:                                        ; preds = %bb.y, %bb.u, %bb.s
  %i.ao = phi ptr [ @3, %bb.u ], [ @2, %bb.s ], [ @4, %bb.y ]
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr nonnull align 8 %i.ao) #27
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !22

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionReE6unwrapCsdAIXAMGuHRT_18build_script_build.exit13.i: ; preds = %bb.s
  %i.ap = extractvalue { ptr, i64 } %i.am, 1
  %i.aq = invoke { ptr, i64 } @_RNvXsH_NtCsG258MDvU3F_3std4pathNtB5_7PathBufNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsdAIXAMGuHRT_18build_script_build(ptr nonnull align 8 %i.l)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !22 ; 2 uses

bb.t:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionReE6unwrapCsdAIXAMGuHRT_18build_script_build.exit13.i
  %i.ar = extractvalue { ptr, i64 } %i.aq, 0
  %i.as = extractvalue { ptr, i64 } %i.aq, 1
  %i.at = invoke { ptr, i64 } @_RNvMs16_NtCsG258MDvU3F_3std4pathNtB6_4Path6to_strCsdAIXAMGuHRT_18build_script_build(ptr %i.ar, i64 %i.as)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !22 ; 2 uses

bb.u:                                             ; preds = %bb.t
  %i.au = extractvalue { ptr, i64 } %i.at, 0      ; 2 uses
  %.not.i8.i = icmp eq ptr %i.au, null
  br i1 %.not.i8.i, label %.invoke.i, label %_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionReE6unwrapCsdAIXAMGuHRT_18build_script_build.exit10.i

_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionReE6unwrapCsdAIXAMGuHRT_18build_script_build.exit10.i: ; preds = %bb.u
  %i.av = extractvalue { ptr, i64 } %i.at, 1
  invoke fastcc void @_RINvMs2_CseVyiZOR58h4_8globwalkNtB6_17GlobWalkerBuilder3newReBV_ECsdAIXAMGuHRT_18build_script_build(ptr noalias nonnull align 8 %i.o, ptr nonnull %i.au, i64 %i.av, ptr nonnull %i.an, i64 %i.ap)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.v:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionReE6unwrapCsdAIXAMGuHRT_18build_script_build.exit10.i
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECsyeC6ktic4j_8tempfile(ptr nonnull align 8 %i.k)
          to label %bb.w unwind label %bb.j, !noalias !22

bb.w:                                             ; preds = %bb.v
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECsyeC6ktic4j_8tempfile(ptr nonnull align 8 %i.l)
          to label %_RINvCseVyiZOR58h4_8globwalk12glob_builderReECsdAIXAMGuHRT_18build_script_build.exit unwind label %bb.c, !noalias !22

bb.x:                                             ; preds = %bb.p
end_hunk_0
