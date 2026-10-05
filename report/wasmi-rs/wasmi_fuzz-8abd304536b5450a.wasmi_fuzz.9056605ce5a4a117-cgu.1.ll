Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmi-rs/original/wasmi_fuzz-8abd304536b5450a.wasmi_fuzz.9056605ce5a4a117-cgu.1?download=true
inline.NumInlined: 133
inline.NumDeleted: 74
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant <{ ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCscK5W4trzgIe_6anyhow5error11object_dropNtNtCskKLDkoKarTP_4core3fmt5ErrorECscoiT177WhKJ_10wasmi_fuzz, ptr @_RINvNtCscK5W4trzgIe_6anyhow5error10object_refNtNtCskKLDkoKarTP_4core3fmt5ErrorECscoiT177WhKJ_10wasmi_fuzz, ptr @_RINvNtCscK5W4trzgIe_6anyhow5error12object_boxedNtNtCskKLDkoKarTP_4core3fmt5ErrorECscoiT177WhKJ_10wasmi_fuzz, ptr @_RINvNtCscK5W4trzgIe_6anyhow5error23object_reallocate_boxedNtNtCskKLDkoKarTP_4core3fmt5ErrorECscoiT177WhKJ_10wasmi_fuzz, ptr @_RINvNtCscK5W4trzgIe_6anyhow5error15object_downcastNtNtCskKLDkoKarTP_4core3fmt5ErrorECscoiT177WhKJ_10wasmi_fuzz, ptr @_RINvNtCscK5W4trzgIe_6anyhow5error17object_drop_frontNtNtCskKLDkoKarTP_4core3fmt5ErrorECscoiT177WhKJ_10wasmi_fuzz }>, align 8
@1 = private unnamed_addr constant <{ ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCscK5W4trzgIe_6anyhow5error11object_dropNtNtNtCskKLDkoKarTP_4core2io5error5ErrorECscoiT177WhKJ_10wasmi_fuzz, ptr @_RINvNtCscK5W4trzgIe_6anyhow5error10object_refNtNtNtCskKLDkoKarTP_4core2io5error5ErrorECscoiT177WhKJ_10wasmi_fuzz, ptr @_RINvNtCscK5W4trzgIe_6anyhow5error12object_boxedNtNtNtCskKLDkoKarTP_4core2io5error5ErrorECscoiT177WhKJ_10wasmi_fuzz, ptr @_RINvNtCscK5W4trzgIe_6anyhow5error23object_reallocate_boxedNtNtNtCskKLDkoKarTP_4core2io5error5ErrorECscoiT177WhKJ_10wasmi_fuzz, ptr @_RINvNtCscK5W4trzgIe_6anyhow5error15object_downcastNtNtNtCskKLDkoKarTP_4core2io5error5ErrorECscoiT177WhKJ_10wasmi_fuzz, ptr @_RINvNtCscK5W4trzgIe_6anyhow5error17object_drop_frontNtNtNtCskKLDkoKarTP_4core2io5error5ErrorECscoiT177WhKJ_10wasmi_fuzz }>, align 8
@2 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtCsaoJQ0BThbft_11wasmprinter5printINtB4_13PrintFmtWriteQNtNtCsexYYUdYSQU6_5alloc6string6StringENtB4_5Print9write_strCscoiT177WhKJ_10wasmi_fuzz, ptr @_RNvYINtNtCsaoJQ0BThbft_11wasmprinter5print13PrintFmtWriteQNtNtCsexYYUdYSQU6_5alloc6string6StringENtB5_5Print7newlineCscoiT177WhKJ_10wasmi_fuzz, ptr @_RNvYINtNtCsaoJQ0BThbft_11wasmprinter5print13PrintFmtWriteQNtNtCsexYYUdYSQU6_5alloc6string6StringENtB5_5Print10start_lineCscoiT177WhKJ_10wasmi_fuzz, ptr @_RNvYINtNtCsaoJQ0BThbft_11wasmprinter5print13PrintFmtWriteQNtNtCsexYYUdYSQU6_5alloc6string6StringENtB5_5Print9write_fmtCscoiT177WhKJ_10wasmi_fuzz, ptr @_RNvYINtNtCsaoJQ0BThbft_11wasmprinter5print13PrintFmtWriteQNtNtCsexYYUdYSQU6_5alloc6string6StringENtB5_5Print20print_custom_sectionCscoiT177WhKJ_10wasmi_fuzz, ptr @_RNvYINtNtCsaoJQ0BThbft_11wasmprinter5print13PrintFmtWriteQNtNtCsexYYUdYSQU6_5alloc6string6StringENtB5_5Print13start_literalCscoiT177WhKJ_10wasmi_fuzz, ptr @_RNvYINtNtCsaoJQ0BThbft_11wasmprinter5print13PrintFmtWriteQNtNtCsexYYUdYSQU6_5alloc6string6StringENtB5_5Print10start_nameCscoiT177WhKJ_10wasmi_fuzz, ptr @_RNvYINtNtCsaoJQ0BThbft_11wasmprinter5print13PrintFmtWriteQNtNtCsexYYUdYSQU6_5alloc6string6StringENtB5_5Print13start_keywordCscoiT177WhKJ_10wasmi_fuzz, ptr @_RNvYINtNtCsaoJQ0BThbft_11wasmprinter5print13PrintFmtWriteQNtNtCsexYYUdYSQU6_5alloc6string6StringENtB5_5Print10start_typeCscoiT177WhKJ_10wasmi_fuzz, ptr @_RNvYINtNtCsaoJQ0BThbft_11wasmprinter5print13PrintFmtWriteQNtNtCsexYYUdYSQU6_5alloc6string6StringENtB5_5Print13start_commentCscoiT177WhKJ_10wasmi_fuzz, ptr @_RNvYINtNtCsaoJQ0BThbft_11wasmprinter5print13PrintFmtWriteQNtNtCsexYYUdYSQU6_5alloc6string6StringENtB5_5Print11reset_colorCscoiT177WhKJ_10wasmi_fuzz, ptr @_RNvYINtNtCsaoJQ0BThbft_11wasmprinter5print13PrintFmtWriteQNtNtCsexYYUdYSQU6_5alloc6string6StringENtB5_5Print20supports_async_colorCscoiT177WhKJ_10wasmi_fuzz }>, align 8
@3 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRhNtB6_5Debug3fmtCscoiT177WhKJ_10wasmi_fuzz }>, align 8
@4 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsc_NtCskKLDkoKarTP_4core3fmtNtB5_5ErrorNtB5_7Display3fmt }>, align 8
@5 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsK_NtCskKLDkoKarTP_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt, ptr @_RNvXsc_NtCskKLDkoKarTP_4core3fmtNtB5_5ErrorNtB5_7Display3fmt, ptr @4, ptr @_RNvYNtNtCskKLDkoKarTP_4core3fmt5ErrorNtNtB6_5error5Error6sourceCscoiT177WhKJ_10wasmi_fuzz, ptr @_RNvYNtNtCskKLDkoKarTP_4core3fmt5ErrorNtNtB6_5error5Error7type_idCscoiT177WhKJ_10wasmi_fuzz, ptr @_RNvYNtNtCskKLDkoKarTP_4core3fmt5ErrorNtNtB6_5error5Error11descriptionCscoiT177WhKJ_10wasmi_fuzz, ptr @_RNvYNtNtCskKLDkoKarTP_4core3fmt5ErrorNtNtB6_5error5Error5causeCscoiT177WhKJ_10wasmi_fuzz, ptr @_RNvYNtNtCskKLDkoKarTP_4core3fmt5ErrorNtNtB6_5error5Error7provideCscoiT177WhKJ_10wasmi_fuzz }>, align 8
@6 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECscoiT177WhKJ_10wasmi_fuzz, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt }>, align 8
@7 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECscoiT177WhKJ_10wasmi_fuzz, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNtNtCskKLDkoKarTP_4core2io5errorNtB2_5ErrorNtNtB6_3fmt5Debug3fmt, ptr @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr @6, ptr @_RNvXs4_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_5error5Error6source, ptr @_RNvYNtNtNtCskKLDkoKarTP_4core2io5error5ErrorNtNtB8_5error5Error7type_idCscoiT177WhKJ_10wasmi_fuzz, ptr @_RNvYNtNtNtCskKLDkoKarTP_4core2io5error5ErrorNtNtB8_5error5Error11descriptionCscoiT177WhKJ_10wasmi_fuzz, ptr @_RNvXs4_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_5error5Error5cause, ptr @_RNvYNtNtNtCskKLDkoKarTP_4core2io5error5ErrorNtNtB8_5error5Error7provideCscoiT177WhKJ_10wasmi_fuzz }>, align 8
@8 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCscK5W4trzgIe_6anyhow5error9ErrorImplNtNtB4_3fmt5ErrorEECscoiT177WhKJ_10wasmi_fuzz, [16 x i8] c"8\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs9_NtCscK5W4trzgIe_6anyhow5errorINtB5_9ErrorImplNtNtCskKLDkoKarTP_4core3fmt5ErrorENtBQ_7Display3fmtCscoiT177WhKJ_10wasmi_fuzz }>, align 8
@9 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCscK5W4trzgIe_6anyhow5error9ErrorImplNtNtB4_3fmt5ErrorEECscoiT177WhKJ_10wasmi_fuzz, [16 x i8] c"8\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs8_NtCscK5W4trzgIe_6anyhow5errorINtB5_9ErrorImplNtNtCskKLDkoKarTP_4core3fmt5ErrorENtBQ_5Debug3fmtCscoiT177WhKJ_10wasmi_fuzz, ptr @_RNvXs9_NtCscK5W4trzgIe_6anyhow5errorINtB5_9ErrorImplNtNtCskKLDkoKarTP_4core3fmt5ErrorENtBQ_7Display3fmtCscoiT177WhKJ_10wasmi_fuzz, ptr @8, ptr @_RNvXs7_NtCscK5W4trzgIe_6anyhow5errorINtB5_9ErrorImplNtNtCskKLDkoKarTP_4core3fmt5ErrorENtNtBS_5error5Error6sourceCscoiT177WhKJ_10wasmi_fuzz, ptr @_RNvYINtNtCscK5W4trzgIe_6anyhow5error9ErrorImplNtNtCskKLDkoKarTP_4core3fmt5ErrorENtNtBM_5error5Error7type_idCscoiT177WhKJ_10wasmi_fuzz, ptr @_RNvYINtNtCscK5W4trzgIe_6anyhow5error9ErrorImplNtNtCskKLDkoKarTP_4core3fmt5ErrorENtNtBM_5error5Error11descriptionCscoiT177WhKJ_10wasmi_fuzz, ptr @_RNvYINtNtCscK5W4trzgIe_6anyhow5error9ErrorImplNtNtCskKLDkoKarTP_4core3fmt5ErrorENtNtBM_5error5Error5causeCscoiT177WhKJ_10wasmi_fuzz, ptr @_RNvXs7_NtCscK5W4trzgIe_6anyhow5errorINtB5_9ErrorImplNtNtCskKLDkoKarTP_4core3fmt5ErrorENtNtBS_5error5Error7provideCscoiT177WhKJ_10wasmi_fuzz }>, align 8
@10 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCscK5W4trzgIe_6anyhow5error9ErrorImplNtNtNtB4_2io5error5ErrorEECscoiT177WhKJ_10wasmi_fuzz, [16 x i8] c"@\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs9_NtCscK5W4trzgIe_6anyhow5errorINtB5_9ErrorImplNtNtNtCskKLDkoKarTP_4core2io5error5ErrorENtNtBU_3fmt7Display3fmtCscoiT177WhKJ_10wasmi_fuzz }>, align 8
@11 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCscK5W4trzgIe_6anyhow5error9ErrorImplNtNtNtB4_2io5error5ErrorEECscoiT177WhKJ_10wasmi_fuzz, [16 x i8] c"@\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs8_NtCscK5W4trzgIe_6anyhow5errorINtB5_9ErrorImplNtNtNtCskKLDkoKarTP_4core2io5error5ErrorENtNtBU_3fmt5Debug3fmtCscoiT177WhKJ_10wasmi_fuzz, ptr @_RNvXs9_NtCscK5W4trzgIe_6anyhow5errorINtB5_9ErrorImplNtNtNtCskKLDkoKarTP_4core2io5error5ErrorENtNtBU_3fmt7Display3fmtCscoiT177WhKJ_10wasmi_fuzz, ptr @10, ptr @_RNvXs7_NtCscK5W4trzgIe_6anyhow5errorINtB5_9ErrorImplNtNtNtCskKLDkoKarTP_4core2io5error5ErrorENtNtBU_5error5Error6sourceCscoiT177WhKJ_10wasmi_fuzz, ptr @_RNvYINtNtCscK5W4trzgIe_6anyhow5error9ErrorImplNtNtNtCskKLDkoKarTP_4core2io5error5ErrorENtNtBO_5error5Error7type_idCscoiT177WhKJ_10wasmi_fuzz, ptr @_RNvYINtNtCscK5W4trzgIe_6anyhow5error9ErrorImplNtNtNtCskKLDkoKarTP_4core2io5error5ErrorENtNtBO_5error5Error11descriptionCscoiT177WhKJ_10wasmi_fuzz, ptr @_RNvYINtNtCscK5W4trzgIe_6anyhow5error9ErrorImplNtNtNtCskKLDkoKarTP_4core2io5error5ErrorENtNtBO_5error5Error5causeCscoiT177WhKJ_10wasmi_fuzz, ptr @_RNvXs7_NtCscK5W4trzgIe_6anyhow5errorINtB5_9ErrorImplNtNtNtCskKLDkoKarTP_4core2io5error5ErrorENtNtBU_5error5Error7provideCscoiT177WhKJ_10wasmi_fuzz }>, align 8
@12 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 333163667488509831 to ptr), ptr inttoptr (i64 -4432747891511763828 to ptr) }>, align 8
@13 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 7429658065514507536 to ptr), ptr inttoptr (i64 -6911765289239786968 to ptr) }>, align 8
@14 = private unnamed_addr constant [35 x i8] c" unexpected invalid Wasm module: \C0\00", align 1
@15 = private unnamed_addr constant [26 x i8] c"crates/fuzz/src/module.rs\00", align 1
@16 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @15, [16 x i8] c"\19\00\00\00\00\00\00\00\19\00\00\00\0D\00\00\00" }>, align 8
@17 = private unnamed_addr constant [17 x i8] c"\0Einvalid Wasm: \C0\00", align 1
@18 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @15, [16 x i8] c"\19\00\00\00\00\00\00\00F\00\00\00\19\00\00\00" }>, align 8
@19 = private unnamed_addr constant [60 x i8] c"internal error: entered unreachable code: invalid Once state", align 1
@20 = private unnamed_addr constant [87 x i8] c"/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed/library/std/src/sys/sync/once/futex.rs\00", align 1
@21 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @20, [16 x i8] c"V\00\00\00\00\00\00\00`\00\00\00\12\00\00\00" }>, align 8
@_RNvNvXs1A_NtCs7wImhEnBy0k_10wasm_smith4coreNtB8_15InstructionKindNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt7___NAMES = external local_unnamed_addr global { ptr, i64 }
@_RNvNvXs1A_NtCs7wImhEnBy0k_10wasm_smith4coreNtB8_15InstructionKindNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt8___OFFSET = external global [13 x i64]
@22 = private unnamed_addr constant [8 x i8] c"FlagSet(", align 1
@23 = private unnamed_addr constant [1 x i8] c")", align 1
@24 = private unnamed_addr constant [3 x i8] c" | ", align 1
@25 = private unnamed_addr constant [3 x i8] c"\C0\C0\00", align 1
@26 = private unnamed_addr constant [4 x i8] c"\01\0A\C0\00", align 1
@27 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtCs13fhi2aYsSw_7flagset7FlagSetNtNtCs7wImhEnBy0k_10wasm_smith4core15InstructionKindENtB6_5Debug3fmtCscoiT177WhKJ_10wasmi_fuzz }>, align 8
@28 = private unnamed_addr constant [16 x i8] c"InstructionKinds", align 1
@29 = private unnamed_addr constant [79 x i8] c"/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed/library/core/src/slice/iter.rs\00", align 1
@30 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @29, [16 x i8] c"N\00\00\00\00\00\00\00\0B\08\00\00\11\00\00\00" }>, align 8
@31 = private unnamed_addr constant [25 x i8] c"assertion failed: is_null", align 1
@32 = private unnamed_addr constant [25 x i8] c"crates/fuzz/src/value.rs\00", align 1
@33 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @32, [16 x i8] c"\18\00\00\00\00\00\00\00Z\00\00\00\11\00\00\00" }>, align 8
@34 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @32, [16 x i8] c"\18\00\00\00\00\00\00\00^\00\00\00\11\00\00\00" }>, align 8
@35 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECscoiT177WhKJ_10wasmi_fuzz, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB7_3fmt5Debug3fmtCscoiT177WhKJ_10wasmi_fuzz }>, align 8
@36 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsf_NtCskKLDkoKarTP_4core3fmtbNtB5_5Debug3fmt }>, align 8
@37 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00", ptr @_RNvXs1n_NtCs7wImhEnBy0k_10wasm_smith4coreNtB6_16InstructionKindsNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt }>, align 8
@38 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsZ_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_5Debug3fmt }>, align 8
@39 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsX_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_5Debug3fmt }>, align 8
@40 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00", ptr @_RNvXsY_NtNtCskKLDkoKarTP_4core3fmt3numoNtB7_5Debug3fmt }>, align 8
@41 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00", ptr @_RNvXsW_NtNtCskKLDkoKarTP_4core3fmt3nummNtB7_5Debug3fmt }>, align 8
@42 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\0C\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00", ptr @_RNvXs5_NtCs7wImhEnBy0k_10wasm_smith6configNtB5_19MemoryOffsetChoicesNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt }>, align 8
@43 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsU_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_5Debug3fmt }>, align 8
@44 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRbNtB6_5Debug3fmtCscoiT177WhKJ_10wasmi_fuzz }>, align 8
@45 = private unnamed_addr constant [17 x i8] c"available_imports", align 1
@46 = private unnamed_addr constant [7 x i8] c"exports", align 1
@47 = private unnamed_addr constant [18 x i8] c"allow_start_export", align 1
@48 = private unnamed_addr constant [20 x i8] c"allowed_instructions", align 1
@49 = private unnamed_addr constant [12 x i8] c"allow_floats", align 1
@50 = private unnamed_addr constant [19 x i8] c"bulk_memory_enabled", align 1
@51 = private unnamed_addr constant [17 x i8] c"canonicalize_nans", align 1
@52 = private unnamed_addr constant [14 x i8] c"disallow_traps", align 1
@53 = private unnamed_addr constant [18 x i8] c"exceptions_enabled", align 1
@54 = private unnamed_addr constant [17 x i8] c"export_everything", align 1
@55 = private unnamed_addr constant [10 x i8] c"gc_enabled", align 1
@56 = private unnamed_addr constant [25 x i8] c"custom_page_sizes_enabled", align 1
@57 = private unnamed_addr constant [24 x i8] c"generate_custom_sections", align 1
@58 = private unnamed_addr constant [11 x i8] c"max_aliases", align 1
@59 = private unnamed_addr constant [14 x i8] c"max_components", align 1
@60 = private unnamed_addr constant [17 x i8] c"max_data_segments", align 1
@61 = private unnamed_addr constant [20 x i8] c"max_element_segments", align 1
@62 = private unnamed_addr constant [12 x i8] c"max_elements", align 1
@63 = private unnamed_addr constant [11 x i8] c"max_exports", align 1
@64 = private unnamed_addr constant [9 x i8] c"max_funcs", align 1
@65 = private unnamed_addr constant [11 x i8] c"max_globals", align 1
@66 = private unnamed_addr constant [11 x i8] c"max_imports", align 1
@67 = private unnamed_addr constant [13 x i8] c"max_instances", align 1
@68 = private unnamed_addr constant [16 x i8] c"max_instructions", align 1
@69 = private unnamed_addr constant [12 x i8] c"max_memories", align 1
@70 = private unnamed_addr constant [18 x i8] c"max_memory32_bytes", align 1
@71 = private unnamed_addr constant [18 x i8] c"max_memory64_bytes", align 1
@72 = private unnamed_addr constant [11 x i8] c"max_modules", align 1
@73 = private unnamed_addr constant [17 x i8] c"max_nesting_depth", align 1
@74 = private unnamed_addr constant [18 x i8] c"max_table_elements", align 1
@75 = private unnamed_addr constant [10 x i8] c"max_tables", align 1
@76 = private unnamed_addr constant [8 x i8] c"max_tags", align 1
@77 = private unnamed_addr constant [13 x i8] c"max_type_size", align 1
@78 = private unnamed_addr constant [9 x i8] c"max_types", align 1
@79 = private unnamed_addr constant [10 x i8] c"max_values", align 1
@80 = private unnamed_addr constant [16 x i8] c"memory64_enabled", align 1
@81 = private unnamed_addr constant [24 x i8] c"memory_max_size_required", align 1
@82 = private unnamed_addr constant [21 x i8] c"memory_offset_choices", align 1
@83 = private unnamed_addr constant [17 x i8] c"min_data_segments", align 1
@84 = private unnamed_addr constant [20 x i8] c"min_element_segments", align 1
@85 = private unnamed_addr constant [12 x i8] c"min_elements", align 1
@86 = private unnamed_addr constant [11 x i8] c"min_exports", align 1
@87 = private unnamed_addr constant [9 x i8] c"min_funcs", align 1
@88 = private unnamed_addr constant [11 x i8] c"min_globals", align 1
@89 = private unnamed_addr constant [11 x i8] c"min_imports", align 1
@90 = private unnamed_addr constant [12 x i8] c"min_memories", align 1
@91 = private unnamed_addr constant [10 x i8] c"min_tables", align 1
@92 = private unnamed_addr constant [8 x i8] c"min_tags", align 1
@93 = private unnamed_addr constant [9 x i8] c"min_types", align 1
@94 = private unnamed_addr constant [13 x i8] c"min_uleb_size", align 1
@95 = private unnamed_addr constant [19 x i8] c"multi_value_enabled", align 1
@96 = private unnamed_addr constant [23 x i8] c"reference_types_enabled", align 1
@97 = private unnamed_addr constant [20 x i8] c"relaxed_simd_enabled", align 1
@98 = private unnamed_addr constant [31 x i8] c"saturating_float_to_int_enabled", align 1
@99 = private unnamed_addr constant [26 x i8] c"sign_extension_ops_enabled", align 1
@100 = private unnamed_addr constant [33 x i8] c"shared_everything_threads_enabled", align 1
@101 = private unnamed_addr constant [12 x i8] c"simd_enabled", align 1
@102 = private unnamed_addr constant [17 x i8] c"tail_call_enabled", align 1
@103 = private unnamed_addr constant [23 x i8] c"table_max_size_required", align 1
@104 = private unnamed_addr constant [15 x i8] c"threads_enabled", align 1
@105 = private unnamed_addr constant [19 x i8] c"allow_invalid_funcs", align 1
@106 = private unnamed_addr constant [23 x i8] c"wide_arithmetic_enabled", align 1
@107 = private unnamed_addr constant [22 x i8] c"extended_const_enabled", align 1
@108 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @45, [8 x i8] c"\11\00\00\00\00\00\00\00", ptr @46, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @47, [8 x i8] c"\12\00\00\00\00\00\00\00", ptr @48, [8 x i8] c"\14\00\00\00\00\00\00\00", ptr @49, [8 x i8] c"\0C\00\00\00\00\00\00\00", ptr @50, [8 x i8] c"\13\00\00\00\00\00\00\00", ptr @51, [8 x i8] c"\11\00\00\00\00\00\00\00", ptr @52, [8 x i8] c"\0E\00\00\00\00\00\00\00", ptr @53, [8 x i8] c"\12\00\00\00\00\00\00\00", ptr @54, [8 x i8] c"\11\00\00\00\00\00\00\00", ptr @55, [8 x i8] c"\0A\00\00\00\00\00\00\00", ptr @56, [8 x i8] c"\19\00\00\00\00\00\00\00", ptr @57, [8 x i8] c"\18\00\00\00\00\00\00\00", ptr @58, [8 x i8] c"\0B\00\00\00\00\00\00\00", ptr @59, [8 x i8] c"\0E\00\00\00\00\00\00\00", ptr @60, [8 x i8] c"\11\00\00\00\00\00\00\00", ptr @61, [8 x i8] c"\14\00\00\00\00\00\00\00", ptr @62, [8 x i8] c"\0C\00\00\00\00\00\00\00", ptr @63, [8 x i8] c"\0B\00\00\00\00\00\00\00", ptr @64, [8 x i8] c"\09\00\00\00\00\00\00\00", ptr @65, [8 x i8] c"\0B\00\00\00\00\00\00\00", ptr @66, [8 x i8] c"\0B\00\00\00\00\00\00\00", ptr @67, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr @68, [8 x i8] c"\10\00\00\00\00\00\00\00", ptr @69, [8 x i8] c"\0C\00\00\00\00\00\00\00", ptr @70, [8 x i8] c"\12\00\00\00\00\00\00\00", ptr @71, [8 x i8] c"\12\00\00\00\00\00\00\00", ptr @72, [8 x i8] c"\0B\00\00\00\00\00\00\00", ptr @73, [8 x i8] c"\11\00\00\00\00\00\00\00", ptr @74, [8 x i8] c"\12\00\00\00\00\00\00\00", ptr @75, [8 x i8] c"\0A\00\00\00\00\00\00\00", ptr @76, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @77, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr @78, [8 x i8] c"\09\00\00\00\00\00\00\00", ptr @79, [8 x i8] c"\0A\00\00\00\00\00\00\00", ptr @80, [8 x i8] c"\10\00\00\00\00\00\00\00", ptr @81, [8 x i8] c"\18\00\00\00\00\00\00\00", ptr @82, [8 x i8] c"\15\00\00\00\00\00\00\00", ptr @83, [8 x i8] c"\11\00\00\00\00\00\00\00", ptr @84, [8 x i8] c"\14\00\00\00\00\00\00\00", ptr @85, [8 x i8] c"\0C\00\00\00\00\00\00\00", ptr @86, [8 x i8] c"\0B\00\00\00\00\00\00\00", ptr @87, [8 x i8] c"\09\00\00\00\00\00\00\00", ptr @88, [8 x i8] c"\0B\00\00\00\00\00\00\00", ptr @89, [8 x i8] c"\0B\00\00\00\00\00\00\00", ptr @90, [8 x i8] c"\0C\00\00\00\00\00\00\00", ptr @91, [8 x i8] c"\0A\00\00\00\00\00\00\00", ptr @92, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @93, [8 x i8] c"\09\00\00\00\00\00\00\00", ptr @94, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr @95, [8 x i8] c"\13\00\00\00\00\00\00\00", ptr @96, [8 x i8] c"\17\00\00\00\00\00\00\00", ptr @97, [8 x i8] c"\14\00\00\00\00\00\00\00", ptr @98, [8 x i8] c"\1F\00\00\00\00\00\00\00", ptr @99, [8 x i8] c"\1A\00\00\00\00\00\00\00", ptr @100, [8 x i8] c"!\00\00\00\00\00\00\00", ptr @101, [8 x i8] c"\0C\00\00\00\00\00\00\00", ptr @102, [8 x i8] c"\11\00\00\00\00\00\00\00", ptr @103, [8 x i8] c"\17\00\00\00\00\00\00\00", ptr @104, [8 x i8] c"\0F\00\00\00\00\00\00\00", ptr @105, [8 x i8] c"\13\00\00\00\00\00\00\00", ptr @106, [8 x i8] c"\17\00\00\00\00\00\00\00", ptr @107, [8 x i8] c"\16\00\00\00\00\00\00\00" }>, align 8
@109 = private unnamed_addr constant [6 x i8] c"Config", align 1
@110 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRmNtB6_5Debug3fmtCscoiT177WhKJ_10wasmi_fuzz }>, align 8
@111 = private unnamed_addr constant [19 x i8] c"MemoryOffsetChoices", align 1
@112 = private unnamed_addr constant [5 x i8] c"Error", align 1
@113 = private unnamed_addr constant [4 x i8] c"None", align 1
@114 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_5Debug3fmtCscoiT177WhKJ_10wasmi_fuzz }>, align 8
@115 = private unnamed_addr constant [4 x i8] c"Some", align 1
@116 = private unnamed_addr constant [12 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B", align 1
@117 = private unnamed_addr constant [22 x i8] c"failed to write string", align 1
@118 = private unnamed_addr constant [10 x i8] c"FuzzModule", align 1
@119 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs7wImhEnBy0k_10wasm_smith6config6ConfigECscoiT177WhKJ_10wasmi_fuzz, [16 x i8] c"`\01\00\00\00\00\00\00\10\00\00\00\00\00\00\00", ptr @_RNvXs3_NtCs7wImhEnBy0k_10wasm_smith6configNtB5_6ConfigNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt }>, align 8
@120 = private unnamed_addr constant [6 x i8] c"config", align 1
@121 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCscoiT177WhKJ_10wasmi_fuzz6module9WatSourceEBF_, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1_NtCscoiT177WhKJ_10wasmi_fuzz6moduleNtB5_9WatSourceNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt }>, align 8
@122 = private unnamed_addr constant [3 x i8] c"wat", align 1
@123 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvNtNtCsaoJQ0BThbft_11wasmprinter5print5Print9write_fmt7AdapterINtBI_13PrintFmtWriteQNtNtCsexYYUdYSQU6_5alloc6string6StringEEECscoiT177WhKJ_10wasmi_fuzz, [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNvNtNtCsaoJQ0BThbft_11wasmprinter5print5Print9write_fmtINtB2_7AdapterINtB6_13PrintFmtWriteQNtNtCsexYYUdYSQU6_5alloc6string6StringEENtNtCskKLDkoKarTP_4core3fmt5Write9write_strCscoiT177WhKJ_10wasmi_fuzz, ptr @_RNvYINtNvNtNtCsaoJQ0BThbft_11wasmprinter5print5Print9write_fmt7AdapterINtB9_13PrintFmtWriteQNtNtCsexYYUdYSQU6_5alloc6string6StringEENtNtCskKLDkoKarTP_4core3fmt5Write10write_charCscoiT177WhKJ_10wasmi_fuzz, ptr @_RNvYINtNvNtNtCsaoJQ0BThbft_11wasmprinter5print5Print9write_fmt7AdapterINtB9_13PrintFmtWriteQNtNtCsexYYUdYSQU6_5alloc6string6StringEENtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCscoiT177WhKJ_10wasmi_fuzz }>, align 8
@124 = private unnamed_addr constant [1 x i8] c"\0A", align 1
@125 = private unnamed_addr constant [40 x i8] c"description() is deprecated; use Display", align 1
@126 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 5883805652883263326 to ptr), ptr inttoptr (i64 -5863290666228718298 to ptr) }>, align 8
@127 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 7082989028940618977 to ptr), ptr inttoptr (i64 1133409767824993473 to ptr) }>, align 8
@switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtCs13fhi2aYsSw_7flagset7FlagSetNtNtCs7wImhEnBy0k_10wasm_smith4core15InstructionKindENtB6_5Debug3fmtCscoiT177WhKJ_10wasmi_fuzz = private unnamed_addr constant [12 x i16] [i16 -2, i16 -4, i16 -5, i16 -13, i16 -17, i16 -33, i16 -65, i16 -129, i16 -257, i16 -769, i16 -1025, i16 -2049], align 2

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvCsaoJQ0BThbft_11wasmprinter11print_bytesRShECscoiT177WhKJ_10wasmi_fuzz(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 15 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 16 uses
  %i.d = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 0, ptr %i.d, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs1_CsaoJQ0BThbft_11wasmprinterNtB5_6Config3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.c)
          to label %bb.d unwind label %bb.b

