Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_test-29b616129d36b6c9.deltalake_test.ba0291980bd00892-cgu.08?download=true
inline.NumInlined: 438
inline.NumDeleted: 179
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [92 x i8] c"/rustc/1d8897a4e88051480b36c501e66809425c6e08ad/library/alloc/src/collections/btree/node.rs\00", align 1
@1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"[\00\00\00\00\00\00\00\F0\00\00\00M\00\00\00" }>, align 8
@2 = private unnamed_addr constant [101 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/parquet-57.3.0/src/arrow/mod.rs\00", align 1
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"d\00\00\00\00\00\00\00}\01\00\00%\00\00\00" }>, align 8
@4 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECsfY7SmN0bPrO_14deltalake_test, [16 x i8] c" \00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs5_NtCsfYVtenZkBsn_12arrow_schema5errorNtB5_10ArrowErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt }>, align 8
@5 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsK_NtCsbvkFyIu7lgC_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt }>, align 8
@6 = private unnamed_addr constant [60 x i8] c"internal error: entered unreachable code: invalid Once state", align 1
@7 = private unnamed_addr constant [87 x i8] c"/rustc/1d8897a4e88051480b36c501e66809425c6e08ad/library/std/src/sys/sync/once/futex.rs\00", align 1
@8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"V\00\00\00\00\00\00\00[\00\00\00\12\00\00\00" }>, align 8
@9 = private unnamed_addr constant [32 x i8] c"assertion failed: idx < CAPACITY", align 1
@10 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"[\00\00\00\00\00\00\00\9E\02\00\00\09\00\00\00" }>, align 8
@11 = private unnamed_addr constant [48 x i8] c"assertion failed: edge.height == self.height - 1", align 1
@12 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"[\00\00\00\00\00\00\00\B6\02\00\00\09\00\00\00" }>, align 8
@13 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"[\00\00\00\00\00\00\00\BA\02\00\00\09\00\00\00" }>, align 8
@14 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECsfY7SmN0bPrO_14deltalake_test, [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsW_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_ENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCsfY7SmN0bPrO_14deltalake_test, ptr @_RNvXNtCs1N9T06jgEdt_11arrow_array5arrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_6as_any, ptr @_RNvXNtCs1N9T06jgEdt_11arrow_array5arrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_7to_data, ptr @_RNSNvYINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EBD_9into_data6vtableCsfY7SmN0bPrO_14deltalake_test, ptr @_RNvXNtCs1N9T06jgEdt_11arrow_array5arrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_9data_type, ptr @_RNvXNtCs1N9T06jgEdt_11arrow_array5arrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_5slice, ptr @_RNvXNtCs1N9T06jgEdt_11arrow_array5arrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_3len, ptr @_RNvXNtCs1N9T06jgEdt_11arrow_array5arrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_8is_empty, ptr @_RNvXNtCs1N9T06jgEdt_11arrow_array5arrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_13shrink_to_fit, ptr @_RNvXNtCs1N9T06jgEdt_11arrow_array5arrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_6offset, ptr @_RNvXNtCs1N9T06jgEdt_11arrow_array5arrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_5nulls, ptr @_RNvXNtCs1N9T06jgEdt_11arrow_array5arrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_13logical_nulls, ptr @_RNvXNtCs1N9T06jgEdt_11arrow_array5arrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_7is_null, ptr @_RNvXNtCs1N9T06jgEdt_11arrow_array5arrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_8is_valid, ptr @_RNvXNtCs1N9T06jgEdt_11arrow_array5arrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_10null_count, ptr @_RNvXNtCs1N9T06jgEdt_11arrow_array5arrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_18logical_null_count, ptr @_RNvXNtCs1N9T06jgEdt_11arrow_array5arrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_11is_nullable, ptr @_RNvXNtCs1N9T06jgEdt_11arrow_array5arrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_22get_buffer_memory_size, ptr @_RNvXNtCs1N9T06jgEdt_11arrow_array5arrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_21get_array_memory_size }>, align 8
@15 = private unnamed_addr constant [3 x i8] c"UTC", align 1
@16 = private unnamed_addr constant [21 x i8] c"Could not cast to UTC", align 1
@17 = private unnamed_addr constant [35 x i8] c"crates/test/src/acceptance/data.rs\00", align 1
@18 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @17, [16 x i8] c"\22\00\00\00\00\00\00\00X\00\00\00\12\00\00\00" }>, align 8
@19 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @17, [16 x i8] c"\22\00\00\00\00\00\00\00\83\00\00\00!\00\00\00" }>, align 8
@20 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @17, [16 x i8] c"\22\00\00\00\00\00\00\00\87\00\00\00#\00\00\00" }>, align 8
@21 = private unnamed_addr constant [69 x i8] c"@assertion failed: `(left == right)`: Data batches do not match\0A\0A\C0\01\0A\00", align 1
@22 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @17, [16 x i8] c"\22\00\00\00\00\00\00\00\8B\00\00\00\05\00\00\00" }>, align 8
@23 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECsfY7SmN0bPrO_14deltalake_test, [16 x i8] c" \00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs3_NtCsfYVtenZkBsn_12arrow_schema5errorNtB5_10ArrowErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt }>, align 8
@24 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECsfY7SmN0bPrO_14deltalake_test, [16 x i8] c" \00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs5_NtCsfYVtenZkBsn_12arrow_schema5errorNtB5_10ArrowErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt, ptr @_RNvXs3_NtCsfYVtenZkBsn_12arrow_schema5errorNtB5_10ArrowErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr @23, ptr @_RNvXs4_NtCsfYVtenZkBsn_12arrow_schema5errorNtB5_10ArrowErrorNtNtCsbvkFyIu7lgC_4core5error5Error6source, ptr @_RNvYNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorNtNtCsbvkFyIu7lgC_4core5error5Error7type_idCsfY7SmN0bPrO_14deltalake_test, ptr @_RNvYNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorNtNtCsbvkFyIu7lgC_4core5error5Error11descriptionCsfY7SmN0bPrO_14deltalake_test, ptr @_RNvYNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorNtNtCsbvkFyIu7lgC_4core5error5Error5causeCsfY7SmN0bPrO_14deltalake_test, ptr @_RNvYNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorNtNtCsbvkFyIu7lgC_4core5error5Error7provideCsfY7SmN0bPrO_14deltalake_test }>, align 8
@25 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorECsfY7SmN0bPrO_14deltalake_test, [16 x i8] c"`\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00", ptr @_RNvXs2_NtCs8ulvy0Wg6Ot_12delta_kernel5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt }>, align 8
@26 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorECsfY7SmN0bPrO_14deltalake_test, [16 x i8] c"`\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00", ptr @_RNvXsb_NtCs8ulvy0Wg6Ot_12delta_kernel5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt, ptr @_RNvXs2_NtCs8ulvy0Wg6Ot_12delta_kernel5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr @25, ptr @_RNvXs1_NtCs8ulvy0Wg6Ot_12delta_kernel5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error6source, ptr @_RNvYNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error7type_idCsfY7SmN0bPrO_14deltalake_test, ptr @_RNvYNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error11descriptionCsfY7SmN0bPrO_14deltalake_test, ptr @_RNvYNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error5causeCsfY7SmN0bPrO_14deltalake_test, ptr @_RNvYNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error7provideCsfY7SmN0bPrO_14deltalake_test }>, align 8
@27 = private unnamed_addr constant [89 x i8] c"Cassertion failed: `(left == right)`: Column data didn't match. Got \C0\0B, expected \C0\02\0A\0A\C0\01\0A\00", align 1
@28 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @17, [16 x i8] c"\22\00\00\00\00\00\00\00g\00\00\00\09\00\00\00" }>, align 8
@29 = private unnamed_addr constant [23 x i8] c"Field names don't match", align 1
@30 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @17, [16 x i8] c"\22\00\00\00\00\00\00\00H\00\00\00\09\00\00\00" }>, align 8
@31 = private unnamed_addr constant [35 x i8] c"Field dict_is_ordered doesn't match", align 1
@32 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @17, [16 x i8] c"\22\00\00\00\00\00\00\00L\00\00\00\09\00\00\00" }>, align 8
@33 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtCshmPyUV8PP35_6chrono6format14ParseErrorKindNtB6_5Debug3fmtCsfY7SmN0bPrO_14deltalake_test }>, align 8
@34 = private unnamed_addr constant [10 x i8] c"ParseError", align 1
@35 = private unnamed_addr constant [10 x i8] c"OutOfRange", align 1
@36 = private unnamed_addr constant [10 x i8] c"Impossible", align 1
@37 = private unnamed_addr constant [9 x i8] c"NotEnough", align 1
@38 = private unnamed_addr constant [7 x i8] c"Invalid", align 1
@39 = private unnamed_addr constant [8 x i8] c"TooShort", align 1
@40 = private unnamed_addr constant [7 x i8] c"TooLong", align 1
@41 = private unnamed_addr constant [9 x i8] c"BadFormat", align 1
@42 = private unnamed_addr constant [15 x i8] c"__Nonexhaustive", align 1
@43 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsr_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt }>, align 8
@44 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB6_5Debug3fmtCsfY7SmN0bPrO_14deltalake_test }>, align 8
@45 = private unnamed_addr constant [11 x i8] c"InvalidPart", align 1
@46 = private unnamed_addr constant [7 x i8] c"segment", align 1
@47 = private unnamed_addr constant [7 x i8] c"illegal", align 1
@48 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECsfY7SmN0bPrO_14deltalake_test, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs7_NtNtCs2pqxYH9ZEk8_3std2io5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt }>, align 8
@49 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECsfY7SmN0bPrO_14deltalake_test, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNtNtCs2pqxYH9ZEk8_3std2io5errorNtB2_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt, ptr @_RNvXs7_NtNtCs2pqxYH9ZEk8_3std2io5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr @48, ptr @_RNvXs8_NtNtCs2pqxYH9ZEk8_3std2io5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error6source, ptr @_RNvYNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error7type_idCsfY7SmN0bPrO_14deltalake_test, ptr @_RNvYNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error11descriptionCsfY7SmN0bPrO_14deltalake_test, ptr @_RNvXs8_NtNtCs2pqxYH9ZEk8_3std2io5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error5cause, ptr @_RNvYNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error7provideCsfY7SmN0bPrO_14deltalake_test }>, align 8
@50 = private unnamed_addr constant [17 x i8] c"NotYetImplemented", align 1
@51 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB8_5error5ErrorNtNtB8_6marker4SyncNtB1r_4SendEL_ENtB6_5Debug3fmtCsfY7SmN0bPrO_14deltalake_test }>, align 8
@52 = private unnamed_addr constant [13 x i8] c"ExternalError", align 1
@53 = private unnamed_addr constant [9 x i8] c"CastError", align 1
@54 = private unnamed_addr constant [11 x i8] c"MemoryError", align 1
@55 = private unnamed_addr constant [11 x i8] c"SchemaError", align 1
@56 = private unnamed_addr constant [12 x i8] c"ComputeError", align 1
@57 = private unnamed_addr constant [12 x i8] c"DivideByZero", align 1
@58 = private unnamed_addr constant [18 x i8] c"ArithmeticOverflow", align 1
@59 = private unnamed_addr constant [8 x i8] c"CsvError", align 1
@60 = private unnamed_addr constant [9 x i8] c"JsonError", align 1
@61 = private unnamed_addr constant [9 x i8] c"AvroError", align 1
@62 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorNtB6_5Debug3fmtCsfY7SmN0bPrO_14deltalake_test }>, align 8
@63 = private unnamed_addr constant [7 x i8] c"IoError", align 1
@64 = private unnamed_addr constant [8 x i8] c"IpcError", align 1
@65 = private unnamed_addr constant [20 x i8] c"InvalidArgumentError", align 1
@66 = private unnamed_addr constant [12 x i8] c"ParquetError", align 1
@67 = private unnamed_addr constant [14 x i8] c"CDataInterface", align 1
@68 = private unnamed_addr constant [26 x i8] c"DictionaryKeyOverflowError", align 1
@69 = private unnamed_addr constant [24 x i8] c"RunEndIndexOverflowError", align 1
@70 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRjNtB6_5Debug3fmtCsfY7SmN0bPrO_14deltalake_test }>, align 8
@71 = private unnamed_addr constant [19 x i8] c"OffsetOverflowError", align 1
@72 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write9write_str, ptr @_RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write10write_char, ptr @_RNvYNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write9write_fmtCsfY7SmN0bPrO_14deltalake_test }>, align 8
@73 = private unnamed_addr constant [55 x i8] c"a Display implementation returned an error unexpectedly", align 1
@74 = private unnamed_addr constant [76 x i8] c"/rustc/1d8897a4e88051480b36c501e66809425c6e08ad/library/alloc/src/string.rs\00", align 1
@75 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @74, [16 x i8] c"K\00\00\00\00\00\00\00d\0B\00\00\0E\00\00\00" }>, align 8
@76 = private unnamed_addr constant [5 x i8] c"Error", align 1
@77 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEECsfY7SmN0bPrO_14deltalake_test, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsn_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCsfY7SmN0bPrO_14deltalake_test }>, align 8
@78 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs2pqxYH9ZEk8_3std9backtrace9BacktraceENtB6_5Debug3fmtCsfY7SmN0bPrO_14deltalake_test }>, align 8
@79 = private unnamed_addr constant [10 x i8] c"Backtraced", align 1
@80 = private unnamed_addr constant [6 x i8] c"source", align 1
@81 = private unnamed_addr constant [9 x i8] c"backtrace", align 1
@82 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorNtB6_5Debug3fmtCsfY7SmN0bPrO_14deltalake_test }>, align 8
@83 = private unnamed_addr constant [5 x i8] c"Arrow", align 1
@84 = private unnamed_addr constant [15 x i8] c"CheckpointWrite", align 1
@85 = private unnamed_addr constant [14 x i8] c"EngineDataType", align 1
@86 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtReNtB6_5Debug3fmtCsfY7SmN0bPrO_14deltalake_test }>, align 8
@87 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRReNtB6_5Debug3fmtCsfY7SmN0bPrO_14deltalake_test }>, align 8
@88 = private unnamed_addr constant [7 x i8] c"Extract", align 1
@89 = private unnamed_addr constant [7 x i8] c"Generic", align 1
@90 = private unnamed_addr constant [12 x i8] c"GenericError", align 1
@91 = private unnamed_addr constant [7 x i8] c"IOError", align 1
@92 = private unnamed_addr constant [13 x i8] c"InternalError", align 1
@93 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorNtB6_5Debug3fmtCsfY7SmN0bPrO_14deltalake_test }>, align 8
@94 = private unnamed_addr constant [7 x i8] c"Parquet", align 1
@95 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtCsjyY8HP3IvQ6_12object_store5ErrorNtB6_5Debug3fmtCsfY7SmN0bPrO_14deltalake_test }>, align 8
@96 = private unnamed_addr constant [11 x i8] c"ObjectStore", align 1
@97 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtCsjyY8HP3IvQ6_12object_store4path5ErrorNtB6_5Debug3fmtCsfY7SmN0bPrO_14deltalake_test }>, align 8
@98 = private unnamed_addr constant [15 x i8] c"ObjectStorePath", align 1
@99 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtCsgO6CtM78C4N_7reqwest5error5ErrorNtB6_5Debug3fmtCsfY7SmN0bPrO_14deltalake_test }>, align 8
@100 = private unnamed_addr constant [7 x i8] c"Reqwest", align 1
@101 = private unnamed_addr constant [12 x i8] c"FileNotFound", align 1
@102 = private unnamed_addr constant [13 x i8] c"MissingColumn", align 1
@103 = private unnamed_addr constant [20 x i8] c"UnexpectedColumnType", align 1
@104 = private unnamed_addr constant [11 x i8] c"MissingData", align 1
@105 = private unnamed_addr constant [14 x i8] c"MissingVersion", align 1
@106 = private unnamed_addr constant [14 x i8] c"DeletionVector", align 1
@107 = private unnamed_addr constant [22 x i8] c"InvalidSelectionVector", align 1
@108 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtCseo6ZV82fEK1_3url6parser10ParseErrorNtB6_5Debug3fmtCsfY7SmN0bPrO_14deltalake_test }>, align 8
@109 = private unnamed_addr constant [10 x i8] c"InvalidUrl", align 1
@110 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorNtB6_5Debug3fmtCsfY7SmN0bPrO_14deltalake_test }>, align 8
@111 = private unnamed_addr constant [13 x i8] c"MalformedJson", align 1
@112 = private unnamed_addr constant [15 x i8] c"MissingMetadata", align 1
@113 = private unnamed_addr constant [15 x i8] c"MissingProtocol", align 1
@114 = private unnamed_addr constant [15 x i8] c"InvalidProtocol", align 1
@115 = private unnamed_addr constant [26 x i8] c"MissingMetadataAndProtocol", align 1
@116 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeNtB6_5Debug3fmtCsfY7SmN0bPrO_14deltalake_test }>, align 8
@117 = private unnamed_addr constant [11 x i8] c"JoinFailure", align 1
@118 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtB8_3str5error9Utf8ErrorNtB6_5Debug3fmtCsfY7SmN0bPrO_14deltalake_test }>, align 8
@119 = private unnamed_addr constant [9 x i8] c"Utf8Error", align 1
@120 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtB8_3num5error13ParseIntErrorNtB6_5Debug3fmtCsfY7SmN0bPrO_14deltalake_test }>, align 8
@121 = private unnamed_addr constant [13 x i8] c"ParseIntError", align 1
@122 = private unnamed_addr constant [24 x i8] c"InvalidColumnMappingMode", align 1
@123 = private unnamed_addr constant [20 x i8] c"InvalidTableLocation", align 1
@124 = private unnamed_addr constant [14 x i8] c"InvalidDecimal", align 1
@125 = private unnamed_addr constant [17 x i8] c"InvalidStructData", align 1
@126 = private unnamed_addr constant [27 x i8] c"InvalidExpressionEvaluation", align 1
@127 = private unnamed_addr constant [14 x i8] c"InvalidLogPath", align 1
@128 = private unnamed_addr constant [17 x i8] c"FileAlreadyExists", align 1
@129 = private unnamed_addr constant [11 x i8] c"Unsupported", align 1
@130 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel16table_properties11deserialize18ParseIntervalErrorNtB6_5Debug3fmtCsfY7SmN0bPrO_14deltalake_test }>, align 8
@131 = private unnamed_addr constant [18 x i8] c"ParseIntervalError", align 1
@132 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRyNtB6_5Debug3fmtCsfY7SmN0bPrO_14deltalake_test }>, align 8
@133 = private unnamed_addr constant [25 x i8] c"ChangeDataFeedUnsupported", align 1
@134 = private unnamed_addr constant [32 x i8] c"ChangeDataFeedIncompatibleSchema", align 1
@135 = private unnamed_addr constant [17 x i8] c"InvalidCheckpoint", align 1
@136 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions28literal_expression_transform5ErrorNtB6_5Debug3fmtCsfY7SmN0bPrO_14deltalake_test }>, align 8
@137 = private unnamed_addr constant [31 x i8] c"LiteralExpressionTransformError", align 1
@138 = private unnamed_addr constant [6 x i8] c"Schema", align 1
@139 = private unnamed_addr constant [40 x i8] c"description() is deprecated; use Display", align 1
@140 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 3777913656534941959 to ptr), ptr inttoptr (i64 -118864294603038420 to ptr) }>, align 8
@141 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -8624493539382464842 to ptr), ptr inttoptr (i64 2641902377492434536 to ptr) }>, align 8
@142 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 7138977279839204526 to ptr), ptr inttoptr (i64 -8957275379254221844 to ptr) }>, align 8
@switch.table._RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtCshmPyUV8PP35_6chrono6format14ParseErrorKindNtB6_5Debug3fmtCsfY7SmN0bPrO_14deltalake_test = private unnamed_addr constant [8 x i8] c"\0A\0A\09\07\08\07\09\0F", align 8
@switch.table._RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtCshmPyUV8PP35_6chrono6format14ParseErrorKindNtB6_5Debug3fmtCsfY7SmN0bPrO_14deltalake_test.60 = private unnamed_addr constant [8 x ptr] [ptr @35, ptr @36, ptr @37, ptr @38, ptr @39, ptr @40, ptr @41, ptr @42], align 8

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvMs0_NtNtCshmPyUV8PP35_6chrono6format10formattingNtB8_12OffsetFormat6formatNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef readonly captures(none) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !3, !noundef !4
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = icmp eq i32 %2, 0
  %or.cond = and i1 %i.c, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp slt i32 %2, 0
  %.sroa.021.0 = select i1 %i.d, i32 45, i32 43   ; 2 uses
  %.sroa.07.0 = tail call i32 @llvm.abs.i32(i32 %2, i1 false) ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.f = load i8, ptr %i.e, align 1, !range !5, !noundef !4 ; 6 uses
  switch i8 %i.f, label %default.unreachable35 [
    i8 0, label %bb.g
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.f
  ]

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !6, !noundef !4 ; 2 uses
  %i.i = icmp sgt i64 %i.h, -1
  tail call void @llvm.assume(i1 %i.i)
  tail call void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 1)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !6, !nonnull !4, !noundef !4
  %i.l = load i64, ptr %i.g, align 8, !alias.scope !6, !noundef !4 ; 2 uses
  %i.m = icmp sgt i64 %i.l, -1
  tail call void @llvm.assume(i1 %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  store i8 90, ptr %i.n, align 1
  %i.o = add nuw i64 %i.h, 1
  store i64 %i.o, ptr %i.g, align 8, !alias.scope !6
  br label %bb.d

bb.d:                                             ; preds = %bb.t, %bb.q, %bb.o, %bb.j, %bb.c
  %.sroa.0.0 = phi i1 [ false, %bb.o ], [ false, %bb.c ], [ %i.cf, %bb.q ], [ true, %bb.j ], [ %i.cp, %bb.t ]
  ret i1 %.sroa.0.0

default.unreachable35:                            ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.b, %bb.b
  %i.p = add nuw i32 %.sroa.07.0, 30              ; 2 uses
  %i.q = sdiv i32 %i.p, 60
  %i.r = srem i32 %i.q, 60                        ; 2 uses
  %i.s = icmp eq i8 %i.f, 3
  %i.t = icmp eq i32 %i.r, 0
  %or.cond2.not.not = select i1 %i.s, i1 %i.t, i1 false ; 2 uses
  %i.u = trunc nsw i32 %i.r to i8
  %spec.select28 = select i1 %or.cond2.not.not, i8 0, i8 %i.u
  br label %bb.g

bb.f:                                             ; preds = %bb.b, %bb.b, %bb.b
  %i.v = sdiv i32 %.sroa.07.0, 60
  %i.w = srem i32 %.sroa.07.0, 60                 ; 2 uses
  %i.x = srem i32 %i.v, 60                        ; 2 uses
  %i.y = trunc nsw i32 %i.x to i8                 ; 2 uses
  %i.z = icmp ne i8 %i.f, 2
  %i.aa = icmp eq i32 %i.w, 0
  %or.cond4 = and i1 %i.aa, %i.z
  br i1 %or.cond4, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.i, %bb.b, %bb.h
  %i.ab = phi i1 [ true, %bb.h ], [ false, %bb.b ], [ false, %bb.i ], [ false, %bb.e ] ; 2 uses
  %.sroa.019.0 = phi i1 [ false, %bb.h ], [ true, %bb.b ], [ %or.cond6.not.not, %bb.i ], [ %or.cond2.not.not, %bb.e ]
  %.sroa.017.0 = phi i8 [ %i.ag, %bb.h ], [ %i.f, %bb.b ], [ 0, %bb.i ], [ 0, %bb.e ]
  %.sroa.014.0 = phi i8 [ %i.y, %bb.h ], [ %i.f, %bb.b ], [ %.26, %bb.i ], [ %spec.select28, %bb.e ]
  %.sroa.011.0.in.in = phi i32 [ %.sroa.07.0, %bb.h ], [ %.sroa.07.0, %bb.b ], [ %.sroa.07.0, %bb.i ], [ %i.p, %bb.e ]
  %.sroa.011.0.in = sdiv i32 %.sroa.011.0.in.in, 3600
  %.sroa.011.0 = trunc i32 %.sroa.011.0.in to i8  ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ad = load i8, ptr %i.ac, align 1, !range !11, !noundef !4
  %i.ae = icmp eq i8 %i.ad, 1                     ; 2 uses
  %i.af = icmp ult i8 %.sroa.011.0, 10
  br i1 %i.af, label %bb.k, label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.ag = trunc nsw i32 %i.w to i8
  br label %bb.g

bb.i:                                             ; preds = %bb.f
  %i.ah = icmp eq i8 %i.f, 5
  %i.ai = icmp eq i32 %i.x, 0
  %or.cond6.not.not = and i1 %i.ai, %i.ah         ; 2 uses
  %.26 = select i1 %or.cond6.not.not, i8 0, i8 %i.y
  br label %bb.g

bb.j:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !12, !noundef !4 ; 2 uses
  %i.al = icmp sgt i64 %i.ak, -1
  tail call void @llvm.assume(i1 %i.al)
  tail call void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 1)
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !12, !nonnull !4, !noundef !4
  %i.ao = load i64, ptr %i.aj, align 8, !alias.scope !12, !noundef !4 ; 2 uses
  %i.ap = icmp sgt i64 %i.ao, -1
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ao
  %i.ar = trunc nuw nsw i32 %.sroa.021.0 to i8
  store i8 %i.ar, ptr %i.aq, align 1
  %i.as = add nuw i64 %i.ak, 1
  store i64 %i.as, ptr %i.aj, align 8, !alias.scope !12
  %i.at = tail call noundef zeroext i1 @_RINvNtNtCshmPyUV8PP35_6chrono6format10formatting14write_hundredsNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i8 noundef %.sroa.011.0)
  br i1 %i.at, label %bb.d, label %bb.l

