Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/iox2_node.iox2_node.6907d9118056f320-cgu.08?download=true
inline.NumInlined: 180
inline.NumDeleted: 116
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [12 x i8] c"NodeIdString", align 1
@1 = private unnamed_addr constant [9 x i8] c"NodeState", align 1
@2 = private unnamed_addr constant [5 x i8] c"Alive", align 1
@3 = private unnamed_addr constant [4 x i8] c"Dead", align 1
@4 = private unnamed_addr constant [12 x i8] c"Inaccessible", align 1
@5 = private unnamed_addr constant [9 x i8] c"Undefined", align 1
@6 = private unnamed_addr constant [14 x i8] c"NodeDescriptor", align 1
@7 = private unnamed_addr constant [5 x i8] c"state", align 1
@8 = private unnamed_addr constant [2 x i8] c"id", align 1
@9 = private unnamed_addr constant [3 x i8] c"pid", align 1
@10 = private unnamed_addr constant [10 x i8] c"executable", align 1
@11 = private unnamed_addr constant [4 x i8] c"name", align 1
@12 = private unnamed_addr constant [8 x i8] c"NodeList", align 1
@13 = private unnamed_addr constant [3 x i8] c"num", align 1
@14 = private unnamed_addr constant [7 x i8] c"details", align 1
@15 = private unnamed_addr constant [1 x i8] c"\0A", align 1
@16 = private unnamed_addr constant [1 x i8] c"}", align 1
@17 = private unnamed_addr constant [1 x i8] c"{", align 1
@18 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsK_NtCs8Chj7Szqq0n_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt }>, align 8
@19 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 8590639715513320490 to ptr), ptr inttoptr (i64 -8255110926566411735 to ptr) }>, align 8
@20 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -880012988629556965 to ptr), ptr inttoptr (i64 6417511543528152735 to ptr) }>, align 8
@21 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 4682098340148383049 to ptr), ptr inttoptr (i64 1291057085458961634 to ptr) }>, align 8
@22 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsc_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB5_15EnumValueParserNtNtCshX8c74mBP8L_12iceoryx2_cli6filter11StateFilterENtB5_14AnyValueParser9parse_refCs914H3uZQmS2_9iox2_node, ptr @_RNvXsc_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB5_15EnumValueParserNtNtCshX8c74mBP8L_12iceoryx2_cli6filter11StateFilterENtB5_14AnyValueParser10parse_ref_Cs914H3uZQmS2_9iox2_node, ptr @_RNvXsc_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB5_15EnumValueParserNtNtCshX8c74mBP8L_12iceoryx2_cli6filter11StateFilterENtB5_14AnyValueParser7type_idCs914H3uZQmS2_9iox2_node, ptr @_RNvXsc_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB5_15EnumValueParserNtNtCshX8c74mBP8L_12iceoryx2_cli6filter11StateFilterENtB5_14AnyValueParser15possible_valuesCs914H3uZQmS2_9iox2_node, ptr @_RNvXsc_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB5_15EnumValueParserNtNtCshX8c74mBP8L_12iceoryx2_cli6filter11StateFilterENtB5_14AnyValueParser9clone_anyCs914H3uZQmS2_9iox2_node }>, align 8
@23 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsc_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB5_15EnumValueParserNtNtCshX8c74mBP8L_12iceoryx2_cli6format6FormatENtB5_14AnyValueParser9parse_refCs914H3uZQmS2_9iox2_node, ptr @_RNvXsc_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB5_15EnumValueParserNtNtCshX8c74mBP8L_12iceoryx2_cli6format6FormatENtB5_14AnyValueParser10parse_ref_Cs914H3uZQmS2_9iox2_node, ptr @_RNvXsc_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB5_15EnumValueParserNtNtCshX8c74mBP8L_12iceoryx2_cli6format6FormatENtB5_14AnyValueParser7type_idCs914H3uZQmS2_9iox2_node, ptr @_RNvXsc_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB5_15EnumValueParserNtNtCshX8c74mBP8L_12iceoryx2_cli6format6FormatENtB5_14AnyValueParser15possible_valuesCs914H3uZQmS2_9iox2_node, ptr @_RNvXsc_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB5_15EnumValueParserNtNtCshX8c74mBP8L_12iceoryx2_cli6format6FormatENtB5_14AnyValueParser9clone_anyCs914H3uZQmS2_9iox2_node }>, align 8
@24 = private unnamed_addr constant [3 x i8] c"\00\01\02", align 1
@25 = private unnamed_addr constant [3 x i8] c"RON", align 1
@26 = private unnamed_addr constant [4 x i8] c"JSON", align 1
@27 = private unnamed_addr constant [4 x i8] c"YAML", align 1
@28 = private unnamed_addr constant [5 x i8] c"\00\01\02\03\04", align 1
@29 = private unnamed_addr constant [3 x i8] c"All", align 1
@30 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsbqH9stoieM8_5alloc6string6StringECs914H3uZQmS2_9iox2_node, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsZ_NtCsbqH9stoieM8_5alloc6stringNtB5_6StringNtNtCs8Chj7Szqq0n_4core3fmt5Write9write_str, ptr @_RNvXsZ_NtCsbqH9stoieM8_5alloc6stringNtB5_6StringNtNtCs8Chj7Szqq0n_4core3fmt5Write10write_char, ptr @_RNvYNtNtCsbqH9stoieM8_5alloc6string6StringNtNtCs8Chj7Szqq0n_4core3fmt5Write9write_fmtCs914H3uZQmS2_9iox2_node }>, align 8
@31 = private unnamed_addr constant [55 x i8] c"a Display implementation returned an error unexpectedly", align 1
@32 = private unnamed_addr constant [76 x i8] c"/rustc/0ed41eb4142dda2df61eb1145a312c1a9d62eb56/library/alloc/src/string.rs\00", align 1
@33 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @32, [16 x i8] c"K\00\00\00\00\00\00\00\A5\0B\00\00\0E\00\00\00" }>, align 8
@34 = private unnamed_addr constant [5 x i8] c"Error", align 1
@35 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCshX8c74mBP8L_12iceoryx2_cli6filter14NodeIdentifierECs914H3uZQmS2_9iox2_node, [16 x i8] c" \00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNtCs8Chj7Szqq0n_4core3anyNtNtCshX8c74mBP8L_12iceoryx2_cli6filter14NodeIdentifierNtB2_3Any7type_idCs914H3uZQmS2_9iox2_node }>, align 8
@36 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsc_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserFG_RL0_eEINtNtCs8Chj7Szqq0n_4core6result6ResultNtNtCshX8c74mBP8L_12iceoryx2_cli6filter14NodeIdentifierNtNtCsbqH9stoieM8_5alloc6string6StringENtB5_14AnyValueParser9parse_refCs914H3uZQmS2_9iox2_node, ptr @_RNvXsc_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserFG_RL0_eEINtNtCs8Chj7Szqq0n_4core6result6ResultNtNtCshX8c74mBP8L_12iceoryx2_cli6filter14NodeIdentifierNtNtCsbqH9stoieM8_5alloc6string6StringENtB5_14AnyValueParser10parse_ref_Cs914H3uZQmS2_9iox2_node, ptr @_RNvXsc_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserFG_RL0_eEINtNtCs8Chj7Szqq0n_4core6result6ResultNtNtCshX8c74mBP8L_12iceoryx2_cli6filter14NodeIdentifierNtNtCsbqH9stoieM8_5alloc6string6StringENtB5_14AnyValueParser7type_idCs914H3uZQmS2_9iox2_node, ptr @_RNvXsc_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserFG_RL0_eEINtNtCs8Chj7Szqq0n_4core6result6ResultNtNtCshX8c74mBP8L_12iceoryx2_cli6filter14NodeIdentifierNtNtCsbqH9stoieM8_5alloc6string6StringENtB5_14AnyValueParser15possible_valuesCs914H3uZQmS2_9iox2_node, ptr @_RNvXsc_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserFG_RL0_eEINtNtCs8Chj7Szqq0n_4core6result6ResultNtNtCshX8c74mBP8L_12iceoryx2_cli6filter14NodeIdentifierNtNtCsbqH9stoieM8_5alloc6string6StringENtB5_14AnyValueParser9clone_anyCs914H3uZQmS2_9iox2_node }>, align 8
@37 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXNtCs8Chj7Szqq0n_4core3anyNtNtCshX8c74mBP8L_12iceoryx2_cli6filter11StateFilterNtB2_3Any7type_idCs914H3uZQmS2_9iox2_node }>, align 8
@38 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXNtCs8Chj7Szqq0n_4core3anyNtNtCshX8c74mBP8L_12iceoryx2_cli6format6FormatNtB2_3Any7type_idCs914H3uZQmS2_9iox2_node }>, align 8
@39 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNvXsf_NtNtCsbqH9stoieM8_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1R_4SendEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECs914H3uZQmS2_9iox2_node, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NvXsf_NtNtCsbqH9stoieM8_5alloc5boxed7convertINtBc_3BoxDNtNtCs8Chj7Szqq0n_4core5error5ErrorNtNtB11_6marker4SyncNtB1y_4SendEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4fromNtB4_11StringErrorNtNtB11_3fmt7Display3fmt }>, align 8
@40 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNvXsf_NtNtCsbqH9stoieM8_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1R_4SendEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECs914H3uZQmS2_9iox2_node, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs0_NvXsf_NtNtCsbqH9stoieM8_5alloc5boxed7convertINtBd_3BoxDNtNtCs8Chj7Szqq0n_4core5error5ErrorNtNtB12_6marker4SyncNtB1z_4SendEL_EINtNtB12_7convert4FromNtNtBf_6string6StringE4fromNtB5_11StringErrorNtNtB12_3fmt5Debug3fmt, ptr @_RNvXs_NvXsf_NtNtCsbqH9stoieM8_5alloc5boxed7convertINtBc_3BoxDNtNtCs8Chj7Szqq0n_4core5error5ErrorNtNtB11_6marker4SyncNtB1y_4SendEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4fromNtB4_11StringErrorNtNtB11_3fmt7Display3fmt, ptr @39, ptr @_RNvYNtNvXsf_NtNtCsbqH9stoieM8_5alloc5boxed7convertINtBc_3BoxDNtNtCs8Chj7Szqq0n_4core5error5ErrorNtNtB11_6marker4SyncNtB1y_4SendEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_6sourceCs914H3uZQmS2_9iox2_node, ptr @_RNvYNtNvXsf_NtNtCsbqH9stoieM8_5alloc5boxed7convertINtBc_3BoxDNtNtCs8Chj7Szqq0n_4core5error5ErrorNtNtB11_6marker4SyncNtB1y_4SendEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_7type_idCs914H3uZQmS2_9iox2_node, ptr @_RNvYNtNvXsf_NtNtCsbqH9stoieM8_5alloc5boxed7convertINtBc_3BoxDNtNtCs8Chj7Szqq0n_4core5error5ErrorNtNtB11_6marker4SyncNtB1y_4SendEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_11descriptionCs914H3uZQmS2_9iox2_node, ptr @_RNvYNtNvXsf_NtNtCsbqH9stoieM8_5alloc5boxed7convertINtBc_3BoxDNtNtCs8Chj7Szqq0n_4core5error5ErrorNtNtB11_6marker4SyncNtB1y_4SendEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_5causeCs914H3uZQmS2_9iox2_node, ptr @_RNvYNtNvXsf_NtNtCsbqH9stoieM8_5alloc5boxed7convertINtBc_3BoxDNtNtCs8Chj7Szqq0n_4core5error5ErrorNtNtB11_6marker4SyncNtB1y_4SendEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_7provideCs914H3uZQmS2_9iox2_node }>, align 8
@41 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs0_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCshX8c74mBP8L_12iceoryx2_cli6filter11StateFilterENCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB2z_15EnumValueParserB1A_ENtB2z_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextCs914H3uZQmS2_9iox2_node, ptr @_RNvXs0_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCshX8c74mBP8L_12iceoryx2_cli6filter11StateFilterENCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB2z_15EnumValueParserB1A_ENtB2z_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator9size_hintCs914H3uZQmS2_9iox2_node, ptr @_RNvYINtNtNtNtCs8Chj7Szqq0n_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCshX8c74mBP8L_12iceoryx2_cli6filter11StateFilterENCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB2t_15EnumValueParserB1u_ENtB2t_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byCs914H3uZQmS2_9iox2_node, ptr @_RNvYINtNtNtNtCs8Chj7Szqq0n_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCshX8c74mBP8L_12iceoryx2_cli6filter11StateFilterENCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB2t_15EnumValueParserB1u_ENtB2t_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthCs914H3uZQmS2_9iox2_node }>, align 8
@42 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs0_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCshX8c74mBP8L_12iceoryx2_cli6format6FormatENCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB2t_15EnumValueParserB1A_ENtB2t_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextCs914H3uZQmS2_9iox2_node, ptr @_RNvXs0_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCshX8c74mBP8L_12iceoryx2_cli6format6FormatENCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB2t_15EnumValueParserB1A_ENtB2t_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator9size_hintCs914H3uZQmS2_9iox2_node, ptr @_RNvYINtNtNtNtCs8Chj7Szqq0n_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCshX8c74mBP8L_12iceoryx2_cli6format6FormatENCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB2n_15EnumValueParserB1u_ENtB2n_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byCs914H3uZQmS2_9iox2_node, ptr @_RNvYINtNtNtNtCs8Chj7Szqq0n_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCshX8c74mBP8L_12iceoryx2_cli6format6FormatENCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB2n_15EnumValueParserB1u_ENtB2n_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthCs914H3uZQmS2_9iox2_node }>, align 8
@43 = private unnamed_addr constant [40 x i8] c"description() is deprecated; use Display", align 1
@44 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -8242412143468086250 to ptr), ptr inttoptr (i64 1189166984275757431 to ptr) }>, align 8
@switch.table._RNvYINtNtNtNtCs8Chj7Szqq0n_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCshX8c74mBP8L_12iceoryx2_cli6filter11StateFilterENCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB2t_15EnumValueParserB1u_ENtB2t_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthCs914H3uZQmS2_9iox2_node.63 = private unnamed_addr constant [5 x ptr] [ptr @2, ptr @3, ptr @4, ptr @5, ptr @29], align 8
@switch.table._RNvYINtNtNtNtCs8Chj7Szqq0n_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCshX8c74mBP8L_12iceoryx2_cli6filter11StateFilterENCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB2t_15EnumValueParserB1u_ENtB2t_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthCs914H3uZQmS2_9iox2_node.64 = private unnamed_addr constant [5 x i8] c"\05\04\0C\09\03", align 8
@switch.table._RNvYINtNtNtNtCs8Chj7Szqq0n_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCshX8c74mBP8L_12iceoryx2_cli6format6FormatENCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB2n_15EnumValueParserB1u_ENtB2n_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthCs914H3uZQmS2_9iox2_node.67 = private unnamed_addr constant [3 x ptr] [ptr @25, ptr @26, ptr @27], align 8
@switch.table._RNvYINtNtNtNtCs8Chj7Szqq0n_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCshX8c74mBP8L_12iceoryx2_cli6format6FormatENCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB2n_15EnumValueParserB1u_ENtB2n_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthCs914H3uZQmS2_9iox2_node.68 = private unnamed_addr constant [3 x i8] c"\03\04\04", align 8

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RINvMs2_NtNtCsbqH9stoieM8_5alloc3vec6spliceINtNtB8_5drain5DrainNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringE4fillINtNtB8_9into_iter8IntoIterBZ_EECs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %.sroa.4 = alloca [16 x i8], align 8            ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !noundef !5 ; 2 uses
  %.not11 = icmp ult i64 %i.d, %i.f
  br i1 %.not11, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !24, !noalias !25, !nonnull !5, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.promoted = load ptr, ptr %i.i, align 8, !alias.scope !24, !noalias !25
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %i.k = phi ptr [ %.promoted, %.lr.ph ], [ %i.m, %bb.c ] ; 4 uses
  %.sroa.01.010 = phi i64 [ %i.d, %.lr.ph ], [ %i.o, %bb.c ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24)
  %i.l = icmp eq ptr %i.k, %i.h
  br i1 %i.l, label %.loopexit, label %_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCs914H3uZQmS2_9iox2_node.exit

_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCs914H3uZQmS2_9iox2_node.exit: ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  store ptr %i.m, ptr %i.i, align 8, !alias.scope !24, !noalias !25
  %.sroa.0.0.copyload4 = load i64, ptr %i.k, align 8, !noalias !24 ; 2 uses
  %.not = icmp eq i64 %.sroa.0.0.copyload4, -1
  br i1 %.not, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCs914H3uZQmS2_9iox2_node.exit, %bb.b, %bb.c, %bb.a
  %i.n = phi i1 [ true, %bb.a ], [ false, %_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCs914H3uZQmS2_9iox2_node.exit ], [ false, %bb.b ], [ true, %bb.c ]
  ret i1 %i.n

bb.c:                                             ; preds = %_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCs914H3uZQmS2_9iox2_node.exit
  %.sroa.7.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = add i64 %.sroa.01.010, 1                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx5, i64 16, i1 false)
  %i.p = load ptr, ptr %i.j, align 8, !nonnull !5, !noundef !5
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %.sroa.01.010 ; 2 uses
  store i64 %.sroa.0.0.copyload4, ptr %i.q, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4, i64 16, i1 false)
  %i.r = load i64, ptr %i.c, align 8, !noundef !5
  %i.s = add i64 %i.r, 1
  store i64 %i.s, ptr %i.c, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  %exitcond.not = icmp eq i64 %i.o, %i.f
  br i1 %exitcond.not, label %.loopexit, label %bb.b
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvMs2_NtNtCsbqH9stoieM8_5alloc3vec6spliceINtNtB8_5drain5DrainNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringE4fillINtNtNtNtCs8Chj7Szqq0n_4core4iter8adapters3map3MapINtNtNtB1W_5array4iter8IntoIterRNtNtBa_6string6StringKj1_ENvYB36_INtNtB1W_7convert4IntoBZ_E4intoEECs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !5 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i64, ptr %i.g, align 8, !noundef !5 ; 2 uses
  %.not9 = icmp ult i64 %i.f, %i.h
  br i1 %.not9, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %.promoted = load i64, ptr %1, align 8          ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !35, !noalias !36, !noundef !5 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !5, !align !6
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37)
  %.not.i.i.i.peel = icmp eq i64 %i.j, %.promoted
  br i1 %.not.i.i.i.peel, label %.loopexit5, label %_RNvXs0_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterRNtNtCsbqH9stoieM8_5alloc6string6StringKj1_ENvYB1q_INtNtBb_7convert4IntoNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringE4intoENtNtNtB9_6traits8iterator8Iterator4nextCs914H3uZQmS2_9iox2_node.exit.peel

