Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/tensor_tools.tensor_tools.f3cbf8f2a35afc65-cgu.09?download=true
inline.NumInlined: 382
inline.NumDeleted: 214
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant <{ [24 x i8], ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvMs0_NtNtCs5Xr050g3D4S_3std4sync4onceNtBd_4Once15call_once_forceNCINvMNtBf_9once_lockINtB1g_8OnceLockNtNtCsgCecv3eZDcN_5alloc6string6StringE10initializeNCINvB1f_11get_or_initNCNvXsb_CskVIURZGHVHJ_12tensor_toolsNtB34_7CommandNtNtCsflt7xRw9JFr_12clap_builder6derive10Subcommand19augment_subcommands0E0zE0E0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB34_, ptr @_RNCINvMs0_NtNtCs5Xr050g3D4S_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1b_8OnceLockNtNtCsgCecv3eZDcN_5alloc6string6StringE10initializeNCINvB1a_11get_or_initNCNvXsb_CskVIURZGHVHJ_12tensor_toolsNtB2Z_7CommandNtNtCsflt7xRw9JFr_12clap_builder6derive10Subcommand19augment_subcommands0E0zE0E0B2Z_ }>, align 8
@1 = private unnamed_addr constant [118 x i8] c"/home/opt-bench/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/std/src/sync/once.rs\00", align 1
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"u\00\00\00\00\00\00\00\E3\00\00\00\14\00\00\00" }>, align 8
@3 = private unnamed_addr constant <{ [24 x i8], ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvMs0_NtNtCs5Xr050g3D4S_3std4sync4onceNtBd_4Once15call_once_forceNCINvMNtBf_9once_lockINtB1g_8OnceLockyE10initializeNCINvB1f_11get_or_initNCNvB1f_10try_insert0E0zE0E0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableCskVIURZGHVHJ_12tensor_tools, ptr @_RNCINvMs0_NtNtCs5Xr050g3D4S_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1b_8OnceLockyE10initializeNCINvB1a_11get_or_initNCNvB1a_10try_insert0E0zE0E0CskVIURZGHVHJ_12tensor_tools }>, align 8
@4 = private unnamed_addr constant [43 x i8] c"fatal runtime error: unreachable, aborting\0A", align 1
@5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"u\00\00\00\00\00\00\00\E3\00\00\001\00\00\00" }>, align 8
@6 = private unnamed_addr constant [123 x i8] c"/home/opt-bench/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/std/src/sync/once_lock.rs\00", align 1
@7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @6, [16 x i8] c"z\00\00\00\00\00\00\005\01\00\004\00\00\00" }>, align 8
@8 = private unnamed_addr constant [25 x i8] c"tensor-tools/src/main.rs\00", align 1
@9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @8, [16 x i8] c"\18\00\00\00\00\00\00\00\97\00\00\00!\00\00\00" }>, align 8
@10 = private unnamed_addr constant [116 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/clap_builder-4.6.6/src/builder/value_parser.rs\00", align 1
@11 = private unnamed_addr constant [96 x i8] c"ValueEnum::value_variants contains only values with a corresponding ValueEnum::to_possible_value", align 1
@12 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"s\00\00\00\00\00\00\00c\04\00\00\16\00\00\00" }>, align 8
@13 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsK_NtCsf3Ta7LF998c_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt }>, align 8
@14 = private unnamed_addr constant [126 x i8] c"\FF\00\00\00\FF\00\00\00\FF\00\00\00\09\00\00\01\00\00\FF\00\00\00\FF\00\00\00\01\00\FF\00\00\00\FF\00\00\00\FF\00\00\00\09\00\FF\00\00\00\FF\00\00\00\FF\00\00\00\01\00\FF\00\00\00\FF\00\00\00\FF\00\00\00\00\00\00\02\00\00\FF\00\00\00\FF\00\00\00\00\00\00\03\00\00\FF\00\00\00\FF\00\00\00\00\00\FF\00\00\00\FF\00\00\00\FF\00\00\00\00\00\FE\00\00\00\00\00\00\00\00\00\00\00\00\00", align 2
@15 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 361354793186487597 to ptr), ptr inttoptr (i64 3547197125777974189 to ptr) }>, align 8
@16 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -995348398292511321 to ptr), ptr inttoptr (i64 -8842699250931361313 to ptr) }>, align 8
@17 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -6122541176708211260 to ptr), ptr inttoptr (i64 1074553320540332445 to ptr) }>, align 8
@18 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -3670754173410178879 to ptr), ptr inttoptr (i64 -3375759610920111893 to ptr) }>, align 8
@19 = private unnamed_addr constant [61 x i8] c"fatal runtime error: thread local panicked on drop, aborting\0A", align 1
@20 = private unnamed_addr constant [60 x i8] c"internal error: entered unreachable code: invalid Once state", align 1
@21 = private unnamed_addr constant [128 x i8] c"/home/opt-bench/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/std/src/sys/sync/once/futex.rs\00", align 1
@22 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @21, [16 x i8] c"\7F\00\00\00\00\00\00\00`\00\00\00\12\00\00\00" }>, align 8
@23 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsc_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB5_15EnumValueParserNtCskVIURZGHVHJ_12tensor_tools12QuantizationENtB5_14AnyValueParser9parse_refB1m_, ptr @_RNvXsc_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB5_15EnumValueParserNtCskVIURZGHVHJ_12tensor_tools12QuantizationENtB5_14AnyValueParser10parse_ref_B1m_, ptr @_RNvXsc_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB5_15EnumValueParserNtCskVIURZGHVHJ_12tensor_tools12QuantizationENtB5_14AnyValueParser7type_idB1m_, ptr @_RNvXsc_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB5_15EnumValueParserNtCskVIURZGHVHJ_12tensor_tools12QuantizationENtB5_14AnyValueParser15possible_valuesB1m_, ptr @_RNvXsc_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB5_15EnumValueParserNtCskVIURZGHVHJ_12tensor_tools12QuantizationENtB5_14AnyValueParser9clone_anyB1m_ }>, align 8
@24 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsc_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB5_15EnumValueParserNtCskVIURZGHVHJ_12tensor_tools16QuantizationModeENtB5_14AnyValueParser9parse_refB1m_, ptr @_RNvXsc_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB5_15EnumValueParserNtCskVIURZGHVHJ_12tensor_tools16QuantizationModeENtB5_14AnyValueParser10parse_ref_B1m_, ptr @_RNvXsc_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB5_15EnumValueParserNtCskVIURZGHVHJ_12tensor_tools16QuantizationModeENtB5_14AnyValueParser7type_idB1m_, ptr @_RNvXsc_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB5_15EnumValueParserNtCskVIURZGHVHJ_12tensor_tools16QuantizationModeENtB5_14AnyValueParser15possible_valuesB1m_, ptr @_RNvXsc_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB5_15EnumValueParserNtCskVIURZGHVHJ_12tensor_tools16QuantizationModeENtB5_14AnyValueParser9clone_anyB1m_ }>, align 8
@25 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsc_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB5_15EnumValueParserNtCskVIURZGHVHJ_12tensor_tools6FormatENtB5_14AnyValueParser9parse_refB1m_, ptr @_RNvXsc_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB5_15EnumValueParserNtCskVIURZGHVHJ_12tensor_tools6FormatENtB5_14AnyValueParser10parse_ref_B1m_, ptr @_RNvXsc_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB5_15EnumValueParserNtCskVIURZGHVHJ_12tensor_tools6FormatENtB5_14AnyValueParser7type_idB1m_, ptr @_RNvXsc_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB5_15EnumValueParserNtCskVIURZGHVHJ_12tensor_tools6FormatENtB5_14AnyValueParser15possible_valuesB1m_, ptr @_RNvXsc_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB5_15EnumValueParserNtCskVIURZGHVHJ_12tensor_tools6FormatENtB5_14AnyValueParser9clone_anyB1m_ }>, align 8
@26 = private unnamed_addr constant [14 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D", align 1
@27 = private unnamed_addr constant [6 x i8] c"\00\01\02\03\04\05", align 1
@28 = private unnamed_addr constant [11 x i8] c"safetensors", align 1
@29 = private unnamed_addr constant [3 x i8] c"npz", align 1
@30 = private unnamed_addr constant [4 x i8] c"ggml", align 1
@31 = private unnamed_addr constant [4 x i8] c"gguf", align 1
@32 = private unnamed_addr constant [3 x i8] c"pth", align 1
@33 = private unnamed_addr constant [6 x i8] c"pickle", align 1
@34 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECskVIURZGHVHJ_12tensor_tools, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsZ_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core3fmt5Write9write_str, ptr @_RNvXsZ_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core3fmt5Write10write_char, ptr @_RNvYNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsf3Ta7LF998c_4core3fmt5Write9write_fmtCskVIURZGHVHJ_12tensor_tools }>, align 8
@35 = private unnamed_addr constant [55 x i8] c"a Display implementation returned an error unexpectedly", align 1
@36 = private unnamed_addr constant [117 x i8] c"/home/opt-bench/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/alloc/src/string.rs\00", align 1
@37 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @36, [16 x i8] c"t\00\00\00\00\00\00\00\AC\0B\00\00\0E\00\00\00" }>, align 8
@38 = private unnamed_addr constant [5 x i8] c"Error", align 1
@39 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNtCsf3Ta7LF998c_4core3anyjNtB2_3Any7type_idCskVIURZGHVHJ_12tensor_tools }>, align 8
@40 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsc_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserFG_RL0_eEINtNtCsf3Ta7LF998c_4core6result6ResultjNtNtNtB1b_3num5error13ParseIntErrorENtB5_14AnyValueParser9parse_refCskVIURZGHVHJ_12tensor_tools, ptr @_RNvXsc_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserFG_RL0_eEINtNtCsf3Ta7LF998c_4core6result6ResultjNtNtNtB1b_3num5error13ParseIntErrorENtB5_14AnyValueParser10parse_ref_CskVIURZGHVHJ_12tensor_tools, ptr @_RNvXsc_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserFG_RL0_eEINtNtCsf3Ta7LF998c_4core6result6ResultjNtNtNtB1b_3num5error13ParseIntErrorENtB5_14AnyValueParser7type_idCskVIURZGHVHJ_12tensor_tools, ptr @_RNvXsc_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserFG_RL0_eEINtNtCsf3Ta7LF998c_4core6result6ResultjNtNtNtB1b_3num5error13ParseIntErrorENtB5_14AnyValueParser15possible_valuesCskVIURZGHVHJ_12tensor_tools, ptr @_RNvXsc_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserFG_RL0_eEINtNtCsf3Ta7LF998c_4core6result6ResultjNtNtNtB1b_3num5error13ParseIntErrorENtB5_14AnyValueParser9clone_anyCskVIURZGHVHJ_12tensor_tools }>, align 8
@41 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXNtCsf3Ta7LF998c_4core3anyNtCskVIURZGHVHJ_12tensor_tools12QuantizationNtB2_3Any7type_idBt_ }>, align 8
@42 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXNtCsf3Ta7LF998c_4core3anyNtCskVIURZGHVHJ_12tensor_tools16QuantizationModeNtB2_3Any7type_idBt_ }>, align 8
@43 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXNtCsf3Ta7LF998c_4core3anyNtCskVIURZGHVHJ_12tensor_tools6FormatNtB2_3Any7type_idBt_ }>, align 8
@44 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools12QuantizationENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB2r_15EnumValueParserB1A_ENtB2r_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1C_, ptr @_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools12QuantizationENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB2r_15EnumValueParserB1A_ENtB2r_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1C_, ptr @_RNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools12QuantizationENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB2l_15EnumValueParserB1u_ENtB2l_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1w_, ptr @_RNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools12QuantizationENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB2l_15EnumValueParserB1u_ENtB2l_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1w_ }>, align 8
@45 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools16QuantizationModeENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB2v_15EnumValueParserB1A_ENtB2v_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1C_, ptr @_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools16QuantizationModeENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB2v_15EnumValueParserB1A_ENtB2v_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1C_, ptr @_RNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools16QuantizationModeENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB2p_15EnumValueParserB1u_ENtB2p_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1w_, ptr @_RNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools16QuantizationModeENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB2p_15EnumValueParserB1u_ENtB2p_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1w_ }>, align 8
@46 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools6FormatENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB2k_15EnumValueParserB1A_ENtB2k_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1C_, ptr @_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools6FormatENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB2k_15EnumValueParserB1A_ENtB2k_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1C_, ptr @_RNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools6FormatENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB2e_15EnumValueParserB1u_ENtB2e_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1w_, ptr @_RNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools6FormatENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB2e_15EnumValueParserB1u_ENtB2e_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1w_ }>, align 8
@switch.table._RNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools6FormatENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB2e_15EnumValueParserB1u_ENtB2e_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1w_.96 = private unnamed_addr constant [6 x ptr] [ptr @28, ptr @29, ptr @30, ptr @31, ptr @32, ptr @33], align 8
@switch.table._RNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools6FormatENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB2e_15EnumValueParserB1u_ENtB2e_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1w_.97 = private unnamed_addr constant [6 x i8] c"\0B\03\04\04\03\06", align 8

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMNtCsflt7xRw9JFr_12clap_builder5errorNtB3_5Error3rawNtNtCsgCecv3eZDcN_5alloc6string6StringECskVIURZGHVHJ_12tensor_tools(i8 noundef range(i8 0, 17) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [256 x i8], align 8               ; 49 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 249
  store i8 %0, ptr %i.c, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 0, ptr %i.d, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.47.0..sroa_idx, align 8
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.58.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i64 0, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  store i64 2, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store ptr null, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store i64 -2, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  store i8 -1, ptr %i.g, align 8
  %.sroa.027.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 124
  store i8 -1, ptr %.sroa.027.sroa.5.0..sroa_idx, align 4
  %.sroa.027.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store i8 -1, ptr %.sroa.027.sroa.7.0..sroa_idx, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 132
  store i16 0, ptr %.sroa.428.0..sroa_idx, align 4
  %.sroa.529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 134
  store i8 -1, ptr %.sroa.529.0..sroa_idx, align 2
  %.sroa.529.sroa.5.0..sroa.529.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 138
  store i8 -1, ptr %.sroa.529.sroa.5.0..sroa.529.0..sroa_idx.sroa_idx, align 2
  %.sroa.529.sroa.7.0..sroa.529.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 142
  store i8 -1, ptr %.sroa.529.sroa.7.0..sroa.529.0..sroa_idx.sroa_idx, align 2
  %.sroa.6.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %i.b, i64 146
  store i16 0, ptr %.sroa.6.0..sroa_idx30, align 2
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 148
  store i8 -1, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  store i8 -1, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 156
  store i8 -1, ptr %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  store i16 0, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 162
  store i8 -1, ptr %.sroa.9.0..sroa_idx, align 2
  %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 166
  store i8 -1, ptr %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx, align 2
  %.sroa.9.sroa.7.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 170
  store i8 -1, ptr %.sroa.9.sroa.7.0..sroa.9.0..sroa_idx.sroa_idx, align 2
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 174
  store i16 0, ptr %.sroa.10.0..sroa_idx, align 2
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  store i8 -1, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.11.sroa.5.0..sroa.11.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 180
  store i8 -1, ptr %.sroa.11.sroa.5.0..sroa.11.0..sroa_idx.sroa_idx, align 4
  %.sroa.11.sroa.7.0..sroa.11.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  store i8 -1, ptr %.sroa.11.sroa.7.0..sroa.11.0..sroa_idx.sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 188
  store i16 0, ptr %.sroa.12.0..sroa_idx, align 4
  %.sroa.1331.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 190
  store i8 -1, ptr %.sroa.1331.0..sroa_idx, align 2
  %.sroa.1331.sroa.5.0..sroa.1331.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 194
  store i8 -1, ptr %.sroa.1331.sroa.5.0..sroa.1331.0..sroa_idx.sroa_idx, align 2
  %.sroa.1331.sroa.7.0..sroa.1331.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 198
  store i8 -1, ptr %.sroa.1331.sroa.7.0..sroa.1331.0..sroa_idx.sroa_idx, align 2
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 202
  store i16 0, ptr %.sroa.14.0..sroa_idx, align 2
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 204
  store i8 -1, ptr %.sroa.15.0..sroa_idx, align 4
  %.sroa.15.sroa.5.0..sroa.15.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  store i8 -1, ptr %.sroa.15.sroa.5.0..sroa.15.0..sroa_idx.sroa_idx, align 8
  %.sroa.15.sroa.7.0..sroa.15.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 212
  store i8 -1, ptr %.sroa.15.sroa.7.0..sroa.15.0..sroa_idx.sroa_idx, align 4
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  store i16 0, ptr %.sroa.16.0..sroa_idx, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 218
  store i8 -1, ptr %.sroa.17.0..sroa_idx, align 2
  %.sroa.17.sroa.5.0..sroa.17.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 222
  store i8 -1, ptr %.sroa.17.sroa.5.0..sroa.17.0..sroa_idx.sroa_idx, align 2
  %.sroa.17.sroa.7.0..sroa.17.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 226
  store i8 -1, ptr %.sroa.17.sroa.7.0..sroa.17.0..sroa_idx.sroa_idx, align 2
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 230
  store i16 0, ptr %.sroa.18.0..sroa_idx, align 2
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  store i8 -2, ptr %.sroa.19.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 247
  store i8 2, ptr %i.h, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  store i8 2, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 246
  store i8 0, ptr %i.j, align 2
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !36
  %i.k = tail call noundef align 8 dereferenceable_or_null(256) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, 257) 256, i64 noundef range(i64 1, 9) 8) #24, !noalias !36 ; 14 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.b, label %bb.e, !prof !5

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 256) #25
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsflt7xRw9JFr_12clap_builder5error10ErrorInnerECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 dereferenceable(256) %i.b) #26
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27
  unreachable

