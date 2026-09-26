Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opendal-rs/original/opendal_core-ba0671c8f10fcf8e.opendal_core.455f99aaf940afe2-cgu.05?download=true
inline.NumInlined: 664
inline.NumDeleted: 271
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
@117 = private unnamed_addr constant [16 x i8] c"deserialize json", align 1
@118 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -7019540855459962279 to ptr), ptr inttoptr (i64 2118876108253254774 to ptr) }>, align 8
@119 = private unnamed_addr constant [6 x i8] c"Buffer", align 1
@120 = private unnamed_addr constant [10 x i8] c"contiguous", align 1
@121 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @120, [8 x i8] c"\0A\00\00\00\00\00\00\00" }>, align 8
@122 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtReNtB6_5Debug3fmtCs5XgW7KoffLW_12opendal_core }>, align 8
@123 = private unnamed_addr constant [4 x i8] c"type", align 1
@124 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsZ_NtNtCsgxBkk5gSRhY_4core3fmt3numjNtB7_5Debug3fmt }>, align 8
@125 = private unnamed_addr constant [4 x i8] c"size", align 1
@126 = private unnamed_addr constant [14 x i8] c"non_contiguous", align 1
@127 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @126, [8 x i8] c"\0E\00\00\00\00\00\00\00" }>, align 8
@128 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRINtNtCs6i54tJFfzR_5alloc4sync3ArcSNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesENtB6_5Debug3fmtCs5XgW7KoffLW_12opendal_core }>, align 8
@129 = private unnamed_addr constant [5 x i8] c"parts", align 1
@130 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRjNtB6_5Debug3fmtCs5XgW7KoffLW_12opendal_core }>, align 8
@131 = private unnamed_addr constant [3 x i8] c"idx", align 1
@132 = private unnamed_addr constant [6 x i8] c"offset", align 1
@133 = private unnamed_addr constant [10 x i8] c"MemoryCore", align 1
@134 = private unnamed_addr constant [51 x i8] c"core/src/types/execute/executors/tokio_executor.rs\00", align 1
@135 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @134, [16 x i8] c"2\00\00\00\00\00\00\00\1C\00\00\00\17\00\00\00" }>, align 8
@136 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00", ptr @_RNvXNtCs2GTOvRHBi2K_9quick_xml6escapeNtB2_17ParseCharRefErrorNtNtCsgxBkk5gSRhY_4core3fmt7Display3fmt }>, align 8
@137 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00", ptr @_RNvXs3_NtCs2GTOvRHBi2K_9quick_xml6escapeNtB5_17ParseCharRefErrorNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt, ptr @_RNvXNtCs2GTOvRHBi2K_9quick_xml6escapeNtB2_17ParseCharRefErrorNtNtCsgxBkk5gSRhY_4core3fmt7Display3fmt, ptr @136, ptr @_RNvXs_NtCs2GTOvRHBi2K_9quick_xml6escapeNtB4_17ParseCharRefErrorNtNtCsgxBkk5gSRhY_4core5error5Error6source, ptr @_RNvYNtNtCs2GTOvRHBi2K_9quick_xml6escape17ParseCharRefErrorNtNtCsgxBkk5gSRhY_4core5error5Error7type_idCs5XgW7KoffLW_12opendal_core, ptr @_RNvYNtNtCs2GTOvRHBi2K_9quick_xml6escape17ParseCharRefErrorNtNtCsgxBkk5gSRhY_4core5error5Error11descriptionCs5XgW7KoffLW_12opendal_core, ptr @_RNvYNtNtCs2GTOvRHBi2K_9quick_xml6escape17ParseCharRefErrorNtNtCsgxBkk5gSRhY_4core5error5Error5causeCs5XgW7KoffLW_12opendal_core, ptr @_RNvYNtNtCs2GTOvRHBi2K_9quick_xml6escape17ParseCharRefErrorNtNtCsgxBkk5gSRhY_4core5error5Error7provideCs5XgW7KoffLW_12opendal_core }>, align 8
@138 = private unnamed_addr constant [124 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/futures-util-0.3.33/src/future/future/remote_handle.rs\00", align 1
@139 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @138, [16 x i8] c"{\00\00\00\00\00\00\00c\00\00\00\1D\00\00\00" }>, align 8
@140 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @138, [16 x i8] c"{\00\00\00\00\00\00\00n\00\00\00\1D\00\00\00" }>, align 8
@141 = private unnamed_addr constant [14 x i8] c"UnexpectedSign", align 1
@142 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRNtNtNtB8_3num5error13ParseIntErrorNtB6_5Debug3fmtCs5XgW7KoffLW_12opendal_core }>, align 8
@143 = private unnamed_addr constant [13 x i8] c"InvalidNumber", align 1
@144 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRmNtB6_5Debug3fmtCs5XgW7KoffLW_12opendal_core }>, align 8
@145 = private unnamed_addr constant [16 x i8] c"InvalidCodepoint", align 1
@146 = private unnamed_addr constant [16 x i8] c"IllegalCharacter", align 1
@147 = private unnamed_addr constant [42 x i8] c"!cannot advance past `remaining`: \C0\04 <= \C0\00", align 1
@148 = private unnamed_addr constant [95 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/bytes-1.12.1/src/bytes.rs\00", align 1
@149 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @148, [16 x i8] c"^\00\00\00\00\00\00\00\B6\02\00\00\09\00\00\00" }>, align 8
@150 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvYNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferNtNtNtNtNtBM_3raw3oio4read3api10ReadStream8read_all0EBM_, [16 x i8] c"8\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNCNvYNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferNtNtNtNtNtBa_3raw3oio4read3api10ReadStream8read_all0Ba_ }>, align 8
@151 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs3_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3apiNtNtNtBR_5types6buffer6BufferNtBJ_10ReadStream4read0EBR_, [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNCNvXs3_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3apiNtNtNtBf_5types6buffer6BufferNtB7_10ReadStream4read0Bf_ }>, align 8
@152 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRNtNtNtB8_3str5error9Utf8ErrorNtB6_5Debug3fmtCs5XgW7KoffLW_12opendal_core }>, align 8
@153 = private unnamed_addr constant [4 x i8] c"Utf8", align 1
@154 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtB4_2io5error5ErrorEECs5XgW7KoffLW_12opendal_core, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsV_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcNtNtNtCsgxBkk5gSRhY_4core2io5error5ErrorENtNtBL_3fmt7Display3fmtCs5XgW7KoffLW_12opendal_core }>, align 8
@155 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtB4_2io5error5ErrorEECs5XgW7KoffLW_12opendal_core, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsW_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcNtNtNtCsgxBkk5gSRhY_4core2io5error5ErrorENtNtBL_3fmt5Debug3fmtCs5XgW7KoffLW_12opendal_core, ptr @_RNvXsV_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcNtNtNtCsgxBkk5gSRhY_4core2io5error5ErrorENtNtBL_3fmt7Display3fmtCs5XgW7KoffLW_12opendal_core, ptr @154, ptr @_RNvXs1o_NtCs6i54tJFfzR_5alloc4syncINtB6_3ArcNtNtNtCsgxBkk5gSRhY_4core2io5error5ErrorENtNtBM_5error5Error6sourceCs5XgW7KoffLW_12opendal_core, ptr @_RNvYINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtCsgxBkk5gSRhY_4core2io5error5ErrorENtNtBF_5error5Error7type_idCs5XgW7KoffLW_12opendal_core, ptr @_RNvYINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtCsgxBkk5gSRhY_4core2io5error5ErrorENtNtBF_5error5Error11descriptionCs5XgW7KoffLW_12opendal_core, ptr @_RNvXs1o_NtCs6i54tJFfzR_5alloc4syncINtB6_3ArcNtNtNtCsgxBkk5gSRhY_4core2io5error5ErrorENtNtBM_5error5Error5causeCs5XgW7KoffLW_12opendal_core, ptr @_RNvXs1o_NtCs6i54tJFfzR_5alloc4syncINtB6_3ArcNtNtNtCsgxBkk5gSRhY_4core2io5error5ErrorENtNtBM_5error5Error7provideCs5XgW7KoffLW_12opendal_core }>, align 8
@156 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtNtCsgxBkk5gSRhY_4core3ops5rangeINtB4_5RangejENtNtB8_3fmt5Debug3fmtCs5XgW7KoffLW_12opendal_core }>, align 8
@157 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRNtNtCs6i54tJFfzR_5alloc6string6StringNtB6_5Debug3fmtCs5XgW7KoffLW_12opendal_core }>, align 8
@158 = private unnamed_addr constant [18 x i8] c"UnrecognizedEntity", align 1
@159 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRINtNtNtB8_3ops5range5RangejENtB6_5Debug3fmtCs5XgW7KoffLW_12opendal_core }>, align 8
@160 = private unnamed_addr constant [18 x i8] c"UnterminatedEntity", align 1
@161 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRNtNtCs2GTOvRHBi2K_9quick_xml6escape17ParseCharRefErrorNtB6_5Debug3fmtCs5XgW7KoffLW_12opendal_core }>, align 8
@162 = private unnamed_addr constant [14 x i8] c"InvalidCharRef", align 1
@163 = private unnamed_addr constant [21 x i8] c"TooManyNestedEntities", align 1
@164 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRINtNtB8_6option6OptionhENtB6_5Debug3fmtCs5XgW7KoffLW_12opendal_core }>, align 8
@165 = private unnamed_addr constant [9 x i8] c"Utf8Error", align 1
@166 = private unnamed_addr constant [11 x i8] c"valid_up_to", align 1
@167 = private unnamed_addr constant [9 x i8] c"error_len", align 1
@168 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRuNtB6_5Debug3fmtCs5XgW7KoffLW_12opendal_core }>, align 8
@169 = private unnamed_addr constant [10 x i8] c"ToStrError", align 1
@170 = private unnamed_addr constant [5 x i8] c"_priv", align 1
@171 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtNtCsgxBkk5gSRhY_4core3str5errorNtB4_9Utf8ErrorNtNtB8_3fmt7Display3fmt }>, align 8
@172 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs9_NtNtCsgxBkk5gSRhY_4core3str5errorNtB5_9Utf8ErrorNtNtB9_3fmt5Debug3fmt, ptr @_RNvXs_NtNtCsgxBkk5gSRhY_4core3str5errorNtB4_9Utf8ErrorNtNtB8_3fmt7Display3fmt, ptr @171, ptr @_RNvYNtNtNtCsgxBkk5gSRhY_4core3str5error9Utf8ErrorNtNtB8_5error5Error6sourceCs5XgW7KoffLW_12opendal_core, ptr @_RNvYNtNtNtCsgxBkk5gSRhY_4core3str5error9Utf8ErrorNtNtB8_5error5Error7type_idCs5XgW7KoffLW_12opendal_core, ptr @_RNvYNtNtNtCsgxBkk5gSRhY_4core3str5error9Utf8ErrorNtNtB8_5error5Error11descriptionCs5XgW7KoffLW_12opendal_core, ptr @_RNvYNtNtNtCsgxBkk5gSRhY_4core3str5error9Utf8ErrorNtNtB8_5error5Error5causeCs5XgW7KoffLW_12opendal_core, ptr @_RNvYNtNtNtCsgxBkk5gSRhY_4core3str5error9Utf8ErrorNtNtB8_5error5Error7provideCs5XgW7KoffLW_12opendal_core }>, align 8
@173 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs2GTOvRHBi2K_9quick_xml6errors5ErrorECs5XgW7KoffLW_12opendal_core, [16 x i8] c"0\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsa_NtCs2GTOvRHBi2K_9quick_xml6errorsNtB5_5ErrorNtNtCsgxBkk5gSRhY_4core3fmt7Display3fmt }>, align 8
@174 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs2GTOvRHBi2K_9quick_xml6errors5ErrorECs5XgW7KoffLW_12opendal_core, [16 x i8] c"0\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsp_NtCs2GTOvRHBi2K_9quick_xml6errorsNtB5_5ErrorNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt, ptr @_RNvXsa_NtCs2GTOvRHBi2K_9quick_xml6errorsNtB5_5ErrorNtNtCsgxBkk5gSRhY_4core3fmt7Display3fmt, ptr @173, ptr @_RNvXsb_NtCs2GTOvRHBi2K_9quick_xml6errorsNtB5_5ErrorNtNtCsgxBkk5gSRhY_4core5error5Error6source, ptr @_RNvYNtNtCs2GTOvRHBi2K_9quick_xml6errors5ErrorNtNtCsgxBkk5gSRhY_4core5error5Error7type_idCs5XgW7KoffLW_12opendal_core, ptr @_RNvYNtNtCs2GTOvRHBi2K_9quick_xml6errors5ErrorNtNtCsgxBkk5gSRhY_4core5error5Error11descriptionCs5XgW7KoffLW_12opendal_core, ptr @_RNvYNtNtCs2GTOvRHBi2K_9quick_xml6errors5ErrorNtNtCsgxBkk5gSRhY_4core5error5Error5causeCs5XgW7KoffLW_12opendal_core, ptr @_RNvYNtNtCs2GTOvRHBi2K_9quick_xml6errors5ErrorNtNtCsgxBkk5gSRhY_4core5error5Error7provideCs5XgW7KoffLW_12opendal_core }>, align 8
@175 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXNtCsgxBkk5gSRhY_4core3anyNtNtCsK9IUdK075C_15futures_channel7oneshot8CanceledNtB2_3Any7type_idCs5XgW7KoffLW_12opendal_core }>, align 8
@176 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXNtCs2GTOvRHBi2K_9quick_xml6errorsNtB2_11SyntaxErrorNtNtCsgxBkk5gSRhY_4core3fmt7Display3fmt }>, align 8
@177 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsf_NtCs2GTOvRHBi2K_9quick_xml6errorsNtB5_11SyntaxErrorNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt, ptr @_RNvXNtCs2GTOvRHBi2K_9quick_xml6errorsNtB2_11SyntaxErrorNtNtCsgxBkk5gSRhY_4core3fmt7Display3fmt, ptr @176, ptr @_RNvYNtNtCs2GTOvRHBi2K_9quick_xml6errors11SyntaxErrorNtNtCsgxBkk5gSRhY_4core5error5Error6sourceCs5XgW7KoffLW_12opendal_core, ptr @_RNvYNtNtCs2GTOvRHBi2K_9quick_xml6errors11SyntaxErrorNtNtCsgxBkk5gSRhY_4core5error5Error7type_idCs5XgW7KoffLW_12opendal_core, ptr @_RNvYNtNtCs2GTOvRHBi2K_9quick_xml6errors11SyntaxErrorNtNtCsgxBkk5gSRhY_4core5error5Error11descriptionCs5XgW7KoffLW_12opendal_core, ptr @_RNvYNtNtCs2GTOvRHBi2K_9quick_xml6errors11SyntaxErrorNtNtCsgxBkk5gSRhY_4core5error5Error5causeCs5XgW7KoffLW_12opendal_core, ptr @_RNvYNtNtCs2GTOvRHBi2K_9quick_xml6errors11SyntaxErrorNtNtCsgxBkk5gSRhY_4core5error5Error7provideCs5XgW7KoffLW_12opendal_core }>, align 8
@178 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs2GTOvRHBi2K_9quick_xml6errors14IllFormedErrorECs5XgW7KoffLW_12opendal_core, [16 x i8] c"0\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs0_NtCs2GTOvRHBi2K_9quick_xml6errorsNtB5_14IllFormedErrorNtNtCsgxBkk5gSRhY_4core3fmt7Display3fmt }>, align 8
@179 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs2GTOvRHBi2K_9quick_xml6errors14IllFormedErrorECs5XgW7KoffLW_12opendal_core, [16 x i8] c"0\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsk_NtCs2GTOvRHBi2K_9quick_xml6errorsNtB5_14IllFormedErrorNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt, ptr @_RNvXs0_NtCs2GTOvRHBi2K_9quick_xml6errorsNtB5_14IllFormedErrorNtNtCsgxBkk5gSRhY_4core3fmt7Display3fmt, ptr @178, ptr @_RNvYNtNtCs2GTOvRHBi2K_9quick_xml6errors14IllFormedErrorNtNtCsgxBkk5gSRhY_4core5error5Error6sourceCs5XgW7KoffLW_12opendal_core, ptr @_RNvYNtNtCs2GTOvRHBi2K_9quick_xml6errors14IllFormedErrorNtNtCsgxBkk5gSRhY_4core5error5Error7type_idCs5XgW7KoffLW_12opendal_core, ptr @_RNvYNtNtCs2GTOvRHBi2K_9quick_xml6errors14IllFormedErrorNtNtCsgxBkk5gSRhY_4core5error5Error11descriptionCs5XgW7KoffLW_12opendal_core, ptr @_RNvYNtNtCs2GTOvRHBi2K_9quick_xml6errors14IllFormedErrorNtNtCsgxBkk5gSRhY_4core5error5Error5causeCs5XgW7KoffLW_12opendal_core, ptr @_RNvYNtNtCs2GTOvRHBi2K_9quick_xml6errors14IllFormedErrorNtNtCsgxBkk5gSRhY_4core5error5Error7provideCs5XgW7KoffLW_12opendal_core }>, align 8
@180 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs8_NtNtCs2GTOvRHBi2K_9quick_xml6events10attributesNtB5_9AttrErrorNtNtCsgxBkk5gSRhY_4core3fmt7Display3fmt }>, align 8
@181 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsm_NtNtCs2GTOvRHBi2K_9quick_xml6events10attributesNtB5_9AttrErrorNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt, ptr @_RNvXs8_NtNtCs2GTOvRHBi2K_9quick_xml6events10attributesNtB5_9AttrErrorNtNtCsgxBkk5gSRhY_4core3fmt7Display3fmt, ptr @180, ptr @_RNvYNtNtNtCs2GTOvRHBi2K_9quick_xml6events10attributes9AttrErrorNtNtCsgxBkk5gSRhY_4core5error5Error6sourceCs5XgW7KoffLW_12opendal_core, ptr @_RNvYNtNtNtCs2GTOvRHBi2K_9quick_xml6events10attributes9AttrErrorNtNtCsgxBkk5gSRhY_4core5error5Error7type_idCs5XgW7KoffLW_12opendal_core, ptr @_RNvYNtNtNtCs2GTOvRHBi2K_9quick_xml6events10attributes9AttrErrorNtNtCsgxBkk5gSRhY_4core5error5Error11descriptionCs5XgW7KoffLW_12opendal_core, ptr @_RNvYNtNtNtCs2GTOvRHBi2K_9quick_xml6events10attributes9AttrErrorNtNtCsgxBkk5gSRhY_4core5error5Error5causeCs5XgW7KoffLW_12opendal_core, ptr @_RNvYNtNtNtCs2GTOvRHBi2K_9quick_xml6events10attributes9AttrErrorNtNtCsgxBkk5gSRhY_4core5error5Error7provideCs5XgW7KoffLW_12opendal_core }>, align 8
@182 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs0_NtCs2GTOvRHBi2K_9quick_xml8encodingNtB5_13EncodingErrorNtNtCsgxBkk5gSRhY_4core3fmt7Display3fmt }>, align 8
@183 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs5_NtCs2GTOvRHBi2K_9quick_xml8encodingNtB5_13EncodingErrorNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt, ptr @_RNvXs0_NtCs2GTOvRHBi2K_9quick_xml8encodingNtB5_13EncodingErrorNtNtCsgxBkk5gSRhY_4core3fmt7Display3fmt, ptr @182, ptr @_RNvXs_NtCs2GTOvRHBi2K_9quick_xml8encodingNtB4_13EncodingErrorNtNtCsgxBkk5gSRhY_4core5error5Error6source, ptr @_RNvYNtNtCs2GTOvRHBi2K_9quick_xml8encoding13EncodingErrorNtNtCsgxBkk5gSRhY_4core5error5Error7type_idCs5XgW7KoffLW_12opendal_core, ptr @_RNvYNtNtCs2GTOvRHBi2K_9quick_xml8encoding13EncodingErrorNtNtCsgxBkk5gSRhY_4core5error5Error11descriptionCs5XgW7KoffLW_12opendal_core, ptr @_RNvYNtNtCs2GTOvRHBi2K_9quick_xml8encoding13EncodingErrorNtNtCsgxBkk5gSRhY_4core5error5Error5causeCs5XgW7KoffLW_12opendal_core, ptr @_RNvYNtNtCs2GTOvRHBi2K_9quick_xml8encoding13EncodingErrorNtNtCsgxBkk5gSRhY_4core5error5Error7provideCs5XgW7KoffLW_12opendal_core }>, align 8
@184 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs2GTOvRHBi2K_9quick_xml6escape11EscapeErrorECs5XgW7KoffLW_12opendal_core, [16 x i8] c"(\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs0_NtCs2GTOvRHBi2K_9quick_xml6escapeNtB5_11EscapeErrorNtNtCsgxBkk5gSRhY_4core3fmt7Display3fmt }>, align 8
@185 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs2GTOvRHBi2K_9quick_xml6escape11EscapeErrorECs5XgW7KoffLW_12opendal_core, [16 x i8] c"(\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs7_NtCs2GTOvRHBi2K_9quick_xml6escapeNtB5_11EscapeErrorNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt, ptr @_RNvXs0_NtCs2GTOvRHBi2K_9quick_xml6escapeNtB5_11EscapeErrorNtNtCsgxBkk5gSRhY_4core3fmt7Display3fmt, ptr @184, ptr @_RNvXs1_NtCs2GTOvRHBi2K_9quick_xml6escapeNtB5_11EscapeErrorNtNtCsgxBkk5gSRhY_4core5error5Error6source, ptr @_RNvYNtNtCs2GTOvRHBi2K_9quick_xml6escape11EscapeErrorNtNtCsgxBkk5gSRhY_4core5error5Error7type_idCs5XgW7KoffLW_12opendal_core, ptr @_RNvYNtNtCs2GTOvRHBi2K_9quick_xml6escape11EscapeErrorNtNtCsgxBkk5gSRhY_4core5error5Error11descriptionCs5XgW7KoffLW_12opendal_core, ptr @_RNvYNtNtCs2GTOvRHBi2K_9quick_xml6escape11EscapeErrorNtNtCsgxBkk5gSRhY_4core5error5Error5causeCs5XgW7KoffLW_12opendal_core, ptr @_RNvYNtNtCs2GTOvRHBi2K_9quick_xml6escape11EscapeErrorNtNtCsgxBkk5gSRhY_4core5error5Error7provideCs5XgW7KoffLW_12opendal_core }>, align 8
@186 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs2GTOvRHBi2K_9quick_xml4name14NamespaceErrorECs5XgW7KoffLW_12opendal_core, [16 x i8] c" \00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNtCs2GTOvRHBi2K_9quick_xml4nameNtB2_14NamespaceErrorNtNtCsgxBkk5gSRhY_4core3fmt7Display3fmt }>, align 8
@187 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs2GTOvRHBi2K_9quick_xml4name14NamespaceErrorECs5XgW7KoffLW_12opendal_core, [16 x i8] c" \00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXso_NtCs2GTOvRHBi2K_9quick_xml4nameNtB5_14NamespaceErrorNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt, ptr @_RNvXNtCs2GTOvRHBi2K_9quick_xml4nameNtB2_14NamespaceErrorNtNtCsgxBkk5gSRhY_4core3fmt7Display3fmt, ptr @186, ptr @_RNvYNtNtCs2GTOvRHBi2K_9quick_xml4name14NamespaceErrorNtNtCsgxBkk5gSRhY_4core5error5Error6sourceCs5XgW7KoffLW_12opendal_core, ptr @_RNvYNtNtCs2GTOvRHBi2K_9quick_xml4name14NamespaceErrorNtNtCsgxBkk5gSRhY_4core5error5Error7type_idCs5XgW7KoffLW_12opendal_core, ptr @_RNvYNtNtCs2GTOvRHBi2K_9quick_xml4name14NamespaceErrorNtNtCsgxBkk5gSRhY_4core5error5Error11descriptionCs5XgW7KoffLW_12opendal_core, ptr @_RNvYNtNtCs2GTOvRHBi2K_9quick_xml4name14NamespaceErrorNtNtCsgxBkk5gSRhY_4core5error5Error5causeCs5XgW7KoffLW_12opendal_core, ptr @_RNvYNtNtCs2GTOvRHBi2K_9quick_xml4name14NamespaceErrorNtNtCsgxBkk5gSRhY_4core5error5Error7provideCs5XgW7KoffLW_12opendal_core }>, align 8
@188 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @14, [16 x i8] c"\18\00\00\00\00\00\00\00\22\02\00\00\1E\00\00\00" }>, align 8
@189 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @14, [16 x i8] c"\18\00\00\00\00\00\00\00$\02\00\00\1D\00\00\00" }>, align 8
@190 = private unnamed_addr constant [50 x i8] c"\14cannot advance past \C0\0D bytes, only \C0\0B bytes left\00", align 1
@191 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @14, [16 x i8] c"\18\00\00\00\00\00\00\00Z\02\00\00\11\00\00\00" }>, align 8
@192 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @14, [16 x i8] c"\18\00\00\00\00\00\00\00c\02\00\00$\00\00\00" }>, align 8
@193 = private unnamed_addr constant [6 x i8] c"Custom", align 1
@194 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRNtNtCs2GTOvRHBi2K_9quick_xml6errors5ErrorNtB6_5Debug3fmtCs5XgW7KoffLW_12opendal_core }>, align 8
@195 = private unnamed_addr constant [10 x i8] c"InvalidXml", align 1
@196 = private unnamed_addr constant [10 x i8] c"KeyNotRead", align 1
@197 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRINtNtCs6i54tJFfzR_5alloc3vec3VechENtB6_5Debug3fmtCs5XgW7KoffLW_12opendal_core }>, align 8
@198 = private unnamed_addr constant [15 x i8] c"UnexpectedStart", align 1
@199 = private unnamed_addr constant [13 x i8] c"UnexpectedEof", align 1
@200 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRINtNtNtB8_3num7nonzero7NonZerojENtB6_5Debug3fmtCs5XgW7KoffLW_12opendal_core }>, align 8
@201 = private unnamed_addr constant [13 x i8] c"TooManyEvents", align 1
@202 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @14, [16 x i8] c"\18\00\00\00\00\00\00\00\8E\02\00\00\1E\00\00\00" }>, align 8
@203 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs5XgW7KoffLW_12opendal_core }>, align 8
@204 = private unnamed_addr constant [13 x i8] c"ParseIntError", align 1
@205 = private unnamed_addr constant [4 x i8] c"kind", align 1
@206 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtB8_2io5error5ErrorENtB6_5Debug3fmtCs5XgW7KoffLW_12opendal_core }>, align 8
@207 = private unnamed_addr constant [2 x i8] c"Io", align 1
@208 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRNtB6_5ErrorNtB6_5Debug3fmtCs5XgW7KoffLW_12opendal_core }>, align 8
@209 = private unnamed_addr constant [3 x i8] c"Fmt", align 1
@210 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRINtNtCs6i54tJFfzR_5alloc6borrow3CoweENtB6_5Debug3fmtCs5XgW7KoffLW_12opendal_core }>, align 8
@211 = private unnamed_addr constant [11 x i8] c"Unsupported", align 1
@212 = private unnamed_addr constant [12 x i8] c"NonEncodable", align 1
@213 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @14, [16 x i8] c"\18\00\00\00\00\00\00\00\BF\02\00\00\14\00\00\00" }>, align 8
@214 = private unnamed_addr constant [17 x i8] c"InvalidBangMarkup", align 1
@215 = private unnamed_addr constant [10 x i8] c"UnclosedPI", align 1
@216 = private unnamed_addr constant [15 x i8] c"UnclosedXmlDecl", align 1
@217 = private unnamed_addr constant [15 x i8] c"UnclosedComment", align 1
@218 = private unnamed_addr constant [15 x i8] c"UnclosedDoctype", align 1
@219 = private unnamed_addr constant [13 x i8] c"UnclosedCData", align 1
@220 = private unnamed_addr constant [11 x i8] c"UnclosedTag", align 1
@221 = private unnamed_addr constant [34 x i8] c"UnclosedSingleQuotedAttributeValue", align 1
@222 = private unnamed_addr constant [34 x i8] c"UnclosedDoubleQuotedAttributeValue", align 1
@223 = private unnamed_addr constant [18 x i8] c"seek out of bounds", align 1
@224 = private unnamed_addr constant [35 x i8] c"invalid seek to a negative position", align 1
@225 = private unnamed_addr constant [9 x i8] c"EmptyHost", align 1
@226 = private unnamed_addr constant [9 x i8] c"IdnaError", align 1
@227 = private unnamed_addr constant [11 x i8] c"InvalidPort", align 1
@228 = private unnamed_addr constant [18 x i8] c"InvalidIpv4Address", align 1
@229 = private unnamed_addr constant [18 x i8] c"InvalidIpv6Address", align 1
@230 = private unnamed_addr constant [22 x i8] c"InvalidDomainCharacter", align 1
@231 = private unnamed_addr constant [22 x i8] c"RelativeUrlWithoutBase", align 1
@232 = private unnamed_addr constant [32 x i8] c"RelativeUrlWithCannotBeABaseBase", align 1
@233 = private unnamed_addr constant [25 x i8] c"SetHostOnCannotBeABaseUrl", align 1
@234 = private unnamed_addr constant [8 x i8] c"Overflow", align 1
@235 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @14, [16 x i8] c"\18\00\00\00\00\00\00\00\02\03\00\00\1E\00\00\00" }>, align 8
@236 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @14, [16 x i8] c"\18\00\00\00\00\00\00\00\04\03\00\00\1D\00\00\00" }>, align 8
@237 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @14, [16 x i8] c"\18\00\00\00\00\00\00\00'\03\00\00 \00\00\00" }>, align 8
@238 = private unnamed_addr constant [5 x i8] c"Empty", align 1
@239 = private unnamed_addr constant [12 x i8] c"InvalidDigit", align 1
@240 = private unnamed_addr constant [11 x i8] c"PosOverflow", align 1
@241 = private unnamed_addr constant [11 x i8] c"NegOverflow", align 1
@242 = private unnamed_addr constant [4 x i8] c"Zero", align 1
@243 = private unnamed_addr constant [14 x i8] c"NotAPowerOfTwo", align 1
@244 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRINtNtB8_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringENtB6_5Debug3fmtCs5XgW7KoffLW_12opendal_core }>, align 8
@245 = private unnamed_addr constant [18 x i8] c"MissingDeclVersion", align 1
@246 = private unnamed_addr constant [14 x i8] c"UnknownVersion", align 1
@247 = private unnamed_addr constant [18 x i8] c"MissingDoctypeName", align 1
@248 = private unnamed_addr constant [13 x i8] c"MissingEndTag", align 1
@249 = private unnamed_addr constant [15 x i8] c"UnmatchedEndTag", align 1
@250 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsr_NtCs6i54tJFfzR_5alloc6stringNtB5_6StringNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt }>, align 8
@251 = private unnamed_addr constant [16 x i8] c"MismatchedEndTag", align 1
@252 = private unnamed_addr constant [8 x i8] c"expected", align 1
@253 = private unnamed_addr constant [5 x i8] c"found", align 1
@254 = private unnamed_addr constant [21 x i8] c"DoubleHyphenInComment", align 1
@255 = private unnamed_addr constant [17 x i8] c"UnclosedReference", align 1
@256 = private unnamed_addr constant [10 x i8] c"ExpectedEq", align 1
@257 = private unnamed_addr constant [13 x i8] c"ExpectedValue", align 1
@258 = private unnamed_addr constant [13 x i8] c"UnquotedValue", align 1
@259 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRhNtB6_5Debug3fmtCs5XgW7KoffLW_12opendal_core }>, align 8
@260 = private unnamed_addr constant [13 x i8] c"ExpectedQuote", align 1
@261 = private unnamed_addr constant [10 x i8] c"Duplicated", align 1
@262 = private unnamed_addr constant [13 x i8] c"UnknownPrefix", align 1
@263 = private unnamed_addr constant [20 x i8] c"InvalidXmlPrefixBind", align 1
@264 = private unnamed_addr constant [22 x i8] c"InvalidXmlnsPrefixBind", align 1
@265 = private unnamed_addr constant [19 x i8] c"InvalidPrefixForXml", align 1
@266 = private unnamed_addr constant [21 x i8] c"InvalidPrefixForXmlns", align 1
@267 = private unnamed_addr constant [19 x i8] c"TooManyDeclarations", align 1
@268 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRNtNtCs2GTOvRHBi2K_9quick_xml6errors11SyntaxErrorNtB6_5Debug3fmtCs5XgW7KoffLW_12opendal_core }>, align 8
@269 = private unnamed_addr constant [6 x i8] c"Syntax", align 1
@270 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRNtNtCs2GTOvRHBi2K_9quick_xml6errors14IllFormedErrorNtB6_5Debug3fmtCs5XgW7KoffLW_12opendal_core }>, align 8
@271 = private unnamed_addr constant [9 x i8] c"IllFormed", align 1
@272 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRNtNtNtCs2GTOvRHBi2K_9quick_xml6events10attributes9AttrErrorNtB6_5Debug3fmtCs5XgW7KoffLW_12opendal_core }>, align 8
@273 = private unnamed_addr constant [11 x i8] c"InvalidAttr", align 1
@274 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRNtNtCs2GTOvRHBi2K_9quick_xml8encoding13EncodingErrorNtB6_5Debug3fmtCs5XgW7KoffLW_12opendal_core }>, align 8
@275 = private unnamed_addr constant [8 x i8] c"Encoding", align 1
@276 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRNtNtCs2GTOvRHBi2K_9quick_xml6escape11EscapeErrorNtB6_5Debug3fmtCs5XgW7KoffLW_12opendal_core }>, align 8
@277 = private unnamed_addr constant [6 x i8] c"Escape", align 1
@278 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRNtNtCs2GTOvRHBi2K_9quick_xml4name14NamespaceErrorNtB6_5Debug3fmtCs5XgW7KoffLW_12opendal_core }>, align 8
@279 = private unnamed_addr constant [9 x i8] c"Namespace", align 1
@280 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRNtNtCs76KlaVGnJsc_4http3uri9ErrorKindNtB6_5Debug3fmtCs5XgW7KoffLW_12opendal_core }>, align 8
@281 = private unnamed_addr constant [10 x i8] c"InvalidUri", align 1
@282 = private unnamed_addr constant [40 x i8] c"description() is deprecated; use Display", align 1
@283 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 5494511953620010354 to ptr), ptr inttoptr (i64 -4776343494102263569 to ptr) }>, align 8
@284 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 1063907742594280704 to ptr), ptr inttoptr (i64 7545828684848696028 to ptr) }>, align 8
@285 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -3199995276098229613 to ptr), ptr inttoptr (i64 -7931708608872835592 to ptr) }>, align 8
@286 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 6612041147075899116 to ptr), ptr inttoptr (i64 -708161387503766613 to ptr) }>, align 8
@287 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -7266947339266083124 to ptr), ptr inttoptr (i64 1754576511291843616 to ptr) }>, align 8
@288 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 5563929419595574345 to ptr), ptr inttoptr (i64 8478964974589150749 to ptr) }>, align 8
@289 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 6723075258332300085 to ptr), ptr inttoptr (i64 -853682389614199312 to ptr) }>, align 8
@290 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -6325931233724359252 to ptr), ptr inttoptr (i64 -4565625303631267914 to ptr) }>, align 8
@291 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 6281415163887597621 to ptr), ptr inttoptr (i64 -6633219615383724753 to ptr) }>, align 8
@292 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -2580202938027771381 to ptr), ptr inttoptr (i64 8091106675726490040 to ptr) }>, align 8
@293 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 1032393129550380648 to ptr), ptr inttoptr (i64 195381440130390999 to ptr) }>, align 8
@294 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -8542294606608648382 to ptr), ptr inttoptr (i64 8436525968986732068 to ptr) }>, align 8
@295 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -6765758310508234244 to ptr), ptr inttoptr (i64 -1016404336702105799 to ptr) }>, align 8
@296 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -7501252997736571147 to ptr), ptr inttoptr (i64 2296799922701359133 to ptr) }>, align 8
@297 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 4847104010753748550 to ptr), ptr inttoptr (i64 3349208512815379076 to ptr) }>, align 8
@298 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 4324997103406655370 to ptr), ptr inttoptr (i64 6833478763383864152 to ptr) }>, align 8
@299 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -3751932670808681989 to ptr), ptr inttoptr (i64 4455666743259683992 to ptr) }>, align 8
@300 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -583232365365972250 to ptr), ptr inttoptr (i64 9067768707089221732 to ptr) }>, align 8
@301 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -403654964752858238 to ptr), ptr inttoptr (i64 -5233714507862534101 to ptr) }>, align 8
@302 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -9168849354755389394 to ptr), ptr inttoptr (i64 -2716178000418447667 to ptr) }>, align 8
@303 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 6624478150216967101 to ptr), ptr inttoptr (i64 -3305720412680789372 to ptr) }>, align 8
@304 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 2668888908176936248 to ptr), ptr inttoptr (i64 -3467376049077564261 to ptr) }>, align 8
@305 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 2988490488236129369 to ptr), ptr inttoptr (i64 -3247653222631903442 to ptr) }>, align 8
@306 = private unnamed_addr constant [102 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/bytes-1.12.1/src/buf/buf_impl.rs\00", align 1
@307 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @306, [16 x i8] c"e\00\00\00\00\00\00\00\9A\04\00\00\18\00\00\00" }>, align 8
@308 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 390996575351875696 to ptr), ptr inttoptr (i64 8160234768363920918 to ptr) }>, align 8
@switch.table._RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs5XgW7KoffLW_12opendal_core = private unnamed_addr constant [6 x i8] c"\05\0C\0B\0B\04\0E", align 8
@switch.table._RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs5XgW7KoffLW_12opendal_core.126 = private unnamed_addr constant [6 x ptr] [ptr @238, ptr @239, ptr @240, ptr @241, ptr @242, ptr @243], align 8
@switch.table._RNvXsf_NtCs2GTOvRHBi2K_9quick_xml6errorsNtB5_11SyntaxErrorNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt = private unnamed_addr constant [9 x i8] c"\11\0A\0F\0F\0F\0D\0B\22\22", align 8
@switch.table._RNvXsf_NtCs2GTOvRHBi2K_9quick_xml6errorsNtB5_11SyntaxErrorNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt.127 = private unnamed_addr constant [9 x ptr] [ptr @214, ptr @215, ptr @216, ptr @217, ptr @218, ptr @219, ptr @220, ptr @221, ptr @222], align 8
@switch.table._RNvXsg_NtCs8HcOsDT3sMt_3url6parserNtB5_10ParseErrorNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt = private unnamed_addr constant [10 x i8] c"\09\09\0B\12\12\16\16 \19\08", align 8
@switch.table._RNvXsg_NtCs8HcOsDT3sMt_3url6parserNtB5_10ParseErrorNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt.128 = private unnamed_addr constant [10 x ptr] [ptr @225, ptr @226, ptr @227, ptr @228, ptr @229, ptr @230, ptr @231, ptr @232, ptr @233, ptr @234], align 8

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RINvMNtCselJpgKOOZlr_6anyhow5errorNtB5_5Error9constructNtNtCs4CtJ3uPHEZZ_4jiff5error5ErrorECs5XgW7KoffLW_12opendal_core(ptr noundef %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %0, ptr %i.c, align 8
  tail call void @_RNvCs1njKG4L9aB3_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !39
  %i.d = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCs1njKG4L9aB3_7___rustc12___rust_alloc(i64 noundef range(i64 0, 105) 64, i64 noundef range(i64 1, 9) 8) #27, !noalias !39 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvMNtCs6i54tJFfzR_5alloc5boxedINtB2_3BoxINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCs4CtJ3uPHEZZ_4jiff5error5ErrorEE3newCs5XgW7KoffLW_12opendal_core.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6i54tJFfzR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #28
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCs4CtJ3uPHEZZ_4jiff5error5ErrorEECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.a) #29
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvMNtCs6i54tJFfzR_5alloc5boxedINtB2_3BoxINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCs4CtJ3uPHEZZ_4jiff5error5ErrorEE3newCs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RINvMNtCselJpgKOOZlr_6anyhow5errorNtB5_5Error9constructNtNtCs76KlaVGnJsc_4http3uri10InvalidUriECs5XgW7KoffLW_12opendal_core(i8 noundef range(i8 0, 12) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i8 %0, ptr %i.c, align 8
  tail call void @_RNvCs1njKG4L9aB3_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !46
  %i.d = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCs1njKG4L9aB3_7___rustc12___rust_alloc(i64 noundef range(i64 0, 105) 64, i64 noundef range(i64 1, 9) 8) #27, !noalias !46 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvMNtCs6i54tJFfzR_5alloc5boxedINtB2_3BoxINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCs76KlaVGnJsc_4http3uri10InvalidUriEE3newCs5XgW7KoffLW_12opendal_core.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6i54tJFfzR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #28
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load i64, ptr %i.b, align 8, !range !10, !alias.scope !47, !noundef !11
  %i.h = icmp eq i64 %i.g, 2
  br i1 %i.h, label %bb.d, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCs76KlaVGnJsc_4http3uri10InvalidUriEECs5XgW7KoffLW_12opendal_core.exit

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  invoke void @_RNvXs0_NtNtCs9k3SxhrAWiO_3std4sync9lazy_lockINtB5_8LazyLockNtNtB9_9backtrace7CaptureNCNvNtBX_6helper12lazy_resolve0ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.i)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCs76KlaVGnJsc_4http3uri10InvalidUriEECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCs76KlaVGnJsc_4http3uri10InvalidUriEECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.f

