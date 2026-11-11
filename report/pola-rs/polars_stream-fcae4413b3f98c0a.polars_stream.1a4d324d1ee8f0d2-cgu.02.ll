Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_stream-fcae4413b3f98c0a.polars_stream.1a4d324d1ee8f0d2-cgu.02?download=true
inline.NumInlined: 10413
inline.NumDeleted: 4007
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 33
begin_hunk_0
@462 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @100, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @460, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr @96, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @101, [8 x i8] c"\0F\00\00\00\00\00\00\00", ptr @461, [8 x i8] c"\0F\00\00\00\00\00\00\00", ptr @102, [8 x i8] c"\0F\00\00\00\00\00\00\00" }>, align 8, !guid !3211
@463 = private unnamed_addr constant [16 x i8] c"RowGroupMetadata", align 1, !guid !3211
@464 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsgZ49sUHp3tW_5alloc6string6StringEECs2g09Ig8GZd6_13polars_stream, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsR_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtCsgZ49sUHp3tW_5alloc6string6StringENtNtB7_3fmt5Debug3fmtCs2g09Ig8GZd6_13polars_stream }>, align 8, !guid !3211
@465 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata12row_metadata16RowGroupMetadataEECs2g09Ig8GZd6_13polars_stream, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsq_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata12row_metadata16RowGroupMetadataENtNtCscgRAwXFJnXP_4core3fmt5Debug3fmtCs2g09Ig8GZd6_13polars_stream }>, align 8, !guid !3211
@466 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1gC9x3uey1Y_21polars_parquet_format14parquet_format8KeyValueEEECs2g09Ig8GZd6_13polars_stream, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsR_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1gC9x3uey1Y_21polars_parquet_format14parquet_format8KeyValueEENtNtB7_3fmt5Debug3fmtCs2g09Ig8GZd6_13polars_stream }>, align 8, !guid !3211
@467 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata17schema_descriptor16SchemaDescriptorECs2g09Ig8GZd6_13polars_stream, [16 x i8] c"8\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata17schema_descriptorNtB5_16SchemaDescriptorNtNtCscgRAwXFJnXP_4core3fmt5Debug3fmt }>, align 8, !guid !3211
@468 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata12column_order11ColumnOrderEEECs2g09Ig8GZd6_13polars_stream, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsR_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata12column_order11ColumnOrderEENtNtB7_3fmt5Debug3fmtCs2g09Ig8GZd6_13polars_stream }>, align 8, !guid !3211
@469 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhENtB6_5Debug3fmtCs2g09Ig8GZd6_13polars_stream }>, align 8, !guid !3211
@470 = private unnamed_addr constant [20 x i8] c"max_row_group_height", align 1, !guid !3211
@471 = private unnamed_addr constant [12 x i8] c"schema_descr", align 1, !guid !3211
@472 = private unnamed_addr constant [10 x i8] c"footer_buf", align 1, !guid !3211
@473 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @130, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @96, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @470, [8 x i8] c"\14\00\00\00\00\00\00\00", ptr @133, [8 x i8] c"\0A\00\00\00\00\00\00\00", ptr @132, [8 x i8] c"\0A\00\00\00\00\00\00\00", ptr @44, [8 x i8] c"\12\00\00\00\00\00\00\00", ptr @471, [8 x i8] c"\0C\00\00\00\00\00\00\00", ptr @134, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr @472, [8 x i8] c"\0A\00\00\00\00\00\00\00" }>, align 8, !guid !3211
@474 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @183, [16 x i8] c"<\00\00\00\00\00\00\00<\00\00\001\00\00\00" }>, align 8, !guid !3211
@475 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @216, [16 x i8] c"-\00\00\00\00\00\00\00\C9\00\00\00(\00\00\00" }>, align 8, !guid !3211
@476 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsk_NtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridgeNtB5_10RepetitionNtNtCscgRAwXFJnXP_4core3fmt5Debug3fmt }>, align 8, !guid !3211
@477 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRINtNtB8_6option6OptionlENtB6_5Debug3fmtCs2g09Ig8GZd6_13polars_stream }>, align 8, !guid !3211
@478 = private unnamed_addr constant [9 x i8] c"FieldInfo", align 1, !guid !3211
@479 = private unnamed_addr constant [10 x i8] c"repetition", align 1, !guid !3211
@480 = private unnamed_addr constant [2 x i8] c"id", align 1, !guid !3211
@481 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCse4dvU5uQ85g_8indexmap3map8IndexMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECs2g09Ig8GZd6_13polars_stream, [16 x i8] c"@\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtCse4dvU5uQ85g_8indexmap3mapINtB4_8IndexMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtNtCscgRAwXFJnXP_4core3fmt5Debug3fmtCs2g09Ig8GZd6_13polars_stream }>, align 8, !guid !3211
@482 = private unnamed_addr constant [6 x i8] c"Schema", align 1, !guid !3211
@483 = private unnamed_addr constant [8 x i8] c"metadata", align 1, !guid !3211
@484 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCse4dvU5uQ85g_8indexmap3map8IndexMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECs2g09Ig8GZd6_13polars_stream, [16 x i8] c"@\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtCse4dvU5uQ85g_8indexmap3mapINtB4_8IndexMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtNtCscgRAwXFJnXP_4core3fmt5Debug3fmtCs2g09Ig8GZd6_13polars_stream }>, align 8, !guid !3211
@485 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRINtNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1v_ENtB6_5Debug3fmtCs2g09Ig8GZd6_13polars_stream }>, align 8, !guid !3211
@486 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCs8RKTHBS4OBx_12object_store6client18CredentialProviderp10CredentialNtNtNtB1j_5azure10credential15AzureCredentialEL_EECs2g09Ig8GZd6_13polars_stream, [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsV_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtCs8RKTHBS4OBx_12object_store6client18CredentialProviderp10CredentialNtNtNtBL_5azure10credential15AzureCredentialEL_ENtNtCscgRAwXFJnXP_4core3fmt5Debug3fmtCs2g09Ig8GZd6_13polars_stream }>, align 8, !guid !3211
@487 = private unnamed_addr constant [7 x i8] c"account", align 1, !guid !3211
@488 = private unnamed_addr constant [9 x i8] c"container", align 1, !guid !3211
@489 = private unnamed_addr constant [7 x i8] c"service", align 1, !guid !3211
@490 = private unnamed_addr constant [11 x i8] c"is_emulator", align 1, !guid !3211
@491 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @487, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @488, [8 x i8] c"\09\00\00\00\00\00\00\00", ptr @330, [8 x i8] c"\0B\00\00\00\00\00\00\00", ptr @316, [8 x i8] c"\0C\00\00\00\00\00\00\00", ptr @489, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @490, [8 x i8] c"\0B\00\00\00\00\00\00\00", ptr @333, [8 x i8] c"\0E\00\00\00\00\00\00\00", ptr @375, [8 x i8] c"\0F\00\00\00\00\00\00\00", ptr @317, [8 x i8] c"\0E\00\00\00\00\00\00\00" }>, align 8, !guid !3211
@492 = private unnamed_addr constant [11 x i8] c"AzureConfig", align 1, !guid !3211
@493 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_type11ParquetTypeNtB6_5Debug3fmtCs2g09Ig8GZd6_13polars_stream }>, align 8, !guid !3211
@494 = private unnamed_addr constant [5 x i8] c"Owned", align 1, !guid !3211
@495 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_type11ParquetTypeENtB6_5Debug3fmtCs2g09Ig8GZd6_13polars_stream }>, align 8, !guid !3211
@496 = private unnamed_addr constant [3 x i8] c"Arc", align 1, !guid !3211
@497 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRNtCs4BcJZGCY6Ba_10rayon_core9ErrorKindNtB6_5Debug3fmtCs2g09Ig8GZd6_13polars_stream }>, align 8, !guid !3211
@498 = private unnamed_addr constant [20 x i8] c"ThreadPoolBuildError", align 1, !guid !3211
@499 = private unnamed_addr constant [4 x i8] c"kind", align 1, !guid !3211
@500 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRNtCs2xBDrd9T7Le_3url3UrlNtB6_5Debug3fmtCs2g09Ig8GZd6_13polars_stream }>, align 8, !guid !3211
@501 = private unnamed_addr constant [6 x i8] c"Config", align 1, !guid !3211
@502 = private unnamed_addr constant [4 x i8] c"root", align 1, !guid !3211
@503 = private unnamed_addr constant [90 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/url-2.5.8/src/lib.rs\00", align 1, !guid !3211
@504 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @503, [16 x i8] c"Y\00\00\00\00\00\00\00H\0B\00\00\0B\00\00\00" }>, align 8, !guid !3211
@505 = private unnamed_addr constant [9 x i8] c"AllowHttp", align 1, !guid !3211
@506 = private unnamed_addr constant [24 x i8] c"AllowInvalidCertificates", align 1, !guid !3211
@507 = private unnamed_addr constant [14 x i8] c"ConnectTimeout", align 1, !guid !3211
@508 = private unnamed_addr constant [18 x i8] c"DefaultContentType", align 1, !guid !3211
@509 = private unnamed_addr constant [9 x i8] c"Http1Only", align 1, !guid !3211
@510 = private unnamed_addr constant [22 x i8] c"Http2KeepAliveInterval", align 1, !guid !3211
@511 = private unnamed_addr constant [21 x i8] c"Http2KeepAliveTimeout", align 1, !guid !3211
@512 = private unnamed_addr constant [23 x i8] c"Http2KeepAliveWhileIdle", align 1, !guid !3211
@513 = private unnamed_addr constant [17 x i8] c"Http2MaxFrameSize", align 1, !guid !3211
@514 = private unnamed_addr constant [9 x i8] c"Http2Only", align 1, !guid !3211
@515 = private unnamed_addr constant [15 x i8] c"PoolIdleTimeout", align 1, !guid !3211
@516 = private unnamed_addr constant [18 x i8] c"PoolMaxIdlePerHost", align 1, !guid !3211
@517 = private unnamed_addr constant [8 x i8] c"ProxyUrl", align 1, !guid !3211
@518 = private unnamed_addr constant [18 x i8] c"ProxyCaCertificate", align 1, !guid !3211
@519 = private unnamed_addr constant [13 x i8] c"ProxyExcludes", align 1, !guid !3211
@520 = private unnamed_addr constant [18 x i8] c"RandomizeAddresses", align 1, !guid !3211
@521 = private unnamed_addr constant [11 x i8] c"ReadTimeout", align 1, !guid !3211
@522 = private unnamed_addr constant [7 x i8] c"Timeout", align 1, !guid !3211
@523 = private unnamed_addr constant [9 x i8] c"UserAgent", align 1, !guid !3211
@524 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @5, [16 x i8] c"a\00\00\00\00\00\00\00\22\09\00\00&\00\00\00" }>, align 8, !guid !3211
@525 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @5, [16 x i8] c"a\00\00\00\00\00\00\00*\09\00\003\00\00\00" }>, align 8, !guid !3211
@526 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8RKTHBS4OBx_12object_store5azure6client11AzureConfigECs2g09Ig8GZd6_13polars_stream, [16 x i8] c"p\03\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsa_NtNtCs8RKTHBS4OBx_12object_store5azure6clientNtB5_11AzureConfigNtNtCscgRAwXFJnXP_4core3fmt5Debug3fmt }>, align 8, !guid !3211
@527 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRNtNtNtNtCs8RKTHBS4OBx_12object_store6client4http10connection10HttpClientNtB6_5Debug3fmtCs2g09Ig8GZd6_13polars_stream }>, align 8, !guid !3211
@528 = private unnamed_addr constant [11 x i8] c"AzureClient", align 1, !guid !3211
@529 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata17column_descriptor10DescriptorECs2g09Ig8GZd6_13polars_stream, [16 x i8] c"p\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs4_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata17column_descriptorNtB5_10DescriptorNtNtCscgRAwXFJnXP_4core3fmt5Debug3fmt }>, align 8, !guid !3211
@530 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECs2g09Ig8GZd6_13polars_stream, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsq_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENtNtCscgRAwXFJnXP_4core3fmt5Debug3fmtCs2g09Ig8GZd6_13polars_stream }>, align 8, !guid !3211
@531 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata17column_descriptor8BaseTypeNtB6_5Debug3fmtCs2g09Ig8GZd6_13polars_stream }>, align 8, !guid !3211
@532 = private unnamed_addr constant [16 x i8] c"ColumnDescriptor", align 1, !guid !3211
@533 = private unnamed_addr constant [10 x i8] c"descriptor", align 1, !guid !3211
@534 = private unnamed_addr constant [9 x i8] c"base_type", align 1, !guid !3211
@535 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @503, [16 x i8] c"Y\00\00\00\00\00\00\00O\0B\00\00\0B\00\00\00" }>, align 8, !guid !3211
@536 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00(\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1_NtNtCs8RKTHBS4OBx_12object_store6client7backoffNtB5_13BackoffConfigNtNtCscgRAwXFJnXP_4core3fmt5Debug3fmt }>, align 8, !guid !3211
@537 = private unnamed_addr constant [11 x i8] c"RetryConfig", align 1, !guid !3211
@538 = private unnamed_addr constant [7 x i8] c"backoff", align 1, !guid !3211
@539 = private unnamed_addr constant [11 x i8] c"max_retries", align 1, !guid !3211
@540 = private unnamed_addr constant [13 x i8] c"retry_timeout", align 1, !guid !3211
@541 = private unnamed_addr constant [11 x i8] c"LayoutError", align 1, !guid !3211
@542 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtNtNtCs8RKTHBS4OBx_12object_store6client4http10connection11HttpServiceEL_ENtB6_5Debug3fmtCs2g09Ig8GZd6_13polars_stream }>, align 8, !guid !3211
@543 = private unnamed_addr constant [10 x i8] c"HttpClient", align 1, !guid !3211
@544 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRNtNtCs1lTGjXZLbkb_7reqwest3tls11CertificateNtB6_5Debug3fmtCs2g09Ig8GZd6_13polars_stream }>, align 8, !guid !3211
@545 = private unnamed_addr constant [11 x i8] c"Certificate", align 1, !guid !3211
@546 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8RKTHBS4OBx_12object_store3aws6client8S3ConfigECs2g09Ig8GZd6_13polars_stream, [16 x i8] c"\D8\03\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs9_NtNtCs8RKTHBS4OBx_12object_store3aws6clientNtB5_8S3ConfigNtNtCscgRAwXFJnXP_4core3fmt5Debug3fmt }>, align 8, !guid !3211
@547 = private unnamed_addr constant [8 x i8] c"S3Client", align 1, !guid !3211
@548 = private unnamed_addr constant [19 x i8] c"IcebergPathProvider", align 1, !guid !3211
@549 = private unnamed_addr constant [16 x i8] c"file_part_prefix", align 1, !guid !3211
@550 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtBL_3vec3VecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata17column_descriptor16ColumnDescriptorEEECs2g09Ig8GZd6_13polars_stream, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsV_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtB7_3vec3VecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata17column_descriptor16ColumnDescriptorEENtNtCscgRAwXFJnXP_4core3fmt5Debug3fmtCs2g09Ig8GZd6_13polars_stream }>, align 8, !guid !3211
@551 = private unnamed_addr constant [19 x i8] c"ColumnDescriptorRef", align 1, !guid !3211
@552 = private unnamed_addr constant [6 x i8] c"descrs", align 1, !guid !3211
@553 = private unnamed_addr constant [3 x i8] c"idx", align 1, !guid !3211
@554 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs8RKTHBS4OBx_12object_store6config11ConfigValueNtNtNtCs1d9mkheQt2j_4http6header5value11HeaderValueEEECs2g09Ig8GZd6_13polars_stream, [16 x i8] c"(\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsR_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionINtNtCs8RKTHBS4OBx_12object_store6config11ConfigValueNtNtNtCs1d9mkheQt2j_4http6header5value11HeaderValueEENtNtB7_3fmt5Debug3fmtCs2g09Ig8GZd6_13polars_stream }>, align 8, !guid !3211
@555 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs8RKTHBS4OBx_12object_store6client11CertificateEECs2g09Ig8GZd6_13polars_stream, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsq_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs8RKTHBS4OBx_12object_store6client11CertificateENtNtCscgRAwXFJnXP_4core3fmt5Debug3fmtCs2g09Ig8GZd6_13polars_stream }>, align 8, !guid !3211
@556 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std11collections4hash3map7HashMapNtNtCsgZ49sUHp3tW_5alloc6string6StringB1B_EECs2g09Ig8GZd6_13polars_stream, [16 x i8] c"0\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs6_NtNtNtCsh8eZTKRCwoO_3std11collections4hash3mapINtB5_7HashMapNtNtCsgZ49sUHp3tW_5alloc6string6StringB13_ENtNtCscgRAwXFJnXP_4core3fmt5Debug3fmtCs2g09Ig8GZd6_13polars_stream }>, align 8, !guid !3211
@557 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs1d9mkheQt2j_4http6header3map9HeaderMapEECs2g09Ig8GZd6_13polars_stream, [16 x i8] c"`\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsR_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtNtCs1d9mkheQt2j_4http6header3map9HeaderMapENtNtB7_3fmt5Debug3fmtCs2g09Ig8GZd6_13polars_stream }>, align 8, !guid !3211
@558 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8RKTHBS4OBx_12object_store6config11ConfigValuebEECs2g09Ig8GZd6_13polars_stream, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs7_NtCs8RKTHBS4OBx_12object_store6configINtB5_11ConfigValuebENtNtCscgRAwXFJnXP_4core3fmt5Debug3fmtCs2g09Ig8GZd6_13polars_stream }>, align 8, !guid !3211
@559 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs8RKTHBS4OBx_12object_store6config11ConfigValueNtNtB4_4time8DurationEEECs2g09Ig8GZd6_13polars_stream, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsR_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionINtNtCs8RKTHBS4OBx_12object_store6config11ConfigValueNtNtB7_4time8DurationEENtNtB7_3fmt5Debug3fmtCs2g09Ig8GZd6_13polars_stream }>, align 8, !guid !3211
@560 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs8RKTHBS4OBx_12object_store6config11ConfigValuejEEECs2g09Ig8GZd6_13polars_stream, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsR_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionINtNtCs8RKTHBS4OBx_12object_store6config11ConfigValuejEENtNtB7_3fmt5Debug3fmtCs2g09Ig8GZd6_13polars_stream }>, align 8, !guid !3211
@561 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs8RKTHBS4OBx_12object_store6config11ConfigValuemEEECs2g09Ig8GZd6_13polars_stream, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsR_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionINtNtCs8RKTHBS4OBx_12object_store6config11ConfigValuemEENtNtB7_3fmt5Debug3fmtCs2g09Ig8GZd6_13polars_stream }>, align 8, !guid !3211
@562 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRINtNtB8_6option6OptionNtNtCs8RKTHBS4OBx_12object_store6client11DynResolverENtB6_5Debug3fmtCs2g09Ig8GZd6_13polars_stream }>, align 8, !guid !3211
@563 = private unnamed_addr constant [10 x i8] c"user_agent", align 1, !guid !3211
@564 = private unnamed_addr constant [17 x i8] c"root_certificates", align 1, !guid !3211
@565 = private unnamed_addr constant [16 x i8] c"content_type_map", align 1, !guid !3211
@566 = private unnamed_addr constant [20 x i8] c"default_content_type", align 1, !guid !3211
@567 = private unnamed_addr constant [15 x i8] c"default_headers", align 1, !guid !3211
@568 = private unnamed_addr constant [9 x i8] c"proxy_url", align 1, !guid !3211
@569 = private unnamed_addr constant [20 x i8] c"proxy_ca_certificate", align 1, !guid !3211
@570 = private unnamed_addr constant [14 x i8] c"proxy_excludes", align 1, !guid !3211
@571 = private unnamed_addr constant [10 x i8] c"allow_http", align 1, !guid !3211
@572 = private unnamed_addr constant [14 x i8] c"allow_insecure", align 1, !guid !3211
@573 = private unnamed_addr constant [7 x i8] c"timeout", align 1, !guid !3211
@574 = private unnamed_addr constant [15 x i8] c"connect_timeout", align 1, !guid !3211
@575 = private unnamed_addr constant [12 x i8] c"read_timeout", align 1, !guid !3211
@576 = private unnamed_addr constant [17 x i8] c"pool_idle_timeout", align 1, !guid !3211
@577 = private unnamed_addr constant [22 x i8] c"pool_max_idle_per_host", align 1, !guid !3211
@578 = private unnamed_addr constant [25 x i8] c"http2_keep_alive_interval", align 1, !guid !3211
@579 = private unnamed_addr constant [24 x i8] c"http2_keep_alive_timeout", align 1, !guid !3211
@580 = private unnamed_addr constant [27 x i8] c"http2_keep_alive_while_idle", align 1, !guid !3211
@581 = private unnamed_addr constant [20 x i8] c"http2_max_frame_size", align 1, !guid !3211
@582 = private unnamed_addr constant [10 x i8] c"http1_only", align 1, !guid !3211
@583 = private unnamed_addr constant [10 x i8] c"http2_only", align 1, !guid !3211
@584 = private unnamed_addr constant [19 x i8] c"randomize_addresses", align 1, !guid !3211
@585 = private unnamed_addr constant [12 x i8] c"dns_resolver", align 1, !guid !3211
@586 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @563, [8 x i8] c"\0A\00\00\00\00\00\00\00", ptr @564, [8 x i8] c"\11\00\00\00\00\00\00\00", ptr @565, [8 x i8] c"\10\00\00\00\00\00\00\00", ptr @566, [8 x i8] c"\14\00\00\00\00\00\00\00", ptr @567, [8 x i8] c"\0F\00\00\00\00\00\00\00", ptr @568, [8 x i8] c"\09\00\00\00\00\00\00\00", ptr @569, [8 x i8] c"\14\00\00\00\00\00\00\00", ptr @570, [8 x i8] c"\0E\00\00\00\00\00\00\00", ptr @571, [8 x i8] c"\0A\00\00\00\00\00\00\00", ptr @572, [8 x i8] c"\0E\00\00\00\00\00\00\00", ptr @573, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @574, [8 x i8] c"\0F\00\00\00\00\00\00\00", ptr @575, [8 x i8] c"\0C\00\00\00\00\00\00\00", ptr @576, [8 x i8] c"\11\00\00\00\00\00\00\00", ptr @577, [8 x i8] c"\16\00\00\00\00\00\00\00", ptr @578, [8 x i8] c"\19\00\00\00\00\00\00\00", ptr @579, [8 x i8] c"\18\00\00\00\00\00\00\00", ptr @580, [8 x i8] c"\1B\00\00\00\00\00\00\00", ptr @581, [8 x i8] c"\14\00\00\00\00\00\00\00", ptr @582, [8 x i8] c"\0A\00\00\00\00\00\00\00", ptr @583, [8 x i8] c"\0A\00\00\00\00\00\00\00", ptr @584, [8 x i8] c"\13\00\00\00\00\00\00\00", ptr @585, [8 x i8] c"\0C\00\00\00\00\00\00\00" }>, align 8, !guid !3211
@587 = private unnamed_addr constant [13 x i8] c"ClientOptions", align 1, !guid !3211
@588 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCNvXsj_Cs8RKTHBS4OBx_12object_storeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtBO_11ObjectStoreEL_EB1P_8get_opts0ECs2g09Ig8GZd6_13polars_stream, [16 x i8] c"\B0\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNCNvXsj_Cs8RKTHBS4OBx_12object_storeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtB7_11ObjectStoreEL_EB18_8get_opts0Cs2g09Ig8GZd6_13polars_stream }>, align 8, !guid !3211
@589 = private unnamed_addr constant [8 x i8] c"Required", align 1, !guid !3211
@590 = private unnamed_addr constant [8 x i8] c"Optional", align 1, !guid !3211
@591 = private unnamed_addr constant [8 x i8] c"Repeated", align 1, !guid !3211
@592 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsT_NtNtCs1gC9x3uey1Y_21polars_parquet_format6thrift8protocolNtB5_5TTypeNtNtCscgRAwXFJnXP_4core3fmt5Debug3fmt }>, align 8, !guid !3211
@593 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRINtNtB8_6option6OptionsENtB6_5Debug3fmtCs2g09Ig8GZd6_13polars_stream }>, align 8, !guid !3211
@594 = private unnamed_addr constant [16 x i8] c"TFieldIdentifier", align 1, !guid !3211
@595 = private unnamed_addr constant [10 x i8] c"field_type", align 1, !guid !3211
@switch.table._RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRNtNtCs8RKTHBS4OBx_12object_store6client15ClientConfigKeyNtB6_5Debug3fmtCs2g09Ig8GZd6_13polars_stream = private unnamed_addr constant [19 x i8] c"\09\18\0E\12\09\16\15\17\11\09\0F\12\08\12\0D\12\0B\07\09", align 8
@switch.table._RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRNtNtCs8RKTHBS4OBx_12object_store6client15ClientConfigKeyNtB6_5Debug3fmtCs2g09Ig8GZd6_13polars_stream.1322 = private unnamed_addr constant [19 x ptr] [ptr @505, ptr @506, ptr @507, ptr @508, ptr @509, ptr @510, ptr @511, ptr @512, ptr @513, ptr @514, ptr @515, ptr @516, ptr @517, ptr @518, ptr @519, ptr @520, ptr @521, ptr @522, ptr @523], align 8
@switch.table._RNvXs8_NtNtNtCslpwjCj2YNBy_9polars_io7parquet4read7optionsNtB5_16ParallelStrategyNtNtCscgRAwXFJnXP_4core3fmt5Debug3fmt = private unnamed_addr constant [5 x i8] c"\04\07\09\0B\04", align 8
@switch.table._RNvXs8_NtNtNtCslpwjCj2YNBy_9polars_io7parquet4read7optionsNtB5_16ParallelStrategyNtNtCscgRAwXFJnXP_4core3fmt5Debug3fmt.1323 = private unnamed_addr constant [5 x ptr] [ptr @352, ptr @353, ptr @354, ptr @355, ptr @356], align 8
@switch.table._RNvXsT_NtNtCs1gC9x3uey1Y_21polars_parquet_format6thrift8protocolNtB5_5TTypeNtNtCscgRAwXFJnXP_4core3fmt5Debug3fmt = private unnamed_addr constant [16 x i8] c"\04\04\04\03\06\03\03\03\06\04\06\03\03\04\04\05", align 8
@switch.table._RNvXsT_NtNtCs1gC9x3uey1Y_21polars_parquet_format6thrift8protocolNtB5_5TTypeNtNtCscgRAwXFJnXP_4core3fmt5Debug3fmt.1324 = private unnamed_addr constant [16 x ptr] [ptr @409, ptr @410, ptr @411, ptr @412, ptr @413, ptr @414, ptr @415, ptr @416, ptr @417, ptr @418, ptr @419, ptr @420, ptr @421, ptr @422, ptr @423, ptr @424], align 8
@switch.table._RNvXsk_NtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridgeNtB5_10RepetitionNtNtCscgRAwXFJnXP_4core3fmt5Debug3fmt = private unnamed_addr constant [3 x ptr] [ptr @589, ptr @590, ptr @591], align 8

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvCs6TADmpanyDJ_13async_channel7boundedINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCskY9G75ZWc4U_11polars_expr9hash_keys8HashKeysEECs2g09Ig8GZd6_13polars_stream(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !4036 !guid !4123 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %i.d = alloca [768 x i8], align 128             ; 16 uses
  switch i64 %1, label %bb.c [
    i64 0, label %bb.b
    i64 1, label %bb.k
  ], !dbg !4133, !prof !3216

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 47 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #34, !dbg !4134
  unreachable, !dbg !4134

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !4135, !noalias !4124
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !4136, !noalias !4124
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 2, 0) %1, i1 noundef zeroext false, i64 noundef 8, i64 noundef 32), !dbg !4136, !noalias !4124
  %i.e = load i64, ptr %i.a, align 8, !dbg !4136, !range !3231, !noalias !4124, !noundef !3214
  %i.f = trunc nuw i64 %i.e to i1, !dbg !4137
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !4138
  %i.h = load i64, ptr %i.g, align 8, !dbg !4138, !range !3232, !noalias !4124, !noundef !3214 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !4138 ; 2 uses
  br i1 %i.f, label %bb.d, label %bb.e, !dbg !4137, !prof !3233