.body:                                            ; preds = %bb.h, %bb.c, %bb.m
  %.pn = phi { ptr, i32 } [ %i.ac, %bb.m ], [ %i.m, %bb.c ], [ %i.y, %bb.h ]
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #26
          to label %common.resume unwind label %bb.n

bb.e:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.k, ptr noundef nonnull align 8 dereferenceable(256) %i.b, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.o, align 8, !nonnull !6, !noundef !6
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val62 = load i64, ptr %i.p, align 8, !noundef !6 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !37
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %.val62, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc64 unwind label %bb.m

.noexc64:                                         ; preds = %bb.e
  %i.q = load i64, ptr %i.a, align 8, !range !7, !noalias !37, !noundef !6
  %i.r = trunc nuw i64 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.t = load i64, ptr %i.s, align 8, !range !8, !noalias !37, !noundef !6 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.r, label %bb.f, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskVIURZGHVHJ_12tensor_tools.exit.i.i.i, !prof !9

bb.f:                                             ; preds = %.noexc64
  %i.v = load i64, ptr %i.u, align 8, !noalias !37
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.t, i64 %i.v) #25
          to label %.noexc65 unwind label %bb.m

.noexc65:                                         ; preds = %bb.f
  unreachable

_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskVIURZGHVHJ_12tensor_tools.exit.i.i.i: ; preds = %.noexc64
  %i.w = load ptr, ptr %i.u, align 8, !noalias !37, !nonnull !6, !noundef !6 ; 3 uses
  %i.x = icmp samesign ule i64 %.val62, %i.t
  tail call void @llvm.assume(i1 %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !37
  %.not.i.i.i = icmp eq i64 %.val62, 0
  br i1 %.not.i.i.i, label %_RNvXsB_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtB5_8ToString9to_stringCskVIURZGHVHJ_12tensor_tools.exit, label %bb.g

bb.g:                                             ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskVIURZGHVHJ_12tensor_tools.exit.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull readonly align 1 %.val, i64 range(i64 0, -9223372036854775808) %.val62, i1 false), !noalias !38
  br label %_RNvXsB_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtB5_8ToString9to_stringCskVIURZGHVHJ_12tensor_tools.exit

_RNvXsB_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtB5_8ToString9to_stringCskVIURZGHVHJ_12tensor_tools.exit: ; preds = %bb.g, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskVIURZGHVHJ_12tensor_tools.exit.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsflt7xRw9JFr_12clap_builder5error7MessageEECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %bb.j unwind label %bb.h, !noalias !39

bb.h:                                             ; preds = %_RNvXsB_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtB5_8ToString9to_stringCskVIURZGHVHJ_12tensor_tools.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  store i64 0, ptr %i.k, align 8, !alias.scope !40, !noalias !39
  %.sroa.5.0..sroa.0.0.2.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %i.t, ptr %.sroa.5.0..sroa.0.0.2.sroa_idx.i, align 8, !alias.scope !41
  %.sroa.5.0..sroa.5.0..sroa.0.0.2.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.w, ptr %.sroa.5.0..sroa.5.0..sroa.0.0.2.sroa_idx.i.sroa_idx, align 8, !alias.scope !41
  %.sroa.6.0..sroa.5.0..sroa.0.0.2.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store i64 %.val62, ptr %.sroa.6.0..sroa.5.0..sroa.0.0.2.sroa_idx.i.sroa_idx, align 8, !alias.scope !41
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsflt7xRw9JFr_12clap_builder5error5ErrorECskVIURZGHVHJ_12tensor_tools(ptr nonnull align 8 %i.k) #26
          to label %.body unwind label %bb.i, !noalias !39

bb.i:                                             ; preds = %bb.h
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27, !noalias !39
  unreachable

bb.j:                                             ; preds = %_RNvXsB_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtB5_8ToString9to_stringCskVIURZGHVHJ_12tensor_tools.exit
  store i64 0, ptr %i.k, align 8, !alias.scope !40, !noalias !39
  %.sroa.5.0..sroa.0.0.3.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %i.t, ptr %.sroa.5.0..sroa.0.0.3.sroa_idx.i, align 8, !alias.scope !41
  %.sroa.5.0..sroa.5.0..sroa.0.0.3.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.w, ptr %.sroa.5.0..sroa.5.0..sroa.0.0.3.sroa_idx.i.sroa_idx, align 8, !alias.scope !41
  %.sroa.6.0..sroa.5.0..sroa.0.0.3.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store i64 %.val62, ptr %.sroa.6.0..sroa.5.0..sroa.0.0.3.sroa_idx.i.sroa_idx, align 8, !alias.scope !41
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECskVIURZGHVHJ_12tensor_tools.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
end_hunk_0
begin_hunk_1_@_RNvXNtCsf3Ta7LF998c_4core3anyNtCskVIURZGHVHJ_12tensor_tools6FormatNtB2_3Any7type_idBt_:bb.a
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @17, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCsf3Ta7LF998c_4core3anyjNtB2_3Any7type_idCskVIURZGHVHJ_12tensor_tools(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @18, i64 16, i1 false)
  ret void
}