_RNvMNtCs6i54tJFfzR_5alloc5boxedINtB2_3BoxINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCs76KlaVGnJsc_4http3uri10InvalidUriEE3newCs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RINvMNtCselJpgKOOZlr_6anyhow5errorNtB5_5Error9constructNtNtCs76KlaVGnJsc_4http5error5ErrorECs5XgW7KoffLW_12opendal_core(i8 noundef range(i8 0, 7) %0, i8 %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i8 %0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 57
  store i8 %1, ptr %i.d, align 1
  tail call void @_RNvCs1njKG4L9aB3_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !54
  %i.e = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCs1njKG4L9aB3_7___rustc12___rust_alloc(i64 noundef range(i64 0, 105) 64, i64 noundef range(i64 1, 9) 8) #27, !noalias !54 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %_RNvMNtCs6i54tJFfzR_5alloc5boxedINtB2_3BoxINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCs76KlaVGnJsc_4http5error5ErrorEE3newCs5XgW7KoffLW_12opendal_core.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6i54tJFfzR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #28
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load i64, ptr %i.b, align 8, !range !10, !alias.scope !55, !noundef !11
  %i.i = icmp eq i64 %i.h, 2
  br i1 %i.i, label %bb.d, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCs76KlaVGnJsc_4http5error5ErrorEECs5XgW7KoffLW_12opendal_core.exit

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  invoke void @_RNvXs0_NtNtCs9k3SxhrAWiO_3std4sync9lazy_lockINtB5_8LazyLockNtNtB9_9backtrace7CaptureNCNvNtBX_6helper12lazy_resolve0ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.j)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCs76KlaVGnJsc_4http5error5ErrorEECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCs76KlaVGnJsc_4http5error5ErrorEECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.g