_RNvXs0_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterRNtNtCsbqH9stoieM8_5alloc6string6StringKj1_ENvYB1q_INtNtBb_7convert4IntoNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringE4intoENtNtNtB9_6traits8iterator8Iterator4nextCs914H3uZQmS2_9iox2_node.exit.peel: ; preds = %.lr.ph
  store i64 1, ptr %1, align 8, !alias.scope !38, !noalias !39
  %i.n = icmp eq i64 %.promoted, 0
  tail call void @llvm.assume(i1 %i.n)
  call void @_RNvXs0_NtNtCsigunbJSLHCW_3std3ffi6os_strNtB5_8OsStringINtNtCs8Chj7Szqq0n_4core7convert4FromRNtNtCsbqH9stoieM8_5alloc6string6StringE4fromCs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.l) #18, !noalias !37
  %.pr.peel = load i64, ptr %i.a, align 8
  %.not.peel = icmp eq i64 %.pr.peel, -1
  br i1 %.not.peel, label %.loopexit5, label %bb.b

bb.b:                                             ; preds = %_RNvXs0_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterRNtNtCsbqH9stoieM8_5alloc6string6StringKj1_ENvYB1q_INtNtBb_7convert4IntoNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringE4intoENtNtNtB9_6traits8iterator8Iterator4nextCs914H3uZQmS2_9iox2_node.exit.peel
  %i.o = add nuw i64 %i.f, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.p = load ptr, ptr %i.m, align 8, !nonnull !5, !noundef !5
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.r = load i64, ptr %i.e, align 8, !noundef !5
  %i.s = add i64 %i.r, 1
  store i64 %i.s, ptr %i.e, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %exitcond.peel.not = icmp eq i64 %i.o, %i.h
  br i1 %exitcond.peel.not, label %.loopexit, label %.peel.next

.peel.next:                                       ; preds = %bb.b
  %.not.i.i.i = icmp eq i64 %i.j, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 %.not.i.i.i)
  br label %.loopexit5

.loopexit:                                        ; preds = %bb.b, %bb.a, %.loopexit5
  %i.t = phi i1 [ false, %.loopexit5 ], [ true, %bb.a ], [ true, %bb.b ]
  ret i1 %i.t

.loopexit5:                                       ; preds = %.peel.next, %.lr.ph, %_RNvXs0_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterRNtNtCsbqH9stoieM8_5alloc6string6StringKj1_ENvYB1q_INtNtBb_7convert4IntoNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringE4intoENtNtNtB9_6traits8iterator8Iterator4nextCs914H3uZQmS2_9iox2_node.exit.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsbqH9stoieM8_5alloc6string6StringECs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef align 8 dereferenceable(24) %0) unnamed_addr #1 {
bb.a:
  tail call void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #18
  tail call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #18
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCshX8c74mBP8L_12iceoryx2_cli6filter14NodeIdentifierECs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef align 8 dereferenceable(32) %0) unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !range !40, !noundef !5
  %switch = icmp samesign ult i32 %i.a, 2
  br i1 %switch, label %.sink.split, label %bb.b

.sink.split:                                      ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #18
  tail call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #18
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.sink.split
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNvXsf_NtNtCsbqH9stoieM8_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1R_4SendEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef align 8 dereferenceable(24) %0) unnamed_addr #1 {
bb.a:
  tail call void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #18
  tail call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #18
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXNvNtCshX8c74mBP8L_12iceoryx2_cli6outputs1_1__NtB5_12NodeIdStringNtNtCsePUspIjoSTD_10serde_core3ser9Serialize9serializeQINtNtCs1HHhRunvQSa_10serde_yaml3ser10SerializerQINtNtCsbqH9stoieM8_5alloc3vec3VechEEECs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(40) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef align 8 ptr @_RINvXs_NtCs1HHhRunvQSa_10serde_yaml3serQINtB5_10SerializerQINtNtCsbqH9stoieM8_5alloc3vec3VechEENtNtCsePUspIjoSTD_10serde_core3ser10Serializer24serialize_newtype_structNtNtB10_6string6StringECs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 12, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) #18
  ret ptr %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvXNvNtCshX8c74mBP8L_12iceoryx2_cli6outputs1_1__NtB5_12NodeIdStringNtNtCsePUspIjoSTD_10serde_core3ser9Serialize9serializeQINtNtCs8FOSrxU71ur_3ron3ser10SerializerQNtNtCsbqH9stoieM8_5alloc6string6StringEECs914H3uZQmS2_9iox2_node(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef align 8 dereferenceable(224) %2) unnamed_addr #1 {
bb.a:
  tail call void @_RINvXs1_NtCs8FOSrxU71ur_3ron3serQINtB6_10SerializerQNtNtCsbqH9stoieM8_5alloc6string6StringENtNtCsePUspIjoSTD_10serde_core3ser10Serializer24serialize_newtype_structBO_ECs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 12, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #18
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXNvNtCshX8c74mBP8L_12iceoryx2_cli6outputs1_1__NtB5_12NodeIdStringNtNtCsePUspIjoSTD_10serde_core3ser9Serialize9serializeQINtNtCsi8sRyZZx6Wq_10serde_json3ser10SerializerQINtNtCsbqH9stoieM8_5alloc3vec3VechENtB21_15PrettyFormatterEECs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(40) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = tail call noundef ptr @_RINvNtCsi8sRyZZx6Wq_10serde_json3ser18format_escaped_strQINtNtCsbqH9stoieM8_5alloc3vec3VechENtB2_15PrettyFormatterECs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1) #18 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_RINvXs1_NtCsi8sRyZZx6Wq_10serde_json3serQINtB6_10SerializerQINtNtCsbqH9stoieM8_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsePUspIjoSTD_10serde_core3ser10Serializer24serialize_newtype_structNtNtB11_6string6StringECs914H3uZQmS2_9iox2_node.exit, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCsi8sRyZZx6Wq_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.d) #18
  br label %_RINvXs1_NtCsi8sRyZZx6Wq_10serde_json3serQINtB6_10SerializerQINtNtCsbqH9stoieM8_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsePUspIjoSTD_10serde_core3ser10Serializer24serialize_newtype_structNtNtB11_6string6StringECs914H3uZQmS2_9iox2_node.exit

_RINvXs1_NtCsi8sRyZZx6Wq_10serde_json3serQINtB6_10SerializerQINtNtCsbqH9stoieM8_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsePUspIjoSTD_10serde_core3ser10Serializer24serialize_newtype_structNtNtB11_6string6StringECs914H3uZQmS2_9iox2_node.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i.i = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  ret ptr %.sroa.0.0.i.i.i
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXNvNtCshX8c74mBP8L_12iceoryx2_cli6outputs2_1__NtB5_9NodeStateNtNtCsePUspIjoSTD_10serde_core3ser9Serialize9serializeQINtNtCs1HHhRunvQSa_10serde_yaml3ser10SerializerQINtNtCsbqH9stoieM8_5alloc3vec3VechEEECs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(40) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !8, !noundef !5
  switch i8 %i.a, label %default.unreachable1 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
end_hunk_0
begin_hunk_1_@_RINvXNvNtCshX8c74mBP8L_12iceoryx2_cli6outputs5_1__NtB5_8NodeListNtNtCsePUspIjoSTD_10serde_core3ser9Serialize9serializeQINtNtCs8FOSrxU71ur_3ron3ser10SerializerQNtNtCsbqH9stoieM8_5alloc6string6StringEECs914H3uZQmS2_9iox2_node:bb.a
  %.not15 = icmp eq i8 %i.i, -1
  br i1 %.not15, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.d, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RINvXs9_NtCs8FOSrxU71ur_3ron3serINtB6_8CompoundQNtNtCsbqH9stoieM8_5alloc6string6StringENtNtCsePUspIjoSTD_10serde_core3ser15SerializeStruct15serialize_fieldINtNtBO_3vec3VecNtNtCshX8c74mBP8L_12iceoryx2_cli6output14NodeDescriptorEECs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 7, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #18
  %i.j = load i8, ptr %i.c, align 8, !range !9, !noundef !5
  %.not16 = icmp eq i8 %i.j, -1
  br i1 %.not16, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @_RNvXs9_NtCs8FOSrxU71ur_3ron3serINtB5_8CompoundQNtNtCsbqH9stoieM8_5alloc6string6StringENtNtCsePUspIjoSTD_10serde_core3ser15SerializeStruct3endCs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCs8FOSrxU71ur_3ron3ser8CompoundQNtNtCsbqH9stoieM8_5alloc6string6StringEECs914H3uZQmS2_9iox2_node.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCs8FOSrxU71ur_3ron3ser8CompoundQNtNtCsbqH9stoieM8_5alloc6string6StringEECs914H3uZQmS2_9iox2_node.exit: ; preds = %bb.b, %bb.h, %bb.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.h:                                             ; preds = %bb.f, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.val = load ptr, ptr %i.k, align 8, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  %i.l = load i64, ptr %.val, align 8, !range !10, !noundef !5
  %i.m = trunc nuw i64 %i.l to i1
  br i1 %i.m, label %bb.i, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCs8FOSrxU71ur_3ron3ser8CompoundQNtNtCsbqH9stoieM8_5alloc6string6StringEECs914H3uZQmS2_9iox2_node.exit

bb.i:                                             ; preds = %bb.h
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !noundef !5
  %i.p = call i64 @llvm.uadd.sat.i64(i64 %i.o, i64 1)
  store i64 %i.p, ptr %i.n, align 8
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCs8FOSrxU71ur_3ron3ser8CompoundQNtNtCsbqH9stoieM8_5alloc6string6StringEECs914H3uZQmS2_9iox2_node.exit
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXNvNtCshX8c74mBP8L_12iceoryx2_cli6outputs5_1__NtB5_8NodeListNtNtCsePUspIjoSTD_10serde_core3ser9Serialize9serializeQINtNtCsi8sRyZZx6Wq_10serde_json3ser10SerializerQINtNtCsbqH9stoieM8_5alloc3vec3VechENtB1W_15PrettyFormatterEECs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(40) initializes((32, 33)) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88)
  %.val.i.i = load ptr, ptr %1, align 8, !alias.scope !89, !noalias !90, !nonnull !5, !align !6, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !92, !noalias !90, !noundef !5
  %i.d = add i64 %i.c, 1
  store i64 %i.d, ptr %i.b, align 8, !alias.scope !92, !noalias !90
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i8 0, ptr %i.e, align 8, !alias.scope !92, !noalias !90
  tail call void @_RNvMs1_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechE17extend_from_sliceCs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef range(i64 0, -9223372036854775808) 1) #18, !noalias !93
  store ptr %1, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i8 1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = call noundef align 8 ptr @_RINvYINtNtCsi8sRyZZx6Wq_10serde_json3ser8CompoundQINtNtCsbqH9stoieM8_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsePUspIjoSTD_10serde_core3ser12SerializeMap15serialize_entryejECs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g) #18 ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.b, label %_RNvXs7_NtCsi8sRyZZx6Wq_10serde_json3serINtB5_8CompoundQINtNtCsbqH9stoieM8_5alloc3vec3VechENtB5_15PrettyFormatterENtNtCsePUspIjoSTD_10serde_core3ser15SerializeStruct3endCs914H3uZQmS2_9iox2_node.exit

bb.b:                                             ; preds = %bb.a
  %i.i = call noundef align 8 ptr @_RINvYINtNtCsi8sRyZZx6Wq_10serde_json3ser8CompoundQINtNtCsbqH9stoieM8_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsePUspIjoSTD_10serde_core3ser12SerializeMap15serialize_entryeIBN_NtNtCshX8c74mBP8L_12iceoryx2_cli6output14NodeDescriptorEECs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 7, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) #18 ; 2 uses
  %.not9 = icmp eq ptr %i.i, null
  br i1 %.not9, label %bb.c, label %_RNvXs7_NtCsi8sRyZZx6Wq_10serde_json3serINtB5_8CompoundQINtNtCsbqH9stoieM8_5alloc3vec3VechENtB5_15PrettyFormatterENtNtCsePUspIjoSTD_10serde_core3ser15SerializeStruct3endCs914H3uZQmS2_9iox2_node.exit

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.a, align 8, !nonnull !5, !align !6, !noundef !5 ; 5 uses
  %i.k = load i8, ptr %i.f, align 8, !range !11, !noundef !5
  call void @llvm.experimental.noalias.scope.decl(metadata !94)
  call void @llvm.experimental.noalias.scope.decl(metadata !95)
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %_RNvXs7_NtCsi8sRyZZx6Wq_10serde_json3serINtB5_8CompoundQINtNtCsbqH9stoieM8_5alloc3vec3VechENtB5_15PrettyFormatterENtNtCsePUspIjoSTD_10serde_core3ser15SerializeStruct3endCs914H3uZQmS2_9iox2_node.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val.i.i10 = load ptr, ptr %i.j, align 8, !alias.scope !96 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !97)
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !98, !noundef !5
  %i.o = add i64 %i.n, -1                         ; 3 uses
  store i64 %i.o, ptr %i.m, align 8, !alias.scope !98
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.q = load i8, ptr %i.p, align 8, !range !13, !alias.scope !98, !noundef !5
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.e, label %_RINvXsd_NtCsi8sRyZZx6Wq_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQINtNtCsbqH9stoieM8_5alloc3vec3VechEECs914H3uZQmS2_9iox2_node.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i10) ]
  call void @_RNvMs1_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechE17extend_from_sliceCs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i10, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef range(i64 0, -9223372036854775808) 1) #18, !noalias !98
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !98, !nonnull !5, !noundef !5
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !98, !noundef !5
  %.not.i.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i.i, label %_RINvXsd_NtCsi8sRyZZx6Wq_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQINtNtCsbqH9stoieM8_5alloc3vec3VechEECs914H3uZQmS2_9iox2_node.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %.lr.ph.i.i.i
  %.sroa.06.01.i.i.i = phi i64 [ %i.w, %.lr.ph.i.i.i ], [ 0, %bb.e ]
  %i.w = add nuw i64 %.sroa.06.01.i.i.i, 1        ; 2 uses
  call void @_RNvMs1_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechE17extend_from_sliceCs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i10, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.t, i64 noundef range(i64 0, -9223372036854775808) %i.v) #18, !noalias !98
  %exitcond.not.i.i.i = icmp eq i64 %i.w, %i.o
  br i1 %exitcond.not.i.i.i, label %_RINvXsd_NtCsi8sRyZZx6Wq_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQINtNtCsbqH9stoieM8_5alloc3vec3VechEECs914H3uZQmS2_9iox2_node.exit.i.i, label %.lr.ph.i.i.i

_RINvXsd_NtCsi8sRyZZx6Wq_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQINtNtCsbqH9stoieM8_5alloc3vec3VechEECs914H3uZQmS2_9iox2_node.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.e, %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i10) ]
  call void @_RNvMs1_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechE17extend_from_sliceCs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i10, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef range(i64 0, -9223372036854775808) 1) #18, !noalias !98
  br label %_RNvXs7_NtCsi8sRyZZx6Wq_10serde_json3serINtB5_8CompoundQINtNtCsbqH9stoieM8_5alloc3vec3VechENtB5_15PrettyFormatterENtNtCsePUspIjoSTD_10serde_core3ser15SerializeStruct3endCs914H3uZQmS2_9iox2_node.exit

_RNvXs7_NtCsi8sRyZZx6Wq_10serde_json3serINtB5_8CompoundQINtNtCsbqH9stoieM8_5alloc3vec3VechENtB5_15PrettyFormatterENtNtCsePUspIjoSTD_10serde_core3ser15SerializeStruct3endCs914H3uZQmS2_9iox2_node.exit: ; preds = %_RINvXsd_NtCsi8sRyZZx6Wq_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQINtNtCsbqH9stoieM8_5alloc3vec3VechEECs914H3uZQmS2_9iox2_node.exit.i.i, %bb.c, %bb.a, %bb.b
  %.sroa.0.0 = phi ptr [ %i.h, %bb.a ], [ %i.i, %bb.b ], [ null, %bb.c ], [ null, %_RINvXsd_NtCsi8sRyZZx6Wq_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQINtNtCsbqH9stoieM8_5alloc3vec3VechEECs914H3uZQmS2_9iox2_node.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %.sroa.0.0
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs2_NtNtCsbqH9stoieM8_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringE9move_tailCs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i64, ptr %i.e, align 8, !noundef !5 ; 2 uses
  %i.g = add i64 %i.f, %i.d                       ; 2 uses
  %i.h = load i64, ptr %i.b, align 8, !range !99, !noundef !5
  %i.i = sub i64 %i.h, %i.g
  %i.j = icmp ugt i64 %1, %i.i
  br i1 %i.j, label %bb.c, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.k = add i64 %i.d, %1                         ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.d
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.k
  %i.p = mul nuw nsw i64 %i.f, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.o, ptr nonnull align 8 %i.n, i64 %i.p, i1 false)
  store i64 %i.k, ptr %i.c, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsbqH9stoieM8_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, i64 noundef %i.g, i64 noundef %1, i64 noundef 8, i64 noundef 24) #18
  br label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCs8Chj7Szqq0n_4core3anyNtNtCshX8c74mBP8L_12iceoryx2_cli6filter11StateFilterNtB2_3Any7type_idCs914H3uZQmS2_9iox2_node(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly captures(none) %1) unnamed_addr #2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @19, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCs8Chj7Szqq0n_4core3anyNtNtCshX8c74mBP8L_12iceoryx2_cli6filter14NodeIdentifierNtB2_3Any7type_idCs914H3uZQmS2_9iox2_node(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @20, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCs8Chj7Szqq0n_4core3anyNtNtCshX8c74mBP8L_12iceoryx2_cli6format6FormatNtB2_3Any7type_idCs914H3uZQmS2_9iox2_node(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly captures(none) %1) unnamed_addr #2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @21, i64 16, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal void @_RNvXs0_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCshX8c74mBP8L_12iceoryx2_cli6filter11StateFilterENCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB2z_15EnumValueParserB1A_ENtB2z_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextCs914H3uZQmS2_9iox2_node(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !109)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !110)
  %i.a = load ptr, ptr %1, align 8, !alias.scope !110, !noalias !109, !nonnull !5, !noundef !5 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !110, !noalias !109, !nonnull !5, !noundef !5
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.b, label %switch.lookup