; Function Attrs: cold inlinehint noreturn nonlazybind uwtable
define internal fastcc void @_RNvXNvNtNtCs5Xr050g3D4S_3std3sys12thread_local20abort_on_dtor_unwindNtB2_15DtorUnwindGuardNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop() unnamed_addr #9 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = call noundef ptr @_RNvYNtNtNtNtCs5Xr050g3D4S_3std3sys5stdio4unix6StderrNtNtNtCsf3Ta7LF998c_4core2io5write5Write9write_fmtCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull %i.a, ptr noundef nonnull @19, ptr noundef nonnull inttoptr (i64 123 to ptr))
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECskVIURZGHVHJ_12tensor_tools(ptr %i.b)
  call void @_RNvNtCs5Xr050g3D4S_3std7process5abort() #25
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCs5Xr050g3D4S_3std4sync9lazy_lockINtB5_8LazyLockNtNtB9_9backtrace7CaptureNCNvNtBX_6helper12lazy_resolve0ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !noundef !6
  switch i32 %i.b, label %bb.b [
    i32 3, label %bb.c
    i32 2, label %bb.i
    i32 0, label %bb.f
  ], !prof !269

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @20, ptr noundef nonnull inttoptr (i64 121 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs5Xr050g3D4S_3std9backtrace14BacktraceFrameENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %.sink.split unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs5Xr050g3D4S_3std9backtrace14BacktraceFrameENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27
  unreachable

common.resume:                                    ; preds = %bb.g, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.e, %bb.g ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs5Xr050g3D4S_3std9backtrace14BacktraceFrameENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %.sink.split unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs5Xr050g3D4S_3std9backtrace14BacktraceFrameENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27
  unreachable

.sink.split:                                      ; preds = %bb.f, %bb.c
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs5Xr050g3D4S_3std9backtrace14BacktraceFrameENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.a
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools12QuantizationENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB2r_15EnumValueParserB1A_ENtB2r_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1C_(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !273)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !274)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !274, !noalias !273, !nonnull !6, !noundef !6 ; 2 uses
  %.promoted.i = load ptr, ptr %1, align 8, !alias.scope !274, !noalias !273 ; 2 uses
  %i.c = icmp eq ptr %.promoted.i, %i.b
  br i1 %i.c, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.d = icmp eq ptr %i.f, %i.b
  br i1 %i.d, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.e = phi ptr [ %i.f, %bb.b ], [ %.promoted.i, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 3 uses
  store ptr %i.f, ptr %1, align 8, !alias.scope !274, !noalias !273
  tail call void @_RNvXs4_CskVIURZGHVHJ_12tensor_toolsNtB5_12QuantizationNtNtCsflt7xRw9JFr_12clap_builder6derive9ValueEnum17to_possible_value(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.e), !noalias !274
  %i.g = load i64, ptr %0, align 8, !range !11, !alias.scope !273, !noalias !274, !noundef !6
  %.not.i = icmp eq i64 %i.g, -1
  br i1 %.not.i, label %bb.b, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtCskVIURZGHVHJ_12tensor_tools12QuantizationENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapNtNtNtCsflt7xRw9JFr_12clap_builder7builder14possible_value13PossibleValueQNCNvXso_NtB2r_12value_parserINtB3H_15EnumValueParserBQ_ENtB3H_16TypedValueParser15possible_values0EBS_.exit

._crit_edge:                                      ; preds = %bb.b, %bb.a
  store i64 -1, ptr %0, align 8, !alias.scope !273, !noalias !274
  br label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtCskVIURZGHVHJ_12tensor_tools12QuantizationENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapNtNtNtCsflt7xRw9JFr_12clap_builder7builder14possible_value13PossibleValueQNCNvXso_NtB2r_12value_parserINtB3H_15EnumValueParserBQ_ENtB3H_16TypedValueParser15possible_values0EBS_.exit

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtCskVIURZGHVHJ_12tensor_tools12QuantizationENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapNtNtNtCsflt7xRw9JFr_12clap_builder7builder14possible_value13PossibleValueQNCNvXso_NtB2r_12value_parserINtB3H_15EnumValueParserBQ_ENtB3H_16TypedValueParser15possible_values0EBS_.exit: ; preds = %.lr.ph, %._crit_edge
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools12QuantizationENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB2r_15EnumValueParserB1A_ENtB2r_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1C_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #10 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  store i64 0, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.d, ptr %i.f, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools16QuantizationModeENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB2v_15EnumValueParserB1A_ENtB2v_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1C_(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !278)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !279)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !alias.scope !279, !noalias !278, !nonnull !6
  %.pre.i = load ptr, ptr %i.a, align 8, !alias.scope !279, !noalias !278
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.c = phi ptr [ %i.h, %bb.d ], [ %.pre.i, %bb.a ] ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 -1, ptr %0, align 8, !alias.scope !278, !noalias !279
  br label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtCskVIURZGHVHJ_12tensor_tools16QuantizationModeENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapNtNtNtCsflt7xRw9JFr_12clap_builder7builder14possible_value13PossibleValueQNCNvXso_NtB2v_12value_parserINtB3L_15EnumValueParserBQ_ENtB3L_16TypedValueParser15possible_values0EBS_.exit

bb.d:                                             ; preds = %bb.b
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = add i64 %i.e, -1                         ; 2 uses
  store i64 %i.f, ptr %i.a, align 8, !alias.scope !279, !noalias !278
  tail call void @_RNvXs1_CskVIURZGHVHJ_12tensor_toolsNtB5_16QuantizationModeNtNtCsflt7xRw9JFr_12clap_builder6derive9ValueEnum17to_possible_value(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b), !noalias !279
  %i.g = load i64, ptr %0, align 8, !range !11, !alias.scope !278, !noalias !279, !noundef !6
  %.not.i = icmp eq i64 %i.g, -1
  %i.h = inttoptr i64 %i.f to ptr
  br i1 %.not.i, label %bb.b, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtCskVIURZGHVHJ_12tensor_tools16QuantizationModeENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapNtNtNtCsflt7xRw9JFr_12clap_builder7builder14possible_value13PossibleValueQNCNvXso_NtB2v_12value_parserINtB3L_15EnumValueParserBQ_ENtB3L_16TypedValueParser15possible_values0EBS_.exit

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtCskVIURZGHVHJ_12tensor_tools16QuantizationModeENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapNtNtNtCsflt7xRw9JFr_12clap_builder7builder14possible_value13PossibleValueQNCNvXso_NtB2v_12value_parserINtB3L_15EnumValueParserBQ_ENtB3L_16TypedValueParser15possible_values0EBS_.exit: ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools16QuantizationModeENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB2v_15EnumValueParserB1A_ENtB2v_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1C_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.a, align 8, !noundef !6
  %i.b = ptrtoint ptr %.val to i64
  store i64 0, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.b, ptr %i.d, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal void @_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools6FormatENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB2k_15EnumValueParserB1A_ENtB2k_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1C_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !289)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !290)
  %i.a = load ptr, ptr %1, align 8, !alias.scope !290, !noalias !289, !nonnull !6, !noundef !6 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !290, !noalias !289, !nonnull !6, !noundef !6
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.b, label %switch.lookup

switch.lookup:                                    ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store ptr %i.e, ptr %1, align 8, !alias.scope !290, !noalias !289
  %.val.i = load i8, ptr %i.a, align 1, !range !22, !noalias !291, !noundef !6 ; 2 uses
  store i64 0, ptr %0, align 8, !alias.scope !292, !noalias !290
  %.sroa.0.sroa.0.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !292, !noalias !290
  %.sroa.0.sroa.0.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.0.sroa.0.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !292, !noalias !290
  %.sroa.0.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 -1, ptr %.sroa.0.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !292, !noalias !290
  %i.f = zext nneg i8 %.val.i to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools6FormatENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB2e_15EnumValueParserB1u_ENtB2e_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1w_.96, i64 %i.f
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.g = zext nneg i8 %.val.i to i64
  %switch.gep1 = getelementptr inbounds nuw i8, ptr @switch.table._RNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools6FormatENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB2e_15EnumValueParserB1u_ENtB2e_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1w_.97, i64 %i.g
  %switch.load2 = load i8, ptr %switch.gep1, align 1
  %switch.ext = zext i8 %switch.load2 to i64
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %switch.load, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !292, !noalias !290
  store i64 %switch.ext, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !292, !noalias !290
  store i8 0, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !alias.scope !292, !noalias !290
  br label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtCskVIURZGHVHJ_12tensor_tools6FormatENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapNtNtNtCsflt7xRw9JFr_12clap_builder7builder14possible_value13PossibleValueQNCNvXso_NtB2k_12value_parserINtB3A_15EnumValueParserBQ_ENtB3A_16TypedValueParser15possible_values0EBS_.exit

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8, !alias.scope !289, !noalias !290
  br label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtCskVIURZGHVHJ_12tensor_tools6FormatENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapNtNtNtCsflt7xRw9JFr_12clap_builder7builder14possible_value13PossibleValueQNCNvXso_NtB2k_12value_parserINtB3A_15EnumValueParserBQ_ENtB3A_16TypedValueParser15possible_values0EBS_.exit

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtCskVIURZGHVHJ_12tensor_tools6FormatENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapNtNtNtCsflt7xRw9JFr_12clap_builder7builder14possible_value13PossibleValueQNCNvXso_NtB2k_12value_parserINtB3A_15EnumValueParserBQ_ENtB3A_16TypedValueParser15possible_values0EBS_.exit: ; preds = %switch.lookup, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools6FormatENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB2k_15EnumValueParserB1A_ENtB2k_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1C_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #10 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  store i64 0, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.d, ptr %i.f, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCNCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtBY_15EnumValueParserNtCskVIURZGHVHJ_12tensor_tools12QuantizationENtBY_16TypedValueParser9parse_refs_0s_0INtB7_5FnMutTRNtNtB10_14possible_value13PossibleValueEE8call_mutB2f_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(72) %1) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val = load i8, ptr %i.a, align 8, !range !13, !noundef !6
  %i.b = trunc nuw i8 %.val to i1
  %i.c = xor i1 %i.b, true
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCNCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtBY_15EnumValueParserNtCskVIURZGHVHJ_12tensor_tools16QuantizationModeENtBY_16TypedValueParser9parse_refs_0s_0INtB7_5FnMutTRNtNtB10_14possible_value13PossibleValueEE8call_mutB2f_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(72) %1) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val = load i8, ptr %i.a, align 8, !range !13, !noundef !6
  %i.b = trunc nuw i8 %.val to i1
  %i.c = xor i1 %i.b, true
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCNCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtBY_15EnumValueParserNtCskVIURZGHVHJ_12tensor_tools6FormatENtBY_16TypedValueParser9parse_refs_0s_0INtB7_5FnMutTRNtNtB10_14possible_value13PossibleValueEE8call_mutB2f_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(72) %1) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val = load i8, ptr %i.a, align 8, !range !13, !noundef !6
  %i.b = trunc nuw i8 %.val to i1
  %i.c = xor i1 %i.b, true
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsK_NtCsf3Ta7LF998c_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 5)
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXsS_NtNtCs2upMkKV4wAv_8indexmap3map4iterINtB5_6ValuesINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShENtNtCscWUIX17zZnI_3zip5types11ZipFileDataENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator9size_hintCskVIURZGHVHJ_12tensor_tools(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6
  %i.c = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 8                   ; 2 uses
  store i64 %i.g, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %i.i, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core3fmt5Write10write_char(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !295, !noundef !6 ; 4 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i32 %1, 128
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %1, 2048           ; 2 uses
  %i.f = icmp samesign ult i32 %1, 65536          ; 2 uses
  %..i = select i1 %i.f, i64 3, i64 4
  %.sroa.0.0.ph.i = select i1 %i.e, i64 2, i64 %..i
  tail call void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.sroa.0.0.ph.i)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !295, !nonnull !6, !noundef !6
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.b ; 9 uses
  %i.j = trunc i32 %1 to i8
  %i.k = and i8 %i.j, 63
  %i.l = or disjoint i8 %i.k, -128                ; 3 uses
  %i.m = lshr i32 %1, 6
  %i.n = trunc i32 %i.m to i8                     ; 2 uses
  %i.o = and i8 %i.n, 63
  %i.p = or disjoint i8 %i.o, -128                ; 2 uses
  %i.q = lshr i32 %1, 12
  %i.r = trunc i32 %i.q to i8                     ; 2 uses
  %i.s = and i8 %i.r, 63
  %i.t = or disjoint i8 %i.s, -128
  %i.u = lshr i32 %1, 18
  %i.v = trunc nuw nsw i32 %i.u to i8
  %i.w = or disjoint i8 %i.v, -16
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !295, !nonnull !6, !noundef !6
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.b
  %i.aa = trunc nuw nsw i32 %1 to i8
  store i8 %i.aa, ptr %i.z, align 1
  br label %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String4push.exit

bb.d:                                             ; preds = %bb.b
  %i.ab = or disjoint i8 %i.n, -64
  store i8 %i.ab, ptr %i.i, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.l, ptr %i.ac, align 1
  br label %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String4push.exit

bb.e:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = or disjoint i8 %i.r, -32
  store i8 %i.ad, ptr %i.i, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.p, ptr %i.ae, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.l, ptr %i.af, align 1
  br label %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String4push.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.w, ptr %i.i, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.t, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.p, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  store i8 %i.l, ptr %i.ai, align 1
  br label %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String4push.exit

_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.03.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  %i.aj = add nuw i64 %.sroa.0.03.i, %i.b
  store i64 %i.aj, ptr %i.a, align 8, !alias.scope !295
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core3fmt5Write9write_str(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #6 {
bb.a:
  tail call void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2), !noalias !301
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !302, !noalias !301, !noundef !6 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String8push_str.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !302, !noalias !301, !nonnull !6, !noundef !6
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %.pre.i.i = load i64, ptr %i.a, align 8, !alias.scope !302, !noalias !301
  br label %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String8push_str.exit

_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String8push_str.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %.pre.i.i, %bb.b ], [ %i.b, %bb.a ]
  %i.h = add i64 %i.g, %2
  store i64 %i.h, ptr %i.a, align 8, !alias.scope !302, !noalias !301
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsc_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserFG_RL0_eEINtNtCsf3Ta7LF998c_4core6result6ResultjNtNtNtB1b_3num5error13ParseIntErrorENtB5_14AnyValueParser10parse_ref_CskVIURZGHVHJ_12tensor_tools(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(600) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5, i8 range(i8 0, 3) %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %1, align 8
end_hunk_1
begin_hunk_2_@_RNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB5_15EnumValueParserNtCskVIURZGHVHJ_12tensor_tools6FormatENtB5_16TypedValueParser9parse_refB1m_:bb.a
  %i.bb = load ptr, ptr %i.az, align 8, !noalias !450, !nonnull !6, !noundef !6 ; 2 uses
  %i.bc = icmp samesign ugt i64 %i.ay, 2
  call void @llvm.assume(i1 %i.bc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !450
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.bb, i8 46, i64 3, i1 false), !noalias !450
  store i64 %i.ay, ptr %i.n, align 8, !alias.scope !449, !noalias !446
  %.sroa.4.0..sroa_idx.i9.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.bb, ptr %.sroa.4.0..sroa_idx.i9.i, align 8, !alias.scope !449, !noalias !446
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 3, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !449, !noalias !446
  br label %bb.u

bb.t:                                             ; preds = %bb.u, %bb.s, %bb.r
  %.sroa.02.2.i = phi i1 [ false, %bb.u ], [ true, %bb.s ], [ true, %bb.r ]
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.t, %bb.n
  %.sroa.02.2.lpad-body.i = phi i1 [ %.sroa.02.2.i, %bb.t ], [ true, %bb.n ]
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.bd, %bb.t ], [ %i.at, %bb.n ] ; 2 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBG_6string6StringEECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(24) %i.o) #26
          to label %bb.l unwind label %bb.z, !noalias !446