bb.d:                                             ; preds = %bb.c
  %i.j = load i64, ptr %i.i, align 8, !dbg !4139, !noalias !4124
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.h, i64 %i.j) #35, !dbg !4140, !noalias !4124
  unreachable, !dbg !4140

bb.e:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.i, align 8, !dbg !4141, !noalias !4124, !nonnull !3214, !noundef !3214
  %i.l = icmp ule i64 %1, %i.h, !dbg !4142
  tail call void @llvm.assume(i1 %i.l), !dbg !4143
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !4144, !noalias !4124
  store i64 %i.h, ptr %i.c, align 8, !dbg !4145, !noalias !4124
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !4145 ; 2 uses
  store ptr %i.k, ptr %i.m, align 8, !dbg !4145, !noalias !4124
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !4145 ; 2 uses
  store i64 0, ptr %i.n, align 8, !dbg !4145, !noalias !4124
  br label %bb.f, !dbg !4146

bb.f:                                             ; preds = %bb.h, %bb.e
  %i.o = phi i64 [ 0, %bb.e ], [ %i.t, %bb.h ], !dbg !4147 ; 4 uses
  %i.p = load i64, ptr %i.c, align 8, !dbg !4148, !range !3242, !alias.scope !4127, !noalias !4124, !noundef !3214
  %i.q = icmp eq i64 %i.o, %i.p, !dbg !4149
  br i1 %i.q, label %bb.g, label %bb.h, !dbg !4149

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCsexZqwX5uBAL_16concurrent_queue7bounded4SlotINtNtB7_3vec3VecNtNtCskY9G75ZWc4U_11polars_expr9hash_keys8HashKeysEEE8grow_oneCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.h unwind label %bb.i, !dbg !4150, !noalias !4124

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.r = load ptr, ptr %i.m, align 8, !dbg !4151, !alias.scope !4127, !noalias !4124, !nonnull !3214, !noundef !3214
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %i.o, !dbg !4152
  store i64 %i.o, ptr %i.s, align 8, !dbg !4153, !noalias !4124
  %i.t = add i64 %i.o, 1, !dbg !4154              ; 3 uses
  store i64 %i.t, ptr %i.n, align 8, !dbg !4154, !alias.scope !4127, !noalias !4124
  %exitcond.not.i = icmp eq i64 %i.t, %1, !dbg !4155
  br i1 %exitcond.not.i, label %_RNvMNtCsexZqwX5uBAL_16concurrent_queue7boundedINtB2_7BoundedINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCskY9G75ZWc4U_11polars_expr9hash_keys8HashKeysEE3newCs2g09Ig8GZd6_13polars_stream.exit, label %bb.f, !dbg !4146