switch.lookup:                                    ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store ptr %i.e, ptr %1, align 8, !alias.scope !110, !noalias !109
  %.val.i = load i8, ptr %i.a, align 1, !range !15, !noalias !111, !noundef !5 ; 2 uses
  store i64 0, ptr %0, align 8, !alias.scope !112, !noalias !110
  %.sroa.0.sroa.0.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !112, !noalias !110
  %.sroa.0.sroa.0.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.0.sroa.0.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !112, !noalias !110
  %.sroa.0.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 -1, ptr %.sroa.0.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !112, !noalias !110
  %i.f = zext nneg i8 %.val.i to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvYINtNtNtNtCs8Chj7Szqq0n_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCshX8c74mBP8L_12iceoryx2_cli6filter11StateFilterENCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB2t_15EnumValueParserB1u_ENtB2t_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthCs914H3uZQmS2_9iox2_node.63, i64 %i.f
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.g = zext nneg i8 %.val.i to i64
  %switch.gep1 = getelementptr inbounds nuw i8, ptr @switch.table._RNvYINtNtNtNtCs8Chj7Szqq0n_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCshX8c74mBP8L_12iceoryx2_cli6filter11StateFilterENCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB2t_15EnumValueParserB1u_ENtB2t_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthCs914H3uZQmS2_9iox2_node.64, i64 %i.g
  %switch.load2 = load i8, ptr %switch.gep1, align 1
  %switch.ext = zext i8 %switch.load2 to i64
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %switch.load, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !112, !noalias !110
  store i64 %switch.ext, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !112, !noalias !110
  store i8 0, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !alias.scope !112, !noalias !110
  br label %_RINvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB7_4IterNtNtCshX8c74mBP8L_12iceoryx2_cli6filter11StateFilterENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapNtNtNtCs5WK5l2q0aFk_12clap_builder7builder14possible_value13PossibleValueQNCNvXso_NtB2z_12value_parserINtB3P_15EnumValueParserBQ_ENtB3P_16TypedValueParser15possible_values0ECs914H3uZQmS2_9iox2_node.exit

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8, !alias.scope !109, !noalias !110
  br label %_RINvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB7_4IterNtNtCshX8c74mBP8L_12iceoryx2_cli6filter11StateFilterENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapNtNtNtCs5WK5l2q0aFk_12clap_builder7builder14possible_value13PossibleValueQNCNvXso_NtB2z_12value_parserINtB3P_15EnumValueParserBQ_ENtB3P_16TypedValueParser15possible_values0ECs914H3uZQmS2_9iox2_node.exit

_RINvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB7_4IterNtNtCshX8c74mBP8L_12iceoryx2_cli6filter11StateFilterENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapNtNtNtCs5WK5l2q0aFk_12clap_builder7builder14possible_value13PossibleValueQNCNvXso_NtB2z_12value_parserINtB3P_15EnumValueParserBQ_ENtB3P_16TypedValueParser15possible_values0ECs914H3uZQmS2_9iox2_node.exit: ; preds = %switch.lookup, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXs0_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCshX8c74mBP8L_12iceoryx2_cli6filter11StateFilterENCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB2z_15EnumValueParserB1A_ENtB2z_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator9size_hintCs914H3uZQmS2_9iox2_node(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #4 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
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

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal void @_RNvXs0_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCshX8c74mBP8L_12iceoryx2_cli6format6FormatENCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB2t_15EnumValueParserB1A_ENtB2t_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextCs914H3uZQmS2_9iox2_node(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !122)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123)
  %i.a = load ptr, ptr %1, align 8, !alias.scope !123, !noalias !122, !nonnull !5, !noundef !5 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !123, !noalias !122, !nonnull !5, !noundef !5
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.b, label %switch.lookup

switch.lookup:                                    ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store ptr %i.e, ptr %1, align 8, !alias.scope !123, !noalias !122
  %.val.i = load i8, ptr %i.a, align 1, !range !11, !noalias !124, !noundef !5 ; 2 uses
  store i64 0, ptr %0, align 8, !alias.scope !125, !noalias !123
  %.sroa.0.sroa.0.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !125, !noalias !123
  %.sroa.0.sroa.0.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.0.sroa.0.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !125, !noalias !123
  %.sroa.0.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 -1, ptr %.sroa.0.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !125, !noalias !123
  %i.f = zext nneg i8 %.val.i to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvYINtNtNtNtCs8Chj7Szqq0n_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCshX8c74mBP8L_12iceoryx2_cli6format6FormatENCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB2n_15EnumValueParserB1u_ENtB2n_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthCs914H3uZQmS2_9iox2_node.67, i64 %i.f
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.g = zext nneg i8 %.val.i to i64
  %switch.gep1 = getelementptr inbounds nuw i8, ptr @switch.table._RNvYINtNtNtNtCs8Chj7Szqq0n_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCshX8c74mBP8L_12iceoryx2_cli6format6FormatENCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB2n_15EnumValueParserB1u_ENtB2n_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthCs914H3uZQmS2_9iox2_node.68, i64 %i.g
  %switch.load2 = load i8, ptr %switch.gep1, align 1
  %switch.ext = zext i8 %switch.load2 to i64
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %switch.load, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !125, !noalias !123
  store i64 %switch.ext, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !125, !noalias !123
  store i8 0, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !alias.scope !125, !noalias !123
  br label %_RINvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB7_4IterNtNtCshX8c74mBP8L_12iceoryx2_cli6format6FormatENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapNtNtNtCs5WK5l2q0aFk_12clap_builder7builder14possible_value13PossibleValueQNCNvXso_NtB2t_12value_parserINtB3J_15EnumValueParserBQ_ENtB3J_16TypedValueParser15possible_values0ECs914H3uZQmS2_9iox2_node.exit

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8, !alias.scope !122, !noalias !123
  br label %_RINvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB7_4IterNtNtCshX8c74mBP8L_12iceoryx2_cli6format6FormatENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapNtNtNtCs5WK5l2q0aFk_12clap_builder7builder14possible_value13PossibleValueQNCNvXso_NtB2t_12value_parserINtB3J_15EnumValueParserBQ_ENtB3J_16TypedValueParser15possible_values0ECs914H3uZQmS2_9iox2_node.exit

_RINvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB7_4IterNtNtCshX8c74mBP8L_12iceoryx2_cli6format6FormatENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapNtNtNtCs5WK5l2q0aFk_12clap_builder7builder14possible_value13PossibleValueQNCNvXso_NtB2t_12value_parserINtB3J_15EnumValueParserBQ_ENtB3J_16TypedValueParser15possible_values0ECs914H3uZQmS2_9iox2_node.exit: ; preds = %switch.lookup, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXs0_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCshX8c74mBP8L_12iceoryx2_cli6format6FormatENCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB2t_15EnumValueParserB1A_ENtB2t_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator9size_hintCs914H3uZQmS2_9iox2_node(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #4 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
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
define hidden noundef zeroext i1 @_RNvXs1_NtNtNtCs8Chj7Szqq0n_4core3ops8function5implsQNCNCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtBY_15EnumValueParserNtNtCshX8c74mBP8L_12iceoryx2_cli6filter11StateFilterENtBY_16TypedValueParser9parse_refs_0s_0INtB7_5FnMutTRNtNtB10_14possible_value13PossibleValueEE8call_mutCs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(72) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val = load i8, ptr %i.a, align 8, !range !13, !noundef !5
  %i.b = trunc nuw i8 %.val to i1
  %i.c = xor i1 %i.b, true
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtNtNtCs8Chj7Szqq0n_4core3ops8function5implsQNCNCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtBY_15EnumValueParserNtNtCshX8c74mBP8L_12iceoryx2_cli6format6FormatENtBY_16TypedValueParser9parse_refs_0s_0INtB7_5FnMutTRNtNtB10_14possible_value13PossibleValueEE8call_mutCs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(72) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val = load i8, ptr %i.a, align 8, !range !13, !noundef !5
  %i.b = trunc nuw i8 %.val to i1
  %i.c = xor i1 %i.b, true
  ret i1 %i.c
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs5_NtCshX8c74mBP8L_12iceoryx2_cli6outputNtB5_14NodeDescriptorINtNtCs8Chj7Szqq0n_4core7convert4FromRINtNtCsg6ZEkMtNi4J_8iceoryx24node9NodeStateNtNtNtB1I_7service3ipc7ServiceEE4fromCs914H3uZQmS2_9iox2_node(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(4960) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.510 = alloca [16 x i8], align 8          ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.5 = alloca [16 x i8], align 8            ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = load i32, ptr %1, align 8, !range !16, !noundef !5
  switch i32 %i.j, label %default.unreachable43 [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
  ]

default.unreachable43:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4944 ; 2 uses
  call void @_RNvXs0_NtCshX8c74mBP8L_12iceoryx2_cli6outputNtB5_12NodeIdStringINtNtCs8Chj7Szqq0n_4core7convert4FromRNtNtCsg6ZEkMtNi4J_8iceoryx211identifiers12UniqueNodeIdE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.l) #18
  %i.m = load i32, ptr %i.l, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.n = load i64, ptr %i.k, align 8, !range !12, !noundef !5
  %.not26 = icmp eq i64 %i.n, 2
  br i1 %.not26, label %_RNCNvXs5_NtCshX8c74mBP8L_12iceoryx2_cli6outputNtB7_14NodeDescriptorINtNtCs8Chj7Szqq0n_4core7convert4FromRINtNtCsg6ZEkMtNi4J_8iceoryx24node9NodeStateNtNtNtB1K_7service3ipc7ServiceEE4froms_0Cs914H3uZQmS2_9iox2_node.exit, label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 4944 ; 2 uses
  call void @_RNvXs0_NtCshX8c74mBP8L_12iceoryx2_cli6outputNtB5_12NodeIdStringINtNtCs8Chj7Szqq0n_4core7convert4FromRNtNtCsg6ZEkMtNi4J_8iceoryx211identifiers12UniqueNodeIdE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.p) #18
  %i.q = load i32, ptr %i.p, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.510)
  %i.r = load i64, ptr %i.o, align 8, !range !12, !noundef !5
  %.not = icmp eq i64 %i.r, 2
  br i1 %.not, label %_RNCNvXs5_NtCshX8c74mBP8L_12iceoryx2_cli6outputNtB7_14NodeDescriptorINtNtCs8Chj7Szqq0n_4core7convert4FromRINtNtCsg6ZEkMtNi4J_8iceoryx24node9NodeStateNtNtNtB1K_7service3ipc7ServiceEE4froms1_0Cs914H3uZQmS2_9iox2_node.exit, label %bb.l

bb.d:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  tail call void @_RNvXs0_NtCshX8c74mBP8L_12iceoryx2_cli6outputNtB5_12NodeIdStringINtNtCs8Chj7Szqq0n_4core7convert4FromRNtNtCsg6ZEkMtNi4J_8iceoryx211identifiers12UniqueNodeIdE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.s) #18
  %i.t = load i32, ptr %i.s, align 4, !noundef !5
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 2, ptr %i.u, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %i.t, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 -1, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 -1, ptr %i.x, align 8
  br label %bb.k

bb.e:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  tail call void @_RNvXs0_NtCshX8c74mBP8L_12iceoryx2_cli6outputNtB5_12NodeIdStringINtNtCs8Chj7Szqq0n_4core7convert4FromRNtNtCsg6ZEkMtNi4J_8iceoryx211identifiers12UniqueNodeIdE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.y) #18
  %i.z = load i32, ptr %i.y, align 4, !noundef !5
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 3, ptr %i.aa, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %i.z, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 -1, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 -1, ptr %i.ad, align 8
  br label %bb.k

bb.f:                                             ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 4536
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !138
  store i64 0, ptr %i.g, align 8, !noalias !138
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !138
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !138
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 1610612768, ptr %i.af, align 8, !noalias !138
  store ptr %i.g, ptr %i.f, align 8, !noalias !138
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @30, ptr %i.ag, align 8, !noalias !138
  %i.ah = call noundef zeroext i1 @_RNvXsm_NtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_nameNtB5_8FileNameNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.ae, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) #18, !noalias !139
  br i1 %i.ah, label %bb.g, label %_RNvXsC_NtCsbqH9stoieM8_5alloc6stringNtNtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_name8FileNameNtB5_12SpecToString14spec_to_stringCs914H3uZQmS2_9iox2_node.exit, !prof !14

bb.g:                                             ; preds = %bb.f
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @18, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #20, !noalias !139
  unreachable

_RNvXsC_NtCsbqH9stoieM8_5alloc6stringNtNtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_name8FileNameNtB5_12SpecToString14spec_to_stringCs914H3uZQmS2_9iox2_node.exit: ; preds = %bb.f
  %.sroa.0.0.copyload34 = load i64, ptr %i.g, align 8, !noalias !140 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !138
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 4800
  %i.aj = call { ptr, i64 } @_RNvMNtNtCsg6ZEkMtNi4J_8iceoryx24node9node_nameNtB2_8NodeName6as_str(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.ai) #18, !noalias !141 ; 2 uses
  %i.ak = extractvalue { ptr, i64 } %i.aj, 0
  %i.al = extractvalue { ptr, i64 } %i.aj, 1      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !142
  call void @_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %i.al, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1) #18, !noalias !141
  %i.am = load i64, ptr %i.e, align 8, !range !10, !noalias !142, !noundef !5
  %i.an = trunc nuw i64 %i.am to i1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !range !17, !noalias !142, !noundef !5 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.an, label %bb.h, label %bb.i, !prof !14

bb.h:                                             ; preds = %_RNvXsC_NtCsbqH9stoieM8_5alloc6stringNtNtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_name8FileNameNtB5_12SpecToString14spec_to_stringCs914H3uZQmS2_9iox2_node.exit
  %i.ar = load i64, ptr %i.aq, align 8, !noalias !142
  call void @_RNvNtCsbqH9stoieM8_5alloc7raw_vec12handle_error(i64 noundef %i.ap, i64 %i.ar) #21, !noalias !141
  unreachable

bb.i:                                             ; preds = %_RNvXsC_NtCsbqH9stoieM8_5alloc6stringNtNtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_name8FileNameNtB5_12SpecToString14spec_to_stringCs914H3uZQmS2_9iox2_node.exit
  %i.as = load ptr, ptr %i.aq, align 8, !noalias !142, !nonnull !5, !noundef !5 ; 3 uses
  %i.at = icmp ule i64 %i.al, %i.ap
  call void @llvm.assume(i1 %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !142
  %.not.i = icmp eq i64 %i.al, 0
  br i1 %.not.i, label %_RNCNvXs5_NtCshX8c74mBP8L_12iceoryx2_cli6outputNtB7_14NodeDescriptorINtNtCs8Chj7Szqq0n_4core7convert4FromRINtNtCsg6ZEkMtNi4J_8iceoryx24node9NodeStateNtNtNtB1K_7service3ipc7ServiceEE4froms_0Cs914H3uZQmS2_9iox2_node.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.as, ptr align 1 %i.ak, i64 %i.al, i1 false), !noalias !141
  br label %_RNCNvXs5_NtCshX8c74mBP8L_12iceoryx2_cli6outputNtB7_14NodeDescriptorINtNtCs8Chj7Szqq0n_4core7convert4FromRINtNtCsg6ZEkMtNi4J_8iceoryx24node9NodeStateNtNtNtB1K_7service3ipc7ServiceEE4froms_0Cs914H3uZQmS2_9iox2_node.exit

_RNCNvXs5_NtCshX8c74mBP8L_12iceoryx2_cli6outputNtB7_14NodeDescriptorINtNtCs8Chj7Szqq0n_4core7convert4FromRINtNtCsg6ZEkMtNi4J_8iceoryx24node9NodeStateNtNtNtB1K_7service3ipc7ServiceEE4froms_0Cs914H3uZQmS2_9iox2_node.exit: ; preds = %bb.b, %bb.j, %bb.i
  %.sroa.6.sroa.5.0 = phi i64 [ %i.al, %bb.j ], [ 0, %bb.i ], [ undef, %bb.b ]
  %.sroa.6.sroa.0.0 = phi ptr [ %i.as, %bb.j ], [ %i.as, %bb.i ], [ undef, %bb.b ]
  %.sroa.04.0 = phi i64 [ %i.ap, %bb.j ], [ %i.ap, %bb.i ], [ -1, %bb.b ]
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.copyload34, %bb.j ], [ %.sroa.0.0.copyload34, %bb.i ], [ -1, %bb.b ]
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 0, ptr %i.au, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %i.m, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.0.0, ptr %i.aw, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, i64 16, i1 false)
end_hunk_1
begin_hunk_2_@_RNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB5_15EnumValueParserNtNtCshX8c74mBP8L_12iceoryx2_cli6filter11StateFilterENtB5_16TypedValueParser9parse_refCs914H3uZQmS2_9iox2_node:bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !noalias !226, !noundef !5 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !226
  call void @_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, i64 noundef %i.ac, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1) #18, !noalias !226
  %i.ad = load i64, ptr %i.m, align 8, !range !10, !noalias !226, !noundef !5
  %i.ae = trunc nuw i64 %i.ad to i1
  %i.af = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !range !17, !noalias !226, !noundef !5 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  br i1 %i.ae, label %bb.g, label %bb.h, !prof !14

