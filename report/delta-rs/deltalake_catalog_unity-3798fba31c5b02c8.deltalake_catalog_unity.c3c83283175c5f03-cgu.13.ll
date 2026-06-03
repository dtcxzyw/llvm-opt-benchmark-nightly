inline.NumInlined: 742
inline.NumDeleted: 362
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant <{ ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCsb2ODgYNwnRL_6anyhow5error11object_dropNtCs5cfGYlCJjjB_13reqwest_retry10RetryErrorECsgO8S5jLFugx_23deltalake_catalog_unity, ptr @_RINvNtCsb2ODgYNwnRL_6anyhow5error10object_refNtCs5cfGYlCJjjB_13reqwest_retry10RetryErrorECsgO8S5jLFugx_23deltalake_catalog_unity, ptr @_RINvNtCsb2ODgYNwnRL_6anyhow5error12object_boxedNtCs5cfGYlCJjjB_13reqwest_retry10RetryErrorECsgO8S5jLFugx_23deltalake_catalog_unity, ptr @_RINvNtCsb2ODgYNwnRL_6anyhow5error23object_reallocate_boxedNtCs5cfGYlCJjjB_13reqwest_retry10RetryErrorECsgO8S5jLFugx_23deltalake_catalog_unity, ptr @_RINvNtCsb2ODgYNwnRL_6anyhow5error15object_downcastNtCs5cfGYlCJjjB_13reqwest_retry10RetryErrorECsgO8S5jLFugx_23deltalake_catalog_unity, ptr @_RINvNtCsb2ODgYNwnRL_6anyhow5error17object_drop_frontNtCs5cfGYlCJjjB_13reqwest_retry10RetryErrorECsgO8S5jLFugx_23deltalake_catalog_unity }>, align 8
@1 = private unnamed_addr constant <{ ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCsb2ODgYNwnRL_6anyhow5error11object_dropINtNtB4_7wrapper12MessageErrorNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity, ptr @_RINvNtCsb2ODgYNwnRL_6anyhow5error10object_refINtNtB4_7wrapper12MessageErrorNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity, ptr @_RINvNtCsb2ODgYNwnRL_6anyhow5error12object_boxedINtNtB4_7wrapper12MessageErrorNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity, ptr @_RINvNtCsb2ODgYNwnRL_6anyhow5error23object_reallocate_boxedINtNtB4_7wrapper12MessageErrorNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity, ptr @_RINvNtCsb2ODgYNwnRL_6anyhow5error15object_downcastNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity, ptr @_RINvNtCsb2ODgYNwnRL_6anyhow5error17object_drop_frontNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity }>, align 8
@2 = private unnamed_addr constant [39 x i8] c"crates/catalog-unity/src/credential.rs\00", align 1
@3 = private unnamed_addr constant [17 x i8] c"\C0\0E/oidc/v1/token\00", align 1
@4 = private unnamed_addr constant [98 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/http-1.4.0/src/header/map.rs\00", align 1
@5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"a\00\00\00\00\00\00\00\BC\05\00\00\0C\00\00\00" }>, align 8
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"a\00\00\00\00\00\00\00\C8\05\00\00\11\00\00\00" }>, align 8
@7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"a\00\00\00\00\00\00\00-\05\00\00\0C\00\00\00" }>, align 8
@8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"a\00\00\00\00\00\00\009\05\00\00\11\00\00\00" }>, align 8
@9 = private unnamed_addr constant [95 x i8] c"/rustc/1d8897a4e88051480b36c501e66809425c6e08ad/library/alloc/src/collections/vec_deque/mod.rs\00", align 1
@10 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @9, [16 x i8] c"^\00\00\00\00\00\00\00\86\06\00\00$\00\00\00" }>, align 8
@11 = private unnamed_addr constant [24 x i8] c"\C0\01/\C0\12/oauth2/v2.0/token\00", align 1
@12 = private unnamed_addr constant [23 x i8] c"size overflows MAX_SIZE", align 1
@13 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"a\00\00\00\00\00\00\00\8C\05\00\00\0E\00\00\00" }>, align 8
@14 = private unnamed_addr constant <{ [9 x i8], [23 x i8] }> <{ [9 x i8] c"\00\00\00\00\00\00\00\00\1D", [23 x i8] undef }>, align 8
@15 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"a\00\00\00\00\00\00\00\94\04\00\00\1D\00\00\00" }>, align 8
@16 = private unnamed_addr constant [33 x i8] c"application/x-www-form-urlencoded", align 1
@17 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"a\00\00\00\00\00\00\00\0F\0A\00\00\0E\00\00\00" }>, align 8
@18 = private unnamed_addr constant [16 x i8] c"application/json", align 1
@19 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"a\00\00\00\00\00\00\00\FC\04\00\00#\00\00\00" }>, align 8
@20 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsb2ODgYNwnRL_6anyhow7wrapper12MessageErrorNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtCsb2ODgYNwnRL_6anyhow7wrapperINtB4_12MessageErrorNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtCsbvkFyIu7lgC_4core3fmt7Display3fmtCsgO8S5jLFugx_23deltalake_catalog_unity }>, align 8
@21 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsb2ODgYNwnRL_6anyhow7wrapper12MessageErrorNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNtCsb2ODgYNwnRL_6anyhow7wrapperINtB2_12MessageErrorNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCsgO8S5jLFugx_23deltalake_catalog_unity, ptr @_RNvXs_NtCsb2ODgYNwnRL_6anyhow7wrapperINtB4_12MessageErrorNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtCsbvkFyIu7lgC_4core3fmt7Display3fmtCsgO8S5jLFugx_23deltalake_catalog_unity, ptr @20, ptr @_RNvYINtNtCsb2ODgYNwnRL_6anyhow7wrapper12MessageErrorNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtCsbvkFyIu7lgC_4core5error5Error6sourceCsgO8S5jLFugx_23deltalake_catalog_unity, ptr @_RNvYINtNtCsb2ODgYNwnRL_6anyhow7wrapper12MessageErrorNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtCsbvkFyIu7lgC_4core5error5Error7type_idCsgO8S5jLFugx_23deltalake_catalog_unity, ptr @_RNvYINtNtCsb2ODgYNwnRL_6anyhow7wrapper12MessageErrorNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtCsbvkFyIu7lgC_4core5error5Error11descriptionCsgO8S5jLFugx_23deltalake_catalog_unity, ptr @_RNvYINtNtCsb2ODgYNwnRL_6anyhow7wrapper12MessageErrorNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtCsbvkFyIu7lgC_4core5error5Error5causeCsgO8S5jLFugx_23deltalake_catalog_unity, ptr @_RNvYINtNtCsb2ODgYNwnRL_6anyhow7wrapper12MessageErrorNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtCsbvkFyIu7lgC_4core5error5Error7provideCsgO8S5jLFugx_23deltalake_catalog_unity }>, align 8
@22 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs5cfGYlCJjjB_13reqwest_retry10RetryErrorECsgO8S5jLFugx_23deltalake_catalog_unity, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs0_Cs5cfGYlCJjjB_13reqwest_retryNtB5_10RetryErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt }>, align 8
@23 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs5cfGYlCJjjB_13reqwest_retry10RetryErrorECsgO8S5jLFugx_23deltalake_catalog_unity, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXCs5cfGYlCJjjB_13reqwest_retryNtB2_10RetryErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt, ptr @_RNvXs0_Cs5cfGYlCJjjB_13reqwest_retryNtB5_10RetryErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr @22, ptr @_RNvXs_Cs5cfGYlCJjjB_13reqwest_retryNtB4_10RetryErrorNtNtCsbvkFyIu7lgC_4core5error5Error6source, ptr @_RNvYNtCs5cfGYlCJjjB_13reqwest_retry10RetryErrorNtNtCsbvkFyIu7lgC_4core5error5Error7type_idCsgO8S5jLFugx_23deltalake_catalog_unity, ptr @_RNvYNtCs5cfGYlCJjjB_13reqwest_retry10RetryErrorNtNtCsbvkFyIu7lgC_4core5error5Error11descriptionCsgO8S5jLFugx_23deltalake_catalog_unity, ptr @_RNvYNtCs5cfGYlCJjjB_13reqwest_retry10RetryErrorNtNtCsbvkFyIu7lgC_4core5error5Error5causeCsgO8S5jLFugx_23deltalake_catalog_unity, ptr @_RNvYNtCs5cfGYlCJjjB_13reqwest_retry10RetryErrorNtNtCsbvkFyIu7lgC_4core5error5Error7provideCsgO8S5jLFugx_23deltalake_catalog_unity }>, align 8
@24 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsb2ODgYNwnRL_6anyhow5error9ErrorImplINtNtBL_7wrapper12MessageErrorNtNtCs6Po7BT7Nknu_5alloc6string6StringEEECsgO8S5jLFugx_23deltalake_catalog_unity, [16 x i8] c"P\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs9_NtCsb2ODgYNwnRL_6anyhow5errorINtB5_9ErrorImplINtNtB7_7wrapper12MessageErrorNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtCsbvkFyIu7lgC_4core3fmt7Display3fmtCsgO8S5jLFugx_23deltalake_catalog_unity }>, align 8
@25 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsb2ODgYNwnRL_6anyhow5error9ErrorImplINtNtBL_7wrapper12MessageErrorNtNtCs6Po7BT7Nknu_5alloc6string6StringEEECsgO8S5jLFugx_23deltalake_catalog_unity, [16 x i8] c"P\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs8_NtCsb2ODgYNwnRL_6anyhow5errorINtB5_9ErrorImplINtNtB7_7wrapper12MessageErrorNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCsgO8S5jLFugx_23deltalake_catalog_unity, ptr @_RNvXs9_NtCsb2ODgYNwnRL_6anyhow5errorINtB5_9ErrorImplINtNtB7_7wrapper12MessageErrorNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtCsbvkFyIu7lgC_4core3fmt7Display3fmtCsgO8S5jLFugx_23deltalake_catalog_unity, ptr @24, ptr @_RNvXs7_NtCsb2ODgYNwnRL_6anyhow5errorINtB5_9ErrorImplINtNtB7_7wrapper12MessageErrorNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtCsbvkFyIu7lgC_4core5error5Error6sourceCsgO8S5jLFugx_23deltalake_catalog_unity, ptr @_RNvYINtNtCsb2ODgYNwnRL_6anyhow5error9ErrorImplINtNtB7_7wrapper12MessageErrorNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtCsbvkFyIu7lgC_4core5error5Error7type_idCsgO8S5jLFugx_23deltalake_catalog_unity, ptr @_RNvYINtNtCsb2ODgYNwnRL_6anyhow5error9ErrorImplINtNtB7_7wrapper12MessageErrorNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtCsbvkFyIu7lgC_4core5error5Error11descriptionCsgO8S5jLFugx_23deltalake_catalog_unity, ptr @_RNvYINtNtCsb2ODgYNwnRL_6anyhow5error9ErrorImplINtNtB7_7wrapper12MessageErrorNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtCsbvkFyIu7lgC_4core5error5Error5causeCsgO8S5jLFugx_23deltalake_catalog_unity, ptr @_RNvXs7_NtCsb2ODgYNwnRL_6anyhow5errorINtB5_9ErrorImplINtNtB7_7wrapper12MessageErrorNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtCsbvkFyIu7lgC_4core5error5Error7provideCsgO8S5jLFugx_23deltalake_catalog_unity }>, align 8
@26 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsb2ODgYNwnRL_6anyhow5error9ErrorImplNtCs5cfGYlCJjjB_13reqwest_retry10RetryErrorEECsgO8S5jLFugx_23deltalake_catalog_unity, [16 x i8] c"P\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs9_NtCsb2ODgYNwnRL_6anyhow5errorINtB5_9ErrorImplNtCs5cfGYlCJjjB_13reqwest_retry10RetryErrorENtNtCsbvkFyIu7lgC_4core3fmt7Display3fmtCsgO8S5jLFugx_23deltalake_catalog_unity }>, align 8
@27 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsb2ODgYNwnRL_6anyhow5error9ErrorImplNtCs5cfGYlCJjjB_13reqwest_retry10RetryErrorEECsgO8S5jLFugx_23deltalake_catalog_unity, [16 x i8] c"P\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs8_NtCsb2ODgYNwnRL_6anyhow5errorINtB5_9ErrorImplNtCs5cfGYlCJjjB_13reqwest_retry10RetryErrorENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCsgO8S5jLFugx_23deltalake_catalog_unity, ptr @_RNvXs9_NtCsb2ODgYNwnRL_6anyhow5errorINtB5_9ErrorImplNtCs5cfGYlCJjjB_13reqwest_retry10RetryErrorENtNtCsbvkFyIu7lgC_4core3fmt7Display3fmtCsgO8S5jLFugx_23deltalake_catalog_unity, ptr @26, ptr @_RNvXs7_NtCsb2ODgYNwnRL_6anyhow5errorINtB5_9ErrorImplNtCs5cfGYlCJjjB_13reqwest_retry10RetryErrorENtNtCsbvkFyIu7lgC_4core5error5Error6sourceCsgO8S5jLFugx_23deltalake_catalog_unity, ptr @_RNvYINtNtCsb2ODgYNwnRL_6anyhow5error9ErrorImplNtCs5cfGYlCJjjB_13reqwest_retry10RetryErrorENtNtCsbvkFyIu7lgC_4core5error5Error7type_idCsgO8S5jLFugx_23deltalake_catalog_unity, ptr @_RNvYINtNtCsb2ODgYNwnRL_6anyhow5error9ErrorImplNtCs5cfGYlCJjjB_13reqwest_retry10RetryErrorENtNtCsbvkFyIu7lgC_4core5error5Error11descriptionCsgO8S5jLFugx_23deltalake_catalog_unity, ptr @_RNvYINtNtCsb2ODgYNwnRL_6anyhow5error9ErrorImplNtCs5cfGYlCJjjB_13reqwest_retry10RetryErrorENtNtCsbvkFyIu7lgC_4core5error5Error5causeCsgO8S5jLFugx_23deltalake_catalog_unity, ptr @_RNvXs7_NtCsb2ODgYNwnRL_6anyhow5errorINtB5_9ErrorImplNtCs5cfGYlCJjjB_13reqwest_retry10RetryErrorENtNtCsbvkFyIu7lgC_4core5error5Error7provideCsgO8S5jLFugx_23deltalake_catalog_unity }>, align 8
@28 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 3420937889831325666 to ptr), ptr inttoptr (i64 -8325741207807468058 to ptr) }>, align 8
@29 = private unnamed_addr constant [99 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/serde_json-1.0.149/src/ser.rs\00", align 1
@_RNvNtCseqDwI8vvjGQ_10serde_json3ser6ESCAPE = external local_unnamed_addr global [256 x i8]
@30 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"a\00\00\00\00\00\00\00\E7\08\00\00\12\00\00\00" }>, align 8
@31 = private unnamed_addr constant [40 x i8] c"internal error: entered unreachable code", align 1
@32 = private unnamed_addr constant [13 x i8] c"TokenResponse", align 1
@33 = private unnamed_addr constant [12 x i8] c"access_token", align 1
@34 = private unnamed_addr constant [10 x i8] c"expires_in", align 1
@35 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @33, [8 x i8] c"\0C\00\00\00\00\00\00\00", ptr @34, [8 x i8] c"\0A\00\00\00\00\00\00\00" }>, align 8
@36 = private unnamed_addr constant [16 x i8] c"MsiTokenResponse", align 1
@37 = private unnamed_addr constant [21 x i8] c"AzureCliTokenResponse", align 1
@38 = private unnamed_addr constant [11 x i8] c"accessToken", align 1
@39 = private unnamed_addr constant [9 x i8] c"expiresOn", align 1
@40 = private unnamed_addr constant [9 x i8] c"tokenType", align 1
@41 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @38, [8 x i8] c"\0B\00\00\00\00\00\00\00", ptr @39, [8 x i8] c"\09\00\00\00\00\00\00\00", ptr @40, [8 x i8] c"\09\00\00\00\00\00\00\00" }>, align 8
@42 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs_NtCs1gOyXocuPRE_10serde_core2deNtNtB4_5impls13StringVisitorNtB4_8Expected3fmtCsgO8S5jLFugx_23deltalake_catalog_unity }>, align 8
@43 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @29, [16 x i8] c"b\00\00\00\00\00\00\00\81\02\00\00*\00\00\00" }>, align 8
@44 = private unnamed_addr constant [1 x i8] c"\22", align 1
@45 = private unnamed_addr constant [1 x i8] c",", align 1
@_RNvNvNtNtCseqDwI8vvjGQ_10serde_json3ser9Formatter17write_char_escape10HEX_DIGITS = external local_unnamed_addr global [16 x i8]
@46 = private unnamed_addr constant [1 x i8] c":", align 1
@47 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs_NtCs1gOyXocuPRE_10serde_core2deNtNvXs19_NtB4_5implsyNtB4_11Deserialize11deserialize16PrimitiveVisitorNtB4_8Expected3fmtCsgO8S5jLFugx_23deltalake_catalog_unity }>, align 8
@48 = private unnamed_addr constant [112 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/reqwest-0.12.28/src/async_impl/response.rs\00", align 1
@49 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @48, [16 x i8] c"o\00\00\00\00\00\00\00\0D\01\00\00F\00\00\00" }>, align 8
@50 = private unnamed_addr constant [33 x i8] c"https://login.microsoftonline.com", align 1
@51 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"&\00\00\00\00\00\00\00F\00\00\00b\00\00\00" }>, align 8
@52 = private unnamed_addr constant [39 x i8] c"az response is not a valid utf-8 string", align 1
@53 = private unnamed_addr constant [28 x i8] c"az returned invalid lifetime", align 1
@54 = private unnamed_addr constant [40 x i8] c"%failed seserializing token response: \C0\00", align 1
@55 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @48, [16 x i8] c"o\00\00\00\00\00\00\00\22\01\00\006\00\00\00" }>, align 8
@56 = private unnamed_addr constant [53 x i8] c"http://169.254.169.254/metadata/identity/oauth2/token", align 1
@57 = private unnamed_addr constant [108 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/reqwest-middleware-0.4.2/src/client.rs\00", align 1
@58 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @57, [16 x i8] c"k\00\00\00\00\00\00\00U\02\00\005\00\00\00" }>, align 8
@59 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @57, [16 x i8] c"k\00\00\00\00\00\00\00\E0\00\00\00\1B\00\00\00" }>, align 8
@60 = private unnamed_addr constant [9 x i8] c"client_id", align 1
@61 = private unnamed_addr constant [13 x i8] c"client_secret", align 1
@62 = private unnamed_addr constant [5 x i8] c"scope", align 1
@63 = private unnamed_addr constant [8 x i8] c"all-apis", align 1
@64 = private unnamed_addr constant [10 x i8] c"grant_type", align 1
@65 = private unnamed_addr constant [18 x i8] c"client_credentials", align 1
@66 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"&\00\00\00\00\00\00\00`\00\00\00\05\00\00\00" }>, align 8
@67 = private unnamed_addr constant [36 x i8] c"2ff814a6-3304-4ab8-85cb-cd0e6f879c1d", align 1
@68 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @67, [8 x i8] c"$\00\00\00\00\00\00\00" }>, align 8
@69 = private unnamed_addr constant [12 x i8] c"\C0\09/.default\00", align 1
@70 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"&\00\00\00\00\00\00\00\9C\00\00\00\05\00\00\00" }>, align 8
@71 = private unnamed_addr constant [7 x i8] c"account", align 1
@72 = private unnamed_addr constant [16 x i8] c"get-access-token", align 1
@73 = private unnamed_addr constant [8 x i8] c"--output", align 1
@74 = private unnamed_addr constant [4 x i8] c"json", align 1
@75 = private unnamed_addr constant [10 x i8] c"--resource", align 1
@76 = private unnamed_addr constant [2 x i8] c"az", align 1
@77 = private unnamed_addr constant [45 x i8] c"*got unexpected token type from azure cli: \C0\00", align 1
@78 = private unnamed_addr constant [23 x i8] c"Azure Cli not installed", align 1
@79 = private unnamed_addr constant [13 x i8] c"\0Aio error: \C0\00", align 1
@80 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"&\00\00\00\00\00\00\00\E4\00\00\00\05\00\00\00" }>, align 8
@81 = private unnamed_addr constant [21 x i8] c"client_assertion_type", align 1
@82 = private unnamed_addr constant [54 x i8] c"urn:ietf:params:oauth:client-assertion-type:jwt-bearer", align 1
@83 = private unnamed_addr constant [16 x i8] c"client_assertion", align 1
@84 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"&\00\00\00\00\00\00\00M\01\00\00\05\00\00\00" }>, align 8
@85 = private unnamed_addr constant [11 x i8] c"api-version", align 1
@86 = private unnamed_addr constant [10 x i8] c"2019-08-01", align 1
@87 = private unnamed_addr constant [8 x i8] c"resource", align 1
@88 = private unnamed_addr constant [9 x i8] c"object_id", align 1
@89 = private unnamed_addr constant [10 x i8] c"msi_res_id", align 1
@90 = private unnamed_addr constant [8 x i8] c"metadata", align 1
@91 = private unnamed_addr constant [4 x i8] c"true", align 1
@92 = private unnamed_addr constant [15 x i8] c"IDENTITY_HEADER", align 1
@93 = private unnamed_addr constant [17 x i8] c"x-identity-header", align 1
@94 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"&\00\00\00\00\00\00\00\A6\01\00\00\05\00\00\00" }>, align 8
@95 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs14_NtNtCs4j34XAPZOn0_4http6header3mapNtB6_14MaxSizeReachedNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt }>, align 8
@96 = private unnamed_addr constant [43 x i8] c"Local time out of range for `NaiveDateTime`", align 1
@97 = private unnamed_addr constant [103 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/chrono-0.4.44/src/datetime/mod.rs\00", align 1
@98 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @97, [16 x i8] c"f\00\00\00\00\00\00\00C\02\00\00\0E\00\00\00" }>, align 8
@99 = private unnamed_addr constant <{ ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RNvNtCs9Ct3XQYJhun_5bytes5bytes12static_clone, ptr @_RNvNtCs9Ct3XQYJhun_5bytes5bytes13static_to_vec, ptr @_RNvNtCs9Ct3XQYJhun_5bytes5bytes13static_to_mut, ptr @_RNvNtCs9Ct3XQYJhun_5bytes5bytes16static_is_unique, ptr @_RNvNtCs9Ct3XQYJhun_5bytes5bytes11static_drop }>, align 8
@100 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"a\00\00\00\00\00\00\00M\05\00\00&\00\00\00" }>, align 8
@101 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00", ptr @_RNvXsW_NtNtCsbvkFyIu7lgC_4core3fmt3nummNtB7_5Debug3fmt }>, align 8
@102 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtCsjkRrtHEnRPD_18reqwest_middleware5error5ErrorNtB6_5Debug3fmtCsgO8S5jLFugx_23deltalake_catalog_unity }>, align 8
@103 = private unnamed_addr constant [11 x i8] c"WithRetries", align 1
@104 = private unnamed_addr constant [7 x i8] c"retries", align 1
@105 = private unnamed_addr constant [3 x i8] c"err", align 1
@106 = private unnamed_addr constant [5 x i8] c"Error", align 1
@107 = private unnamed_addr constant [35 x i8] c" value is not a legal timestamp: \C0\00", align 1
@108 = private unnamed_addr constant [39 x i8] c"\10response error \22\C0\09\22, after \C0\08 retries\00", align 1
@109 = private unnamed_addr constant [5 x i8] c"\02: \C0\00", align 1
@110 = private unnamed_addr constant [16 x i8] c"field identifier", align 1
@111 = private unnamed_addr constant [5 x i8] c"a map", align 1
@112 = private unnamed_addr constant [10 x i8] c"a sequence", align 1
@113 = private unnamed_addr constant [20 x i8] c"struct TokenResponse", align 1
@114 = private unnamed_addr constant [23 x i8] c"struct MsiTokenResponse", align 1
@115 = private unnamed_addr constant [28 x i8] c"struct AzureCliTokenResponse", align 1
@116 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvXs7_NtCsgO8S5jLFugx_23deltalake_catalog_unity10credentialNtBO_22WorkspaceOAuthProviderNtBO_15TokenCredential11fetch_token0EBQ_, [16 x i8] c"x\05\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNCNvXs7_NtCsgO8S5jLFugx_23deltalake_catalog_unity10credentialNtB7_22WorkspaceOAuthProviderNtB7_15TokenCredential11fetch_token0B9_ }>, align 8
@117 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs0_NtCsgO6CtM78C4N_7reqwest5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt }>, align 8
@118 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtCsgO6CtM78C4N_7reqwest5errorNtB4_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt, ptr @_RNvXs0_NtCsgO6CtM78C4N_7reqwest5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr @117, ptr @_RNvXs1_NtCsgO6CtM78C4N_7reqwest5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error6source, ptr @_RNvYNtNtCsgO6CtM78C4N_7reqwest5error5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error7type_idCsgO8S5jLFugx_23deltalake_catalog_unity, ptr @_RNvYNtNtCsgO6CtM78C4N_7reqwest5error5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error11descriptionCsgO8S5jLFugx_23deltalake_catalog_unity, ptr @_RNvYNtNtCsgO6CtM78C4N_7reqwest5error5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error5causeCsgO8S5jLFugx_23deltalake_catalog_unity, ptr @_RNvYNtNtCsgO6CtM78C4N_7reqwest5error5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error7provideCsgO8S5jLFugx_23deltalake_catalog_unity }>, align 8
@119 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvXsa_NtCsgO8S5jLFugx_23deltalake_catalog_unity10credentialNtBO_25ClientSecretOAuthProviderNtBO_15TokenCredential11fetch_token0EBQ_, [16 x i8] c"\90\05\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNCNvXsa_NtCsgO8S5jLFugx_23deltalake_catalog_unity10credentialNtB7_25ClientSecretOAuthProviderNtB7_15TokenCredential11fetch_token0B9_ }>, align 8
@120 = private unnamed_addr constant [8 x i8] c"NotFound", align 1
@121 = private unnamed_addr constant [16 x i8] c"PermissionDenied", align 1
@122 = private unnamed_addr constant [17 x i8] c"ConnectionRefused", align 1
@123 = private unnamed_addr constant [15 x i8] c"ConnectionReset", align 1
@124 = private unnamed_addr constant [15 x i8] c"HostUnreachable", align 1
@125 = private unnamed_addr constant [18 x i8] c"NetworkUnreachable", align 1
@126 = private unnamed_addr constant [17 x i8] c"ConnectionAborted", align 1
@127 = private unnamed_addr constant [12 x i8] c"NotConnected", align 1
@128 = private unnamed_addr constant [9 x i8] c"AddrInUse", align 1
@129 = private unnamed_addr constant [16 x i8] c"AddrNotAvailable", align 1
@130 = private unnamed_addr constant [11 x i8] c"NetworkDown", align 1
@131 = private unnamed_addr constant [10 x i8] c"BrokenPipe", align 1
@132 = private unnamed_addr constant [13 x i8] c"AlreadyExists", align 1
@133 = private unnamed_addr constant [10 x i8] c"WouldBlock", align 1
@134 = private unnamed_addr constant [13 x i8] c"NotADirectory", align 1
@135 = private unnamed_addr constant [12 x i8] c"IsADirectory", align 1
@136 = private unnamed_addr constant [17 x i8] c"DirectoryNotEmpty", align 1
@137 = private unnamed_addr constant [18 x i8] c"ReadOnlyFilesystem", align 1
@138 = private unnamed_addr constant [14 x i8] c"FilesystemLoop", align 1
@139 = private unnamed_addr constant [22 x i8] c"StaleNetworkFileHandle", align 1
@140 = private unnamed_addr constant [12 x i8] c"InvalidInput", align 1
@141 = private unnamed_addr constant [11 x i8] c"InvalidData", align 1
@142 = private unnamed_addr constant [8 x i8] c"TimedOut", align 1
@143 = private unnamed_addr constant [9 x i8] c"WriteZero", align 1
@144 = private unnamed_addr constant [11 x i8] c"StorageFull", align 1
@145 = private unnamed_addr constant [11 x i8] c"NotSeekable", align 1
@146 = private unnamed_addr constant [13 x i8] c"QuotaExceeded", align 1
@147 = private unnamed_addr constant [12 x i8] c"FileTooLarge", align 1
@148 = private unnamed_addr constant [12 x i8] c"ResourceBusy", align 1
@149 = private unnamed_addr constant [18 x i8] c"ExecutableFileBusy", align 1
@150 = private unnamed_addr constant [8 x i8] c"Deadlock", align 1
@151 = private unnamed_addr constant [14 x i8] c"CrossesDevices", align 1
@152 = private unnamed_addr constant [12 x i8] c"TooManyLinks", align 1
@153 = private unnamed_addr constant [15 x i8] c"InvalidFilename", align 1
@154 = private unnamed_addr constant [19 x i8] c"ArgumentListTooLong", align 1
@155 = private unnamed_addr constant [11 x i8] c"Interrupted", align 1
@156 = private unnamed_addr constant [11 x i8] c"Unsupported", align 1
@157 = private unnamed_addr constant [13 x i8] c"UnexpectedEof", align 1
@158 = private unnamed_addr constant [11 x i8] c"OutOfMemory", align 1
@159 = private unnamed_addr constant [10 x i8] c"InProgress", align 1
@160 = private unnamed_addr constant [5 x i8] c"Other", align 1
@161 = private unnamed_addr constant [13 x i8] c"Uncategorized", align 1
@162 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvXsf_NtCsgO8S5jLFugx_23deltalake_catalog_unity10credentialNtBO_18AzureCliCredentialNtBO_15TokenCredential11fetch_token0EBQ_, [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNCNvXsf_NtCsgO8S5jLFugx_23deltalake_catalog_unity10credentialNtB7_18AzureCliCredentialNtB7_15TokenCredential11fetch_token0B9_ }>, align 8
@163 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvXsh_NtCsgO8S5jLFugx_23deltalake_catalog_unity10credentialNtBO_29WorkloadIdentityOAuthProviderNtBO_15TokenCredential11fetch_token0EBQ_, [16 x i8] c"\C8\05\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNCNvXsh_NtCsgO8S5jLFugx_23deltalake_catalog_unity10credentialNtB7_29WorkloadIdentityOAuthProviderNtB7_15TokenCredential11fetch_token0B9_ }>, align 8
@164 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvXsl_NtCsgO8S5jLFugx_23deltalake_catalog_unity10credentialNtBO_32ImdsManagedIdentityOAuthProviderNtBO_15TokenCredential11fetch_token0EBQ_, [16 x i8] c" \05\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNCNvXsl_NtCsgO8S5jLFugx_23deltalake_catalog_unity10credentialNtB7_32ImdsManagedIdentityOAuthProviderNtB7_15TokenCredential11fetch_token0B9_ }>, align 8
@165 = private unnamed_addr constant [40 x i8] c"description() is deprecated; use Display", align 1
@166 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 6280150360718682226 to ptr), ptr inttoptr (i64 -8958219728774140360 to ptr) }>, align 8
@167 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -1905860968145516203 to ptr), ptr inttoptr (i64 7135059723547971441 to ptr) }>, align 8
@168 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 3606165066517937345 to ptr), ptr inttoptr (i64 533280819419353543 to ptr) }>, align 8
@169 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -4069448148467762142 to ptr), ptr inttoptr (i64 7697028363475239054 to ptr) }>, align 8
@switch.table._RNvXse_NtNtCs2pqxYH9ZEk8_3std2io5errorNtB5_9ErrorKindNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt = private unnamed_addr constant [42 x i64] [i64 8, i64 16, i64 17, i64 15, i64 15, i64 18, i64 17, i64 12, i64 9, i64 16, i64 11, i64 10, i64 13, i64 10, i64 13, i64 12, i64 17, i64 18, i64 14, i64 22, i64 12, i64 11, i64 8, i64 9, i64 11, i64 11, i64 13, i64 12, i64 12, i64 18, i64 8, i64 14, i64 12, i64 15, i64 19, i64 11, i64 11, i64 13, i64 11, i64 10, i64 5, i64 13], align 8
@switch.table._RNvXse_NtNtCs2pqxYH9ZEk8_3std2io5errorNtB5_9ErrorKindNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.138 = private unnamed_addr constant [42 x ptr] [ptr @120, ptr @121, ptr @122, ptr @123, ptr @124, ptr @125, ptr @126, ptr @127, ptr @128, ptr @129, ptr @130, ptr @131, ptr @132, ptr @133, ptr @134, ptr @135, ptr @136, ptr @137, ptr @138, ptr @139, ptr @140, ptr @141, ptr @142, ptr @143, ptr @144, ptr @145, ptr @146, ptr @147, ptr @148, ptr @149, ptr @150, ptr @151, ptr @152, ptr @153, ptr @154, ptr @155, ptr @156, ptr @157, ptr @158, ptr @159, ptr @160, ptr @161], align 8