bb.k:                                             ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.av = load i8, ptr %i.au, align 1, !range !11, !noundef !4 ; 2 uses
  %i.aw = icmp eq i8 %i.av, 2
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ay = load i64, ptr %i.ax, align 8            ; 3 uses
  br i1 %i.aw, label %bb.m, label %._crit_edge

bb.l:                                             ; preds = %_RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write10write_char.exit, %bb.j
  br i1 %.sroa.019.0, label %bb.o, label %bb.p

bb.m:                                             ; preds = %bb.k
  %i.az = icmp sgt i64 %i.ay, -1
  tail call void @llvm.assume(i1 %i.az)
  tail call void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 1)
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !alias.scope !17, !nonnull !4, !noundef !4
  %i.bc = load i64, ptr %i.ax, align 8, !alias.scope !17, !noundef !4 ; 2 uses
  %i.bd = icmp sgt i64 %i.bc, -1
  tail call void @llvm.assume(i1 %i.bd)
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bc
  store i8 32, ptr %i.be, align 1
  %i.bf = add nuw i64 %i.ay, 1                    ; 2 uses
  store i64 %i.bf, ptr %i.ax, align 8, !alias.scope !17
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.k, %bb.m
  %i.bg = phi i64 [ %i.bf, %bb.m ], [ %i.ay, %bb.k ] ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.bi = icmp sgt i64 %i.bg, -1
  tail call void @llvm.assume(i1 %i.bi)
  tail call void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 1)
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !alias.scope !22, !nonnull !4, !noundef !4
  %i.bl = load i64, ptr %i.bh, align 8, !alias.scope !22, !noundef !4 ; 2 uses
  %i.bm = icmp sgt i64 %i.bl, -1
  tail call void @llvm.assume(i1 %i.bm)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bl
  %i.bo = trunc nuw nsw i32 %.sroa.021.0 to i8
  store i8 %i.bo, ptr %i.bn, align 1
  %i.bp = add nuw i64 %i.bg, 1                    ; 3 uses
  store i64 %i.bp, ptr %i.bh, align 8, !alias.scope !22
  %i.bq = icmp eq i8 %i.av, 1
  br i1 %i.bq, label %bb.n, label %_RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write10write_char.exit

