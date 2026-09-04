Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_commands-7ab43501acdbf4d6.influxdb3_commands.e843c440600a9e37-cgu.15?download=true
inline.NumInlined: 542
inline.NumDeleted: 212
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRReNtB6_5Debug3fmtCsjWl3uGiVprL_18influxdb3_commands }>, align 8
@1 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRhNtB6_5Debug3fmtCsjWl3uGiVprL_18influxdb3_commands }>, align 8
@2 = private unnamed_addr constant [32 x i8] c"influxdb3_commands/src/write.rs\00", align 1
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"\1F\00\00\00\00\00\00\00\E4\00\00\00\14\00\00\00" }>, align 8
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"\1F\00\00\00\00\00\00\00\E5\00\00\00\05\00\00\00" }>, align 8
@5 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs5SRHcsv2kA9_12futures_util6stream6unfold6UnfoldINtNtNtNtCseCDlJsl44RV_5tokio4sync4mpsc7bounded8ReceiverINtNtB4_6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtCsjWl3uGiVprL_18influxdb3_commands5write5ErrorEENCINvB3m_14read_as_streamNtNtCs2AWtUsOyxgP_3std2fs4FileEs_0NCNCB4c_s_00EEB3o_, [16 x i8] c"0\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs0_NtNtCs5SRHcsv2kA9_12futures_util6stream6unfoldINtB5_6UnfoldINtNtNtNtCseCDlJsl44RV_5tokio4sync4mpsc7bounded8ReceiverINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtCsjWl3uGiVprL_18influxdb3_commands5write5ErrorEENCINvB39_14read_as_streamNtNtCs2AWtUsOyxgP_3std2fs4FileEs_0NCNCB3Z_s_00ENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextB3b_, ptr @_RNvYINtNtNtCs5SRHcsv2kA9_12futures_util6stream6unfold6UnfoldINtNtNtNtCseCDlJsl44RV_5tokio4sync4mpsc7bounded8ReceiverINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtCsjWl3uGiVprL_18influxdb3_commands5write5ErrorEENCINvB33_14read_as_streamNtNtCs2AWtUsOyxgP_3std2fs4FileEs_0NCNCB3T_s_00ENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9size_hintB35_ }>, align 8
@6 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs5SRHcsv2kA9_12futures_util6stream6unfold6UnfoldINtNtNtNtCseCDlJsl44RV_5tokio4sync4mpsc7bounded8ReceiverINtNtB4_6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtCsjWl3uGiVprL_18influxdb3_commands5write5ErrorEENCINvB3m_14read_as_streamNtNtNtCs2AWtUsOyxgP_3std2io5stdio5StdinEs_0NCNCB4c_s_00EEB3o_, [16 x i8] c"0\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs0_NtNtCs5SRHcsv2kA9_12futures_util6stream6unfoldINtB5_6UnfoldINtNtNtNtCseCDlJsl44RV_5tokio4sync4mpsc7bounded8ReceiverINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtCsjWl3uGiVprL_18influxdb3_commands5write5ErrorEENCINvB39_14read_as_streamNtNtNtCs2AWtUsOyxgP_3std2io5stdio5StdinEs_0NCNCB3Z_s_00ENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextB3b_, ptr @_RNvYINtNtNtCs5SRHcsv2kA9_12futures_util6stream6unfold6UnfoldINtNtNtNtCseCDlJsl44RV_5tokio4sync4mpsc7bounded8ReceiverINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtCsjWl3uGiVprL_18influxdb3_commands5write5ErrorEENCINvB33_14read_as_streamNtNtNtCs2AWtUsOyxgP_3std2io5stdio5StdinEs_0NCNCB3T_s_00ENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9size_hintB35_ }>, align 8
@7 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsK_NtCs4NRVxsYgnAr_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt }>, align 8
@8 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs5SRHcsv2kA9_12futures_util6stream4iter4IterINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtB4_6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtCsjWl3uGiVprL_18influxdb3_commands5write5ErrorEEEEB3d_, [16 x i8] c" \00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs0_NtNtCs5SRHcsv2kA9_12futures_util6stream4iterINtB5_4IterINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtCsjWl3uGiVprL_18influxdb3_commands5write5ErrorEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextB30_, ptr @_RNvXs0_NtNtCs5SRHcsv2kA9_12futures_util6stream4iterINtB5_4IterINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtCsjWl3uGiVprL_18influxdb3_commands5write5ErrorEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9size_hintB30_ }>, align 8
@_RNvNtCsuxFxh2mtOX_5bytes9bytes_mut13SHARED_VTABLE = external global { ptr, ptr, ptr, ptr, ptr }
@9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"\1F\00\00\00\00\00\00\00\01\02\00\00\12\00\00\00" }>, align 8
@10 = private unnamed_addr constant [24 x i8] c"value must be at least 1", align 1
@_RNvNtNtNtCs4NRVxsYgnAr_4core7unicode12unicode_data11white_space14WHITESPACE_MAP = external local_unnamed_addr global [256 x i8]
@_RNvNvXsd_NtCsjWl3uGiVprL_18influxdb3_commands5writeNtB7_6ConfigNtNtCsbyItyepKEh3_12clap_builder6derive4Args12augment_args13DEFAULT_VALUE = internal global <{ [24 x i8], [4 x i8], [4 x i8] }> <{ [24 x i8] undef, [4 x i8] c"\03\00\00\00", [4 x i8] undef }>, align 8
@_RNvNvXsd_NtCsjWl3uGiVprL_18influxdb3_commands5writeNtB7_6ConfigNtNtCsbyItyepKEh3_12clap_builder6derive4Args12augment_argss_13DEFAULT_VALUE = internal global <{ [24 x i8], [4 x i8], [4 x i8] }> <{ [24 x i8] undef, [4 x i8] c"\03\00\00\00", [4 x i8] undef }>, align 8
@_RNvNvXsd_NtCsjWl3uGiVprL_18influxdb3_commands5writeNtB7_6ConfigNtNtCsbyItyepKEh3_12clap_builder6derive4Args23augment_args_for_update13DEFAULT_VALUE = internal global <{ [24 x i8], [4 x i8], [4 x i8] }> <{ [24 x i8] undef, [4 x i8] c"\03\00\00\00", [4 x i8] undef }>, align 8
@_RNvNvXsd_NtCsjWl3uGiVprL_18influxdb3_commands5writeNtB7_6ConfigNtNtCsbyItyepKEh3_12clap_builder6derive4Args23augment_args_for_updates_13DEFAULT_VALUE = internal global <{ [24 x i8], [4 x i8], [4 x i8] }> <{ [24 x i8] undef, [4 x i8] c"\03\00\00\00", [4 x i8] undef }>, align 8
@11 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -3670754173410178879 to ptr), ptr inttoptr (i64 -3375759610920111893 to ptr) }>, align 8
@12 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsjWl3uGiVprL_18influxdb3_commands, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsq_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtCsjWl3uGiVprL_18influxdb3_commands }>, align 8
@13 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtB8_3str5error9Utf8ErrorNtB6_5Debug3fmtCsjWl3uGiVprL_18influxdb3_commands }>, align 8
@14 = private unnamed_addr constant [13 x i8] c"FromUtf8Error", align 1
@15 = private unnamed_addr constant [5 x i8] c"bytes", align 1
@16 = private unnamed_addr constant [5 x i8] c"error", align 1
@17 = private unnamed_addr constant [15 x i8] c"no data written", align 1
@18 = private unnamed_addr constant [7 x i8] c"request", align 1
@19 = private unnamed_addr constant [8 x i8] c"requests", align 1
@20 = private unnamed_addr constant [68 x i8] c"\C0\02: \C0\01 \C0\02 (\C5 \00\00p\02\00\10 requests/sec), \C0\08 lines (\C0\0B lines/s), \C0\02 (\C0\03/s)\00", align 1
@21 = private unnamed_addr constant [42 x i8] c"!cannot advance past `remaining`: \C0\04 <= \C0\00", align 1
@22 = private unnamed_addr constant [95 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/bytes-1.12.1/src/bytes.rs\00", align 1
@23 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @22, [16 x i8] c"^\00\00\00\00\00\00\00\B6\02\00\00\09\00\00\00" }>, align 8
@24 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsjWl3uGiVprL_18influxdb3_commands, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs5_NtNtCs2AWtUsOyxgP_3std2io5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt }>, align 8
@25 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsjWl3uGiVprL_18influxdb3_commands, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNtNtCs2AWtUsOyxgP_3std2io5errorNtB2_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr @_RNvXs5_NtNtCs2AWtUsOyxgP_3std2io5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr @24, ptr @_RNvXs6_NtNtCs2AWtUsOyxgP_3std2io5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source, ptr @_RNvYNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsjWl3uGiVprL_18influxdb3_commands, ptr @_RNvYNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsjWl3uGiVprL_18influxdb3_commands, ptr @_RNvXs6_NtNtCs2AWtUsOyxgP_3std2io5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error5cause, ptr @_RNvYNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCsjWl3uGiVprL_18influxdb3_commands }>, align 8
@26 = private unnamed_addr constant [23 x i8] c"\14error reading file: \C0\00", align 1
@27 = private unnamed_addr constant [81 x i8] c"No input from stdin detected, no string was passed in, and no file path was given", align 1
@28 = private unnamed_addr constant [32 x i8] c"no line protocol string provided", align 1
@29 = private unnamed_addr constant [95 x i8] c"ensure that a single protocol line string is provided as the final argument, enclosed in quotes", align 1
@30 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsjWl3uGiVprL_18influxdb3_commands, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str, ptr @_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write10write_char, ptr @_RNvYNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_fmtCsjWl3uGiVprL_18influxdb3_commands }>, align 8
@31 = private unnamed_addr constant [55 x i8] c"a Display implementation returned an error unexpectedly", align 1
@32 = private unnamed_addr constant [116 x i8] c"/home/opt-bench/.rustup/toolchains/1.97.1-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/alloc/src/string.rs\00", align 1
@33 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @32, [16 x i8] c"s\00\00\00\00\00\00\00q\0B\00\00\0E\00\00\00" }>, align 8
@34 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCscdodAO9FK5_5alloc6string6StringNtB6_5Debug3fmtCsjWl3uGiVprL_18influxdb3_commands }>, align 8
@35 = private unnamed_addr constant [10 x i8] c"Conversion", align 1
@36 = private unnamed_addr constant [3 x i8] c"msg", align 1
@37 = private unnamed_addr constant [5 x i8] c"Error", align 1
@38 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs4oFq2PzodUt_7reqwest5error5ErrorECsjWl3uGiVprL_18influxdb3_commands, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs0_NtCs4oFq2PzodUt_7reqwest5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt }>, align 8
@39 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs4oFq2PzodUt_7reqwest5error5ErrorECsjWl3uGiVprL_18influxdb3_commands, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtCs4oFq2PzodUt_7reqwest5errorNtB4_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr @_RNvXs0_NtCs4oFq2PzodUt_7reqwest5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr @38, ptr @_RNvXs1_NtCs4oFq2PzodUt_7reqwest5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source, ptr @_RNvYNtNtCs4oFq2PzodUt_7reqwest5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsjWl3uGiVprL_18influxdb3_commands, ptr @_RNvYNtNtCs4oFq2PzodUt_7reqwest5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsjWl3uGiVprL_18influxdb3_commands, ptr @_RNvYNtNtCs4oFq2PzodUt_7reqwest5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error5causeCsjWl3uGiVprL_18influxdb3_commands, ptr @_RNvYNtNtCs4oFq2PzodUt_7reqwest5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCsjWl3uGiVprL_18influxdb3_commands }>, align 8
@40 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs9_NtCsj7DbYNsdxOJ_3url6parserNtB5_10ParseErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt }>, align 8
@41 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsg_NtCsj7DbYNsdxOJ_3url6parserNtB5_10ParseErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr @_RNvXs9_NtCsj7DbYNsdxOJ_3url6parserNtB5_10ParseErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr @40, ptr @_RNvYNtNtCsj7DbYNsdxOJ_3url6parser10ParseErrorNtNtCs4NRVxsYgnAr_4core5error5Error6sourceCsjWl3uGiVprL_18influxdb3_commands, ptr @_RNvYNtNtCsj7DbYNsdxOJ_3url6parser10ParseErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsjWl3uGiVprL_18influxdb3_commands, ptr @_RNvYNtNtCsj7DbYNsdxOJ_3url6parser10ParseErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsjWl3uGiVprL_18influxdb3_commands, ptr @_RNvYNtNtCsj7DbYNsdxOJ_3url6parser10ParseErrorNtNtCs4NRVxsYgnAr_4core5error5Error5causeCsjWl3uGiVprL_18influxdb3_commands, ptr @_RNvYNtNtCsj7DbYNsdxOJ_3url6parser10ParseErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCsjWl3uGiVprL_18influxdb3_commands }>, align 8
@42 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorECsjWl3uGiVprL_18influxdb3_commands, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs3_NtCsdLkRf3gRIi6_10serde_json5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt }>, align 8
@43 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorECsjWl3uGiVprL_18influxdb3_commands, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs5_NtCsdLkRf3gRIi6_10serde_json5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr @_RNvXs3_NtCsdLkRf3gRIi6_10serde_json5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr @42, ptr @_RNvXs2_NtCsdLkRf3gRIi6_10serde_json5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source, ptr @_RNvYNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsjWl3uGiVprL_18influxdb3_commands, ptr @_RNvYNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsjWl3uGiVprL_18influxdb3_commands, ptr @_RNvYNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error5causeCsjWl3uGiVprL_18influxdb3_commands, ptr @_RNvYNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCsjWl3uGiVprL_18influxdb3_commands }>, align 8
@44 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1hWu9vWSLgD_16iox_query_params6params5ErrorECsjWl3uGiVprL_18influxdb3_commands, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsH_NtCs1hWu9vWSLgD_16iox_query_params6paramsNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt }>, align 8
@45 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1hWu9vWSLgD_16iox_query_params6params5ErrorECsjWl3uGiVprL_18influxdb3_commands, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsF_NtCs1hWu9vWSLgD_16iox_query_params6paramsNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr @_RNvXsH_NtCs1hWu9vWSLgD_16iox_query_params6paramsNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr @44, ptr @_RNvYNtNtCs1hWu9vWSLgD_16iox_query_params6params5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error6sourceCsjWl3uGiVprL_18influxdb3_commands, ptr @_RNvYNtNtCs1hWu9vWSLgD_16iox_query_params6params5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsjWl3uGiVprL_18influxdb3_commands, ptr @_RNvYNtNtCs1hWu9vWSLgD_16iox_query_params6params5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsjWl3uGiVprL_18influxdb3_commands, ptr @_RNvYNtNtCs1hWu9vWSLgD_16iox_query_params6params5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error5causeCsjWl3uGiVprL_18influxdb3_commands, ptr @_RNvYNtNtCs1hWu9vWSLgD_16iox_query_params6params5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCsjWl3uGiVprL_18influxdb3_commands }>, align 8
@46 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string13FromUtf8ErrorECsjWl3uGiVprL_18influxdb3_commands, [16 x i8] c"(\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs0_NtCscdodAO9FK5_5alloc6stringNtB5_13FromUtf8ErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt }>, align 8
@47 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string13FromUtf8ErrorECsjWl3uGiVprL_18influxdb3_commands, [16 x i8] c"(\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1m_NtCscdodAO9FK5_5alloc6stringNtB6_13FromUtf8ErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr @_RNvXs0_NtCscdodAO9FK5_5alloc6stringNtB5_13FromUtf8ErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr @46, ptr @_RNvYNtNtCscdodAO9FK5_5alloc6string13FromUtf8ErrorNtNtCs4NRVxsYgnAr_4core5error5Error6sourceCsjWl3uGiVprL_18influxdb3_commands, ptr @_RNvYNtNtCscdodAO9FK5_5alloc6string13FromUtf8ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsjWl3uGiVprL_18influxdb3_commands, ptr @_RNvYNtNtCscdodAO9FK5_5alloc6string13FromUtf8ErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsjWl3uGiVprL_18influxdb3_commands, ptr @_RNvYNtNtCscdodAO9FK5_5alloc6string13FromUtf8ErrorNtNtCs4NRVxsYgnAr_4core5error5Error5causeCsjWl3uGiVprL_18influxdb3_commands, ptr @_RNvYNtNtCscdodAO9FK5_5alloc6string13FromUtf8ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCsjWl3uGiVprL_18influxdb3_commands }>, align 8
@48 = private unnamed_addr constant [18 x i8] c"influxdb3_commands", align 1
@49 = private unnamed_addr constant [14 x i8] c"write_host_url", align 1
@50 = private unnamed_addr constant [9 x i8] c"file_path", align 1
@51 = private unnamed_addr constant [21 x i8] c"accept_partial_writes", align 1
@52 = private unnamed_addr constant [71 x i8] c"the following required argument was not provided: accept_partial_writes", align 1
@53 = private unnamed_addr constant [14 x i8] c"no_sync_writes", align 1
@54 = private unnamed_addr constant [64 x i8] c"the following required argument was not provided: no_sync_writes", align 1
@55 = private unnamed_addr constant [4 x i8] c"gzip", align 1
@56 = private unnamed_addr constant [54 x i8] c"the following required argument was not provided: gzip", align 1
@57 = private unnamed_addr constant [16 x i8] c"max_request_size", align 1
@58 = private unnamed_addr constant [66 x i8] c"the following required argument was not provided: max_request_size", align 1
@59 = private unnamed_addr constant [23 x i8] c"max_concurrent_requests", align 1
@60 = private unnamed_addr constant [73 x i8] c"the following required argument was not provided: max_concurrent_requests", align 1
@61 = private unnamed_addr constant [5 x i8] c"quiet", align 1
@62 = private unnamed_addr constant [55 x i8] c"the following required argument was not provided: quiet", align 1
@63 = private unnamed_addr constant [13 x i8] c"line_protocol", align 1
@64 = private unnamed_addr constant [9 x i8] c"precision", align 1
@65 = private unnamed_addr constant [7 x i8] c"ca_cert", align 1
@66 = private unnamed_addr constant [13 x i8] c"tls_no_verify", align 1
@67 = private unnamed_addr constant [63 x i8] c"the following required argument was not provided: tls_no_verify", align 1
@68 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -46808129884333750 to ptr), ptr inttoptr (i64 3795807868714612393 to ptr) }>, align 8
@69 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 7234092683629671671 to ptr), ptr inttoptr (i64 5623071142627041991 to ptr) }>, align 8
@70 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNtCs4NRVxsYgnAr_4core3anyjNtB2_3Any7type_idCsjWl3uGiVprL_18influxdb3_commands }>, align 8
@71 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsc_NtNtCsbyItyepKEh3_12clap_builder7builder12value_parserNvNtCsjWl3uGiVprL_18influxdb3_commands5write19parse_nonzero_usizeNtB5_14AnyValueParser9parse_refB11_, ptr @_RNvXsc_NtNtCsbyItyepKEh3_12clap_builder7builder12value_parserNvNtCsjWl3uGiVprL_18influxdb3_commands5write19parse_nonzero_usizeNtB5_14AnyValueParser10parse_ref_B11_, ptr @_RNvXsc_NtNtCsbyItyepKEh3_12clap_builder7builder12value_parserNvNtCsjWl3uGiVprL_18influxdb3_commands5write19parse_nonzero_usizeNtB5_14AnyValueParser7type_idB11_, ptr @_RNvXsc_NtNtCsbyItyepKEh3_12clap_builder7builder12value_parserNvNtCsjWl3uGiVprL_18influxdb3_commands5write19parse_nonzero_usizeNtB5_14AnyValueParser15possible_valuesB11_, ptr @_RNvXsc_NtNtCsbyItyepKEh3_12clap_builder7builder12value_parserNvNtCsjWl3uGiVprL_18influxdb3_commands5write19parse_nonzero_usizeNtB5_14AnyValueParser9clone_anyB11_ }>, align 8
@72 = private unnamed_addr constant [6 x i8] c"Config", align 1
@73 = private unnamed_addr constant [14 x i8] c"WRITE_HOST_URL", align 1
@74 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsc_NtNtCsbyItyepKEh3_12clap_builder7builder12value_parserFG_RL0_eEINtNtCs4NRVxsYgnAr_4core6result6ResultNtCsj7DbYNsdxOJ_3url3UrlNtNtB1K_6parser10ParseErrorENtB5_14AnyValueParser9parse_refCsjWl3uGiVprL_18influxdb3_commands, ptr @_RNvXsc_NtNtCsbyItyepKEh3_12clap_builder7builder12value_parserFG_RL0_eEINtNtCs4NRVxsYgnAr_4core6result6ResultNtCsj7DbYNsdxOJ_3url3UrlNtNtB1K_6parser10ParseErrorENtB5_14AnyValueParser10parse_ref_CsjWl3uGiVprL_18influxdb3_commands, ptr @_RNvXsc_NtNtCsbyItyepKEh3_12clap_builder7builder12value_parserFG_RL0_eEINtNtCs4NRVxsYgnAr_4core6result6ResultNtCsj7DbYNsdxOJ_3url3UrlNtNtB1K_6parser10ParseErrorENtB5_14AnyValueParser7type_idCsjWl3uGiVprL_18influxdb3_commands, ptr @_RNvXsc_NtNtCsbyItyepKEh3_12clap_builder7builder12value_parserFG_RL0_eEINtNtCs4NRVxsYgnAr_4core6result6ResultNtCsj7DbYNsdxOJ_3url3UrlNtNtB1K_6parser10ParseErrorENtB5_14AnyValueParser15possible_valuesCsjWl3uGiVprL_18influxdb3_commands, ptr @_RNvXsc_NtNtCsbyItyepKEh3_12clap_builder7builder12value_parserFG_RL0_eEINtNtCs4NRVxsYgnAr_4core6result6ResultNtCsj7DbYNsdxOJ_3url3UrlNtNtB1K_6parser10ParseErrorENtB5_14AnyValueParser9clone_anyCsjWl3uGiVprL_18influxdb3_commands }>, align 8
@75 = private unnamed_addr constant [38 x i8] c"Override host URL for write operations", align 1
@76 = private unnamed_addr constant [10 x i8] c"write-host", align 1
@77 = private unnamed_addr constant [24 x i8] c"INFLUXDB3_WRITE_HOST_URL", align 1
@78 = private unnamed_addr constant [9 x i8] c"FILE_PATH", align 1
@79 = private unnamed_addr constant [37 x i8] c"File path to load the write data from", align 1
@80 = private unnamed_addr constant [100 x i8] c"File path to load the write data from\0A\0ACurrently, only files containing line protocol are supported.", align 1
@81 = private unnamed_addr constant [4 x i8] c"file", align 1
@82 = private unnamed_addr constant [21 x i8] c"ACCEPT_PARTIAL_WRITES", align 1
@83 = private unnamed_addr constant [48 x i8] c"Flag to request the server accept partial writes", align 1
@84 = private unnamed_addr constant [112 x i8] c"Flag to request the server accept partial writes\0A\0AInvalid lines in the input data will be ignored by the server.", align 1
@85 = private unnamed_addr constant [14 x i8] c"accept-partial", align 1
@86 = private unnamed_addr constant [14 x i8] c"NO_SYNC_WRITES", align 1
@87 = private unnamed_addr constant [59 x i8] c"Flag to request the server not wait for sync before ACK'ing", align 1
@88 = private unnamed_addr constant [117 x i8] c"Flag to request the server not wait for sync before ACK'ing\0A\0AThis option returns a success before a write is durable.", align 1
@89 = private unnamed_addr constant [7 x i8] c"no-sync", align 1
@90 = private unnamed_addr constant [4 x i8] c"GZIP", align 1
@91 = private unnamed_addr constant [45 x i8] c"Gzip-compress the request body before sending", align 1
@92 = private unnamed_addr constant [165 x i8] c"Gzip-compress the request body before sending.\0A\0AReduces network bytes for large line-protocol payloads (e.g. when using `--file`). The server accepts gzipped writes.", align 1
@93 = private unnamed_addr constant [16 x i8] c"MAX_REQUEST_SIZE", align 1
@94 = private unnamed_addr constant [54 x i8] c"Maximum size (in bytes) of a single write request body", align 1
@95 = private unnamed_addr constant [222 x i8] c"Maximum size (in bytes) of a single write request body.\0A\0AInputs larger than this are split at newline boundaries and sent as multiple requests. The default is chosen to match the default `--max-http-request-size` (10 MiB).", align 1
@96 = private unnamed_addr constant [16 x i8] c"max-request-size", align 1
@97 = private unnamed_addr constant [23 x i8] c"MAX_CONCURRENT_REQUESTS", align 1
@98 = private unnamed_addr constant [55 x i8] c"Maximum number of write requests in flight concurrently", align 1
@99 = private unnamed_addr constant [241 x i8] c"Maximum number of write requests in flight concurrently.\0A\0ALarger values increase throughput when the server can keep up, at the cost of more memory in the client and more in-flight load on the server. Set to 1 for strictly sequential writes.", align 1
@100 = private unnamed_addr constant [23 x i8] c"max-concurrent-requests", align 1
@101 = private unnamed_addr constant [5 x i8] c"QUIET", align 1
@102 = private unnamed_addr constant [46 x i8] c"Quiet mode: suppress status printing to stderr", align 1
@103 = private unnamed_addr constant [13 x i8] c"LINE_PROTOCOL", align 1
@104 = private unnamed_addr constant [53 x i8] c"Give a quoted line protocol line via the command line", align 1
@105 = private unnamed_addr constant [9 x i8] c"PRECISION", align 1
@106 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsc_NtNtCsbyItyepKEh3_12clap_builder7builder12value_parserFG_RL0_eEINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCs9h7Hq22ZyhR_15influxdb3_types5write9PrecisionNtNtCscdodAO9FK5_5alloc6string6StringENtB5_14AnyValueParser9parse_refCsjWl3uGiVprL_18influxdb3_commands, ptr @_RNvXsc_NtNtCsbyItyepKEh3_12clap_builder7builder12value_parserFG_RL0_eEINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCs9h7Hq22ZyhR_15influxdb3_types5write9PrecisionNtNtCscdodAO9FK5_5alloc6string6StringENtB5_14AnyValueParser10parse_ref_CsjWl3uGiVprL_18influxdb3_commands, ptr @_RNvXsc_NtNtCsbyItyepKEh3_12clap_builder7builder12value_parserFG_RL0_eEINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCs9h7Hq22ZyhR_15influxdb3_types5write9PrecisionNtNtCscdodAO9FK5_5alloc6string6StringENtB5_14AnyValueParser7type_idCsjWl3uGiVprL_18influxdb3_commands, ptr @_RNvXsc_NtNtCsbyItyepKEh3_12clap_builder7builder12value_parserFG_RL0_eEINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCs9h7Hq22ZyhR_15influxdb3_types5write9PrecisionNtNtCscdodAO9FK5_5alloc6string6StringENtB5_14AnyValueParser15possible_valuesCsjWl3uGiVprL_18influxdb3_commands, ptr @_RNvXsc_NtNtCsbyItyepKEh3_12clap_builder7builder12value_parserFG_RL0_eEINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCs9h7Hq22ZyhR_15influxdb3_types5write9PrecisionNtNtCscdodAO9FK5_5alloc6string6StringENtB5_14AnyValueParser9clone_anyCsjWl3uGiVprL_18influxdb3_commands }>, align 8
@107 = private unnamed_addr constant [55 x i8] c"Specify a supported precision (eg: auto, ns, us, ms, s)", align 1
@108 = private unnamed_addr constant [7 x i8] c"CA_CERT", align 1
@109 = private unnamed_addr constant [77 x i8] c"An optional arg to use a custom CA, useful for testing with self-signed certs", align 1
@110 = private unnamed_addr constant [6 x i8] c"tls-ca", align 1
@111 = private unnamed_addr constant [16 x i8] c"INFLUXDB3_TLS_CA", align 1
@112 = private unnamed_addr constant [13 x i8] c"TLS_NO_VERIFY", align 1
@113 = private unnamed_addr constant [36 x i8] c"Disable TLS certificate verification", align 1
@114 = private unnamed_addr constant [13 x i8] c"tls-no-verify", align 1
@115 = private unnamed_addr constant [23 x i8] c"INFLUXDB3_TLS_NO_VERIFY", align 1
@116 = private unnamed_addr constant [1 x i8] c"w", align 1
@117 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNvXsf_NtNtCscdodAO9FK5_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1Q_4SyncEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECsjWl3uGiVprL_18influxdb3_commands, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NvXsf_NtNtCscdodAO9FK5_5alloc5boxed7convertINtBc_3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtB10_6marker4SendNtB1x_4SyncEL_EINtNtB10_7convert4FromNtNtBe_6string6StringE4fromNtB4_11StringErrorNtNtB10_3fmt7Display3fmt }>, align 8
@118 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNvXsf_NtNtCscdodAO9FK5_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1Q_4SyncEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECsjWl3uGiVprL_18influxdb3_commands, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs0_NvXsf_NtNtCscdodAO9FK5_5alloc5boxed7convertINtBd_3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBf_6string6StringE4fromNtB5_11StringErrorNtNtB11_3fmt5Debug3fmt, ptr @_RNvXs_NvXsf_NtNtCscdodAO9FK5_5alloc5boxed7convertINtBc_3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtB10_6marker4SendNtB1x_4SyncEL_EINtNtB10_7convert4FromNtNtBe_6string6StringE4fromNtB4_11StringErrorNtNtB10_3fmt7Display3fmt, ptr @117, ptr @_RNvYNtNvXsf_NtNtCscdodAO9FK5_5alloc5boxed7convertINtBc_3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtB10_6marker4SendNtB1x_4SyncEL_EINtNtB10_7convert4FromNtNtBe_6string6StringE4from11StringErrorBW_6sourceCsjWl3uGiVprL_18influxdb3_commands, ptr @_RNvYNtNvXsf_NtNtCscdodAO9FK5_5alloc5boxed7convertINtBc_3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtB10_6marker4SendNtB1x_4SyncEL_EINtNtB10_7convert4FromNtNtBe_6string6StringE4from11StringErrorBW_7type_idCsjWl3uGiVprL_18influxdb3_commands, ptr @_RNvYNtNvXsf_NtNtCscdodAO9FK5_5alloc5boxed7convertINtBc_3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtB10_6marker4SendNtB1x_4SyncEL_EINtNtB10_7convert4FromNtNtBe_6string6StringE4from11StringErrorBW_11descriptionCsjWl3uGiVprL_18influxdb3_commands, ptr @_RNvYNtNvXsf_NtNtCscdodAO9FK5_5alloc5boxed7convertINtBc_3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtB10_6marker4SendNtB1x_4SyncEL_EINtNtB10_7convert4FromNtNtBe_6string6StringE4from11StringErrorBW_5causeCsjWl3uGiVprL_18influxdb3_commands, ptr @_RNvYNtNvXsf_NtNtCscdodAO9FK5_5alloc5boxed7convertINtBc_3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtB10_6marker4SendNtB1x_4SyncEL_EINtNtB10_7convert4FromNtNtBe_6string6StringE4from11StringErrorBW_7provideCsjWl3uGiVprL_18influxdb3_commands }>, align 8
@119 = private unnamed_addr constant [9 x i8] c"EmptyHost", align 1
@120 = private unnamed_addr constant [9 x i8] c"IdnaError", align 1
@121 = private unnamed_addr constant [11 x i8] c"InvalidPort", align 1
@122 = private unnamed_addr constant [18 x i8] c"InvalidIpv4Address", align 1
@123 = private unnamed_addr constant [18 x i8] c"InvalidIpv6Address", align 1
@124 = private unnamed_addr constant [22 x i8] c"InvalidDomainCharacter", align 1
@125 = private unnamed_addr constant [22 x i8] c"RelativeUrlWithoutBase", align 1
@126 = private unnamed_addr constant [32 x i8] c"RelativeUrlWithCannotBeABaseBase", align 1
@127 = private unnamed_addr constant [25 x i8] c"SetHostOnCannotBeABaseUrl", align 1
@128 = private unnamed_addr constant [8 x i8] c"Overflow", align 1
@129 = private unnamed_addr constant [40 x i8] c"description() is deprecated; use Display", align 1
@130 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -4595636110221030538 to ptr), ptr inttoptr (i64 2790923651394935433 to ptr) }>, align 8
@131 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 3521741420838229517 to ptr), ptr inttoptr (i64 -2397771688522890904 to ptr) }>, align 8
@132 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 2226241016354847951 to ptr), ptr inttoptr (i64 3141863331777474449 to ptr) }>, align 8
@133 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 8718224977778561452 to ptr), ptr inttoptr (i64 1265125432459200245 to ptr) }>, align 8
@134 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 8680460637581324099 to ptr), ptr inttoptr (i64 -7610649855377871620 to ptr) }>, align 8
@135 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 7080536387315632578 to ptr), ptr inttoptr (i64 5296459061437125857 to ptr) }>, align 8
@136 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 4262278487820037578 to ptr), ptr inttoptr (i64 7306954111906887224 to ptr) }>, align 8
@switch.table._RNvXsg_NtCsj7DbYNsdxOJ_3url6parserNtB5_10ParseErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt = private unnamed_addr constant [10 x i8] c"\09\09\0B\12\12\16\16 \19\08", align 8
@switch.table._RNvXsg_NtCsj7DbYNsdxOJ_3url6parserNtB5_10ParseErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt.73 = private unnamed_addr constant [10 x ptr] [ptr @119, ptr @120, ptr @121, ptr @122, ptr @123, ptr @124, ptr @125, ptr @126, ptr @127, ptr @128], align 8

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define hidden { ptr, i64 } @_RINvMNtCs4NRVxsYgnAr_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 6 uses
  %i.b = icmp samesign eq i64 %1, 0
  br i1 %i.b, label %_RNvXso_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsjWl3uGiVprL_18influxdb3_commands.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsjWl3uGiVprL_18influxdb3_commands.exit.i.i
  %i.c = phi i64 [ %i.aq, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsjWl3uGiVprL_18influxdb3_commands.exit.i.i ], [ 0, %bb.a ] ; 4 uses
  %i.d = phi ptr [ %.sroa.4.0, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsjWl3uGiVprL_18influxdb3_commands.exit.i.i ], [ %0, %bb.a ] ; 6 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 3 uses
  %i.g = load i8, ptr %i.d, align 1, !noalias !47, !noundef !3 ; 5 uses
  %i.h = icmp sgt i8 %i.g, -1
  br i1 %i.h, label %bb.b, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjWl3uGiVprL_18influxdb3_commands.exit12.i.i.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjWl3uGiVprL_18influxdb3_commands.exit12.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.i = and i8 %i.g, 31
  %i.j = zext nneg i8 %i.i to i32                 ; 3 uses
  %i.k = icmp ne ptr %i.f, %i.a
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 3 uses
  %i.m = load i8, ptr %i.f, align 1, !noalias !47, !noundef !3
  %i.n = shl nuw nsw i32 %i.j, 6
  %i.o = and i8 %i.m, 63
  %i.p = zext nneg i8 %i.o to i32                 ; 2 uses
  %i.q = or disjoint i32 %i.n, %i.p
  %i.r = icmp samesign ugt i8 %i.g, -33
  br i1 %i.r, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjWl3uGiVprL_18influxdb3_commands.exit14.i.i.i.i.i, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.s = zext nneg i8 %i.g to i32
  br label %bb.c

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjWl3uGiVprL_18influxdb3_commands.exit14.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjWl3uGiVprL_18influxdb3_commands.exit12.i.i.i.i.i
  %i.t = icmp ne ptr %i.l, %i.a
  tail call void @llvm.assume(i1 %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 3 ; 3 uses
  %i.v = load i8, ptr %i.l, align 1, !noalias !47, !noundef !3
  %i.w = shl nuw nsw i32 %i.p, 6
  %i.x = and i8 %i.v, 63
  %i.y = zext nneg i8 %i.x to i32
  %i.z = or disjoint i32 %i.w, %i.y               ; 2 uses
  %i.aa = shl nuw nsw i32 %i.j, 12
  %i.ab = or disjoint i32 %i.z, %i.aa
  %i.ac = icmp samesign ugt i8 %i.g, -17
  br i1 %i.ac, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjWl3uGiVprL_18influxdb3_commands.exit16.i.i.i.i.i, label %bb.c

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjWl3uGiVprL_18influxdb3_commands.exit16.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjWl3uGiVprL_18influxdb3_commands.exit14.i.i.i.i.i
  %i.ad = icmp ne ptr %i.u, %i.a
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.af = load i8, ptr %i.u, align 1, !noalias !47, !noundef !3
  %i.ag = shl nuw nsw i32 %i.j, 18
  %i.ah = and i32 %i.ag, 1835008
  %i.ai = shl nuw nsw i32 %i.z, 6
  %i.aj = and i8 %i.af, 63
  %i.ak = zext nneg i8 %i.aj to i32
  %i.al = or disjoint i32 %i.ai, %i.ak
  %i.am = or disjoint i32 %i.al, %i.ah
  br label %bb.c

bb.c:                                             ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjWl3uGiVprL_18influxdb3_commands.exit16.i.i.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjWl3uGiVprL_18influxdb3_commands.exit14.i.i.i.i.i, %bb.b, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjWl3uGiVprL_18influxdb3_commands.exit12.i.i.i.i.i
  %.sroa.4.0 = phi ptr [ %i.f, %bb.b ], [ %i.ae, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjWl3uGiVprL_18influxdb3_commands.exit16.i.i.i.i.i ], [ %i.u, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjWl3uGiVprL_18influxdb3_commands.exit14.i.i.i.i.i ], [ %i.l, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjWl3uGiVprL_18influxdb3_commands.exit12.i.i.i.i.i ] ; 6 uses
  %.sroa.4.0.i.ph.i.i.i.i = phi i32 [ %i.s, %bb.b ], [ %i.am, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjWl3uGiVprL_18influxdb3_commands.exit16.i.i.i.i.i ], [ %i.ab, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjWl3uGiVprL_18influxdb3_commands.exit14.i.i.i.i.i ], [ %i.q, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjWl3uGiVprL_18influxdb3_commands.exit12.i.i.i.i.i ] ; 8 uses
  %i.an = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = ptrtoint ptr %.sroa.4.0 to i64
  %i.ap = sub i64 %i.ao, %i.e
  %i.aq = add i64 %i.ap, %i.c                     ; 4 uses
  switch i32 %.sroa.4.0.i.ph.i.i.i.i, label %bb.d [
    i32 32, label %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsjWl3uGiVprL_18influxdb3_commands.exit.i.i
    i32 13, label %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsjWl3uGiVprL_18influxdb3_commands.exit.i.i
    i32 12, label %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsjWl3uGiVprL_18influxdb3_commands.exit.i.i
    i32 11, label %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsjWl3uGiVprL_18influxdb3_commands.exit.i.i
    i32 10, label %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsjWl3uGiVprL_18influxdb3_commands.exit.i.i
    i32 9, label %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsjWl3uGiVprL_18influxdb3_commands.exit.i.i
  ]

bb.d:                                             ; preds = %bb.c
  %i.ar = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i, 133
  br i1 %i.ar, label %_RNvXso_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsjWl3uGiVprL_18influxdb3_commands.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.as = lshr i32 %.sroa.4.0.i.ph.i.i.i.i, 8
  switch i32 %i.as, label %_RNvXso_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsjWl3uGiVprL_18influxdb3_commands.exit [
    i32 0, label %bb.h
    i32 22, label %bb.f
    i32 32, label %bb.i
    i32 48, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.at = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i, 5760
  %i.au = zext i1 %i.at to i8
  br label %_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsjWl3uGiVprL_18influxdb3_commands.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.av = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i, 12288
  %i.aw = zext i1 %i.av to i8
  br label %_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsjWl3uGiVprL_18influxdb3_commands.exit.i.i.i

bb.h:                                             ; preds = %bb.e
  %i.ax = and i32 %.sroa.4.0.i.ph.i.i.i.i, 255
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs4NRVxsYgnAr_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !noalias !48, !noundef !3
  br label %_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsjWl3uGiVprL_18influxdb3_commands.exit.i.i.i

bb.i:                                             ; preds = %bb.e
  %i.bb = and i32 %.sroa.4.0.i.ph.i.i.i.i, 255
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs4NRVxsYgnAr_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !noalias !48, !noundef !3
  %i.bf = lshr i8 %i.be, 1
  br label %_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsjWl3uGiVprL_18influxdb3_commands.exit.i.i.i

_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsjWl3uGiVprL_18influxdb3_commands.exit.i.i.i: ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.sroa.0.0.i.i.i.i.i.i.i = phi i8 [ %i.aw, %bb.g ], [ %i.ba, %bb.h ], [ %i.au, %bb.f ], [ %i.bf, %bb.i ]
  %i.bg = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i to i1
  br i1 %i.bg, label %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsjWl3uGiVprL_18influxdb3_commands.exit.i.i, label %_RNvXso_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsjWl3uGiVprL_18influxdb3_commands.exit

_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsjWl3uGiVprL_18influxdb3_commands.exit.i.i: ; preds = %_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsjWl3uGiVprL_18influxdb3_commands.exit.i.i.i, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %i.bh = icmp eq ptr %.sroa.4.0, %i.a
  br i1 %i.bh, label %.loopexit, label %.lr.ph.i.i

_RNvXso_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsjWl3uGiVprL_18influxdb3_commands.exit: ; preds = %bb.e, %_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsjWl3uGiVprL_18influxdb3_commands.exit.i.i.i, %bb.d, %bb.a
  %.sroa.4.122 = phi ptr [ %0, %bb.a ], [ %.sroa.4.0, %bb.d ], [ %.sroa.4.0, %_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsjWl3uGiVprL_18influxdb3_commands.exit.i.i.i ], [ %.sroa.4.0, %bb.e ] ; 6 uses
  %.sroa.18.020 = phi i64 [ 0, %bb.a ], [ %i.aq, %bb.d ], [ %i.aq, %_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsjWl3uGiVprL_18influxdb3_commands.exit.i.i.i ], [ %i.aq, %bb.e ] ; 3 uses
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %i.c, %bb.d ], [ %i.c, %_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsjWl3uGiVprL_18influxdb3_commands.exit.i.i.i ], [ %i.c, %bb.e ] ; 3 uses
  %i.bi = icmp eq ptr %.sroa.4.122, %i.a
  br i1 %i.bi, label %.loopexit, label %.lr.ph.i.i5

.lr.ph.i.i5:                                      ; preds = %_RNvXso_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsjWl3uGiVprL_18influxdb3_commands.exit, %bb.t
  %i.bj = phi ptr [ %i.ct, %bb.t ], [ %i.a, %_RNvXso_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsjWl3uGiVprL_18influxdb3_commands.exit ] ; 5 uses
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -1 ; 3 uses
  %i.bl = load i8, ptr %i.bk, align 1, !noalias !49, !noundef !3 ; 3 uses
  %i.bm = icmp sgt i8 %i.bl, -1
  br i1 %i.bm, label %bb.j, label %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsjWl3uGiVprL_18influxdb3_commands.exit17.i.i.i.i.i

_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsjWl3uGiVprL_18influxdb3_commands.exit17.i.i.i.i.i: ; preds = %.lr.ph.i.i5
  %i.bn = icmp ne ptr %.sroa.4.122, %i.bk
  tail call void @llvm.assume(i1 %i.bn)
  %i.bo = getelementptr inbounds i8, ptr %i.bj, i64 -2 ; 3 uses
  %i.bp = load i8, ptr %i.bo, align 1, !noalias !49, !noundef !3 ; 3 uses
  %i.bq = and i8 %i.bp, 31
  %i.br = zext nneg i8 %i.bq to i32
  %i.bs = icmp slt i8 %i.bp, -64
  br i1 %i.bs, label %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsjWl3uGiVprL_18influxdb3_commands.exit19.i.i.i.i.i, label %bb.k

bb.j:                                             ; preds = %.lr.ph.i.i5
  %i.bt = zext nneg i8 %i.bl to i32
  br label %bb.m

_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsjWl3uGiVprL_18influxdb3_commands.exit19.i.i.i.i.i: ; preds = %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsjWl3uGiVprL_18influxdb3_commands.exit17.i.i.i.i.i
  %i.bu = icmp ne ptr %.sroa.4.122, %i.bo
  tail call void @llvm.assume(i1 %i.bu)
  %i.bv = getelementptr inbounds i8, ptr %i.bj, i64 -3 ; 3 uses
  %i.bw = load i8, ptr %i.bv, align 1, !noalias !49, !noundef !3 ; 3 uses
  %i.bx = and i8 %i.bw, 15
  %i.by = zext nneg i8 %i.bx to i32
  %i.bz = icmp slt i8 %i.bw, -64
  br i1 %i.bz, label %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsjWl3uGiVprL_18influxdb3_commands.exit21.i.i.i.i.i, label %bb.l

bb.k:                                             ; preds = %bb.l, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsjWl3uGiVprL_18influxdb3_commands.exit17.i.i.i.i.i
  %i.ca = phi ptr [ %i.co, %bb.l ], [ %i.bo, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsjWl3uGiVprL_18influxdb3_commands.exit17.i.i.i.i.i ]
  %.sroa.010.0.i.i.i.i.i = phi i32 [ %i.cs, %bb.l ], [ %i.br, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsjWl3uGiVprL_18influxdb3_commands.exit17.i.i.i.i.i ]
  %i.cb = shl nuw nsw i32 %.sroa.010.0.i.i.i.i.i, 6
  %i.cc = and i8 %i.bl, 63
  %i.cd = zext nneg i8 %i.cc to i32
  %i.ce = or disjoint i32 %i.cb, %i.cd
  br label %bb.m

_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsjWl3uGiVprL_18influxdb3_commands.exit21.i.i.i.i.i: ; preds = %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsjWl3uGiVprL_18influxdb3_commands.exit19.i.i.i.i.i
  %i.cf = icmp ne ptr %.sroa.4.122, %i.bv
  tail call void @llvm.assume(i1 %i.cf)
  %i.cg = getelementptr inbounds i8, ptr %i.bj, i64 -4 ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 1, !noalias !49, !noundef !3
  %i.ci = and i8 %i.ch, 7
  %i.cj = zext nneg i8 %i.ci to i32
  %i.ck = shl nuw nsw i32 %i.cj, 6
  %i.cl = and i8 %i.bw, 63
  %i.cm = zext nneg i8 %i.cl to i32
  %i.cn = or disjoint i32 %i.ck, %i.cm
  br label %bb.l

bb.l:                                             ; preds = %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsjWl3uGiVprL_18influxdb3_commands.exit21.i.i.i.i.i, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsjWl3uGiVprL_18influxdb3_commands.exit19.i.i.i.i.i
  %i.co = phi ptr [ %i.cg, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsjWl3uGiVprL_18influxdb3_commands.exit21.i.i.i.i.i ], [ %i.bv, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsjWl3uGiVprL_18influxdb3_commands.exit19.i.i.i.i.i ]
  %.sroa.010.1.i.i.i.i.i = phi i32 [ %i.cn, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsjWl3uGiVprL_18influxdb3_commands.exit21.i.i.i.i.i ], [ %i.by, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsjWl3uGiVprL_18influxdb3_commands.exit19.i.i.i.i.i ]
  %i.cp = shl nuw nsw i32 %.sroa.010.1.i.i.i.i.i, 6
  %i.cq = and i8 %i.bp, 63
  %i.cr = zext nneg i8 %i.cq to i32
  %i.cs = or disjoint i32 %i.cp, %i.cr
  br label %bb.k

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.ct = phi ptr [ %i.bk, %bb.j ], [ %i.ca, %bb.k ] ; 2 uses
  %.sroa.4.1.i.ph.i.i.i.i = phi i32 [ %i.bt, %bb.j ], [ %i.ce, %bb.k ] ; 8 uses
  %i.cu = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.cu)
  switch i32 %.sroa.4.1.i.ph.i.i.i.i, label %bb.n [
    i32 32, label %bb.t
    i32 13, label %bb.t
    i32 12, label %bb.t
    i32 11, label %bb.t
    i32 10, label %bb.t
    i32 9, label %bb.t
  ]