common.resume:                                    ; preds = %bb.m, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.u, %bb.i ], [ %i.ah, %bb.m ]
  resume { ptr, i32 } %common.resume.op, !dbg !4156

bb.i:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCsexZqwX5uBAL_16concurrent_queue7bounded4SlotIBH_NtNtCskY9G75ZWc4U_11polars_expr9hash_keys8HashKeysEEEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.c) #36
          to label %common.resume unwind label %bb.j, !dbg !4157, !noalias !4124

bb.j:                                             ; preds = %bb.i
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !4158, !noalias !4124
  unreachable, !dbg !4158

_RNvMNtCsexZqwX5uBAL_16concurrent_queue7boundedINtB2_7BoundedINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCskY9G75ZWc4U_11polars_expr9hash_keys8HashKeysEE3newCs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.h
  %i.w = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 2, 0) %1, i1 true), !dbg !4159
  %i.x = lshr i64 -1, %i.w, !dbg !4160
  %i.y = add nuw i64 %i.x, 1, !dbg !4161          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !4162, !noalias !4124
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !4162, !noalias !4124
  %i.z = call { ptr, i64 } @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtCsexZqwX5uBAL_16concurrent_queue7bounded4SlotIBv_NtNtCskY9G75ZWc4U_11polars_expr9hash_keys8HashKeysEEE16into_boxed_sliceCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !dbg !4163, !noalias !4124 ; 2 uses
  %i.aa = shl i64 %i.y, 1, !dbg !4164
  %i.ab = extractvalue { ptr, i64 } %i.z, 0, !dbg !4165
  %i.ac = extractvalue { ptr, i64 } %i.z, 1, !dbg !4165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !4166, !noalias !4124
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !4157, !noalias !4124
  br label %bb.k, !dbg !4167