; Function Attrs: cold nonlazybind uwtable
define hidden noalias noundef nonnull ptr @_RINvMNtCsb2ODgYNwnRL_6anyhow5errorNtB5_5Error20construct_from_adhocNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc noundef nonnull ptr @_RINvMNtCsb2ODgYNwnRL_6anyhow5errorNtB5_5Error9constructINtNtB5_7wrapper12MessageErrorNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1)
  ret ptr %i.a
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noalias noundef nonnull ptr @_RINvMNtCsb2ODgYNwnRL_6anyhow5errorNtB5_5Error9constructINtNtB5_7wrapper12MessageErrorNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !3
  %i.d = tail call noundef align 8 dereferenceable_or_null(80) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 16, 1481) 80, i64 noundef 8) #24, !noalias !3 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtCsb2ODgYNwnRL_6anyhow5error9ErrorImplINtNtBJ_7wrapper12MessageErrorNtNtB4_6string6StringEEE3newCsgO8S5jLFugx_23deltalake_catalog_unity.exit, !prof !6

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 80) #25
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsb2ODgYNwnRL_6anyhow5error9ErrorImplINtNtBL_7wrapper12MessageErrorNtNtCs6Po7BT7Nknu_5alloc6string6StringEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.a) #26
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtCsb2ODgYNwnRL_6anyhow5error9ErrorImplINtNtBJ_7wrapper12MessageErrorNtNtB4_6string6StringEEE3newCsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.d, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noalias noundef nonnull ptr @_RINvMNtCsb2ODgYNwnRL_6anyhow5errorNtB5_5Error9constructNtCs5cfGYlCJjjB_13reqwest_retry10RetryErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !7
  %i.d = tail call noundef align 8 dereferenceable_or_null(80) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 16, 1481) 80, i64 noundef 8) #24, !noalias !7 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtCsb2ODgYNwnRL_6anyhow5error9ErrorImplNtCs5cfGYlCJjjB_13reqwest_retry10RetryErrorEE3newCsgO8S5jLFugx_23deltalake_catalog_unity.exit, !prof !6

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 80) #25
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsb2ODgYNwnRL_6anyhow5error9ErrorImplNtCs5cfGYlCJjjB_13reqwest_retry10RetryErrorEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.a) #26
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtCsb2ODgYNwnRL_6anyhow5error9ErrorImplNtCs5cfGYlCJjjB_13reqwest_retry10RetryErrorEE3newCsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.d, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RINvMNtCsgO6CtM78C4N_7reqwest5errorNtB3_5Error3newBx_ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, ptr noalias noundef align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [144 x i8], align 8               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = invoke { ptr, ptr } @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc5boxed7convertINtB7_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBW_6marker4SyncNtB1t_4SendEL_EINtNtBW_7convert4FromNtNtCsgO6CtM78C4N_7reqwest5error5ErrorE4fromCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 %1)
          to label %_RNvXs1_NtCsbvkFyIu7lgC_4core7convertNtNtCsgO6CtM78C4N_7reqwest5error5ErrorINtB5_4IntoINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SyncNtB2g_4SendEL_EE4intoCsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.g ; 2 uses