bb.g:                                             ; preds = %bb.f
  %i.ai = load i64, ptr %i.ah, align 8, !noalias !226
  tail call void @_RNvNtCsbqH9stoieM8_5alloc7raw_vec12handle_error(i64 noundef %i.ag, i64 %i.ai) #21, !noalias !226
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.aj = load ptr, ptr %i.ah, align 8, !noalias !226, !nonnull !5, !noundef !5 ; 2 uses
  %i.ak = icmp ule i64 %i.ac, %i.ag
  tail call void @llvm.assume(i1 %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !226
  %.not3.i = icmp eq i64 %i.ac, 0
  br i1 %.not3.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.j, %bb.h
  store i64 %i.ag, ptr %i.q, align 8, !noalias !226
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.aj, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !226
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %i.ac, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !226
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aj, ptr nonnull align 1 %i.aa, i64 %i.ac, i1 false), !noalias !226
  br label %bb.i

bb.k:                                             ; preds = %bb.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !226
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !226
  call void @_RNvXNtNtCsbqH9stoieM8_5alloc3vec14spec_from_iterINtB4_3VecNtNtB6_6string6StringEINtB2_12SpecFromIterBU_INtNtNtNtCs8Chj7Szqq0n_4core4iter8adapters3map3MapINtNtB1I_6filter6FilterINtNtB1I_10filter_map9FilterMapINtNtNtB1M_5slice4iter4IterNtNtCshX8c74mBP8L_12iceoryx2_cli6filter11StateFilterENCNCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB4L_15EnumValueParserB3K_ENtB4L_16TypedValueParser9parse_refs_00ENCB4D_s_0ENCB4D_s0_0EE9from_iterCs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.o, ptr noundef nonnull @28, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @28, i64 5)) #18, !noalias !226
  %i.al = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !noalias !226, !nonnull !5, !noundef !5
  %i.an = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !noalias !226, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !226
  br i1 %.not, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !227
  store i64 0, ptr %i.l, align 8, !noalias !227
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !227
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !227
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !227
  %i.ap = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 1610612768, ptr %i.ap, align 8, !noalias !227
  store ptr %i.l, ptr %i.k, align 8, !noalias !227
  %i.aq = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @30, ptr %i.aq, align 8, !noalias !227
  %i.ar = call noundef zeroext i1 @_RNvXs9_NtNtCs5WK5l2q0aFk_12clap_builder7builder3argNtB5_3ArgNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(600) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k) #18, !noalias !228
  br i1 %i.ar, label %bb.m, label %_RNvXsC_NtCsbqH9stoieM8_5alloc6stringNtNtNtCs5WK5l2q0aFk_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringCs914H3uZQmS2_9iox2_node.exit.i, !prof !14

bb.m:                                             ; preds = %bb.l
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @18, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #20, !noalias !228
  unreachable

_RNvXsC_NtCsbqH9stoieM8_5alloc6stringNtNtNtCs5WK5l2q0aFk_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringCs914H3uZQmS2_9iox2_node.exit.i: ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !226
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !227
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !227
  br label %_RNCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCshX8c74mBP8L_12iceoryx2_cli6filter11StateFilterENtB7_16TypedValueParser9parse_refs0_0Cs914H3uZQmS2_9iox2_node.exit

bb.n:                                             ; preds = %bb.k
  call void @llvm.experimental.noalias.scope.decl(metadata !229)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !230
  call void @_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, i64 noundef 3, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1) #18, !noalias !230
  %i.as = load i64, ptr %i.j, align 8, !range !10, !noalias !230, !noundef !5
  %i.at = trunc nuw i64 %i.as to i1
  %i.au = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.av = load i64, ptr %i.au, align 8, !range !17, !noalias !230, !noundef !5 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  br i1 %i.at, label %bb.o, label %_RNCNCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtNtCshX8c74mBP8L_12iceoryx2_cli6filter11StateFilterENtB9_16TypedValueParser9parse_refs0_00Cs914H3uZQmS2_9iox2_node.exit.i, !prof !14

bb.o:                                             ; preds = %bb.n
  %i.ax = load i64, ptr %i.aw, align 8, !noalias !230
  call void @_RNvNtCsbqH9stoieM8_5alloc7raw_vec12handle_error(i64 noundef %i.av, i64 %i.ax) #21, !noalias !230
  unreachable

_RNCNCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtNtCshX8c74mBP8L_12iceoryx2_cli6filter11StateFilterENtB9_16TypedValueParser9parse_refs0_00Cs914H3uZQmS2_9iox2_node.exit.i: ; preds = %bb.n
  %i.ay = load ptr, ptr %i.aw, align 8, !noalias !230, !nonnull !5, !noundef !5 ; 2 uses
  %i.az = icmp samesign ugt i64 %i.av, 2
  call void @llvm.assume(i1 %i.az)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !230
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ay, i8 46, i64 3, i1 false), !noalias !230
  store i64 %i.av, ptr %i.n, align 8, !alias.scope !229, !noalias !226
  %.sroa.4.0..sroa_idx.i5.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.ay, ptr %.sroa.4.0..sroa_idx.i5.i, align 8, !alias.scope !229, !noalias !226
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 3, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !229, !noalias !226
  br label %_RNCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCshX8c74mBP8L_12iceoryx2_cli6filter11StateFilterENtB7_16TypedValueParser9parse_refs0_0Cs914H3uZQmS2_9iox2_node.exit

_RNCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCshX8c74mBP8L_12iceoryx2_cli6filter11StateFilterENtB7_16TypedValueParser9parse_refs0_0Cs914H3uZQmS2_9iox2_node.exit: ; preds = %_RNvXsC_NtCsbqH9stoieM8_5alloc6stringNtNtNtCs5WK5l2q0aFk_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringCs914H3uZQmS2_9iox2_node.exit.i, %_RNCNCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtNtCshX8c74mBP8L_12iceoryx2_cli6filter11StateFilterENtB9_16TypedValueParser9parse_refs0_00Cs914H3uZQmS2_9iox2_node.exit.i
  %i.ba = call noundef nonnull align 8 ptr @_RNvMNtCs5WK5l2q0aFk_12clap_builder5errorNtB2_5Error13invalid_valueCs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.am, i64 noundef %i.ao, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.n) #18, !noalias !226
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !226
  call void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o) #18, !noalias !226
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o) #18, !noalias !226
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !226
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !226
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ba, ptr %i.bb, align 8
  br label %bb.y

_RNCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCshX8c74mBP8L_12iceoryx2_cli6filter11StateFilterENtB7_16TypedValueParser9parse_refs1_0Cs914H3uZQmS2_9iox2_node.exit.i: ; preds = %bb.c
  %i.bc = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !nonnull !5, !noundef !5 ; 6 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.bf = load i64, ptr %i.be, align 8, !noundef !5 ; 10 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %.sroa.5.0..sroa_idx.i.i10 = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 5 uses
  %.sroa.6.0..sroa_idx.i.i11 = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 5 uses
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 5 uses
  %.sroa.81.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 5 uses
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 56 ; 5 uses
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 64 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !231
  store i64 0, ptr %i.i, align 8, !noalias !231
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5.0..sroa_idx.i.i10, align 8, !noalias !231
  store i64 0, ptr %.sroa.6.0..sroa_idx.i.i11, align 8, !noalias !231
  store i64 -1, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !231
  store ptr @2, ptr %.sroa.81.0..sroa_idx.i.i, align 8, !noalias !231
  store i64 5, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !231
  store i8 0, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !231
  %i.bg = call noundef zeroext i1 @_RNvMs_NtNtCs5WK5l2q0aFk_12clap_builder7builder14possible_valueNtB4_13PossibleValue7matches(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bd, i64 noundef %i.bf, i1 noundef zeroext %storemerge) #18, !noalias !231
  call void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtCs5WK5l2q0aFk_12clap_builder7builder3str3StrENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.i) #18, !noalias !231
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5WK5l2q0aFk_12clap_builder7builder3str3StrENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.i) #18, !noalias !231
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !231
  br i1 %i.bg, label %_RINvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB7_4IterNtNtCshX8c74mBP8L_12iceoryx2_cli6filter11StateFilterENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB2z_15EnumValueParserBQ_ENtB2z_16TypedValueParser9parse_refs1_0ECs914H3uZQmS2_9iox2_node.exit, label %_RNCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCshX8c74mBP8L_12iceoryx2_cli6filter11StateFilterENtB7_16TypedValueParser9parse_refs1_0Cs914H3uZQmS2_9iox2_node.exit.i.1

_RNCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCshX8c74mBP8L_12iceoryx2_cli6filter11StateFilterENtB7_16TypedValueParser9parse_refs1_0Cs914H3uZQmS2_9iox2_node.exit.i.1: ; preds = %_RNCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCshX8c74mBP8L_12iceoryx2_cli6filter11StateFilterENtB7_16TypedValueParser9parse_refs1_0Cs914H3uZQmS2_9iox2_node.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !231
  store i64 0, ptr %i.i, align 8, !noalias !231
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5.0..sroa_idx.i.i10, align 8, !noalias !231
  store i64 0, ptr %.sroa.6.0..sroa_idx.i.i11, align 8, !noalias !231
  store i64 -1, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !231
  store ptr @3, ptr %.sroa.81.0..sroa_idx.i.i, align 8, !noalias !231
  store i64 4, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !231
  store i8 0, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !231
  %i.bh = call noundef zeroext i1 @_RNvMs_NtNtCs5WK5l2q0aFk_12clap_builder7builder14possible_valueNtB4_13PossibleValue7matches(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bd, i64 noundef %i.bf, i1 noundef zeroext %storemerge) #18, !noalias !231
  call void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtCs5WK5l2q0aFk_12clap_builder7builder3str3StrENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.i) #18, !noalias !231
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5WK5l2q0aFk_12clap_builder7builder3str3StrENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.i) #18, !noalias !231
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !231
  br i1 %i.bh, label %_RINvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB7_4IterNtNtCshX8c74mBP8L_12iceoryx2_cli6filter11StateFilterENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB2z_15EnumValueParserBQ_ENtB2z_16TypedValueParser9parse_refs1_0ECs914H3uZQmS2_9iox2_node.exit, label %_RNCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCshX8c74mBP8L_12iceoryx2_cli6filter11StateFilterENtB7_16TypedValueParser9parse_refs1_0Cs914H3uZQmS2_9iox2_node.exit.i.2

_RNCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCshX8c74mBP8L_12iceoryx2_cli6filter11StateFilterENtB7_16TypedValueParser9parse_refs1_0Cs914H3uZQmS2_9iox2_node.exit.i.2: ; preds = %_RNCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCshX8c74mBP8L_12iceoryx2_cli6filter11StateFilterENtB7_16TypedValueParser9parse_refs1_0Cs914H3uZQmS2_9iox2_node.exit.i.1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !231
  store i64 0, ptr %i.i, align 8, !noalias !231
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5.0..sroa_idx.i.i10, align 8, !noalias !231
  store i64 0, ptr %.sroa.6.0..sroa_idx.i.i11, align 8, !noalias !231
  store i64 -1, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !231
  store ptr @4, ptr %.sroa.81.0..sroa_idx.i.i, align 8, !noalias !231
  store i64 12, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !231
  store i8 0, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !231
  %i.bi = call noundef zeroext i1 @_RNvMs_NtNtCs5WK5l2q0aFk_12clap_builder7builder14possible_valueNtB4_13PossibleValue7matches(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bd, i64 noundef %i.bf, i1 noundef zeroext %storemerge) #18, !noalias !231
  call void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtCs5WK5l2q0aFk_12clap_builder7builder3str3StrENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.i) #18, !noalias !231
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5WK5l2q0aFk_12clap_builder7builder3str3StrENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.i) #18, !noalias !231
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !231
  br i1 %i.bi, label %_RINvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB7_4IterNtNtCshX8c74mBP8L_12iceoryx2_cli6filter11StateFilterENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB2z_15EnumValueParserBQ_ENtB2z_16TypedValueParser9parse_refs1_0ECs914H3uZQmS2_9iox2_node.exit, label %_RNCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCshX8c74mBP8L_12iceoryx2_cli6filter11StateFilterENtB7_16TypedValueParser9parse_refs1_0Cs914H3uZQmS2_9iox2_node.exit.i.3

_RNCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCshX8c74mBP8L_12iceoryx2_cli6filter11StateFilterENtB7_16TypedValueParser9parse_refs1_0Cs914H3uZQmS2_9iox2_node.exit.i.3: ; preds = %_RNCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCshX8c74mBP8L_12iceoryx2_cli6filter11StateFilterENtB7_16TypedValueParser9parse_refs1_0Cs914H3uZQmS2_9iox2_node.exit.i.2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !231
  store i64 0, ptr %i.i, align 8, !noalias !231
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5.0..sroa_idx.i.i10, align 8, !noalias !231
  store i64 0, ptr %.sroa.6.0..sroa_idx.i.i11, align 8, !noalias !231
  store i64 -1, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !231
  store ptr @5, ptr %.sroa.81.0..sroa_idx.i.i, align 8, !noalias !231
  store i64 9, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !231
  store i8 0, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !231
  %i.bj = call noundef zeroext i1 @_RNvMs_NtNtCs5WK5l2q0aFk_12clap_builder7builder14possible_valueNtB4_13PossibleValue7matches(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bd, i64 noundef %i.bf, i1 noundef zeroext %storemerge) #18, !noalias !231
  call void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtCs5WK5l2q0aFk_12clap_builder7builder3str3StrENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.i) #18, !noalias !231
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5WK5l2q0aFk_12clap_builder7builder3str3StrENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.i) #18, !noalias !231
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !231
  br i1 %i.bj, label %_RINvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB7_4IterNtNtCshX8c74mBP8L_12iceoryx2_cli6filter11StateFilterENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB2z_15EnumValueParserBQ_ENtB2z_16TypedValueParser9parse_refs1_0ECs914H3uZQmS2_9iox2_node.exit, label %_RNCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCshX8c74mBP8L_12iceoryx2_cli6filter11StateFilterENtB7_16TypedValueParser9parse_refs1_0Cs914H3uZQmS2_9iox2_node.exit.i.4

_RNCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCshX8c74mBP8L_12iceoryx2_cli6filter11StateFilterENtB7_16TypedValueParser9parse_refs1_0Cs914H3uZQmS2_9iox2_node.exit.i.4: ; preds = %_RNCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCshX8c74mBP8L_12iceoryx2_cli6filter11StateFilterENtB7_16TypedValueParser9parse_refs1_0Cs914H3uZQmS2_9iox2_node.exit.i.3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !231
  store i64 0, ptr %i.i, align 8, !noalias !231
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5.0..sroa_idx.i.i10, align 8, !noalias !231
  store i64 0, ptr %.sroa.6.0..sroa_idx.i.i11, align 8, !noalias !231
  store i64 -1, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !231
  store ptr @29, ptr %.sroa.81.0..sroa_idx.i.i, align 8, !noalias !231
  store i64 3, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !231
  store i8 0, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !231
  %i.bk = call noundef zeroext i1 @_RNvMs_NtNtCs5WK5l2q0aFk_12clap_builder7builder14possible_valueNtB4_13PossibleValue7matches(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bd, i64 noundef %i.bf, i1 noundef zeroext %storemerge) #18, !noalias !231
  call void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtCs5WK5l2q0aFk_12clap_builder7builder3str3StrENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.i) #18, !noalias !231
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5WK5l2q0aFk_12clap_builder7builder3str3StrENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.i) #18, !noalias !231
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !231
  br i1 %i.bk, label %_RINvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB7_4IterNtNtCshX8c74mBP8L_12iceoryx2_cli6filter11StateFilterENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB2z_15EnumValueParserBQ_ENtB2z_16TypedValueParser9parse_refs1_0ECs914H3uZQmS2_9iox2_node.exit, label %bb.p

_RINvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB7_4IterNtNtCshX8c74mBP8L_12iceoryx2_cli6filter11StateFilterENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB2z_15EnumValueParserBQ_ENtB2z_16TypedValueParser9parse_refs1_0ECs914H3uZQmS2_9iox2_node.exit: ; preds = %_RNCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCshX8c74mBP8L_12iceoryx2_cli6filter11StateFilterENtB7_16TypedValueParser9parse_refs1_0Cs914H3uZQmS2_9iox2_node.exit.i.4, %_RNCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCshX8c74mBP8L_12iceoryx2_cli6filter11StateFilterENtB7_16TypedValueParser9parse_refs1_0Cs914H3uZQmS2_9iox2_node.exit.i.3, %_RNCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCshX8c74mBP8L_12iceoryx2_cli6filter11StateFilterENtB7_16TypedValueParser9parse_refs1_0Cs914H3uZQmS2_9iox2_node.exit.i.2, %_RNCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCshX8c74mBP8L_12iceoryx2_cli6filter11StateFilterENtB7_16TypedValueParser9parse_refs1_0Cs914H3uZQmS2_9iox2_node.exit.i.1, %_RNCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCshX8c74mBP8L_12iceoryx2_cli6filter11StateFilterENtB7_16TypedValueParser9parse_refs1_0Cs914H3uZQmS2_9iox2_node.exit.i
  %.idx.lcssa16 = phi i64 [ 0, %_RNCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCshX8c74mBP8L_12iceoryx2_cli6filter11StateFilterENtB7_16TypedValueParser9parse_refs1_0Cs914H3uZQmS2_9iox2_node.exit.i ], [ 1, %_RNCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCshX8c74mBP8L_12iceoryx2_cli6filter11StateFilterENtB7_16TypedValueParser9parse_refs1_0Cs914H3uZQmS2_9iox2_node.exit.i.1 ], [ 2, %_RNCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCshX8c74mBP8L_12iceoryx2_cli6filter11StateFilterENtB7_16TypedValueParser9parse_refs1_0Cs914H3uZQmS2_9iox2_node.exit.i.2 ], [ 3, %_RNCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCshX8c74mBP8L_12iceoryx2_cli6filter11StateFilterENtB7_16TypedValueParser9parse_refs1_0Cs914H3uZQmS2_9iox2_node.exit.i.3 ], [ 4, %_RNCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCshX8c74mBP8L_12iceoryx2_cli6filter11StateFilterENtB7_16TypedValueParser9parse_refs1_0Cs914H3uZQmS2_9iox2_node.exit.i.4 ]
  %.ptr.le = getelementptr inbounds nuw i8, ptr @28, i64 %.idx.lcssa16
  %.val = load i8, ptr %.ptr.le, align 1, !range !15, !noundef !5
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.val, ptr %i.bl, align 1
  br label %bb.y