bb.k:                                             ; preds = %bb.a, %_RNvMNtCsexZqwX5uBAL_16concurrent_queue7boundedINtB2_7BoundedINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCskY9G75ZWc4U_11polars_expr9hash_keys8HashKeysEE3newCs2g09Ig8GZd6_13polars_stream.exit
  %.sroa.615.sroa.11.0 = phi i64 [ undef, %bb.a ], [ %i.ac, %_RNvMNtCsexZqwX5uBAL_16concurrent_queue7boundedINtB2_7BoundedINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCskY9G75ZWc4U_11polars_expr9hash_keys8HashKeysEE3newCs2g09Ig8GZd6_13polars_stream.exit ], !dbg !4125
  %.sroa.615.sroa.10.0 = phi ptr [ undef, %bb.a ], [ %i.ab, %_RNvMNtCsexZqwX5uBAL_16concurrent_queue7boundedINtB2_7BoundedINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCskY9G75ZWc4U_11polars_expr9hash_keys8HashKeysEE3newCs2g09Ig8GZd6_13polars_stream.exit ], !dbg !4125
  %.sroa.615.sroa.9.0 = phi i64 [ undef, %bb.a ], [ %i.y, %_RNvMNtCsexZqwX5uBAL_16concurrent_queue7boundedINtB2_7BoundedINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCskY9G75ZWc4U_11polars_expr9hash_keys8HashKeysEE3newCs2g09Ig8GZd6_13polars_stream.exit ], !dbg !4125
  %.sroa.615.sroa.8.0 = phi i64 [ undef, %bb.a ], [ %i.aa, %_RNvMNtCsexZqwX5uBAL_16concurrent_queue7boundedINtB2_7BoundedINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCskY9G75ZWc4U_11polars_expr9hash_keys8HashKeysEE3newCs2g09Ig8GZd6_13polars_stream.exit ], !dbg !4125
  %.sroa.012.0 = phi i64 [ 0, %bb.a ], [ 1, %_RNvMNtCsexZqwX5uBAL_16concurrent_queue7boundedINtB2_7BoundedINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCskY9G75ZWc4U_11polars_expr9hash_keys8HashKeysEE3newCs2g09Ig8GZd6_13polars_stream.exit ], !dbg !4168
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !4169
  store i64 1, ptr %i.d, align 128, !dbg !4169
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !4169
  store i64 1, ptr %i.ad, align 8, !dbg !4169
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 128, !dbg !4169 ; 2 uses
  store i64 %.sroa.012.0, ptr %i.ae, align 128, !dbg !4169
  %.sroa.05.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 136, !dbg !4169
  store i64 0, ptr %.sroa.05.sroa.4.0..sroa_idx, align 8, !dbg !4169
  %.sroa.05.sroa.5.sroa.4.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 256, !dbg !4169
  store i64 0, ptr %.sroa.05.sroa.5.sroa.4.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx, align 128, !dbg !4169
  %.sroa.05.sroa.5.sroa.6.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 384, !dbg !4169
  store i64 0, ptr %.sroa.05.sroa.5.sroa.6.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx, align 128, !dbg !4169
  %.sroa.05.sroa.5.sroa.8.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 512, !dbg !4169
  store i64 %.sroa.615.sroa.8.0, ptr %.sroa.05.sroa.5.sroa.8.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx, align 128, !dbg !4169
  %.sroa.05.sroa.5.sroa.9.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 520, !dbg !4169
  store i64 %.sroa.615.sroa.9.0, ptr %.sroa.05.sroa.5.sroa.9.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx, align 8, !dbg !4169
  %.sroa.05.sroa.5.sroa.10.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 528, !dbg !4169
  store ptr %.sroa.615.sroa.10.0, ptr %.sroa.05.sroa.5.sroa.10.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx, align 16, !dbg !4169
  %.sroa.05.sroa.5.sroa.11.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 536, !dbg !4169
  store i64 %.sroa.615.sroa.11.0, ptr %.sroa.05.sroa.5.sroa.11.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx, align 8, !dbg !4169
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 640, !dbg !4169
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 672, !dbg !4169
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 128 dereferenceable(32) %.sroa.4.0..sroa_idx, i8 0, i64 32, i1 false), !dbg !4169
  store i64 1, ptr %.sroa.8.0..sroa_idx, align 32, !dbg !4169
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 680, !dbg !4169
  store i64 1, ptr %.sroa.9.0..sroa_idx, align 8, !dbg !4169
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !dbg !4170, !noalias !4129
  %i.af = call noundef align 128 dereferenceable_or_null(768) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef 768, i64 noundef range(i64 1, -9223372036854775807) 128) #28, !dbg !4171, !noalias !4129 ; 5 uses
  %i.ag = icmp eq ptr %i.af, null, !dbg !4172
  br i1 %i.ag, label %bb.l, label %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtCs6TADmpanyDJ_13async_channel7ChannelINtNtB4_3vec3VecNtNtCskY9G75ZWc4U_11polars_expr9hash_keys8HashKeysEEEE3newCs2g09Ig8GZd6_13polars_stream.exit, !dbg !4173, !prof !3269

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 768) #35
          to label %.noexc unwind label %bb.m, !dbg !4174

.noexc:                                           ; preds = %bb.l
  unreachable, !dbg !4174

bb.m:                                             ; preds = %bb.l
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtCs6TADmpanyDJ_13async_channel7ChannelINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCskY9G75ZWc4U_11polars_expr9hash_keys8HashKeysEEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 128 dereferenceable(640) %i.ae)
          to label %common.resume unwind label %bb.n, !dbg !4175

bb.n:                                             ; preds = %bb.m
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !4176
  unreachable, !dbg !4176

_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtCs6TADmpanyDJ_13async_channel7ChannelINtNtB4_3vec3VecNtNtCskY9G75ZWc4U_11polars_expr9hash_keys8HashKeysEEEE3newCs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(768) %i.af, ptr noundef nonnull align 128 dereferenceable(768) %i.d, i64 768, i1 false), !dbg !4177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !4178
  %i.aj = atomicrmw add ptr %i.af, i64 1 monotonic, align 8, !dbg !4179
  %i.ak = icmp slt i64 %i.aj, 0, !dbg !4180
  br i1 %i.ak, label %bb.p, label %bb.o, !dbg !4180

bb.o:                                             ; preds = %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtCs6TADmpanyDJ_13async_channel7ChannelINtNtB4_3vec3VecNtNtCskY9G75ZWc4U_11polars_expr9hash_keys8HashKeysEEEE3newCs2g09Ig8GZd6_13polars_stream.exit
  store ptr %i.af, ptr %0, align 8, !dbg !4181
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !4181
  store ptr %i.af, ptr %i.al, align 8, !dbg !4181
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !4181
  store ptr null, ptr %i.am, align 8, !dbg !4181
  ret void, !dbg !4182