bb.c:                                             ; preds = %bb.a, %_RNvXs1_NtCsbvkFyIu7lgC_4core7convertNtNtCsgO6CtM78C4N_7reqwest5error5ErrorINtB5_4IntoINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SyncNtB2g_4SendEL_EE4intoCsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %.sroa.02.0 = phi ptr [ %i.x, %_RNvXs1_NtCsbvkFyIu7lgC_4core7convertNtNtCsgO6CtM78C4N_7reqwest5error5ErrorINtB5_4IntoINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SyncNtB2g_4SendEL_EE4intoCsgO8S5jLFugx_23deltalake_catalog_unity.exit ], [ null, %bb.a ]
  %.sroa.5.0 = phi ptr [ %i.y, %_RNvXs1_NtCsbvkFyIu7lgC_4core7convertNtNtCsgO6CtM78C4N_7reqwest5error5ErrorINtB5_4IntoINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SyncNtB2g_4SendEL_EE4intoCsgO8S5jLFugx_23deltalake_catalog_unity.exit ], [ undef, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store ptr %.sroa.02.0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  store ptr %.sroa.5.0, ptr %i.f, align 8
  store i64 -9223372036854775808, ptr %i.b, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !10
  %i.g = tail call noundef align 8 dereferenceable_or_null(144) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 16, 1481) 144, i64 noundef 8) #24, !noalias !10 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNtNtCsgO6CtM78C4N_7reqwest5error5InnerE3newCsgO8S5jLFugx_23deltalake_catalog_unity.exit, !prof !6

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 144) #25
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest5error5InnerECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(144) %i.b) #26
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #27
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.g, %bb.h, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.i, %bb.e ], [ %i.k, %bb.h ], [ %i.k, %bb.g ], [ %i.k, %bb.i ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNtNtCsgO6CtM78C4N_7reqwest5error5InnerE3newCsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.g, ptr noundef nonnull align 8 dereferenceable(144) %i.b, i64 144, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.g

bb.g:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13)
  %i.l = load i16, ptr %i.a, align 8, !range !16, !alias.scope !13, !noundef !17
  %i.m = icmp eq i16 %i.l, 3
  br i1 %i.m, label %bb.h, label %common.resume

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18)
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !21, !noundef !17 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %common.resume, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28)
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !noalias !31, !nonnull !17, !noundef !17
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !31, !noundef !17
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !31, !noundef !17
  invoke void %i.r(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef %i.u, i64 noundef %i.w)
          to label %common.resume unwind label %bb.j, !inline_history !32

_RNvXs1_NtCsbvkFyIu7lgC_4core7convertNtNtCsgO6CtM78C4N_7reqwest5error5ErrorINtB5_4IntoINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SyncNtB2g_4SendEL_EE4intoCsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.b
  %i.x = extractvalue { ptr, ptr } %i.c, 0
  %i.y = extractvalue { ptr, ptr } %i.c, 1
  br label %bb.c

bb.j:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #27
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RINvMNtCsgO6CtM78C4N_7reqwest5errorNtB3_5Error3newNtNtCs4j34XAPZOn0_4http5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, i8 noundef range(i8 0, 8) %1, i8 %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [144 x i8], align 8               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  %.not = icmp eq i8 %1, 7
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = invoke { ptr, ptr } @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc5boxed7convertINtB7_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBW_6marker4SyncNtB1t_4SendEL_EINtNtBW_7convert4FromNtNtCs4j34XAPZOn0_4http5error5ErrorE4fromCsgO8S5jLFugx_23deltalake_catalog_unity(i8 noundef range(i8 0, 7) %1, i8 %2)
          to label %_RNvXs1_NtCsbvkFyIu7lgC_4core7convertNtNtCs4j34XAPZOn0_4http5error5ErrorINtB5_4IntoINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SyncNtB2d_4SendEL_EE4intoCsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.g ; 2 uses

bb.c:                                             ; preds = %bb.a, %_RNvXs1_NtCsbvkFyIu7lgC_4core7convertNtNtCs4j34XAPZOn0_4http5error5ErrorINtB5_4IntoINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SyncNtB2d_4SendEL_EE4intoCsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %.sroa.03.0 = phi ptr [ %i.x, %_RNvXs1_NtCsbvkFyIu7lgC_4core7convertNtNtCs4j34XAPZOn0_4http5error5ErrorINtB5_4IntoINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SyncNtB2d_4SendEL_EE4intoCsgO8S5jLFugx_23deltalake_catalog_unity.exit ], [ null, %bb.a ]
  %.sroa.5.0 = phi ptr [ %i.y, %_RNvXs1_NtCsbvkFyIu7lgC_4core7convertNtNtCs4j34XAPZOn0_4http5error5ErrorINtB5_4IntoINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SyncNtB2d_4SendEL_EE4intoCsgO8S5jLFugx_23deltalake_catalog_unity.exit ], [ undef, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store ptr %.sroa.03.0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  store ptr %.sroa.5.0, ptr %i.f, align 8
  store i64 -9223372036854775808, ptr %i.b, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !33
  %i.g = tail call noundef align 8 dereferenceable_or_null(144) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 16, 1481) 144, i64 noundef 8) #24, !noalias !33 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNtNtCsgO6CtM78C4N_7reqwest5error5InnerE3newCsgO8S5jLFugx_23deltalake_catalog_unity.exit, !prof !6

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 144) #25
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest5error5InnerECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(144) %i.b) #26
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #27
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.g, %bb.h, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.i, %bb.e ], [ %i.k, %bb.h ], [ %i.k, %bb.g ], [ %i.k, %bb.i ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNtNtCsgO6CtM78C4N_7reqwest5error5InnerE3newCsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.g, ptr noundef nonnull align 8 dereferenceable(144) %i.b, i64 144, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.g

bb.g:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36)
  %i.l = load i16, ptr %i.a, align 8, !range !16, !alias.scope !36, !noundef !17
  %i.m = icmp eq i16 %i.l, 3
  br i1 %i.m, label %bb.h, label %common.resume

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39)
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !42, !noundef !17 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %common.resume, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49)
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !noalias !52, !nonnull !17, !noundef !17
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !52, !noundef !17
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !52, !noundef !17
  invoke void %i.r(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef %i.u, i64 noundef %i.w)
          to label %common.resume unwind label %bb.j, !inline_history !32

_RNvXs1_NtCsbvkFyIu7lgC_4core7convertNtNtCs4j34XAPZOn0_4http5error5ErrorINtB5_4IntoINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SyncNtB2d_4SendEL_EE4intoCsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.b
  %i.x = extractvalue { ptr, ptr } %i.c, 0
  %i.y = extractvalue { ptr, ptr } %i.c, 1
  br label %bb.c

bb.j:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #27
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noalias noundef nonnull align 8 ptr @_RINvMNtCsgO6CtM78C4N_7reqwest5errorNtB3_5Error3newNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, ptr noalias noundef nonnull align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [144 x i8], align 8               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  %i.c = invoke { ptr, ptr } @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc5boxed7convertINtB7_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBW_6marker4SyncNtB1t_4SendEL_EINtNtBW_7convert4FromNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorE4fromCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 %1)
          to label %_RNvXs1_NtCsbvkFyIu7lgC_4core7convertNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorINtB5_4IntoINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SyncNtB2k_4SendEL_EE4intoCsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.b ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53)
  %i.e = load i16, ptr %i.a, align 8, !range !16, !alias.scope !53, !noundef !17
  %i.f = icmp eq i16 %i.e, 3
  br i1 %i.f, label %bb.c, label %common.resume

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56)
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !59, !noundef !17 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %common.resume, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66)
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !noalias !69, !nonnull !17, !noundef !17
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !69, !noundef !17
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !69, !noundef !17
  invoke void %i.k(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef %i.n, i64 noundef %i.p)
          to label %common.resume unwind label %bb.h, !inline_history !32

_RNvXs1_NtCsbvkFyIu7lgC_4core7convertNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorINtB5_4IntoINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SyncNtB2k_4SendEL_EE4intoCsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.a
  %i.q = extractvalue { ptr, ptr } %i.c, 0
  %i.r = extractvalue { ptr, ptr } %i.c, 1
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.s, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store ptr %i.q, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  store ptr %i.r, ptr %i.u, align 8
  store i64 -9223372036854775808, ptr %i.b, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !70
  %i.v = tail call noundef align 8 dereferenceable_or_null(144) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 16, 1481) 144, i64 noundef 8) #24, !noalias !70 ; 3 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.e, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNtNtCsgO6CtM78C4N_7reqwest5error5InnerE3newCsgO8S5jLFugx_23deltalake_catalog_unity.exit, !prof !6

bb.e:                                             ; preds = %_RNvXs1_NtCsbvkFyIu7lgC_4core7convertNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorINtB5_4IntoINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SyncNtB2k_4SendEL_EE4intoCsgO8S5jLFugx_23deltalake_catalog_unity.exit
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 144) #25
          to label %.noexc6 unwind label %bb.f

.noexc6:                                          ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest5error5InnerECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(144) %i.b) #26
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #27
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.b, %bb.c, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.x, %bb.f ], [ %i.d, %bb.c ], [ %i.d, %bb.b ], [ %i.d, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNtNtCsgO6CtM78C4N_7reqwest5error5InnerE3newCsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RNvXs1_NtCsbvkFyIu7lgC_4core7convertNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorINtB5_4IntoINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SyncNtB2k_4SendEL_EE4intoCsgO8S5jLFugx_23deltalake_catalog_unity.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.v, ptr noundef nonnull align 8 dereferenceable(144) %i.b, i64 144, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.v

bb.h:                                             ; preds = %bb.d
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #27
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noalias noundef nonnull align 8 ptr @_RINvMNtCsgO6CtM78C4N_7reqwest5errorNtB3_5Error3newNtNtCsiFSAbtmCsla_16serde_urlencoded3ser5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  %i.c = alloca [144 x i8], align 8               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  %i.d = load i64, ptr %1, align 8, !range !73, !noundef !17
  %.not = icmp eq i64 %i.d, -9223372036854775806
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.e = invoke { ptr, ptr } @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc5boxed7convertINtB7_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBW_6marker4SyncNtB1t_4SendEL_EINtNtBW_7convert4FromNtNtCsiFSAbtmCsla_16serde_urlencoded3ser5ErrorE4fromCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %_RNvXs1_NtCsbvkFyIu7lgC_4core7convertNtNtCsiFSAbtmCsla_16serde_urlencoded3ser5ErrorINtB5_4IntoINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SyncNtB2o_4SendEL_EE4intoCsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.g ; 2 uses

bb.c:                                             ; preds = %bb.a, %_RNvXs1_NtCsbvkFyIu7lgC_4core7convertNtNtCsiFSAbtmCsla_16serde_urlencoded3ser5ErrorINtB5_4IntoINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SyncNtB2o_4SendEL_EE4intoCsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %.sroa.5.0 = phi ptr [ %i.aa, %_RNvXs1_NtCsbvkFyIu7lgC_4core7convertNtNtCsiFSAbtmCsla_16serde_urlencoded3ser5ErrorINtB5_4IntoINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SyncNtB2o_4SendEL_EE4intoCsgO8S5jLFugx_23deltalake_catalog_unity.exit ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.z, %_RNvXs1_NtCsbvkFyIu7lgC_4core7convertNtNtCsiFSAbtmCsla_16serde_urlencoded3ser5ErrorINtB5_4IntoINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SyncNtB2o_4SendEL_EE4intoCsgO8S5jLFugx_23deltalake_catalog_unity.exit ], [ null, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  store ptr %.sroa.0.0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  store ptr %.sroa.5.0, ptr %i.h, align 8
  store i64 -9223372036854775808, ptr %i.c, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !74
  %i.i = call noundef align 8 dereferenceable_or_null(144) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 16, 1481) 144, i64 noundef 8) #24, !noalias !74 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNtNtCsgO6CtM78C4N_7reqwest5error5InnerE3newCsgO8S5jLFugx_23deltalake_catalog_unity.exit, !prof !6

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 144) #25
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest5error5InnerECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(144) %i.c) #26
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #27
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.g, %bb.h, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.e ], [ %i.m, %bb.h ], [ %i.m, %bb.g ], [ %i.m, %bb.i ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNtNtCsgO6CtM78C4N_7reqwest5error5InnerE3newCsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.i, ptr noundef nonnull align 8 dereferenceable(144) %i.c, i64 144, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret ptr %i.i

bb.g:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !77)
  %i.n = load i16, ptr %i.b, align 8, !range !16, !alias.scope !77, !noundef !17
  %i.o = icmp eq i16 %i.n, 3
  br i1 %i.o, label %bb.h, label %common.resume

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !80)
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !83, !noundef !17 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %common.resume, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !84)
  call void @llvm.experimental.noalias.scope.decl(metadata !87)
  call void @llvm.experimental.noalias.scope.decl(metadata !90)
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !noalias !93, !nonnull !17, !noundef !17
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !93, !noundef !17
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !93, !noundef !17
  invoke void %i.t(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef %i.w, i64 noundef %i.y)
          to label %common.resume unwind label %bb.j, !inline_history !32

_RNvXs1_NtCsbvkFyIu7lgC_4core7convertNtNtCsiFSAbtmCsla_16serde_urlencoded3ser5ErrorINtB5_4IntoINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SyncNtB2o_4SendEL_EE4intoCsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.b
  %i.z = extractvalue { ptr, ptr } %i.e, 0
  %i.aa = extractvalue { ptr, ptr } %i.e, 1
  br label %bb.c

bb.j:                                             ; preds = %bb.i
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #27
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCsgO8S5jLFugx_23deltalake_catalog_unity10credentialNtB3_22WorkspaceOAuthProvider3newRNtNtCs6Po7BT7Nknu_5alloc6string6StringB1r_B1r_EB5_(ptr dead_on_unwind noalias noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.44.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull @3, ptr noundef nonnull %i.c)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %i.d) #26
          to label %common.resume unwind label %bb.h

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.c

bb.c:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #27
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.e, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.h, %bb.c ], [ %.pn, %bb.e ], [ %i.g, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %_RNvXs1_NtCsbvkFyIu7lgC_4core7convertRNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB5_4IntoBz_E4intoCsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.f

bb.e:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.k, %bb.g ], [ %i.j, %bb.f ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %i.f) #26
          to label %common.resume unwind label %bb.h

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

_RNvXs1_NtCsbvkFyIu7lgC_4core7convertRNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB5_4IntoBz_E4intoCsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
          to label %_RNvXs1_NtCsbvkFyIu7lgC_4core7convertRNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB5_4IntoBz_E4intoCsgO8S5jLFugx_23deltalake_catalog_unity.exit10 unwind label %bb.g

bb.g:                                             ; preds = %_RNvXs1_NtCsbvkFyIu7lgC_4core7convertRNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB5_4IntoBz_E4intoCsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %i.b) #26
          to label %bb.e unwind label %bb.h

_RNvXs1_NtCsbvkFyIu7lgC_4core7convertRNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB5_4IntoBz_E4intoCsgO8S5jLFugx_23deltalake_catalog_unity.exit10: ; preds = %_RNvXs1_NtCsbvkFyIu7lgC_4core7convertRNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB5_4IntoBz_E4intoCsgO8S5jLFugx_23deltalake_catalog_unity.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.h:                                             ; preds = %bb.g, %bb.e, %bb.b
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #27
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCshmPyUV8PP35_6chrono6offsetINtB3_11LocalResultNtNtB3_5fixed11FixedOffsetE8and_thenINtNtB5_8datetime8DateTimeNtNtB3_5local5LocalENCNvYB1Q_NtB3_8TimeZone19from_local_datetime0ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr dead_on_unwind noalias noundef writable writeonly sret([36 x i8]) align 4 captures(none) dereferenceable(36) %0, ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %1, ptr noalias noundef readonly align 4 captures(none) dereferenceable(12) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 4 uses
end_hunk_0
begin_hunk_1_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest10async_impl7request7RequestECsgO8S5jLFugx_23deltalake_catalog_unity:bb.a
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %i.ah, i64 noundef range(i64 1, 536870913) %i.ak) #24, !noalias !971
  br label %.body7

.body7:                                           ; preds = %bb.r, %bb.q, %bb.p, %bb.g
  %.pn4 = phi { ptr, i32 } [ %.pn2, %bb.g ], [ %i.am, %bb.r ], [ %i.af, %bb.q ], [ %i.af, %bb.p ]
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 248
  %.val6 = load ptr, ptr %i.al, align 8, !align !114, !noundef !17
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http10extensions10ExtensionsECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.val6) #26
          to label %common.resume unwind label %bb.u

bb.r:                                             ; preds = %bb.k
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %.body7

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsgO6CtM78C4N_7reqwest10async_impl4body4BodyEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.o, %bb.n, %bb.i, %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 248
  %.val = load ptr, ptr %i.an, align 8, !align !114, !noundef !17 ; 4 uses
  %i.ao = icmp eq ptr %.val, null
  br i1 %i.ao, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http10extensions10ExtensionsECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.s

bb.s:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsgO6CtM78C4N_7reqwest10async_impl4body4BodyEECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtBT_6marker4SyncNtB2H_4SendEL_EEENtNtNtBT_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBH_DNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB3h_4SendEL_EINtNtB4_4hash18BuildHasherDefaultNtB2z_8IdHasherEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i unwind label %bb.t

common.resume:                                    ; preds = %.body7, %bb.t
  %common.resume.op = phi { ptr, i32 } [ %i.ap, %bb.t ], [ %.pn4, %.body7 ]
  resume { ptr, i32 } %common.resume.op

bb.t:                                             ; preds = %bb.s
  %i.ap = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 32, i64 noundef 8) #24
  br label %common.resume

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBH_DNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB3h_4SendEL_EINtNtB4_4hash18BuildHasherDefaultNtB2z_8IdHasherEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i: ; preds = %bb.s
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 32, i64 noundef 8) #24
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http10extensions10ExtensionsECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http10extensions10ExtensionsECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsgO6CtM78C4N_7reqwest10async_impl4body4BodyEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBH_DNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB3h_4SendEL_EINtNtB4_4hash18BuildHasherDefaultNtB2z_8IdHasherEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i
  ret void

bb.u:                                             ; preds = %.body7, %bb.g, %.body
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #27
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest10async_impl8response8ResponseECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header3map9HeaderMapECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(128) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val1.i.i = load ptr, ptr %i.b, align 8, !alias.scope !979, !align !114, !noundef !17
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http10extensions10ExtensionsECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.val1.i.i) #26
          to label %.body.i unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val.i.i = load ptr, ptr %i.c, align 8, !alias.scope !979, !align !114, !noundef !17 ; 4 uses
  %i.d = icmp eq ptr %.val.i.i, null
  br i1 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http8response5PartsECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtBT_6marker4SyncNtB2H_4SendEL_EEENtNtNtBT_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val.i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBH_DNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB3h_4SendEL_EINtNtB4_4hash18BuildHasherDefaultNtB2z_8IdHasherEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef 32, i64 noundef 8) #24
  br label %.body.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBH_DNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB3h_4SendEL_EINtNtB4_4hash18BuildHasherDefaultNtB2z_8IdHasherEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i: ; preds = %bb.d
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef 32, i64 noundef 8) #24
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http8response5PartsECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i

bb.f:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #27
  unreachable

