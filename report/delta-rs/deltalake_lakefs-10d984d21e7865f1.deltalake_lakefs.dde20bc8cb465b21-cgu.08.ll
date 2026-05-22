inline.NumInlined: 308
inline.NumDeleted: 157
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [16 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16
@_RNvNtCs9Ct3XQYJhun_5bytes9bytes_mut13SHARED_VTABLE = external global { ptr, ptr, ptr, ptr, ptr }
@1 = private unnamed_addr constant [35 x i8] c"assertion failed: mid <= self.len()", align 1
@2 = private unnamed_addr constant [78 x i8] c"/rustc/1d8897a4e88051480b36c501e66809425c6e08ad/library/core/src/slice/mod.rs\00", align 1
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"M\00\00\00\00\00\00\00-\0F\00\00\09\00\00\00" }>, align 8
@4 = private unnamed_addr constant [42 x i8] c"!cannot advance past `remaining`: \C0\04 <= \C0\00", align 1
@5 = private unnamed_addr constant [95 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/bytes-1.11.1/src/bytes.rs\00", align 1
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @5, [16 x i8] c"^\00\00\00\00\00\00\00\C3\02\00\00\09\00\00\00" }>, align 8
@7 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsr_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt }>, align 8
@8 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB6_5Debug3fmtCsj34PGqTgg0L_16deltalake_lakefs }>, align 8
@9 = private unnamed_addr constant [11 x i8] c"InvalidPart", align 1
@10 = private unnamed_addr constant [7 x i8] c"segment", align 1
@11 = private unnamed_addr constant [7 x i8] c"illegal", align 1
@12 = private unnamed_addr constant [12 x i8] c"EmptySegment", align 1
@13 = private unnamed_addr constant [4 x i8] c"path", align 1
@14 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts11InvalidPartNtB6_5Debug3fmtCsj34PGqTgg0L_16deltalake_lakefs }>, align 8
@15 = private unnamed_addr constant [10 x i8] c"BadSegment", align 1
@16 = private unnamed_addr constant [6 x i8] c"source", align 1
@17 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECsj34PGqTgg0L_16deltalake_lakefs, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsG_NtCs2pqxYH9ZEk8_3std4pathNtB5_7PathBufNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt }>, align 8
@18 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorNtB6_5Debug3fmtCsj34PGqTgg0L_16deltalake_lakefs }>, align 8
@19 = private unnamed_addr constant [12 x i8] c"Canonicalize", align 1
@20 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtCs2pqxYH9ZEk8_3std4path7PathBufNtB6_5Debug3fmtCsj34PGqTgg0L_16deltalake_lakefs }>, align 8
@21 = private unnamed_addr constant [11 x i8] c"InvalidPath", align 1
@22 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtB8_3str5error9Utf8ErrorNtB6_5Debug3fmtCsj34PGqTgg0L_16deltalake_lakefs }>, align 8
@23 = private unnamed_addr constant [10 x i8] c"NonUnicode", align 1
@24 = private unnamed_addr constant [14 x i8] c"PrefixMismatch", align 1
@25 = private unnamed_addr constant [6 x i8] c"prefix", align 1
@26 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts11InvalidPartECsj34PGqTgg0L_16deltalake_lakefs, [16 x i8] c"0\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs5_NtNtCsjyY8HP3IvQ6_12object_store4path5partsNtB5_11InvalidPartNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt }>, align 8
@27 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts11InvalidPartECsj34PGqTgg0L_16deltalake_lakefs, [16 x i8] c"0\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs3_NtNtCsjyY8HP3IvQ6_12object_store4path5partsNtB5_11InvalidPartNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt, ptr @_RNvXs5_NtNtCsjyY8HP3IvQ6_12object_store4path5partsNtB5_11InvalidPartNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr @26, ptr @_RNvYNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts11InvalidPartNtNtCsbvkFyIu7lgC_4core5error5Error6sourceCsj34PGqTgg0L_16deltalake_lakefs, ptr @_RNvYNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts11InvalidPartNtNtCsbvkFyIu7lgC_4core5error5Error7type_idCsj34PGqTgg0L_16deltalake_lakefs, ptr @_RNvYNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts11InvalidPartNtNtCsbvkFyIu7lgC_4core5error5Error11descriptionCsj34PGqTgg0L_16deltalake_lakefs, ptr @_RNvYNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts11InvalidPartNtNtCsbvkFyIu7lgC_4core5error5Error5causeCsj34PGqTgg0L_16deltalake_lakefs, ptr @_RNvYNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts11InvalidPartNtNtCsbvkFyIu7lgC_4core5error5Error7provideCsj34PGqTgg0L_16deltalake_lakefs }>, align 8
@28 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs7_NtNtCs2pqxYH9ZEk8_3std2io5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt }>, align 8
@29 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNtNtCs2pqxYH9ZEk8_3std2io5errorNtB2_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt, ptr @_RNvXs7_NtNtCs2pqxYH9ZEk8_3std2io5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr @28, ptr @_RNvXs8_NtNtCs2pqxYH9ZEk8_3std2io5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error6source, ptr @_RNvYNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error7type_idCsj34PGqTgg0L_16deltalake_lakefs, ptr @_RNvYNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error11descriptionCsj34PGqTgg0L_16deltalake_lakefs, ptr @_RNvXs8_NtNtCs2pqxYH9ZEk8_3std2io5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error5cause, ptr @_RNvYNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error7provideCsj34PGqTgg0L_16deltalake_lakefs }>, align 8
@30 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtNtCsbvkFyIu7lgC_4core3str5errorNtB4_9Utf8ErrorNtNtB8_3fmt7Display3fmt }>, align 8
@31 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs9_NtNtCsbvkFyIu7lgC_4core3str5errorNtB5_9Utf8ErrorNtNtB9_3fmt5Debug3fmt, ptr @_RNvXs_NtNtCsbvkFyIu7lgC_4core3str5errorNtB4_9Utf8ErrorNtNtB8_3fmt7Display3fmt, ptr @30, ptr @_RNvYNtNtNtCsbvkFyIu7lgC_4core3str5error9Utf8ErrorNtNtB8_5error5Error6sourceCsj34PGqTgg0L_16deltalake_lakefs, ptr @_RNvYNtNtNtCsbvkFyIu7lgC_4core3str5error9Utf8ErrorNtNtB8_5error5Error7type_idCsj34PGqTgg0L_16deltalake_lakefs, ptr @_RNvYNtNtNtCsbvkFyIu7lgC_4core3str5error9Utf8ErrorNtNtB8_5error5Error11descriptionCsj34PGqTgg0L_16deltalake_lakefs, ptr @_RNvYNtNtNtCsbvkFyIu7lgC_4core3str5error9Utf8ErrorNtNtB8_5error5Error5causeCsj34PGqTgg0L_16deltalake_lakefs, ptr @_RNvYNtNtNtCsbvkFyIu7lgC_4core3str5error9Utf8ErrorNtNtB8_5error5Error7provideCsj34PGqTgg0L_16deltalake_lakefs }>, align 8
@32 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsZ_NtNtCsbvkFyIu7lgC_4core3fmt3numjNtB7_5Debug3fmt }>, align 8
@33 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtB8_6option6OptionhENtB6_5Debug3fmtCsj34PGqTgg0L_16deltalake_lakefs }>, align 8
@34 = private unnamed_addr constant [9 x i8] c"Utf8Error", align 1
@35 = private unnamed_addr constant [11 x i8] c"valid_up_to", align 1
@36 = private unnamed_addr constant [9 x i8] c"error_len", align 1
@37 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtReNtB6_5Debug3fmtCsj34PGqTgg0L_16deltalake_lakefs }>, align 8
@38 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB8_5error5ErrorNtNtB8_6marker4SyncNtB1r_4SendEL_ENtB6_5Debug3fmtCsj34PGqTgg0L_16deltalake_lakefs }>, align 8
@39 = private unnamed_addr constant [7 x i8] c"Generic", align 1
@40 = private unnamed_addr constant [5 x i8] c"store", align 1
@41 = private unnamed_addr constant [8 x i8] c"NotFound", align 1
@42 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtCsjyY8HP3IvQ6_12object_store4path5ErrorNtB6_5Debug3fmtCsj34PGqTgg0L_16deltalake_lakefs }>, align 8
@43 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorNtB6_5Debug3fmtCsj34PGqTgg0L_16deltalake_lakefs }>, align 8
@44 = private unnamed_addr constant [9 x i8] c"JoinError", align 1
@45 = private unnamed_addr constant [12 x i8] c"NotSupported", align 1
@46 = private unnamed_addr constant [13 x i8] c"AlreadyExists", align 1
@47 = private unnamed_addr constant [12 x i8] c"Precondition", align 1
@48 = private unnamed_addr constant [11 x i8] c"NotModified", align 1
@49 = private unnamed_addr constant [14 x i8] c"NotImplemented", align 1
@50 = private unnamed_addr constant [16 x i8] c"PermissionDenied", align 1
@51 = private unnamed_addr constant [15 x i8] c"Unauthenticated", align 1
@52 = private unnamed_addr constant [23 x i8] c"UnknownConfigurationKey", align 1
@53 = private unnamed_addr constant [3 x i8] c"key", align 1
@54 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path5ErrorECsj34PGqTgg0L_16deltalake_lakefs, [16 x i8] c"H\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs7_NtCsjyY8HP3IvQ6_12object_store4pathNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt }>, align 8
@55 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path5ErrorECsj34PGqTgg0L_16deltalake_lakefs, [16 x i8] c"H\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs5_NtCsjyY8HP3IvQ6_12object_store4pathNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt, ptr @_RNvXs7_NtCsjyY8HP3IvQ6_12object_store4pathNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr @54, ptr @_RNvXs6_NtCsjyY8HP3IvQ6_12object_store4pathNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error6source, ptr @_RNvYNtNtCsjyY8HP3IvQ6_12object_store4path5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error7type_idCsj34PGqTgg0L_16deltalake_lakefs, ptr @_RNvYNtNtCsjyY8HP3IvQ6_12object_store4path5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error11descriptionCsj34PGqTgg0L_16deltalake_lakefs, ptr @_RNvYNtNtCsjyY8HP3IvQ6_12object_store4path5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error5causeCsj34PGqTgg0L_16deltalake_lakefs, ptr @_RNvYNtNtCsjyY8HP3IvQ6_12object_store4path5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error7provideCsj34PGqTgg0L_16deltalake_lakefs }>, align 8
@56 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorECsj34PGqTgg0L_16deltalake_lakefs, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task5errorNtB4_9JoinErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt }>, align 8
@57 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorECsj34PGqTgg0L_16deltalake_lakefs, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task5errorNtB5_9JoinErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt, ptr @_RNvXs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task5errorNtB4_9JoinErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr @56, ptr @_RNvYNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorNtNtCsbvkFyIu7lgC_4core5error5Error6sourceCsj34PGqTgg0L_16deltalake_lakefs, ptr @_RNvYNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorNtNtCsbvkFyIu7lgC_4core5error5Error7type_idCsj34PGqTgg0L_16deltalake_lakefs, ptr @_RNvYNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorNtNtCsbvkFyIu7lgC_4core5error5Error11descriptionCsj34PGqTgg0L_16deltalake_lakefs, ptr @_RNvYNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorNtNtCsbvkFyIu7lgC_4core5error5Error5causeCsj34PGqTgg0L_16deltalake_lakefs, ptr @_RNvYNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorNtNtCsbvkFyIu7lgC_4core5error5Error7provideCsj34PGqTgg0L_16deltalake_lakefs }>, align 8
@58 = private unnamed_addr constant [28 x i8] c"`len` greater than remaining", align 1
@59 = private unnamed_addr constant [102 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/http-body-util-0.1.3/src/util.rs\00", align 1
@60 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @59, [16 x i8] c"e\00\00\00\00\00\00\00V\00\00\00\11\00\00\00" }>, align 8
@61 = private unnamed_addr constant [20 x i8] c"Out of bounds access", align 1
@62 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @59, [16 x i8] c"e\00\00\00\00\00\00\00,\00\00\00+\00\00\00" }>, align 8
@63 = private unnamed_addr constant [98 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/bytes-1.11.1/src/buf/take.rs\00", align 1
@64 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @63, [16 x i8] c"a\00\00\00\00\00\00\00\98\00\00\00\09\00\00\00" }>, align 8
@65 = private unnamed_addr constant [35 x i8] c"assertion failed: cnt <= self.limit", align 1
@66 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @63, [16 x i8] c"a\00\00\00\00\00\00\00\92\00\00\00\09\00\00\00" }>, align 8
@67 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsu_NtCs2y6mmZ7bjoM_12tracing_core5fieldINtB5_12DisplayValueRNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCsj34PGqTgg0L_16deltalake_lakefs }>, align 8
@68 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsu_NtCs2y6mmZ7bjoM_12tracing_core5fieldINtB5_12DisplayValueRNtNtCsjyY8HP3IvQ6_12object_store4path4PathENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCsj34PGqTgg0L_16deltalake_lakefs }>, align 8
@69 = private unnamed_addr constant [40 x i8] c"description() is deprecated; use Display", align 1
@70 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -7539305650227036060 to ptr), ptr inttoptr (i64 -8292528805303079907 to ptr) }>, align 8
@71 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 7138977279839204526 to ptr), ptr inttoptr (i64 -8957275379254221844 to ptr) }>, align 8
@72 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 6180351501431046636 to ptr), ptr inttoptr (i64 2058528345871583318 to ptr) }>, align 8
@73 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 2699011438706630775 to ptr), ptr inttoptr (i64 -4576157216679854341 to ptr) }>, align 8
@74 = private unnamed_addr constant [28 x i8] c"failed to write whole buffer", align 1
@75 = private unnamed_addr constant <{ ptr, [9 x i8], [7 x i8] }> <{ ptr @74, [9 x i8] c"\1C\00\00\00\00\00\00\00\17", [7 x i8] undef }>, align 8
@76 = private unnamed_addr constant [74 x i8] c"/rustc/1d8897a4e88051480b36c501e66809425c6e08ad/library/std/src/io/mod.rs\00", align 1
@77 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @76, [16 x i8] c"I\00\00\00\00\00\00\00Y\07\00\00$\00\00\00" }>, align 8
@78 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -1294208861291987719 to ptr), ptr inttoptr (i64 7526452654611091669 to ptr) }>, align 8