bb.p:                                             ; preds = %_RNCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCshX8c74mBP8L_12iceoryx2_cli6filter11StateFilterENtB7_16TypedValueParser9parse_refs1_0Cs914H3uZQmS2_9iox2_node.exit.i.4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !232
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !232
  call void @_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %i.bf, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1) #18, !noalias !232
  %i.bm = load i64, ptr %i.e, align 8, !range !10, !noalias !232, !noundef !5
  %i.bn = trunc nuw i64 %i.bm to i1
  %i.bo = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !range !17, !noalias !232, !noundef !5 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.bn, label %bb.q, label %bb.r, !prof !14

bb.q:                                             ; preds = %bb.p
  %i.br = load i64, ptr %i.bq, align 8, !noalias !232
  call void @_RNvNtCsbqH9stoieM8_5alloc7raw_vec12handle_error(i64 noundef %i.bp, i64 %i.br) #21, !noalias !232
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.bs = load ptr, ptr %i.bq, align 8, !noalias !232, !nonnull !5, !noundef !5 ; 2 uses
  %i.bt = icmp ule i64 %i.bf, %i.bp
  call void @llvm.assume(i1 %i.bt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !232
  %.not.i12 = icmp eq i64 %i.bf, 0
  br i1 %.not.i12, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.t, %bb.r
  store i64 %i.bp, ptr %i.h, align 8, !noalias !232
  %.sroa.4.0..sroa_idx.i13 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.bs, ptr %.sroa.4.0..sroa_idx.i13, align 8, !noalias !232
  %.sroa.6.0..sroa_idx.i14 = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %i.bf, ptr %.sroa.6.0..sroa_idx.i14, align 8, !noalias !232
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !232
  call void @_RNvXNtNtCsbqH9stoieM8_5alloc3vec14spec_from_iterINtB4_3VecNtNtB6_6string6StringEINtB2_12SpecFromIterBU_INtNtNtNtCs8Chj7Szqq0n_4core4iter8adapters3map3MapINtNtB1I_6filter6FilterINtNtB1I_10filter_map9FilterMapINtNtNtB1M_5slice4iter4IterNtNtCshX8c74mBP8L_12iceoryx2_cli6filter11StateFilterENCNCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB4L_15EnumValueParserB3K_ENtB4L_16TypedValueParser9parse_refs_00ENCB4D_s_0ENCB4D_s0_0EE9from_iterCs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noundef nonnull @28, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @28, i64 5)) #18, !noalias !232
  %i.bu = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !noalias !232, !nonnull !5, !noundef !5
  %i.bw = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.bx = load i64, ptr %i.bw, align 8, !noalias !232, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !232
  br i1 %.not, label %bb.w, label %bb.u

bb.t:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bs, ptr nonnull align 1 %i.bd, i64 %i.bf, i1 false), !noalias !232
  br label %bb.s

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !233
  store i64 0, ptr %i.d, align 8, !noalias !233
  %.sroa.4.0..sroa_idx.i.i16 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i16, align 8, !noalias !233
  %.sroa.5.0..sroa_idx.i.i17 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i17, align 8, !noalias !233
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !233
  %i.by = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 1610612768, ptr %i.by, align 8, !noalias !233
  store ptr %i.d, ptr %i.c, align 8, !noalias !233
  %i.bz = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @30, ptr %i.bz, align 8, !noalias !233
  %i.ca = call noundef zeroext i1 @_RNvXs9_NtNtCs5WK5l2q0aFk_12clap_builder7builder3argNtB5_3ArgNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(600) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #18, !noalias !234
  br i1 %i.ca, label %bb.v, label %_RNvXsC_NtCsbqH9stoieM8_5alloc6stringNtNtNtCs5WK5l2q0aFk_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringCs914H3uZQmS2_9iox2_node.exit.i18, !prof !14

bb.v:                                             ; preds = %bb.u
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @18, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #20, !noalias !234
  unreachable

_RNvXsC_NtCsbqH9stoieM8_5alloc6stringNtNtNtCs5WK5l2q0aFk_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringCs914H3uZQmS2_9iox2_node.exit.i18: ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !232
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !233
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !233
  br label %_RNCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCshX8c74mBP8L_12iceoryx2_cli6filter11StateFilterENtB7_16TypedValueParser9parse_refs2_0Cs914H3uZQmS2_9iox2_node.exit

bb.w:                                             ; preds = %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !235)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !236
  call void @_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 3, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1) #18, !noalias !236
  %i.cb = load i64, ptr %i.b, align 8, !range !10, !noalias !236, !noundef !5
  %i.cc = trunc nuw i64 %i.cb to i1
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ce = load i64, ptr %i.cd, align 8, !range !17, !noalias !236, !noundef !5 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.cc, label %bb.x, label %_RNCNCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtNtCshX8c74mBP8L_12iceoryx2_cli6filter11StateFilterENtB9_16TypedValueParser9parse_refs2_00Cs914H3uZQmS2_9iox2_node.exit.i, !prof !14

bb.x:                                             ; preds = %bb.w
  %i.cg = load i64, ptr %i.cf, align 8, !noalias !236
  call void @_RNvNtCsbqH9stoieM8_5alloc7raw_vec12handle_error(i64 noundef %i.ce, i64 %i.cg) #21, !noalias !236
  unreachable

_RNCNCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtNtCshX8c74mBP8L_12iceoryx2_cli6filter11StateFilterENtB9_16TypedValueParser9parse_refs2_00Cs914H3uZQmS2_9iox2_node.exit.i: ; preds = %bb.w
  %i.ch = load ptr, ptr %i.cf, align 8, !noalias !236, !nonnull !5, !noundef !5 ; 2 uses
  %i.ci = icmp samesign ugt i64 %i.ce, 2
  call void @llvm.assume(i1 %i.ci)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !236
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ch, i8 46, i64 3, i1 false), !noalias !236
  store i64 %i.ce, ptr %i.f, align 8, !alias.scope !235, !noalias !232
  %.sroa.4.0..sroa_idx.i4.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.ch, ptr %.sroa.4.0..sroa_idx.i4.i, align 8, !alias.scope !235, !noalias !232
  %.sroa.6.0..sroa_idx.i.i19 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 3, ptr %.sroa.6.0..sroa_idx.i.i19, align 8, !alias.scope !235, !noalias !232
  br label %_RNCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCshX8c74mBP8L_12iceoryx2_cli6filter11StateFilterENtB7_16TypedValueParser9parse_refs2_0Cs914H3uZQmS2_9iox2_node.exit

_RNCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCshX8c74mBP8L_12iceoryx2_cli6filter11StateFilterENtB7_16TypedValueParser9parse_refs2_0Cs914H3uZQmS2_9iox2_node.exit: ; preds = %_RNvXsC_NtCsbqH9stoieM8_5alloc6stringNtNtNtCs5WK5l2q0aFk_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringCs914H3uZQmS2_9iox2_node.exit.i18, %_RNCNCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtNtCshX8c74mBP8L_12iceoryx2_cli6filter11StateFilterENtB9_16TypedValueParser9parse_refs2_00Cs914H3uZQmS2_9iox2_node.exit.i
  %i.cj = call noundef nonnull align 8 ptr @_RNvMNtCs5WK5l2q0aFk_12clap_builder5errorNtB2_5Error13invalid_valueCs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.bv, i64 noundef %i.bx, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.f) #18, !noalias !232
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !232
  call void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g) #18, !noalias !232
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g) #18, !noalias !232
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !232
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !232
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cj, ptr %i.ck, align 8
  br label %bb.y

bb.y:                                             ; preds = %_RNCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCshX8c74mBP8L_12iceoryx2_cli6filter11StateFilterENtB7_16TypedValueParser9parse_refs0_0Cs914H3uZQmS2_9iox2_node.exit, %_RNCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCshX8c74mBP8L_12iceoryx2_cli6filter11StateFilterENtB7_16TypedValueParser9parse_refs2_0Cs914H3uZQmS2_9iox2_node.exit, %_RINvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB7_4IterNtNtCshX8c74mBP8L_12iceoryx2_cli6filter11StateFilterENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB2z_15EnumValueParserBQ_ENtB2z_16TypedValueParser9parse_refs1_0ECs914H3uZQmS2_9iox2_node.exit
  %.sink = phi i8 [ 1, %_RNCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCshX8c74mBP8L_12iceoryx2_cli6filter11StateFilterENtB7_16TypedValueParser9parse_refs0_0Cs914H3uZQmS2_9iox2_node.exit ], [ 1, %_RNCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCshX8c74mBP8L_12iceoryx2_cli6filter11StateFilterENtB7_16TypedValueParser9parse_refs2_0Cs914H3uZQmS2_9iox2_node.exit ], [ 0, %_RINvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB7_4IterNtNtCshX8c74mBP8L_12iceoryx2_cli6filter11StateFilterENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB2z_15EnumValueParserBQ_ENtB2z_16TypedValueParser9parse_refs1_0ECs914H3uZQmS2_9iox2_node.exit ]
  store i8 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB5_15EnumValueParserNtNtCshX8c74mBP8L_12iceoryx2_cli6format6FormatENtB5_16TypedValueParser9parse_refCs914H3uZQmS2_9iox2_node(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(600) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [72 x i8], align 8                ; 24 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 7 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 7 uses
  %i.o = alloca [24 x i8], align 8                ; 7 uses
  %i.p = alloca [24 x i8], align 8                ; 7 uses
  %i.q = alloca [24 x i8], align 8                ; 7 uses
  %i.r = alloca [24 x i8], align 8                ; 7 uses
  %.not = icmp eq ptr %2, null                    ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 592
  %i.t = load i32, ptr %i.s, align 8, !noundef !5
  %i.u = and i32 %i.t, 2048
  %i.v = icmp ne i32 %i.u, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %storemerge = phi i1 [ %i.v, %bb.b ], [ false, %bb.a ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @_RNvNtNtCs8Chj7Szqq0n_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4) #18
  %i.w = load i64, ptr %i.r, align 8, !range !10, !noundef !5
  %i.x = trunc nuw i64 %i.w to i1
  br i1 %i.x, label %bb.d, label %_RNCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCshX8c74mBP8L_12iceoryx2_cli6format6FormatENtB7_16TypedValueParser9parse_refs1_0Cs914H3uZQmS2_9iox2_node.exit.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !256
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !256
  call void @_RNvMNtCsbqH9stoieM8_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4) #18, !noalias !256
  %i.y = load i64, ptr %i.p, align 8, !range !20, !noalias !256, !noundef !5
  %.not.i = icmp eq i64 %i.y, -1
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !noalias !256
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !256, !nonnull !5, !noundef !5
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !noalias !256, !noundef !5 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !256
  call void @_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, i64 noundef %i.ac, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1) #18, !noalias !256
  %i.ad = load i64, ptr %i.m, align 8, !range !10, !noalias !256, !noundef !5
  %i.ae = trunc nuw i64 %i.ad to i1
  %i.af = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !range !17, !noalias !256, !noundef !5 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  br i1 %i.ae, label %bb.g, label %bb.h, !prof !14

bb.g:                                             ; preds = %bb.f
  %i.ai = load i64, ptr %i.ah, align 8, !noalias !256
  tail call void @_RNvNtCsbqH9stoieM8_5alloc7raw_vec12handle_error(i64 noundef %i.ag, i64 %i.ai) #21, !noalias !256
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.aj = load ptr, ptr %i.ah, align 8, !noalias !256, !nonnull !5, !noundef !5 ; 2 uses
  %i.ak = icmp ule i64 %i.ac, %i.ag
  tail call void @llvm.assume(i1 %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !256
  %.not3.i = icmp eq i64 %i.ac, 0
  br i1 %.not3.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.j, %bb.h
  store i64 %i.ag, ptr %i.q, align 8, !noalias !256
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.aj, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !256
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %i.ac, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !256
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aj, ptr nonnull align 1 %i.aa, i64 %i.ac, i1 false), !noalias !256
  br label %bb.i

bb.k:                                             ; preds = %bb.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !256
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !256
  call void @_RNvXNtNtCsbqH9stoieM8_5alloc3vec14spec_from_iterINtB4_3VecNtNtB6_6string6StringEINtB2_12SpecFromIterBU_INtNtNtNtCs8Chj7Szqq0n_4core4iter8adapters3map3MapINtNtB1I_6filter6FilterINtNtB1I_10filter_map9FilterMapINtNtNtB1M_5slice4iter4IterNtNtCshX8c74mBP8L_12iceoryx2_cli6format6FormatENCNCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB4F_15EnumValueParserB3K_ENtB4F_16TypedValueParser9parse_refs_00ENCB4x_s_0ENCB4x_s0_0EE9from_iterCs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.o, ptr noundef nonnull @24, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @24, i64 3)) #18, !noalias !256
  %i.al = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !noalias !256, !nonnull !5, !noundef !5
  %i.an = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !noalias !256, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !256
  br i1 %.not, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !257
  store i64 0, ptr %i.l, align 8, !noalias !257
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !257
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !257
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !257
  %i.ap = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 1610612768, ptr %i.ap, align 8, !noalias !257
  store ptr %i.l, ptr %i.k, align 8, !noalias !257
  %i.aq = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @30, ptr %i.aq, align 8, !noalias !257
  %i.ar = call noundef zeroext i1 @_RNvXs9_NtNtCs5WK5l2q0aFk_12clap_builder7builder3argNtB5_3ArgNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(600) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k) #18, !noalias !258
  br i1 %i.ar, label %bb.m, label %_RNvXsC_NtCsbqH9stoieM8_5alloc6stringNtNtNtCs5WK5l2q0aFk_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringCs914H3uZQmS2_9iox2_node.exit.i, !prof !14

bb.m:                                             ; preds = %bb.l
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @18, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #20, !noalias !258
  unreachable

_RNvXsC_NtCsbqH9stoieM8_5alloc6stringNtNtNtCs5WK5l2q0aFk_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringCs914H3uZQmS2_9iox2_node.exit.i: ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !256
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !257
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !257
  br label %_RNCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCshX8c74mBP8L_12iceoryx2_cli6format6FormatENtB7_16TypedValueParser9parse_refs0_0Cs914H3uZQmS2_9iox2_node.exit

bb.n:                                             ; preds = %bb.k
  call void @llvm.experimental.noalias.scope.decl(metadata !259)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !260
  call void @_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, i64 noundef 3, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1) #18, !noalias !260
  %i.as = load i64, ptr %i.j, align 8, !range !10, !noalias !260, !noundef !5
  %i.at = trunc nuw i64 %i.as to i1
  %i.au = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.av = load i64, ptr %i.au, align 8, !range !17, !noalias !260, !noundef !5 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  br i1 %i.at, label %bb.o, label %_RNCNCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtNtCshX8c74mBP8L_12iceoryx2_cli6format6FormatENtB9_16TypedValueParser9parse_refs0_00Cs914H3uZQmS2_9iox2_node.exit.i, !prof !14

bb.o:                                             ; preds = %bb.n
  %i.ax = load i64, ptr %i.aw, align 8, !noalias !260
  call void @_RNvNtCsbqH9stoieM8_5alloc7raw_vec12handle_error(i64 noundef %i.av, i64 %i.ax) #21, !noalias !260
  unreachable

_RNCNCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtNtCshX8c74mBP8L_12iceoryx2_cli6format6FormatENtB9_16TypedValueParser9parse_refs0_00Cs914H3uZQmS2_9iox2_node.exit.i: ; preds = %bb.n
  %i.ay = load ptr, ptr %i.aw, align 8, !noalias !260, !nonnull !5, !noundef !5 ; 2 uses
  %i.az = icmp samesign ugt i64 %i.av, 2
  call void @llvm.assume(i1 %i.az)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !260
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ay, i8 46, i64 3, i1 false), !noalias !260
  store i64 %i.av, ptr %i.n, align 8, !alias.scope !259, !noalias !256
  %.sroa.4.0..sroa_idx.i5.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.ay, ptr %.sroa.4.0..sroa_idx.i5.i, align 8, !alias.scope !259, !noalias !256
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 3, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !259, !noalias !256
  br label %_RNCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCshX8c74mBP8L_12iceoryx2_cli6format6FormatENtB7_16TypedValueParser9parse_refs0_0Cs914H3uZQmS2_9iox2_node.exit

_RNCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCshX8c74mBP8L_12iceoryx2_cli6format6FormatENtB7_16TypedValueParser9parse_refs0_0Cs914H3uZQmS2_9iox2_node.exit: ; preds = %_RNvXsC_NtCsbqH9stoieM8_5alloc6stringNtNtNtCs5WK5l2q0aFk_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringCs914H3uZQmS2_9iox2_node.exit.i, %_RNCNCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtNtCshX8c74mBP8L_12iceoryx2_cli6format6FormatENtB9_16TypedValueParser9parse_refs0_00Cs914H3uZQmS2_9iox2_node.exit.i
  %i.ba = call noundef nonnull align 8 ptr @_RNvMNtCs5WK5l2q0aFk_12clap_builder5errorNtB2_5Error13invalid_valueCs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.am, i64 noundef %i.ao, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.n) #18, !noalias !256
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !256
  call void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o) #18, !noalias !256
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o) #18, !noalias !256
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !256
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !256
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ba, ptr %i.bb, align 8
  br label %bb.y

_RNCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCshX8c74mBP8L_12iceoryx2_cli6format6FormatENtB7_16TypedValueParser9parse_refs1_0Cs914H3uZQmS2_9iox2_node.exit.i: ; preds = %bb.c
  %i.bc = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.bf = load i64, ptr %i.be, align 8, !noundef !5 ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %.sroa.5.0..sroa_idx.i.i10 = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %.sroa.6.0..sroa_idx.i.i11 = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 3 uses
  %.sroa.81.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 3 uses
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 56 ; 3 uses
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 64 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !261
  store i64 0, ptr %i.i, align 8, !noalias !261
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5.0..sroa_idx.i.i10, align 8, !noalias !261
  store i64 0, ptr %.sroa.6.0..sroa_idx.i.i11, align 8, !noalias !261
  store i64 -1, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !261
  store ptr @25, ptr %.sroa.81.0..sroa_idx.i.i, align 8, !noalias !261
  store i64 3, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !261
  store i8 0, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !261
  %i.bg = call noundef zeroext i1 @_RNvMs_NtNtCs5WK5l2q0aFk_12clap_builder7builder14possible_valueNtB4_13PossibleValue7matches(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bd, i64 noundef %i.bf, i1 noundef zeroext %storemerge) #18, !noalias !261
  call void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtCs5WK5l2q0aFk_12clap_builder7builder3str3StrENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.i) #18, !noalias !261
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5WK5l2q0aFk_12clap_builder7builder3str3StrENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.i) #18, !noalias !261
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !261
  br i1 %i.bg, label %_RINvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB7_4IterNtNtCshX8c74mBP8L_12iceoryx2_cli6format6FormatENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB2t_15EnumValueParserBQ_ENtB2t_16TypedValueParser9parse_refs1_0ECs914H3uZQmS2_9iox2_node.exit, label %_RNCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCshX8c74mBP8L_12iceoryx2_cli6format6FormatENtB7_16TypedValueParser9parse_refs1_0Cs914H3uZQmS2_9iox2_node.exit.i.1

_RNCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCshX8c74mBP8L_12iceoryx2_cli6format6FormatENtB7_16TypedValueParser9parse_refs1_0Cs914H3uZQmS2_9iox2_node.exit.i.1: ; preds = %_RNCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCshX8c74mBP8L_12iceoryx2_cli6format6FormatENtB7_16TypedValueParser9parse_refs1_0Cs914H3uZQmS2_9iox2_node.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !261
  store i64 0, ptr %i.i, align 8, !noalias !261
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5.0..sroa_idx.i.i10, align 8, !noalias !261
  store i64 0, ptr %.sroa.6.0..sroa_idx.i.i11, align 8, !noalias !261
  store i64 -1, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !261
  store ptr @26, ptr %.sroa.81.0..sroa_idx.i.i, align 8, !noalias !261
  store i64 4, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !261
  store i8 0, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !261
  %i.bh = call noundef zeroext i1 @_RNvMs_NtNtCs5WK5l2q0aFk_12clap_builder7builder14possible_valueNtB4_13PossibleValue7matches(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bd, i64 noundef %i.bf, i1 noundef zeroext %storemerge) #18, !noalias !261
  call void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtCs5WK5l2q0aFk_12clap_builder7builder3str3StrENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.i) #18, !noalias !261
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5WK5l2q0aFk_12clap_builder7builder3str3StrENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.i) #18, !noalias !261
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !261
  br i1 %i.bh, label %_RINvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB7_4IterNtNtCshX8c74mBP8L_12iceoryx2_cli6format6FormatENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB2t_15EnumValueParserBQ_ENtB2t_16TypedValueParser9parse_refs1_0ECs914H3uZQmS2_9iox2_node.exit, label %_RNCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCshX8c74mBP8L_12iceoryx2_cli6format6FormatENtB7_16TypedValueParser9parse_refs1_0Cs914H3uZQmS2_9iox2_node.exit.i.2

_RNCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCshX8c74mBP8L_12iceoryx2_cli6format6FormatENtB7_16TypedValueParser9parse_refs1_0Cs914H3uZQmS2_9iox2_node.exit.i.2: ; preds = %_RNCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCshX8c74mBP8L_12iceoryx2_cli6format6FormatENtB7_16TypedValueParser9parse_refs1_0Cs914H3uZQmS2_9iox2_node.exit.i.1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !261
  store i64 0, ptr %i.i, align 8, !noalias !261
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5.0..sroa_idx.i.i10, align 8, !noalias !261
  store i64 0, ptr %.sroa.6.0..sroa_idx.i.i11, align 8, !noalias !261
  store i64 -1, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !261
  store ptr @27, ptr %.sroa.81.0..sroa_idx.i.i, align 8, !noalias !261
  store i64 4, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !261
  store i8 0, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !261
  %i.bi = call noundef zeroext i1 @_RNvMs_NtNtCs5WK5l2q0aFk_12clap_builder7builder14possible_valueNtB4_13PossibleValue7matches(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bd, i64 noundef %i.bf, i1 noundef zeroext %storemerge) #18, !noalias !261
  call void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtCs5WK5l2q0aFk_12clap_builder7builder3str3StrENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.i) #18, !noalias !261
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5WK5l2q0aFk_12clap_builder7builder3str3StrENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.i) #18, !noalias !261
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !261
  br i1 %i.bi, label %_RINvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB7_4IterNtNtCshX8c74mBP8L_12iceoryx2_cli6format6FormatENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB2t_15EnumValueParserBQ_ENtB2t_16TypedValueParser9parse_refs1_0ECs914H3uZQmS2_9iox2_node.exit, label %bb.p

_RINvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB7_4IterNtNtCshX8c74mBP8L_12iceoryx2_cli6format6FormatENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB2t_15EnumValueParserBQ_ENtB2t_16TypedValueParser9parse_refs1_0ECs914H3uZQmS2_9iox2_node.exit: ; preds = %_RNCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCshX8c74mBP8L_12iceoryx2_cli6format6FormatENtB7_16TypedValueParser9parse_refs1_0Cs914H3uZQmS2_9iox2_node.exit.i.2, %_RNCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCshX8c74mBP8L_12iceoryx2_cli6format6FormatENtB7_16TypedValueParser9parse_refs1_0Cs914H3uZQmS2_9iox2_node.exit.i.1, %_RNCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCshX8c74mBP8L_12iceoryx2_cli6format6FormatENtB7_16TypedValueParser9parse_refs1_0Cs914H3uZQmS2_9iox2_node.exit.i
  %.idx.lcssa16 = phi i64 [ 0, %_RNCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCshX8c74mBP8L_12iceoryx2_cli6format6FormatENtB7_16TypedValueParser9parse_refs1_0Cs914H3uZQmS2_9iox2_node.exit.i ], [ 1, %_RNCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCshX8c74mBP8L_12iceoryx2_cli6format6FormatENtB7_16TypedValueParser9parse_refs1_0Cs914H3uZQmS2_9iox2_node.exit.i.1 ], [ 2, %_RNCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCshX8c74mBP8L_12iceoryx2_cli6format6FormatENtB7_16TypedValueParser9parse_refs1_0Cs914H3uZQmS2_9iox2_node.exit.i.2 ]
  %.ptr.le = getelementptr inbounds nuw i8, ptr @24, i64 %.idx.lcssa16
  %.val = load i8, ptr %.ptr.le, align 1, !range !11, !noundef !5
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.val, ptr %i.bj, align 1
  br label %bb.y

bb.p:                                             ; preds = %_RNCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCshX8c74mBP8L_12iceoryx2_cli6format6FormatENtB7_16TypedValueParser9parse_refs1_0Cs914H3uZQmS2_9iox2_node.exit.i.2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !262
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !262
  call void @_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %i.bf, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1) #18, !noalias !262
  %i.bk = load i64, ptr %i.e, align 8, !range !10, !noalias !262, !noundef !5
  %i.bl = trunc nuw i64 %i.bk to i1
  %i.bm = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !range !17, !noalias !262, !noundef !5 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.bl, label %bb.q, label %bb.r, !prof !14

bb.q:                                             ; preds = %bb.p
  %i.bp = load i64, ptr %i.bo, align 8, !noalias !262
  call void @_RNvNtCsbqH9stoieM8_5alloc7raw_vec12handle_error(i64 noundef %i.bn, i64 %i.bp) #21, !noalias !262
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.bq = load ptr, ptr %i.bo, align 8, !noalias !262, !nonnull !5, !noundef !5 ; 2 uses
  %i.br = icmp ule i64 %i.bf, %i.bn
  call void @llvm.assume(i1 %i.br)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !262
  %.not.i12 = icmp eq i64 %i.bf, 0
  br i1 %.not.i12, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.t, %bb.r
  store i64 %i.bn, ptr %i.h, align 8, !noalias !262
  %.sroa.4.0..sroa_idx.i13 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.bq, ptr %.sroa.4.0..sroa_idx.i13, align 8, !noalias !262
  %.sroa.6.0..sroa_idx.i14 = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %i.bf, ptr %.sroa.6.0..sroa_idx.i14, align 8, !noalias !262
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !262
  call void @_RNvXNtNtCsbqH9stoieM8_5alloc3vec14spec_from_iterINtB4_3VecNtNtB6_6string6StringEINtB2_12SpecFromIterBU_INtNtNtNtCs8Chj7Szqq0n_4core4iter8adapters3map3MapINtNtB1I_6filter6FilterINtNtB1I_10filter_map9FilterMapINtNtNtB1M_5slice4iter4IterNtNtCshX8c74mBP8L_12iceoryx2_cli6format6FormatENCNCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB4F_15EnumValueParserB3K_ENtB4F_16TypedValueParser9parse_refs_00ENCB4x_s_0ENCB4x_s0_0EE9from_iterCs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noundef nonnull @24, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @24, i64 3)) #18, !noalias !262
  %i.bs = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !noalias !262, !nonnull !5, !noundef !5
  %i.bu = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.bv = load i64, ptr %i.bu, align 8, !noalias !262, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !262
  br i1 %.not, label %bb.w, label %bb.u

bb.t:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bq, ptr nonnull align 1 %i.bd, i64 %i.bf, i1 false), !noalias !262
  br label %bb.s

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !263
  store i64 0, ptr %i.d, align 8, !noalias !263
  %.sroa.4.0..sroa_idx.i.i16 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i16, align 8, !noalias !263
  %.sroa.5.0..sroa_idx.i.i17 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i17, align 8, !noalias !263
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !263
  %i.bw = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 1610612768, ptr %i.bw, align 8, !noalias !263
  store ptr %i.d, ptr %i.c, align 8, !noalias !263
  %i.bx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @30, ptr %i.bx, align 8, !noalias !263
  %i.by = call noundef zeroext i1 @_RNvXs9_NtNtCs5WK5l2q0aFk_12clap_builder7builder3argNtB5_3ArgNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(600) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #18, !noalias !264
  br i1 %i.by, label %bb.v, label %_RNvXsC_NtCsbqH9stoieM8_5alloc6stringNtNtNtCs5WK5l2q0aFk_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringCs914H3uZQmS2_9iox2_node.exit.i18, !prof !14

bb.v:                                             ; preds = %bb.u
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @18, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #20, !noalias !264
  unreachable

_RNvXsC_NtCsbqH9stoieM8_5alloc6stringNtNtNtCs5WK5l2q0aFk_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringCs914H3uZQmS2_9iox2_node.exit.i18: ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !262
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !263
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !263
  br label %_RNCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCshX8c74mBP8L_12iceoryx2_cli6format6FormatENtB7_16TypedValueParser9parse_refs2_0Cs914H3uZQmS2_9iox2_node.exit

bb.w:                                             ; preds = %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !265)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !266
  call void @_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 3, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1) #18, !noalias !266
  %i.bz = load i64, ptr %i.b, align 8, !range !10, !noalias !266, !noundef !5
  %i.ca = trunc nuw i64 %i.bz to i1
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !range !17, !noalias !266, !noundef !5 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.ca, label %bb.x, label %_RNCNCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtNtCshX8c74mBP8L_12iceoryx2_cli6format6FormatENtB9_16TypedValueParser9parse_refs2_00Cs914H3uZQmS2_9iox2_node.exit.i, !prof !14

bb.x:                                             ; preds = %bb.w
  %i.ce = load i64, ptr %i.cd, align 8, !noalias !266
  call void @_RNvNtCsbqH9stoieM8_5alloc7raw_vec12handle_error(i64 noundef %i.cc, i64 %i.ce) #21, !noalias !266
  unreachable

_RNCNCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtNtCshX8c74mBP8L_12iceoryx2_cli6format6FormatENtB9_16TypedValueParser9parse_refs2_00Cs914H3uZQmS2_9iox2_node.exit.i: ; preds = %bb.w
  %i.cf = load ptr, ptr %i.cd, align 8, !noalias !266, !nonnull !5, !noundef !5 ; 2 uses
  %i.cg = icmp samesign ugt i64 %i.cc, 2
  call void @llvm.assume(i1 %i.cg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !266
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.cf, i8 46, i64 3, i1 false), !noalias !266
  store i64 %i.cc, ptr %i.f, align 8, !alias.scope !265, !noalias !262
  %.sroa.4.0..sroa_idx.i4.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.cf, ptr %.sroa.4.0..sroa_idx.i4.i, align 8, !alias.scope !265, !noalias !262
  %.sroa.6.0..sroa_idx.i.i19 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 3, ptr %.sroa.6.0..sroa_idx.i.i19, align 8, !alias.scope !265, !noalias !262
  br label %_RNCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCshX8c74mBP8L_12iceoryx2_cli6format6FormatENtB7_16TypedValueParser9parse_refs2_0Cs914H3uZQmS2_9iox2_node.exit

_RNCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCshX8c74mBP8L_12iceoryx2_cli6format6FormatENtB7_16TypedValueParser9parse_refs2_0Cs914H3uZQmS2_9iox2_node.exit: ; preds = %_RNvXsC_NtCsbqH9stoieM8_5alloc6stringNtNtNtCs5WK5l2q0aFk_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringCs914H3uZQmS2_9iox2_node.exit.i18, %_RNCNCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtNtCshX8c74mBP8L_12iceoryx2_cli6format6FormatENtB9_16TypedValueParser9parse_refs2_00Cs914H3uZQmS2_9iox2_node.exit.i
  %i.ch = call noundef nonnull align 8 ptr @_RNvMNtCs5WK5l2q0aFk_12clap_builder5errorNtB2_5Error13invalid_valueCs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.bt, i64 noundef %i.bv, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.f) #18, !noalias !262
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !262
  call void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g) #18, !noalias !262
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g) #18, !noalias !262
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !262
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !262
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ch, ptr %i.ci, align 8
  br label %bb.y

bb.y:                                             ; preds = %_RNCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCshX8c74mBP8L_12iceoryx2_cli6format6FormatENtB7_16TypedValueParser9parse_refs0_0Cs914H3uZQmS2_9iox2_node.exit, %_RNCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCshX8c74mBP8L_12iceoryx2_cli6format6FormatENtB7_16TypedValueParser9parse_refs2_0Cs914H3uZQmS2_9iox2_node.exit, %_RINvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB7_4IterNtNtCshX8c74mBP8L_12iceoryx2_cli6format6FormatENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB2t_15EnumValueParserBQ_ENtB2t_16TypedValueParser9parse_refs1_0ECs914H3uZQmS2_9iox2_node.exit
  %.sink = phi i8 [ 1, %_RNCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCshX8c74mBP8L_12iceoryx2_cli6format6FormatENtB7_16TypedValueParser9parse_refs0_0Cs914H3uZQmS2_9iox2_node.exit ], [ 1, %_RNCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtCshX8c74mBP8L_12iceoryx2_cli6format6FormatENtB7_16TypedValueParser9parse_refs2_0Cs914H3uZQmS2_9iox2_node.exit ], [ 0, %_RINvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB7_4IterNtNtCshX8c74mBP8L_12iceoryx2_cli6format6FormatENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB2t_15EnumValueParserBQ_ENtB2t_16TypedValueParser9parse_refs1_0ECs914H3uZQmS2_9iox2_node.exit ]
  store i8 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef i64 @_RNvYINtNtNtNtCs8Chj7Szqq0n_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCshX8c74mBP8L_12iceoryx2_cli6filter11StateFilterENCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB2t_15EnumValueParserB1u_ENtB2t_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byCs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !275)
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_RNvXs_NvNtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtCshX8c74mBP8L_12iceoryx2_cli6filter11StateFilterENCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB3h_15EnumValueParserB2i_ENtB3h_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byCs914H3uZQmS2_9iox2_node.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !276)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !277)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !278, !nonnull !5, !noundef !5
  %.promoted.i.i.i = load ptr, ptr %0, align 8, !alias.scope !278
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
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
  br i1 %i.f, label %_RNvXs_NvNtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtCshX8c74mBP8L_12iceoryx2_cli6filter11StateFilterENCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB3h_15EnumValueParserB2i_ENtB3h_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byCs914H3uZQmS2_9iox2_node.exit, label %switch.lookup