bb.u:                                             ; preds = %bb.v, %_RNCNCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtCskVIURZGHVHJ_12tensor_tools6FormatENtB9_16TypedValueParser9parse_refs0_00B1q_.exit.i
  %i.be = invoke fastcc noundef nonnull align 8 ptr @_RNvMNtCsflt7xRw9JFr_12clap_builder5errorNtB2_5Error13invalid_valueCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.an, i64 noundef %i.ap, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.n)
          to label %bb.w unwind label %bb.t, !noalias !446

bb.v:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !446
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !447
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !447
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !446
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RNCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtCskVIURZGHVHJ_12tensor_tools6FormatENtB7_16TypedValueParser9parse_refs0_0B1o_.exit unwind label %bb.x, !noalias !446

bb.x:                                             ; preds = %bb.w
  %i.bf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %common.resume unwind label %bb.y, !noalias !446

bb.y:                                             ; preds = %bb.x
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27, !noalias !446
  unreachable

bb.z:                                             ; preds = %bb.aa, %.body.i
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27, !noalias !446
  unreachable

common.resume:                                    ; preds = %bb.ai, %bb.au, %bb.ax, %bb.ab, %bb.l, %bb.x, %bb.aa
  %common.resume.op = phi { ptr, i32 } [ %i.bo, %bb.ab ], [ %eh.lpad-body.i, %bb.l ], [ %i.bf, %bb.x ], [ %.pn15.i, %bb.aa ], [ %i.cy, %bb.au ], [ %.pn14.i15, %bb.ax ], [ %eh.lpad-body.i22, %bb.ai ]
  resume { ptr, i32 } %common.resume.op

bb.aa:                                            ; preds = %bb.l, %.body12.thread18.i
  %.pn15.i = phi { ptr, i32 } [ %i.al, %.body12.thread18.i ], [ %eh.lpad-body.i, %bb.l ]
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q) #26
          to label %common.resume unwind label %bb.z, !noalias !446

_RNCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtCskVIURZGHVHJ_12tensor_tools6FormatENtB7_16TypedValueParser9parse_refs0_0B1o_.exit: ; preds = %bb.w
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o), !noalias !446
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !446
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !446
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.be, ptr %i.bi, align 8
  br label %bb.ay

_RNvXs7_CskVIURZGHVHJ_12tensor_toolsNtB5_6FormatNtNtCsflt7xRw9JFr_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i: ; preds = %bb.c
  %i.bj = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !nonnull !6, !noundef !6 ; 7 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.bm = load i64, ptr %i.bl, align 8, !noundef !6 ; 11 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %.sroa.5.0..sroa_idx.i.i10 = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 6 uses
  %.sroa.6.0..sroa_idx.i.i11 = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 6 uses
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 6 uses
  %.sroa.81.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 6 uses
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 56 ; 6 uses
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 64 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !451
  store i64 0, ptr %i.i, align 8, !noalias !451
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5.0..sroa_idx.i.i10, align 8, !noalias !451
  store i64 0, ptr %.sroa.6.0..sroa_idx.i.i11, align 8, !noalias !451
  store i64 -1, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !451
  store ptr @28, ptr %.sroa.81.0..sroa_idx.i.i, align 8, !noalias !451
  store i64 11, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !451
  store i8 0, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !451
  %i.bn = invoke noundef zeroext i1 @_RNvMs_NtNtCsflt7xRw9JFr_12clap_builder7builder14possible_valueNtB4_13PossibleValue7matches(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bk, i64 noundef %i.bm, i1 noundef zeroext %storemerge)
          to label %_RNCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtCskVIURZGHVHJ_12tensor_tools6FormatENtB7_16TypedValueParser9parse_refs1_0B1o_.exit.i unwind label %bb.ab, !noalias !451

bb.ab:                                            ; preds = %_RNvXs7_CskVIURZGHVHJ_12tensor_toolsNtB5_6FormatNtNtCsflt7xRw9JFr_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.5, %_RNvXs7_CskVIURZGHVHJ_12tensor_toolsNtB5_6FormatNtNtCsflt7xRw9JFr_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.4, %_RNvXs7_CskVIURZGHVHJ_12tensor_toolsNtB5_6FormatNtNtCsflt7xRw9JFr_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.3, %_RNvXs7_CskVIURZGHVHJ_12tensor_toolsNtB5_6FormatNtNtCsflt7xRw9JFr_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.2, %_RNvXs7_CskVIURZGHVHJ_12tensor_toolsNtB5_6FormatNtNtCsflt7xRw9JFr_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.1, %_RNvXs7_CskVIURZGHVHJ_12tensor_toolsNtB5_6FormatNtNtCsflt7xRw9JFr_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i
  %i.bo = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsflt7xRw9JFr_12clap_builder7builder14possible_value13PossibleValueECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(72) %i.i) #26
          to label %common.resume unwind label %bb.ac, !noalias !451

bb.ac:                                            ; preds = %bb.ab
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27, !noalias !451
  unreachable

_RNCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtCskVIURZGHVHJ_12tensor_tools6FormatENtB7_16TypedValueParser9parse_refs1_0B1o_.exit.i: ; preds = %_RNvXs7_CskVIURZGHVHJ_12tensor_toolsNtB5_6FormatNtNtCsflt7xRw9JFr_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsflt7xRw9JFr_12clap_builder7builder14possible_value13PossibleValueECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(72) %i.i), !noalias !451
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !451
  br i1 %i.bn, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtCskVIURZGHVHJ_12tensor_tools6FormatENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB2k_15EnumValueParserBQ_ENtB2k_16TypedValueParser9parse_refs1_0EBS_.exit, label %_RNvXs7_CskVIURZGHVHJ_12tensor_toolsNtB5_6FormatNtNtCsflt7xRw9JFr_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.1

_RNvXs7_CskVIURZGHVHJ_12tensor_toolsNtB5_6FormatNtNtCsflt7xRw9JFr_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.1: ; preds = %_RNCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtCskVIURZGHVHJ_12tensor_tools6FormatENtB7_16TypedValueParser9parse_refs1_0B1o_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !451
  store i64 0, ptr %i.i, align 8, !noalias !451
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5.0..sroa_idx.i.i10, align 8, !noalias !451
  store i64 0, ptr %.sroa.6.0..sroa_idx.i.i11, align 8, !noalias !451
  store i64 -1, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !451
  store ptr @29, ptr %.sroa.81.0..sroa_idx.i.i, align 8, !noalias !451
  store i64 3, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !451
  store i8 0, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !451
  %i.bq = invoke noundef zeroext i1 @_RNvMs_NtNtCsflt7xRw9JFr_12clap_builder7builder14possible_valueNtB4_13PossibleValue7matches(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bk, i64 noundef %i.bm, i1 noundef zeroext %storemerge)
          to label %_RNCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtCskVIURZGHVHJ_12tensor_tools6FormatENtB7_16TypedValueParser9parse_refs1_0B1o_.exit.i.1 unwind label %bb.ab, !noalias !451

_RNCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtCskVIURZGHVHJ_12tensor_tools6FormatENtB7_16TypedValueParser9parse_refs1_0B1o_.exit.i.1: ; preds = %_RNvXs7_CskVIURZGHVHJ_12tensor_toolsNtB5_6FormatNtNtCsflt7xRw9JFr_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.1
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsflt7xRw9JFr_12clap_builder7builder14possible_value13PossibleValueECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(72) %i.i), !noalias !451
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !451
  br i1 %i.bq, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtCskVIURZGHVHJ_12tensor_tools6FormatENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB2k_15EnumValueParserBQ_ENtB2k_16TypedValueParser9parse_refs1_0EBS_.exit, label %_RNvXs7_CskVIURZGHVHJ_12tensor_toolsNtB5_6FormatNtNtCsflt7xRw9JFr_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.2

_RNvXs7_CskVIURZGHVHJ_12tensor_toolsNtB5_6FormatNtNtCsflt7xRw9JFr_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.2: ; preds = %_RNCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtCskVIURZGHVHJ_12tensor_tools6FormatENtB7_16TypedValueParser9parse_refs1_0B1o_.exit.i.1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !451
  store i64 0, ptr %i.i, align 8, !noalias !451
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5.0..sroa_idx.i.i10, align 8, !noalias !451
  store i64 0, ptr %.sroa.6.0..sroa_idx.i.i11, align 8, !noalias !451
  store i64 -1, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !451
  store ptr @30, ptr %.sroa.81.0..sroa_idx.i.i, align 8, !noalias !451
  store i64 4, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !451
  store i8 0, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !451
  %i.br = invoke noundef zeroext i1 @_RNvMs_NtNtCsflt7xRw9JFr_12clap_builder7builder14possible_valueNtB4_13PossibleValue7matches(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bk, i64 noundef %i.bm, i1 noundef zeroext %storemerge)
          to label %_RNCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtCskVIURZGHVHJ_12tensor_tools6FormatENtB7_16TypedValueParser9parse_refs1_0B1o_.exit.i.2 unwind label %bb.ab, !noalias !451

_RNCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtCskVIURZGHVHJ_12tensor_tools6FormatENtB7_16TypedValueParser9parse_refs1_0B1o_.exit.i.2: ; preds = %_RNvXs7_CskVIURZGHVHJ_12tensor_toolsNtB5_6FormatNtNtCsflt7xRw9JFr_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.2
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsflt7xRw9JFr_12clap_builder7builder14possible_value13PossibleValueECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(72) %i.i), !noalias !451
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !451
  br i1 %i.br, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtCskVIURZGHVHJ_12tensor_tools6FormatENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB2k_15EnumValueParserBQ_ENtB2k_16TypedValueParser9parse_refs1_0EBS_.exit, label %_RNvXs7_CskVIURZGHVHJ_12tensor_toolsNtB5_6FormatNtNtCsflt7xRw9JFr_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.3