bb.n:                                             ; preds = %._crit_edge
  %i.br = icmp sgt i64 %i.bp, -1
  tail call void @llvm.assume(i1 %i.br)
  tail call void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 1)
  %i.bs = load ptr, ptr %i.bj, align 8, !alias.scope !27, !nonnull !4, !noundef !4
  %i.bt = load i64, ptr %i.bh, align 8, !alias.scope !27, !noundef !4 ; 2 uses
  %i.bu = icmp sgt i64 %i.bt, -1
  tail call void @llvm.assume(i1 %i.bu)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bt
  store i8 48, ptr %i.bv, align 1
  %i.bw = add nuw i64 %i.bg, 2                    ; 2 uses
  store i64 %i.bw, ptr %i.bh, align 8, !alias.scope !27
  br label %_RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write10write_char.exit

_RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write10write_char.exit: ; preds = %bb.n, %._crit_edge
  %i.bx = phi i64 [ %i.bw, %bb.n ], [ %i.bp, %._crit_edge ] ; 2 uses
  %i.by = icmp sgt i64 %i.bx, -1
  tail call void @llvm.assume(i1 %i.by)
  tail call void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 1)
  %i.bz = load ptr, ptr %i.bj, align 8, !alias.scope !32, !nonnull !4, !noundef !4
  %i.ca = load i64, ptr %i.bh, align 8, !alias.scope !32, !noundef !4 ; 2 uses
  %i.cb = icmp sgt i64 %i.ca, -1
  tail call void @llvm.assume(i1 %i.cb)
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.ca
  %i.cd = or disjoint i8 %.sroa.011.0, 48
  store i8 %i.cd, ptr %i.cc, align 1
  %i.ce = add nuw i64 %i.bx, 1
  store i64 %i.ce, ptr %i.bh, align 8, !alias.scope !32
  br label %bb.l