.body.i:                                          ; preds = %bb.e, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.a, %bb.b ], [ %i.e, %bb.e ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.val2.i = load ptr, ptr %i.g, align 8, !alias.scope !984
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.val3.i = load ptr, ptr %i.h, align 8, !alias.scope !984, !nonnull !17, !align !114, !noundef !17
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3eCsZ2Mx498_14http_body_util11combinators8box_body7BoxBodyNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB3g_4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.val2.i, ptr nonnull %.val3.i) #26
          to label %.body unwind label %bb.l

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http8response5PartsECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBH_DNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB3h_4SendEL_EINtNtB4_4hash18BuildHasherDefaultNtB2z_8IdHasherEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.val.i = load ptr, ptr %i.i, align 8, !alias.scope !984 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.val1.i = load ptr, ptr %i.j, align 8, !alias.scope !984, !nonnull !17, !align !114, !noundef !17 ; 5 uses
  %i.k = load ptr, ptr %.val1.i, align 8, !invariant.load !17 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http8response5PartsECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.k(ptr noundef nonnull %.val.i)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http8response5PartsECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !132, !invariant.load !17 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs4j34XAPZOn0_4http8response8ResponseINtNtNtCs3eCsZ2Mx498_14http_body_util11combinators8box_body7BoxBodyNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB3W_4SendEL_EEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !468, !invariant.load !17
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.m, i64 noundef range(i64 1, 536870913) %i.p) #24
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs4j34XAPZOn0_4http8response8ResponseINtNtNtCs3eCsZ2Mx498_14http_body_util11combinators8box_body7BoxBodyNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB3W_4SendEL_EEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.j:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !132, !invariant.load !17 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %.body, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !468, !invariant.load !17
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.s, i64 noundef range(i64 1, 536870913) %i.v) #24
  br label %.body

bb.l:                                             ; preds = %.body.i
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #27
  unreachable

.body:                                            ; preds = %.body.i, %bb.j, %bb.k
  %eh.lpad-body = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.q, %bb.j ], [ %i.q, %bb.k ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.val1 = load ptr, ptr %i.x, align 8, !nonnull !17, !noundef !17
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtCseo6ZV82fEK1_3url3UrlEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.val1) #26
          to label %common.resume unwind label %bb.q

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs4j34XAPZOn0_4http8response8ResponseINtNtNtCs3eCsZ2Mx498_14http_body_util11combinators8box_body7BoxBodyNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB3W_4SendEL_EEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.i, %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.val = load ptr, ptr %i.y, align 8, !nonnull !17, !noundef !17 ; 5 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(88) %.val)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i unwind label %bb.m

bb.m:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs4j34XAPZOn0_4http8response8ResponseINtNtNtCs3eCsZ2Mx498_14http_body_util11combinators8box_body7BoxBodyNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB3W_4SendEL_EEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(88) %.val)
          to label %bb.p unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs4j34XAPZOn0_4http8response8ResponseINtNtNtCs3eCsZ2Mx498_14http_body_util11combinators8box_body7BoxBodyNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB3W_4SendEL_EEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(88) %.val)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtCseo6ZV82fEK1_3url3UrlEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.o

bb.o:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

common.resume:                                    ; preds = %.body, %bb.p
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i2, %bb.p ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.p:                                             ; preds = %bb.o, %bb.m
  %eh.lpad-body.i2 = phi { ptr, i32 } [ %i.ab, %bb.o ], [ %i.z, %bb.m ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 88, i64 noundef 8) #24
  br label %common.resume

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtCseo6ZV82fEK1_3url3UrlEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 88, i64 noundef 8) #24
  ret void

bb.q:                                             ; preds = %.body
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #27
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RINvNtCsgO6CtM78C4N_7reqwest5error6decodeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtB1h_6marker4SyncNtB1O_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [144 x i8], align 8               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !985
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i16 5, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store ptr %0, ptr %i.c, align 8, !noalias !985
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store ptr %1, ptr %i.d, align 8, !noalias !985
  store i64 -9223372036854775808, ptr %i.a, align 8, !noalias !985
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !988
  %i.e = tail call noundef align 8 dereferenceable_or_null(144) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 16, 1481) 144, i64 noundef 8) #24, !noalias !988 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %_RINvMNtCsgO6CtM78C4N_7reqwest5errorNtB3_5Error3newINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtB1q_6marker4SyncNtB1X_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit, !prof !6

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 144) #25
          to label %.noexc7.i unwind label %bb.c, !noalias !985

.noexc7.i:                                        ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest5error5InnerECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(144) %i.a) #26
          to label %bb.e unwind label %bb.d, !noalias !985

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #27, !noalias !985
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.g

_RINvMNtCsgO6CtM78C4N_7reqwest5errorNtB3_5Error3newINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtB1q_6marker4SyncNtB1X_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.e, ptr noundef nonnull align 8 dereferenceable(144) %i.a, i64 144, i1 false), !noalias !985
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !985
  ret ptr %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RINvNtCsgO6CtM78C4N_7reqwest5error6decodeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 5, ptr %i.a, align 8
  %i.b = call fastcc noundef nonnull align 8 ptr @_RINvMNtCsgO6CtM78C4N_7reqwest5errorNtB3_5Error3newNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %i.a, ptr noalias noundef align 8 %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, ptr } @_RINvNtCsgO8S5jLFugx_23deltalake_catalog_unity10credential17expires_in_stringQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtB1i_4read9SliceReadEEB4_(ptr noalias noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer18deserialize_stringNtNtB1l_5impls13StringVisitorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(64) %0)
  %i.c = load i64, ptr %i.a, align 8, !range !258, !noundef !17 ; 2 uses
  %i.d = icmp eq i64 %i.c, -9223372036854775808
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 5 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %.sroa.611.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.611.0.copyload = load i64, ptr %.sroa.611.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.c, ptr %i.b, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.f, ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.611.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  switch i64 %.sroa.611.0.copyload, label %thread-pre-split.i [
    i64 0, label %.loopexit
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.g = load i8, ptr %i.f, align 1, !alias.scope !991, !noalias !994, !noundef !17 ; 2 uses
  switch i8 %i.g, label %bb.e [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

thread-pre-split.i:                               ; preds = %bb.c
  %.pr.i = load i8, ptr %i.f, align 1, !alias.scope !991, !noalias !994
  br label %bb.e

bb.e:                                             ; preds = %thread-pre-split.i, %bb.d
  %i.h = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.g, %bb.d ]
  %cond.i = icmp eq i8 %i.h, 43                   ; 2 uses
  %i.i = sext i1 %cond.i to i64
  %.sroa.15.0.i = add nsw i64 %.sroa.611.0.copyload, %i.i ; 4 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.0.0.idx.i ; 2 uses
  %i.j = icmp samesign ult i64 %.sroa.15.0.i, 17
  br i1 %i.j, label %.preheader.i, label %.preheader56.i.preheader

.preheader.i:                                     ; preds = %bb.e
  %.not5366.i = icmp eq i64 %.sroa.15.0.i, 0
  br i1 %.not5366.i, label %_RNvMsD_NtCsbvkFyIu7lgC_4core3numy16from_ascii_radix.exit, label %.lr.ph.i

.preheader56.i:                                   ; preds = %bb.h
  %.not52.i = icmp eq i64 %i.l, 0
  br i1 %.not52.i, label %_RNvMsD_NtCsbvkFyIu7lgC_4core3numy16from_ascii_radix.exit, label %.preheader56.i.preheader

.preheader56.i.preheader:                         ; preds = %bb.e, %.preheader56.i
  %.sroa.0.1.i51 = phi ptr [ %i.k, %.preheader56.i ], [ %.sroa.0.0.i, %bb.e ] ; 2 uses
  %.sroa.15.1.i50 = phi i64 [ %i.l, %.preheader56.i ], [ %.sroa.15.0.i, %bb.e ]
  %.sroa.042.0.i49 = phi i64 [ %i.w, %.preheader56.i ], [ 0, %bb.e ]
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i51, i64 1
  %i.l = add nsw i64 %.sroa.15.1.i50, -1          ; 2 uses
  %i.m = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i49, i64 10) ; 2 uses
  %i.n = extractvalue { i64, i1 } %i.m, 0         ; 2 uses
  %i.o = extractvalue { i64, i1 } %i.m, 1
  %i.p = load i8, ptr %.sroa.0.1.i51, align 1, !alias.scope !991, !noalias !994, !noundef !17 ; 2 uses
  br i1 %i.o, label %bb.g, label %bb.f, !prof !6

bb.f:                                             ; preds = %.preheader56.i.preheader
  %i.q = zext i8 %i.p to i32
  %i.r = add nsw i32 %i.q, -48                    ; 2 uses
  %i.s = icmp ult i32 %i.r, 10
  br i1 %i.s, label %bb.h, label %.loopexit

bb.g:                                             ; preds = %.preheader56.i.preheader
  %i.t = add i8 %i.p, -48
  %i.u = icmp ult i8 %i.t, 10
  %spec.select = select i1 %i.u, i8 2, i8 1
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  %i.v = zext nneg i32 %i.r to i64
  %i.w = add i64 %i.n, %i.v                       ; 3 uses
  %i.x = icmp ult i64 %i.w, %i.n
  br i1 %i.x, label %.loopexit, label %.preheader56.i, !prof !6

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.i
  %.sroa.0.269.i = phi ptr [ %i.ae, %bb.i ], [ %.sroa.0.0.i, %.preheader.i ] ; 2 uses
  %.sroa.15.268.i = phi i64 [ %i.ad, %bb.i ], [ %.sroa.15.0.i, %.preheader.i ]
  %.sroa.042.267.i = phi i64 [ %i.ag, %bb.i ], [ 0, %.preheader.i ]
  %i.y = load i8, ptr %.sroa.0.269.i, align 1, !alias.scope !991, !noalias !994, !noundef !17
  %i.z = zext i8 %i.y to i32
  %i.aa = add nsw i32 %i.z, -48                   ; 2 uses
  %i.ab = icmp ult i32 %i.aa, 10
  br i1 %i.ab, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %.lr.ph.i
  %i.ac = mul i64 %.sroa.042.267.i, 10
  %i.ad = add nsw i64 %.sroa.15.268.i, -1         ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i, i64 1
  %i.af = zext nneg i32 %i.aa to i64
  %i.ag = add i64 %i.ac, %i.af                    ; 2 uses
  %.not53.i = icmp eq i64 %i.ad, 0
  br i1 %.not53.i, label %_RNvMsD_NtCsbvkFyIu7lgC_4core3numy16from_ascii_radix.exit, label %.lr.ph.i

bb.j:                                             ; preds = %.loopexit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %i.b) #26
          to label %common.resume unwind label %bb.o

.loopexit:                                        ; preds = %bb.f, %bb.h, %.lr.ph.i, %bb.g, %bb.d, %bb.d, %bb.c
  %.sroa.4.016.ph = phi i8 [ 1, %bb.d ], [ %spec.select, %bb.g ], [ 1, %bb.d ], [ 0, %bb.c ], [ 1, %.lr.ph.i ], [ 1, %bb.f ], [ 2, %bb.h ]
  %i.ai = invoke noundef nonnull align 8 ptr @_RINvXs6_NtCseqDwI8vvjGQ_10serde_json5errorNtB6_5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error6customNtNtNtCsbvkFyIu7lgC_4core3num5error13ParseIntErrorECsgO8S5jLFugx_23deltalake_catalog_unity(i8 noundef %.sroa.4.016.ph)
          to label %bb.k unwind label %bb.j

_RNvMsD_NtCsbvkFyIu7lgC_4core3numy16from_ascii_radix.exit: ; preds = %.preheader56.i, %bb.i, %.preheader.i
  %.sroa.1115.0 = phi i64 [ %i.ag, %bb.i ], [ 0, %.preheader.i ], [ %i.w, %.preheader56.i ]
  %i.aj = inttoptr i64 %.sroa.1115.0 to ptr
  br label %bb.k

bb.k:                                             ; preds = %.loopexit, %_RNvMsD_NtCsbvkFyIu7lgC_4core3numy16from_ascii_radix.exit
  %.sroa.4.0 = phi ptr [ %i.aj, %_RNvMsD_NtCsbvkFyIu7lgC_4core3numy16from_ascii_radix.exit ], [ %i.ai, %.loopexit ]
  %.sroa.0.0 = phi i64 [ 0, %_RNvMsD_NtCsbvkFyIu7lgC_4core3numy16from_ascii_radix.exit ], [ 1, %.loopexit ]
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #27
  unreachable

common.resume:                                    ; preds = %bb.j, %bb.l
  %common.resume.op = phi { ptr, i32 } [ %i.ak, %bb.l ], [ %i.ah, %bb.j ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.k
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %bb.n

bb.n:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit, %bb.b
  %.sroa.4.1 = phi ptr [ %i.f, %bb.b ], [ %.sroa.4.0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit ]
  %.sroa.0.1 = phi i64 [ 1, %bb.b ], [ %.sroa.0.0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.am = insertvalue { i64, ptr } poison, i64 %.sroa.0.1, 0
  %i.an = insertvalue { i64, ptr } %i.am, ptr %.sroa.4.1, 1
  ret { i64, ptr } %i.an

bb.o:                                             ; preds = %bb.j
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #27
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNvMs_NtCsee2lL6QbnsJ_15crossbeam_epoch8deferredNtB7_8Deferred3new4callNCINvMNtB9_5guardNtB1g_5Guard15defer_uncheckedNCINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB34_6string6StringEINtNtNtNtB25_6common10concurrent3arc7MiniArcINtB3Z_10ValueEntryB3x_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE0uE0EB53_(ptr noundef readonly captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 6 uses
  %i.c = load i64, ptr %0, align 8, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.c, ptr %i.b, align 8
  fence acquire
  %i.d = load i64, ptr %i.b, align 8, !noundef !17 ; 2 uses
  %i.e = and i64 %i.d, 2
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %_RNCINvMNtCsee2lL6QbnsJ_15crossbeam_epoch5guardNtB5_5Guard15defer_uncheckedNCINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB2k_6string6StringEINtNtNtNtB1l_6common10concurrent3arc7MiniArcINtB3f_10ValueEntryB2N_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE0uE0B4j_.exit

bb.b:                                             ; preds = %bb.a
  %i.g = call noundef nonnull align 8 ptr @_RNvMsz_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_6SharedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1P_6string6StringEINtNtNtNtB15_6common10concurrent3arc7MiniArcINtB2K_10ValueEntryB2i_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEE9deref_mutB3O_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @_RNvXs4_NtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arcINtB5_7MiniArcINtB7_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB23_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.h)
  %.pre.i.i = load i64, ptr %i.b, align 8
  br label %_RNCINvMNtCsee2lL6QbnsJ_15crossbeam_epoch5guardNtB5_5Guard15defer_uncheckedNCINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB2k_6string6StringEINtNtNtNtB1l_6common10concurrent3arc7MiniArcINtB3f_10ValueEntryB2N_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE0uE0B4j_.exit

_RNCINvMNtCsee2lL6QbnsJ_15crossbeam_epoch5guardNtB5_5Guard15defer_uncheckedNCINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB2k_6string6StringEINtNtNtNtB1l_6common10concurrent3arc7MiniArcINtB3f_10ValueEntryB2N_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE0uE0B4j_.exit: ; preds = %bb.a, %bb.b
  %i.i = phi i64 [ %i.d, %bb.a ], [ %.pre.i.i, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
end_hunk_1
begin_hunk_2_@_RINvXs4_NtNtCs1gOyXocuPRE_10serde_core2de5implsNtB6_13StringVisitorNtB8_7Visitor9visit_strNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity:bb.a
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  store i64 %i.e, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 8
  ret void

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull align 1 %1, i64 %2, i1 false)
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef align 8 ptr @_RINvYINtNtCseqDwI8vvjGQ_10serde_json3ser8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser12SerializeMap15serialize_entryeNtNtBR_6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %3) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1011)
  %i.a = load i8, ptr %0, align 8, !range !1014, !alias.scope !1011, !noalias !1015, !noundef !17
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #30, !noalias !1017
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !1011, !noalias !1015, !nonnull !17, !align !114, !noundef !17 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !range !326, !alias.scope !1011, !noalias !1015, !noundef !17
  %i.g = icmp eq i8 %i.f, 1
  br i1 %i.g, label %_RINvXs6_NtCseqDwI8vvjGQ_10serde_json3serINtB6_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser12SerializeMap15serialize_valueNtNtBX_6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val.i = load ptr, ptr %i.d, align 8, !noalias !1017, !nonnull !17, !noundef !17
  tail call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @45, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !1017
  br label %_RINvXs6_NtCseqDwI8vvjGQ_10serde_json3serINtB6_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser12SerializeMap15serialize_valueNtNtBX_6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvXs6_NtCseqDwI8vvjGQ_10serde_json3serINtB6_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser12SerializeMap15serialize_valueNtNtBX_6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.d, %bb.c
  store i8 2, ptr %i.e, align 1, !alias.scope !1011, !noalias !1015
  %.val8.i = load ptr, ptr %i.d, align 8, !noalias !1017, !nonnull !17, !align !114, !noundef !17
  tail call fastcc void @_RNvXs1_NtCseqDwI8vvjGQ_10serde_json3serQINtB5_10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer13serialize_strCsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.val8.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) #28
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val4 = load ptr, ptr %i.h, align 8            ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.val5 = load i64, ptr %i.i, align 8
  %.val.i6 = load ptr, ptr %i.d, align 8, !nonnull !17, !align !114, !noundef !17
  tail call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i6, ptr noalias noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef range(i64 0, -9223372036854775808) 1)
  %.val10.i = load ptr, ptr %i.d, align 8, !nonnull !17, !align !114, !noundef !17
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4) ]
  tail call fastcc void @_RNvXs1_NtCseqDwI8vvjGQ_10serde_json3serQINtB5_10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer13serialize_strCsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.val10.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val4, i64 noundef %.val5) #28
  ret ptr null
}

; Function Attrs: cold nonlazybind uwtable
define hidden { i64, ptr } @_RINvYNtNvXs19_NtNtCs1gOyXocuPRE_10serde_core2de5implsyNtBe_11Deserialize11deserialize16PrimitiveVisitorNtBe_7Visitor9visit_f64NtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity(double noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store double %0, ptr %i.c, align 8
  store i8 3, ptr %i.b, align 8
  %i.d = call noundef nonnull align 8 ptr @_RNvXs6_NtCseqDwI8vvjGQ_10serde_json5errorNtB5_5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error12invalid_type(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @47)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.e = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %i.d, 1
  ret { i64, ptr } %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtB5_8Response4jsonNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models18TokenErrorResponseE0B1d_(ptr dead_on_unwind noalias noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %.sroa.625 = alloca [56 x i8], align 8          ; 2 uses
  %i.b = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.517 = alloca [16 x i8], align 8          ; 2 uses
  %i.c = alloca [40 x i8], align 8                ; 9 uses
  %i.d = alloca [32 x i8], align 8                ; 12 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 3 uses
  %i.f = load i8, ptr %i.e, align 8, !range !441, !noundef !17
  switch i8 %i.f, label %default.unreachable30 [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.b
  ]

default.unreachable30:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 136
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.g, ptr noundef nonnull align 8 dereferenceable(136) %1, i64 136, i1 false)
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 552
  store i8 0, ptr %.sroa.8.0..sroa_idx, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #30
  unreachable

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #30
  unreachable

bb.f:                                             ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 3 uses
  invoke fastcc void @_RNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtB4_8Response5bytes0CsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.c, ptr noundef nonnull align 8 %i.h, ptr noalias noundef align 8 dereferenceable(32) %2)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBL_8Response5bytes0ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %i.h) #26
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.s