_RNvXs7_CskVIURZGHVHJ_12tensor_toolsNtB5_6FormatNtNtCsflt7xRw9JFr_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.3: ; preds = %_RNCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtCskVIURZGHVHJ_12tensor_tools6FormatENtB7_16TypedValueParser9parse_refs1_0B1o_.exit.i.2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !451
  store i64 0, ptr %i.i, align 8, !noalias !451
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5.0..sroa_idx.i.i10, align 8, !noalias !451
  store i64 0, ptr %.sroa.6.0..sroa_idx.i.i11, align 8, !noalias !451
  store i64 -1, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !451
  store ptr @31, ptr %.sroa.81.0..sroa_idx.i.i, align 8, !noalias !451
  store i64 4, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !451
  store i8 0, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !451
  %i.bs = invoke noundef zeroext i1 @_RNvMs_NtNtCsflt7xRw9JFr_12clap_builder7builder14possible_valueNtB4_13PossibleValue7matches(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bk, i64 noundef %i.bm, i1 noundef zeroext %storemerge)
          to label %_RNCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtCskVIURZGHVHJ_12tensor_tools6FormatENtB7_16TypedValueParser9parse_refs1_0B1o_.exit.i.3 unwind label %bb.ab, !noalias !451

_RNCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtCskVIURZGHVHJ_12tensor_tools6FormatENtB7_16TypedValueParser9parse_refs1_0B1o_.exit.i.3: ; preds = %_RNvXs7_CskVIURZGHVHJ_12tensor_toolsNtB5_6FormatNtNtCsflt7xRw9JFr_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.3
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsflt7xRw9JFr_12clap_builder7builder14possible_value13PossibleValueECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(72) %i.i), !noalias !451
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !451
  br i1 %i.bs, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtCskVIURZGHVHJ_12tensor_tools6FormatENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB2k_15EnumValueParserBQ_ENtB2k_16TypedValueParser9parse_refs1_0EBS_.exit, label %_RNvXs7_CskVIURZGHVHJ_12tensor_toolsNtB5_6FormatNtNtCsflt7xRw9JFr_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.4

_RNvXs7_CskVIURZGHVHJ_12tensor_toolsNtB5_6FormatNtNtCsflt7xRw9JFr_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.4: ; preds = %_RNCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtCskVIURZGHVHJ_12tensor_tools6FormatENtB7_16TypedValueParser9parse_refs1_0B1o_.exit.i.3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !451
  store i64 0, ptr %i.i, align 8, !noalias !451
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5.0..sroa_idx.i.i10, align 8, !noalias !451
  store i64 0, ptr %.sroa.6.0..sroa_idx.i.i11, align 8, !noalias !451
  store i64 -1, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !451
  store ptr @32, ptr %.sroa.81.0..sroa_idx.i.i, align 8, !noalias !451
  store i64 3, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !451
  store i8 0, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !451
  %i.bt = invoke noundef zeroext i1 @_RNvMs_NtNtCsflt7xRw9JFr_12clap_builder7builder14possible_valueNtB4_13PossibleValue7matches(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bk, i64 noundef %i.bm, i1 noundef zeroext %storemerge)
          to label %_RNCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtCskVIURZGHVHJ_12tensor_tools6FormatENtB7_16TypedValueParser9parse_refs1_0B1o_.exit.i.4 unwind label %bb.ab, !noalias !451

_RNCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtCskVIURZGHVHJ_12tensor_tools6FormatENtB7_16TypedValueParser9parse_refs1_0B1o_.exit.i.4: ; preds = %_RNvXs7_CskVIURZGHVHJ_12tensor_toolsNtB5_6FormatNtNtCsflt7xRw9JFr_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.4
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsflt7xRw9JFr_12clap_builder7builder14possible_value13PossibleValueECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(72) %i.i), !noalias !451
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !451
  br i1 %i.bt, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtCskVIURZGHVHJ_12tensor_tools6FormatENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB2k_15EnumValueParserBQ_ENtB2k_16TypedValueParser9parse_refs1_0EBS_.exit, label %_RNvXs7_CskVIURZGHVHJ_12tensor_toolsNtB5_6FormatNtNtCsflt7xRw9JFr_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.5

_RNvXs7_CskVIURZGHVHJ_12tensor_toolsNtB5_6FormatNtNtCsflt7xRw9JFr_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.5: ; preds = %_RNCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtCskVIURZGHVHJ_12tensor_tools6FormatENtB7_16TypedValueParser9parse_refs1_0B1o_.exit.i.4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !451
  store i64 0, ptr %i.i, align 8, !noalias !451
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5.0..sroa_idx.i.i10, align 8, !noalias !451
  store i64 0, ptr %.sroa.6.0..sroa_idx.i.i11, align 8, !noalias !451
  store i64 -1, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !451
  store ptr @33, ptr %.sroa.81.0..sroa_idx.i.i, align 8, !noalias !451
  store i64 6, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !451
  store i8 0, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !451
  %i.bu = invoke noundef zeroext i1 @_RNvMs_NtNtCsflt7xRw9JFr_12clap_builder7builder14possible_valueNtB4_13PossibleValue7matches(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bk, i64 noundef %i.bm, i1 noundef zeroext %storemerge)
          to label %_RNCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtCskVIURZGHVHJ_12tensor_tools6FormatENtB7_16TypedValueParser9parse_refs1_0B1o_.exit.i.5 unwind label %bb.ab, !noalias !451

_RNCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtCskVIURZGHVHJ_12tensor_tools6FormatENtB7_16TypedValueParser9parse_refs1_0B1o_.exit.i.5: ; preds = %_RNvXs7_CskVIURZGHVHJ_12tensor_toolsNtB5_6FormatNtNtCsflt7xRw9JFr_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.5
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsflt7xRw9JFr_12clap_builder7builder14possible_value13PossibleValueECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(72) %i.i), !noalias !451
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !451
  br i1 %i.bu, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtCskVIURZGHVHJ_12tensor_tools6FormatENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB2k_15EnumValueParserBQ_ENtB2k_16TypedValueParser9parse_refs1_0EBS_.exit, label %bb.ad

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtCskVIURZGHVHJ_12tensor_tools6FormatENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB2k_15EnumValueParserBQ_ENtB2k_16TypedValueParser9parse_refs1_0EBS_.exit: ; preds = %_RNCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtCskVIURZGHVHJ_12tensor_tools6FormatENtB7_16TypedValueParser9parse_refs1_0B1o_.exit.i.5, %_RNCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtCskVIURZGHVHJ_12tensor_tools6FormatENtB7_16TypedValueParser9parse_refs1_0B1o_.exit.i.4, %_RNCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtCskVIURZGHVHJ_12tensor_tools6FormatENtB7_16TypedValueParser9parse_refs1_0B1o_.exit.i.3, %_RNCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtCskVIURZGHVHJ_12tensor_tools6FormatENtB7_16TypedValueParser9parse_refs1_0B1o_.exit.i.2, %_RNCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtCskVIURZGHVHJ_12tensor_tools6FormatENtB7_16TypedValueParser9parse_refs1_0B1o_.exit.i.1, %_RNCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtCskVIURZGHVHJ_12tensor_tools6FormatENtB7_16TypedValueParser9parse_refs1_0B1o_.exit.i
  %.idx.lcssa18 = phi i64 [ 0, %_RNCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtCskVIURZGHVHJ_12tensor_tools6FormatENtB7_16TypedValueParser9parse_refs1_0B1o_.exit.i ], [ 1, %_RNCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtCskVIURZGHVHJ_12tensor_tools6FormatENtB7_16TypedValueParser9parse_refs1_0B1o_.exit.i.1 ], [ 2, %_RNCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtCskVIURZGHVHJ_12tensor_tools6FormatENtB7_16TypedValueParser9parse_refs1_0B1o_.exit.i.2 ], [ 3, %_RNCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtCskVIURZGHVHJ_12tensor_tools6FormatENtB7_16TypedValueParser9parse_refs1_0B1o_.exit.i.3 ], [ 4, %_RNCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtCskVIURZGHVHJ_12tensor_tools6FormatENtB7_16TypedValueParser9parse_refs1_0B1o_.exit.i.4 ], [ 5, %_RNCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtCskVIURZGHVHJ_12tensor_tools6FormatENtB7_16TypedValueParser9parse_refs1_0B1o_.exit.i.5 ]
  %.ptr.le = getelementptr inbounds nuw i8, ptr @27, i64 %.idx.lcssa18
  %.val = load i8, ptr %.ptr.le, align 1, !range !22, !noundef !6
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.val, ptr %i.bv, align 1
  br label %bb.ay

bb.ad:                                            ; preds = %_RNCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtCskVIURZGHVHJ_12tensor_tools6FormatENtB7_16TypedValueParser9parse_refs1_0B1o_.exit.i.5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !452
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !452
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %i.bm, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !452
  %i.bw = load i64, ptr %i.e, align 8, !range !7, !noalias !452, !noundef !6
  %i.bx = trunc nuw i64 %i.bw to i1
  %i.by = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !range !8, !noalias !452, !noundef !6 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.bx, label %bb.ae, label %bb.af, !prof !9

bb.ae:                                            ; preds = %bb.ad
  %i.cb = load i64, ptr %i.ca, align 8, !noalias !452
  call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.bz, i64 %i.cb) #25, !noalias !452
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.cc = load ptr, ptr %i.ca, align 8, !noalias !452, !nonnull !6, !noundef !6 ; 2 uses
  %i.cd = icmp ule i64 %i.bm, %i.bz
  call void @llvm.assume(i1 %i.cd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !452
  %.not.i12 = icmp eq i64 %i.bm, 0
  br i1 %.not.i12, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.ah, %bb.af
  store i64 %i.bz, ptr %i.h, align 8, !noalias !452
  %.sroa.4.0..sroa_idx.i13 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.cc, ptr %.sroa.4.0..sroa_idx.i13, align 8, !noalias !452
  %.sroa.6.0..sroa_idx.i14 = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %i.bm, ptr %.sroa.6.0..sroa_idx.i14, align 8, !noalias !452
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !452
  invoke void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecNtNtB6_6string6StringEINtB2_12SpecFromIterBU_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB1I_6filter6FilterINtNtB1I_10filter_map9FilterMapINtNtNtB1M_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools6FormatENCNCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB4w_15EnumValueParserB3K_ENtB4w_16TypedValueParser9parse_refs_00ENCB4o_s_0ENCB4o_s0_0EE9from_iterB3M_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noundef nonnull @27, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @27, i64 6))
          to label %_RNCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtCskVIURZGHVHJ_12tensor_tools6FormatENtB7_16TypedValueParser9parse_refs_0B1o_.exit.i16 unwind label %.body11.thread17.i, !noalias !452

.body11.thread17.i:                               ; preds = %bb.ag
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.ah:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cc, ptr nonnull align 1 %i.bk, i64 %i.bm, i1 false), !noalias !452
  br label %bb.ag

bb.ai:                                            ; preds = %.body.i20
  br i1 %.sroa.02.2.lpad-body.i21, label %bb.ax, label %common.resume

_RNCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtCskVIURZGHVHJ_12tensor_tools6FormatENtB7_16TypedValueParser9parse_refs_0B1o_.exit.i16: ; preds = %bb.ag
  %i.cf = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !noalias !452, !nonnull !6, !noundef !6
  %i.ch = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ci = load i64, ptr %i.ch, align 8, !noalias !452, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !452
  br i1 %.not, label %bb.ao, label %bb.aj