bb.o:                                             ; preds = %bb.l
  br i1 %i.ab, label %bb.s, label %bb.d

bb.p:                                             ; preds = %bb.l
  br i1 %i.ae, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.r, %bb.p
  %i.cf = tail call noundef zeroext i1 @_RINvNtNtCshmPyUV8PP35_6chrono6format10formatting14write_hundredsNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i8 noundef %.sroa.014.0) ; 2 uses
  %.not = xor i1 %i.ab, true
  %brmerge = or i1 %i.cf, %.not
  br i1 %brmerge, label %bb.d, label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ch = load i64, ptr %i.cg, align 8, !alias.scope !37, !noundef !4 ; 2 uses
  %i.ci = icmp sgt i64 %i.ch, -1
  tail call void @llvm.assume(i1 %i.ci)
  tail call void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 1)
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !alias.scope !37, !nonnull !4, !noundef !4
  %i.cl = load i64, ptr %i.cg, align 8, !alias.scope !37, !noundef !4 ; 2 uses
  %i.cm = icmp sgt i64 %i.cl, -1
  tail call void @llvm.assume(i1 %i.cm)
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cl
  store i8 58, ptr %i.cn, align 1
  %i.co = add nuw i64 %i.ch, 1
  store i64 %i.co, ptr %i.cg, align 8, !alias.scope !37
  br label %bb.q