; Function Attrs: cold noinline nonlazybind uwtable
define { i64, i64 } @_RINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_8RawTableTNtCs3LITIwzqf1g_4uuid4UuidINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueNtNtCs6Po7BT7Nknu_5alloc6string6StringEEE14reserve_rehashNCNvXs2_B1t_INtB1t_7DashMapBY_B27_EINtNtB1t_1t3MapBY_B27_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entrys_0ECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 16               ; 11 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [72 x i8], align 16               ; 11 uses
  %i.d = alloca [56 x i8], align 8                ; 11 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !3, !noalias !6, !noundef !8 ; 3 uses
  %i.h = add i64 %i.g, %1                         ; 3 uses
  %i.i = icmp ult i64 %i.h, %i.g
  br i1 %i.i, label %bb.c, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !3, !noalias !6, !noundef !8 ; 4 uses
  %4 = icmp ult i64 %i.k, 8
  %i.l = add i64 %i.k, 1                          ; 6 uses
  %i.m = lshr i64 %i.l, 3
  %i.n = mul nuw i64 %i.m, 7
  %.sroa.03.0.i = select i1 %4, i64 %i.k, i64 %i.n ; 2 uses
  %i.o = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.h, %i.o
  br i1 %.not.i, label %bb.d, label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.p = tail call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !10 ; 2 uses
  %i.q = extractvalue { i64, i64 } %i.p, 0
  %i.r = extractvalue { i64, i64 } %i.p, 1
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.d:                                             ; preds = %bb.b
  %i.s = add nuw i64 %.sroa.03.0.i, 1
  %.sroa.0.0.i5 = tail call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 1, -2305843009213693957) %i.s, i64 range(i64 1, 0) %i.h) ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !14
  %i.t = icmp ult i64 %.sroa.0.0.i5, 8
  br i1 %i.t, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = icmp ugt i64 %.sroa.0.0.i5, 2305843009213693951
  br i1 %i.u, label %bb.l, label %bb.g, !prof !9