bb.p:                                             ; preds = %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtCs6TADmpanyDJ_13async_channel7ChannelINtNtB4_3vec3VecNtNtCskY9G75ZWc4U_11polars_expr9hash_keys8HashKeysEEEE3newCs2g09Ig8GZd6_13polars_stream.exit
  call void @llvm.trap(), !dbg !4183
  unreachable, !dbg !4183
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvCs6TADmpanyDJ_13async_channel7boundedINtNtCsgZ49sUHp3tW_5alloc3vec3VecTNtNtCs2g09Ig8GZd6_13polars_stream6morsel9MorselSeqNtNtCskAlUH1kY1DR_10polars_ooc11spill_frame10SpillFrameNtNtCskY9G75ZWc4U_11polars_expr9hash_keys8HashKeysEEEB1f_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !4184 !guid !4271 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %i.d = alloca [768 x i8], align 128             ; 16 uses
  switch i64 %1, label %bb.c [
    i64 0, label %bb.b
    i64 1, label %bb.k
  ], !dbg !4281, !prof !3216

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 47 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #34, !dbg !4282
  unreachable, !dbg !4282

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !4283, !noalias !4272
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !4284, !noalias !4272
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 2, 0) %1, i1 noundef zeroext false, i64 noundef 8, i64 noundef 32), !dbg !4284, !noalias !4272
  %i.e = load i64, ptr %i.a, align 8, !dbg !4284, !range !3231, !noalias !4272, !noundef !3214
  %i.f = trunc nuw i64 %i.e to i1, !dbg !4285
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !4286
  %i.h = load i64, ptr %i.g, align 8, !dbg !4286, !range !3232, !noalias !4272, !noundef !3214 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !4286 ; 2 uses
  br i1 %i.f, label %bb.d, label %bb.e, !dbg !4285, !prof !3233

bb.d:                                             ; preds = %bb.c
  %i.j = load i64, ptr %i.i, align 8, !dbg !4287, !noalias !4272
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.h, i64 %i.j) #35, !dbg !4288, !noalias !4272
  unreachable, !dbg !4288

bb.e:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.i, align 8, !dbg !4289, !noalias !4272, !nonnull !3214, !noundef !3214
  %i.l = icmp ule i64 %1, %i.h, !dbg !4290
  tail call void @llvm.assume(i1 %i.l), !dbg !4291
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !4292, !noalias !4272
  store i64 %i.h, ptr %i.c, align 8, !dbg !4293, !noalias !4272
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !4293 ; 2 uses
  store ptr %i.k, ptr %i.m, align 8, !dbg !4293, !noalias !4272
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !4293 ; 2 uses
  store i64 0, ptr %i.n, align 8, !dbg !4293, !noalias !4272
  br label %bb.f, !dbg !4294

bb.f:                                             ; preds = %bb.h, %bb.e
  %i.o = phi i64 [ 0, %bb.e ], [ %i.t, %bb.h ], !dbg !4295 ; 4 uses
  %i.p = load i64, ptr %i.c, align 8, !dbg !4296, !range !3242, !alias.scope !4275, !noalias !4272, !noundef !3214
  %i.q = icmp eq i64 %i.o, %i.p, !dbg !4297
  br i1 %i.q, label %bb.g, label %bb.h, !dbg !4297

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCsexZqwX5uBAL_16concurrent_queue7bounded4SlotINtNtB7_3vec3VecTNtNtCs2g09Ig8GZd6_13polars_stream6morsel9MorselSeqNtNtCskAlUH1kY1DR_10polars_ooc11spill_frame10SpillFrameNtNtCskY9G75ZWc4U_11polars_expr9hash_keys8HashKeysEEEE8grow_oneB1V_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.h unwind label %bb.i, !dbg !4298, !noalias !4272

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.r = load ptr, ptr %i.m, align 8, !dbg !4299, !alias.scope !4275, !noalias !4272, !nonnull !3214, !noundef !3214
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %i.o, !dbg !4300
  store i64 %i.o, ptr %i.s, align 8, !dbg !4301, !noalias !4272
  %i.t = add i64 %i.o, 1, !dbg !4302              ; 3 uses
  store i64 %i.t, ptr %i.n, align 8, !dbg !4302, !alias.scope !4275, !noalias !4272
  %exitcond.not.i = icmp eq i64 %i.t, %1, !dbg !4303
  br i1 %exitcond.not.i, label %_RNvMNtCsexZqwX5uBAL_16concurrent_queue7boundedINtB2_7BoundedINtNtCsgZ49sUHp3tW_5alloc3vec3VecTNtNtCs2g09Ig8GZd6_13polars_stream6morsel9MorselSeqNtNtCskAlUH1kY1DR_10polars_ooc11spill_frame10SpillFrameNtNtCskY9G75ZWc4U_11polars_expr9hash_keys8HashKeysEEE3newB1y_.exit, label %bb.f, !dbg !4294

common.resume:                                    ; preds = %bb.m, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.u, %bb.i ], [ %i.ah, %bb.m ]
  resume { ptr, i32 } %common.resume.op, !dbg !4304

bb.i:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCsexZqwX5uBAL_16concurrent_queue7bounded4SlotIBH_TNtNtCs2g09Ig8GZd6_13polars_stream6morsel9MorselSeqNtNtCskAlUH1kY1DR_10polars_ooc11spill_frame10SpillFrameNtNtCskY9G75ZWc4U_11polars_expr9hash_keys8HashKeysEEEEEB2a_(ptr noalias noundef align 8 dereferenceable(24) %i.c) #36
          to label %common.resume unwind label %bb.j, !dbg !4305, !noalias !4272

bb.j:                                             ; preds = %bb.i
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !4306, !noalias !4272
  unreachable, !dbg !4306

_RNvMNtCsexZqwX5uBAL_16concurrent_queue7boundedINtB2_7BoundedINtNtCsgZ49sUHp3tW_5alloc3vec3VecTNtNtCs2g09Ig8GZd6_13polars_stream6morsel9MorselSeqNtNtCskAlUH1kY1DR_10polars_ooc11spill_frame10SpillFrameNtNtCskY9G75ZWc4U_11polars_expr9hash_keys8HashKeysEEE3newB1y_.exit: ; preds = %bb.h
  %i.w = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 2, 0) %1, i1 true), !dbg !4307
  %i.x = lshr i64 -1, %i.w, !dbg !4308
  %i.y = add nuw i64 %i.x, 1, !dbg !4309          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !4310, !noalias !4272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !4310, !noalias !4272
  %i.z = call { ptr, i64 } @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtCsexZqwX5uBAL_16concurrent_queue7bounded4SlotIBv_TNtNtCs2g09Ig8GZd6_13polars_stream6morsel9MorselSeqNtNtCskAlUH1kY1DR_10polars_ooc11spill_frame10SpillFrameNtNtCskY9G75ZWc4U_11polars_expr9hash_keys8HashKeysEEEE16into_boxed_sliceB1B_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !dbg !4311, !noalias !4272 ; 2 uses
  %i.aa = shl i64 %i.y, 1, !dbg !4312
  %i.ab = extractvalue { ptr, i64 } %i.z, 0, !dbg !4313
  %i.ac = extractvalue { ptr, i64 } %i.z, 1, !dbg !4313
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !4314, !noalias !4272
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !4305, !noalias !4272
  br label %bb.k, !dbg !4315