bb.s:                                             ; preds = %bb.q, %bb.o
  br i1 %i.ae, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s
  %i.cp = tail call noundef zeroext i1 @_RINvNtNtCshmPyUV8PP35_6chrono6format10formatting14write_hundredsNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i8 noundef %.sroa.017.0)
  br label %bb.d

bb.u:                                             ; preds = %bb.s
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.cr = load i64, ptr %i.cq, align 8, !alias.scope !42, !noundef !4 ; 2 uses
  %i.cs = icmp sgt i64 %i.cr, -1
  tail call void @llvm.assume(i1 %i.cs)
  tail call void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 1)
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !alias.scope !42, !nonnull !4, !noundef !4
  %i.cv = load i64, ptr %i.cq, align 8, !alias.scope !42, !noundef !4 ; 2 uses
  %i.cw = icmp sgt i64 %i.cv, -1
  tail call void @llvm.assume(i1 %i.cw)
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cv
  store i8 58, ptr %i.cx, align 1
  %i.cy = add nuw i64 %i.cr, 1
  store i64 %i.cy, ptr %i.cq, align 8, !alias.scope !42
  br label %bb.t
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvMs8_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedNtNtBc_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueNtB1a_4LeafE8new_leafNtNtBc_5alloc6GlobalECsfY7SmN0bPrO_14deltalake_test() unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtB6_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEE13new_uninit_inCsfY7SmN0bPrO_14deltalake_test() ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  store ptr null, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 626
  store i16 0, ptr %i.c, align 2
  %i.d = insertvalue { ptr, i64 } poison, ptr %i.a, 0
  %i.e = insertvalue { ptr, i64 } %i.d, i64 0, 1
  ret { ptr, i64 } %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvMs9_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedNtNtBc_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueNtB1a_8InternalE12new_internalNtNtBc_5alloc6GlobalECsfY7SmN0bPrO_14deltalake_test(ptr noundef nonnull %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEE13new_uninit_inCsfY7SmN0bPrO_14deltalake_test() ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  store ptr null, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 626
  store i16 0, ptr %i.c, align 2
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 632
  store ptr %0, ptr %i.d, align 8
  %i.e = add i64 %1, 1                            ; 2 uses
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.d, !prof !47

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #24
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 352
  store ptr %i.a, ptr %i.f, align 8, !noalias !48
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 624
  store i16 0, ptr %i.g, align 8, !noalias !53
  %i.h = insertvalue { ptr, i64 } poison, ptr %i.a, 0
  %i.i = insertvalue { ptr, i64 } %i.h, i64 %i.e, 1
  ret { ptr, i64 } %i.i

bb.e:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 728, i64 noundef 8) #25
  resume { ptr, i32 } %i.j
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvMsj_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtBc_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 352
  %i.e = load ptr, ptr %i.d, align 8, !noalias !54, !noundef !4 ; 2 uses
  %.not.i.i6 = icmp eq ptr %i.e, null
  br i1 %.not.i.i6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.f = phi ptr [ %i.i, %.lr.ph ], [ %i.e, %bb.a ] ; 3 uses
  %.sroa.0.08 = phi ptr [ %i.f, %.lr.ph ], [ %i.c, %bb.a ]
  %.sroa.3.07 = phi i64 [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = add i64 %.sroa.3.07, 1                   ; 2 uses
  %.not.i = icmp eq i64 %.sroa.3.07, 0
  %..i = select i1 %.not.i, i64 632, i64 728
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.08, i64 noundef range(i64 1, 0) %..i, i64 noundef 8) #25, !noalias !59
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 352
  %i.i = load ptr, ptr %i.h, align 8, !noalias !54, !noundef !4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.sroa.3.0.lcssa = phi i64 [ %i.b, %bb.a ], [ %i.g, %.lr.ph ]
  %.sroa.0.0.lcssa = phi ptr [ %i.c, %bb.a ], [ %i.f, %.lr.ph ]
  %.not.i4 = icmp eq i64 %.sroa.3.0.lcssa, 0
  %..i5 = select i1 %.not.i4, i64 632, i64 728
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.lcssa, i64 noundef range(i64 1, 0) %..i5, i64 noundef 8) #25, !noalias !59
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvMsj_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtBc_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueNtB1z_4LeafENtB1z_4EdgeE17deallocating_nextNtNtBc_5alloc6GlobalECsfY7SmN0bPrO_14deltalake_test(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 626
  %i.g = load i16, ptr %i.f, align 2, !noundef !4
  %i.h = zext i16 %i.g to i64
  %i.i = icmp ult i64 %i.e, %i.h
  br i1 %i.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.sroa.0.042 = phi ptr [ %i.k, %bb.d ], [ %i.c, %bb.a ] ; 4 uses
  %.sroa.5.041 = phi i64 [ %i.ac, %bb.d ], [ %i.b, %bb.a ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.042, i64 352
  %i.k = load ptr, ptr %i.j, align 8, !noalias !60, !noundef !4 ; 4 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %bb.e, label %bb.d

._crit_edge.loopexit:                             ; preds = %bb.d
  %i.l = zext i16 %i.ae to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.sroa.8.0.lcssa = phi i64 [ %i.e, %bb.a ], [ %i.l, %._crit_edge.loopexit ] ; 4 uses
  %.sroa.5.0.lcssa = phi i64 [ %i.b, %bb.a ], [ %i.ac, %._crit_edge.loopexit ] ; 6 uses
  %.sroa.0.0.lcssa = phi ptr [ %i.c, %bb.a ], [ %i.k, %._crit_edge.loopexit ] ; 3 uses
  %i.m = icmp eq i64 %.sroa.5.0.lcssa, 0
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.n = add nuw nsw i64 %.sroa.8.0.lcssa, 1
  br label %_RNvMsp_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5DyingNtNtBb_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeCsfY7SmN0bPrO_14deltalake_test.exit

bb.c:                                             ; preds = %._crit_edge
  %i.o = icmp samesign ult i64 %.sroa.8.0.lcssa, 11
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr i8, ptr %.sroa.0.0.lcssa, i64 640
  %i.q = getelementptr [8 x i8], ptr %i.p, i64 %.sroa.8.0.lcssa ; 2 uses
  %xtraiter = and i64 %.sroa.5.0.lcssa, 7         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.c, %.prol.preheader
  %.sroa.017.0.in.i.prol = phi ptr [ %i.r, %.prol.preheader ], [ %i.q, %bb.c ]
  %.sroa.019.0.in.i.prol = phi i64 [ %.sroa.019.0.i.prol, %.prol.preheader ], [ %.sroa.5.0.lcssa, %bb.c ]
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.c ]
  %.sroa.019.0.i.prol = add i64 %.sroa.019.0.in.i.prol, -1 ; 2 uses
  %.sroa.017.0.i.prol = load ptr, ptr %.sroa.017.0.in.i.prol, align 8, !noalias !65, !nonnull !4, !noundef !4 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.prol, i64 632 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !69

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.c
  %.sroa.017.0.i.lcssa.unr = phi ptr [ poison, %bb.c ], [ %.sroa.017.0.i.prol, %.prol.preheader ]
  %.sroa.017.0.in.i.unr = phi ptr [ %i.q, %bb.c ], [ %i.r, %.prol.preheader ]
  %.sroa.019.0.in.i.unr = phi i64 [ %.sroa.5.0.lcssa, %bb.c ], [ %.sroa.019.0.i.prol, %.prol.preheader ]
  %i.s = icmp ult i64 %.sroa.5.0.lcssa, 8
  br i1 %i.s, label %_RNvMsp_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5DyingNtNtBb_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeCsfY7SmN0bPrO_14deltalake_test.exit, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.sroa.017.0.in.i = phi ptr [ %i.ab, %.new ], [ %.sroa.017.0.in.i.unr, %.prol.loopexit ]
  %.sroa.019.0.in.i = phi i64 [ %.sroa.019.0.i.7, %.new ], [ %.sroa.019.0.in.i.unr, %.prol.loopexit ]
  %.sroa.017.0.i = load ptr, ptr %.sroa.017.0.in.i, align 8, !noalias !65, !nonnull !4, !noundef !4
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i, i64 632
  %.sroa.017.0.i.1 = load ptr, ptr %i.t, align 8, !noalias !65, !nonnull !4, !noundef !4
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.1, i64 632
  %.sroa.017.0.i.2 = load ptr, ptr %i.u, align 8, !noalias !65, !nonnull !4, !noundef !4
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.2, i64 632
  %.sroa.017.0.i.3 = load ptr, ptr %i.v, align 8, !noalias !65, !nonnull !4, !noundef !4
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.3, i64 632
  %.sroa.017.0.i.4 = load ptr, ptr %i.w, align 8, !noalias !65, !nonnull !4, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.4, i64 632
  %.sroa.017.0.i.5 = load ptr, ptr %i.x, align 8, !noalias !65, !nonnull !4, !noundef !4
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.5, i64 632
  %.sroa.017.0.i.6 = load ptr, ptr %i.y, align 8, !noalias !65, !nonnull !4, !noundef !4
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.6, i64 632
  %.sroa.019.0.i.7 = add i64 %.sroa.019.0.in.i, -8 ; 2 uses
  %.sroa.017.0.i.7 = load ptr, ptr %i.z, align 8, !noalias !65, !nonnull !4, !noundef !4 ; 2 uses
  %i.aa = icmp eq i64 %.sroa.019.0.i.7, 0
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.7, i64 632
  br i1 %i.aa, label %_RNvMsp_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5DyingNtNtBb_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeCsfY7SmN0bPrO_14deltalake_test.exit, label %.new

_RNvMsp_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5DyingNtNtBb_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeCsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %.prol.loopexit, %.new, %bb.b
  %.sroa.7.0 = phi i64 [ %i.n, %bb.b ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.0.032 = phi ptr [ %.sroa.0.0.lcssa, %bb.b ], [ %.sroa.017.0.i.lcssa.unr, %.prol.loopexit ], [ %.sroa.017.0.i.7, %.new ]
  store ptr %.sroa.0.032, ptr %0, align 8
  %.sroa.018.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.018.sroa.4.0..sroa_idx, align 8
  %.sroa.018.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.7.0, ptr %.sroa.018.sroa.5.0..sroa_idx, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.0.0.lcssa, ptr %.sroa.419.0..sroa_idx, align 8
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.5.0.lcssa, ptr %.sroa.520.0..sroa_idx, align 8
  %.sroa.621.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.8.0.lcssa, ptr %.sroa.621.0..sroa_idx, align 8
  br label %bb.f

bb.d:                                             ; preds = %.lr.ph
  %i.ac = add i64 %.sroa.5.041, 1                 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.042, i64 624
  %i.ae = load i16, ptr %i.ad, align 8, !noalias !60 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.5.041, 0
  %..i = select i1 %.not.i, i64 632, i64 728
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.042, i64 noundef range(i64 1, 0) %..i, i64 noundef 8) #25, !noalias !71
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 626
  %i.ag = load i16, ptr %i.af, align 2, !noundef !4
  %i.ah = icmp ult i16 %i.ae, %i.ag
  br i1 %i.ah, label %._crit_edge.loopexit, label %.lr.ph

end_hunk_0