switch.lookup:                                    ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !alias.scope !278
  %.val.i.i.i = load i8, ptr %i.e, align 1, !range !15, !noalias !279, !noundef !5 ; 2 uses
  %i.h = zext nneg i8 %.val.i.i.i to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvYINtNtNtNtCs8Chj7Szqq0n_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCshX8c74mBP8L_12iceoryx2_cli6filter11StateFilterENCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB2t_15EnumValueParserB1u_ENtB2t_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthCs914H3uZQmS2_9iox2_node.63, i64 %i.h
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.i = zext nneg i8 %.val.i.i.i to i64
  %switch.gep3 = getelementptr inbounds nuw i8, ptr @switch.table._RNvYINtNtNtNtCs8Chj7Szqq0n_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCshX8c74mBP8L_12iceoryx2_cli6filter11StateFilterENCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB2t_15EnumValueParserB1u_ENtB2t_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthCs914H3uZQmS2_9iox2_node.64, i64 %i.i
  %switch.load4 = load i8, ptr %switch.gep3, align 1
  %switch.ext = zext i8 %switch.load4 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !279
  store i64 %.sroa.01.0.i.i.i, ptr %i.a, align 8, !noalias !279
  store i64 0, ptr %i.d, align 8, !noalias !279
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !279
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i.i, align 8, !noalias !279
  store i64 -1, ptr %.sroa.64.0..sroa_idx.i.i.i.i, align 8, !noalias !279
  store ptr %switch.load, ptr %.sroa.86.0..sroa_idx.i.i.i.i, align 8, !noalias !279
  store i64 %switch.ext, ptr %.sroa.97.0..sroa_idx.i.i.i.i, align 8, !noalias !279
  store i8 0, ptr %.sroa.108.0..sroa_idx.i.i.i.i, align 8, !noalias !279
  %i.j = add i64 %.sroa.01.0.i.i.i, -1            ; 2 uses
  call void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtCs5WK5l2q0aFk_12clap_builder7builder3str3StrENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.d) #18, !noalias !279
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5WK5l2q0aFk_12clap_builder7builder3str3StrENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.d) #18, !noalias !279
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !279
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs_NvNtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtCshX8c74mBP8L_12iceoryx2_cli6filter11StateFilterENCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB3h_15EnumValueParserB2i_ENtB3h_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byCs914H3uZQmS2_9iox2_node.exit, label %bb.c

_RNvXs_NvNtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtCshX8c74mBP8L_12iceoryx2_cli6filter11StateFilterENCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB3h_15EnumValueParserB2i_ENtB3h_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byCs914H3uZQmS2_9iox2_node.exit: ; preds = %bb.c, %switch.lookup, %bb.a
  %.sroa.0.1.i = phi i64 [ 0, %bb.a ], [ %.sroa.01.0.i.i.i, %bb.c ], [ 0, %switch.lookup ]
  ret i64 %.sroa.0.1.i
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal void @_RNvYINtNtNtNtCs8Chj7Szqq0n_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCshX8c74mBP8L_12iceoryx2_cli6filter11StateFilterENCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB2t_15EnumValueParserB1u_ENtB2t_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthCs914H3uZQmS2_9iox2_node(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1, i64 noundef %2) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !302)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !303)
  %.not.i.i = icmp eq i64 %2, 0
  %.pre = load ptr, ptr %1, align 8               ; 2 uses
  br i1 %.not.i.i, label %..loopexit_crit_edge, label %bb.b

..loopexit_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre4 = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !304, !noalias !305
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !306)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !307)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !308, !nonnull !5, !noundef !5 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
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
  br i1 %i.f, label %_RNvYINtNtNtNtCs8Chj7Szqq0n_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCshX8c74mBP8L_12iceoryx2_cli6filter11StateFilterENCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB2t_15EnumValueParserB1u_ENtB2t_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byCs914H3uZQmS2_9iox2_node.exit, label %switch.lookup

switch.lookup:                                    ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 3 uses
  store ptr %i.g, ptr %1, align 8, !alias.scope !308
  %.val.i.i.i.i = load i8, ptr %i.e, align 1, !range !15, !noalias !309, !noundef !5 ; 2 uses
  %i.h = zext nneg i8 %.val.i.i.i.i to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvYINtNtNtNtCs8Chj7Szqq0n_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCshX8c74mBP8L_12iceoryx2_cli6filter11StateFilterENCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB2t_15EnumValueParserB1u_ENtB2t_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthCs914H3uZQmS2_9iox2_node.63, i64 %i.h
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.i = zext nneg i8 %.val.i.i.i.i to i64
  %switch.gep11 = getelementptr inbounds nuw i8, ptr @switch.table._RNvYINtNtNtNtCs8Chj7Szqq0n_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCshX8c74mBP8L_12iceoryx2_cli6filter11StateFilterENCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB2t_15EnumValueParserB1u_ENtB2t_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthCs914H3uZQmS2_9iox2_node.64, i64 %i.i
  %switch.load12 = load i8, ptr %switch.gep11, align 1
  %switch.ext = zext i8 %switch.load12 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !309
  store i64 %.sroa.01.0.i.i.i.i, ptr %i.a, align 8, !noalias !309
  store i64 0, ptr %i.d, align 8, !noalias !309
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !309
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i, align 8, !noalias !309
  store i64 -1, ptr %.sroa.64.0..sroa_idx.i.i.i.i.i, align 8, !noalias !309
  store ptr %switch.load, ptr %.sroa.86.0..sroa_idx.i.i.i.i.i, align 8, !noalias !309
  store i64 %switch.ext, ptr %.sroa.97.0..sroa_idx.i.i.i.i.i, align 8, !noalias !309
  store i8 0, ptr %.sroa.108.0..sroa_idx.i.i.i.i.i, align 8, !noalias !309
  %i.j = add i64 %.sroa.01.0.i.i.i.i, -1          ; 2 uses
  call void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtCs5WK5l2q0aFk_12clap_builder7builder3str3StrENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.d) #18, !noalias !309
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5WK5l2q0aFk_12clap_builder7builder3str3StrENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.d) #18, !noalias !309
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !309
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %.loopexit, label %bb.c

_RNvYINtNtNtNtCs8Chj7Szqq0n_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCshX8c74mBP8L_12iceoryx2_cli6filter11StateFilterENCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB2t_15EnumValueParserB1u_ENtB2t_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byCs914H3uZQmS2_9iox2_node.exit: ; preds = %bb.c
  store i64 -1, ptr %0, align 8
  br label %_RNvXs0_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCshX8c74mBP8L_12iceoryx2_cli6filter11StateFilterENCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB2z_15EnumValueParserB1A_ENtB2z_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextCs914H3uZQmS2_9iox2_node.exit

.loopexit:                                        ; preds = %switch.lookup, %..loopexit_crit_edge
  %i.l = phi ptr [ %.pre4, %..loopexit_crit_edge ], [ %i.c, %switch.lookup ]
  %i.m = phi ptr [ %.pre, %..loopexit_crit_edge ], [ %i.g, %switch.lookup ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !310)
  call void @llvm.experimental.noalias.scope.decl(metadata !311)
  call void @llvm.experimental.noalias.scope.decl(metadata !312)
  call void @llvm.experimental.noalias.scope.decl(metadata !313)
  %i.n = icmp eq ptr %i.m, %i.l
  br i1 %i.n, label %bb.d, label %switch.lookup13

switch.lookup13:                                  ; preds = %.loopexit
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  store ptr %i.o, ptr %1, align 8, !alias.scope !304, !noalias !305
  %.val.i.i = load i8, ptr %i.m, align 1, !range !15, !noalias !314, !noundef !5 ; 2 uses
  store i64 0, ptr %0, align 8, !alias.scope !315, !noalias !304
  %.sroa.0.sroa.0.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !315, !noalias !304
  %.sroa.0.sroa.0.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.0.sroa.0.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !315, !noalias !304
  %.sroa.0.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 -1, ptr %.sroa.0.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !315, !noalias !304
  %i.p = zext nneg i8 %.val.i.i to i64
  %switch.gep14 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvYINtNtNtNtCs8Chj7Szqq0n_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCshX8c74mBP8L_12iceoryx2_cli6filter11StateFilterENCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB2t_15EnumValueParserB1u_ENtB2t_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthCs914H3uZQmS2_9iox2_node.63, i64 %i.p
  %switch.load15 = load ptr, ptr %switch.gep14, align 8
  %i.q = zext nneg i8 %.val.i.i to i64
  %switch.gep16 = getelementptr inbounds nuw i8, ptr @switch.table._RNvYINtNtNtNtCs8Chj7Szqq0n_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCshX8c74mBP8L_12iceoryx2_cli6filter11StateFilterENCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB2t_15EnumValueParserB1u_ENtB2t_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthCs914H3uZQmS2_9iox2_node.64, i64 %i.q
  %switch.load17 = load i8, ptr %switch.gep16, align 1
  %switch.ext18 = zext i8 %switch.load17 to i64
  %.sroa.7.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %switch.load15, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !315, !noalias !304
  store i64 %switch.ext18, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !315, !noalias !304
  store i8 0, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !315, !noalias !304
  br label %_RNvXs0_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCshX8c74mBP8L_12iceoryx2_cli6filter11StateFilterENCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB2z_15EnumValueParserB1A_ENtB2z_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextCs914H3uZQmS2_9iox2_node.exit

bb.d:                                             ; preds = %.loopexit
  store i64 -1, ptr %0, align 8, !alias.scope !305, !noalias !304
  br label %_RNvXs0_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCshX8c74mBP8L_12iceoryx2_cli6filter11StateFilterENCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB2z_15EnumValueParserB1A_ENtB2z_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextCs914H3uZQmS2_9iox2_node.exit

_RNvXs0_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCshX8c74mBP8L_12iceoryx2_cli6filter11StateFilterENCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB2z_15EnumValueParserB1A_ENtB2z_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextCs914H3uZQmS2_9iox2_node.exit: ; preds = %bb.d, %switch.lookup13, %_RNvYINtNtNtNtCs8Chj7Szqq0n_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCshX8c74mBP8L_12iceoryx2_cli6filter11StateFilterENCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB2t_15EnumValueParserB1u_ENtB2t_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byCs914H3uZQmS2_9iox2_node.exit
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef i64 @_RNvYINtNtNtNtCs8Chj7Szqq0n_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCshX8c74mBP8L_12iceoryx2_cli6format6FormatENCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB2n_15EnumValueParserB1u_ENtB2n_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byCs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !324)
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_RNvXs_NvNtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtCshX8c74mBP8L_12iceoryx2_cli6format6FormatENCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB3b_15EnumValueParserB2i_ENtB3b_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byCs914H3uZQmS2_9iox2_node.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !325)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !326)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !327, !nonnull !5, !noundef !5
  %.promoted.i.i.i = load ptr, ptr %0, align 8, !alias.scope !327
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
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
  br i1 %i.f, label %_RNvXs_NvNtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtCshX8c74mBP8L_12iceoryx2_cli6format6FormatENCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB3b_15EnumValueParserB2i_ENtB3b_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byCs914H3uZQmS2_9iox2_node.exit, label %switch.lookup

switch.lookup:                                    ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !alias.scope !327
  %.val.i.i.i = load i8, ptr %i.e, align 1, !range !11, !noalias !328, !noundef !5 ; 2 uses
  %i.h = zext nneg i8 %.val.i.i.i to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvYINtNtNtNtCs8Chj7Szqq0n_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCshX8c74mBP8L_12iceoryx2_cli6format6FormatENCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB2n_15EnumValueParserB1u_ENtB2n_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthCs914H3uZQmS2_9iox2_node.67, i64 %i.h
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.i = zext nneg i8 %.val.i.i.i to i64
  %switch.gep3 = getelementptr inbounds nuw i8, ptr @switch.table._RNvYINtNtNtNtCs8Chj7Szqq0n_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCshX8c74mBP8L_12iceoryx2_cli6format6FormatENCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB2n_15EnumValueParserB1u_ENtB2n_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthCs914H3uZQmS2_9iox2_node.68, i64 %i.i
  %switch.load4 = load i8, ptr %switch.gep3, align 1
  %switch.ext = zext i8 %switch.load4 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !328
  store i64 %.sroa.01.0.i.i.i, ptr %i.a, align 8, !noalias !328
  store i64 0, ptr %i.d, align 8, !noalias !328
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !328
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i.i, align 8, !noalias !328
  store i64 -1, ptr %.sroa.64.0..sroa_idx.i.i.i.i, align 8, !noalias !328
  store ptr %switch.load, ptr %.sroa.86.0..sroa_idx.i.i.i.i, align 8, !noalias !328
  store i64 %switch.ext, ptr %.sroa.97.0..sroa_idx.i.i.i.i, align 8, !noalias !328
  store i8 0, ptr %.sroa.108.0..sroa_idx.i.i.i.i, align 8, !noalias !328
  %i.j = add i64 %.sroa.01.0.i.i.i, -1            ; 2 uses
  call void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtCs5WK5l2q0aFk_12clap_builder7builder3str3StrENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.d) #18, !noalias !328
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5WK5l2q0aFk_12clap_builder7builder3str3StrENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.d) #18, !noalias !328
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !328
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs_NvNtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtCshX8c74mBP8L_12iceoryx2_cli6format6FormatENCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB3b_15EnumValueParserB2i_ENtB3b_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byCs914H3uZQmS2_9iox2_node.exit, label %bb.c

_RNvXs_NvNtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtCshX8c74mBP8L_12iceoryx2_cli6format6FormatENCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB3b_15EnumValueParserB2i_ENtB3b_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byCs914H3uZQmS2_9iox2_node.exit: ; preds = %bb.c, %switch.lookup, %bb.a
  %.sroa.0.1.i = phi i64 [ 0, %bb.a ], [ %.sroa.01.0.i.i.i, %bb.c ], [ 0, %switch.lookup ]
  ret i64 %.sroa.0.1.i
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal void @_RNvYINtNtNtNtCs8Chj7Szqq0n_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCshX8c74mBP8L_12iceoryx2_cli6format6FormatENCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB2n_15EnumValueParserB1u_ENtB2n_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthCs914H3uZQmS2_9iox2_node(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1, i64 noundef %2) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !351)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !352)
  %.not.i.i = icmp eq i64 %2, 0
  %.pre = load ptr, ptr %1, align 8               ; 2 uses
  br i1 %.not.i.i, label %..loopexit_crit_edge, label %bb.b

..loopexit_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre4 = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !353, !noalias !354
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !355)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !356)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !357, !nonnull !5, !noundef !5 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
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
  br i1 %i.f, label %_RNvYINtNtNtNtCs8Chj7Szqq0n_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCshX8c74mBP8L_12iceoryx2_cli6format6FormatENCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB2n_15EnumValueParserB1u_ENtB2n_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byCs914H3uZQmS2_9iox2_node.exit, label %switch.lookup

switch.lookup:                                    ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 3 uses
  store ptr %i.g, ptr %1, align 8, !alias.scope !357
  %.val.i.i.i.i = load i8, ptr %i.e, align 1, !range !11, !noalias !358, !noundef !5 ; 2 uses
  %i.h = zext nneg i8 %.val.i.i.i.i to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvYINtNtNtNtCs8Chj7Szqq0n_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCshX8c74mBP8L_12iceoryx2_cli6format6FormatENCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB2n_15EnumValueParserB1u_ENtB2n_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthCs914H3uZQmS2_9iox2_node.67, i64 %i.h
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.i = zext nneg i8 %.val.i.i.i.i to i64
  %switch.gep11 = getelementptr inbounds nuw i8, ptr @switch.table._RNvYINtNtNtNtCs8Chj7Szqq0n_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCshX8c74mBP8L_12iceoryx2_cli6format6FormatENCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB2n_15EnumValueParserB1u_ENtB2n_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthCs914H3uZQmS2_9iox2_node.68, i64 %i.i
  %switch.load12 = load i8, ptr %switch.gep11, align 1
  %switch.ext = zext i8 %switch.load12 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !358
  store i64 %.sroa.01.0.i.i.i.i, ptr %i.a, align 8, !noalias !358
  store i64 0, ptr %i.d, align 8, !noalias !358
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !358
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i, align 8, !noalias !358
  store i64 -1, ptr %.sroa.64.0..sroa_idx.i.i.i.i.i, align 8, !noalias !358
  store ptr %switch.load, ptr %.sroa.86.0..sroa_idx.i.i.i.i.i, align 8, !noalias !358
  store i64 %switch.ext, ptr %.sroa.97.0..sroa_idx.i.i.i.i.i, align 8, !noalias !358
  store i8 0, ptr %.sroa.108.0..sroa_idx.i.i.i.i.i, align 8, !noalias !358
  %i.j = add i64 %.sroa.01.0.i.i.i.i, -1          ; 2 uses
  call void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtCs5WK5l2q0aFk_12clap_builder7builder3str3StrENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.d) #18, !noalias !358
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5WK5l2q0aFk_12clap_builder7builder3str3StrENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.d) #18, !noalias !358
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !358
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %.loopexit, label %bb.c

_RNvYINtNtNtNtCs8Chj7Szqq0n_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCshX8c74mBP8L_12iceoryx2_cli6format6FormatENCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB2n_15EnumValueParserB1u_ENtB2n_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byCs914H3uZQmS2_9iox2_node.exit: ; preds = %bb.c
  store i64 -1, ptr %0, align 8
  br label %_RNvXs0_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCshX8c74mBP8L_12iceoryx2_cli6format6FormatENCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB2t_15EnumValueParserB1A_ENtB2t_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextCs914H3uZQmS2_9iox2_node.exit

.loopexit:                                        ; preds = %switch.lookup, %..loopexit_crit_edge
  %i.l = phi ptr [ %.pre4, %..loopexit_crit_edge ], [ %i.c, %switch.lookup ]
  %i.m = phi ptr [ %.pre, %..loopexit_crit_edge ], [ %i.g, %switch.lookup ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !359)
  call void @llvm.experimental.noalias.scope.decl(metadata !360)
  call void @llvm.experimental.noalias.scope.decl(metadata !361)
  call void @llvm.experimental.noalias.scope.decl(metadata !362)
  %i.n = icmp eq ptr %i.m, %i.l
  br i1 %i.n, label %bb.d, label %switch.lookup13