_RNvMNtCs6i54tJFfzR_5alloc5boxedINtB2_3BoxINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCs76KlaVGnJsc_4http5error5ErrorEE3newCs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.e
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RINvMNtCselJpgKOOZlr_6anyhow5errorNtB5_5Error9constructNtNtCs76KlaVGnJsc_4http6status17InvalidStatusCodeECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @3, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false)
  tail call void @_RNvCs1njKG4L9aB3_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !62
  %i.c = tail call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs1njKG4L9aB3_7___rustc12___rust_alloc(i64 noundef range(i64 0, 105) 56, i64 noundef range(i64 1, 9) 8) #27, !noalias !62 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %_RNvMNtCs6i54tJFfzR_5alloc5boxedINtB2_3BoxINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCs76KlaVGnJsc_4http6status17InvalidStatusCodeEE3newCs5XgW7KoffLW_12opendal_core.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6i54tJFfzR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #28
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = load i64, ptr %i.b, align 8, !range !10, !alias.scope !63, !noundef !11
  %i.g = icmp eq i64 %i.f, 2
  br i1 %i.g, label %bb.d, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCs76KlaVGnJsc_4http6status17InvalidStatusCodeEECs5XgW7KoffLW_12opendal_core.exit

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  invoke void @_RNvXs0_NtNtCs9k3SxhrAWiO_3std4sync9lazy_lockINtB5_8LazyLockNtNtB9_9backtrace7CaptureNCNvNtBX_6helper12lazy_resolve0ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.h)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCs76KlaVGnJsc_4http6status17InvalidStatusCodeEECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCs76KlaVGnJsc_4http6status17InvalidStatusCodeEECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.e