bb.f:                                             ; preds = %bb.d
  %i.v = and i64 %.sroa.0.0.i5, 4
  %..i.i = add nuw nsw i64 %i.v, 4
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.w = shl nuw i64 %.sroa.0.0.i5, 3
  %i.x = udiv i64 %i.w, 7
  %i.y = add nsw i64 %i.x, -1
  %i.z = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.y, i1 true)
  %i.aa = lshr i64 -1, %i.z
  %i.ab = add nuw nsw i64 %i.aa, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.4.0.i.ph.i = phi i64 [ %i.ab, %bb.g ], [ %..i.i, %bb.f ] ; 5 uses
  %i.ac = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.4.0.i.ph.i, i64 40) ; 2 uses
  %i.ad = extractvalue { i64, i1 } %i.ac, 1
  br i1 %i.ad, label %bb.j, label %bb.i, !prof !9

bb.i:                                             ; preds = %bb.h
  %i.ae = extractvalue { i64, i1 } %i.ac, 0
  %i.af = add nuw i64 %i.ae, 8
  %i.ag = and i64 %i.af, -16                      ; 3 uses
  %i.ah = add nuw nsw i64 %.sroa.4.0.i.ph.i, 16   ; 2 uses
  %i.ai = add i64 %i.ag, %i.ah                    ; 4 uses
  %i.aj = icmp ult i64 %i.ai, %i.ag
  %i.ak = icmp ugt i64 %i.ai, 9223372036854775792
  %or.cond.i.i = or i1 %i.aj, %i.ak
  br i1 %or.cond.i.i, label %bb.j, label %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !16

_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !17
  %i.al = tail call noalias noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.ai, i64 noundef range(i64 1, -9223372036854775807) 16) #29, !noalias !17 ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.k, label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.an = tail call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !17
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit.thread

bb.k:                                             ; preds = %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.ao = tail call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility9alloc_err(i1 noundef zeroext %3, i64 noundef 16, i64 noundef %i.ai), !noalias !17
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit.thread

bb.l:                                             ; preds = %bb.e
  %i.ap = tail call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !22
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit.thread

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.aq = icmp samesign ult i64 %.sroa.4.0.i.ph.i, 9
  %i.ar = add nsw i64 %.sroa.4.0.i.ph.i, -1       ; 7 uses
  %i.as = lshr i64 %.sroa.4.0.i.ph.i, 3
  %i.at = mul nuw nsw i64 %i.as, 7
  %.sroa.03.0.i.i = select i1 %i.aq, i64 %i.ar, i64 %i.at ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ag ; 10 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.au, i8 -1, i64 %i.ah, i1 false), !noalias !22
  store ptr %i.e, ptr %i.d, align 8, !noalias !14
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 40, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !14
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !14
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %i.au, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !14
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 %i.ar, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !14
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %.sroa.03.0.i.i, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !14
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store i64 0, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !14
  %i.av = load i64, ptr %i.f, align 8, !alias.scope !23, !noalias !24, !noundef !8 ; 2 uses
  %i.aw = icmp eq i64 %i.av, 0
  %i.ax = ptrtoint ptr %i.au to i64
  br i1 %i.aw, label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit.._crit_edge50_crit_edge, label %.preheader.lr.ph

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit.._crit_edge50_crit_edge: ; preds = %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit
  %.sroa.0.0.copyload.i.i.i.i.i.pre = load i64, ptr %0, align 8, !alias.scope !25, !noalias !28
  %.sroa.0.0.copyload.i.i.i.i.i.pre.ptr = inttoptr i64 %.sroa.0.0.copyload.i.i.i.i.i.pre to ptr
  br label %._crit_edge50