bb.k:                                             ; preds = %bb.a, %_RNvMNtCsexZqwX5uBAL_16concurrent_queue7boundedINtB2_7BoundedINtNtCsgZ49sUHp3tW_5alloc3vec3VecTNtNtCs2g09Ig8GZd6_13polars_stream6morsel9MorselSeqNtNtCskAlUH1kY1DR_10polars_ooc11spill_frame10SpillFrameNtNtCskY9G75ZWc4U_11polars_expr9hash_keys8HashKeysEEE3newB1y_.exit
  %.sroa.615.sroa.11.0 = phi i64 [ undef, %bb.a ], [ %i.ac, %_RNvMNtCsexZqwX5uBAL_16concurrent_queue7boundedINtB2_7BoundedINtNtCsgZ49sUHp3tW_5alloc3vec3VecTNtNtCs2g09Ig8GZd6_13polars_stream6morsel9MorselSeqNtNtCskAlUH1kY1DR_10polars_ooc11spill_frame10SpillFrameNtNtCskY9G75ZWc4U_11polars_expr9hash_keys8HashKeysEEE3newB1y_.exit ], !dbg !4273
  %.sroa.615.sroa.10.0 = phi ptr [ undef, %bb.a ], [ %i.ab, %_RNvMNtCsexZqwX5uBAL_16concurrent_queue7boundedINtB2_7BoundedINtNtCsgZ49sUHp3tW_5alloc3vec3VecTNtNtCs2g09Ig8GZd6_13polars_stream6morsel9MorselSeqNtNtCskAlUH1kY1DR_10polars_ooc11spill_frame10SpillFrameNtNtCskY9G75ZWc4U_11polars_expr9hash_keys8HashKeysEEE3newB1y_.exit ], !dbg !4273
  %.sroa.615.sroa.9.0 = phi i64 [ undef, %bb.a ], [ %i.y, %_RNvMNtCsexZqwX5uBAL_16concurrent_queue7boundedINtB2_7BoundedINtNtCsgZ49sUHp3tW_5alloc3vec3VecTNtNtCs2g09Ig8GZd6_13polars_stream6morsel9MorselSeqNtNtCskAlUH1kY1DR_10polars_ooc11spill_frame10SpillFrameNtNtCskY9G75ZWc4U_11polars_expr9hash_keys8HashKeysEEE3newB1y_.exit ], !dbg !4273
  %.sroa.615.sroa.8.0 = phi i64 [ undef, %bb.a ], [ %i.aa, %_RNvMNtCsexZqwX5uBAL_16concurrent_queue7boundedINtB2_7BoundedINtNtCsgZ49sUHp3tW_5alloc3vec3VecTNtNtCs2g09Ig8GZd6_13polars_stream6morsel9MorselSeqNtNtCskAlUH1kY1DR_10polars_ooc11spill_frame10SpillFrameNtNtCskY9G75ZWc4U_11polars_expr9hash_keys8HashKeysEEE3newB1y_.exit ], !dbg !4273
  %.sroa.012.0 = phi i64 [ 0, %bb.a ], [ 1, %_RNvMNtCsexZqwX5uBAL_16concurrent_queue7boundedINtB2_7BoundedINtNtCsgZ49sUHp3tW_5alloc3vec3VecTNtNtCs2g09Ig8GZd6_13polars_stream6morsel9MorselSeqNtNtCskAlUH1kY1DR_10polars_ooc11spill_frame10SpillFrameNtNtCskY9G75ZWc4U_11polars_expr9hash_keys8HashKeysEEE3newB1y_.exit ], !dbg !4316
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !4317
  store i64 1, ptr %i.d, align 128, !dbg !4317
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !4317
  store i64 1, ptr %i.ad, align 8, !dbg !4317
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 128, !dbg !4317 ; 2 uses
  store i64 %.sroa.012.0, ptr %i.ae, align 128, !dbg !4317
  %.sroa.05.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 136, !dbg !4317
  store i64 0, ptr %.sroa.05.sroa.4.0..sroa_idx, align 8, !dbg !4317
  %.sroa.05.sroa.5.sroa.4.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 256, !dbg !4317
  store i64 0, ptr %.sroa.05.sroa.5.sroa.4.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx, align 128, !dbg !4317
  %.sroa.05.sroa.5.sroa.6.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 384, !dbg !4317
  store i64 0, ptr %.sroa.05.sroa.5.sroa.6.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx, align 128, !dbg !4317
  %.sroa.05.sroa.5.sroa.8.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 512, !dbg !4317
  store i64 %.sroa.615.sroa.8.0, ptr %.sroa.05.sroa.5.sroa.8.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx, align 128, !dbg !4317
  %.sroa.05.sroa.5.sroa.9.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 520, !dbg !4317
  store i64 %.sroa.615.sroa.9.0, ptr %.sroa.05.sroa.5.sroa.9.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx, align 8, !dbg !4317
  %.sroa.05.sroa.5.sroa.10.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 528, !dbg !4317
  store ptr %.sroa.615.sroa.10.0, ptr %.sroa.05.sroa.5.sroa.10.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx, align 16, !dbg !4317
  %.sroa.05.sroa.5.sroa.11.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 536, !dbg !4317
  store i64 %.sroa.615.sroa.11.0, ptr %.sroa.05.sroa.5.sroa.11.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx, align 8, !dbg !4317
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 640, !dbg !4317
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 672, !dbg !4317
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 128 dereferenceable(32) %.sroa.4.0..sroa_idx, i8 0, i64 32, i1 false), !dbg !4317
  store i64 1, ptr %.sroa.8.0..sroa_idx, align 32, !dbg !4317
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 680, !dbg !4317
  store i64 1, ptr %.sroa.9.0..sroa_idx, align 8, !dbg !4317
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !dbg !4318, !noalias !4277
  %i.af = call noundef align 128 dereferenceable_or_null(768) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef 768, i64 noundef range(i64 1, -9223372036854775807) 128) #28, !dbg !4319, !noalias !4277 ; 5 uses
  %i.ag = icmp eq ptr %i.af, null, !dbg !4320
  br i1 %i.ag, label %bb.l, label %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtCs6TADmpanyDJ_13async_channel7ChannelINtNtB4_3vec3VecTNtNtCs2g09Ig8GZd6_13polars_stream6morsel9MorselSeqNtNtCskAlUH1kY1DR_10polars_ooc11spill_frame10SpillFrameNtNtCskY9G75ZWc4U_11polars_expr9hash_keys8HashKeysEEEEE3newB1Z_.exit, !dbg !4321, !prof !3269

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 768) #35
          to label %.noexc unwind label %bb.m, !dbg !4322

.noexc:                                           ; preds = %bb.l
  unreachable, !dbg !4322

bb.m:                                             ; preds = %bb.l
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtCs6TADmpanyDJ_13async_channel7ChannelINtNtCsgZ49sUHp3tW_5alloc3vec3VecTNtNtCs2g09Ig8GZd6_13polars_stream6morsel9MorselSeqNtNtCskAlUH1kY1DR_10polars_ooc11spill_frame10SpillFrameNtNtCskY9G75ZWc4U_11polars_expr9hash_keys8HashKeysEEEEB1W_(ptr noalias noundef align 128 dereferenceable(640) %i.ae)
          to label %common.resume unwind label %bb.n, !dbg !4323

bb.n:                                             ; preds = %bb.m
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !4324
  unreachable, !dbg !4324

_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtCs6TADmpanyDJ_13async_channel7ChannelINtNtB4_3vec3VecTNtNtCs2g09Ig8GZd6_13polars_stream6morsel9MorselSeqNtNtCskAlUH1kY1DR_10polars_ooc11spill_frame10SpillFrameNtNtCskY9G75ZWc4U_11polars_expr9hash_keys8HashKeysEEEEE3newB1Z_.exit: ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(768) %i.af, ptr noundef nonnull align 128 dereferenceable(768) %i.d, i64 768, i1 false), !dbg !4325
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !4326
  %i.aj = atomicrmw add ptr %i.af, i64 1 monotonic, align 8, !dbg !4327
  %i.ak = icmp slt i64 %i.aj, 0, !dbg !4328
  br i1 %i.ak, label %bb.p, label %bb.o, !dbg !4328

bb.o:                                             ; preds = %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtCs6TADmpanyDJ_13async_channel7ChannelINtNtB4_3vec3VecTNtNtCs2g09Ig8GZd6_13polars_stream6morsel9MorselSeqNtNtCskAlUH1kY1DR_10polars_ooc11spill_frame10SpillFrameNtNtCskY9G75ZWc4U_11polars_expr9hash_keys8HashKeysEEEEE3newB1Z_.exit
  store ptr %i.af, ptr %0, align 8, !dbg !4329
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !4329
  store ptr %i.af, ptr %i.al, align 8, !dbg !4329
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !4329
  store ptr null, ptr %i.am, align 8, !dbg !4329
  ret void, !dbg !4330

bb.p:                                             ; preds = %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtCs6TADmpanyDJ_13async_channel7ChannelINtNtB4_3vec3VecTNtNtCs2g09Ig8GZd6_13polars_stream6morsel9MorselSeqNtNtCskAlUH1kY1DR_10polars_ooc11spill_frame10SpillFrameNtNtCskY9G75ZWc4U_11polars_expr9hash_keys8HashKeysEEEEE3newB1Z_.exit
  call void @llvm.trap(), !dbg !4331
  unreachable, !dbg !4331
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvCs6TADmpanyDJ_13async_channel7boundedINtNvMs_NtNtCs2g09Ig8GZd6_13polars_stream5nodes8group_byNtBL_16GroupBySinkState14combine_locals6ToDropINtNtCsgZ49sUHp3tW_5alloc3vec3VecTjyNtNtCskY9G75ZWc4U_11polars_expr9hash_keys8HashKeysNtNtCskAlUH1kY1DR_10polars_ooc11spill_frame10SpillFrameEEIB2i_NtBL_6PreAggEEEBP_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !4332 !guid !4419 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %i.d = alloca [768 x i8], align 128             ; 16 uses
  switch i64 %1, label %bb.c [
    i64 0, label %bb.b
    i64 1, label %bb.k
  ], !dbg !4429, !prof !3216

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 47 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #34, !dbg !4430
  unreachable, !dbg !4430

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !4431, !noalias !4420
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !4432, !noalias !4420
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 2, 0) %1, i1 noundef zeroext false, i64 noundef 8, i64 noundef 40), !dbg !4432, !noalias !4420
  %i.e = load i64, ptr %i.a, align 8, !dbg !4432, !range !3231, !noalias !4420, !noundef !3214
  %i.f = trunc nuw i64 %i.e to i1, !dbg !4433
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !4434
  %i.h = load i64, ptr %i.g, align 8, !dbg !4434, !range !3232, !noalias !4420, !noundef !3214 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !4434 ; 2 uses
  br i1 %i.f, label %bb.d, label %bb.e, !dbg !4433, !prof !3233

bb.d:                                             ; preds = %bb.c
  %i.j = load i64, ptr %i.i, align 8, !dbg !4435, !noalias !4420
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.h, i64 %i.j) #35, !dbg !4436, !noalias !4420
  unreachable, !dbg !4436

bb.e:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.i, align 8, !dbg !4437, !noalias !4420, !nonnull !3214, !noundef !3214
  %i.l = icmp ule i64 %1, %i.h, !dbg !4438
  tail call void @llvm.assume(i1 %i.l), !dbg !4439
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !4440, !noalias !4420
  store i64 %i.h, ptr %i.c, align 8, !dbg !4441, !noalias !4420
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !4441 ; 2 uses
  store ptr %i.k, ptr %i.m, align 8, !dbg !4441, !noalias !4420
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !4441 ; 2 uses
  store i64 0, ptr %i.n, align 8, !dbg !4441, !noalias !4420
  br label %bb.f, !dbg !4442