_RNvMNtCs6i54tJFfzR_5alloc5boxedINtB2_3BoxINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCs76KlaVGnJsc_4http6status17InvalidStatusCodeEE3newCs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.c
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RINvMNtCselJpgKOOZlr_6anyhow5errorNtB5_5Error9constructNtNtCs8HcOsDT3sMt_3url6parser10ParseErrorECs5XgW7KoffLW_12opendal_core(i8 noundef range(i8 0, 10) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @4, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i8 %0, ptr %i.c, align 8
  tail call void @_RNvCs1njKG4L9aB3_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !70
  %i.d = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCs1njKG4L9aB3_7___rustc12___rust_alloc(i64 noundef range(i64 0, 105) 64, i64 noundef range(i64 1, 9) 8) #27, !noalias !70 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvMNtCs6i54tJFfzR_5alloc5boxedINtB2_3BoxINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCs8HcOsDT3sMt_3url6parser10ParseErrorEE3newCs5XgW7KoffLW_12opendal_core.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6i54tJFfzR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #28
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load i64, ptr %i.b, align 8, !range !10, !alias.scope !71, !noundef !11
  %i.h = icmp eq i64 %i.g, 2
  br i1 %i.h, label %bb.d, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCs8HcOsDT3sMt_3url6parser10ParseErrorEECs5XgW7KoffLW_12opendal_core.exit

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  invoke void @_RNvXs0_NtNtCs9k3SxhrAWiO_3std4sync9lazy_lockINtB5_8LazyLockNtNtB9_9backtrace7CaptureNCNvNtBX_6helper12lazy_resolve0ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.i)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCs8HcOsDT3sMt_3url6parser10ParseErrorEECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCs8HcOsDT3sMt_3url6parser10ParseErrorEECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.f

_RNvMNtCs6i54tJFfzR_5alloc5boxedINtB2_3BoxINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCs8HcOsDT3sMt_3url6parser10ParseErrorEE3newCs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RINvMNtCselJpgKOOZlr_6anyhow5errorNtB5_5Error9constructNtNtCsdMEyVxnODSb_10serde_json5error5ErrorECs5XgW7KoffLW_12opendal_core(ptr noalias noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @5, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %0, ptr %i.c, align 8
  tail call void @_RNvCs1njKG4L9aB3_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !74
  %i.d = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCs1njKG4L9aB3_7___rustc12___rust_alloc(i64 noundef range(i64 0, 105) 64, i64 noundef range(i64 1, 9) 8) #27, !noalias !74 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvMNtCs6i54tJFfzR_5alloc5boxedINtB2_3BoxINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCsdMEyVxnODSb_10serde_json5error5ErrorEE3newCs5XgW7KoffLW_12opendal_core.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6i54tJFfzR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #28
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCsdMEyVxnODSb_10serde_json5error5ErrorEECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.a) #29
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvMNtCs6i54tJFfzR_5alloc5boxedINtB2_3BoxINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCsdMEyVxnODSb_10serde_json5error5ErrorEE3newCs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RINvMNtCselJpgKOOZlr_6anyhow5errorNtB5_5Error9constructNtNtNtCs2GTOvRHBi2K_9quick_xml6errors9serialize7DeErrorECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @6, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false)
  tail call void @_RNvCs1njKG4L9aB3_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !77
  %i.d = tail call noundef align 8 dereferenceable_or_null(104) ptr @_RNvCs1njKG4L9aB3_7___rustc12___rust_alloc(i64 noundef range(i64 0, 105) 104, i64 noundef range(i64 1, 9) 8) #27, !noalias !77 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvMNtCs6i54tJFfzR_5alloc5boxedINtB2_3BoxINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtNtCs2GTOvRHBi2K_9quick_xml6errors9serialize7DeErrorEE3newCs5XgW7KoffLW_12opendal_core.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6i54tJFfzR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 104) #28
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtNtCs2GTOvRHBi2K_9quick_xml6errors9serialize7DeErrorEECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.a) #29
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvMNtCs6i54tJFfzR_5alloc5boxedINtB2_3BoxINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtNtCs2GTOvRHBi2K_9quick_xml6errors9serialize7DeErrorEE3newCs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, ptr noundef nonnull align 8 dereferenceable(104) %i.a, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RINvMNtCselJpgKOOZlr_6anyhow5errorNtB5_5Error9constructNtNtNtCs2GTOvRHBi2K_9quick_xml6errors9serialize7SeErrorECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @7, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  tail call void @_RNvCs1njKG4L9aB3_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !80
  %i.d = tail call noundef align 8 dereferenceable_or_null(88) ptr @_RNvCs1njKG4L9aB3_7___rustc12___rust_alloc(i64 noundef range(i64 0, 105) 88, i64 noundef range(i64 1, 9) 8) #27, !noalias !80 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvMNtCs6i54tJFfzR_5alloc5boxedINtB2_3BoxINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtNtCs2GTOvRHBi2K_9quick_xml6errors9serialize7SeErrorEE3newCs5XgW7KoffLW_12opendal_core.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6i54tJFfzR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 88) #28
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtNtCs2GTOvRHBi2K_9quick_xml6errors9serialize7SeErrorEECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.a) #29
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvMNtCs6i54tJFfzR_5alloc5boxedINtB2_3BoxINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtNtCs2GTOvRHBi2K_9quick_xml6errors9serialize7SeErrorEE3newCs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.d, ptr noundef nonnull align 8 dereferenceable(88) %i.a, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RINvMNtCselJpgKOOZlr_6anyhow5errorNtB5_5Error9constructNtNtNtCs76KlaVGnJsc_4http6header4name17InvalidHeaderNameECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @8, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false)
  tail call void @_RNvCs1njKG4L9aB3_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !87
  %i.c = tail call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs1njKG4L9aB3_7___rustc12___rust_alloc(i64 noundef range(i64 0, 105) 56, i64 noundef range(i64 1, 9) 8) #27, !noalias !87 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %_RNvMNtCs6i54tJFfzR_5alloc5boxedINtB2_3BoxINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtNtCs76KlaVGnJsc_4http6header4name17InvalidHeaderNameEE3newCs5XgW7KoffLW_12opendal_core.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6i54tJFfzR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #28
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = load i64, ptr %i.b, align 8, !range !10, !alias.scope !88, !noundef !11
  %i.g = icmp eq i64 %i.f, 2
  br i1 %i.g, label %bb.d, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtNtCs76KlaVGnJsc_4http6header4name17InvalidHeaderNameEECs5XgW7KoffLW_12opendal_core.exit

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  invoke void @_RNvXs0_NtNtCs9k3SxhrAWiO_3std4sync9lazy_lockINtB5_8LazyLockNtNtB9_9backtrace7CaptureNCNvNtBX_6helper12lazy_resolve0ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.h)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtNtCs76KlaVGnJsc_4http6header4name17InvalidHeaderNameEECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtNtCs76KlaVGnJsc_4http6header4name17InvalidHeaderNameEECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.e

_RNvMNtCs6i54tJFfzR_5alloc5boxedINtB2_3BoxINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtNtCs76KlaVGnJsc_4http6header4name17InvalidHeaderNameEE3newCs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.c
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RINvMNtCselJpgKOOZlr_6anyhow5errorNtB5_5Error9constructNtNtNtCs76KlaVGnJsc_4http6header5value10ToStrErrorECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @9, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false)
  tail call void @_RNvCs1njKG4L9aB3_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !95
  %i.c = tail call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs1njKG4L9aB3_7___rustc12___rust_alloc(i64 noundef range(i64 0, 105) 56, i64 noundef range(i64 1, 9) 8) #27, !noalias !95 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %_RNvMNtCs6i54tJFfzR_5alloc5boxedINtB2_3BoxINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtNtCs76KlaVGnJsc_4http6header5value10ToStrErrorEE3newCs5XgW7KoffLW_12opendal_core.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6i54tJFfzR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #28
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = load i64, ptr %i.b, align 8, !range !10, !alias.scope !96, !noundef !11
  %i.g = icmp eq i64 %i.f, 2
  br i1 %i.g, label %bb.d, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtNtCs76KlaVGnJsc_4http6header5value10ToStrErrorEECs5XgW7KoffLW_12opendal_core.exit

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  invoke void @_RNvXs0_NtNtCs9k3SxhrAWiO_3std4sync9lazy_lockINtB5_8LazyLockNtNtB9_9backtrace7CaptureNCNvNtBX_6helper12lazy_resolve0ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.h)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtNtCs76KlaVGnJsc_4http6header5value10ToStrErrorEECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtNtCs76KlaVGnJsc_4http6header5value10ToStrErrorEECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.e