.preheader.lr.ph:                                 ; preds = %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit
  %i.ay = load ptr, ptr %0, align 8, !alias.scope !23, !noalias !24, !nonnull !8, !noundef !8 ; 3 uses
  %i.az = load <16 x i8>, ptr %i.ay, align 16, !noalias !30
  %i.ba = icmp sgt <16 x i8> %i.az, splat (i8 -1)
  %i.bb = bitcast <16 x i1> %i.ba to i16
  %i.bc = load ptr, ptr %2, align 8, !noalias !33, !nonnull !8, !align !37, !noundef !8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %.sroa.48.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.59.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.610.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.711.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.913.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  br label %.preheader

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit.thread: ; preds = %bb.j, %bb.k, %bb.l
  %.pn.i.pn = phi { i64, i64 } [ %i.ap, %bb.l ], [ %i.an, %bb.j ], [ %i.ao, %bb.k ] ; 2 uses
  %.sroa.7.031 = extractvalue { i64, i64 } %.pn.i.pn, 0
  %.sroa.12.032 = extractvalue { i64, i64 } %.pn.i.pn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !14
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.m:                                             ; preds = %._crit_edge
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(56) %i.d) #30
  br label %common.resume

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit
  %i.bg = phi ptr [ %i.ay, %.preheader.lr.ph ], [ %i.gb, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit ]
  %.sroa.017.049 = phi ptr [ %i.ay, %.preheader.lr.ph ], [ %.sroa.017.1.lcssa, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit ] ; 2 uses
  %.sroa.5.048 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit ] ; 2 uses
  %.sroa.9.047 = phi i64 [ %i.av, %.preheader.lr.ph ], [ %i.cg, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit ]
  %.sroa.13.046 = phi i16 [ %i.bb, %.preheader.lr.ph ], [ %i.ce, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit ] ; 2 uses
  %.not.i241 = icmp eq i16 %.sroa.13.046, 0
  br i1 %.not.i241, label %.noexc3, label %._crit_edge

.noexc3:                                          ; preds = %.preheader, %.noexc3
  %.sroa.017.143 = phi ptr [ %i.bh, %.noexc3 ], [ %.sroa.017.049, %.preheader ] ; 2 uses
  %.sroa.5.142 = phi i64 [ %i.bl, %.noexc3 ], [ %.sroa.5.048, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.017.143) ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.017.143, i64 16 ; 3 uses
  %i.bi = load <16 x i8>, ptr %i.bh, align 16, !noalias !38
  %i.bj = icmp sgt <16 x i8> %i.bi, splat (i8 -1)
  %i.bk = bitcast <16 x i1> %i.bj to i16          ; 2 uses
  %i.bl = add i64 %.sroa.5.142, 16                ; 2 uses
  %.not.i2 = icmp eq i16 %i.bk, 0
  br i1 %.not.i2, label %.noexc3, label %._crit_edge

._crit_edge50.loopexit:                           ; preds = %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit
  %.pre61 = load i64, ptr %i.f, align 8, !alias.scope !23, !noalias !24
  br label %._crit_edge50

._crit_edge50:                                    ; preds = %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit.._crit_edge50_crit_edge, %._crit_edge50.loopexit
  %.sroa.0.0.copyload.i.i.i.i.i.ptr = phi ptr [ %i.gb, %._crit_edge50.loopexit ], [ %.sroa.0.0.copyload.i.i.i.i.i.pre.ptr, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit.._crit_edge50_crit_edge ]
  %i.bm = phi i64 [ %.pre61, %._crit_edge50.loopexit ], [ 0, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit.._crit_edge50_crit_edge ]
  %i.bn = sub i64 %.sroa.03.0.i.i, %i.bm
  store i64 %i.ax, ptr %0, align 8, !alias.scope !25, !noalias !28
  %.sroa.0.0.copyload.i.i.i.1.i.i = load i64, ptr %i.j, align 8, !alias.scope !41, !noalias !43 ; 3 uses
  store i64 %i.ar, ptr %i.j, align 8, !alias.scope !41, !noalias !43
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bn, ptr %i.bo, align 8, !alias.scope !45, !noalias !47
  %i.bp = icmp eq i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 0
  br i1 %i.bp, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECsj34PGqTgg0L_16deltalake_lakefs.exit, label %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %._crit_edge50
  %i.bq = mul i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 40 ; 2 uses
  %i.br = add i64 %i.bq, 40
  %i.bs = add i64 %i.bq, 55                       ; 2 uses
  %i.bt = icmp uge i64 %i.bs, %i.br
  call void @llvm.assume(i1 %i.bt)
  %i.bu = and i64 %i.bs, -16                      ; 3 uses
  %i.bv = add i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 17
  %i.bw = add i64 %i.bv, %i.bu                    ; 3 uses
  %i.bx = icmp uge i64 %i.bw, %i.bu
  %i.by = icmp ult i64 %i.bw, 9223372036854775793
  call void @llvm.assume(i1 %i.bx)
  call void @llvm.assume(i1 %i.by)
  %i.bz = sub nsw i64 0, %i.bu
  %i.ca = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.ptr, i64 %i.bz
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ca, i64 noundef %i.bw, i64 noundef range(i64 1, -9223372036854775807) 16) #29, !noalias !49
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECsj34PGqTgg0L_16deltalake_lakefs.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %._crit_edge50, %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !14
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit

._crit_edge:                                      ; preds = %.noexc3, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.046, %.preheader ], [ %i.bk, %.noexc3 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.048, %.preheader ], [ %i.bl, %.noexc3 ] ; 2 uses
  %.sroa.017.1.lcssa = phi ptr [ %.sroa.017.049, %.preheader ], [ %i.bh, %.noexc3 ]
  %i.cb = add i16 %.sroa.13.1.lcssa, -1
  %i.cc = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.cd = zext nneg i16 %i.cc to i64
  %i.ce = and i16 %i.cb, %.sroa.13.1.lcssa
  %i.cf = add i64 %.sroa.5.1.lcssa, %i.cd         ; 2 uses
  %i.cg = add i64 %.sroa.9.047, -1                ; 2 uses
  %i.ch = sub nsw i64 0, %i.cf