switch.lookup13:                                  ; preds = %.loopexit
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  store ptr %i.o, ptr %1, align 8, !alias.scope !353, !noalias !354
  %.val.i.i = load i8, ptr %i.m, align 1, !range !11, !noalias !363, !noundef !5 ; 2 uses
  store i64 0, ptr %0, align 8, !alias.scope !364, !noalias !353
  %.sroa.0.sroa.0.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !364, !noalias !353
  %.sroa.0.sroa.0.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.0.sroa.0.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !364, !noalias !353
  %.sroa.0.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 -1, ptr %.sroa.0.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !364, !noalias !353
  %i.p = zext nneg i8 %.val.i.i to i64
  %switch.gep14 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvYINtNtNtNtCs8Chj7Szqq0n_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCshX8c74mBP8L_12iceoryx2_cli6format6FormatENCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB2n_15EnumValueParserB1u_ENtB2n_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthCs914H3uZQmS2_9iox2_node.67, i64 %i.p
  %switch.load15 = load ptr, ptr %switch.gep14, align 8
  %i.q = zext nneg i8 %.val.i.i to i64
  %switch.gep16 = getelementptr inbounds nuw i8, ptr @switch.table._RNvYINtNtNtNtCs8Chj7Szqq0n_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCshX8c74mBP8L_12iceoryx2_cli6format6FormatENCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB2n_15EnumValueParserB1u_ENtB2n_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthCs914H3uZQmS2_9iox2_node.68, i64 %i.q
  %switch.load17 = load i8, ptr %switch.gep16, align 1
  %switch.ext18 = zext i8 %switch.load17 to i64
  %.sroa.7.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %switch.load15, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !364, !noalias !353
  store i64 %switch.ext18, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !364, !noalias !353
  store i8 0, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !364, !noalias !353
  br label %_RNvXs0_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCshX8c74mBP8L_12iceoryx2_cli6format6FormatENCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB2t_15EnumValueParserB1A_ENtB2t_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextCs914H3uZQmS2_9iox2_node.exit

bb.d:                                             ; preds = %.loopexit
  store i64 -1, ptr %0, align 8, !alias.scope !354, !noalias !353
  br label %_RNvXs0_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCshX8c74mBP8L_12iceoryx2_cli6format6FormatENCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB2t_15EnumValueParserB1A_ENtB2t_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextCs914H3uZQmS2_9iox2_node.exit

_RNvXs0_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCshX8c74mBP8L_12iceoryx2_cli6format6FormatENCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB2t_15EnumValueParserB1A_ENtB2t_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextCs914H3uZQmS2_9iox2_node.exit: ; preds = %bb.d, %switch.lookup13, %_RNvYINtNtNtNtCs8Chj7Szqq0n_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCshX8c74mBP8L_12iceoryx2_cli6format6FormatENCNvXso_NtNtCs5WK5l2q0aFk_12clap_builder7builder12value_parserINtB2n_15EnumValueParserB1u_ENtB2n_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byCs914H3uZQmS2_9iox2_node.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNvXsf_NtNtCsbqH9stoieM8_5alloc5boxed7convertINtBc_3BoxDNtNtCs8Chj7Szqq0n_4core5error5ErrorNtNtB11_6marker4SyncNtB1y_4SendEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_11descriptionCs914H3uZQmS2_9iox2_node(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @43, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNvXsf_NtNtCsbqH9stoieM8_5alloc5boxed7convertINtBc_3BoxDNtNtCs8Chj7Szqq0n_4core5error5ErrorNtNtB11_6marker4SyncNtB1y_4SendEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_6sourceCs914H3uZQmS2_9iox2_node(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNvXsf_NtNtCsbqH9stoieM8_5alloc5boxed7convertINtBc_3BoxDNtNtCs8Chj7Szqq0n_4core5error5ErrorNtNtB11_6marker4SyncNtB1y_4SendEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_7provideCs914H3uZQmS2_9iox2_node(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #7 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNvXsf_NtNtCsbqH9stoieM8_5alloc5boxed7convertINtBc_3BoxDNtNtCs8Chj7Szqq0n_4core5error5ErrorNtNtB11_6marker4SyncNtB1y_4SendEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_7type_idCs914H3uZQmS2_9iox2_node(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @44, i64 16, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #10

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtCs5WK5l2q0aFk_12clap_builder7builder3str3StrENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5WK5l2q0aFk_12clap_builder7builder3str3StrENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvXs_NtCs1HHhRunvQSa_10serde_yaml3serQINtB5_10SerializerQINtNtCsbqH9stoieM8_5alloc3vec3VechEENtNtCsePUspIjoSTD_10serde_core3ser10Serializer24serialize_newtype_structNtNtB10_6string6StringECs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef align 8 dereferenceable(40), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RINvXs1_NtCs8FOSrxU71ur_3ron3serQINtB6_10SerializerQNtNtCsbqH9stoieM8_5alloc6string6StringENtNtCsePUspIjoSTD_10serde_core3ser10Serializer24serialize_newtype_structBO_ECs914H3uZQmS2_9iox2_node(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72), ptr noalias nofree noundef align 8 dereferenceable(224), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvXs_NtCs1HHhRunvQSa_10serde_yaml3serQINtB4_10SerializerQINtNtCsbqH9stoieM8_5alloc3vec3VechEENtNtCsePUspIjoSTD_10serde_core3ser10Serializer22serialize_unit_variantCs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef align 8 dereferenceable(40), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i32 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs8FOSrxU71ur_3ron3serQINtB5_10SerializerQNtNtCsbqH9stoieM8_5alloc6string6StringENtNtCsePUspIjoSTD_10serde_core3ser10Serializer22serialize_unit_variantCs914H3uZQmS2_9iox2_node(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noalias nofree noundef align 8 dereferenceable(224), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i32 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare hidden { i64, ptr } @_RNvXs_NtCs1HHhRunvQSa_10serde_yaml3serQINtB4_10SerializerQINtNtCsbqH9stoieM8_5alloc3vec3VechEENtNtCsePUspIjoSTD_10serde_core3ser10Serializer16serialize_structCs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef align 8 dereferenceable(40), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvXs5_NtCs1HHhRunvQSa_10serde_yaml3serQINtB6_10SerializerQINtNtCsbqH9stoieM8_5alloc3vec3VechEENtNtCsePUspIjoSTD_10serde_core3ser15SerializeStruct15serialize_fieldNtNtCshX8c74mBP8L_12iceoryx2_cli6output9NodeStateECs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvXs5_NtCs1HHhRunvQSa_10serde_yaml3serQINtB6_10SerializerQINtNtCsbqH9stoieM8_5alloc3vec3VechEENtNtCsePUspIjoSTD_10serde_core3ser15SerializeStruct15serialize_fieldNtNtCshX8c74mBP8L_12iceoryx2_cli6output12NodeIdStringECs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvXs5_NtCs1HHhRunvQSa_10serde_yaml3serQINtB6_10SerializerQINtNtCsbqH9stoieM8_5alloc3vec3VechEENtNtCsePUspIjoSTD_10serde_core3ser15SerializeStruct15serialize_fieldlECs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvXs5_NtCs1HHhRunvQSa_10serde_yaml3serQINtB6_10SerializerQINtNtCsbqH9stoieM8_5alloc3vec3VechEENtNtCsePUspIjoSTD_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCs8Chj7Szqq0n_4core6option6OptionNtNtB11_6string6StringEECs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvXs5_NtCs1HHhRunvQSa_10serde_yaml3serQINtB5_10SerializerQINtNtCsbqH9stoieM8_5alloc3vec3VechEENtNtCsePUspIjoSTD_10serde_core3ser15SerializeStruct3endCs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef align 8 dereferenceable(40)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs8FOSrxU71ur_3ron3serQINtB5_10SerializerQNtNtCsbqH9stoieM8_5alloc6string6StringENtNtCsePUspIjoSTD_10serde_core3ser10Serializer16serialize_structCs914H3uZQmS2_9iox2_node(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noalias nofree noundef align 8 dereferenceable(224), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RINvXs9_NtCs8FOSrxU71ur_3ron3serINtB6_8CompoundQNtNtCsbqH9stoieM8_5alloc6string6StringENtNtCsePUspIjoSTD_10serde_core3ser15SerializeStruct15serialize_fieldNtNtCshX8c74mBP8L_12iceoryx2_cli6output9NodeStateECs914H3uZQmS2_9iox2_node(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RINvXs9_NtCs8FOSrxU71ur_3ron3serINtB6_8CompoundQNtNtCsbqH9stoieM8_5alloc6string6StringENtNtCsePUspIjoSTD_10serde_core3ser15SerializeStruct15serialize_fieldNtNtCshX8c74mBP8L_12iceoryx2_cli6output12NodeIdStringECs914H3uZQmS2_9iox2_node(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RINvXs9_NtCs8FOSrxU71ur_3ron3serINtB6_8CompoundQNtNtCsbqH9stoieM8_5alloc6string6StringENtNtCsePUspIjoSTD_10serde_core3ser15SerializeStruct15serialize_fieldlECs914H3uZQmS2_9iox2_node(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RINvXs9_NtCs8FOSrxU71ur_3ron3serINtB6_8CompoundQNtNtCsbqH9stoieM8_5alloc6string6StringENtNtCsePUspIjoSTD_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCs8Chj7Szqq0n_4core6option6OptionBK_EECs914H3uZQmS2_9iox2_node(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RNvXs9_NtCs8FOSrxU71ur_3ron3serINtB5_8CompoundQNtNtCsbqH9stoieM8_5alloc6string6StringENtNtCsePUspIjoSTD_10serde_core3ser15SerializeStruct3endCs914H3uZQmS2_9iox2_node(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare hidden { i64, ptr } @_RNvXs_NtCs1HHhRunvQSa_10serde_yaml3serQINtB4_10SerializerQINtNtCsbqH9stoieM8_5alloc3vec3VechEENtNtCsePUspIjoSTD_10serde_core3ser10Serializer13serialize_mapCs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef align 8 dereferenceable(40), i64 noundef range(i64 0, 2), i64) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvXs4_NtCs1HHhRunvQSa_10serde_yaml3serQINtB6_10SerializerQINtNtCsbqH9stoieM8_5alloc3vec3VechEENtNtCsePUspIjoSTD_10serde_core3ser12SerializeMap15serialize_entryeNtNtCshX8c74mBP8L_12iceoryx2_cli6output9NodeStateECs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvXs4_NtCs1HHhRunvQSa_10serde_yaml3serQINtB6_10SerializerQINtNtCsbqH9stoieM8_5alloc3vec3VechEENtNtCsePUspIjoSTD_10serde_core3ser12SerializeMap15serialize_entryeNtNtCshX8c74mBP8L_12iceoryx2_cli6output12NodeIdStringECs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvXs4_NtCs1HHhRunvQSa_10serde_yaml3serQINtB6_10SerializerQINtNtCsbqH9stoieM8_5alloc3vec3VechEENtNtCsePUspIjoSTD_10serde_core3ser12SerializeMap15serialize_entryelECs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvXNvNtCsg6ZEkMtNi4J_8iceoryx24node1__NtB5_11NodeDetailsNtNtCsePUspIjoSTD_10serde_core3ser9Serialize9serializeINtNtNtCslvA09IOFa5X_5serde7private3ser17FlatMapSerializerQINtNtCs1HHhRunvQSa_10serde_yaml3ser10SerializerQINtNtCsbqH9stoieM8_5alloc3vec3VechEEEECs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(4936), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvXs4_NtCs1HHhRunvQSa_10serde_yaml3serQINtB5_10SerializerQINtNtCsbqH9stoieM8_5alloc3vec3VechEENtNtCsePUspIjoSTD_10serde_core3ser12SerializeMap3endCs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef align 8 dereferenceable(40)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs8FOSrxU71ur_3ron3serQINtB5_10SerializerQNtNtCsbqH9stoieM8_5alloc6string6StringENtNtCsePUspIjoSTD_10serde_core3ser10Serializer13serialize_mapCs914H3uZQmS2_9iox2_node(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noalias nofree noundef align 8 dereferenceable(224), i64 noundef range(i64 0, 2), i64) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RINvYINtNtCs8FOSrxU71ur_3ron3ser8CompoundQNtNtCsbqH9stoieM8_5alloc6string6StringENtNtCsePUspIjoSTD_10serde_core3ser12SerializeMap15serialize_entryeNtNtCshX8c74mBP8L_12iceoryx2_cli6output9NodeStateECs914H3uZQmS2_9iox2_node(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RINvYINtNtCs8FOSrxU71ur_3ron3ser8CompoundQNtNtCsbqH9stoieM8_5alloc6string6StringENtNtCsePUspIjoSTD_10serde_core3ser12SerializeMap15serialize_entryeNtNtCshX8c74mBP8L_12iceoryx2_cli6output12NodeIdStringECs914H3uZQmS2_9iox2_node(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RINvYINtNtCs8FOSrxU71ur_3ron3ser8CompoundQNtNtCsbqH9stoieM8_5alloc6string6StringENtNtCsePUspIjoSTD_10serde_core3ser12SerializeMap15serialize_entryelECs914H3uZQmS2_9iox2_node(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RINvXNvNtCsg6ZEkMtNi4J_8iceoryx24node1__NtB5_11NodeDetailsNtNtCsePUspIjoSTD_10serde_core3ser9Serialize9serializeINtNtNtCslvA09IOFa5X_5serde7private3ser17FlatMapSerializerINtNtCs8FOSrxU71ur_3ron3ser8CompoundQNtNtCsbqH9stoieM8_5alloc6string6StringEEECs914H3uZQmS2_9iox2_node(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(4936), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RNvXs8_NtCs8FOSrxU71ur_3ron3serINtB5_8CompoundQNtNtCsbqH9stoieM8_5alloc6string6StringENtNtCsePUspIjoSTD_10serde_core3ser12SerializeMap3endCs914H3uZQmS2_9iox2_node(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvYINtNtCsi8sRyZZx6Wq_10serde_json3ser8CompoundQINtNtCsbqH9stoieM8_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsePUspIjoSTD_10serde_core3ser12SerializeMap15serialize_entryeNtNtCshX8c74mBP8L_12iceoryx2_cli6output9NodeStateECs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvYINtNtCsi8sRyZZx6Wq_10serde_json3ser8CompoundQINtNtCsbqH9stoieM8_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsePUspIjoSTD_10serde_core3ser12SerializeMap15serialize_entryeNtNtCshX8c74mBP8L_12iceoryx2_cli6output12NodeIdStringECs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvYINtNtCsi8sRyZZx6Wq_10serde_json3ser8CompoundQINtNtCsbqH9stoieM8_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsePUspIjoSTD_10serde_core3ser12SerializeMap15serialize_entryelECs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvXNvNtCsg6ZEkMtNi4J_8iceoryx24node1__NtB5_11NodeDetailsNtNtCsePUspIjoSTD_10serde_core3ser9Serialize9serializeINtNtNtCslvA09IOFa5X_5serde7private3ser17FlatMapSerializerINtNtCsi8sRyZZx6Wq_10serde_json3ser8CompoundQINtNtCsbqH9stoieM8_5alloc3vec3VechENtB2L_15PrettyFormatterEEECs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(4936), ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvXs5_NtCs1HHhRunvQSa_10serde_yaml3serQINtB6_10SerializerQINtNtCsbqH9stoieM8_5alloc3vec3VechEENtNtCsePUspIjoSTD_10serde_core3ser15SerializeStruct15serialize_fieldjECs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvXs5_NtCs1HHhRunvQSa_10serde_yaml3serQINtB6_10SerializerQINtNtCsbqH9stoieM8_5alloc3vec3VechEENtNtCsePUspIjoSTD_10serde_core3ser15SerializeStruct15serialize_fieldIBX_NtNtCshX8c74mBP8L_12iceoryx2_cli6output14NodeDescriptorEECs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RINvXs9_NtCs8FOSrxU71ur_3ron3serINtB6_8CompoundQNtNtCsbqH9stoieM8_5alloc6string6StringENtNtCsePUspIjoSTD_10serde_core3ser15SerializeStruct15serialize_fieldjECs914H3uZQmS2_9iox2_node(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RINvXs9_NtCs8FOSrxU71ur_3ron3serINtB6_8CompoundQNtNtCsbqH9stoieM8_5alloc6string6StringENtNtCsePUspIjoSTD_10serde_core3ser15SerializeStruct15serialize_fieldINtNtBO_3vec3VecNtNtCshX8c74mBP8L_12iceoryx2_cli6output14NodeDescriptorEECs914H3uZQmS2_9iox2_node(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvYINtNtCsi8sRyZZx6Wq_10serde_json3ser8CompoundQINtNtCsbqH9stoieM8_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsePUspIjoSTD_10serde_core3ser12SerializeMap15serialize_entryeIBN_NtNtCshX8c74mBP8L_12iceoryx2_cli6output14NodeDescriptorEECs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvYINtNtCsi8sRyZZx6Wq_10serde_json3ser8CompoundQINtNtCsbqH9stoieM8_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsePUspIjoSTD_10serde_core3ser12SerializeMap15serialize_entryeINtNtCs8Chj7Szqq0n_4core6option6OptionNtNtBR_6string6StringEECs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvYINtNtCsi8sRyZZx6Wq_10serde_json3ser8CompoundQINtNtCsbqH9stoieM8_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsePUspIjoSTD_10serde_core3ser12SerializeMap15serialize_entryejECs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs914H3uZQmS2_9iox2_node(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #1

; Function Attrs: cold minsize noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsbqH9stoieM8_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #11

; Function Attrs: nounwind nonlazybind uwtable
end_hunk_2