bb.n:                                             ; preds = %bb.m
  %i.cv = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.i.i, 133
  br i1 %i.cv, label %bb.u, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cw = lshr i32 %.sroa.4.1.i.ph.i.i.i.i, 8
  switch i32 %i.cw, label %bb.u [
    i32 0, label %bb.r
    i32 22, label %bb.p
    i32 32, label %bb.s
    i32 48, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  %i.cx = icmp eq i32 %.sroa.4.1.i.ph.i.i.i.i, 5760
  %i.cy = zext i1 %i.cx to i8
  br label %_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsjWl3uGiVprL_18influxdb3_commands.exit.i.i.i7

bb.q:                                             ; preds = %bb.o
  %i.cz = icmp eq i32 %.sroa.4.1.i.ph.i.i.i.i, 12288
  %i.da = zext i1 %i.cz to i8
  br label %_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsjWl3uGiVprL_18influxdb3_commands.exit.i.i.i7

bb.r:                                             ; preds = %bb.o
  %i.db = and i32 %.sroa.4.1.i.ph.i.i.i.i, 255
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs4NRVxsYgnAr_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !noalias !50, !noundef !3
  br label %_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsjWl3uGiVprL_18influxdb3_commands.exit.i.i.i7

bb.s:                                             ; preds = %bb.o
  %i.df = and i32 %.sroa.4.1.i.ph.i.i.i.i, 255
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs4NRVxsYgnAr_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1, !noalias !50, !noundef !3
  %i.dj = lshr i8 %i.di, 1
  br label %_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsjWl3uGiVprL_18influxdb3_commands.exit.i.i.i7

_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsjWl3uGiVprL_18influxdb3_commands.exit.i.i.i7: ; preds = %bb.s, %bb.r, %bb.q, %bb.p
  %.sroa.0.0.i.i.i.i.i.i.i8 = phi i8 [ %i.da, %bb.q ], [ %i.de, %bb.r ], [ %i.cy, %bb.p ], [ %i.dj, %bb.s ]
  %i.dk = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i8 to i1
  br i1 %i.dk, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsjWl3uGiVprL_18influxdb3_commands.exit.i.i.i7, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m
  %i.dl = icmp eq ptr %.sroa.4.122, %i.ct
  br i1 %i.dl, label %.loopexit, label %.lr.ph.i.i5

bb.u:                                             ; preds = %_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsjWl3uGiVprL_18influxdb3_commands.exit.i.i.i7, %bb.o, %bb.n
  %i.dm = ptrtoint ptr %i.bj to i64
  %i.dn = ptrtoint ptr %.sroa.4.122 to i64
  %i.do = sub i64 %.sroa.18.020, %i.dn
  %i.dp = add i64 %i.do, %i.dm
  br label %.loopexit

.loopexit:                                        ; preds = %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsjWl3uGiVprL_18influxdb3_commands.exit.i.i, %bb.t, %_RNvXso_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsjWl3uGiVprL_18influxdb3_commands.exit, %bb.u
  %.sroa.0.043 = phi i64 [ %.sroa.0.0, %bb.u ], [ %.sroa.0.0, %_RNvXso_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsjWl3uGiVprL_18influxdb3_commands.exit ], [ %.sroa.0.0, %bb.t ], [ 0, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsjWl3uGiVprL_18influxdb3_commands.exit.i.i ] ; 2 uses
  %.sroa.02.1 = phi i64 [ %i.dp, %bb.u ], [ %.sroa.18.020, %_RNvXso_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsjWl3uGiVprL_18influxdb3_commands.exit ], [ %.sroa.18.020, %bb.t ], [ 0, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsjWl3uGiVprL_18influxdb3_commands.exit.i.i ]
  %i.dq = sub nuw i64 %.sroa.02.1, %.sroa.0.043
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.043
  %i.ds = insertvalue { ptr, i64 } poison, ptr %i.dr, 0
  %i.dt = insertvalue { ptr, i64 } %i.ds, i64 %i.dq, 1
  ret { ptr, i64 } %i.dt
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvMs2_Cs7r4ylJz197O_4zmijNtB6_6Buffer13format_finitedECsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef dereferenceable(24) %0, double noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef ptr @_RNvXs_NtCs7r4ylJz197O_4zmij7privatedNtB4_6Sealed20write_to_zmij_buffer(double noundef %1, ptr noundef nonnull %0)
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = insertvalue { ptr, i64 } poison, ptr %0, 0
  %i.f = insertvalue { ptr, i64 } %i.e, i64 %i.d, 1
  ret { ptr, i64 } %i.f
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvMs2_NtCsjWl3uGiVprL_18influxdb3_commands5writeNtB6_7Metrics10from_writeRNtNtCsuxFxh2mtOX_5bytes5bytes5BytesEB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !noundef !3 ; 3 uses
  %i.b = getelementptr i8, ptr %1, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !noundef !3 ; 8 uses
  %i.c = icmp eq i64 %.val1.i, 0
  br i1 %i.c, label %_RNvNtCsjWl3uGiVprL_18influxdb3_commands5write11count_lines.exit, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %bb.a
  %min.iters.check = icmp ult i64 %.val1.i, 4
  br i1 %min.iters.check, label %.preheader.i.i.preheader3, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i.i.preheader
  %n.vec = and i64 %.val1.i, -4                   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.j, %vector.body ]
  %vec.phi1 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.k, %vector.body ]
  %i.d = getelementptr inbounds nuw i8, ptr %.val.i, i64 %index ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %wide.load = load <2 x i8>, ptr %i.d, align 1, !alias.scope !57
  %wide.load2 = load <2 x i8>, ptr %i.e, align 1, !alias.scope !57
  %i.f = icmp eq <2 x i8> %wide.load, splat (i8 10)
  %i.g = icmp eq <2 x i8> %wide.load2, splat (i8 10)
  %i.h = zext <2 x i1> %i.f to <2 x i64>
  %i.i = zext <2 x i1> %i.g to <2 x i64>
  %i.j = add <2 x i64> %vec.phi, %i.h             ; 2 uses
  %i.k = add <2 x i64> %vec.phi1, %i.i            ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !55

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.k, %i.j
  %i.m = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %.val1.i, %n.vec
  br i1 %cmp.n, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCNvNtCsjWl3uGiVprL_18influxdb3_commands5write11count_lines0ENtNtNtB9_6traits8iterator8Iterator5countB1A_.exit.i, label %.preheader.i.i.preheader3