end_hunk_0
begin_hunk_1_@_RINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_8RawTableTNtCs3LITIwzqf1g_4uuid4UuidINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueNtNtCs6Po7BT7Nknu_5alloc6string6StringEEE14reserve_rehashNCNvXs2_B1t_INtB1t_7DashMapBY_B27_EINtNtB1t_1t3MapBY_B27_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entrys_0ECsj34PGqTgg0L_16deltalake_lakefs:bb.a
  %i.ip = call noundef i64 @llvm.fshl.i64(i64 %i.ij, i64 %i.ij, i64 21)
  %i.iq = xor i64 %i.ip, %i.im                    ; 3 uses
  %i.ir = call noundef i64 @llvm.fshl.i64(i64 %i.il, i64 %i.il, i64 32)
  %i.is = xor i64 %i.im, %i.ic
  %i.it = xor i64 %i.ir, 255
  %i.iu = add i64 %i.is, %i.io                    ; 3 uses
  %i.iv = add i64 %i.iq, %i.it                    ; 2 uses
  %i.iw = call noundef i64 @llvm.fshl.i64(i64 %i.io, i64 %i.io, i64 13)
  %i.ix = xor i64 %i.iu, %i.iw                    ; 3 uses
  %i.iy = call noundef i64 @llvm.fshl.i64(i64 %i.iq, i64 %i.iq, i64 16)
  %i.iz = xor i64 %i.iy, %i.iv                    ; 3 uses
  %i.ja = call noundef i64 @llvm.fshl.i64(i64 %i.iu, i64 %i.iu, i64 32)
  %i.jb = add i64 %i.ix, %i.iv                    ; 3 uses
  %i.jc = add i64 %i.iz, %i.ja                    ; 2 uses
  %i.jd = call noundef i64 @llvm.fshl.i64(i64 %i.ix, i64 %i.ix, i64 17)
  %i.je = xor i64 %i.jb, %i.jd                    ; 3 uses
  %i.jf = call noundef i64 @llvm.fshl.i64(i64 %i.iz, i64 %i.iz, i64 21)
  %i.jg = xor i64 %i.jf, %i.jc                    ; 3 uses
  %i.jh = call noundef i64 @llvm.fshl.i64(i64 %i.jb, i64 %i.jb, i64 32)
  %i.ji = add i64 %i.je, %i.jc                    ; 3 uses
  %i.jj = add i64 %i.jg, %i.jh                    ; 2 uses
  %i.jk = call noundef i64 @llvm.fshl.i64(i64 %i.je, i64 %i.je, i64 13)
  %i.jl = xor i64 %i.jk, %i.ji                    ; 3 uses
  %i.jm = call noundef i64 @llvm.fshl.i64(i64 %i.jg, i64 %i.jg, i64 16)
  %i.jn = xor i64 %i.jm, %i.jj                    ; 3 uses
  %i.jo = call noundef i64 @llvm.fshl.i64(i64 %i.ji, i64 %i.ji, i64 32)
  %i.jp = add i64 %i.jl, %i.jj                    ; 3 uses
  %i.jq = add i64 %i.jn, %i.jo                    ; 2 uses
  %i.jr = call noundef i64 @llvm.fshl.i64(i64 %i.jl, i64 %i.jl, i64 17)
  %i.js = xor i64 %i.jr, %i.jp                    ; 3 uses
  %i.jt = call noundef i64 @llvm.fshl.i64(i64 %i.jn, i64 %i.jn, i64 21)
  %i.ju = xor i64 %i.jt, %i.jq                    ; 3 uses
  %i.jv = call noundef i64 @llvm.fshl.i64(i64 %i.jp, i64 %i.jp, i64 32)
  %i.jw = add i64 %i.js, %i.jq
  %i.jx = add i64 %i.ju, %i.jv                    ; 2 uses
  %i.jy = call noundef i64 @llvm.fshl.i64(i64 %i.js, i64 %i.js, i64 13)
  %i.jz = xor i64 %i.jy, %i.jw                    ; 3 uses
  %i.ka = call noundef i64 @llvm.fshl.i64(i64 %i.ju, i64 %i.ju, i64 16)
  %i.kb = xor i64 %i.ka, %i.jx                    ; 2 uses
  %i.kc = add i64 %i.jz, %i.jx                    ; 3 uses
  %i.kd = call noundef i64 @llvm.fshl.i64(i64 %i.jz, i64 %i.jz, i64 17)
  %i.ke = call noundef i64 @llvm.fshl.i64(i64 %i.kb, i64 %i.kb, i64 21)
  %i.kf = call noundef i64 @llvm.fshl.i64(i64 %i.kc, i64 %i.kc, i64 32)
  %i.kg = xor i64 %i.ke, %i.kd
  %i.kh = xor i64 %i.kg, %i.kf
  %i.ki = xor i64 %i.kh, %i.kc                    ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !80
  %.val.i14 = load ptr, ptr %0, align 8, !alias.scope !68, !nonnull !8, !noundef !8 ; 7 uses
  %.val12.i = load i64, ptr %i.j, align 8, !alias.scope !68, !noundef !8 ; 6 uses
  %.sroa.0.07.i.i = and i64 %i.ki, %.val12.i      ; 5 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %.val.i14, i64 %.sroa.0.07.i.i
  %.sroa.0.0.copyload.i68.i.i = load <16 x i8>, ptr %i.kj, align 1, !noalias !91
  %i.kk = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i, zeroinitializer
  %i.kl = bitcast <16 x i1> %i.kk to i16          ; 2 uses
  %.not.i9.i.i = icmp eq i16 %i.kl, 0
  br i1 %.not.i9.i.i, label %.lr.ph.i16.i, label %._crit_edge.i15.i

._crit_edge.i15.i:                                ; preds = %.lr.ph.i16.i, %bb.u
  %.sroa.0.0.lcssa.i.i = phi i64 [ %.sroa.0.07.i.i, %bb.u ], [ %.sroa.0.0.i.i16, %.lr.ph.i16.i ]
  %.lcssa.i.i = phi i16 [ %i.kl, %bb.u ], [ %i.ld, %.lr.ph.i16.i ]
  %i.km = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.kn = zext nneg i16 %i.km to i64
  %i.ko = add i64 %.sroa.0.0.lcssa.i.i, %i.kn
  %i.kp = and i64 %i.ko, %.val12.i                ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %.val.i14, i64 %i.kp
  %i.kr = load i8, ptr %i.kq, align 1, !noundef !8
  %i.ks = icmp sgt i8 %i.kr, -1
  br i1 %i.ks, label %bb.v, label %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit.i

bb.v:                                             ; preds = %._crit_edge.i15.i
  %i.kt = load <16 x i8>, ptr %.val.i14, align 16, !noalias !94
  %i.ku = icmp slt <16 x i8> %i.kt, zeroinitializer
  %i.kv = bitcast <16 x i1> %i.ku to i16          ; 2 uses
  %.not.i6.i.i = icmp ne i16 %i.kv, 0
  %i.kw = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.kv, i1 true)
  %i.kx = zext nneg i16 %i.kw to i64
  call void @llvm.assume(i1 %.not.i6.i.i)
  br label %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit.i

.lr.ph.i16.i:                                     ; preds = %bb.u, %.lr.ph.i16.i
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.0.i.i16, %.lr.ph.i16.i ], [ %.sroa.0.07.i.i, %bb.u ]
  %i.ky = phi i64 [ %i.kz, %.lr.ph.i16.i ], [ 0, %bb.u ]
  %i.kz = add i64 %i.ky, 16                       ; 2 uses
  %i.la = add i64 %i.kz, %.sroa.0.010.i.i
  %.sroa.0.0.i.i16 = and i64 %i.la, %.val12.i     ; 3 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %.val.i14, i64 %.sroa.0.0.i.i16
  %.sroa.0.0.copyload.i6.i.i = load <16 x i8>, ptr %i.lb, align 1, !noalias !91
  %i.lc = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i, zeroinitializer
  %i.ld = bitcast <16 x i1> %i.lc to i16          ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.ld, 0
  br i1 %.not.i.i.i, label %.lr.ph.i16.i, label %._crit_edge.i15.i