.body7:                                           ; preds = %bb.o, %bb.p, %bb.j, %bb.k, %bb.b, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.p, %bb.j ], [ %i.e, %bb.b ], [ %i.p, %bb.k ], [ %i.u, %bb.p ], [ %i.u, %bb.o ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECscoiT177WhKJ_10wasmi_fuzz(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #23
          to label %common.resume unwind label %bb.w

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body7

bb.c:                                             ; preds = %bb.f
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.c
  %eh.lpad-body = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.m, %bb.e ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsaoJQ0BThbft_11wasmprinter6ConfigECscoiT177WhKJ_10wasmi_fuzz(ptr noalias nofree noundef align 8 dereferenceable(32) %i.c) #23
          to label %.body7 unwind label %bb.w

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !52
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.c, ptr %i.g, align 8, !noalias !52
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %i.b, ptr %i.h, align 8, !noalias !52
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr @2, ptr %i.i, align 8, !noalias !52
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i32 0, ptr %i.j, align 8, !noalias !52
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i64 0, ptr %i.k, align 8, !noalias !52
  store i64 0, ptr %i.a, align 8, !noalias !52
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !52
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.53.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !52
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !52
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !52
  %i.l = invoke noundef ptr @_RNvMs2_CsaoJQ0BThbft_11wasmprinterNtB5_7Printer14print_contents(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2)
          to label %bb.f unwind label %bb.e       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsaoJQ0BThbft_11wasmprinter7PrinterECscoiT177WhKJ_10wasmi_fuzz(ptr noalias nofree noundef align 8 dereferenceable(88) %i.a) #23
          to label %.body unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsaoJQ0BThbft_11wasmprinter7PrinterECscoiT177WhKJ_10wasmi_fuzz(ptr noalias nofree noundef align 8 dereferenceable(88) %i.a)
          to label %bb.h unwind label %bb.c

bb.g:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !52
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.o, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscoiT177WhKJ_10wasmi_fuzz(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %bb.l unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !53 ; 2 uses
  %i.q = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.q, label %.body7, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val3.i.i.i = load ptr, ptr %i.r, align 8, !alias.scope !54, !nonnull !4, !noundef !4
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %.val2.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !55
  br label %.body7

bb.l:                                             ; preds = %bb.i
  %.val.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !53 ; 2 uses
  %i.s = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsaoJQ0BThbft_11wasmprinter6ConfigECscoiT177WhKJ_10wasmi_fuzz.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val1.i.i.i = load ptr, ptr %i.t, align 8, !alias.scope !54, !nonnull !4, !noundef !4
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !56
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsaoJQ0BThbft_11wasmprinter6ConfigECscoiT177WhKJ_10wasmi_fuzz.exit

bb.n:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscoiT177WhKJ_10wasmi_fuzz(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %bb.q unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i9 = load i64, ptr %i.c, align 8, !alias.scope !57 ; 2 uses
  %i.v = icmp eq i64 %.val2.i.i.i9, 0
  br i1 %i.v, label %.body7, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val3.i.i.i10 = load ptr, ptr %i.w, align 8, !alias.scope !58, !nonnull !4, !noundef !4
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i10, i64 noundef %.val2.i.i.i9, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !59
  br label %.body7

bb.q:                                             ; preds = %bb.n
  %.val.i.i.i12 = load i64, ptr %i.c, align 8, !alias.scope !57 ; 2 uses
  %i.x = icmp eq i64 %.val.i.i.i12, 0
  br i1 %i.x, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsaoJQ0BThbft_11wasmprinter6ConfigECscoiT177WhKJ_10wasmi_fuzz.exit16, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val1.i.i.i13 = load ptr, ptr %i.y, align 8, !alias.scope !58, !nonnull !4, !noundef !4
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i13, i64 noundef %.val.i.i.i12, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !60
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsaoJQ0BThbft_11wasmprinter6ConfigECscoiT177WhKJ_10wasmi_fuzz.exit16

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsaoJQ0BThbft_11wasmprinter6ConfigECscoiT177WhKJ_10wasmi_fuzz.exit16: ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECscoiT177WhKJ_10wasmi_fuzz.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECscoiT177WhKJ_10wasmi_fuzz.exit: ; preds = %bb.v, %bb.u, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsaoJQ0BThbft_11wasmprinter6ConfigECscoiT177WhKJ_10wasmi_fuzz.exit16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsaoJQ0BThbft_11wasmprinter6ConfigECscoiT177WhKJ_10wasmi_fuzz.exit: ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscoiT177WhKJ_10wasmi_fuzz(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.u unwind label %bb.s

bb.s:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsaoJQ0BThbft_11wasmprinter6ConfigECscoiT177WhKJ_10wasmi_fuzz.exit
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i = load i64, ptr %i.d, align 8, !alias.scope !61 ; 2 uses
  %i.aa = icmp eq i64 %.val2.i.i, 0
  br i1 %i.aa, label %common.resume, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.val3.i.i = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !62, !nonnull !4, !noundef !4
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %.val2.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !63
  br label %common.resume

bb.u:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsaoJQ0BThbft_11wasmprinter6ConfigECscoiT177WhKJ_10wasmi_fuzz.exit
  %.val.i.i = load i64, ptr %i.d, align 8, !alias.scope !61 ; 2 uses
  %i.ab = icmp eq i64 %.val.i.i, 0
  br i1 %i.ab, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECscoiT177WhKJ_10wasmi_fuzz.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.val1.i.i = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !62, !nonnull !4, !noundef !4
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !64
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECscoiT177WhKJ_10wasmi_fuzz.exit

common.resume:                                    ; preds = %.body7, %bb.s, %bb.t
  %common.resume.op = phi { ptr, i32 } [ %i.z, %bb.s ], [ %i.z, %bb.t ], [ %.pn, %.body7 ]
  resume { ptr, i32 } %common.resume.op

bb.w:                                             ; preds = %.body, %.body7
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noalias noundef nonnull ptr @_RINvMNtCscK5W4trzgIe_6anyhow5errorNtB5_5Error9constructNtNtCskKLDkoKarTP_4core3fmt5ErrorECscoiT177WhKJ_10wasmi_fuzz(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvXs0_NtNtCsG258MDvU3F_3std4sync9lazy_lockINtB5_8LazyLockNtNtB9_9backtrace7CaptureNCNvNtBW_6helper12lazy_resolve0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscoiT177WhKJ_10wasmi_fuzz:bb.a

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsG258MDvU3F_3std9backtrace14BacktraceFrameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscoiT177WhKJ_10wasmi_fuzz(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i = load i64, ptr %0, align 8, !alias.scope !263 ; 2 uses
  %i.d = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.d, label %common.resume, label %common.resume.sink.split

bb.e:                                             ; preds = %bb.c
  %.val.i.i.i = load i64, ptr %0, align 8, !alias.scope !263 ; 2 uses
  %i.e = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtNtCsG258MDvU3F_3std9backtrace6helper12lazy_resolve0ECscoiT177WhKJ_10wasmi_fuzz.exit, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtNtCsG258MDvU3F_3std9backtrace6helper12lazy_resolve0ECscoiT177WhKJ_10wasmi_fuzz.exit.sink.split

common.resume.sink.split:                         ; preds = %bb.d, %bb.g
  %.val2.i.i.sink = phi i64 [ %.val2.i.i, %bb.g ], [ %.val2.i.i.i, %bb.d ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.h, %bb.g ], [ %i.c, %bb.d ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i.i = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4
  %i.g = mul nuw i64 %.val2.i.i.sink, 56
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 8) #25
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.g, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.h, %bb.g ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsG258MDvU3F_3std9backtrace14BacktraceFrameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscoiT177WhKJ_10wasmi_fuzz(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i = load i64, ptr %0, align 8, !alias.scope !264 ; 2 uses
  %i.i = icmp eq i64 %.val2.i.i, 0
  br i1 %i.i, label %common.resume, label %common.resume.sink.split

bb.h:                                             ; preds = %bb.f
  %.val.i.i = load i64, ptr %0, align 8, !alias.scope !264 ; 2 uses
  %i.j = icmp eq i64 %.val.i.i, 0
  br i1 %i.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtNtCsG258MDvU3F_3std9backtrace6helper12lazy_resolve0ECscoiT177WhKJ_10wasmi_fuzz.exit, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtNtCsG258MDvU3F_3std9backtrace6helper12lazy_resolve0ECscoiT177WhKJ_10wasmi_fuzz.exit.sink.split

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtNtCsG258MDvU3F_3std9backtrace6helper12lazy_resolve0ECscoiT177WhKJ_10wasmi_fuzz.exit.sink.split: ; preds = %bb.h, %bb.e
  %.val.i.i.sink = phi i64 [ %.val.i.i.i, %bb.e ], [ %.val.i.i, %bb.h ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i = load ptr, ptr %i.k, align 8, !nonnull !4, !noundef !4
  %i.l = mul nuw i64 %.val.i.i.sink, 56
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 8) #25
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtNtCsG258MDvU3F_3std9backtrace6helper12lazy_resolve0ECscoiT177WhKJ_10wasmi_fuzz.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtNtCsG258MDvU3F_3std9backtrace6helper12lazy_resolve0ECscoiT177WhKJ_10wasmi_fuzz.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtNtCsG258MDvU3F_3std9backtrace6helper12lazy_resolve0ECscoiT177WhKJ_10wasmi_fuzz.exit.sink.split, %bb.h, %bb.e, %bb.a
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1A_NtCs7wImhEnBy0k_10wasm_smith4coreNtB6_15InstructionKindNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !13, !noundef !4
  %i.b = zext nneg i8 %i.a to i64
  %i.c = load ptr, ptr @_RNvNvXs1A_NtCs7wImhEnBy0k_10wasm_smith4coreNtB8_15InstructionKindNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt7___NAMES, align 8, !nonnull !4, !noundef !4
  %i.d = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs1A_NtCs7wImhEnBy0k_10wasm_smith4coreNtB8_15InstructionKindNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt7___NAMES, i64 8), align 8, !noundef !4
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter27debug_c_like_enum_write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @_RNvNvXs1A_NtCs7wImhEnBy0k_10wasm_smith4coreNtB8_15InstructionKindNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt8___OFFSET, i64 noundef 13, i64 noundef %i.b)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_Cs7tz819kMsd3_12block_bufferINtB5_11BlockBufferINtNtCs8I1Ugy73B0z_7typenum4uint4UIntIBR_IBR_IBR_IBR_IBR_IBR_NtBT_5UTermNtNtBV_3bit2B1ENtB22_2B0EB2f_EB2f_EB2f_EB2f_EB2f_ENtB5_5EagerENtNtCskKLDkoKarTP_4core7default7Default7defaultCscoiT177WhKJ_10wasmi_fuzz(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([65 x i8]) align 1 captures(none) dereferenceable(65) %0) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXsg_CseMxgY3HaIuJ_13generic_arrayINtB6_12GenericArrayhINtNtCs8I1Ugy73B0z_7typenum4uint4UIntIBV_IBV_IBV_IBV_IBV_IBV_NtBX_5UTermNtNtBZ_3bit2B1ENtB26_2B0EB2j_EB2j_EB2j_EB2j_EB2j_EEINtNtB6_8sequence15GenericSequencehE8generateNCNvXNtB6_5implsBz_NtNtCskKLDkoKarTP_4core7default7Default7default0ECscoiT177WhKJ_10wasmi_fuzz(ptr noalias nofree noundef nonnull sret([64 x i8]) align 1 captures(none) dereferenceable(64) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 0, ptr %i.a, align 1
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1_NtCscoiT177WhKJ_10wasmi_fuzz6moduleNtB5_9WatSourceNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsq_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  %i.b = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !align !12, !noundef !4
  %i.e = call noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.d, ptr noundef nonnull @26, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.e
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsG258MDvU3F_3std9backtrace15BacktraceSymbolENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscoiT177WhKJ_10wasmi_fuzz(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCscoiT177WhKJ_10wasmi_fuzz.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = mul nuw i64 %.val, 72
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #25
  br label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCscoiT177WhKJ_10wasmi_fuzz.exit

_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCscoiT177WhKJ_10wasmi_fuzz.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTjNtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core14branch_hinting10BranchHintEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscoiT177WhKJ_10wasmi_fuzz(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCscoiT177WhKJ_10wasmi_fuzz.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = shl nuw i64 %.val, 4
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #25
  br label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCscoiT177WhKJ_10wasmi_fuzz.exit

_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCscoiT177WhKJ_10wasmi_fuzz.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscoiT177WhKJ_10wasmi_fuzz(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCscoiT177WhKJ_10wasmi_fuzz.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #25
  br label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCscoiT177WhKJ_10wasmi_fuzz.exit

_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCscoiT177WhKJ_10wasmi_fuzz.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVectENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscoiT177WhKJ_10wasmi_fuzz(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCscoiT177WhKJ_10wasmi_fuzz.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = shl nuw i64 %.val, 1
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 2) #25
  br label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCscoiT177WhKJ_10wasmi_fuzz.exit

_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCscoiT177WhKJ_10wasmi_fuzz.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtCs13fhi2aYsSw_7flagset7FlagSetNtNtCs7wImhEnBy0k_10wasm_smith4core15InstructionKindENtB6_5Debug3fmtCscoiT177WhKJ_10wasmi_fuzz(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [1 x i8], align 1                 ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !4, !align !270, !noundef !4
  %.val = load i16, ptr %i.d, align 2
  %.val1 = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2 = load ptr, ptr %i.e, align 8, !nonnull !4, !align !12, !noundef !4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.val2, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !invariant.load !4, !nonnull !4 ; 2 uses
  %i.h = tail call noundef zeroext i1 %i.g(ptr noundef nonnull %.val1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 8) #29, !inline_history !265
  br i1 %i.h, label %_RNvXs1_Cs13fhi2aYsSw_7flagsetINtB5_7FlagSetNtNtCs7wImhEnBy0k_10wasm_smith4core15InstructionKindENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCscoiT177WhKJ_10wasmi_fuzz.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.423.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.427.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.preheader.i
  %.sroa.83.0.i = phi i64 [ 0, %.preheader.i ], [ %i.o, %bb.d ] ; 2 uses
  %.sroa.0.04.i = phi i64 [ 0, %.preheader.i ], [ %i.l, %bb.d ] ; 3 uses
  %umax.i.i.i = call i64 @llvm.umax.i64(i64 %.sroa.0.04.i, i64 12)
  %exitcond.not.i.i.i15 = icmp ugt i64 %.sroa.0.04.i, 11
  br i1 %exitcond.not.i.i.i15, label %._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %exitcond.not.i.i.i = icmp eq i64 %i.l, %umax.i.i.i
  br i1 %exitcond.not.i.i.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.k = phi i64 [ %i.l, %bb.c ], [ %.sroa.0.04.i, %bb.b ] ; 2 uses
  %2 = getelementptr inbounds nuw i8, ptr @116, i64 %i.k
  %3 = load i8, ptr %2, align 1, !range !13, !noalias !271, !noundef !4 ; 2 uses
  %i.l = add nuw nsw i64 %i.k, 1                  ; 3 uses
  %4 = zext nneg i8 %3 to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtCs13fhi2aYsSw_7flagset7FlagSetNtNtCs7wImhEnBy0k_10wasm_smith4core15InstructionKindENtB6_5Debug3fmtCscoiT177WhKJ_10wasmi_fuzz, i64 %4
  %switch.load = load i16, ptr %switch.gep, align 2
  %i.m = or i16 %switch.load, %.val
  %i.n = icmp eq i16 %i.m, -1
  br i1 %i.n, label %bb.d, label %bb.c

bb.d:                                             ; preds = %.lr.ph
  %i.o = add i64 %.sroa.83.0.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 %3, ptr %i.c, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.not52.i = icmp eq i64 %.sroa.83.0.i, 0        ; 2 uses
  %spec.select.i = select i1 %.not52.i, ptr inttoptr (i64 1 to ptr), ptr @24
  %spec.select20.i = select i1 %.not52.i, i64 0, i64 3
  store ptr %spec.select.i, ptr %i.b, align 8
  store i64 %spec.select20.i, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCscoiT177WhKJ_10wasmi_fuzz, ptr %.sroa.423.0..sroa_idx.i, align 8
  store ptr %i.c, ptr %i.j, align 8
  store ptr @_RNvXs1A_NtCs7wImhEnBy0k_10wasm_smith4coreNtB6_15InstructionKindNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, ptr %.sroa.427.0..sroa_idx.i, align 8
  %i.p = call noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %.val1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val2, ptr noundef nonnull @25, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.p, label %_RNvXs1_Cs13fhi2aYsSw_7flagsetINtB5_7FlagSetNtNtCs7wImhEnBy0k_10wasm_smith4core15InstructionKindENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCscoiT177WhKJ_10wasmi_fuzz.exit, label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.c
  %i.q = call noundef zeroext i1 %i.g(ptr noundef nonnull %.val1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 1) #29, !inline_history !265
  br label %_RNvXs1_Cs13fhi2aYsSw_7flagsetINtB5_7FlagSetNtNtCs7wImhEnBy0k_10wasm_smith4core15InstructionKindENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCscoiT177WhKJ_10wasmi_fuzz.exit

_RNvXs1_Cs13fhi2aYsSw_7flagsetINtB5_7FlagSetNtNtCs7wImhEnBy0k_10wasm_smith4core15InstructionKindENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCscoiT177WhKJ_10wasmi_fuzz.exit: ; preds = %bb.d, %bb.a, %._crit_edge
  %.sroa.0.0.i = phi i1 [ %i.q, %._crit_edge ], [ true, %bb.a ], [ true, %bb.d ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRbNtB6_5Debug3fmtCscoiT177WhKJ_10wasmi_fuzz(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.b = tail call noundef zeroext i1 @_RNvXsg_NtCskKLDkoKarTP_4core3fmtbNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRhNtB6_5Debug3fmtCscoiT177WhKJ_10wasmi_fuzz(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !alias.scope !275, !noalias !276, !noundef !4 ; 2 uses
  %i.d = and i32 %i.c, 33554432
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.c, 67108864
  %.not1.i = icmp eq i32 %i.e, 0
  br i1 %.not1.i, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvXse_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsU_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_5Debug3fmt.exit

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXNtNtNtCskKLDkoKarTP_4core3fmt3num3imphNtB6_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsU_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_5Debug3fmt.exit

bb.e:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXsg_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsU_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_5Debug3fmt.exit

_RNvXsU_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i = phi i1 [ %i.f, %bb.c ], [ %i.h, %bb.e ], [ %i.g, %bb.d ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRmNtB6_5Debug3fmtCscoiT177WhKJ_10wasmi_fuzz(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !280, !noundef !4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !alias.scope !281, !noalias !282, !noundef !4 ; 2 uses
  %i.d = and i32 %i.c, 33554432
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.c, 67108864
  %.not1.i = icmp eq i32 %i.e, 0
  br i1 %.not1.i, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvXsu_NtNtCskKLDkoKarTP_4core3fmt3nummNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsW_NtNtCskKLDkoKarTP_4core3fmt3nummNtB7_5Debug3fmt.exit

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXs8_NtNtNtCskKLDkoKarTP_4core3fmt3num3impmNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsW_NtNtCskKLDkoKarTP_4core3fmt3nummNtB7_5Debug3fmt.exit

bb.e:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXsw_NtNtCskKLDkoKarTP_4core3fmt3nummNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsW_NtNtCskKLDkoKarTP_4core3fmt3nummNtB7_5Debug3fmt.exit

_RNvXsW_NtNtCskKLDkoKarTP_4core3fmt3nummNtB7_5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i = phi i1 [ %i.f, %bb.c ], [ %i.h, %bb.e ], [ %i.g, %bb.d ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCscoiT177WhKJ_10wasmi_fuzz(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4
  %i.d = tail call noundef zeroext i1 @_RNvXsi_NtCskKLDkoKarTP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1n_NtCs7wImhEnBy0k_10wasm_smith4coreNtB6_16InstructionKindsNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(2) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 16, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @27)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, i64 } @_RNvXs1y_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCscoiT177WhKJ_10wasmi_fuzz(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0, i64 noundef %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = mul i64 %i.b, %1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.c
  %i.g = insertvalue { ptr, i64 } poison, ptr %i.f, 0
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %i.b, 1
  ret { ptr, i64 } %i.h
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_NtCscoiT177WhKJ_10wasmi_fuzz5valueNtNtCsefoF4u9kbII_5wasmi5value3ValINtNtCskKLDkoKarTP_4core7convert4FromNtB5_7FuzzValE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 16 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %1, align 16, !range !283, !noundef !4 ; 2 uses
  switch i8 %i.a, label %default.unreachable2 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
  ]

default.unreachable2:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.c, ptr %i.d, align 4
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.f, ptr %i.g, align 8
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = load i32, ptr %i.h, align 4, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.i, ptr %i.j, align 4
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.m, align 8
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load i128, ptr %i.n, align 16, !noundef !4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i128 %i.o, ptr %i.p, align 1
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.r = load i8, ptr %i.q, align 1, !range !10, !noundef !4
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.k, label %bb.j, !prof !9

bb.h:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.u = load i8, ptr %i.t, align 1, !range !10, !noundef !4
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.m, label %bb.l, !prof !9

end_hunk_1