bb.h:                                             ; preds = %bb.f
  %i.j = load i64, ptr %i.c, align 8, !range !122, !noundef !17
  %i.k = trunc nuw i64 %i.j to i1
  br i1 %i.k, label %bb.i, label %bb.j

common.ret:                                       ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECsgO8S5jLFugx_23deltalake_catalog_unity.exit9, %bb.i
  %storemerge = phi i8 [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECsgO8S5jLFugx_23deltalake_catalog_unity.exit9 ], [ 3, %bb.i ]
  store i8 %storemerge, ptr %i.e, align 8
  ret void

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 -9223372036854775807, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %common.ret

bb.j:                                             ; preds = %bb.h
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.016.0.copyload = load ptr, ptr %i.l, align 8 ; 3 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8 ; 5 uses
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.517, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.517.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBL_8Response5bytes0ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %i.h)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.l:                                             ; preds = %bb.j
  %i.n = icmp eq ptr %.sroa.016.0.copyload, null
  br i1 %i.n, label %bb.t, label %bb.n

bb.m:                                             ; preds = %bb.p, %bb.n
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.experimental.noalias.scope.decl(metadata !1018)
  call void @llvm.experimental.noalias.scope.decl(metadata !1021)
  %i.p = load ptr, ptr %i.d, align 8, !alias.scope !1024, !nonnull !17, !align !114, !noundef !17
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !noalias !1024, !nonnull !17, !noundef !17
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.t = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !1024, !noundef !17
  %i.u = load i64, ptr %.sroa.519.0..sroa_idx, align 8, !alias.scope !1024, !noundef !17
  invoke void %i.r(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef %i.t, i64 noundef %i.u)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.s, !inline_history !852

bb.n:                                             ; preds = %bb.l
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.519.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.517, i64 16, i1 false)
  store ptr %.sroa.016.0.copyload, ptr %i.d, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr %.sroa.3.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.val7 = load i64, ptr %.sroa.519.0..sroa_idx, align 8, !noundef !17 ; 2 uses
  invoke void @_RINvNtCseqDwI8vvjGQ_10serde_json2de10from_sliceNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models18TokenErrorResponseEBN_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.3.0.copyload, i64 noundef %.val7)
          to label %bb.o unwind label %bb.m

bb.o:                                             ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !1025)
  call void @llvm.experimental.noalias.scope.decl(metadata !1028)
  %i.v = load i64, ptr %i.b, align 8, !range !258, !alias.scope !1028, !noalias !1025, !noundef !17 ; 2 uses
  %i.w = icmp eq i64 %i.v, -9223372036854775808
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !1030 ; 2 uses
  br i1 %i.w, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1031
  store i16 5, ptr %i.a, align 8, !noalias !1031
  %i.z = invoke fastcc noalias noundef nonnull align 8 ptr @_RINvMNtCsgO6CtM78C4N_7reqwest5errorNtB3_5Error3newNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %i.a, ptr noalias noundef nonnull align 8 %i.y)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1031
  %.pre = load ptr, ptr %i.d, align 8, !alias.scope !1036
  %.pre28 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !1036
  %.pre29 = load i64, ptr %.sroa.519.0..sroa_idx, align 8, !alias.scope !1036
  br label %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models18TokenErrorResponseNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorE7map_errNtNtCsgO6CtM78C4N_7reqwest5error5ErrorINvB2H_6decodeB1Q_EEBM_.exit

bb.q:                                             ; preds = %bb.o
  %.sroa.625.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.625, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.625.0..sroa_idx26, i64 56, i1 false), !alias.scope !1041
  br label %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models18TokenErrorResponseNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorE7map_errNtNtCsgO6CtM78C4N_7reqwest5error5ErrorINvB2H_6decodeB1Q_EEBM_.exit

_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models18TokenErrorResponseNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorE7map_errNtNtCsgO6CtM78C4N_7reqwest5error5ErrorINvB2H_6decodeB1Q_EEBM_.exit: ; preds = %bb.q, %.noexc
  %i.aa = phi i64 [ %.pre29, %.noexc ], [ %.val7, %bb.q ]
  %i.ab = phi ptr [ %.pre28, %.noexc ], [ %.sroa.3.0.copyload, %bb.q ]
  %i.ac = phi ptr [ %.pre, %.noexc ], [ %.sroa.016.0.copyload, %bb.q ]
  %.sroa.422.1 = phi ptr [ %i.z, %.noexc ], [ %i.y, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.experimental.noalias.scope.decl(metadata !1042)
  call void @llvm.experimental.noalias.scope.decl(metadata !1043)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !noalias !1036, !nonnull !17, !noundef !17
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  invoke void %i.ae(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef %i.ab, i64 noundef %i.aa)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECsgO8S5jLFugx_23deltalake_catalog_unity.exit9 unwind label %bb.r, !inline_history !852

bb.r:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models18TokenErrorResponseNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorE7map_errNtNtCsgO6CtM78C4N_7reqwest5error5ErrorINvB2H_6decodeB1Q_EEBM_.exit
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECsgO8S5jLFugx_23deltalake_catalog_unity.exit9: ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models18TokenErrorResponseNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorE7map_errNtNtCsgO6CtM78C4N_7reqwest5error5ErrorINvB2H_6decodeB1Q_EEBM_.exit, %bb.t
  %.sroa.020.0 = phi i64 [ -9223372036854775808, %bb.t ], [ %i.v, %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models18TokenErrorResponseNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorE7map_errNtNtCsgO6CtM78C4N_7reqwest5error5ErrorINvB2H_6decodeB1Q_EEBM_.exit ]
  %.sroa.422.0 = phi ptr [ %.sroa.3.0.copyload, %bb.t ], [ %.sroa.422.1, %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models18TokenErrorResponseNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorE7map_errNtNtCsgO6CtM78C4N_7reqwest5error5ErrorINvB2H_6decodeB1Q_EEBM_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 %.sroa.020.0, ptr %0, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.422.0, ptr %.sroa.422.0..sroa_idx, align 8
  %.sroa.625.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.625.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.625, i64 56, i1 false)
  br label %common.ret

bb.s:                                             ; preds = %bb.m, %bb.g
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.k, %bb.g, %bb.r, %bb.m
  %.pn4.pn = phi { ptr, i32 } [ %i.o, %bb.m ], [ %i.ag, %bb.r ], [ %i.m, %bb.k ], [ %i.i, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i8 2, ptr %i.e, align 8
  resume { ptr, i32 } %.pn4.pn

bb.t:                                             ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload) ]
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECsgO8S5jLFugx_23deltalake_catalog_unity.exit9
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvNtCsgO8S5jLFugx_23deltalake_catalog_unity10credential14non200_or_jsonNtB4_13TokenResponseE0B6_(ptr dead_on_unwind noalias noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %.sroa.625.i = alloca [16 x i8], align 8        ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %.sroa.517.i = alloca [16 x i8], align 8        ; 7 uses
  %i.c = alloca [40 x i8], align 8                ; 9 uses
  %i.d = alloca [32 x i8], align 8                ; 13 uses
  %.sroa.11 = alloca [16 x i8], align 8           ; 3 uses
  %.sroa.1259 = alloca [32 x i8], align 8         ; 2 uses
  %.sroa.652 = alloca [16 x i8], align 8          ; 2 uses
  %.sroa.948 = alloca [16 x i8], align 8          ; 8 uses
  %.sroa.527.sroa.2 = alloca [16 x i8], align 8   ; 2 uses
  %.sroa.527.sroa.3 = alloca [32 x i8], align 8   ; 2 uses
  %i.e = alloca [72 x i8], align 8                ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 3 uses
  %i.g = load i8, ptr %i.f, align 8, !range !861, !noundef !17
  switch i8 %i.g, label %default.unreachable74 [
    i8 0, label %bb.b
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.g
    i8 4, label %bb.r
  ]

default.unreachable74:                            ; preds = %bb.r, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 273 ; 2 uses
  store i8 1, ptr %i.h, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 136
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.i, ptr noundef nonnull align 8 dereferenceable(136) %1, i64 136, i1 false)
  %i.j = getelementptr i8, ptr %1, i64 240
  %.val = load i16, ptr %i.j, align 8, !range !1044, !noundef !17
  %i.k = add i16 %.val, -200
  %spec.select.i.i = icmp ult i16 %i.k, 100
  store i8 0, ptr %i.h, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 280
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.l, ptr noundef nonnull align 8 dereferenceable(136) %1, i64 136, i1 false)
  %.sroa.844.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 840
  store i8 0, ptr %.sroa.844.0..sroa_idx, align 8
  br i1 %spec.select.i.i, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.948)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 280
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.625.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.517.i)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 840
  br label %bb.t

bb.c:                                             ; preds = %.body, %bb.f, %bb.m
  %.pn8.pn = phi { ptr, i32 } [ %i.r, %bb.f ], [ %i.y, %bb.m ], [ %eh.lpad-body, %.body ]
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 273 ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !range !1014, !noundef !17
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.ao, label %bb.an

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51) #30
  unreachable

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51) #30
  unreachable

bb.f:                                             ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBM_8Response4jsonNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models18TokenErrorResponseE0EB1U_(ptr noundef nonnull align 8 %i.s) #26
          to label %bb.c unwind label %bb.p

bb.g:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 3 uses
  invoke fastcc void @_RNCINvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtB5_8Response4jsonNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models18TokenErrorResponseE0B1d_(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.e, ptr noundef nonnull align 8 %i.s, ptr noalias noundef align 8 dereferenceable(32) %2)
          to label %bb.h unwind label %bb.f

bb.h:                                             ; preds = %bb.g
  %i.t = load i64, ptr %i.e, align 8, !range !702, !noundef !17 ; 3 uses
  %i.u = icmp eq i64 %i.t, -9223372036854775807
  br i1 %i.u, label %bb.i, label %bb.j

common.ret:                                       ; preds = %bb.am, %bb.aj, %bb.i
  %.sink = phi i8 [ 1, %bb.am ], [ 4, %bb.aj ], [ 3, %bb.i ]
  store i8 %.sink, ptr %i.f, align 8
  ret void

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i64 -9223372036854775794, ptr %0, align 8
  br label %common.ret

bb.j:                                             ; preds = %bb.h
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8 ; 2 uses
  %.sroa.527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.527.sroa.0.0.copyload = load ptr, ptr %.sroa.527.0..sroa_idx, align 8
  %.sroa.527.sroa.2.0..sroa.527.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.527.sroa.2, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.527.sroa.2.0..sroa.527.0..sroa_idx.sroa_idx, i64 16, i1 false)
  %.sroa.527.sroa.3.0..sroa.527.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.527.sroa.3, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.527.sroa.3.0..sroa.527.0..sroa_idx.sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 840
  %i.w = load i8, ptr %i.v, align 8, !range !441, !noundef !17
  switch i8 %i.w, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBM_8Response4jsonNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models18TokenErrorResponseE0EB1U_.exit [
    i8 0, label %bb.k
    i8 3, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest10async_impl8response8ResponseECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(136) %i.s)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBM_8Response4jsonNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models18TokenErrorResponseE0EB1U_.exit unwind label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 416
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBL_8Response5bytes0ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %i.x)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBM_8Response4jsonNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models18TokenErrorResponseE0EB1U_.exit unwind label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBM_8Response4jsonNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models18TokenErrorResponseE0EB1U_.exit: ; preds = %bb.j, %bb.k, %bb.l
  %i.z = icmp eq i64 %i.t, -9223372036854775808
  br i1 %i.z, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBM_8Response4jsonNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models18TokenErrorResponseE0EB1U_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.527.sroa.2, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.1259, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.527.sroa.3, i64 32, i1 false)
  %i.aa = ptrtoint ptr %.sroa.3.0.copyload to i64
  br label %bb.am

bb.o:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBM_8Response4jsonNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models18TokenErrorResponseE0EB1U_.exit, %bb.ak, %.thread65
  %.sroa.422.0.i69.sink = phi ptr [ %.sroa.422.1.i, %bb.ak ], [ %.sroa.3.0.copyload.i, %.thread65 ], [ %.sroa.3.0.copyload, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBM_8Response4jsonNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models18TokenErrorResponseE0EB1U_.exit ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.422.0.i69.sink) ]
  %.sroa.557.1 = ptrtoint ptr %.sroa.422.0.i69.sink to i64
  br label %bb.am

bb.p:                                             ; preds = %bb.ao, %.body, %bb.f
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.q:                                             ; preds = %bb.v, %bb.u
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, %bb.q
  %i.ad = phi ptr [ %i.ae, %bb.q ], [ %i.ak, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.ac, %bb.q ], [ %.pn4.pn.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.948)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBM_8Response4jsonNtNtCsgO8S5jLFugx_23deltalake_catalog_unity10credential13TokenResponseE0EB1U_(ptr noundef nonnull align 8 %i.ad) #26
          to label %bb.c unwind label %bb.p

bb.r:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 840
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !range !441, !noalias !1045
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.948)
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.625.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.517.i)
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 840 ; 2 uses
  switch i8 %.pre, label %default.unreachable74 [
    i8 0, label %bb.t
    i8 1, label %bb.u
    i8 2, label %bb.v
    i8 3, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1045
  br label %bb.w

bb.t:                                             ; preds = %.thread, %bb.r
  %i.ag = phi ptr [ %i.n, %.thread ], [ %i.af, %bb.r ]
  %i.ah = phi ptr [ %i.m, %.thread ], [ %i.ae, %bb.r ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1045
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 416
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.ai, ptr noundef nonnull align 8 dereferenceable(136) %i.ah, i64 136, i1 false), !noalias !1045
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 832
  store i8 0, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !1045
  br label %bb.w

bb.u:                                             ; preds = %bb.r
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #30
          to label %.noexc14 unwind label %bb.q

.noexc14:                                         ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %bb.r
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #30
          to label %.noexc15 unwind label %bb.q

.noexc15:                                         ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.t, %bb.s
  %i.aj = phi ptr [ %i.ag, %bb.t ], [ %i.af, %bb.s ] ; 4 uses
  %i.ak = phi ptr [ %i.ah, %bb.t ], [ %i.ae, %bb.s ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1045
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 416 ; 3 uses
  invoke fastcc void @_RNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtB4_8Response5bytes0CsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.c, ptr noundef nonnull align 8 %i.al, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.y unwind label %bb.x, !noalias !1049

bb.x:                                             ; preds = %bb.w
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1045
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBL_8Response5bytes0ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %i.al) #26
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i unwind label %bb.ai, !noalias !1049

bb.y:                                             ; preds = %bb.w
  %i.an = load i64, ptr %i.c, align 8, !range !122, !noalias !1045, !noundef !17
  %i.ao = trunc nuw i64 %i.an to i1
  br i1 %i.ao, label %bb.aj, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.016.0.copyload.i = load ptr, ptr %i.ap, align 8, !noalias !1045 ; 3 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.3.0.copyload.i = load ptr, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !1045 ; 5 uses
  %.sroa.517.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.517.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.517.0..sroa_idx.i, i64 16, i1 false), !noalias !1045
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1045
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBL_8Response5bytes0ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %i.al)
          to label %bb.ab unwind label %bb.aa, !noalias !1049

bb.aa:                                            ; preds = %bb.z
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i

bb.ab:                                            ; preds = %bb.z
  %i.ar = icmp eq ptr %.sroa.016.0.copyload.i, null
  br i1 %i.ar, label %.thread65, label %bb.ad

bb.ac:                                            ; preds = %bb.af, %bb.ad
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1045
  call void @llvm.experimental.noalias.scope.decl(metadata !1050)
  call void @llvm.experimental.noalias.scope.decl(metadata !1053)
  %i.at = load ptr, ptr %i.d, align 8, !alias.scope !1056, !noalias !1045, !nonnull !17, !align !114, !noundef !17
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !noalias !1057, !nonnull !17, !noundef !17
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ax = load ptr, ptr %.sroa.4.0..sroa_idx.i13, align 8, !alias.scope !1056, !noalias !1045, !noundef !17
  %i.ay = load i64, ptr %.sroa.519.0..sroa_idx.i, align 8, !alias.scope !1056, !noalias !1045, !noundef !17
  invoke void %i.av(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef %i.ax, i64 noundef %i.ay)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i unwind label %bb.ai, !noalias !1049, !inline_history !852

bb.ad:                                            ; preds = %bb.ab
  %.sroa.519.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.519.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.517.i, i64 16, i1 false), !noalias !1045
  store ptr %.sroa.016.0.copyload.i, ptr %i.d, align 8, !noalias !1045
  %.sroa.4.0..sroa_idx.i13 = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr %.sroa.3.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i13, align 8, !noalias !1045
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1045
  %.val7.i = load i64, ptr %.sroa.519.0..sroa_idx.i, align 8, !noalias !1045, !noundef !17 ; 2 uses
  invoke void @_RINvNtCseqDwI8vvjGQ_10serde_json2de10from_sliceNtNtCsgO8S5jLFugx_23deltalake_catalog_unity10credential13TokenResponseEBN_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.3.0.copyload.i, i64 noundef %.val7.i)
          to label %bb.ae unwind label %bb.ac, !noalias !1049

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.experimental.noalias.scope.decl(metadata !1058)
  call void @llvm.experimental.noalias.scope.decl(metadata !1061)
  %i.az = load i64, ptr %i.b, align 8, !range !258, !alias.scope !1061, !noalias !1063, !noundef !17 ; 2 uses
  %i.ba = icmp eq i64 %i.az, -9223372036854775808 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !alias.scope !1064, !noalias !1045 ; 2 uses
  br i1 %i.ba, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1065
  store i16 5, ptr %i.a, align 8, !noalias !1065
  %i.bd = invoke fastcc noalias noundef nonnull align 8 ptr @_RINvMNtCsgO6CtM78C4N_7reqwest5errorNtB3_5Error3newNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %i.a, ptr noalias noundef nonnull align 8 %i.bc)
          to label %.noexc.i unwind label %bb.ac, !noalias !1049