_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit.i: ; preds = %bb.v, %._crit_edge.i15.i
  %.sroa.0.0.i5.i.i = phi i64 [ %i.kx, %bb.v ], [ %i.kp, %._crit_edge.i15.i ] ; 4 uses
  %i.le = sub i64 %.sroa.04.06.i, %.sroa.0.07.i.i
  %i.lf = sub i64 %.sroa.0.0.i5.i.i, %.sroa.0.07.i.i
  %i.lg = xor i64 %i.lf, %i.le
  %.unshifted.i = and i64 %i.lg, %.val12.i
  %i.lh = icmp ult i64 %.unshifted.i, 16
  br i1 %i.lh, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit.i
  %.neg11.i = mul i64 %.sroa.0.0.i5.i.i, -40
  %i.li = getelementptr i8, ptr %.val.i14, i64 %.neg11.i ; 5 uses
  %i.lj = getelementptr i8, ptr %i.li, i64 -40    ; 3 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %.val.i14, i64 %.sroa.0.0.i5.i.i ; 2 uses
  %i.ll = load i8, ptr %i.lk, align 1, !noundef !8
  %i.lm = lshr i64 %i.ki, 57
  %i.ln = trunc nuw nsw i64 %i.lm to i8           ; 2 uses
  %i.lo = add i64 %.sroa.0.0.i5.i.i, -16
  %i.lp = and i64 %i.lo, %.val12.i
  store i8 %i.ln, ptr %i.lk, align 1
  %i.lq = load ptr, ptr %0, align 8, !alias.scope !68, !nonnull !8, !noundef !8
  %i.lr = getelementptr i8, ptr %i.lq, i64 %i.lp
  %i.ls = getelementptr i8, ptr %i.lr, i64 16
  store i8 %i.ln, ptr %i.ls, align 1
  %i.lt = icmp eq i8 %i.ll, -1
  br i1 %i.lt, label %bb.y, label %.preheader.i.preheader.i

.preheader.i.preheader.i:                         ; preds = %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !97)
  call void @llvm.experimental.noalias.scope.decl(metadata !100)
  %.sroa.0.0.copyload.i.i.i.i15 = load i64, ptr %i.hk, align 1, !alias.scope !97, !noalias !100
  %.sroa.02.0.copyload.i.i.i.i = load i64, ptr %i.lj, align 1, !alias.scope !100, !noalias !97
  store i64 %.sroa.02.0.copyload.i.i.i.i, ptr %i.hk, align 1, !alias.scope !97, !noalias !100
  store i64 %.sroa.0.0.copyload.i.i.i.i15, ptr %i.lj, align 1, !alias.scope !100, !noalias !97
  %i.lu = getelementptr i8, ptr %i.li, i64 -32    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !102)
  call void @llvm.experimental.noalias.scope.decl(metadata !104)
  %.sroa.0.0.copyload.i.i.i.1.i = load i64, ptr %i.hm, align 1, !alias.scope !102, !noalias !104
  %.sroa.02.0.copyload.i.i.i.1.i = load i64, ptr %i.lu, align 1, !alias.scope !104, !noalias !102
  store i64 %.sroa.02.0.copyload.i.i.i.1.i, ptr %i.hm, align 1, !alias.scope !102, !noalias !104
  store i64 %.sroa.0.0.copyload.i.i.i.1.i, ptr %i.lu, align 1, !alias.scope !104, !noalias !102
  %i.lv = getelementptr i8, ptr %i.li, i64 -24    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !106)
  call void @llvm.experimental.noalias.scope.decl(metadata !108)
  %.sroa.0.0.copyload.i.i.i.2.i = load i64, ptr %i.hn, align 1, !alias.scope !106, !noalias !108
  %.sroa.02.0.copyload.i.i.i.2.i = load i64, ptr %i.lv, align 1, !alias.scope !108, !noalias !106
  store i64 %.sroa.02.0.copyload.i.i.i.2.i, ptr %i.hn, align 1, !alias.scope !106, !noalias !108
  store i64 %.sroa.0.0.copyload.i.i.i.2.i, ptr %i.lv, align 1, !alias.scope !108, !noalias !106
  %i.lw = getelementptr i8, ptr %i.li, i64 -16    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !110)
  call void @llvm.experimental.noalias.scope.decl(metadata !112)
  %.sroa.0.0.copyload.i.i.i.3.i = load i64, ptr %i.ho, align 1, !alias.scope !110, !noalias !112
  %.sroa.02.0.copyload.i.i.i.3.i = load i64, ptr %i.lw, align 1, !alias.scope !112, !noalias !110
  store i64 %.sroa.02.0.copyload.i.i.i.3.i, ptr %i.ho, align 1, !alias.scope !110, !noalias !112
  store i64 %.sroa.0.0.copyload.i.i.i.3.i, ptr %i.lw, align 1, !alias.scope !112, !noalias !110
  %i.lx = getelementptr i8, ptr %i.li, i64 -8     ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !114)
  call void @llvm.experimental.noalias.scope.decl(metadata !116)
  %.sroa.0.0.copyload.i.i.i.4.i = load i64, ptr %i.hp, align 1, !alias.scope !114, !noalias !116
  %.sroa.02.0.copyload.i.i.i.4.i = load i64, ptr %i.lx, align 1, !alias.scope !116, !noalias !114
  store i64 %.sroa.02.0.copyload.i.i.i.4.i, ptr %i.hp, align 1, !alias.scope !114, !noalias !116
  store i64 %.sroa.0.0.copyload.i.i.i.4.i, ptr %i.lx, align 1, !alias.scope !116, !noalias !114
  %.pre.i = load ptr, ptr %0, align 8, !alias.scope !118, !noalias !119
  br label %_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit.i

bb.x:                                             ; preds = %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit.i
  %i.ly = lshr i64 %i.ki, 57
  %i.lz = trunc nuw nsw i64 %i.ly to i8           ; 2 uses
  %i.ma = add i64 %.sroa.04.06.i, -16
  %i.mb = and i64 %.val12.i, %i.ma
  %i.mc = getelementptr inbounds nuw i8, ptr %.val.i14, i64 %.sroa.04.06.i
  store i8 %i.lz, ptr %i.mc, align 1
  %i.md = load ptr, ptr %0, align 8, !alias.scope !68, !nonnull !8, !noundef !8
  %i.me = getelementptr i8, ptr %i.md, i64 %i.mb
  %i.mf = getelementptr i8, ptr %i.me, i64 16
  store i8 %i.lz, ptr %i.mf, align 1
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.mg = add i64 %.sroa.04.06.i, -16
  %i.mh = load i64, ptr %i.j, align 8, !alias.scope !68, !noundef !8
  %i.mi = and i64 %i.mh, %i.mg
  %i.mj = load ptr, ptr %0, align 8, !alias.scope !68, !nonnull !8, !noundef !8
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 %.sroa.04.06.i
  store i8 -1, ptr %i.mk, align 1
  %i.ml = load ptr, ptr %0, align 8, !alias.scope !68, !nonnull !8, !noundef !8
  %i.mm = getelementptr i8, ptr %i.ml, i64 %i.mi
  %i.mn = getelementptr i8, ptr %i.mm, i64 16
  store i8 -1, ptr %i.mn, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %i.lj, ptr noundef nonnull align 1 dereferenceable(40) %i.hk, i64 40, i1 false)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.r
  %exitcond.not.i = icmp eq i64 %.sroa.04.06.i, %i.k
  br i1 %exitcond.not.i, label %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner15rehash_in_place.exit, label %bb.r