bb.f:                                             ; preds = %bb.h, %bb.e
  %i.o = phi i64 [ 0, %bb.e ], [ %i.t, %bb.h ], !dbg !4443 ; 4 uses
  %i.p = load i64, ptr %i.c, align 8, !dbg !4444, !range !3242, !alias.scope !4423, !noalias !4420, !noundef !3214
  %i.q = icmp eq i64 %i.o, %i.p, !dbg !4445
  br i1 %i.q, label %bb.g, label %bb.h, !dbg !4445

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCsexZqwX5uBAL_16concurrent_queue7bounded4SlotINtNvMs_NtNtCs2g09Ig8GZd6_13polars_stream5nodes8group_byNtB1I_16GroupBySinkState14combine_locals6ToDropINtNtB7_3vec3VecTjyNtNtCskY9G75ZWc4U_11polars_expr9hash_keys8HashKeysNtNtCskAlUH1kY1DR_10polars_ooc11spill_frame10SpillFrameEEIB3g_NtB1I_6PreAggEEEE8grow_oneB1M_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.h unwind label %bb.i, !dbg !4446, !noalias !4420

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.r = load ptr, ptr %i.m, align 8, !dbg !4447, !alias.scope !4423, !noalias !4420, !nonnull !3214, !noundef !3214
  %i.s = getelementptr inbounds nuw [40 x i8], ptr %i.r, i64 %i.o, !dbg !4448
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 32, !dbg !4449
  store i64 %i.o, ptr %.sroa.3.0..sroa_idx.i, align 8, !dbg !4449, !noalias !4420
  %i.t = add i64 %i.o, 1, !dbg !4450              ; 3 uses
  store i64 %i.t, ptr %i.n, align 8, !dbg !4450, !alias.scope !4423, !noalias !4420
  %exitcond.not.i = icmp eq i64 %i.t, %1, !dbg !4451
  br i1 %exitcond.not.i, label %_RNvMNtCsexZqwX5uBAL_16concurrent_queue7boundedINtB2_7BoundedINtNvMs_NtNtCs2g09Ig8GZd6_13polars_stream5nodes8group_byNtB14_16GroupBySinkState14combine_locals6ToDropINtNtCsgZ49sUHp3tW_5alloc3vec3VecTjyNtNtCskY9G75ZWc4U_11polars_expr9hash_keys8HashKeysNtNtCskAlUH1kY1DR_10polars_ooc11spill_frame10SpillFrameEEIB2C_NtB14_6PreAggEEE3newB18_.exit, label %bb.f, !dbg !4442

common.resume:                                    ; preds = %bb.m, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.u, %bb.i ], [ %i.ah, %bb.m ]
  resume { ptr, i32 } %common.resume.op, !dbg !4452

bb.i:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCsexZqwX5uBAL_16concurrent_queue7bounded4SlotINtNvMs_NtNtCs2g09Ig8GZd6_13polars_stream5nodes8group_byNtB29_16GroupBySinkState14combine_locals6ToDropIBH_TjyNtNtCskY9G75ZWc4U_11polars_expr9hash_keys8HashKeysNtNtCskAlUH1kY1DR_10polars_ooc11spill_frame10SpillFrameEEIBH_NtB29_6PreAggEEEEEB2d_(ptr noalias noundef align 8 dereferenceable(24) %i.c) #36
          to label %common.resume unwind label %bb.j, !dbg !4453, !noalias !4420

bb.j:                                             ; preds = %bb.i
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !4454, !noalias !4420
  unreachable, !dbg !4454

_RNvMNtCsexZqwX5uBAL_16concurrent_queue7boundedINtB2_7BoundedINtNvMs_NtNtCs2g09Ig8GZd6_13polars_stream5nodes8group_byNtB14_16GroupBySinkState14combine_locals6ToDropINtNtCsgZ49sUHp3tW_5alloc3vec3VecTjyNtNtCskY9G75ZWc4U_11polars_expr9hash_keys8HashKeysNtNtCskAlUH1kY1DR_10polars_ooc11spill_frame10SpillFrameEEIB2C_NtB14_6PreAggEEE3newB18_.exit: ; preds = %bb.h
  %i.w = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 2, 0) %1, i1 true), !dbg !4455
  %i.x = lshr i64 -1, %i.w, !dbg !4456
  %i.y = add nuw i64 %i.x, 1, !dbg !4457          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !4458, !noalias !4420
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !4458, !noalias !4420
  %i.z = call { ptr, i64 } @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtCsexZqwX5uBAL_16concurrent_queue7bounded4SlotINtNvMs_NtNtCs2g09Ig8GZd6_13polars_stream5nodes8group_byNtB1A_16GroupBySinkState14combine_locals6ToDropIBv_TjyNtNtCskY9G75ZWc4U_11polars_expr9hash_keys8HashKeysNtNtCskAlUH1kY1DR_10polars_ooc11spill_frame10SpillFrameEEIBv_NtB1A_6PreAggEEEE16into_boxed_sliceB1E_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !dbg !4459, !noalias !4420 ; 2 uses
  %i.aa = shl i64 %i.y, 1, !dbg !4460
  %i.ab = extractvalue { ptr, i64 } %i.z, 0, !dbg !4461
  %i.ac = extractvalue { ptr, i64 } %i.z, 1, !dbg !4461
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !4462, !noalias !4420
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !4453, !noalias !4420
  br label %bb.k, !dbg !4463

bb.k:                                             ; preds = %bb.a, %_RNvMNtCsexZqwX5uBAL_16concurrent_queue7boundedINtB2_7BoundedINtNvMs_NtNtCs2g09Ig8GZd6_13polars_stream5nodes8group_byNtB14_16GroupBySinkState14combine_locals6ToDropINtNtCsgZ49sUHp3tW_5alloc3vec3VecTjyNtNtCskY9G75ZWc4U_11polars_expr9hash_keys8HashKeysNtNtCskAlUH1kY1DR_10polars_ooc11spill_frame10SpillFrameEEIB2C_NtB14_6PreAggEEE3newB18_.exit
  %.sroa.615.sroa.11.0 = phi i64 [ undef, %bb.a ], [ %i.ac, %_RNvMNtCsexZqwX5uBAL_16concurrent_queue7boundedINtB2_7BoundedINtNvMs_NtNtCs2g09Ig8GZd6_13polars_stream5nodes8group_byNtB14_16GroupBySinkState14combine_locals6ToDropINtNtCsgZ49sUHp3tW_5alloc3vec3VecTjyNtNtCskY9G75ZWc4U_11polars_expr9hash_keys8HashKeysNtNtCskAlUH1kY1DR_10polars_ooc11spill_frame10SpillFrameEEIB2C_NtB14_6PreAggEEE3newB18_.exit ], !dbg !4421
  %.sroa.615.sroa.10.0 = phi ptr [ undef, %bb.a ], [ %i.ab, %_RNvMNtCsexZqwX5uBAL_16concurrent_queue7boundedINtB2_7BoundedINtNvMs_NtNtCs2g09Ig8GZd6_13polars_stream5nodes8group_byNtB14_16GroupBySinkState14combine_locals6ToDropINtNtCsgZ49sUHp3tW_5alloc3vec3VecTjyNtNtCskY9G75ZWc4U_11polars_expr9hash_keys8HashKeysNtNtCskAlUH1kY1DR_10polars_ooc11spill_frame10SpillFrameEEIB2C_NtB14_6PreAggEEE3newB18_.exit ], !dbg !4421
  %.sroa.615.sroa.9.0 = phi i64 [ undef, %bb.a ], [ %i.y, %_RNvMNtCsexZqwX5uBAL_16concurrent_queue7boundedINtB2_7BoundedINtNvMs_NtNtCs2g09Ig8GZd6_13polars_stream5nodes8group_byNtB14_16GroupBySinkState14combine_locals6ToDropINtNtCsgZ49sUHp3tW_5alloc3vec3VecTjyNtNtCskY9G75ZWc4U_11polars_expr9hash_keys8HashKeysNtNtCskAlUH1kY1DR_10polars_ooc11spill_frame10SpillFrameEEIB2C_NtB14_6PreAggEEE3newB18_.exit ], !dbg !4421
  %.sroa.615.sroa.8.0 = phi i64 [ undef, %bb.a ], [ %i.aa, %_RNvMNtCsexZqwX5uBAL_16concurrent_queue7boundedINtB2_7BoundedINtNvMs_NtNtCs2g09Ig8GZd6_13polars_stream5nodes8group_byNtB14_16GroupBySinkState14combine_locals6ToDropINtNtCsgZ49sUHp3tW_5alloc3vec3VecTjyNtNtCskY9G75ZWc4U_11polars_expr9hash_keys8HashKeysNtNtCskAlUH1kY1DR_10polars_ooc11spill_frame10SpillFrameEEIB2C_NtB14_6PreAggEEE3newB18_.exit ], !dbg !4421
  %.sroa.012.0 = phi i64 [ 0, %bb.a ], [ 1, %_RNvMNtCsexZqwX5uBAL_16concurrent_queue7boundedINtB2_7BoundedINtNvMs_NtNtCs2g09Ig8GZd6_13polars_stream5nodes8group_byNtB14_16GroupBySinkState14combine_locals6ToDropINtNtCsgZ49sUHp3tW_5alloc3vec3VecTjyNtNtCskY9G75ZWc4U_11polars_expr9hash_keys8HashKeysNtNtCskAlUH1kY1DR_10polars_ooc11spill_frame10SpillFrameEEIB2C_NtB14_6PreAggEEE3newB18_.exit ], !dbg !4464
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !4465
  store i64 1, ptr %i.d, align 128, !dbg !4465
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !4465
  store i64 1, ptr %i.ad, align 8, !dbg !4465
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 128, !dbg !4465 ; 2 uses
  store i64 %.sroa.012.0, ptr %i.ae, align 128, !dbg !4465
  %.sroa.05.sroa.4.sroa.4.0..sroa.05.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 168, !dbg !4465
  store i64 0, ptr %.sroa.05.sroa.4.sroa.4.0..sroa.05.sroa.4.0..sroa_idx.sroa_idx, align 8, !dbg !4465
  %.sroa.05.sroa.5.sroa.4.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 256, !dbg !4465
  store i64 0, ptr %.sroa.05.sroa.5.sroa.4.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx, align 128, !dbg !4465
  %.sroa.05.sroa.5.sroa.6.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 384, !dbg !4465
  store i64 0, ptr %.sroa.05.sroa.5.sroa.6.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx, align 128, !dbg !4465
  %.sroa.05.sroa.5.sroa.8.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 512, !dbg !4465
  store i64 %.sroa.615.sroa.8.0, ptr %.sroa.05.sroa.5.sroa.8.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx, align 128, !dbg !4465
  %.sroa.05.sroa.5.sroa.9.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 520, !dbg !4465
  store i64 %.sroa.615.sroa.9.0, ptr %.sroa.05.sroa.5.sroa.9.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx, align 8, !dbg !4465
  %.sroa.05.sroa.5.sroa.10.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 528, !dbg !4465
  store ptr %.sroa.615.sroa.10.0, ptr %.sroa.05.sroa.5.sroa.10.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx, align 16, !dbg !4465
  %.sroa.05.sroa.5.sroa.11.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 536, !dbg !4465
  store i64 %.sroa.615.sroa.11.0, ptr %.sroa.05.sroa.5.sroa.11.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx, align 8, !dbg !4465
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 640, !dbg !4465
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 672, !dbg !4465
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 128 dereferenceable(32) %.sroa.4.0..sroa_idx, i8 0, i64 32, i1 false), !dbg !4465
  store i64 1, ptr %.sroa.8.0..sroa_idx, align 32, !dbg !4465
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 680, !dbg !4465
  store i64 1, ptr %.sroa.9.0..sroa_idx, align 8, !dbg !4465
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !dbg !4466, !noalias !4425
  %i.af = call noundef align 128 dereferenceable_or_null(768) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef 768, i64 noundef range(i64 1, -9223372036854775807) 128) #28, !dbg !4467, !noalias !4425 ; 5 uses
  %i.ag = icmp eq ptr %i.af, null, !dbg !4468
  br i1 %i.ag, label %bb.l, label %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtCs6TADmpanyDJ_13async_channel7ChannelINtNvMs_NtNtCs2g09Ig8GZd6_13polars_stream5nodes8group_byNtB1M_16GroupBySinkState14combine_locals6ToDropINtNtB4_3vec3VecTjyNtNtCskY9G75ZWc4U_11polars_expr9hash_keys8HashKeysNtNtCskAlUH1kY1DR_10polars_ooc11spill_frame10SpillFrameEEIB3k_NtB1M_6PreAggEEEEE3newB1Q_.exit, !dbg !4469, !prof !3269

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 768) #35
          to label %.noexc unwind label %bb.m, !dbg !4470