_RNvMNtCs6i54tJFfzR_5alloc5boxedINtB2_3BoxINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtNtCs76KlaVGnJsc_4http6header5value10ToStrErrorEE3newCs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.c
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RINvMNtCselJpgKOOZlr_6anyhow5errorNtB5_5Error9constructNtNtNtCs76KlaVGnJsc_4http6header5value18InvalidHeaderValueECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @10, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false)
  tail call void @_RNvCs1njKG4L9aB3_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !103
  %i.c = tail call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs1njKG4L9aB3_7___rustc12___rust_alloc(i64 noundef range(i64 0, 105) 56, i64 noundef range(i64 1, 9) 8) #27, !noalias !103 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %_RNvMNtCs6i54tJFfzR_5alloc5boxedINtB2_3BoxINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtNtCs76KlaVGnJsc_4http6header5value18InvalidHeaderValueEE3newCs5XgW7KoffLW_12opendal_core.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6i54tJFfzR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #28
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = load i64, ptr %i.b, align 8, !range !10, !alias.scope !104, !noundef !11
  %i.g = icmp eq i64 %i.f, 2
  br i1 %i.g, label %bb.d, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtNtCs76KlaVGnJsc_4http6header5value18InvalidHeaderValueEECs5XgW7KoffLW_12opendal_core.exit

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  invoke void @_RNvXs0_NtNtCs9k3SxhrAWiO_3std4sync9lazy_lockINtB5_8LazyLockNtNtB9_9backtrace7CaptureNCNvNtBX_6helper12lazy_resolve0ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.h)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtNtCs76KlaVGnJsc_4http6header5value18InvalidHeaderValueEECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtNtCs76KlaVGnJsc_4http6header5value18InvalidHeaderValueEECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.e

_RNvMNtCs6i54tJFfzR_5alloc5boxedINtB2_3BoxINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtNtCs76KlaVGnJsc_4http6header5value18InvalidHeaderValueEE3newCs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.c
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RINvMNtCselJpgKOOZlr_6anyhow5errorNtB5_5Error9constructNtNtNtCsgxBkk5gSRhY_4core2io5error5ErrorECs5XgW7KoffLW_12opendal_core(ptr noundef nonnull %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @11, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %0, ptr %i.c, align 8
  tail call void @_RNvCs1njKG4L9aB3_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !107
  %i.d = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCs1njKG4L9aB3_7___rustc12___rust_alloc(i64 noundef range(i64 0, 105) 64, i64 noundef range(i64 1, 9) 8) #27, !noalias !107 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvMNtCs6i54tJFfzR_5alloc5boxedINtB2_3BoxINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtNtCsgxBkk5gSRhY_4core2io5error5ErrorEE3newCs5XgW7KoffLW_12opendal_core.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6i54tJFfzR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #28
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtNtB4_2io5error5ErrorEECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.a) #29
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvMNtCs6i54tJFfzR_5alloc5boxedINtB2_3BoxINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtNtCsgxBkk5gSRhY_4core2io5error5ErrorEE3newCs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RINvMNtCselJpgKOOZlr_6anyhow5errorNtB5_5Error9constructNtNtNtCsgxBkk5gSRhY_4core3num5error13ParseIntErrorECs5XgW7KoffLW_12opendal_core(i8 noundef range(i8 0, 6) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @12, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i8 %0, ptr %i.c, align 8
  tail call void @_RNvCs1njKG4L9aB3_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !114
  %i.d = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCs1njKG4L9aB3_7___rustc12___rust_alloc(i64 noundef range(i64 0, 105) 64, i64 noundef range(i64 1, 9) 8) #27, !noalias !114 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvMNtCs6i54tJFfzR_5alloc5boxedINtB2_3BoxINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtNtCsgxBkk5gSRhY_4core3num5error13ParseIntErrorEE3newCs5XgW7KoffLW_12opendal_core.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6i54tJFfzR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #28
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load i64, ptr %i.b, align 8, !range !10, !alias.scope !115, !noundef !11
  %i.h = icmp eq i64 %i.g, 2
  br i1 %i.h, label %bb.d, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtNtB4_3num5error13ParseIntErrorEECs5XgW7KoffLW_12opendal_core.exit

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  invoke void @_RNvXs0_NtNtCs9k3SxhrAWiO_3std4sync9lazy_lockINtB5_8LazyLockNtNtB9_9backtrace7CaptureNCNvNtBX_6helper12lazy_resolve0ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.i)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtNtB4_3num5error13ParseIntErrorEECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtNtB4_3num5error13ParseIntErrorEECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.f

_RNvMNtCs6i54tJFfzR_5alloc5boxedINtB2_3BoxINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtNtCsgxBkk5gSRhY_4core3num5error13ParseIntErrorEE3newCs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RINvMNtCselJpgKOOZlr_6anyhow5errorNtB5_5Error9constructNtNtNtCskkYVyhWgx5W_10serde_core2de5value5ErrorECs5XgW7KoffLW_12opendal_core(ptr noalias noundef nonnull %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @13, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %1, ptr %i.d, align 8
  tail call void @_RNvCs1njKG4L9aB3_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !118
  %i.e = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCs1njKG4L9aB3_7___rustc12___rust_alloc(i64 noundef range(i64 0, 105) 72, i64 noundef range(i64 1, 9) 8) #27, !noalias !118 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %_RNvMNtCs6i54tJFfzR_5alloc5boxedINtB2_3BoxINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtNtCskkYVyhWgx5W_10serde_core2de5value5ErrorEE3newCs5XgW7KoffLW_12opendal_core.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6i54tJFfzR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #28
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtNtCskkYVyhWgx5W_10serde_core2de5value5ErrorEECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a) #29
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.g

_RNvMNtCs6i54tJFfzR_5alloc5boxedINtB2_3BoxINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtNtCskkYVyhWgx5W_10serde_core2de5value5ErrorEE3newCs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtCs76KlaVGnJsc_4http6header5valueNtB3_11HeaderValue16try_from_genericReNCNvB2_8from_str0ECs5XgW7KoffLW_12opendal_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.b = icmp samesign eq i64 %2, 0
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.sroa.0.08 = phi ptr [ %i.c, %bb.d ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.08, i64 1 ; 2 uses
  %i.d = load i8, ptr %.sroa.0.08, align 1, !noundef !11 ; 3 uses
  %i.e = icmp ugt i8 %i.d, 31
  br i1 %i.e, label %bb.c, label %bb.b

._crit_edge:                                      ; preds = %bb.d, %bb.a
  tail call void @_RNvMNtCsk2Y6yuwWMc1_5bytes5bytesNtB2_5Bytes15copy_from_slice(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  br label %.loopexit

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq i8 %i.d, 9
  br i1 %i.f, label %bb.d, label %.loopexit

bb.c:                                             ; preds = %.lr.ph
  %i.g = icmp eq i8 %i.d, 127
  br i1 %i.g, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = icmp eq ptr %i.c, %i.a
  br i1 %i.h, label %._crit_edge, label %.lr.ph

.loopexit:                                        ; preds = %bb.b, %bb.c, %._crit_edge
  %.sink = phi i8 [ 0, %._crit_edge ], [ 2, %bb.c ], [ 2, %bb.b ]
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sink, ptr %.sroa.4.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs0_NtNtCs5XgW7KoffLW_12opendal_core5types6bufferNtB6_6Buffer5sliceINtNtNtCsgxBkk5gSRhY_4core3ops5range5RangejEEBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull align 8 %1, i64 noundef %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  %i.c = alloca [40 x i8], align 8                ; 10 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [8 x i8], align 8                 ; 6 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.i = load ptr, ptr %1, align 8, !noundef !11  ; 2 uses
  %.not = icmp eq ptr %i.i, null                  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %storemerge.in = select i1 %.not, ptr %i.j, ptr %i.k
  %storemerge = load i64, ptr %storemerge.in, align 8, !noundef !11 ; 2 uses
  store i64 %storemerge, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 %2, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 %3, ptr %i.f, align 8
  %.not36 = icmp ugt i64 %2, %3
  br i1 %.not36, label %bb.c, label %bb.d, !prof !12

bb.b:                                             ; preds = %bb.q
  resume { ptr, i32 } %i.av

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.g, ptr %i.e, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXsZ_NtNtCsgxBkk5gSRhY_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.413.0..sroa_idx, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.f, ptr %i.l, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXsZ_NtNtCsgxBkk5gSRhY_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.417.0..sroa_idx, align 8
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking9panic_fmt(ptr noundef nonnull @15, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #28
  unreachable

bb.d:                                             ; preds = %bb.a
  %.not37 = icmp ugt i64 %3, %storemerge
  br i1 %.not37, label %bb.e, label %bb.f, !prof !12

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.f, ptr %i.d, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXsZ_NtNtCsgxBkk5gSRhY_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.421.0..sroa_idx, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.h, ptr %i.m, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @_RNvXsZ_NtNtCsgxBkk5gSRhY_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.425.0..sroa_idx, align 8
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking9panic_fmt(ptr noundef nonnull @17, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #28
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.n = icmp eq i64 %3, %2
  br i1 %i.n, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127)
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = atomicrmw add ptr %i.i, i64 1 monotonic, align 8, !noalias !127
  %i.p = icmp slt i64 %i.o, 0
  br i1 %i.p, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !noalias !127, !nonnull !11, !align !13, !noundef !11
  %i.s = load ptr, ptr %i.r, align 8, !noalias !127, !nonnull !11, !noundef !11
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.u = load ptr, ptr %i.k, align 8, !noalias !127, !noundef !11
  %i.v = load i64, ptr %i.j, align 8, !noalias !127, !noundef !11
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void %i.s(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.w, ptr noundef nonnull align 8 %i.t, ptr noundef %i.u, i64 noundef %i.v), !inline_history !0
  store ptr null, ptr %i.b, align 8, !alias.scope !127
  %.pre = load i64, ptr %i.f, align 8
  br label %_RNvXsl_NtNtCs5XgW7KoffLW_12opendal_core5types6bufferNtB5_5InnerNtNtCsgxBkk5gSRhY_4core5clone5Clone5clone.exit

bb.j:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load ptr, ptr %1, align 8, !noalias !127, !nonnull !11, !noundef !11
  store ptr %i.y, ptr %i.b, align 8, !alias.scope !127
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aa = load <2 x i64>, ptr %i.x, align 8, !noalias !127
  store <2 x i64> %i.aa, ptr %i.z, align 8, !alias.scope !127
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ac = load <2 x i64>, ptr %i.j, align 8, !noalias !127
  store <2 x i64> %i.ac, ptr %i.ab, align 8, !alias.scope !127
  br label %_RNvXsl_NtNtCs5XgW7KoffLW_12opendal_core5types6bufferNtB5_5InnerNtNtCsgxBkk5gSRhY_4core5clone5Clone5clone.exit

bb.k:                                             ; preds = %bb.h
  tail call void @llvm.trap()
  unreachable

_RNvXsl_NtNtCs5XgW7KoffLW_12opendal_core5types6bufferNtB5_5InnerNtNtCsgxBkk5gSRhY_4core5clone5Clone5clone.exit: ; preds = %bb.i, %bb.j
  %i.ad = phi i64 [ %.pre, %bb.i ], [ %3, %bb.j ] ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ae = load ptr, ptr %i.c, align 8, !noundef !11
  %.not38 = icmp eq ptr %i.ae, null
  br i1 %.not38, label %bb.m, label %bb.r

bb.l:                                             ; preds = %bb.f
  store ptr null, ptr %0, align 8
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @19, ptr %.sroa.427.0..sroa_idx, align 8
  %.sroa.427.sroa.4.0..sroa.427.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.427.sroa.4.0..sroa.427.0..sroa_idx.sroa_idx, align 8
  %.sroa.427.sroa.5.0..sroa.427.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.427.sroa.5.0..sroa.427.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false)
  br label %bb.t

bb.m:                                             ; preds = %_RNvXsl_NtNtCs5XgW7KoffLW_12opendal_core5types6bufferNtB5_5InnerNtNtCsgxBkk5gSRhY_4core5clone5Clone5clone.exit
end_hunk_0
begin_hunk_1_@_RNvMs_NtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4coreNtB4_10MemoryCore3get:bb.a
  invoke void @_RNvNtCsgxBkk5gSRhY_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @95, i64 noundef 43, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @94, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @110) #28
          to label %bb.g unwind label %bb.f, !noalias !1028

bb.f:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs9k3SxhrAWiO_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardINtNtNtNtCs6i54tJFfzR_5alloc11collections5btree3map8BTreeMapNtNtB1Y_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEEEEB3h_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d) #29
          to label %common.resume unwind label %bb.h, !noalias !1028

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #30, !noalias !1028
  unreachable

common.resume:                                    ; preds = %.body, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.aa, %bb.f ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResultINtNtNtNtCs9k3SxhrAWiO_3std4sync6poison5mutex10MutexGuardINtNtNtNtCs6i54tJFfzR_5alloc11collections5btree3map8BTreeMapNtNtB1L_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEEINtBM_11PoisonErrorBH_EE6unwrapB34_.exit: ; preds = %_RNvMs5_NtNtNtCs9k3SxhrAWiO_3std4sync6poison5mutexINtB5_5MutexINtNtNtNtCs6i54tJFfzR_5alloc11collections5btree3map8BTreeMapNtNtB16_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEE4lockB2p_.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !1028, !noalias !1029, !nonnull !11, !align !13, !noundef !11 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.af = load i8, ptr %i.ae, align 8, !range !22, !alias.scope !1028, !noalias !1029, !noundef !11 ; 2 uses
  %i.ag = trunc nuw i8 %i.af to i1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.ai = invoke noundef align 8 ptr @_RINvMsi_NtNtNtCs6i54tJFfzR_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtBc_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueE3geteEB1A_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ah, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
          to label %bb.j unwind label %bb.i       ; 12 uses