bb.aa:                                            ; preds = %bb.t
  %i.mo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner15rehash_in_place.exit: ; preds = %bb.z
  %.pre12.i = load i64, ptr %i.j, align 8, !alias.scope !68
  %.pre12.i.fr = freeze i64 %.pre12.i             ; 3 uses
  %.pre13.i = add i64 %.pre12.i.fr, 1
  %i.mp = lshr i64 %.pre13.i, 3
  %i.mq = mul nuw i64 %i.mp, 7
  %i.mr = icmp ult i64 %.pre12.i.fr, 8
  %spec.select = select i1 %i.mr, i64 %.pre12.i.fr, i64 %i.mq
  %.pre = load i64, ptr %i.f, align 8, !alias.scope !68
  br label %bb.ab

bb.ab:                                            ; preds = %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner15rehash_in_place.exit, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner15rehash_in_place.exit.thread
  %i.ms = phi i64 [ %i.g, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner15rehash_in_place.exit.thread ], [ %.pre, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner15rehash_in_place.exit ]
  %i.mt = phi i64 [ 0, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner15rehash_in_place.exit.thread ], [ %spec.select, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner15rehash_in_place.exit ]
  %i.mu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.mv = sub i64 %i.mt, %i.ms
  store i64 %i.mv, ptr %i.mu, align 8, !alias.scope !68
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !68
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit.thread, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECsj34PGqTgg0L_16deltalake_lakefs.exit, %bb.c, %bb.ab
  %.sroa.4.0.i = phi i64 [ %i.r, %bb.c ], [ undef, %bb.ab ], [ %.sroa.12.032, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit.thread ], [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECsj34PGqTgg0L_16deltalake_lakefs.exit ]
  %.sroa.0.0.i = phi i64 [ %i.q, %bb.c ], [ -9223372036854775807, %bb.ab ], [ %.sroa.7.031, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit.thread ], [ -9223372036854775807, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECsj34PGqTgg0L_16deltalake_lakefs.exit ]
  %i.mw = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.mx = insertvalue { i64, i64 } %i.mw, i64 %.sroa.4.0.i, 1
  ret { i64, i64 } %i.mx
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_8RawTableTNtCs3LITIwzqf1g_4uuid4UuidINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueNtNtCs6Po7BT7Nknu_5alloc6string6StringEEE7reserveNCNvXs2_B1t_INtB1t_7DashMapBY_B27_EINtNtB1t_1t3MapBY_B27_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entrys_0ECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !8
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, i64 } @_RINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_8RawTableTNtCs3LITIwzqf1g_4uuid4UuidINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueNtNtCs6Po7BT7Nknu_5alloc6string6StringEEE14reserve_rehashNCNvXs2_B1t_INtB1t_7DashMapBY_B27_EINtNtB1t_1t3MapBY_B27_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entrys_0ECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, i1 noundef zeroext true) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEE7reserveNCNvXs2_B1r_INtB1r_7DashMapBY_B25_EINtNtB1r_1t3MapBY_B25_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entrys_0ECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !8
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, i64 } @_RINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEE14reserve_rehashNCNvXs2_B1r_INtB1r_7DashMapBY_B25_EINtNtB1r_1t3MapBY_B25_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entrys_0EB2K_(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, i1 noundef zeroext true) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEE7reserveNCNvXs2_B1r_INtB1r_7DashMapBY_B25_EINtNtB1r_1t3MapBY_B25_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entrys_0ECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !8
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, i64 } @_RINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEE14reserve_rehashNCNvXs2_B1r_INtB1r_7DashMapBY_B25_EINtNtB1r_1t3MapBY_B25_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entrys_0EB2K_(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, i1 noundef zeroext true) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs(ptr %.0.val, ptr readonly captures(none) %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !8 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !120, !invariant.load !8 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !121, !invariant.load !8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #29
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs.exit

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.c, %bb.d
  ret void

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !120, !invariant.load !8 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs.exit4, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !121, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #29
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs.exit4

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs.exit4: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !122)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val3.i = load i64, ptr %i.a, align 8, !alias.scope !122, !noundef !8 ; 3 uses
  %i.b = icmp eq i64 %.val3.i, 0
  br i1 %i.b, label %_RNvXs1_NtCsbZMnTeWjWd9_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtNtB7_3raw5inner13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtNtB11_5alloc5inner6GlobalE0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs.exit, label %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i

_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val2.i = load ptr, ptr %i.c, align 8, !alias.scope !122 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.d, align 8, !alias.scope !122 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load i64, ptr %i.e, align 8, !alias.scope !122
  %i.f = add i64 %.val3.i, 1
  %i.g = mul nuw i64 %.val.i, %i.f                ; 2 uses
  %i.h = add i64 %.val1.i, -1
  %i.i = add i64 %i.h, %i.g                       ; 2 uses
  %i.j = icmp uge i64 %i.i, %i.g
  tail call void @llvm.assume(i1 %i.j)
  %i.k = sub i64 0, %.val1.i
  %i.l = and i64 %i.i, %i.k                       ; 3 uses
  %i.m = add i64 %.val3.i, 17
  %i.n = add i64 %i.m, %i.l                       ; 3 uses
  %i.o = icmp uge i64 %i.n, %i.l
  %i.p = sub nuw i64 -9223372036854775808, %.val1.i
  %i.q = icmp ule i64 %i.n, %i.p
  tail call void @llvm.assume(i1 %i.o)
  tail call void @llvm.assume(i1 %i.q)
  %i.r = icmp ne i64 %.val1.i, 0
  tail call void @llvm.assume(i1 %i.r)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.s = sub nsw i64 0, %i.l
  %i.t = getelementptr inbounds i8, ptr %.val2.i, i64 %i.s
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.t, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) %.val1.i) #29, !noalias !122
  br label %_RNvXs1_NtCsbZMnTeWjWd9_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtNtB7_3raw5inner13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtNtB11_5alloc5inner6GlobalE0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs.exit