bb.aj:                                            ; preds = %_RNCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtCskVIURZGHVHJ_12tensor_tools6FormatENtB7_16TypedValueParser9parse_refs_0B1o_.exit.i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !453
  store i64 0, ptr %i.d, align 8, !noalias !453
  %.sroa.4.0..sroa_idx.i.i18 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i18, align 8, !noalias !453
  %.sroa.5.0..sroa_idx.i.i19 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i19, align 8, !noalias !453
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !453
  %i.cj = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 1610612768, ptr %i.cj, align 8, !noalias !453
  store ptr %i.d, ptr %i.c, align 8, !noalias !453
  %i.ck = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @34, ptr %i.ck, align 8, !noalias !453
  %i.cl = invoke noundef zeroext i1 @_RNvXs9_NtNtCsflt7xRw9JFr_12clap_builder7builder3argNtB5_3ArgNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(600) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.al unwind label %bb.ak, !noalias !454

bb.ak:                                            ; preds = %bb.am, %bb.aj
  %i.cm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #26
          to label %.body.i20 unwind label %bb.an, !noalias !454

bb.al:                                            ; preds = %bb.aj
  br i1 %i.cl, label %bb.am, label %bb.as, !prof !9

bb.am:                                            ; preds = %bb.al
  invoke void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @13, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #29
          to label %.noexc.i.i24 unwind label %bb.ak, !noalias !454

.noexc.i.i24:                                     ; preds = %bb.am
  unreachable

bb.an:                                            ; preds = %bb.ak
  %i.cn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27, !noalias !454
  unreachable

bb.ao:                                            ; preds = %_RNCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtCskVIURZGHVHJ_12tensor_tools6FormatENtB7_16TypedValueParser9parse_refs_0B1o_.exit.i16
  call void @llvm.experimental.noalias.scope.decl(metadata !455)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !456
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 3, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i25 unwind label %bb.aq, !noalias !452

.noexc.i25:                                       ; preds = %bb.ao
  %i.co = load i64, ptr %i.b, align 8, !range !7, !noalias !456, !noundef !6
  %i.cp = trunc nuw i64 %i.co to i1
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.cr = load i64, ptr %i.cq, align 8, !range !8, !noalias !456, !noundef !6 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.cp, label %bb.ap, label %_RNCNCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtCskVIURZGHVHJ_12tensor_tools6FormatENtB9_16TypedValueParser9parse_refs2_00B1q_.exit.i, !prof !9

bb.ap:                                            ; preds = %.noexc.i25
  %i.ct = load i64, ptr %i.cs, align 8, !noalias !456
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.cr, i64 %i.ct) #25
          to label %.noexc9.i unwind label %bb.aq, !noalias !452

.noexc9.i:                                        ; preds = %bb.ap
  unreachable

_RNCNCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtCskVIURZGHVHJ_12tensor_tools6FormatENtB9_16TypedValueParser9parse_refs2_00B1q_.exit.i: ; preds = %.noexc.i25
  %i.cu = load ptr, ptr %i.cs, align 8, !noalias !456, !nonnull !6, !noundef !6 ; 2 uses
  %i.cv = icmp samesign ugt i64 %i.cr, 2
  call void @llvm.assume(i1 %i.cv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !456
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.cu, i8 46, i64 3, i1 false), !noalias !456
  store i64 %i.cr, ptr %i.f, align 8, !alias.scope !455, !noalias !452
  %.sroa.4.0..sroa_idx.i8.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.cu, ptr %.sroa.4.0..sroa_idx.i8.i, align 8, !alias.scope !455, !noalias !452
  %.sroa.6.0..sroa_idx.i.i26 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 3, ptr %.sroa.6.0..sroa_idx.i.i26, align 8, !alias.scope !455, !noalias !452
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ar, %bb.ap, %bb.ao
  %.sroa.02.2.i23 = phi i1 [ false, %bb.ar ], [ true, %bb.ap ], [ true, %bb.ao ]
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %.body.i20

.body.i20:                                        ; preds = %bb.aq, %bb.ak
  %.sroa.02.2.lpad-body.i21 = phi i1 [ %.sroa.02.2.i23, %bb.aq ], [ true, %bb.ak ]
  %eh.lpad-body.i22 = phi { ptr, i32 } [ %i.cw, %bb.aq ], [ %i.cm, %bb.ak ] ; 2 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBG_6string6StringEECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #26
          to label %bb.ai unwind label %bb.aw, !noalias !452

bb.ar:                                            ; preds = %bb.as, %_RNCNCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtCskVIURZGHVHJ_12tensor_tools6FormatENtB9_16TypedValueParser9parse_refs2_00B1q_.exit.i
  %i.cx = invoke fastcc noundef nonnull align 8 ptr @_RNvMNtCsflt7xRw9JFr_12clap_builder5errorNtB2_5Error13invalid_valueCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.cg, i64 noundef %i.ci, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.f)
          to label %bb.at unwind label %bb.aq, !noalias !452

bb.as:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !452
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !453
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !453
  br label %bb.ar

bb.at:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !452
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RNCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtCskVIURZGHVHJ_12tensor_tools6FormatENtB7_16TypedValueParser9parse_refs2_0B1o_.exit unwind label %bb.au, !noalias !452

bb.au:                                            ; preds = %bb.at
  %i.cy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %common.resume unwind label %bb.av, !noalias !452

bb.av:                                            ; preds = %bb.au
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27, !noalias !452
  unreachable

bb.aw:                                            ; preds = %bb.ax, %.body.i20
  %i.da = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27, !noalias !452
  unreachable

bb.ax:                                            ; preds = %bb.ai, %.body11.thread17.i
  %.pn14.i15 = phi { ptr, i32 } [ %i.ce, %.body11.thread17.i ], [ %eh.lpad-body.i22, %bb.ai ]
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #26
          to label %common.resume unwind label %bb.aw, !noalias !452

_RNCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtCskVIURZGHVHJ_12tensor_tools6FormatENtB7_16TypedValueParser9parse_refs2_0B1o_.exit: ; preds = %bb.at
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g), !noalias !452
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !452
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !452
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cx, ptr %i.db, align 8
  br label %bb.ay

bb.ay:                                            ; preds = %_RNCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtCskVIURZGHVHJ_12tensor_tools6FormatENtB7_16TypedValueParser9parse_refs0_0B1o_.exit, %_RNCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtCskVIURZGHVHJ_12tensor_tools6FormatENtB7_16TypedValueParser9parse_refs2_0B1o_.exit, %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtCskVIURZGHVHJ_12tensor_tools6FormatENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB2k_15EnumValueParserBQ_ENtB2k_16TypedValueParser9parse_refs1_0EBS_.exit
  %.sink = phi i8 [ 1, %_RNCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtCskVIURZGHVHJ_12tensor_tools6FormatENtB7_16TypedValueParser9parse_refs0_0B1o_.exit ], [ 1, %_RNCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtCskVIURZGHVHJ_12tensor_tools6FormatENtB7_16TypedValueParser9parse_refs2_0B1o_.exit ], [ 0, %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtCskVIURZGHVHJ_12tensor_tools6FormatENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB2k_15EnumValueParserBQ_ENtB2k_16TypedValueParser9parse_refs1_0EBS_.exit ]
  store i8 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools12QuantizationENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB2l_15EnumValueParserB1u_ENtB2l_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1w_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 5 uses
end_hunk_2
begin_hunk_3_@_RNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools12QuantizationENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB2l_15EnumValueParserB1u_ENtB2l_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1w_:bb.a
  br i1 %i.n, label %_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools12QuantizationENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB2r_15EnumValueParserB1A_ENtB2r_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1C_.exit.sink.split, label %.lr.ph10

bb.e:                                             ; preds = %.lr.ph10
  %i.o = icmp eq ptr %i.q, %i.m
  br i1 %i.o, label %_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools12QuantizationENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB2r_15EnumValueParserB1A_ENtB2r_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1C_.exit.sink.split, label %.lr.ph10

.lr.ph10:                                         ; preds = %.loopexit, %bb.e
  %i.p = phi ptr [ %i.q, %bb.e ], [ %.promoted.i.i, %.loopexit ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1 ; 3 uses
  store ptr %i.q, ptr %1, align 8, !alias.scope !493, !noalias !494
  call void @_RNvXs4_CskVIURZGHVHJ_12tensor_toolsNtB5_12QuantizationNtNtCsflt7xRw9JFr_12clap_builder6derive9ValueEnum17to_possible_value(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.p), !noalias !493
  %i.r = load i64, ptr %0, align 8, !range !11, !alias.scope !494, !noalias !493, !noundef !6
  %.not.i.i1 = icmp eq i64 %i.r, -1
  br i1 %.not.i.i1, label %bb.e, label %_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools12QuantizationENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB2r_15EnumValueParserB1A_ENtB2r_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1C_.exit

_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools12QuantizationENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB2r_15EnumValueParserB1A_ENtB2r_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1C_.exit.sink.split: ; preds = %bb.c, %bb.e, %bb.b, %.loopexit
  store i64 -1, ptr %0, align 8
  br label %_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools12QuantizationENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB2r_15EnumValueParserB1A_ENtB2r_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1C_.exit

_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools12QuantizationENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB2r_15EnumValueParserB1A_ENtB2r_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1C_.exit: ; preds = %.lr.ph10, %_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools12QuantizationENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB2r_15EnumValueParserB1A_ENtB2r_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1C_.exit.sink.split
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools16QuantizationModeENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB2p_15EnumValueParserB1u_ENtB2p_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1w_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !514)
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_RNvXs_NvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools16QuantizationModeENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB3d_15EnumValueParserB2i_ENtB3d_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2k_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !515)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !516)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !alias.scope !517, !nonnull !6
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.pre.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !518
  br label %bb.c

bb.c:                                             ; preds = %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map19filter_map_try_foldRNtCskVIURZGHVHJ_12tensor_tools16QuantizationModeNtNtNtCsflt7xRw9JFr_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB3c_ENCNvXso_NtB25_12value_parserINtB4h_15EnumValueParserB1f_ENtB4h_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB49_ENtB5R_13SpecAdvanceBy15spec_advance_by0E0B1h_.exit.i.i.i, %bb.b
  %i.f = phi ptr [ %.pre.i.i.i, %bb.b ], [ %i.k, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map19filter_map_try_foldRNtCskVIURZGHVHJ_12tensor_tools16QuantizationModeNtNtNtCsflt7xRw9JFr_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB3c_ENCNvXso_NtB25_12value_parserINtB4h_15EnumValueParserB1f_ENtB4h_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB49_ENtB5R_13SpecAdvanceBy15spec_advance_by0E0B1h_.exit.i.i.i ] ; 2 uses
  %.sroa.01.0.i.i.i = phi i64 [ %1, %bb.b ], [ %.sroa.0.0.i8.i.i.i, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map19filter_map_try_foldRNtCskVIURZGHVHJ_12tensor_tools16QuantizationModeNtNtNtCsflt7xRw9JFr_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB3c_ENCNvXso_NtB25_12value_parserINtB4h_15EnumValueParserB1f_ENtB4h_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB49_ENtB5R_13SpecAdvanceBy15spec_advance_by0E0B1h_.exit.i.i.i ] ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_RNvXs_NvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools16QuantizationModeENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB3d_15EnumValueParserB2i_ENtB3d_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2k_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = add i64 %i.h, -1                         ; 2 uses
  store i64 %i.i, ptr %i.c, align 8, !alias.scope !518
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !519
  call void @_RNvXs1_CskVIURZGHVHJ_12tensor_toolsNtB5_16QuantizationModeNtNtCsflt7xRw9JFr_12clap_builder6derive9ValueEnum17to_possible_value(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d), !noalias !517
  %i.j = load i64, ptr %i.b, align 8, !range !11, !noalias !519, !noundef !6
  %.not.i.i.i.i = icmp eq i64 %i.j, -1
  %i.k = inttoptr i64 %i.i to ptr
  br i1 %.not.i.i.i.i, label %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map19filter_map_try_foldRNtCskVIURZGHVHJ_12tensor_tools16QuantizationModeNtNtNtCsflt7xRw9JFr_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB3c_ENCNvXso_NtB25_12value_parserINtB4h_15EnumValueParserB1f_ENtB4h_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB49_ENtB5R_13SpecAdvanceBy15spec_advance_by0E0B1h_.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !519
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false), !noalias !519
  store i64 %.sroa.01.0.i.i.i, ptr %i.a, align 8, !noalias !519
  %i.l = add i64 %.sroa.01.0.i.i.i, -1
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsflt7xRw9JFr_12clap_builder7builder14possible_value13PossibleValueECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.e), !noalias !517
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !519
  br label %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map19filter_map_try_foldRNtCskVIURZGHVHJ_12tensor_tools16QuantizationModeNtNtNtCsflt7xRw9JFr_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB3c_ENCNvXso_NtB25_12value_parserINtB4h_15EnumValueParserB1f_ENtB4h_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB49_ENtB5R_13SpecAdvanceBy15spec_advance_by0E0B1h_.exit.i.i.i