.preheader.i.i.preheader3:                        ; preds = %.preheader.i.i.preheader, %middle.block
  %.sroa.04.0.i.i.i.ph = phi i64 [ 0, %.preheader.i.i.preheader ], [ %n.vec, %middle.block ]
  %.sroa.02.0.i.i.i.ph = phi i64 [ 0, %.preheader.i.i.preheader ], [ %i.m, %middle.block ]
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader3, %.preheader.i.i
  %.sroa.04.0.i.i.i = phi i64 [ %i.r, %.preheader.i.i ], [ %.sroa.04.0.i.i.i.ph, %.preheader.i.i.preheader3 ] ; 2 uses
  %.sroa.02.0.i.i.i = phi i64 [ %i.q, %.preheader.i.i ], [ %.sroa.02.0.i.i.i.ph, %.preheader.i.i.preheader3 ]
  %i.n = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.04.0.i.i.i
  %.val.i.i.i = load i8, ptr %i.n, align 1, !alias.scope !57, !noundef !3
  %i.o = icmp eq i8 %.val.i.i.i, 10
  %i.p = zext i1 %i.o to i64
  %i.q = add i64 %.sroa.02.0.i.i.i, %i.p          ; 2 uses
  %i.r = add nuw nsw i64 %.sroa.04.0.i.i.i, 1     ; 2 uses
  %i.s = icmp eq i64 %i.r, %.val1.i
  br i1 %i.s, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCNvNtCsjWl3uGiVprL_18influxdb3_commands5write11count_lines0ENtNtNtB9_6traits8iterator8Iterator5countB1A_.exit.i, label %.preheader.i.i, !llvm.loop !56