bb.i:                                             ; preds = %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResultINtNtNtNtCs9k3SxhrAWiO_3std4sync6poison5mutex10MutexGuardINtNtNtNtCs6i54tJFfzR_5alloc11collections5btree3map8BTreeMapNtNtB1L_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEEINtBM_11PoisonErrorBH_EE6unwrapB34_.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.t, %bb.u, %bb.v, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.aj, %bb.i ], [ %i.bo, %bb.v ], [ %i.bo, %bb.u ], [ %i.bo, %bb.t ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k3SxhrAWiO_3std4sync6poison5mutex10MutexGuardINtNtNtNtCs6i54tJFfzR_5alloc11collections5btree3map8BTreeMapNtNtB1F_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEEEB2Y_(ptr nonnull %i.ad, i8 %i.af) #29
          to label %common.resume unwind label %bb.ad

bb.j:                                             ; preds = %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResultINtNtNtNtCs9k3SxhrAWiO_3std4sync6poison5mutex10MutexGuardINtNtNtNtCs6i54tJFfzR_5alloc11collections5btree3map8BTreeMapNtNtB1L_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEEINtBM_11PoisonErrorBH_EE6unwrapB34_.exit
  %.not = icmp eq ptr %i.ai, null
  br i1 %.not, label %bb.x, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1031
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 24, i1 false), !noalias !1031
  %i.al = load ptr, ptr %i.ai, align 8, !noalias !1031, !noundef !11 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.not.i = icmp eq ptr %i.al, null
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = atomicrmw add ptr %i.al, i64 1 monotonic, align 8, !noalias !1031
  %i.ao = icmp slt i64 %i.an, 0
  br i1 %i.ao, label %bb.s, label %bb.r

bb.m:                                             ; preds = %bb.r, %bb.k
  %.sroa.5.0.i = phi i64 [ %i.bn, %bb.r ], [ undef, %bb.k ]
  %i.ap = phi ptr [ %i.bm, %bb.r ], [ null, %bb.k ] ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !1031
  store ptr %i.ap, ptr %i.c, align 8, !noalias !1031
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.sroa.5.0.i, ptr %i.ar, align 8, !noalias !1031
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1031
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 40 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1032)
  %i.at = load ptr, ptr %i.as, align 8, !noalias !1033, !noundef !11 ; 2 uses
  %.not.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.au = atomicrmw add ptr %i.at, i64 1 monotonic, align 8, !noalias !1033
  %i.av = icmp slt i64 %i.au, 0
  br i1 %i.av, label %bb.q, label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %i.ax = load ptr, ptr %i.aw, align 8, !noalias !1033, !nonnull !11, !align !13, !noundef !11
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !1033, !nonnull !11, !noundef !11
  %i.az = getelementptr inbounds nuw i8, ptr %i.ai, i64 72
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  %i.bb = load ptr, ptr %i.ba, align 8, !noalias !1033, !noundef !11
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ai, i64 64
  %i.bd = load i64, ptr %i.bc, align 8, !noalias !1033, !noundef !11
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  invoke void %i.ay(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.be, ptr noundef nonnull align 8 %i.az, ptr noundef %i.bb, i64 noundef %i.bd)
          to label %.noexc.i unwind label %bb.t, !noalias !1031, !inline_history !0

.noexc.i:                                         ; preds = %bb.o
  store ptr null, ptr %i.a, align 8, !alias.scope !1032, !noalias !1031
  br label %bb.ac

bb.p:                                             ; preds = %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %i.bg = load ptr, ptr %i.as, align 8, !noalias !1033, !nonnull !11, !noundef !11
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ai, i64 64
  store ptr %i.bg, ptr %i.a, align 8, !alias.scope !1032, !noalias !1031
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bj = load <2 x i64>, ptr %i.bf, align 8, !noalias !1033
  store <2 x i64> %i.bj, ptr %i.bi, align 8, !alias.scope !1032, !noalias !1031
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.bl = load <2 x i64>, ptr %i.bh, align 8, !noalias !1033
  store <2 x i64> %i.bl, ptr %i.bk, align 8, !alias.scope !1032, !noalias !1031
  br label %bb.ac

bb.q:                                             ; preds = %bb.n
  tail call void @llvm.trap()
  unreachable

bb.r:                                             ; preds = %bb.l
  %i.bm = load ptr, ptr %i.ai, align 8, !noalias !1031, !nonnull !11, !noundef !11
  %i.bn = load i64, ptr %i.am, align 8, !noalias !1031, !noundef !11
  br label %bb.m

bb.s:                                             ; preds = %bb.l
  tail call void @llvm.trap()
  unreachable

bb.t:                                             ; preds = %bb.o
  %i.bo = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.bp = icmp eq ptr %i.ap, null
  br i1 %i.bp, label %.body, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bq = atomicrmw sub ptr %i.ap, i64 1 release, align 8, !noalias !1034
  %i.br = icmp eq i64 %i.bq, 1
  br i1 %i.br, label %bb.v, label %.body

bb.v:                                             ; preds = %bb.u
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c) #31
          to label %.body unwind label %bb.w, !noalias !1031

bb.w:                                             ; preds = %bb.v
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #30, !noalias !1031
  unreachable

bb.x:                                             ; preds = %bb.j, %bb.ac
  %.sroa.0.0 = phi i64 [ 1, %bb.ac ], [ 0, %bb.j ]
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0, ptr %i.bt, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %i.e, i64 80, i1 false)
  store i64 0, ptr %0, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  br i1 %i.ag, label %_RNvMNtNtCs9k3SxhrAWiO_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bv = load atomic i64, ptr @_RNvNtNtCs9k3SxhrAWiO_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.bw = and i64 %i.bv, 9223372036854775807
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %_RNvMNtNtCs9k3SxhrAWiO_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.z, !prof !21

bb.z:                                             ; preds = %bb.y
  %i.by = call noundef zeroext i1 @_RNvNtNtCs9k3SxhrAWiO_3std9panicking11panic_count17is_zero_slow_path() #31
  br i1 %i.by, label %_RNvMNtNtCs9k3SxhrAWiO_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store atomic i8 1, ptr %i.bu monotonic, align 4
  br label %_RNvMNtNtCs9k3SxhrAWiO_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs9k3SxhrAWiO_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.aa, %bb.z, %bb.y, %bb.x
  %i.bz = atomicrmw xchg ptr %i.ad, i32 0 release, align 4
  %i.ca = icmp eq i32 %i.bz, 2
  br i1 %i.ca, label %bb.ab, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k3SxhrAWiO_3std4sync6poison5mutex10MutexGuardINtNtNtNtCs6i54tJFfzR_5alloc11collections5btree3map8BTreeMapNtNtB1F_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEEEB2Y_.exit, !prof !12

bb.ab:                                            ; preds = %_RNvMNtNtCs9k3SxhrAWiO_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @_RNvMNtNtNtNtCs9k3SxhrAWiO_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.ad)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k3SxhrAWiO_3std4sync6poison5mutex10MutexGuardINtNtNtNtCs6i54tJFfzR_5alloc11collections5btree3map8BTreeMapNtNtB1F_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEEEB2Y_.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k3SxhrAWiO_3std4sync6poison5mutex10MutexGuardINtNtNtNtCs6i54tJFfzR_5alloc11collections5btree3map8BTreeMapNtNtB1F_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEEEB2Y_.exit: ; preds = %_RNvMNtNtCs9k3SxhrAWiO_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.ab
  ret void

bb.ac:                                            ; preds = %bb.p, %.noexc.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cb, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1031
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.e, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1031
  br label %bb.x

bb.ad:                                            ; preds = %.body
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #30
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull ptr @_RNvMs_NtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4coreNtB4_10MemoryCore3new() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 0, ptr %i.c, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i8 0, ptr %.sroa.44.0..sroa_idx, align 4
  %.sroa.55.sroa.3.0..sroa.55.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  store ptr null, ptr %.sroa.55.sroa.3.0..sroa.55.0..sroa_idx.sroa_idx, align 8
  %.sroa.55.sroa.5.0..sroa.55.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 0, ptr %.sroa.55.sroa.5.0..sroa.55.0..sroa_idx.sroa_idx, align 8
  tail call void @_RNvCs1njKG4L9aB3_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !1037
  %i.d = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCs1njKG4L9aB3_7___rustc12___rust_alloc(i64 noundef range(i64 0, 105) 48, i64 noundef range(i64 1, 9) 8) #27, !noalias !1037 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvMNtCs6i54tJFfzR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs9k3SxhrAWiO_3std4sync6poison5mutex5MutexINtNtNtNtB4_11collections5btree3map8BTreeMapNtNtB4_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEEEE3newB2Z_.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6i54tJFfzR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #28
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXNtNtNtCs6i54tJFfzR_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropB1w_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.55.sroa.3.0..sroa.55.0..sroa_idx.sroa_idx)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync8ArcInnerINtNtNtNtCs9k3SxhrAWiO_3std4sync6poison5mutex5MutexINtNtNtNtBG_11collections5btree3map8BTreeMapNtNtBG_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEEEEB3d_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync8ArcInnerINtNtNtNtCs9k3SxhrAWiO_3std4sync6poison5mutex5MutexINtNtNtNtBG_11collections5btree3map8BTreeMapNtNtBG_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEEEEB3d_.exit: ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvMNtCs6i54tJFfzR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs9k3SxhrAWiO_3std4sync6poison5mutex5MutexINtNtNtNtB4_11collections5btree3map8BTreeMapNtNtB4_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEEEE3newB2Z_.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4coreNtB4_10MemoryCore3set(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef %3, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(80) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [80 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [88 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.g = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  %i.i = cmpxchg ptr %i.h, i32 0, i32 1 acquire monotonic, align 4, !noalias !1069
  %i.j = extractvalue { i32, i1 } %i.i, 1
  br i1 %i.j, label %.noexc, label %bb.b, !prof !21

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMNtNtNtNtCs9k3SxhrAWiO_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %i.h)
          to label %.noexc unwind label %.body.thread21

.noexc:                                           ; preds = %bb.b, %bb.a
  %i.k = load atomic i64, ptr @_RNvNtNtCs9k3SxhrAWiO_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !1069
  %i.l = and i64 %i.k, 9223372036854775807
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RNvMNtNtCs9k3SxhrAWiO_3std4sync6poisonNtB2_4Flag5guard.exit.i, label %bb.c, !prof !21

bb.c:                                             ; preds = %.noexc
  %i.n = invoke noundef zeroext i1 @_RNvNtNtCs9k3SxhrAWiO_3std9panicking11panic_count17is_zero_slow_path() #31
          to label %.noexc8 unwind label %.body.thread21

.noexc8:                                          ; preds = %bb.c
  %i.o = xor i1 %i.n, true
  %i.p = zext i1 %i.o to i8
  br label %_RNvMNtNtCs9k3SxhrAWiO_3std4sync6poisonNtB2_4Flag5guard.exit.i

_RNvMNtNtCs9k3SxhrAWiO_3std4sync6poisonNtB2_4Flag5guard.exit.i: ; preds = %.noexc8, %.noexc
  %.sroa.01.0.i.i = phi i8 [ %i.p, %.noexc8 ], [ 0, %.noexc ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %i.r = load atomic i8, ptr %i.q monotonic, align 1, !noalias !1069
  %i.s = icmp ne i8 %i.r, 0
  invoke void @_RINvNtNtCs9k3SxhrAWiO_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardINtNtNtNtCs6i54tJFfzR_5alloc11collections5btree3map8BTreeMapNtNtB1w_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEENCNvMs9_B10_BX_3new0EB2P_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i1 noundef zeroext %i.s, i8 noundef %.sroa.01.0.i.i, ptr noundef nonnull align 8 %i.h)
          to label %_RNvMs5_NtNtNtCs9k3SxhrAWiO_3std4sync6poison5mutexINtB5_5MutexINtNtNtNtCs6i54tJFfzR_5alloc11collections5btree3map8BTreeMapNtNtB16_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEE4lockB2p_.exit unwind label %.body.thread21

bb.d:                                             ; preds = %.body12
  br i1 %.sroa.0.2.lpad-body, label %.body.thread, label %bb.ad

.body.thread21:                                   ; preds = %_RNvMNtNtCs9k3SxhrAWiO_3std4sync6poisonNtB2_4Flag5guard.exit.i, %bb.b, %bb.c
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

_RNvMs5_NtNtNtCs9k3SxhrAWiO_3std4sync6poison5mutexINtB5_5MutexINtNtNtNtCs6i54tJFfzR_5alloc11collections5btree3map8BTreeMapNtNtB16_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEE4lockB2p_.exit: ; preds = %_RNvMNtNtCs9k3SxhrAWiO_3std4sync6poisonNtB2_4Flag5guard.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1070)
  %i.t = load i64, ptr %i.e, align 8, !range !33, !alias.scope !1070, !noalias !1071, !noundef !11
  %i.u = trunc nuw i64 %i.t to i1
  br i1 %i.u, label %bb.e, label %bb.i, !prof !12

bb.e:                                             ; preds = %_RNvMs5_NtNtNtCs9k3SxhrAWiO_3std4sync6poison5mutexINtB5_5MutexINtNtNtNtCs6i54tJFfzR_5alloc11collections5btree3map8BTreeMapNtNtB16_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEE4lockB2p_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1072
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !1070, !noalias !1071, !nonnull !11, !align !13, !noundef !11
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.y = load i8, ptr %i.x, align 8, !range !22, !alias.scope !1070, !noalias !1071, !noundef !11
  store ptr %i.w, ptr %i.a, align 8, !noalias !1072
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.y, ptr %i.z, align 8, !noalias !1072
  invoke void @_RNvNtCsgxBkk5gSRhY_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @95, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @94, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @111) #28
          to label %bb.g unwind label %bb.f, !noalias !1070

bb.f:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs9k3SxhrAWiO_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardINtNtNtNtCs6i54tJFfzR_5alloc11collections5btree3map8BTreeMapNtNtB1Y_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEEEEB3h_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #29
          to label %.body.thread unwind label %bb.h, !noalias !1070

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #30, !noalias !1070
  unreachable