_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map19filter_map_try_foldRNtCskVIURZGHVHJ_12tensor_tools16QuantizationModeNtNtNtCsflt7xRw9JFr_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB3c_ENCNvXso_NtB25_12value_parserINtB4h_15EnumValueParserB1f_ENtB4h_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB49_ENtB5R_13SpecAdvanceBy15spec_advance_by0E0B1h_.exit.i.i.i: ; preds = %bb.e, %bb.d
  %.sroa.0.0.i8.i.i.i = phi i64 [ %i.l, %bb.e ], [ %.sroa.01.0.i.i.i, %bb.d ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !519
  %i.m = icmp eq i64 %.sroa.0.0.i8.i.i.i, 0
  br i1 %i.m, label %_RNvXs_NvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools16QuantizationModeENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB3d_15EnumValueParserB2i_ENtB3d_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2k_.exit, label %bb.c

_RNvXs_NvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools16QuantizationModeENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB3d_15EnumValueParserB2i_ENtB3d_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2k_.exit: ; preds = %bb.c, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map19filter_map_try_foldRNtCskVIURZGHVHJ_12tensor_tools16QuantizationModeNtNtNtCsflt7xRw9JFr_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB3c_ENCNvXso_NtB25_12value_parserINtB4h_15EnumValueParserB1f_ENtB4h_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB49_ENtB5R_13SpecAdvanceBy15spec_advance_by0E0B1h_.exit.i.i.i, %bb.a
  %.sroa.0.1.i = phi i64 [ 0, %bb.a ], [ %.sroa.01.0.i.i.i, %bb.c ], [ 0, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map19filter_map_try_foldRNtCskVIURZGHVHJ_12tensor_tools16QuantizationModeNtNtNtCsflt7xRw9JFr_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB3c_ENCNvXso_NtB25_12value_parserINtB4h_15EnumValueParserB1f_ENtB4h_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB49_ENtB5R_13SpecAdvanceBy15spec_advance_by0E0B1h_.exit.i.i.i ]
  ret i64 %.sroa.0.1.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools16QuantizationModeENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB2p_15EnumValueParserB1u_ENtB2p_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1w_(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1, i64 noundef %2) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !538)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !539)
  %.not.i.i = icmp eq i64 %2, 0
  %.pre = load ptr, ptr %1, align 8               ; 2 uses
  br i1 %.not.i.i, label %..loopexit_crit_edge, label %bb.b

..loopexit_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre.i.i.pre = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !540, !noalias !541
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !542)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !543)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.pre.i.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !544
  br label %bb.c

bb.c:                                             ; preds = %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map19filter_map_try_foldRNtCskVIURZGHVHJ_12tensor_tools16QuantizationModeNtNtNtCsflt7xRw9JFr_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB3c_ENCNvXso_NtB25_12value_parserINtB4h_15EnumValueParserB1f_ENtB4h_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB49_ENtB5R_13SpecAdvanceBy15spec_advance_by0E0B1h_.exit.i.i.i.i, %bb.b
  %i.e = phi ptr [ %.pre.i.i.i.i, %bb.b ], [ %i.j, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map19filter_map_try_foldRNtCskVIURZGHVHJ_12tensor_tools16QuantizationModeNtNtNtCsflt7xRw9JFr_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB3c_ENCNvXso_NtB25_12value_parserINtB4h_15EnumValueParserB1f_ENtB4h_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB49_ENtB5R_13SpecAdvanceBy15spec_advance_by0E0B1h_.exit.i.i.i.i ] ; 2 uses
  %.sroa.01.0.i.i.i.i = phi i64 [ %2, %bb.b ], [ %.sroa.0.0.i8.i.i.i.i, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map19filter_map_try_foldRNtCskVIURZGHVHJ_12tensor_tools16QuantizationModeNtNtNtCsflt7xRw9JFr_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB3c_ENCNvXso_NtB25_12value_parserINtB4h_15EnumValueParserB1f_ENtB4h_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB49_ENtB5R_13SpecAdvanceBy15spec_advance_by0E0B1h_.exit.i.i.i.i ] ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools16QuantizationModeENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB2v_15EnumValueParserB1A_ENtB2v_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1C_.exit.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = add i64 %i.g, -1                         ; 2 uses
  store i64 %i.h, ptr %i.c, align 8, !alias.scope !544
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !545
  call void @_RNvXs1_CskVIURZGHVHJ_12tensor_toolsNtB5_16QuantizationModeNtNtCsflt7xRw9JFr_12clap_builder6derive9ValueEnum17to_possible_value(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.pre), !noalias !546
  %i.i = load i64, ptr %i.b, align 8, !range !11, !noalias !545, !noundef !6
  %.not.i.i.i.i.i = icmp eq i64 %i.i, -1
  %i.j = inttoptr i64 %i.h to ptr                 ; 2 uses
  br i1 %.not.i.i.i.i.i, label %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map19filter_map_try_foldRNtCskVIURZGHVHJ_12tensor_tools16QuantizationModeNtNtNtCsflt7xRw9JFr_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB3c_ENCNvXso_NtB25_12value_parserINtB4h_15EnumValueParserB1f_ENtB4h_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB49_ENtB5R_13SpecAdvanceBy15spec_advance_by0E0B1h_.exit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !545
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false), !noalias !545
  store i64 %.sroa.01.0.i.i.i.i, ptr %i.a, align 8, !noalias !545
  %i.k = add i64 %.sroa.01.0.i.i.i.i, -1
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsflt7xRw9JFr_12clap_builder7builder14possible_value13PossibleValueECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.d), !noalias !546
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !545
  br label %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map19filter_map_try_foldRNtCskVIURZGHVHJ_12tensor_tools16QuantizationModeNtNtNtCsflt7xRw9JFr_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB3c_ENCNvXso_NtB25_12value_parserINtB4h_15EnumValueParserB1f_ENtB4h_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB49_ENtB5R_13SpecAdvanceBy15spec_advance_by0E0B1h_.exit.i.i.i.i

_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map19filter_map_try_foldRNtCskVIURZGHVHJ_12tensor_tools16QuantizationModeNtNtNtCsflt7xRw9JFr_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB3c_ENCNvXso_NtB25_12value_parserINtB4h_15EnumValueParserB1f_ENtB4h_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB49_ENtB5R_13SpecAdvanceBy15spec_advance_by0E0B1h_.exit.i.i.i.i: ; preds = %bb.e, %bb.d
  %.sroa.0.0.i8.i.i.i.i = phi i64 [ %i.k, %bb.e ], [ %.sroa.01.0.i.i.i.i, %bb.d ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !545
  %i.l = icmp eq i64 %.sroa.0.0.i8.i.i.i.i, 0
  br i1 %i.l, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map19filter_map_try_foldRNtCskVIURZGHVHJ_12tensor_tools16QuantizationModeNtNtNtCsflt7xRw9JFr_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB3c_ENCNvXso_NtB25_12value_parserINtB4h_15EnumValueParserB1f_ENtB4h_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB49_ENtB5R_13SpecAdvanceBy15spec_advance_by0E0B1h_.exit.i.i.i.i, %..loopexit_crit_edge
  %.pre.i.i = phi ptr [ %.pre.i.i.pre, %..loopexit_crit_edge ], [ %i.j, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map19filter_map_try_foldRNtCskVIURZGHVHJ_12tensor_tools16QuantizationModeNtNtNtCsflt7xRw9JFr_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB3c_ENCNvXso_NtB25_12value_parserINtB4h_15EnumValueParserB1f_ENtB4h_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB49_ENtB5R_13SpecAdvanceBy15spec_advance_by0E0B1h_.exit.i.i.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !547)
  call void @llvm.experimental.noalias.scope.decl(metadata !548)
  call void @llvm.experimental.noalias.scope.decl(metadata !549)
  call void @llvm.experimental.noalias.scope.decl(metadata !550)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.loopexit
  %i.n = phi ptr [ %i.s, %bb.g ], [ %.pre.i.i, %.loopexit ] ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools16QuantizationModeENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB2v_15EnumValueParserB1A_ENtB2v_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1C_.exit.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = add i64 %i.p, -1                         ; 2 uses
  store i64 %i.q, ptr %i.m, align 8, !alias.scope !540, !noalias !541
  call void @_RNvXs1_CskVIURZGHVHJ_12tensor_toolsNtB5_16QuantizationModeNtNtCsflt7xRw9JFr_12clap_builder6derive9ValueEnum17to_possible_value(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.pre), !noalias !540
  %i.r = load i64, ptr %0, align 8, !range !11, !alias.scope !541, !noalias !540, !noundef !6
  %.not.i.i1 = icmp eq i64 %i.r, -1
  %i.s = inttoptr i64 %i.q to ptr
  br i1 %.not.i.i1, label %bb.f, label %_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools16QuantizationModeENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB2v_15EnumValueParserB1A_ENtB2v_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1C_.exit

_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools16QuantizationModeENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB2v_15EnumValueParserB1A_ENtB2v_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1C_.exit.sink.split: ; preds = %bb.c, %bb.f
  store i64 -1, ptr %0, align 8
  br label %_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools16QuantizationModeENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB2v_15EnumValueParserB1A_ENtB2v_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1C_.exit

_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools16QuantizationModeENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB2v_15EnumValueParserB1A_ENtB2v_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1C_.exit: ; preds = %bb.g, %_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools16QuantizationModeENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB2v_15EnumValueParserB1A_ENtB2v_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1C_.exit.sink.split
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools6FormatENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB2e_15EnumValueParserB1u_ENtB2e_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1w_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !559)
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_RNvXs_NvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools6FormatENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB32_15EnumValueParserB2i_ENtB32_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2k_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !560)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !561)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !562, !nonnull !6, !noundef !6
  %.promoted.i.i.i = load ptr, ptr %0, align 8, !alias.scope !562
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.53.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.64.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.86.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.97.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.sroa.108.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  br label %bb.c

bb.c:                                             ; preds = %switch.lookup, %bb.b
  %i.e = phi ptr [ %.promoted.i.i.i, %bb.b ], [ %i.g, %switch.lookup ] ; 3 uses
  %.sroa.01.0.i.i.i = phi i64 [ %1, %bb.b ], [ %i.j, %switch.lookup ] ; 3 uses
  %i.f = icmp eq ptr %i.e, %i.c
  br i1 %i.f, label %_RNvXs_NvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools6FormatENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB32_15EnumValueParserB2i_ENtB32_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2k_.exit, label %switch.lookup

switch.lookup:                                    ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !alias.scope !562
  %.val.i.i.i = load i8, ptr %i.e, align 1, !range !22, !noalias !563, !noundef !6 ; 2 uses
  %i.h = zext nneg i8 %.val.i.i.i to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools6FormatENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB2e_15EnumValueParserB1u_ENtB2e_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1w_.96, i64 %i.h
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.i = zext nneg i8 %.val.i.i.i to i64
  %switch.gep3 = getelementptr inbounds nuw i8, ptr @switch.table._RNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools6FormatENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB2e_15EnumValueParserB1u_ENtB2e_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1w_.97, i64 %i.i
  %switch.load4 = load i8, ptr %switch.gep3, align 1
  %switch.ext = zext i8 %switch.load4 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !563
  store i64 %.sroa.01.0.i.i.i, ptr %i.a, align 8, !noalias !563
  store i64 0, ptr %i.d, align 8, !noalias !563
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !563
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i.i, align 8, !noalias !563
  store i64 -1, ptr %.sroa.64.0..sroa_idx.i.i.i.i, align 8, !noalias !563
  store ptr %switch.load, ptr %.sroa.86.0..sroa_idx.i.i.i.i, align 8, !noalias !563
  store i64 %switch.ext, ptr %.sroa.97.0..sroa_idx.i.i.i.i, align 8, !noalias !563
  store i8 0, ptr %.sroa.108.0..sroa_idx.i.i.i.i, align 8, !noalias !563
  %i.j = add i64 %.sroa.01.0.i.i.i, -1            ; 2 uses
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsflt7xRw9JFr_12clap_builder7builder14possible_value13PossibleValueECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.d), !noalias !563
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !563
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs_NvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools6FormatENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB32_15EnumValueParserB2i_ENtB32_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2k_.exit, label %bb.c