.noexc:                                           ; preds = %bb.l
  unreachable, !dbg !4470

bb.m:                                             ; preds = %bb.l
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtCs6TADmpanyDJ_13async_channel7ChannelINtNvMs_NtNtCs2g09Ig8GZd6_13polars_stream5nodes8group_byNtB1s_16GroupBySinkState14combine_locals6ToDropINtNtCsgZ49sUHp3tW_5alloc3vec3VecTjyNtNtCskY9G75ZWc4U_11polars_expr9hash_keys8HashKeysNtNtCskAlUH1kY1DR_10polars_ooc11spill_frame10SpillFrameEEIB30_NtB1s_6PreAggEEEEB1w_(ptr noalias noundef align 128 dereferenceable(640) %i.ae)
          to label %common.resume unwind label %bb.n, !dbg !4471

bb.n:                                             ; preds = %bb.m
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !4472
  unreachable, !dbg !4472

_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtCs6TADmpanyDJ_13async_channel7ChannelINtNvMs_NtNtCs2g09Ig8GZd6_13polars_stream5nodes8group_byNtB1M_16GroupBySinkState14combine_locals6ToDropINtNtB4_3vec3VecTjyNtNtCskY9G75ZWc4U_11polars_expr9hash_keys8HashKeysNtNtCskAlUH1kY1DR_10polars_ooc11spill_frame10SpillFrameEEIB3k_NtB1M_6PreAggEEEEE3newB1Q_.exit: ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(768) %i.af, ptr noundef nonnull align 128 dereferenceable(768) %i.d, i64 768, i1 false), !dbg !4473
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !4474
  %i.aj = atomicrmw add ptr %i.af, i64 1 monotonic, align 8, !dbg !4475
  %i.ak = icmp slt i64 %i.aj, 0, !dbg !4476
  br i1 %i.ak, label %bb.p, label %bb.o, !dbg !4476

bb.o:                                             ; preds = %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtCs6TADmpanyDJ_13async_channel7ChannelINtNvMs_NtNtCs2g09Ig8GZd6_13polars_stream5nodes8group_byNtB1M_16GroupBySinkState14combine_locals6ToDropINtNtB4_3vec3VecTjyNtNtCskY9G75ZWc4U_11polars_expr9hash_keys8HashKeysNtNtCskAlUH1kY1DR_10polars_ooc11spill_frame10SpillFrameEEIB3k_NtB1M_6PreAggEEEEE3newB1Q_.exit
  store ptr %i.af, ptr %0, align 8, !dbg !4477
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !4477
  store ptr %i.af, ptr %i.al, align 8, !dbg !4477
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !4477
  store ptr null, ptr %i.am, align 8, !dbg !4477
  ret void, !dbg !4478

bb.p:                                             ; preds = %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtCs6TADmpanyDJ_13async_channel7ChannelINtNvMs_NtNtCs2g09Ig8GZd6_13polars_stream5nodes8group_byNtB1M_16GroupBySinkState14combine_locals6ToDropINtNtB4_3vec3VecTjyNtNtCskY9G75ZWc4U_11polars_expr9hash_keys8HashKeysNtNtCskAlUH1kY1DR_10polars_ooc11spill_frame10SpillFrameEEIB3k_NtB1M_6PreAggEEEEE3newB1Q_.exit
  call void @llvm.trap(), !dbg !4479
  unreachable, !dbg !4479
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCsexZqwX5uBAL_16concurrent_queue7boundedINtB3_7BoundedINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCskY9G75ZWc4U_11polars_expr9hash_keys8HashKeysEE12push_or_elseNCNvB2_4push0ECs2g09Ig8GZd6_13polars_stream(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull align 128 captures(none) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %2, ptr nofree noundef nonnull align 128 captures(none) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !4480 !guid !4519 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 128, !dbg !4540 ; 3 uses
  %i.c = load atomic i64, ptr %i.b monotonic, align 128, !dbg !4541 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !dbg !4542, !noundef !3214 ; 2 uses
  %i.f = and i64 %i.e, %i.c, !dbg !4543
  %i.g = icmp eq i64 %i.f, 0, !dbg !4543
  br i1 %i.g, label %.lr.ph, label %._crit_edge, !dbg !4543

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 256
  br label %bb.b, !dbg !4543

bb.b:                                             ; preds = %.lr.ph, %bb.m
  %i.l = phi i64 [ %i.e, %.lr.ph ], [ %i.ak, %bb.m ]
  %.sroa.09.050 = phi i64 [ %i.c, %.lr.ph ], [ %.sroa.09.1, %bb.m ] ; 8 uses
  %i.m = add i64 %i.l, -1, !dbg !4544
  %i.n = and i64 %i.m, %.sroa.09.050, !dbg !4545  ; 4 uses
  %i.o = add i64 %i.n, 1, !dbg !4546
  %i.p = load i64, ptr %i.j, align 8, !dbg !4547, !noundef !3214 ; 3 uses
  %i.q = icmp ult i64 %i.o, %i.p, !dbg !4546
  br i1 %i.q, label %bb.d, label %bb.c, !dbg !4546

._crit_edge:                                      ; preds = %bb.m, %bb.a
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !4548
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !dbg !4549
  br label %bb.p, !dbg !4550

bb.c:                                             ; preds = %bb.b
  %i.r = load i64, ptr %i.h, align 128, !dbg !4551, !noundef !3214 ; 2 uses
  %i.s = sub i64 0, %i.r, !dbg !4552
  %i.t = and i64 %.sroa.09.050, %i.s, !dbg !4553
  %i.u = add i64 %i.t, %i.r, !dbg !4554
  br label %bb.e, !dbg !4555

bb.d:                                             ; preds = %bb.b
  %i.v = add i64 %.sroa.09.050, 1, !dbg !4556
  br label %bb.e, !dbg !4555

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %i.v, %bb.d ], [ %i.u, %bb.c ], !dbg !4557
  %i.w = icmp ult i64 %i.n, %i.p, !dbg !4558
  br i1 %i.w, label %bb.h, label %bb.f, !dbg !4558

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.n, i64 noundef %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #35
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !4558

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.e
  %i.x = load ptr, ptr %i.i, align 16, !dbg !4558, !nonnull !3214, !noundef !3214
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %i.x, i64 %i.n, !dbg !4559 ; 3 uses
  %i.z = load atomic i64, ptr %i.y acquire, align 8, !dbg !4560 ; 2 uses
  %i.aa = icmp eq i64 %.sroa.09.050, %i.z, !dbg !4561
  br i1 %i.aa, label %bb.n, label %bb.i, !dbg !4561

bb.i:                                             ; preds = %bb.h
  %i.ab = load i64, ptr %i.h, align 128, !dbg !4562, !noundef !3214
  %i.ac = add i64 %i.ab, %i.z, !dbg !4563
  %i.ad = add i64 %.sroa.09.050, 1, !dbg !4564
  %i.ae = icmp eq i64 %i.ac, %i.ad, !dbg !4565
  br i1 %i.ae, label %bb.k, label %bb.j, !dbg !4565

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtNtCsh8eZTKRCwoO_3std6thread9functions9yield_now()
          to label %.sink.split unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !4566

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !4567
  store i64 0, ptr %i.a, align 8, !dbg !4568
  call void asm sideeffect inteldialect "lock not qword ptr [${0:q}]", "r,~{memory}"(ptr nonnull %i.a) #28, !dbg !4569, !srcloc !3281
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !4570
  %i.af = load atomic i64, ptr %3 monotonic, align 128, !dbg !4571, !noalias !4530
  %i.ag = load i64, ptr %i.k, align 128, !dbg !4572, !noalias !4530, !noundef !3214
  %i.ah = add i64 %i.ag, %i.af, !dbg !4573
  %i.ai = icmp eq i64 %i.ah, %.sroa.09.050, !dbg !4574
  br i1 %i.ai, label %bb.l, label %.sink.split, !dbg !4574

bb.l:                                             ; preds = %bb.k
  %.sroa.224.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !4575
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.224.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !dbg !4576
  br label %bb.p, !dbg !4577
end_hunk_0