bb.i:                                             ; preds = %_RNvMs5_NtNtNtCs9k3SxhrAWiO_3std4sync6poison5mutexINtB5_5MutexINtNtNtNtCs6i54tJFfzR_5alloc11collections5btree3map8BTreeMapNtNtB16_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEE4lockB2p_.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !1070, !noalias !1071, !nonnull !11, !align !13, !noundef !11 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.af = load i8, ptr %i.ae, align 8, !range !22, !alias.scope !1070, !noalias !1071, !noundef !11 ; 2 uses
  %i.ag = trunc nuw i8 %i.af to i1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %3, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %bb.w, %bb.u, %bb.n, %bb.l, %bb.i
  %.sroa.0.2 = phi i1 [ true, %bb.l ], [ false, %bb.w ], [ false, %bb.n ], [ true, %bb.i ], [ false, %bb.u ]
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body12

.body12:                                          ; preds = %bb.t, %bb.j
  %.sroa.0.2.lpad-body = phi i1 [ %.sroa.0.2, %bb.j ], [ false, %bb.t ]
  %eh.lpad-body13 = phi { ptr, i32 } [ %i.ai, %bb.j ], [ %i.ay, %bb.t ] ; 2 uses
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k3SxhrAWiO_3std4sync6poison5mutex10MutexGuardINtNtNtNtCs6i54tJFfzR_5alloc11collections5btree3map8BTreeMapNtNtB1F_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEEEB2Y_(ptr nonnull %i.ad, i8 %i.af) #29
          to label %bb.d unwind label %bb.ac

bb.k:                                             ; preds = %bb.i
  %i.aj = load i64, ptr %i.b, align 8, !range !33, !noundef !11
  %i.ak = trunc nuw i64 %i.aj to i1
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.am = load i64, ptr %i.al, align 8, !range !34, !noundef !11 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.ak, label %bb.l, label %bb.m, !prof !12

bb.l:                                             ; preds = %bb.k
  %i.ao = load i64, ptr %i.an, align 8
  invoke void @_RNvNtCs6i54tJFfzR_5alloc7raw_vec12handle_error(i64 noundef %i.am, i64 %i.ao) #28
          to label %bb.ab unwind label %bb.j

bb.m:                                             ; preds = %bb.k
  %i.ap = load ptr, ptr %i.an, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.aq = icmp ule i64 %3, %i.am
  tail call void @llvm.assume(i1 %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.o, %bb.m
  store i64 %i.am, ptr %i.d, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.ap, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %3, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(80) %4, i64 80, i1 false)
  invoke void @_RNvMsi_NtNtNtCs6i54tJFfzR_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueE6insertB1z_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.c)
          to label %bb.p unwind label %bb.j