_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCNvNtCsjWl3uGiVprL_18influxdb3_commands5write11count_lines0ENtNtNtB9_6traits8iterator8Iterator5countB1A_.exit.i: ; preds = %.preheader.i.i, %middle.block
  %.lcssa = phi i64 [ %i.m, %middle.block ], [ %i.q, %.preheader.i.i ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.val1.i
  %i.u = icmp ule i64 %.lcssa, %.val1.i
  tail call void @llvm.assume(i1 %i.u)
  %i.v = getelementptr i8, ptr %i.t, i64 -1
  %i.w = load i8, ptr %i.v, align 1, !alias.scope !58, !noundef !3
  %i.x = icmp ne i8 %i.w, 10
  %i.y = zext i1 %i.x to i64
  %spec.select.i = add nuw i64 %.lcssa, %i.y
  br label %_RNvNtCsjWl3uGiVprL_18influxdb3_commands5write11count_lines.exit

_RNvNtCsjWl3uGiVprL_18influxdb3_commands5write11count_lines.exit: ; preds = %bb.a, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCNvNtCsjWl3uGiVprL_18influxdb3_commands5write11count_lines0ENtNtNtB9_6traits8iterator8Iterator5countB1A_.exit.i
  %.sroa.0.0.i = phi i64 [ %spec.select.i, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCNvNtCsjWl3uGiVprL_18influxdb3_commands5write11count_lines0ENtNtNtB9_6traits8iterator8Iterator5countB1A_.exit.i ], [ 0, %bb.a ]
  store i64 1, ptr %0, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.val1.i, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0.0.i, ptr %i.aa, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRReINtNtNtBa_5slice4iter4IterB14_EECsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef returned align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.07 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.07, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.07, ptr %i.a, align 8
  %i.d = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRhINtNtNtBa_5slice4iter4IterhEECsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef returned align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.07 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.07, i64 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.07, ptr %i.a, align 8
  %i.d = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvMs_NtNtCsbyItyepKEh3_12clap_builder7builder3argNtB5_3Arg13default_valueReECsjWl3uGiVprL_18influxdb3_commands(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(672) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(672) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [672 x i8], align 8               ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvXsi_NtNtCsbyItyepKEh3_12clap_builder7builder10resettableReINtB5_14IntoResettableNtNtB7_6os_str5OsStrE15into_resettableCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
          to label %bb.b unwind label %bb.q

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %i.d, align 8, !range !6, !noundef !3
  %i.f = icmp eq i64 %i.e, 2
  br i1 %i.f, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 496
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !3, !noundef !3
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 504 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !noundef !3 ; 2 uses
  store i64 0, ptr %i.i, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72)
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtNtCsbyItyepKEh3_12clap_builder7builder6os_str5OsStrECsjWl3uGiVprL_18influxdb3_commands.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsbyItyepKEh3_12clap_builder7builder6os_str5OsStrECsjWl3uGiVprL_18influxdb3_commands.exit.i
  %.sroa.0.07.i = phi i64 [ %i.m, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsbyItyepKEh3_12clap_builder7builder6os_str5OsStrECsjWl3uGiVprL_18influxdb3_commands.exit.i ], [ 0, %bb.c ] ; 2 uses
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %.sroa.0.07.i ; 3 uses
  %i.m = add nuw nsw i64 %.sroa.0.07.i, 1         ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74)
  %i.n = load i64, ptr %i.l, align 8, !range !7, !alias.scope !75, !noundef !3
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsbyItyepKEh3_12clap_builder7builder6os_str5OsStrECsjWl3uGiVprL_18influxdb3_commands.exit.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.val1.i.i.i = load i64, ptr %i.p, align 8, !alias.scope !75, !noundef !3 ; 2 uses
  %i.q = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.q, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsbyItyepKEh3_12clap_builder7builder6os_str5OsStrECsjWl3uGiVprL_18influxdb3_commands.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.val.i.i.i = load ptr, ptr %i.r, align 8, !alias.scope !75, !nonnull !3, !noundef !3
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i, i64 noundef 1) #26, !noalias !75
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsbyItyepKEh3_12clap_builder7builder6os_str5OsStrECsjWl3uGiVprL_18influxdb3_commands.exit.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsbyItyepKEh3_12clap_builder7builder6os_str5OsStrECsjWl3uGiVprL_18influxdb3_commands.exit.i: ; preds = %bb.e, %bb.d, %.lr.ph.i
  %i.s = icmp eq i64 %i.m, %i.j
  br i1 %i.s, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtNtCsbyItyepKEh3_12clap_builder7builder6os_str5OsStrECsjWl3uGiVprL_18influxdb3_commands.exit, label %.lr.ph.i

bb.f:                                             ; preds = %bb.b
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
end_hunk_0