.noexc.i:                                         ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1065
  %.pre.i = load ptr, ptr %i.d, align 8, !alias.scope !1070, !noalias !1045
  %.pre28.i = load ptr, ptr %.sroa.4.0..sroa_idx.i13, align 8, !alias.scope !1070, !noalias !1045
  %.pre29.i = load i64, ptr %.sroa.519.0..sroa_idx.i, align 8, !alias.scope !1070, !noalias !1045
  br label %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultNtNtCsgO8S5jLFugx_23deltalake_catalog_unity10credential13TokenResponseNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorE7map_errNtNtCsgO6CtM78C4N_7reqwest5error5ErrorINvB2H_6decodeB1Q_EEBM_.exit.i

bb.ag:                                            ; preds = %bb.ae
  %.sroa.625.0..sroa_idx26.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.625.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.625.0..sroa_idx26.i, i64 16, i1 false), !alias.scope !1075, !noalias !1045
  br label %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultNtNtCsgO8S5jLFugx_23deltalake_catalog_unity10credential13TokenResponseNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorE7map_errNtNtCsgO6CtM78C4N_7reqwest5error5ErrorINvB2H_6decodeB1Q_EEBM_.exit.i

_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultNtNtCsgO8S5jLFugx_23deltalake_catalog_unity10credential13TokenResponseNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorE7map_errNtNtCsgO6CtM78C4N_7reqwest5error5ErrorINvB2H_6decodeB1Q_EEBM_.exit.i: ; preds = %bb.ag, %.noexc.i
  %i.be = phi i64 [ %.pre29.i, %.noexc.i ], [ %.val7.i, %bb.ag ]
  %i.bf = phi ptr [ %.pre28.i, %.noexc.i ], [ %.sroa.3.0.copyload.i, %bb.ag ]
  %i.bg = phi ptr [ %.pre.i, %.noexc.i ], [ %.sroa.016.0.copyload.i, %bb.ag ]
  %.sroa.422.1.i = phi ptr [ %i.bd, %.noexc.i ], [ %i.bc, %bb.ag ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1045
  call void @llvm.experimental.noalias.scope.decl(metadata !1076)
  call void @llvm.experimental.noalias.scope.decl(metadata !1077)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bi = load ptr, ptr %i.bh, align 8, !noalias !1078, !nonnull !17, !noundef !17
  %i.bj = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  invoke void %i.bi(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bj, ptr noundef %i.bf, i64 noundef %i.be)
          to label %bb.ak unwind label %bb.ah, !noalias !1049, !inline_history !852

bb.ah:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultNtNtCsgO8S5jLFugx_23deltalake_catalog_unity10credential13TokenResponseNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorE7map_errNtNtCsgO6CtM78C4N_7reqwest5error5ErrorINvB2H_6decodeB1Q_EEBM_.exit.i
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i

bb.ai:                                            ; preds = %bb.ac, %bb.x
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #27, !noalias !1049
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.x, %bb.aa, %bb.ah, %bb.ac
  %.pn4.pn.i = phi { ptr, i32 } [ %i.as, %bb.ac ], [ %i.bk, %bb.ah ], [ %i.aq, %bb.aa ], [ %i.am, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1045
  store i8 2, ptr %i.aj, align 8, !noalias !1045
  br label %.body

.thread65:                                        ; preds = %bb.ab
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1045
  store i8 1, ptr %i.aj, align 8, !noalias !1045
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.625.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.517.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.948)
  br label %bb.o

bb.aj:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1045
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1045
  store i8 3, ptr %i.aj, align 8, !noalias !1045
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.625.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.517.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.948)
  store i64 -9223372036854775794, ptr %0, align 8
  br label %common.ret

bb.ak:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultNtNtCsgO8S5jLFugx_23deltalake_catalog_unity10credential13TokenResponseNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorE7map_errNtNtCsgO6CtM78C4N_7reqwest5error5ErrorINvB2H_6decodeB1Q_EEBM_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1045
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.948, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.625.i, i64 16, i1 false), !noalias !1079
  store i8 1, ptr %i.aj, align 8, !noalias !1045
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.625.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.517.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.652, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.948, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.948)
  br i1 %i.ba, label %bb.o, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.652, i64 16, i1 false)
  br label %bb.am

bb.am:                                            ; preds = %bb.n, %bb.al, %bb.o
  %.sroa.056.2 = phi i64 [ -9223372036854775808, %bb.o ], [ -9223372036854775795, %bb.al ], [ %i.t, %bb.n ]
  %.sroa.557.2 = phi i64 [ %.sroa.557.1, %bb.o ], [ %i.az, %bb.al ], [ %i.aa, %bb.n ]
  %.sroa.958.1 = phi ptr [ undef, %bb.o ], [ %.sroa.422.1.i, %bb.al ], [ %.sroa.527.sroa.0.0.copyload, %bb.n ]
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 273
  store i8 0, ptr %i.bm, align 1
  store i64 %.sroa.056.2, ptr %0, align 8
  %.sroa.557.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.557.2, ptr %.sroa.557.0..sroa_idx, align 8
  %.sroa.958.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.958.1, ptr %.sroa.958.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11, i64 16, i1 false)
  %.sroa.1259.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.1259.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.1259, i64 32, i1 false)
  br label %common.ret

bb.an:                                            ; preds = %bb.ao, %bb.c
  store i8 0, ptr %i.o, align 1
  store i8 2, ptr %i.f, align 8
  resume { ptr, i32 } %.pn8.pn

bb.ao:                                            ; preds = %bb.c
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 136
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest10async_impl8response8ResponseECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(136) %i.bn) #26
          to label %bb.an unwind label %bb.p
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtB4_8Response5bytes0CsgO8S5jLFugx_23deltalake_catalog_unity(ptr dead_on_unwind noalias noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [144 x i8], align 8               ; 8 uses
  %i.b = alloca [128 x i8], align 8               ; 7 uses
  %.sroa.432 = alloca [16 x i8], align 8          ; 2 uses
  %.sroa.525 = alloca [104 x i8], align 8         ; 2 uses
  %i.c = alloca [128 x i8], align 8               ; 9 uses
  %i.d = alloca [128 x i8], align 8               ; 8 uses
  %i.e = alloca [32 x i8], align 8                ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 416 ; 3 uses
  %i.g = load i8, ptr %i.f, align 8, !range !441, !noundef !17
  switch i8 %i.g, label %default.unreachable37 [
    i8 0, label %bb.b
    i8 1, label %bb.j
    i8 2, label %bb.k
    i8 3, label %bb.h
  ]

default.unreachable37:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 136
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.h, ptr noundef nonnull align 8 dereferenceable(136) %1, i64 136, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.d, ptr noundef nonnull align 8 dereferenceable(128) %1, i64 128, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.j = load <2 x ptr>, ptr %i.i, align 8, !alias.scope !1080
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header3map9HeaderMapECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.d)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %.val1.i.i = load ptr, ptr %i.l, align 8, !alias.scope !1083, !align !114, !noundef !17
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http10extensions10ExtensionsECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.val1.i.i) #26
          to label %.body unwind label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %.val.i.i = load ptr, ptr %i.m, align 8, !alias.scope !1083, !align !114, !noundef !17 ; 4 uses
  %i.n = icmp eq ptr %.val.i.i, null
  br i1 %i.n, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtBT_6marker4SyncNtB2H_4SendEL_EEENtNtNtBT_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val.i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBH_DNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB3h_4SendEL_EINtNtB4_4hash18BuildHasherDefaultNtB2z_8IdHasherEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef 32, i64 noundef 8) #24
  br label %.body

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBH_DNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB3h_4SendEL_EINtNtB4_4hash18BuildHasherDefaultNtB2z_8IdHasherEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i: ; preds = %bb.e
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef 32, i64 noundef 8) #24
  br label %bb.i

bb.g:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  br label %bb.l

.body:                                            ; preds = %bb.c, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.k, %bb.c ], [ %i.o, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.body10

bb.i:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBH_DNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB3h_4SendEL_EINtNtB4_4hash18BuildHasherDefaultNtB2z_8IdHasherEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 272
  store i64 3, ptr %i.q, align 8
  %.sroa.817.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 368
  store i64 0, ptr %.sroa.817.0..sroa_idx, align 8
  %.sroa.918.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 376
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.918.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 384
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 400
  store <2 x ptr> %i.j, ptr %.sroa.11.0..sroa_idx, align 8
  br label %bb.l

.body10:                                          ; preds = %bb.m, %bb.q, %bb.v, %.body
  %.pn4.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.t, %bb.m ], [ %i.w, %bb.q ], [ %i.ag, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 264
end_hunk_2
begin_hunk_3_@_RNCNvXsl_NtCsgO8S5jLFugx_23deltalake_catalog_unity10credentialNtB7_32ImdsManagedIdentityOAuthProviderNtB7_15TokenCredential11fetch_token0B9_:bb.a
  %i.cz = icmp eq i64 %i.cy, -9223372036854775807
  br i1 %i.cz, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1299
  br label %bb.ci

bb.be:                                            ; preds = %bb.bc
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.3.0.copyload.i = load ptr, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !1299 ; 2 uses
  %.sroa.527.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.527.sroa.0.0.copyload.i = load ptr, ptr %.sroa.527.0..sroa_idx.i, align 8, !noalias !1299
  %.sroa.527.sroa.2.0..sroa.527.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.527.sroa.2.i.sroa.0.0.copyload = load i64, ptr %.sroa.527.sroa.2.0..sroa.527.0..sroa_idx.sroa_idx.i, align 8, !noalias !1299
  %.sroa.527.sroa.2.i.sroa.4.0..sroa.527.sroa.2.0..sroa.527.0..sroa_idx.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.527.sroa.2.i.sroa.4.0.copyload = load i64, ptr %.sroa.527.sroa.2.i.sroa.4.0..sroa.527.sroa.2.0..sroa.527.0..sroa_idx.sroa_idx.i.sroa_idx, align 8, !noalias !1299
  %.sroa.527.sroa.3.0..sroa.527.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.527.sroa.3.i.sroa.0.0.copyload = load i32, ptr %.sroa.527.sroa.3.0..sroa.527.0..sroa_idx.sroa_idx.i, align 8, !noalias !1299
  %.sroa.527.sroa.3.i.sroa.4.0..sroa.527.sroa.3.0..sroa.527.0..sroa_idx.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.527.sroa.3.i.sroa.4, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.527.sroa.3.i.sroa.4.0..sroa.527.sroa.3.0..sroa.527.0..sroa_idx.sroa_idx.i.sroa_idx, i64 28, i1 false), !noalias !1299
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1299
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 904
  %i.db = load i8, ptr %i.da, align 8, !range !441, !noalias !1299, !noundef !17
  switch i8 %i.db, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBM_8Response4jsonNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models18TokenErrorResponseE0EB1U_.exit.i [
    i8 0, label %bb.bf
    i8 3, label %bb.bg
  ]

bb.bf:                                            ; preds = %bb.be
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest10async_impl8response8ResponseECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(136) %i.cx)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBM_8Response4jsonNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models18TokenErrorResponseE0EB1U_.exit.i unwind label %bb.bh, !noalias !1303

bb.bg:                                            ; preds = %bb.be
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 480
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBL_8Response5bytes0ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %i.dc)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBM_8Response4jsonNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models18TokenErrorResponseE0EB1U_.exit.i unwind label %bb.bh, !noalias !1303

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBM_8Response4jsonNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models18TokenErrorResponseE0EB1U_.exit.i: ; preds = %bb.bg, %bb.bf, %bb.be
  %i.de = icmp eq i64 %i.cy, -9223372036854775808
  br i1 %i.de, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBM_8Response4jsonNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models18TokenErrorResponseE0EB1U_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.1259.i.sroa.4, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.527.sroa.3.i.sroa.4, i64 28, i1 false)
  %i.df = ptrtoint ptr %.sroa.3.0.copyload.i to i64
  br label %bb.cj

bb.bj:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBM_8Response4jsonNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models18TokenErrorResponseE0EB1U_.exit.i, %.thread65.i, %bb.cf
  %.sroa.422.0.i69.i.sink = phi ptr [ %.sroa.422.1.i.i, %bb.cf ], [ %.sroa.3.0.copyload.i.i, %.thread65.i ], [ %.sroa.3.0.copyload.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBM_8Response4jsonNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models18TokenErrorResponseE0EB1U_.exit.i ] ; 2 uses
  %i.dg = phi ptr [ %i.dt, %bb.cf ], [ %i.dt, %.thread65.i ], [ %i.cv, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBM_8Response4jsonNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models18TokenErrorResponseE0EB1U_.exit.i ]
  %i.dh = phi ptr [ %i.du, %bb.cf ], [ %i.du, %.thread65.i ], [ %i.cw, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBM_8Response4jsonNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models18TokenErrorResponseE0EB1U_.exit.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.422.0.i69.i.sink) ]
  %.sroa.557.1.i = ptrtoint ptr %.sroa.422.0.i69.i.sink to i64
  br label %bb.cj

bb.bk:                                            ; preds = %bb.ch, %.body.i, %bb.ba
  %i.di = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #27, !noalias !1303
  unreachable

bb.bl:                                            ; preds = %bb.bq, %bb.bp
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i, %bb.bl
  %i.dk = phi ptr [ %i.ch, %bb.bl ], [ %i.dt, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i ]
  %i.dl = phi ptr [ %i.cg, %bb.bl ], [ %i.du, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i ]
  %i.dm = phi ptr [ %i.dn, %bb.bl ], [ %i.dw, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i ]
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.dj, %bb.bl ], [ %.pn4.pn.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBM_8Response4jsonNtNtCsgO8S5jLFugx_23deltalake_catalog_unity10credential16MsiTokenResponseE0EB1U_(ptr noundef nonnull align 8 %i.dm) #26
          to label %bb.ax unwind label %bb.bk, !noalias !1303

bb.bm:                                            ; preds = %bb.av
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 904 ; 3 uses
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !range !441, !noalias !1304
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 344 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.517.i.i)
  switch i8 %.pre.i, label %default.unreachable249 [
    i8 0, label %bb.bo
    i8 1, label %bb.bp
    i8 2, label %bb.bq
    i8 3, label %bb.bn
  ]

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1304
  br label %bb.br

bb.bo:                                            ; preds = %bb.bm, %.thread.i
  %i.do = phi ptr [ %i.ci, %.thread.i ], [ %i.ch, %bb.bm ]
  %i.dp = phi ptr [ %i.cj, %.thread.i ], [ %i.cg, %bb.bm ]
  %i.dq = phi ptr [ %.sroa.844.0..sroa_idx.i, %.thread.i ], [ %.phi.trans.insert.i, %bb.bm ]
  %i.dr = phi ptr [ %i.co, %.thread.i ], [ %i.dn, %bb.bm ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1304
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 480
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.ds, ptr noundef nonnull align 8 dereferenceable(136) %i.dr, i64 136, i1 false), !noalias !1304
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 896
  store i8 0, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !1304
  br label %bb.br

bb.bp:                                            ; preds = %bb.bm
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #30
          to label %.noexc14.i unwind label %bb.bl, !noalias !1299

.noexc14.i:                                       ; preds = %bb.bp
  unreachable

bb.bq:                                            ; preds = %bb.bm
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #30
          to label %.noexc15.i unwind label %bb.bl, !noalias !1299

.noexc15.i:                                       ; preds = %bb.bq
  unreachable

bb.br:                                            ; preds = %bb.bo, %bb.bn
  %i.dt = phi ptr [ %i.do, %bb.bo ], [ %i.ch, %bb.bn ] ; 5 uses
  %i.du = phi ptr [ %i.dp, %bb.bo ], [ %i.cg, %bb.bn ] ; 4 uses
  %i.dv = phi ptr [ %i.dq, %bb.bo ], [ %.phi.trans.insert.i, %bb.bn ] ; 4 uses
  %i.dw = phi ptr [ %i.dr, %bb.bo ], [ %i.dn, %bb.bn ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1304
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 480 ; 3 uses
  invoke fastcc void @_RNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtB4_8Response5bytes0CsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.c, ptr noundef nonnull align 8 %i.dx, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.bt unwind label %bb.bs, !noalias !1308

bb.bs:                                            ; preds = %bb.br
  %i.dy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1304
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBL_8Response5bytes0ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %i.dx) #26
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i unwind label %bb.cd, !noalias !1308

bb.bt:                                            ; preds = %bb.br
  %i.dz = load i64, ptr %i.c, align 8, !range !122, !noalias !1304, !noundef !17
  %i.ea = trunc nuw i64 %i.dz to i1
  br i1 %i.ea, label %bb.ce, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.eb = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.016.0.copyload.i.i = load ptr, ptr %i.eb, align 8, !noalias !1304 ; 3 uses
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.3.0.copyload.i.i = load ptr, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !noalias !1304 ; 5 uses
  %.sroa.517.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.517.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.517.0..sroa_idx.i.i, i64 16, i1 false), !noalias !1304
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1304
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBL_8Response5bytes0ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %i.dx)
          to label %bb.bw unwind label %bb.bv, !noalias !1308

bb.bv:                                            ; preds = %bb.bu
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i

bb.bw:                                            ; preds = %bb.bu
  %i.ed = icmp eq ptr %.sroa.016.0.copyload.i.i, null
  br i1 %i.ed, label %.thread65.i, label %bb.by

bb.bx:                                            ; preds = %bb.ca, %bb.by
  %i.ee = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1304
  call void @llvm.experimental.noalias.scope.decl(metadata !1309)
  call void @llvm.experimental.noalias.scope.decl(metadata !1312)
  %i.ef = load ptr, ptr %i.d, align 8, !alias.scope !1315, !noalias !1304, !nonnull !17, !align !114, !noundef !17
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 32
  %i.eh = load ptr, ptr %i.eg, align 8, !noalias !1316, !nonnull !17, !noundef !17
  %i.ei = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ej = load ptr, ptr %.sroa.4.0..sroa_idx.i13.i, align 8, !alias.scope !1315, !noalias !1304, !noundef !17
  %i.ek = load i64, ptr %.sroa.519.0..sroa_idx.i.i, align 8, !alias.scope !1315, !noalias !1304, !noundef !17
  invoke void %i.eh(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ei, ptr noundef %i.ej, i64 noundef %i.ek)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i unwind label %bb.cd, !noalias !1308, !inline_history !852