bb.o:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ap, ptr nonnull align 1 %2, i64 %3, i1 false)
  br label %bb.n

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !1073)
  %i.ar = load i64, ptr %i.f, align 8, !range !33, !alias.scope !1073, !noundef !11
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEEB15_.exit, label %bb.q
end_hunk_1
begin_hunk_2_@_RNvXs9_NtCselJpgKOOZlr_6anyhow5errorINtB5_9ErrorImplNtNtCs76KlaVGnJsc_4http6status17InvalidStatusCodeENtNtCsgxBkk5gSRhY_4core3fmt7Display3fmtCs5XgW7KoffLW_12opendal_core:bb.a
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !11, !nonnull !11
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #33
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs9_NtCselJpgKOOZlr_6anyhow5errorINtB5_9ErrorImplNtNtCs8HcOsDT3sMt_3url6parser10ParseErrorENtNtCsgxBkk5gSRhY_4core3fmt7Display3fmtCs5XgW7KoffLW_12opendal_core(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCselJpgKOOZlr_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !11, !nonnull !11
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #33
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs9_NtCselJpgKOOZlr_6anyhow5errorINtB5_9ErrorImplNtNtCsdMEyVxnODSb_10serde_json5error5ErrorENtNtCsgxBkk5gSRhY_4core3fmt7Display3fmtCs5XgW7KoffLW_12opendal_core(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCselJpgKOOZlr_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !11, !nonnull !11
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #33
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs9_NtCselJpgKOOZlr_6anyhow5errorINtB5_9ErrorImplNtNtNtCs2GTOvRHBi2K_9quick_xml6errors9serialize7DeErrorENtNtCsgxBkk5gSRhY_4core3fmt7Display3fmtCs5XgW7KoffLW_12opendal_core(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCselJpgKOOZlr_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !11, !nonnull !11
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #33
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs9_NtCselJpgKOOZlr_6anyhow5errorINtB5_9ErrorImplNtNtNtCs2GTOvRHBi2K_9quick_xml6errors9serialize7SeErrorENtNtCsgxBkk5gSRhY_4core3fmt7Display3fmtCs5XgW7KoffLW_12opendal_core(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCselJpgKOOZlr_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !11, !nonnull !11
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #33
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs9_NtCselJpgKOOZlr_6anyhow5errorINtB5_9ErrorImplNtNtNtCs76KlaVGnJsc_4http6header4name17InvalidHeaderNameENtNtCsgxBkk5gSRhY_4core3fmt7Display3fmtCs5XgW7KoffLW_12opendal_core(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCselJpgKOOZlr_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !11, !nonnull !11
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #33
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs9_NtCselJpgKOOZlr_6anyhow5errorINtB5_9ErrorImplNtNtNtCs76KlaVGnJsc_4http6header5value10ToStrErrorENtNtCsgxBkk5gSRhY_4core3fmt7Display3fmtCs5XgW7KoffLW_12opendal_core(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCselJpgKOOZlr_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !11, !nonnull !11
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #33
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs9_NtCselJpgKOOZlr_6anyhow5errorINtB5_9ErrorImplNtNtNtCs76KlaVGnJsc_4http6header5value18InvalidHeaderValueENtNtCsgxBkk5gSRhY_4core3fmt7Display3fmtCs5XgW7KoffLW_12opendal_core(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCselJpgKOOZlr_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !11, !nonnull !11
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #33
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs9_NtCselJpgKOOZlr_6anyhow5errorINtB5_9ErrorImplNtNtNtCsgxBkk5gSRhY_4core2io5error5ErrorENtNtBU_3fmt7Display3fmtCs5XgW7KoffLW_12opendal_core(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCselJpgKOOZlr_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !11, !nonnull !11
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #33
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs9_NtCselJpgKOOZlr_6anyhow5errorINtB5_9ErrorImplNtNtNtCsgxBkk5gSRhY_4core3num5error13ParseIntErrorENtNtBU_3fmt7Display3fmtCs5XgW7KoffLW_12opendal_core(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCselJpgKOOZlr_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !11, !nonnull !11
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #33
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs9_NtCselJpgKOOZlr_6anyhow5errorINtB5_9ErrorImplNtNtNtCskkYVyhWgx5W_10serde_core2de5value5ErrorENtNtCsgxBkk5gSRhY_4core3fmt7Display3fmtCs5XgW7KoffLW_12opendal_core(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCselJpgKOOZlr_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !11, !nonnull !11
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #33
  ret i1 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs9_NtNtCsgxBkk5gSRhY_4core3str5errorNtB5_9Utf8ErrorNtNtB9_3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @165, i64 noundef 9, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @166, i64 noundef 11, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @124, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @167, i64 noundef 9, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @164)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsC_NtNtCs76KlaVGnJsc_4http6header5valueNtB5_10ToStrErrorNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @169, i64 noundef 10, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @170, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @168)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtNtCsgxBkk5gSRhY_4core3fmt3numjNtB7_5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !11 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.b, 67108864
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvXs6_NtNtCsgxBkk5gSRhY_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCsgxBkk5gSRhY_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_RNvXs8_NtNtCsgxBkk5gSRhY_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, ptr } @_RNvXs_NtCs2GTOvRHBi2K_9quick_xml6escapeNtB4_17ParseCharRefErrorNtNtCsgxBkk5gSRhY_4core5error5Error6source(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %0) unnamed_addr #3 {
bb.a:
  %i.a = load i8, ptr %0, align 4, !range !24, !noundef !11
  %i.b = icmp eq i8 %i.a, 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.sroa.0.0 = select i1 %i.b, ptr %i.c, ptr null
  %i.d = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.e = insertvalue { ptr, ptr } %i.d, ptr @45, 1
  ret { ptr, ptr } %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs_NtCs2GTOvRHBi2K_9quick_xml8encodingNtB4_13EncodingErrorNtNtCsgxBkk5gSRhY_4core5error5Error6source(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @172, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvXs_NtCselJpgKOOZlr_6anyhow5errorNtB6_5ErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtNtCs4CtJ3uPHEZZ_4jiff5error5ErrorE4fromCs5XgW7KoffLW_12opendal_core(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs2_NtCs9k3SxhrAWiO_3std9backtraceNtB5_9Backtrace7capture(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a)
          to label %_RINvMNtCselJpgKOOZlr_6anyhow5errorNtB5_5Error18construct_from_stdNtNtCs4CtJ3uPHEZZ_4jiff5error5ErrorECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.b

_RINvMNtCselJpgKOOZlr_6anyhow5errorNtB5_5Error18construct_from_stdNtNtCs4CtJ3uPHEZZ_4jiff5error5ErrorECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = call fastcc noundef nonnull ptr @_RINvMNtCselJpgKOOZlr_6anyhow5errorNtB5_5Error9constructNtNtCs4CtJ3uPHEZZ_4jiff5error5ErrorECs5XgW7KoffLW_12opendal_core(ptr noundef %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.d

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs4CtJ3uPHEZZ_4jiff5error5ErrorECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.c, %bb.b, %bb.d
  resume { ptr, i32 } %i.e

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = icmp eq ptr %0, null
  br i1 %i.f, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs4CtJ3uPHEZZ_4jiff5error5ErrorECs5XgW7KoffLW_12opendal_core.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = atomicrmw sub ptr %0, i64 1 release, align 8, !noalias !1223
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.d, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs4CtJ3uPHEZZ_4jiff5error5ErrorECs5XgW7KoffLW_12opendal_core.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcNtNtCs4CtJ3uPHEZZ_4jiff5error10ErrorInnerE9drop_slowBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #31
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs4CtJ3uPHEZZ_4jiff5error5ErrorECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #30
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvXs_NtCselJpgKOOZlr_6anyhow5errorNtB6_5ErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtNtCs76KlaVGnJsc_4http3uri10InvalidUriE4fromCs5XgW7KoffLW_12opendal_core(i8 noundef range(i8 0, 12) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs2_NtCs9k3SxhrAWiO_3std9backtraceNtB5_9Backtrace7capture(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a)
  %i.b = call fastcc noundef nonnull ptr @_RINvMNtCselJpgKOOZlr_6anyhow5errorNtB5_5Error9constructNtNtCs76KlaVGnJsc_4http3uri10InvalidUriECs5XgW7KoffLW_12opendal_core(i8 noundef range(i8 0, 12) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.b
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvXs_NtCselJpgKOOZlr_6anyhow5errorNtB6_5ErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtNtCs76KlaVGnJsc_4http5error5ErrorE4fromCs5XgW7KoffLW_12opendal_core(i8 noundef range(i8 0, 7) %0, i8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs2_NtCs9k3SxhrAWiO_3std9backtraceNtB5_9Backtrace7capture(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a)
  %i.b = call fastcc noundef nonnull ptr @_RINvMNtCselJpgKOOZlr_6anyhow5errorNtB5_5Error9constructNtNtCs76KlaVGnJsc_4http5error5ErrorECs5XgW7KoffLW_12opendal_core(i8 noundef range(i8 0, 7) %0, i8 %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.b
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvXs_NtCselJpgKOOZlr_6anyhow5errorNtB6_5ErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtNtCs76KlaVGnJsc_4http6status17InvalidStatusCodeE4fromCs5XgW7KoffLW_12opendal_core() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs2_NtCs9k3SxhrAWiO_3std9backtraceNtB5_9Backtrace7capture(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a)
  %i.b = call fastcc noundef nonnull ptr @_RINvMNtCselJpgKOOZlr_6anyhow5errorNtB5_5Error9constructNtNtCs76KlaVGnJsc_4http6status17InvalidStatusCodeECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.b
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvXs_NtCselJpgKOOZlr_6anyhow5errorNtB6_5ErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtNtCs8HcOsDT3sMt_3url6parser10ParseErrorE4fromCs5XgW7KoffLW_12opendal_core(i8 noundef range(i8 0, 10) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs2_NtCs9k3SxhrAWiO_3std9backtraceNtB5_9Backtrace7capture(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a)
  %i.b = call fastcc noundef nonnull ptr @_RINvMNtCselJpgKOOZlr_6anyhow5errorNtB5_5Error9constructNtNtCs8HcOsDT3sMt_3url6parser10ParseErrorECs5XgW7KoffLW_12opendal_core(i8 noundef range(i8 0, 10) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.b
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvXs_NtCselJpgKOOZlr_6anyhow5errorNtB6_5ErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtNtCsdMEyVxnODSb_10serde_json5error5ErrorE4fromCs5XgW7KoffLW_12opendal_core(ptr noalias noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs2_NtCs9k3SxhrAWiO_3std9backtraceNtB5_9Backtrace7capture(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a)
          to label %_RINvMNtCselJpgKOOZlr_6anyhow5errorNtB5_5Error18construct_from_stdNtNtCsdMEyVxnODSb_10serde_json5error5ErrorECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.c

_RINvMNtCselJpgKOOZlr_6anyhow5errorNtB5_5Error18construct_from_stdNtNtCsdMEyVxnODSb_10serde_json5error5ErrorECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = call fastcc noundef nonnull ptr @_RINvMNtCselJpgKOOZlr_6anyhow5errorNtB5_5Error9constructNtNtCsdMEyVxnODSb_10serde_json5error5ErrorECs5XgW7KoffLW_12opendal_core(ptr noalias noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.d

bb.b:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsdMEyVxnODSb_10serde_json5error5ErrorECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #29
          to label %bb.b unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #30
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvXs_NtCselJpgKOOZlr_6anyhow5errorNtB6_5ErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtNtNtBN_2io5error5ErrorE4fromCs5XgW7KoffLW_12opendal_core(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs2_NtCs9k3SxhrAWiO_3std9backtraceNtB5_9Backtrace7capture(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a)
          to label %_RINvMNtCselJpgKOOZlr_6anyhow5errorNtB5_5Error18construct_from_stdNtNtNtCsgxBkk5gSRhY_4core2io5error5ErrorECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.c

_RINvMNtCselJpgKOOZlr_6anyhow5errorNtB5_5Error18construct_from_stdNtNtNtCsgxBkk5gSRhY_4core2io5error5ErrorECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = call fastcc noundef nonnull ptr @_RINvMNtCselJpgKOOZlr_6anyhow5errorNtB5_5Error9constructNtNtNtCsgxBkk5gSRhY_4core2io5error5ErrorECs5XgW7KoffLW_12opendal_core(ptr noundef nonnull %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.d

bb.b:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #29
          to label %bb.b unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #30
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvXs_NtCselJpgKOOZlr_6anyhow5errorNtB6_5ErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtNtNtBN_3num5error13ParseIntErrorE4fromCs5XgW7KoffLW_12opendal_core(i8 noundef range(i8 0, 6) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs2_NtCs9k3SxhrAWiO_3std9backtraceNtB5_9Backtrace7capture(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a)
  %i.b = call fastcc noundef nonnull ptr @_RINvMNtCselJpgKOOZlr_6anyhow5errorNtB5_5Error9constructNtNtNtCsgxBkk5gSRhY_4core3num5error13ParseIntErrorECs5XgW7KoffLW_12opendal_core(i8 noundef range(i8 0, 6) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.b
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvXs_NtCselJpgKOOZlr_6anyhow5errorNtB6_5ErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtNtNtCs2GTOvRHBi2K_9quick_xml6errors9serialize7DeErrorE4fromCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs2_NtCs9k3SxhrAWiO_3std9backtraceNtB5_9Backtrace7capture(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a)
          to label %_RINvMNtCselJpgKOOZlr_6anyhow5errorNtB5_5Error18construct_from_stdNtNtNtCs2GTOvRHBi2K_9quick_xml6errors9serialize7DeErrorECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.c

_RINvMNtCselJpgKOOZlr_6anyhow5errorNtB5_5Error18construct_from_stdNtNtNtCs2GTOvRHBi2K_9quick_xml6errors9serialize7DeErrorECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = call fastcc noundef nonnull ptr @_RINvMNtCselJpgKOOZlr_6anyhow5errorNtB5_5Error9constructNtNtNtCs2GTOvRHBi2K_9quick_xml6errors9serialize7DeErrorECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.c

bb.b:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.d

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs2GTOvRHBi2K_9quick_xml6errors9serialize7DeErrorECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) #29
          to label %bb.b unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #30
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvXs_NtCselJpgKOOZlr_6anyhow5errorNtB6_5ErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtNtNtCs2GTOvRHBi2K_9quick_xml6errors9serialize7SeErrorE4fromCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs2_NtCs9k3SxhrAWiO_3std9backtraceNtB5_9Backtrace7capture(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a)
          to label %_RINvMNtCselJpgKOOZlr_6anyhow5errorNtB5_5Error18construct_from_stdNtNtNtCs2GTOvRHBi2K_9quick_xml6errors9serialize7SeErrorECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.c

_RINvMNtCselJpgKOOZlr_6anyhow5errorNtB5_5Error18construct_from_stdNtNtNtCs2GTOvRHBi2K_9quick_xml6errors9serialize7SeErrorECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = call fastcc noundef nonnull ptr @_RINvMNtCselJpgKOOZlr_6anyhow5errorNtB5_5Error9constructNtNtNtCs2GTOvRHBi2K_9quick_xml6errors9serialize7SeErrorECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.c

bb.b:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.d

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs2GTOvRHBi2K_9quick_xml6errors9serialize7SeErrorECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) #29
          to label %bb.b unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #30
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvXs_NtCselJpgKOOZlr_6anyhow5errorNtB6_5ErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtNtNtCs76KlaVGnJsc_4http6header4name17InvalidHeaderNameE4fromCs5XgW7KoffLW_12opendal_core() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs2_NtCs9k3SxhrAWiO_3std9backtraceNtB5_9Backtrace7capture(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a)
  %i.b = call fastcc noundef nonnull ptr @_RINvMNtCselJpgKOOZlr_6anyhow5errorNtB5_5Error9constructNtNtNtCs76KlaVGnJsc_4http6header4name17InvalidHeaderNameECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.b
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvXs_NtCselJpgKOOZlr_6anyhow5errorNtB6_5ErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtNtNtCs76KlaVGnJsc_4http6header5value10ToStrErrorE4fromCs5XgW7KoffLW_12opendal_core() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs2_NtCs9k3SxhrAWiO_3std9backtraceNtB5_9Backtrace7capture(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a)
  %i.b = call fastcc noundef nonnull ptr @_RINvMNtCselJpgKOOZlr_6anyhow5errorNtB5_5Error9constructNtNtNtCs76KlaVGnJsc_4http6header5value10ToStrErrorECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.b
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvXs_NtCselJpgKOOZlr_6anyhow5errorNtB6_5ErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtNtNtCs76KlaVGnJsc_4http6header5value18InvalidHeaderValueE4fromCs5XgW7KoffLW_12opendal_core() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs2_NtCs9k3SxhrAWiO_3std9backtraceNtB5_9Backtrace7capture(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a)
  %i.b = call fastcc noundef nonnull ptr @_RINvMNtCselJpgKOOZlr_6anyhow5errorNtB5_5Error9constructNtNtNtCs76KlaVGnJsc_4http6header5value18InvalidHeaderValueECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.b
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvXs_NtCselJpgKOOZlr_6anyhow5errorNtB6_5ErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtNtNtCskkYVyhWgx5W_10serde_core2de5value5ErrorE4fromCs5XgW7KoffLW_12opendal_core(ptr noalias noundef nonnull %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs2_NtCs9k3SxhrAWiO_3std9backtraceNtB5_9Backtrace7capture(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a)
          to label %_RINvMNtCselJpgKOOZlr_6anyhow5errorNtB5_5Error18construct_from_stdNtNtNtCskkYVyhWgx5W_10serde_core2de5value5ErrorECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.b

_RINvMNtCselJpgKOOZlr_6anyhow5errorNtB5_5Error18construct_from_stdNtNtNtCskkYVyhWgx5W_10serde_core2de5value5ErrorECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = call fastcc noundef nonnull ptr @_RINvMNtCselJpgKOOZlr_6anyhow5errorNtB5_5Error9constructNtNtNtCskkYVyhWgx5W_10serde_core2de5value5ErrorECs5XgW7KoffLW_12opendal_core(ptr noalias noundef nonnull %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.c

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskkYVyhWgx5W_10serde_core2de5value5ErrorECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.d

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = icmp eq i64 %1, 0
  br i1 %i.e, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskkYVyhWgx5W_10serde_core2de5value5ErrorECs5XgW7KoffLW_12opendal_core.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef range(i64 1, 0) %1, i64 noundef 1) #27, !noalias !1226
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskkYVyhWgx5W_10serde_core2de5value5ErrorECs5XgW7KoffLW_12opendal_core.exit
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define internal { ptr, ptr } @_RNvXs_NtNtCs2GTOvRHBi2K_9quick_xml6errors9serializeNtB4_7DeErrorNtNtCsgxBkk5gSRhY_4core5error5Error6source(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0) unnamed_addr #10 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !29, !noundef !11 ; 2 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775792
  tail call void @llvm.assume(i1 %i.b)
  %i.c = icmp ult i64 %i.a, -9223372036854775793
  %. = select i1 %i.c, ptr %0, ptr null
  %i.d = insertvalue { ptr, ptr } poison, ptr %., 0
  %i.e = insertvalue { ptr, ptr } %i.d, ptr @174, 1
  ret { ptr, ptr } %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCskzxhmhyEueV_12futures_util6future6future13remote_handleINtB4_12RemoteHandleTNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream16ChunkedReadInputINtNtCsgxBkk5gSRhY_4core6result6ResultNtNtB1w_6buffer6BufferNtNtB1w_5error5ErrorEEENtNtNtB2N_6future6future6Future4pollB1y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([136 x i8]) align 8 captures(none) dereferenceable(136) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [136 x i8], align 8               ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @_RNvMs0_NtCsK9IUdK075C_15futures_channel7oneshotINtB5_5InnerINtNtCsgxBkk5gSRhY_4core6result6ResultTNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream16ChunkedReadInputIBW_NtNtB1E_6buffer6BufferNtNtB1E_5error5ErrorEEINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtB10_3any3AnyNtNtB10_6marker4SendEL_EEE4recvB1G_(ptr noalias nofree noundef nonnull sret([136 x i8]) align 8 captures(none) dereferenceable(136) %i.a, ptr noundef nonnull align 8 %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  %i.d = load i64, ptr %i.a, align 8, !range !1227, !noundef !11 ; 3 uses
  %i.e = icmp eq i64 %i.d, -3
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load <2 x ptr>, ptr %.sroa.4.0..sroa_idx, align 8 ; 3 uses
  switch i64 %i.d, label %bb.f [
    i64 -2, label %bb.d
    i64 -1, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs9k3SxhrAWiO_3std5panic13resume_unwind(ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @175) #28
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.g = extractelement <2 x ptr> %i.f, i64 0     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.h = extractelement <2 x ptr> %i.f, i64 1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  tail call void @_RNvNtCs9k3SxhrAWiO_3std5panic13resume_unwind(ptr noundef nonnull %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.h) #28
  unreachable

bb.f:                                             ; preds = %bb.c
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.612.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.6.0..sroa_idx, i64 112, i1 false)
  store i64 %i.d, ptr %0, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x ptr> %i.f, ptr %.sroa.410.0..sroa_idx, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define internal { ptr, ptr } @_RNvXsb_NtCs2GTOvRHBi2K_9quick_xml6errorsNtB5_5ErrorNtNtCsgxBkk5gSRhY_4core5error5Error6source(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0) unnamed_addr #10 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !27, !noundef !11 ; 3 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775798
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, 9223372036854775800
  %i.d = icmp ugt i64 %i.a, -9223372036854775801
  %i.e = select i1 %i.d, i64 %i.c, i64 2
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.i
    i64 3, label %bb.e
    i64 4, label %bb.f
    i64 5, label %bb.g
    i64 6, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.8.0 = phi ptr [ @155, %bb.c ], [ @177, %bb.d ], [ @187, %bb.h ], [ @181, %bb.e ], [ @183, %bb.f ], [ @185, %bb.g ], [ @179, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.f, %bb.c ], [ %i.g, %bb.d ], [ %i.k, %bb.h ], [ %i.h, %bb.e ], [ %i.i, %bb.f ], [ %i.j, %bb.g ], [ %0, %bb.a ]
  %i.l = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.m = insertvalue { ptr, ptr } %i.l, ptr %.sroa.8.0, 1
  ret { ptr, ptr } %i.m
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsb_NtNtCs5XgW7KoffLW_12opendal_core5types6bufferNtB5_6BufferNtNtNtCsk2Y6yuwWMc1_5bytes3buf8buf_impl3Buf7advance(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %1, ptr %i.f, align 8
  %i.g = load ptr, ptr %0, align 8, !noundef !11  ; 3 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.h, ptr %i.e, align 8
  %i.i = load i64, ptr %i.h, align 8, !noundef !11 ; 2 uses
  %.not19 = icmp ugt i64 %1, %i.i
  br i1 %.not19, label %bb.f, label %bb.g, !prof !12

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1231)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %1, ptr %i.c, align 8, !noalias !1231
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !1231, !noundef !11 ; 3 uses
  %.not.i = icmp ugt i64 %1, %i.k
  br i1 %.not.i, label %bb.d, label %_RNvXs3_NtCsk2Y6yuwWMc1_5bytes5bytesNtB5_5BytesNtNtNtB7_3buf8buf_impl3Buf7advance.exit, !prof !12

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1231
  store i64 %i.k, ptr %i.b, align 8, !noalias !1231
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1231
  store ptr %i.c, ptr %i.a, align 8, !noalias !1231
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsZ_NtNtCsgxBkk5gSRhY_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !1231
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.l, align 8, !noalias !1231
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsZ_NtNtCsgxBkk5gSRhY_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !1231
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking9panic_fmt(ptr noundef nonnull @147, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @149) #32, !noalias !1231
  unreachable

_RNvXs3_NtCsk2Y6yuwWMc1_5bytes5bytesNtB5_5BytesNtNtNtB7_3buf8buf_impl3Buf7advance.exit: ; preds = %bb.c
  %i.m = sub nuw i64 %i.k, %1
  store i64 %i.m, ptr %i.j, align 8, !alias.scope !1231
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !1231, !noundef !11
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %1
  store ptr %i.p, ptr %i.n, align 8, !alias.scope !1231
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.e

bb.e:                                             ; preds = %.loopexit, %_RNvXs3_NtCsk2Y6yuwWMc1_5bytes5bytesNtB5_5BytesNtNtNtB7_3buf8buf_impl3Buf7advance.exit
  ret void

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.f, ptr %i.d, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXsi_NtNtNtCsgxBkk5gSRhY_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.412.0..sroa_idx, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.e, ptr %i.q, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @_RNvXs1j_NtCsgxBkk5gSRhY_4core3fmtQjNtB6_7Display3fmtCs5XgW7KoffLW_12opendal_core, ptr %.sroa.416.0..sroa_idx, align 8
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking9panic_fmt(ptr noundef nonnull @190, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @191) #32
end_hunk_2