_RNvXs_NvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools6FormatENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB32_15EnumValueParserB2i_ENtB32_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2k_.exit: ; preds = %bb.c, %switch.lookup, %bb.a
  %.sroa.0.1.i = phi i64 [ 0, %bb.a ], [ %.sroa.01.0.i.i.i, %bb.c ], [ 0, %switch.lookup ]
  ret i64 %.sroa.0.1.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools6FormatENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB2e_15EnumValueParserB1u_ENtB2e_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1w_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1, i64 noundef %2) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !586)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !587)
  %.not.i.i = icmp eq i64 %2, 0
  %.pre = load ptr, ptr %1, align 8               ; 2 uses
  br i1 %.not.i.i, label %..loopexit_crit_edge, label %bb.b

..loopexit_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre4 = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !588, !noalias !589
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !590)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !591)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !592, !nonnull !6, !noundef !6 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.53.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.64.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.86.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.97.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.sroa.108.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  br label %bb.c

bb.c:                                             ; preds = %switch.lookup, %bb.b
  %i.e = phi ptr [ %.pre, %bb.b ], [ %i.g, %switch.lookup ] ; 3 uses
  %.sroa.01.0.i.i.i.i = phi i64 [ %2, %bb.b ], [ %i.j, %switch.lookup ] ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.c
  br i1 %i.f, label %_RNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools6FormatENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB2e_15EnumValueParserB1u_ENtB2e_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1w_.exit, label %switch.lookup

switch.lookup:                                    ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 3 uses
  store ptr %i.g, ptr %1, align 8, !alias.scope !592
  %.val.i.i.i.i = load i8, ptr %i.e, align 1, !range !22, !noalias !593, !noundef !6 ; 2 uses
  %i.h = zext nneg i8 %.val.i.i.i.i to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools6FormatENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB2e_15EnumValueParserB1u_ENtB2e_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1w_.96, i64 %i.h
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.i = zext nneg i8 %.val.i.i.i.i to i64
  %switch.gep11 = getelementptr inbounds nuw i8, ptr @switch.table._RNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools6FormatENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB2e_15EnumValueParserB1u_ENtB2e_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1w_.97, i64 %i.i
  %switch.load12 = load i8, ptr %switch.gep11, align 1
  %switch.ext = zext i8 %switch.load12 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !593
  store i64 %.sroa.01.0.i.i.i.i, ptr %i.a, align 8, !noalias !593
  store i64 0, ptr %i.d, align 8, !noalias !593
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !593
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i, align 8, !noalias !593
  store i64 -1, ptr %.sroa.64.0..sroa_idx.i.i.i.i.i, align 8, !noalias !593
  store ptr %switch.load, ptr %.sroa.86.0..sroa_idx.i.i.i.i.i, align 8, !noalias !593
  store i64 %switch.ext, ptr %.sroa.97.0..sroa_idx.i.i.i.i.i, align 8, !noalias !593
  store i8 0, ptr %.sroa.108.0..sroa_idx.i.i.i.i.i, align 8, !noalias !593
  %i.j = add i64 %.sroa.01.0.i.i.i.i, -1          ; 2 uses
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsflt7xRw9JFr_12clap_builder7builder14possible_value13PossibleValueECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.d), !noalias !593
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !593
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %.loopexit, label %bb.c

_RNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools6FormatENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB2e_15EnumValueParserB1u_ENtB2e_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1w_.exit: ; preds = %bb.c
  store i64 -1, ptr %0, align 8
  br label %_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools6FormatENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB2k_15EnumValueParserB1A_ENtB2k_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1C_.exit

.loopexit:                                        ; preds = %switch.lookup, %..loopexit_crit_edge
  %i.l = phi ptr [ %.pre4, %..loopexit_crit_edge ], [ %i.c, %switch.lookup ]
  %i.m = phi ptr [ %.pre, %..loopexit_crit_edge ], [ %i.g, %switch.lookup ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !594)
  call void @llvm.experimental.noalias.scope.decl(metadata !595)
  call void @llvm.experimental.noalias.scope.decl(metadata !596)
  call void @llvm.experimental.noalias.scope.decl(metadata !597)
  %i.n = icmp eq ptr %i.m, %i.l
  br i1 %i.n, label %bb.d, label %switch.lookup13

switch.lookup13:                                  ; preds = %.loopexit
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  store ptr %i.o, ptr %1, align 8, !alias.scope !588, !noalias !589
  %.val.i.i = load i8, ptr %i.m, align 1, !range !22, !noalias !598, !noundef !6 ; 2 uses
  store i64 0, ptr %0, align 8, !alias.scope !599, !noalias !588
  %.sroa.0.sroa.0.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !599, !noalias !588
  %.sroa.0.sroa.0.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.0.sroa.0.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !599, !noalias !588
  %.sroa.0.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 -1, ptr %.sroa.0.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !599, !noalias !588
  %i.p = zext nneg i8 %.val.i.i to i64
  %switch.gep14 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools6FormatENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB2e_15EnumValueParserB1u_ENtB2e_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1w_.96, i64 %i.p
  %switch.load15 = load ptr, ptr %switch.gep14, align 8
  %i.q = zext nneg i8 %.val.i.i to i64
  %switch.gep16 = getelementptr inbounds nuw i8, ptr @switch.table._RNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools6FormatENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB2e_15EnumValueParserB1u_ENtB2e_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1w_.97, i64 %i.q
  %switch.load17 = load i8, ptr %switch.gep16, align 1
  %switch.ext18 = zext i8 %switch.load17 to i64
  %.sroa.7.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %switch.load15, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !599, !noalias !588
  store i64 %switch.ext18, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !599, !noalias !588
  store i8 0, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !599, !noalias !588
  br label %_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools6FormatENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB2k_15EnumValueParserB1A_ENtB2k_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1C_.exit

bb.d:                                             ; preds = %.loopexit
  store i64 -1, ptr %0, align 8, !alias.scope !589, !noalias !588
  br label %_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools6FormatENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB2k_15EnumValueParserB1A_ENtB2k_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1C_.exit

_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools6FormatENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB2k_15EnumValueParserB1A_ENtB2k_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1C_.exit: ; preds = %bb.d, %switch.lookup13, %_RNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools6FormatENCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB2e_15EnumValueParserB1u_ENtB2e_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1w_.exit
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMCsfmY3yR2dyUD_8clap_lexNtB3_7RawArgs3newNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringNtNtBN_3env6ArgsOsECskVIURZGHVHJ_12tensor_tools(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMs16_NtCs5Xr050g3D4S_3std4pathNtB6_4Path9file_stem(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskVIURZGHVHJ_12tensor_tools(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMCsfmY3yR2dyUD_8clap_lexNtB3_7RawArgs6insertRNtNtCsgCecv3eZDcN_5alloc6string6StringABK_j1_ECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs3_NtNtCsflt7xRw9JFr_12clap_builder7builder7commandNtB5_7Command9__do_parse(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias nofree noundef align 8 dereferenceable(712), ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #16

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMs16_NtCs5Xr050g3D4S_3std4pathNtB6_4Path9file_name(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCsf3Ta7LF998c_4core3str8converts9from_utf8(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCsflt7xRw9JFr_12clap_builder7builder7commandNtB2_7Command12arg_internal(ptr noalias nofree noundef align 8 dereferenceable(712), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(600)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4, i1 noundef zeroext, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvYNtNtNtNtCs5Xr050g3D4S_3std3sys5stdio4unix6StderrNtNtNtCsf3Ta7LF998c_4core2io5write5Write9write_fmtCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull, ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: cold noreturn nonlazybind uwtable
declare void @_RNvNtCs5Xr050g3D4S_3std7process5abort() unnamed_addr #17

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCsflt7xRw9JFr_12clap_builder7builder3str3StrEINtB2_12SpecFromIterBU_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB2f_5array4iter8IntoIterBU_Kj1_ENCINvMs_NtBY_3argNtB3F_3Arg11value_namesBU_ABU_B3t_E0EE9from_iterCskVIURZGHVHJ_12tensor_tools(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #18

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs5Xr050g3D4S_3std9backtrace14BacktraceFrameENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsflt7xRw9JFr_12clap_builder7mkeymap3KeyENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCsflt7xRw9JFr_12clap_builder4util2id2IdENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCsflt7xRw9JFr_12clap_builder4util9any_value10AnyValueIdENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCsflt7xRw9JFr_12clap_builder4util9any_value8AnyValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCsflt7xRw9JFr_12clap_builder5error7context11ContextKindENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCsflt7xRw9JFr_12clap_builder5error7context12ContextValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCsflt7xRw9JFr_12clap_builder7builder10styled_str9StyledStrENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCsflt7xRw9JFr_12clap_builder7builder3arg3ArgENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCsflt7xRw9JFr_12clap_builder7builder3str3StrENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCsflt7xRw9JFr_12clap_builder7builder6os_str5OsStrENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCsflt7xRw9JFr_12clap_builder7builder7command7CommandENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCsflt7xRw9JFr_12clap_builder7builder9arg_group8ArgGroupENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtNtCsflt7xRw9JFr_12clap_builder4util2id2IdNtNtNtBM_7builder13arg_predicate12ArgPredicateINtNtCsf3Ta7LF998c_4core6option6OptionIBw_NtNtB1t_6os_str5OsStrEEEENtNtNtB2e_3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtNtCsflt7xRw9JFr_12clap_builder4util2id2IdNtNtNtBM_7builder6os_str5OsStrEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtNtCsflt7xRw9JFr_12clap_builder7builder13arg_predicate12ArgPredicateNtNtNtBM_4util2id2IdEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtNtCsflt7xRw9JFr_12clap_builder7builder3str3StrbEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTcbEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs5Xr050g3D4S_3std9backtrace14BacktraceFrameENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsflt7xRw9JFr_12clap_builder7mkeymap3KeyENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCsflt7xRw9JFr_12clap_builder4util2id2IdENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCsflt7xRw9JFr_12clap_builder4util9any_value10AnyValueIdENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCsflt7xRw9JFr_12clap_builder4util9any_value8AnyValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCsflt7xRw9JFr_12clap_builder5error7context11ContextKindENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCsflt7xRw9JFr_12clap_builder5error7context12ContextValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCsflt7xRw9JFr_12clap_builder7builder10styled_str9StyledStrENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCsflt7xRw9JFr_12clap_builder7builder3arg3ArgENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCsflt7xRw9JFr_12clap_builder7builder3str3StrENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCsflt7xRw9JFr_12clap_builder7builder6os_str5OsStrENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCsflt7xRw9JFr_12clap_builder7builder7command7CommandENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCsflt7xRw9JFr_12clap_builder7builder9arg_group8ArgGroupENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtNtCsflt7xRw9JFr_12clap_builder4util2id2IdNtNtNtBT_7builder13arg_predicate12ArgPredicateINtNtCsf3Ta7LF998c_4core6option6OptionINtNtB7_3vec3VecNtNtB1A_6os_str5OsStrEEEENtNtNtB2l_3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtNtCsflt7xRw9JFr_12clap_builder4util2id2IdNtNtNtBT_7builder6os_str5OsStrEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtNtCsflt7xRw9JFr_12clap_builder7builder13arg_predicate12ArgPredicateNtNtNtBT_4util2id2IdEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtNtCsflt7xRw9JFr_12clap_builder7builder3str3StrbEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTcbEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0
end_hunk_3