bb.by:                                            ; preds = %bb.bw
  %.sroa.519.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.519.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.517.i.i, i64 16, i1 false), !noalias !1304
  store ptr %.sroa.016.0.copyload.i.i, ptr %i.d, align 8, !noalias !1304
  %.sroa.4.0..sroa_idx.i13.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr %.sroa.3.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx.i13.i, align 8, !noalias !1304
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1304
  %.val7.i.i = load i64, ptr %.sroa.519.0..sroa_idx.i.i, align 8, !noalias !1304, !noundef !17 ; 2 uses
  invoke void @_RINvNtCseqDwI8vvjGQ_10serde_json2de10from_sliceNtNtCsgO8S5jLFugx_23deltalake_catalog_unity10credential16MsiTokenResponseEBN_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.3.0.copyload.i.i, i64 noundef %.val7.i.i)
          to label %bb.bz unwind label %bb.bx, !noalias !1308

bb.bz:                                            ; preds = %bb.by
  call void @llvm.experimental.noalias.scope.decl(metadata !1317)
  call void @llvm.experimental.noalias.scope.decl(metadata !1320)
  %i.el = load i64, ptr %i.b, align 8, !range !258, !alias.scope !1320, !noalias !1322, !noundef !17 ; 2 uses
  %i.em = icmp eq i64 %i.el, -9223372036854775808 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.eo = load ptr, ptr %i.en, align 8, !alias.scope !1323, !noalias !1304 ; 2 uses
  br i1 %i.em, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1324
  store i16 5, ptr %i.a, align 8, !noalias !1324
  %i.ep = invoke fastcc noalias noundef nonnull align 8 ptr @_RINvMNtCsgO6CtM78C4N_7reqwest5errorNtB3_5Error3newNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %i.a, ptr noalias noundef nonnull align 8 %i.eo)
          to label %.noexc.i.i unwind label %bb.bx, !noalias !1308

.noexc.i.i:                                       ; preds = %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1324
  %.pre.i.i = load ptr, ptr %i.d, align 8, !alias.scope !1329, !noalias !1304
  %.pre28.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i13.i, align 8, !alias.scope !1329, !noalias !1304
  %.pre29.i.i = load i64, ptr %.sroa.519.0..sroa_idx.i.i, align 8, !alias.scope !1329, !noalias !1304
  br label %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultNtNtCsgO8S5jLFugx_23deltalake_catalog_unity10credential16MsiTokenResponseNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorE7map_errNtNtCsgO6CtM78C4N_7reqwest5error5ErrorINvB2K_6decodeB1T_EEBM_.exit.i.i

bb.cb:                                            ; preds = %bb.bz
  %.sroa.625.0..sroa_idx26.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.625.i.i.sroa.0.0.copyload = load i64, ptr %.sroa.625.0..sroa_idx26.i.i, align 8, !alias.scope !1334, !noalias !1304
  %.sroa.625.i.i.sroa.7.0..sroa.625.0..sroa_idx26.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.625.i.i.sroa.7.0.copyload = load i64, ptr %.sroa.625.i.i.sroa.7.0..sroa.625.0..sroa_idx26.i.i.sroa_idx, align 8, !alias.scope !1334, !noalias !1304
  br label %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultNtNtCsgO8S5jLFugx_23deltalake_catalog_unity10credential16MsiTokenResponseNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorE7map_errNtNtCsgO6CtM78C4N_7reqwest5error5ErrorINvB2K_6decodeB1T_EEBM_.exit.i.i

_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultNtNtCsgO8S5jLFugx_23deltalake_catalog_unity10credential16MsiTokenResponseNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorE7map_errNtNtCsgO6CtM78C4N_7reqwest5error5ErrorINvB2K_6decodeB1T_EEBM_.exit.i.i: ; preds = %bb.cb, %.noexc.i.i
  %.sroa.625.i.i.sroa.0.0 = phi i64 [ undef, %.noexc.i.i ], [ %.sroa.625.i.i.sroa.0.0.copyload, %bb.cb ]
  %.sroa.625.i.i.sroa.7.0 = phi i64 [ undef, %.noexc.i.i ], [ %.sroa.625.i.i.sroa.7.0.copyload, %bb.cb ]
  %i.eq = phi i64 [ %.pre29.i.i, %.noexc.i.i ], [ %.val7.i.i, %bb.cb ]
  %i.er = phi ptr [ %.pre28.i.i, %.noexc.i.i ], [ %.sroa.3.0.copyload.i.i, %bb.cb ]
  %i.es = phi ptr [ %.pre.i.i, %.noexc.i.i ], [ %.sroa.016.0.copyload.i.i, %bb.cb ]
  %.sroa.422.1.i.i = phi ptr [ %i.ep, %.noexc.i.i ], [ %i.eo, %bb.cb ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1304
  call void @llvm.experimental.noalias.scope.decl(metadata !1335)
  call void @llvm.experimental.noalias.scope.decl(metadata !1336)
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 32
  %i.eu = load ptr, ptr %i.et, align 8, !noalias !1337, !nonnull !17, !noundef !17
  %i.ev = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  invoke void %i.eu(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ev, ptr noundef %i.er, i64 noundef %i.eq)
          to label %bb.cf unwind label %bb.cc, !noalias !1308, !inline_history !852

bb.cc:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultNtNtCsgO8S5jLFugx_23deltalake_catalog_unity10credential16MsiTokenResponseNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorE7map_errNtNtCsgO6CtM78C4N_7reqwest5error5ErrorINvB2K_6decodeB1T_EEBM_.exit.i.i
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i

bb.cd:                                            ; preds = %bb.bx, %bb.bs
  %i.ex = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #27, !noalias !1308
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i: ; preds = %bb.cc, %bb.bx, %bb.bv, %bb.bs
  %.pn4.pn.i.i = phi { ptr, i32 } [ %i.ee, %bb.bx ], [ %i.ew, %bb.cc ], [ %i.ec, %bb.bv ], [ %i.dy, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1304
  store i8 2, ptr %i.dv, align 8, !noalias !1304
  br label %.body.i

.thread65.i:                                      ; preds = %bb.bw
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload.i.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1304
  store i8 1, ptr %i.dv, align 8, !noalias !1304
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.517.i.i)
  br label %bb.bj

bb.ce:                                            ; preds = %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1304
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1304
  store i8 3, ptr %i.dv, align 8, !noalias !1304
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.517.i.i)
  br label %bb.ci

bb.cf:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultNtNtCsgO8S5jLFugx_23deltalake_catalog_unity10credential16MsiTokenResponseNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorE7map_errNtNtCsgO6CtM78C4N_7reqwest5error5ErrorINvB2K_6decodeB1T_EEBM_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1304
  store i8 1, ptr %i.dv, align 8, !noalias !1304
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.517.i.i)
  br i1 %i.em, label %bb.bj, label %bb.cj

bb.cg:                                            ; preds = %bb.ch, %bb.ax
  store i8 0, ptr %i.cr, align 1, !noalias !1299
  store i8 2, ptr %i.cp, align 8, !noalias !1299
  br label %.body65

bb.ch:                                            ; preds = %bb.ax
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 200
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest10async_impl8response8ResponseECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(136) %i.ey) #26
          to label %bb.cg unwind label %bb.bk, !noalias !1303

bb.ci:                                            ; preds = %bb.ce, %bb.bd
  %i.ez = phi ptr [ %i.cv, %bb.bd ], [ %i.dt, %bb.ce ]
  %.sink.i.ph = phi i8 [ 3, %bb.bd ], [ 4, %bb.ce ]
  store i8 %.sink.i.ph, ptr %i.ez, align 8, !noalias !1299
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.527.sroa.3.i.sroa.4)
  store i64 -9223372036854775794, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %common.ret

bb.cj:                                            ; preds = %bb.cf, %bb.bj, %bb.bi
  %i.fa = phi ptr [ %i.dg, %bb.bj ], [ %i.cv, %bb.bi ], [ %i.dt, %bb.cf ]
  %i.fb = phi ptr [ %i.dh, %bb.bj ], [ %i.cw, %bb.bi ], [ %i.du, %bb.cf ]
  %.sroa.1259.i.sroa.0.0 = phi i32 [ undef, %bb.bj ], [ %.sroa.527.sroa.3.i.sroa.0.0.copyload, %bb.bi ], [ undef, %bb.cf ]
  %.sroa.017.sroa.6.0.copyload = phi i64 [ undef, %bb.bj ], [ %.sroa.527.sroa.2.i.sroa.0.0.copyload, %bb.bi ], [ %.sroa.625.i.i.sroa.0.0, %bb.cf ] ; 3 uses
  %.sroa.11.i.sroa.5.0 = phi i64 [ undef, %bb.bj ], [ %.sroa.527.sroa.2.i.sroa.4.0.copyload, %bb.bi ], [ %.sroa.625.i.i.sroa.7.0, %bb.cf ] ; 2 uses
  %.sroa.056.2.i = phi i64 [ -9223372036854775808, %bb.bj ], [ %i.cy, %bb.bi ], [ -9223372036854775795, %bb.cf ] ; 2 uses
  %.sroa.017.sroa.0.0.copyload = phi i64 [ %.sroa.557.1.i, %bb.bj ], [ %i.df, %bb.bi ], [ %i.el, %bb.cf ] ; 3 uses
  %.sroa.017.sroa.5.0.copyload = phi ptr [ undef, %bb.bj ], [ %.sroa.527.sroa.0.0.copyload.i, %bb.bi ], [ %.sroa.422.1.i.i, %bb.cf ] ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 337
  store i8 0, ptr %i.fc, align 1, !noalias !1299
  store i8 1, ptr %i.fa, align 8, !noalias !1299
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.527.sroa.3.i.sroa.4)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvNtCsgO8S5jLFugx_23deltalake_catalog_unity10credential14non200_or_jsonNtBL_16MsiTokenResponseE0EBN_(ptr noundef nonnull align 8 %i.fb)
          to label %bb.cl unwind label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

bb.cl:                                            ; preds = %bb.cj
  %.not.i67 = icmp eq i64 %.sroa.056.2.i, -9223372036854775795
  br i1 %.not.i67, label %bb.cm, label %bb.db

bb.cm:                                            ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 %.sroa.017.sroa.0.0.copyload, ptr %i.g, align 8
  %.sroa.016.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %.sroa.017.sroa.5.0.copyload, ptr %.sroa.016.sroa.2.0..sroa_idx, align 8
  %.sroa.016.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %.sroa.017.sroa.6.0.copyload, ptr %.sroa.016.sroa.3.0..sroa_idx, align 8
  %i.fe = invoke { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now()
          to label %bb.cp unwind label %bb.co     ; 2 uses

bb.cn:                                            ; preds = %bb.cq, %bb.co
  %.pn39 = phi { ptr, i32 } [ %i.fj, %bb.cq ], [ %i.ff, %bb.co ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %i.g) #26
          to label %bb.cz unwind label %bb.ab

bb.co:                                            ; preds = %bb.cm
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

bb.cp:                                            ; preds = %bb.cm
  %i.fg = extractvalue { i64, i32 } %i.fe, 1
  %i.fh = extractvalue { i64, i32 } %i.fe, 0
  %i.fi = invoke { i64, i32 } @_RNvXs_NtCs2pqxYH9ZEk8_3std4timeNtB4_7InstantINtNtNtCsbvkFyIu7lgC_4core3ops5arith3AddNtNtBN_4time8DurationE3add(i64 noundef %i.fh, i32 noundef %i.fg, i64 noundef %.sroa.11.i.sroa.5.0, i32 noundef 0)
          to label %bb.cr unwind label %bb.cq     ; 2 uses

bb.cq:                                            ; preds = %bb.cp
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

bb.cr:                                            ; preds = %bb.cp
  %i.fk = extractvalue { i64, i32 } %i.fi, 0
  %i.fl = extractvalue { i64, i32 } %i.fi, 1      ; 2 uses
  %i.fm = icmp ult i32 %i.fl, 1000000000
  call void @llvm.assume(i1 %i.fm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i8 0, ptr %i.fn, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 57
  store i8 0, ptr %i.fo, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecTReBG_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fp)
          to label %bb.ct unwind label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.fq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecTReBN_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fp)
          to label %.body unwind label %bb.cu

bb.ct:                                            ; preds = %bb.cr
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecTReBN_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fp)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTReB1e_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit72 unwind label %bb.cv

bb.cu:                                            ; preds = %bb.cs
  %i.fr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.cv:                                            ; preds = %bb.ct, %bb.ar
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTReB1e_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit72: ; preds = %bb.ct
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i unwind label %bb.cw

bb.cw:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTReB1e_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit72
  %i.ft = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %.body73 unwind label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.fu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTReB1e_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit72
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
end_hunk_3
begin_hunk_4_@_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtCsb2ODgYNwnRL_6anyhow5ErrorNtB6_5Debug3fmtCsgO8S5jLFugx_23deltalake_catalog_unity
define hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtCsb2ODgYNwnRL_6anyhow5ErrorNtB6_5Debug3fmtCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !17, !align !114, !noundef !17
  %i.b = tail call noundef zeroext i1 @_RNvXs3_NtCsb2ODgYNwnRL_6anyhow5errorNtB7_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtCsgO6CtM78C4N_7reqwest5error5ErrorNtB6_5Debug3fmtCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !17, !align !114, !noundef !17
  %i.b = tail call noundef zeroext i1 @_RNvXs_NtCsgO6CtM78C4N_7reqwest5errorNtB4_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtB6_5Debug3fmtCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !17, !align !114, !noundef !17
  %i.b = tail call noundef zeroext i1 @_RNvXNtCsjhHCjzi9uUI_17datafusion_common6columnNtB2_6ColumnNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtB8_3ptr9alignment9AlignmentNtB6_5Debug3fmtCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !17, !align !114, !noundef !17
  %i.b = tail call noundef zeroext i1 @_RNvXs_NtNtCsbvkFyIu7lgC_4core3ptr9alignmentNtB4_9AlignmentNtNtB8_3fmt5Debug3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRNtNtCsgO6CtM78C4N_7reqwest5error5ErrorNtB6_7Display3fmtCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !17, !align !114, !noundef !17
  %i.b = tail call noundef zeroext i1 @_RNvXs0_NtCsgO6CtM78C4N_7reqwest5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvXs7_NtCsgO8S5jLFugx_23deltalake_catalog_unity10credentialNtB5_22WorkspaceOAuthProviderNtB5_15TokenCredential11fetch_token(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1400 x i8], align 8              ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  store i8 0, ptr %i.c, align 1
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !1413
  %i.d = tail call noundef align 8 dereferenceable_or_null(1400) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 16, 1481) 1400, i64 noundef 8) #24, !noalias !1413 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNCNvXs7_NtCsgO8S5jLFugx_23deltalake_catalog_unity10credentialNtBM_22WorkspaceOAuthProviderNtBM_15TokenCredential11fetch_token0E3newBO_.exit, !prof !6

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1400) #25
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvXs7_NtCsgO8S5jLFugx_23deltalake_catalog_unity10credentialNtBO_22WorkspaceOAuthProviderNtBO_15TokenCredential11fetch_token0EBQ_(ptr noundef nonnull align 8 dereferenceable(1400) %i.a) #26
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNCNvXs7_NtCsgO8S5jLFugx_23deltalake_catalog_unity10credentialNtBM_22WorkspaceOAuthProviderNtBM_15TokenCredential11fetch_token0E3newBO_.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1400) %i.d, ptr noundef nonnull align 8 dereferenceable(1400) %i.a, i64 1400, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.h = insertvalue { ptr, ptr } poison, ptr %i.d, 0
  %i.i = insertvalue { ptr, ptr } %i.h, ptr @116, 1
  ret { ptr, ptr } %i.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsW_NtNtCsbvkFyIu7lgC_4core3fmt3nummNtB7_5Debug3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !17 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.b, 67108864
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvXsu_NtNtCsbvkFyIu7lgC_4core3fmt3nummNtB7_8LowerHex3fmt(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXs8_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impmNtB9_7Display3fmt(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_RNvXsw_NtNtCsbvkFyIu7lgC_4core3fmt3nummNtB7_8UpperHex3fmt(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCs1gOyXocuPRE_10serde_core2deINtNvXs3g_NtB4_5implsINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMappppENtB4_11Deserialize11deserialize10MapVisitorNtNtCs6Po7BT7Nknu_5alloc6string6StringB2A_NtNtNtB13_4hash6random11RandomStateENtB4_8Expected3fmtCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @111, i64 noundef 5)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCs1gOyXocuPRE_10serde_core2deINtNvXsh_NtB4_5implsINtNtCs6Po7BT7Nknu_5alloc3vec3VecpENtB4_11Deserialize11deserialize10VecVisitorNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models10ColumnInfoENtB4_8Expected3fmtB2d_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @112, i64 noundef 10)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCs1gOyXocuPRE_10serde_core2deINtNvXsh_NtB4_5implsINtNtCs6Po7BT7Nknu_5alloc3vec3VecpENtB4_11Deserialize11deserialize10VecVisitorNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models12ErrorDetailsENtB4_8Expected3fmtB2d_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @112, i64 noundef 10)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCs1gOyXocuPRE_10serde_core2deNtNtB4_5impls11BoolVisitorNtB4_8Expected3fmtCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXs0_NtNtCs1gOyXocuPRE_10serde_core2de5implsNtB5_11BoolVisitorNtB7_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCs1gOyXocuPRE_10serde_core2deNtNtB4_5impls11UnitVisitorNtB4_8Expected3fmtCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXNtNtCs1gOyXocuPRE_10serde_core2de5implsNtB2_11UnitVisitorNtB4_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCs1gOyXocuPRE_10serde_core2deNtNtB4_5impls13StringVisitorNtB4_8Expected3fmtCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXs4_NtNtCs1gOyXocuPRE_10serde_core2de5implsNtB5_13StringVisitorNtB7_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCs1gOyXocuPRE_10serde_core2deNtNvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity10credential1__NtBG_13TokenResponseNtB4_11Deserialize11deserialize9___VisitorNtB4_8Expected3fmtBI_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @113, i64 noundef 20)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCs1gOyXocuPRE_10serde_core2deNtNvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity10credentials0_1__NtBG_16MsiTokenResponseNtB4_11Deserialize11deserialize9___VisitorNtB4_8Expected3fmtBI_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @114, i64 noundef 23)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCs1gOyXocuPRE_10serde_core2deNtNvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity10credentials_1__NtBG_21AzureCliTokenResponseNtB4_11Deserialize11deserialize9___VisitorNtB4_8Expected3fmtBI_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @115, i64 noundef 28)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCs1gOyXocuPRE_10serde_core2deNtNvXs16_NtB4_5implsmNtB4_11Deserialize11deserialize16PrimitiveVisitorNtB4_8Expected3fmtCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXNvXs16_NtNtCs1gOyXocuPRE_10serde_core2de5implsmNtBb_11Deserialize11deserializeNtB2_16PrimitiveVisitorNtBb_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCs1gOyXocuPRE_10serde_core2deNtNvXs19_NtB4_5implsyNtB4_11Deserialize11deserialize16PrimitiveVisitorNtB4_8Expected3fmtCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXNvXs19_NtNtCs1gOyXocuPRE_10serde_core2de5implsyNtBb_11Deserialize11deserializeNtB2_16PrimitiveVisitorNtBb_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCs1gOyXocuPRE_10serde_core2deNtNvXsR_NtB4_5implslNtB4_11Deserialize11deserialize16PrimitiveVisitorNtB4_8Expected3fmtCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXNvXsR_NtNtCs1gOyXocuPRE_10serde_core2de5implslNtBa_11Deserialize11deserializeNtB2_16PrimitiveVisitorNtBa_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: cold nonlazybind uwtable
define hidden noalias noundef nonnull ptr @_RNvXs_NtCsb2ODgYNwnRL_6anyhow5errorNtB6_5ErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtCs5cfGYlCJjjB_13reqwest_retry10RetryErrorE4fromCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 3 uses
  %i.d = invoke noundef align 8 ptr @_RNvNtCsb2ODgYNwnRL_6anyhow7nightly21request_ref_backtrace(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @23)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.c, !prof !1416