_RNvXs1_NtCsbZMnTeWjWd9_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtNtB7_3raw5inner13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtNtB11_5alloc5inner6GlobalE0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.a, %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardQNtNtNtBL_3raw5inner13RawTableInnerNCNvMsa_B1A_B1y_15rehash_in_place0EECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !125)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !125, !noundef !8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !125
  %.val2.i = load ptr, ptr %0, align 8, !alias.scope !125 ; 10 uses
  %.not.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i, label %_RNvXs1_NtCsbZMnTeWjWd9_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtNtB7_3raw5inner13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.c = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noalias !125, !noundef !8 ; 2 uses
  %.not4.i.i = icmp eq i64 %i.d, -1
  br i1 %.not4.i.i, label %_RNvXs1_NtCsbZMnTeWjWd9_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtNtB7_3raw5inner13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i.i
  %.sroa.04.03.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.f, %bb.e ] ; 5 uses
  %i.f = add nuw i64 %.sroa.04.03.i.i, 1
  %i.g = load ptr, ptr %.val2.i, align 8, !noalias !125, !nonnull !8, !noundef !8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.04.03.i.i ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !noalias !125, !noundef !8
  %i.j = icmp eq i8 %i.i, -128
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.neg.i.i = xor i64 %.sroa.04.03.i.i, -1
  %i.k = add i64 %.sroa.04.03.i.i, -16
  %i.l = load i64, ptr %i.c, align 8, !noalias !125, !noundef !8
  %i.m = and i64 %i.l, %i.k
  store i8 -1, ptr %i.h, align 1, !noalias !125
  %i.n = load ptr, ptr %.val2.i, align 8, !noalias !125, !nonnull !8, !noundef !8
  %i.o = getelementptr i8, ptr %i.n, i64 %i.m
  %i.p = getelementptr i8, ptr %i.o, i64 16
  store i8 -1, ptr %i.p, align 1, !noalias !125
  %i.q = load ptr, ptr %.val2.i, align 8, !noalias !125, !nonnull !8, !noundef !8
  %.neg6.i.i = mul i64 %.val1.i, %.neg.i.i
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 %.neg6.i.i
  tail call void %.val.i(ptr noundef nonnull %i.r), !noalias !125, !inline_history !128
  %i.s = load i64, ptr %i.e, align 8, !noalias !125, !noundef !8
  %i.t = add i64 %i.s, -1
  store i64 %i.t, ptr %i.e, align 8, !noalias !125
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %exitcond.not.i.i = icmp eq i64 %.sroa.04.03.i.i, %i.d
  br i1 %exitcond.not.i.i, label %_RNvXs1_NtCsbZMnTeWjWd9_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtNtB7_3raw5inner13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.c

_RNvXs1_NtCsbZMnTeWjWd9_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtNtB7_3raw5inner13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.e, %bb.a, %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8
  %i.v = load i64, ptr %i.u, align 8, !noalias !125, !noundef !8 ; 3 uses
  %1 = icmp ult i64 %i.v, 8
  %i.w = add i64 %i.v, 1
  %i.x = lshr i64 %i.w, 3
  %i.y = mul nuw i64 %i.x, 7
  %.sroa.01.0.i.i = select i1 %1, i64 %i.v, i64 %i.y
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.z = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !noalias !125, !noundef !8
  %i.ab = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16
  %i.ac = sub i64 %.sroa.01.0.i.i, %i.aa
  store i64 %i.ac, ptr %i.ab, align 8, !noalias !125
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129)
  %i.a = load i64, ptr %0, align 8, !range !132, !alias.scope !129, !noundef !8
  %i.b = icmp eq i64 %i.a, -9223372036854775790
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !139, !nonnull !8, !align !37, !noundef !8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !noalias !139, !nonnull !8, !noundef !8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !139, !noundef !8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !139, !noundef !8
  tail call void %i.f(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef %i.i, i64 noundef %i.k), !inline_history !140
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(72) %0)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEECsj34PGqTgg0L_16deltalake_lakefs.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2h_5ErrorEEECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !132, !alias.scope !141, !noundef !8
  %i.b = icmp eq i64 %i.a, -9223372036854775790
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECsj34PGqTgg0L_16deltalake_lakefs.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.d

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECsj34PGqTgg0L_16deltalake_lakefs.exit.i: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB16_5ErrorEECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.e:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(72) %0)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB16_5ErrorEECsj34PGqTgg0L_16deltalake_lakefs.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB16_5ErrorEECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECsj34PGqTgg0L_16deltalake_lakefs.exit.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !144, !noundef !8 ; 3 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775800
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, 9223372036854775802
  %i.d = icmp ugt i64 %i.a, -9223372036854775803
  %i.e = select i1 %i.d, i64 %i.c, i64 2
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.e
    i64 1, label %bb.k
    i64 2, label %bb.n
    i64 3, label %bb.o
    i64 4, label %bb.v
    i64 5, label %bb.ab
    i64 6, label %bb.ae
    i64 7, label %bb.ah
    i64 8, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit
    i64 9, label %bb.ak
    i64 10, label %bb.an
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

common.resume:                                    ; preds = %bb.bz, %bb.ca, %bb.bt, %bb.bu, %bb.bn, %bb.bo, %bb.bh, %bb.bi, %bb.bb, %bb.bc, %.body56, %.body51, %.body46, %.body41, %.body36, %.body, %bb.au, %bb.av, %bb.z, %bb.aa, %bb.t, %bb.u, %bb.i, %bb.j, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.et, %bb.bt ], [ %i.g, %bb.c ], [ %i.q, %bb.i ], [ %i.ai, %bb.t ], [ %i.aw, %bb.z ], [ %i.cc, %bb.au ], [ %eh.lpad-body57, %.body56 ], [ %i.cu, %bb.bb ], [ %i.dl, %bb.bh ], [ %i.ec, %bb.bn ], [ %i.q, %bb.j ], [ %i.ai, %bb.u ], [ %i.aw, %bb.aa ], [ %i.cc, %bb.av ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body37, %.body36 ], [ %eh.lpad-body42, %.body41 ], [ %eh.lpad-body47, %.body46 ], [ %eh.lpad-body52, %.body51 ], [ %i.cu, %bb.bc ], [ %i.dl, %bb.bi ], [ %i.ec, %bb.bo ], [ %i.et, %bb.bu ], [ %i.fk, %bb.ca ], [ %i.fk, %bb.bz ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val27 = load ptr, ptr %i.i, align 8           ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val28 = load ptr, ptr %i.j, align 8, !nonnull !8, !align !37, !noundef !8 ; 5 uses
  %i.k = load ptr, ptr %.val28, align 8, !invariant.load !8 ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val27) ]
  invoke void %i.k(ptr noundef nonnull %.val27)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %.val28, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !120, !invariant.load !8 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %.val28, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !121, !invariant.load !8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val27) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val27, i64 noundef range(i64 1, -9223372036854775808) %i.m, i64 noundef range(i64 1, 536870913) %i.p) #29
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.i:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.val28, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !120, !invariant.load !8 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %common.resume, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %.val28, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !121, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val27, i64 noundef range(i64 1, -9223372036854775808) %i.s, i64 noundef range(i64 1, 536870913) %i.v) #29
  br label %common.resume

bb.k:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %.body unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i: ; preds = %bb.k
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit30 unwind label %bb.aq

bb.n:                                             ; preds = %bb.a
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path5ErrorECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(72) %0)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.o:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !145)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i = load ptr, ptr %i.z, align 8, !alias.scope !145, !noundef !8 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i = load ptr, ptr %i.aa, align 8, !alias.scope !145 ; 6 uses
  %i.ab = icmp eq ptr %.val.i, null
end_hunk_1