bb.c:                                             ; preds = %bb.b
  store i64 3, ptr %i.c, align 8
  br label %_RINvMNtCsb2ODgYNwnRL_6anyhow5errorNtB5_5Error18construct_from_stdNtCs5cfGYlCJjjB_13reqwest_retry10RetryErrorECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs2_NtCs2pqxYH9ZEk8_3std9backtraceNtB5_9Backtrace7capture(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.b)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvMNtCsb2ODgYNwnRL_6anyhow5errorNtB5_5Error18construct_from_stdNtCs5cfGYlCJjjB_13reqwest_retry10RetryErrorECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvMNtCsb2ODgYNwnRL_6anyhow5errorNtB5_5Error18construct_from_stdNtCs5cfGYlCJjjB_13reqwest_retry10RetryErrorECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.e, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.e = call fastcc noalias noundef nonnull ptr @_RINvMNtCsb2ODgYNwnRL_6anyhow5errorNtB5_5Error9constructNtCs5cfGYlCJjjB_13reqwest_retry10RetryErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.e

bb.f:                                             ; preds = %bb.g
  resume { ptr, i32 } %lpad.thr_comm

bb.g:                                             ; preds = %bb.d, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs5cfGYlCJjjB_13reqwest_retry10RetryErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) #26
          to label %bb.f unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #27
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc11collections9vec_dequeINtB4_8VecDequeINtNtNtCskQDtHcQtBkN_5tokio7runtime4task8NotifiedINtNtB8_4sync3ArcNtNtNtB19_9scheduler14current_thread6HandleEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !noundef !17
  %.val = load i64, ptr %0, align 8               ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.c, align 8
  %i.d = tail call { i64, i64 } @_RINvNtNtCsbvkFyIu7lgC_4core5slice5index5rangeNtNtNtB6_3ops5range9RangeFullECsgO8S5jLFugx_23deltalake_catalog_unity(i64 noundef %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10), !noalias !1417 ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 3 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 2 uses
  %i.g = sub i64 %i.f, %i.e                       ; 3 uses
  %i.h = icmp eq i64 %i.f, %i.e
  br i1 %i.h, label %_RINvMs3_NtNtCs6Po7BT7Nknu_5alloc11collections9vec_dequeINtB6_8VecDequeINtNtNtCskQDtHcQtBkN_5tokio7runtime4task8NotifiedINtNtBa_4sync3ArcNtNtNtB1b_9scheduler14current_thread6HandleEEE12slice_rangesNtNtNtCsbvkFyIu7lgC_4core3ops5range9RangeFullECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = add i64 %i.e, %.val1                     ; 2 uses
  %.not.i = icmp ult i64 %i.i, %.val
  %i.j = select i1 %.not.i, i64 0, i64 %.val
  %.sroa.0.0.i = sub nuw i64 %i.i, %i.j           ; 4 uses
  %i.k = sub i64 %.val, %.sroa.0.0.i              ; 2 uses
  %.not11.i = icmp ult i64 %i.k, %i.g
  br i1 %.not11.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = sub nuw i64 %i.g, %i.k
  br label %_RINvMs3_NtNtCs6Po7BT7Nknu_5alloc11collections9vec_dequeINtB6_8VecDequeINtNtNtCskQDtHcQtBkN_5tokio7runtime4task8NotifiedINtNtBa_4sync3ArcNtNtNtB1b_9scheduler14current_thread6HandleEEE12slice_rangesNtNtNtCsbvkFyIu7lgC_4core3ops5range9RangeFullECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.d:                                             ; preds = %bb.b
  %i.m = add i64 %.sroa.0.0.i, %i.g
  br label %_RINvMs3_NtNtCs6Po7BT7Nknu_5alloc11collections9vec_dequeINtB6_8VecDequeINtNtNtCskQDtHcQtBkN_5tokio7runtime4task8NotifiedINtNtBa_4sync3ArcNtNtNtB1b_9scheduler14current_thread6HandleEEE12slice_rangesNtNtNtCsbvkFyIu7lgC_4core3ops5range9RangeFullECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvMs3_NtNtCs6Po7BT7Nknu_5alloc11collections9vec_dequeINtB6_8VecDequeINtNtNtCskQDtHcQtBkN_5tokio7runtime4task8NotifiedINtNtBa_4sync3ArcNtNtNtB1b_9scheduler14current_thread6HandleEEE12slice_rangesNtNtNtCsbvkFyIu7lgC_4core3ops5range9RangeFullECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.sroa.11.0 = phi i64 [ 0, %bb.d ], [ %i.l, %bb.c ], [ 0, %bb.a ] ; 5 uses
  %.sroa.59.0 = phi i64 [ %i.m, %bb.d ], [ %.val, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %.sroa.08.0 = phi i64 [ %.sroa.0.0.i, %bb.d ], [ %.sroa.0.0.i, %bb.c ], [ 0, %bb.a ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !17, !noundef !17 ; 4 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.08.0 ; 2 uses
  %i.q = sub i64 %.sroa.59.0, %.sroa.08.0         ; 3 uses
  %i.r = icmp eq i64 %.sroa.59.0, %.sroa.08.0
  br i1 %i.r, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio7runtime4task8NotifiedINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtBL_9scheduler14current_thread6HandleEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.preheader, label %.lr.ph

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio7runtime4task8NotifiedINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtBL_9scheduler14current_thread6HandleEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %.lr.ph
  %i.s = icmp eq i64 %i.v, %i.q
  br i1 %i.s, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio7runtime4task8NotifiedINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtBL_9scheduler14current_thread6HandleEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.preheader, label %.lr.ph

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio7runtime4task8NotifiedINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtBL_9scheduler14current_thread6HandleEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.preheader: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio7runtime4task8NotifiedINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtBL_9scheduler14current_thread6HandleEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, %_RINvMs3_NtNtCs6Po7BT7Nknu_5alloc11collections9vec_dequeINtB6_8VecDequeINtNtNtCskQDtHcQtBkN_5tokio7runtime4task8NotifiedINtNtBa_4sync3ArcNtNtNtB1b_9scheduler14current_thread6HandleEEE12slice_rangesNtNtNtCsbvkFyIu7lgC_4core3ops5range9RangeFullECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %i.t = icmp eq i64 %.sroa.11.0, 0
  br i1 %i.t, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvXs_NtNtCs6Po7BT7Nknu_5alloc11collections9vec_dequeINtBO_8VecDequeppENtNtNtB4_3ops4drop4Drop4drop7DropperINtNtNtCskQDtHcQtBkN_5tokio7runtime4task8NotifiedINtNtBS_4sync3ArcNtNtNtB2w_9scheduler14current_thread6HandleEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %.lr.ph21

.lr.ph:                                           ; preds = %_RINvMs3_NtNtCs6Po7BT7Nknu_5alloc11collections9vec_dequeINtB6_8VecDequeINtNtNtCskQDtHcQtBkN_5tokio7runtime4task8NotifiedINtNtBa_4sync3ArcNtNtNtB1b_9scheduler14current_thread6HandleEEE12slice_rangesNtNtNtCsbvkFyIu7lgC_4core3ops5range9RangeFullECsgO8S5jLFugx_23deltalake_catalog_unity.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio7runtime4task8NotifiedINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtBL_9scheduler14current_thread6HandleEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %.sroa.0.0.i617 = phi i64 [ %i.v, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio7runtime4task8NotifiedINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtBL_9scheduler14current_thread6HandleEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i ], [ 0, %_RINvMs3_NtNtCs6Po7BT7Nknu_5alloc11collections9vec_dequeINtB6_8VecDequeINtNtNtCskQDtHcQtBkN_5tokio7runtime4task8NotifiedINtNtBa_4sync3ArcNtNtNtB1b_9scheduler14current_thread6HandleEEE12slice_rangesNtNtNtCsbvkFyIu7lgC_4core3ops5range9RangeFullECsgO8S5jLFugx_23deltalake_catalog_unity.exit ] ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.sroa.0.0.i617
  %i.v = add i64 %.sroa.0.0.i617, 1               ; 4 uses
  invoke void @_RNvXsd_NtNtCskQDtHcQtBkN_5tokio7runtime4taskINtB5_4TaskINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB7_9scheduler14current_thread6HandleEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.u)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio7runtime4task8NotifiedINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtBL_9scheduler14current_thread6HandleEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i unwind label %bb.e

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio7runtime4task8NotifiedINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtBL_9scheduler14current_thread6HandleEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit7.i: ; preds = %.lr.ph19
  %i.w = add i64 %.sroa.0.1.i18, 1                ; 2 uses
  %i.x = icmp eq i64 %i.w, %i.q
  br i1 %i.x, label %.body, label %.lr.ph19

bb.e:                                             ; preds = %.lr.ph
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = icmp eq i64 %i.v, %i.q
  br i1 %i.z, label %.body, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.e, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio7runtime4task8NotifiedINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtBL_9scheduler14current_thread6HandleEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit7.i
  %.sroa.0.1.i18 = phi i64 [ %i.w, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio7runtime4task8NotifiedINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtBL_9scheduler14current_thread6HandleEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit7.i ], [ %i.v, %bb.e ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.sroa.0.1.i18
  invoke void @_RNvXsd_NtNtCskQDtHcQtBkN_5tokio7runtime4taskINtB5_4TaskINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB7_9scheduler14current_thread6HandleEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aa)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio7runtime4task8NotifiedINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtBL_9scheduler14current_thread6HandleEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit7.i unwind label %bb.f

bb.f:                                             ; preds = %.lr.ph19
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #27
  unreachable

.body:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio7runtime4task8NotifiedINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtBL_9scheduler14current_thread6HandleEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit7.i, %bb.e
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvXs_NtNtCs6Po7BT7Nknu_5alloc11collections9vec_dequeINtBO_8VecDequeppENtNtNtB4_3ops4drop4Drop4drop7DropperINtNtNtCskQDtHcQtBkN_5tokio7runtime4task8NotifiedINtNtBS_4sync3ArcNtNtNtB2w_9scheduler14current_thread6HandleEEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nonnull %i.o, i64 %.sroa.11.0) #26
          to label %common.resume unwind label %bb.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio7runtime4task8NotifiedINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtBL_9scheduler14current_thread6HandleEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i: ; preds = %.lr.ph21
  %i.ac = icmp eq i64 %i.ae, %.sroa.11.0
  br i1 %i.ac, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvXs_NtNtCs6Po7BT7Nknu_5alloc11collections9vec_dequeINtBO_8VecDequeppENtNtNtB4_3ops4drop4Drop4drop7DropperINtNtNtCskQDtHcQtBkN_5tokio7runtime4task8NotifiedINtNtBS_4sync3ArcNtNtNtB2w_9scheduler14current_thread6HandleEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %.lr.ph21

.lr.ph21:                                         ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio7runtime4task8NotifiedINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtBL_9scheduler14current_thread6HandleEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.preheader, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio7runtime4task8NotifiedINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtBL_9scheduler14current_thread6HandleEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i
  %.sroa.0.0.i.i.i20 = phi i64 [ %i.ae, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio7runtime4task8NotifiedINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtBL_9scheduler14current_thread6HandleEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i ], [ 0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio7runtime4task8NotifiedINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtBL_9scheduler14current_thread6HandleEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.preheader ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.0.i.i.i20
  %i.ae = add i64 %.sroa.0.0.i.i.i20, 1           ; 4 uses
  invoke void @_RNvXsd_NtNtCskQDtHcQtBkN_5tokio7runtime4taskINtB5_4TaskINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB7_9scheduler14current_thread6HandleEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ad)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio7runtime4task8NotifiedINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtBL_9scheduler14current_thread6HandleEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i unwind label %bb.g

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio7runtime4task8NotifiedINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtBL_9scheduler14current_thread6HandleEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit7.i.i.i: ; preds = %.lr.ph23
  %i.af = add i64 %.sroa.0.1.i.i.i22, 1           ; 2 uses
  %i.ag = icmp eq i64 %i.af, %.sroa.11.0
  br i1 %i.ag, label %common.resume, label %.lr.ph23

bb.g:                                             ; preds = %.lr.ph21
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ai = icmp eq i64 %i.ae, %.sroa.11.0
  br i1 %i.ai, label %common.resume, label %.lr.ph23

.lr.ph23:                                         ; preds = %bb.g, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio7runtime4task8NotifiedINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtBL_9scheduler14current_thread6HandleEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit7.i.i.i
  %.sroa.0.1.i.i.i22 = phi i64 [ %i.af, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio7runtime4task8NotifiedINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtBL_9scheduler14current_thread6HandleEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit7.i.i.i ], [ %i.ae, %bb.g ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.1.i.i.i22
  invoke void @_RNvXsd_NtNtCskQDtHcQtBkN_5tokio7runtime4taskINtB5_4TaskINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB7_9scheduler14current_thread6HandleEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aj)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio7runtime4task8NotifiedINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtBL_9scheduler14current_thread6HandleEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit7.i.i.i unwind label %bb.h

common.resume:                                    ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio7runtime4task8NotifiedINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtBL_9scheduler14current_thread6HandleEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit7.i.i.i, %bb.g, %.body
  %common.resume.op = phi { ptr, i32 } [ %i.y, %.body ], [ %i.ah, %bb.g ], [ %i.ah, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio7runtime4task8NotifiedINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtBL_9scheduler14current_thread6HandleEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit7.i.i.i ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %.lr.ph23
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvXs_NtNtCs6Po7BT7Nknu_5alloc11collections9vec_dequeINtBO_8VecDequeppENtNtNtB4_3ops4drop4Drop4drop7DropperINtNtNtCskQDtHcQtBkN_5tokio7runtime4task8NotifiedINtNtBS_4sync3ArcNtNtNtB2w_9scheduler14current_thread6HandleEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio7runtime4task8NotifiedINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtBL_9scheduler14current_thread6HandleEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio7runtime4task8NotifiedINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtBL_9scheduler14current_thread6HandleEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.preheader
  ret void

bb.i:                                             ; preds = %.body
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #27
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc11collections9vec_dequeINtB4_8VecDequeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !noundef !17
  %.val = load i64, ptr %0, align 8               ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.c, align 8
  %i.d = tail call { i64, i64 } @_RINvNtNtCsbvkFyIu7lgC_4core5slice5index5rangeNtNtNtB6_3ops5range9RangeFullECsgO8S5jLFugx_23deltalake_catalog_unity(i64 noundef %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10), !noalias !1420 ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 3 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 2 uses
  %i.g = sub i64 %i.f, %i.e                       ; 3 uses
  %i.h = icmp eq i64 %i.f, %i.e
  br i1 %i.h, label %_RINvMs3_NtNtCs6Po7BT7Nknu_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE12slice_rangesNtNtNtCsbvkFyIu7lgC_4core3ops5range9RangeFullECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = add i64 %i.e, %.val1                     ; 2 uses
  %.not.i = icmp ult i64 %i.i, %.val
  %i.j = select i1 %.not.i, i64 0, i64 %.val
  %.sroa.0.0.i = sub nuw i64 %i.i, %i.j           ; 4 uses
  %i.k = sub i64 %.val, %.sroa.0.0.i              ; 2 uses
  %.not11.i = icmp ult i64 %i.k, %i.g
  br i1 %.not11.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = sub nuw i64 %i.g, %i.k
  br label %_RINvMs3_NtNtCs6Po7BT7Nknu_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE12slice_rangesNtNtNtCsbvkFyIu7lgC_4core3ops5range9RangeFullECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.d:                                             ; preds = %bb.b
  %i.m = add i64 %.sroa.0.0.i, %i.g
  br label %_RINvMs3_NtNtCs6Po7BT7Nknu_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE12slice_rangesNtNtNtCsbvkFyIu7lgC_4core3ops5range9RangeFullECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvMs3_NtNtCs6Po7BT7Nknu_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE12slice_rangesNtNtNtCsbvkFyIu7lgC_4core3ops5range9RangeFullECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.sroa.11.0 = phi i64 [ 0, %bb.d ], [ %i.l, %bb.c ], [ 0, %bb.a ] ; 5 uses
  %.sroa.59.0 = phi i64 [ %i.m, %bb.d ], [ %.val, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %.sroa.08.0 = phi i64 [ %.sroa.0.0.i, %bb.d ], [ %.sroa.0.0.i, %bb.c ], [ 0, %bb.a ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !17, !noundef !17 ; 4 uses
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.08.0 ; 2 uses
  %i.q = sub i64 %.sroa.59.0, %.sroa.08.0         ; 3 uses
  %i.r = icmp eq i64 %.sroa.59.0, %.sroa.08.0
  br i1 %i.r, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.preheader, label %.lr.ph

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %.lr.ph
  %i.s = icmp eq i64 %i.v, %i.q
  br i1 %i.s, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.preheader, label %.lr.ph

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.preheader: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, %_RINvMs3_NtNtCs6Po7BT7Nknu_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE12slice_rangesNtNtNtCsbvkFyIu7lgC_4core3ops5range9RangeFullECsgO8S5jLFugx_23deltalake_catalog_unity.exit
end_hunk_4
