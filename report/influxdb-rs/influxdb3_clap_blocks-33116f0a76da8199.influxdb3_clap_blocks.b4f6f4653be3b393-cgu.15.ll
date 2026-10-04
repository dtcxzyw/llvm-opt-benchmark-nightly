Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_clap_blocks-33116f0a76da8199.influxdb3_clap_blocks.b4f6f4653be3b393-cgu.15?download=true
inline.NumInlined: 626
inline.NumDeleted: 322
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [40 x i8] c"internal error: entered unreachable code", align 1
@1 = private unnamed_addr constant [96 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/tokio-1.53.0/src/fs/mod.rs\00", align 1
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"_\00\00\00\00\00\00\00=\01\00\00\0B\00\00\00" }>, align 8
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"_\00\00\00\00\00\00\00<\01\00\00\01\00\00\00" }>, align 8
@4 = private unnamed_addr constant [22 x i8] c"background task failed", align 1
@5 = private unnamed_addr constant [107 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/tokio-1.53.0/src/fs/read_to_string.rs\00", align 1
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @5, [16 x i8] c"j\00\00\00\00\00\00\00\1B\00\00\00K\00\00\00" }>, align 8
@7 = private unnamed_addr constant [101 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/tokio-1.53.0/src/sync/rwlock.rs\00", align 1
@8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"d\00\00\00\00\00\00\00\B9\01\00\00\11\00\00\00" }>, align 8
@9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"d\00\00\00\00\00\00\00\12\03\00\00\11\00\00\00" }>, align 8
@_RNvNCNvMs5_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB9_21AwsCredentialReloader16check_and_update010___CALLSITE = external global { ptr, { { { ptr } } }, { { { i8 } } }, { { { i8 } } }, [6 x i8] }
@_RNvNtCs4BfJs7E7SEE_12tracing_core10dispatcher6EXISTS = external local_unnamed_addr global { { { i8 } } }
@_RNvCsbKm4k1ctY99_3log20MAX_LOG_LEVEL_FILTER = external local_unnamed_addr global { { { i64 } } }
@10 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"d\00\00\00\00\00\00\00\B5\01\00\00\1B\00\00\00" }>, align 8
@11 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"d\00\00\00\00\00\00\00\0D\03\00\00\1B\00\00\00" }>, align 8
@_RNvNCNvXs1s_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtBa_20ReauthingObjectStoreNtCs1LivM9IBWqb_12object_store11ObjectStore4list010___CALLSITE = external hidden global { ptr, { { { ptr } } }, { { { i8 } } }, { { { i8 } } }, [6 x i8] }
@_RNvNCNvXs1s_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtBa_20ReauthingObjectStoreNtCs1LivM9IBWqb_12object_store11ObjectStore4list0s_10___CALLSITE = external hidden global { ptr, { { { ptr } } }, { { { i8 } } }, { { { i8 } } }, [6 x i8] }
@12 = private unnamed_addr constant [42 x i8] c"influxdb3_clap_blocks/src/object_store.rs\00", align 1
@13 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @12, [16 x i8] c")\00\00\00\00\00\00\00\E2\04\00\005\00\00\00" }>, align 8
@14 = private unnamed_addr constant [35 x i8] c"could not read aws credentials file", align 1
@15 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsl_NtCs4BfJs7E7SEE_12tracing_core5fieldNtNtCs4NRVxsYgnAr_4core3fmt9ArgumentsNtB5_5Value6record }>, align 8
@16 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsx_NtCs4BfJs7E7SEE_12tracing_core5fieldINtB5_10DebugValueRNtNtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_store10ParseErrorENtB5_5Value6recordB12_ }>, align 8
@17 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsx_NtCs4BfJs7E7SEE_12tracing_core5fieldINtB5_10DebugValueRNtNtCs2AWtUsOyxgP_3std4path7PathBufENtB5_5Value6recordCsfxgMthLVlAZ_21influxdb3_clap_blocks }>, align 8
@18 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @12, [16 x i8] c")\00\00\00\00\00\00\00\D8\04\00\00=\00\00\00" }>, align 8
@19 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @12, [16 x i8] c")\00\00\00\00\00\00\00\DB\04\00\00\0E\00\00\00" }>, align 8
@20 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @12, [16 x i8] c")\00\00\00\00\00\00\00\DD\04\00\003\00\00\00" }>, align 8
@21 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"d\00\00\00\00\00\00\00\B4\01\00\008\00\00\00" }>, align 8
@22 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"d\00\00\00\00\00\00\00\0C\03\00\00:\00\00\00" }>, align 8
@23 = private unnamed_addr constant [105 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/object_store-0.12.5/src/throttle.rs\00", align 1
@24 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @23, [16 x i8] c"h\00\00\00\00\00\00\00g\00\00\00\09\00\00\00" }>, align 8
@25 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @23, [16 x i8] c"h\00\00\00\00\00\00\00e\00\00\00$\00\00\00" }>, align 8
@26 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @12, [16 x i8] c")\00\00\00\00\00\00\00]\05\00\00\1F\00\00\00" }>, align 8
@27 = private unnamed_addr constant [2 x i8] c"\C0\00", align 1
@28 = private unnamed_addr constant [12 x i8] c"ExpiredToken", align 1
@29 = private unnamed_addr constant [97 x i8] c"^authentication with object store failed (ExpiredToken), attempting to reload credentials from \C0\00", align 1
@30 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsx_NtCs4BfJs7E7SEE_12tracing_core5fieldINtB5_10DebugValueRRINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtB1C_6marker4SendNtB29_4SyncEL_EENtB5_5Value6recordCsfxgMthLVlAZ_21influxdb3_clap_blocks }>, align 8
@31 = private unnamed_addr constant [82 x i8] c"Oauthentication with object store failed, attempting to reload credentials from \C0\00", align 1
@32 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @23, [16 x i8] c"h\00\00\00\00\00\00\00\04\01\00\00\1F\00\00\00" }>, align 8
@33 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @23, [16 x i8] c"h\00\00\00\00\00\00\00\F3\00\00\00\1F\00\00\00" }>, align 8
@_RNvNtCs4BfJs7E7SEE_12tracing_core8metadata9MAX_LEVEL = external local_unnamed_addr global { { { i64 } } }
@_RNvNtNtNtCs4NRVxsYgnAr_4core7unicode12unicode_data11white_space14WHITESPACE_MAP = external local_unnamed_addr global [256 x i8]
@34 = private unnamed_addr constant [29 x i8] c"Ready polled after completion", align 1
@35 = private unnamed_addr constant [109 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/futures-util-0.3.32/src/future/ready.rs\00", align 1
@36 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @35, [16 x i8] c"l\00\00\00\00\00\00\00 \00\00\00#\00\00\00" }>, align 8
@37 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsfxgMthLVlAZ_21influxdb3_clap_blocks, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsr_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt }>, align 8
@38 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCscdodAO9FK5_5alloc6string6StringNtB6_5Debug3fmtCsfxgMthLVlAZ_21influxdb3_clap_blocks }>, align 8
@39 = private unnamed_addr constant [11 x i8] c"InvalidPart", align 1
@40 = private unnamed_addr constant [7 x i8] c"segment", align 1
@41 = private unnamed_addr constant [7 x i8] c"illegal", align 1
@42 = private unnamed_addr constant [6 x i8] c"Header", align 1
@43 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCs6P5GRezSnwZ_4http6status10StatusCodeNtB6_5Debug3fmtCsfxgMthLVlAZ_21influxdb3_clap_blocks }>, align 8
@44 = private unnamed_addr constant [16 x i8] c"HeaderWithStatus", align 1
@45 = private unnamed_addr constant [9 x i8] c"Multipart", align 1
@46 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCs1LivM9IBWqb_12object_store3aws6dynamo12DynamoCommitNtB6_5Debug3fmtCsfxgMthLVlAZ_21influxdb3_clap_blocks }>, align 8
@47 = private unnamed_addr constant [6 x i8] c"Dynamo", align 1
@48 = private unnamed_addr constant [12 x i8] c"EmptySegment", align 1
@49 = private unnamed_addr constant [4 x i8] c"path", align 1
@50 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCs1LivM9IBWqb_12object_store4path5parts11InvalidPartNtB6_5Debug3fmtCsfxgMthLVlAZ_21influxdb3_clap_blocks }>, align 8
@51 = private unnamed_addr constant [10 x i8] c"BadSegment", align 1
@52 = private unnamed_addr constant [6 x i8] c"source", align 1
@53 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsfxgMthLVlAZ_21influxdb3_clap_blocks, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsG_NtCs2AWtUsOyxgP_3std4pathNtB5_7PathBufNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt }>, align 8
@54 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorNtB6_5Debug3fmtCsfxgMthLVlAZ_21influxdb3_clap_blocks }>, align 8
@55 = private unnamed_addr constant [12 x i8] c"Canonicalize", align 1
@56 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCs2AWtUsOyxgP_3std4path7PathBufNtB6_5Debug3fmtCsfxgMthLVlAZ_21influxdb3_clap_blocks }>, align 8
@57 = private unnamed_addr constant [11 x i8] c"InvalidPath", align 1
@58 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtB8_3str5error9Utf8ErrorNtB6_5Debug3fmtCsfxgMthLVlAZ_21influxdb3_clap_blocks }>, align 8
@59 = private unnamed_addr constant [10 x i8] c"NonUnicode", align 1
@60 = private unnamed_addr constant [14 x i8] c"PrefixMismatch", align 1
@61 = private unnamed_addr constant [6 x i8] c"prefix", align 1
@62 = private unnamed_addr constant [18 x i8] c"ContentDisposition", align 1
@63 = private unnamed_addr constant [15 x i8] c"ContentEncoding", align 1
@64 = private unnamed_addr constant [15 x i8] c"ContentLanguage", align 1
@65 = private unnamed_addr constant [11 x i8] c"ContentType", align 1
@66 = private unnamed_addr constant [12 x i8] c"CacheControl", align 1
@67 = private unnamed_addr constant [12 x i8] c"StorageClass", align 1
@68 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtCscdodAO9FK5_5alloc6borrow3CoweENtB6_5Debug3fmtCsfxgMthLVlAZ_21influxdb3_clap_blocks }>, align 8
@69 = private unnamed_addr constant [8 x i8] c"Metadata", align 1
@70 = private unnamed_addr constant [5 x i8] c"Mutex", align 1
@71 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXNvXs7_NtCs6gU0GsN6MoR_8lock_api5mutexINtB8_5MutexppENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtNtB2_17LockedPlaceholderBS_3fmt }>, align 8
@72 = private unnamed_addr constant [4 x i8] c"data", align 1
@73 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtCsamjPIc071P4_6metric20HistogramObservationyENtB6_5Debug3fmtCsfxgMthLVlAZ_21influxdb3_clap_blocks }>, align 8
@74 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtCsamjPIc071P4_6metric10AttributesNtNtB1w_5gauge8U64GaugeENtB6_5Debug3fmtCsfxgMthLVlAZ_21influxdb3_clap_blocks }>, align 8
@75 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtCsamjPIc071P4_6metric10AttributesNtNtB1w_7counter10U64CounterENtB6_5Debug3fmtCsfxgMthLVlAZ_21influxdb3_clap_blocks }>, align 8
@76 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtCsamjPIc071P4_6metric10AttributesNtNtB1w_8duration17DurationHistogramENtB6_5Debug3fmtCsfxgMthLVlAZ_21influxdb3_clap_blocks }>, align 8
@77 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCs1LivM9IBWqb_12object_store8throttle14ThrottleConfigNtB6_5Debug3fmtCsfxgMthLVlAZ_21influxdb3_clap_blocks }>, align 8
@78 = private unnamed_addr constant [4 x i8] c"Path", align 1
@79 = private unnamed_addr constant [3 x i8] c"raw", align 1
@80 = private unnamed_addr constant [14 x i8] c"AttributeValue", align 1
@81 = private unnamed_addr constant [98 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/http-1.4.2/src/header/map.rs\00", align 1
@82 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @81, [16 x i8] c"a\00\00\00\00\00\00\00\22\09\00\00&\00\00\00" }>, align 8
@83 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @81, [16 x i8] c"a\00\00\00\00\00\00\00*\09\00\003\00\00\00" }>, align 8

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define hidden { ptr, i64 } @_RINvMNtCs4NRVxsYgnAr_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 6 uses
  %i.b = icmp samesign eq i64 %1, 0
  br i1 %i.b, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i
  %i.c = phi i64 [ %i.aq, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i ], [ 0, %bb.a ] ; 4 uses
  %i.d = phi ptr [ %.sroa.4.0, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i ], [ %0, %bb.a ] ; 6 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 3 uses
  %i.g = load i8, ptr %i.d, align 1, !noalias !49, !noundef !5 ; 5 uses
  %i.h = icmp sgt i8 %i.g, -1
  br i1 %i.h, label %bb.b, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit12.i.i.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit12.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.i = and i8 %i.g, 31
  %i.j = zext nneg i8 %i.i to i32                 ; 3 uses
  %i.k = icmp ne ptr %i.f, %i.a
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 3 uses
  %i.m = load i8, ptr %i.f, align 1, !noalias !49, !noundef !5
  %i.n = shl nuw nsw i32 %i.j, 6
  %i.o = and i8 %i.m, 63
  %i.p = zext nneg i8 %i.o to i32                 ; 2 uses
  %i.q = or disjoint i32 %i.n, %i.p
  %i.r = icmp samesign ugt i8 %i.g, -33
  br i1 %i.r, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit14.i.i.i.i.i, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.s = zext nneg i8 %i.g to i32
  br label %bb.c

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit14.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit12.i.i.i.i.i
  %i.t = icmp ne ptr %i.l, %i.a
  tail call void @llvm.assume(i1 %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 3 ; 3 uses
  %i.v = load i8, ptr %i.l, align 1, !noalias !49, !noundef !5
  %i.w = shl nuw nsw i32 %i.p, 6
  %i.x = and i8 %i.v, 63
  %i.y = zext nneg i8 %i.x to i32
  %i.z = or disjoint i32 %i.w, %i.y               ; 2 uses
  %i.aa = shl nuw nsw i32 %i.j, 12
  %i.ab = or disjoint i32 %i.z, %i.aa
  %i.ac = icmp samesign ugt i8 %i.g, -17
  br i1 %i.ac, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit16.i.i.i.i.i, label %bb.c

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit16.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit14.i.i.i.i.i
  %i.ad = icmp ne ptr %i.u, %i.a
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.af = load i8, ptr %i.u, align 1, !noalias !49, !noundef !5
  %i.ag = shl nuw nsw i32 %i.j, 18
  %i.ah = and i32 %i.ag, 1835008
  %i.ai = shl nuw nsw i32 %i.z, 6
  %i.aj = and i8 %i.af, 63
  %i.ak = zext nneg i8 %i.aj to i32
  %i.al = or disjoint i32 %i.ai, %i.ak
  %i.am = or disjoint i32 %i.al, %i.ah
  br label %bb.c

bb.c:                                             ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit16.i.i.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit14.i.i.i.i.i, %bb.b, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit12.i.i.i.i.i
  %.sroa.4.0 = phi ptr [ %i.f, %bb.b ], [ %i.ae, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit16.i.i.i.i.i ], [ %i.u, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit14.i.i.i.i.i ], [ %i.l, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit12.i.i.i.i.i ] ; 9 uses
  %.sroa.4.0.i.ph.i.i.i.i = phi i32 [ %i.s, %bb.b ], [ %i.am, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit16.i.i.i.i.i ], [ %i.ab, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit14.i.i.i.i.i ], [ %i.q, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit12.i.i.i.i.i ] ; 8 uses
  %i.an = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = ptrtoint ptr %.sroa.4.0 to i64
  %i.ap = sub i64 %i.ao, %i.e
  %i.aq = add i64 %i.ap, %i.c                     ; 4 uses
  switch i32 %.sroa.4.0.i.ph.i.i.i.i, label %bb.d [
    i32 32, label %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i
    i32 13, label %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i
    i32 12, label %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i
    i32 11, label %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i
    i32 10, label %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i
    i32 9, label %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i
  ]

bb.d:                                             ; preds = %bb.c
  %i.ar = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i, 133
  br i1 %i.ar, label %_RNvXso_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.as = lshr i32 %.sroa.4.0.i.ph.i.i.i.i, 8
  switch i32 %i.as, label %_RNvXso_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit [
    i32 0, label %bb.h
    i32 22, label %bb.f
    i32 32, label %bb.i
    i32 48, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.at = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i, 5760
  %i.au = zext i1 %i.at to i8
  br label %_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.av = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i, 12288
  %i.aw = zext i1 %i.av to i8
  br label %_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i.i

bb.h:                                             ; preds = %bb.e
  %i.ax = and i32 %.sroa.4.0.i.ph.i.i.i.i, 255
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs4NRVxsYgnAr_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !noalias !50, !noundef !5
  br label %_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i.i

bb.i:                                             ; preds = %bb.e
  %i.bb = and i32 %.sroa.4.0.i.ph.i.i.i.i, 255
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs4NRVxsYgnAr_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !noalias !50, !noundef !5
  %i.bf = lshr i8 %i.be, 1
  br label %_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i.i

_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i.i: ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.sroa.0.0.i.i.i.i.i.i.i = phi i8 [ %i.aw, %bb.g ], [ %i.ba, %bb.h ], [ %i.au, %bb.f ], [ %i.bf, %bb.i ]
  %i.bg = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i to i1
  br i1 %i.bg, label %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i, label %_RNvXso_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit

_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i: ; preds = %_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i.i, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %i.bh = icmp eq ptr %.sroa.4.0, %i.a
  br i1 %i.bh, label %.loopexit, label %.lr.ph.i.i

_RNvXso_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit: ; preds = %bb.e, %_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i.i, %bb.d
  %i.bi = icmp eq ptr %.sroa.4.0, %i.a
  br i1 %i.bi, label %.loopexit, label %.lr.ph.i.i5

.lr.ph.i.i5:                                      ; preds = %_RNvXso_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit, %bb.t
  %i.bj = phi ptr [ %i.ct, %bb.t ], [ %i.a, %_RNvXso_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit ] ; 5 uses
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -1 ; 3 uses
  %i.bl = load i8, ptr %i.bk, align 1, !noalias !51, !noundef !5 ; 3 uses
  %i.bm = icmp sgt i8 %i.bl, -1
  br i1 %i.bm, label %bb.j, label %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit17.i.i.i.i.i

_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit17.i.i.i.i.i: ; preds = %.lr.ph.i.i5
  %i.bn = icmp ne ptr %.sroa.4.0, %i.bk
  tail call void @llvm.assume(i1 %i.bn)
  %i.bo = getelementptr inbounds i8, ptr %i.bj, i64 -2 ; 3 uses
  %i.bp = load i8, ptr %i.bo, align 1, !noalias !51, !noundef !5 ; 3 uses
  %i.bq = and i8 %i.bp, 31
  %i.br = zext nneg i8 %i.bq to i32
  %i.bs = icmp slt i8 %i.bp, -64
  br i1 %i.bs, label %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit19.i.i.i.i.i, label %bb.k

bb.j:                                             ; preds = %.lr.ph.i.i5
  %i.bt = zext nneg i8 %i.bl to i32
  br label %bb.m

_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit19.i.i.i.i.i: ; preds = %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit17.i.i.i.i.i
  %i.bu = icmp ne ptr %.sroa.4.0, %i.bo
  tail call void @llvm.assume(i1 %i.bu)
  %i.bv = getelementptr inbounds i8, ptr %i.bj, i64 -3 ; 3 uses
  %i.bw = load i8, ptr %i.bv, align 1, !noalias !51, !noundef !5 ; 3 uses
  %i.bx = and i8 %i.bw, 15
  %i.by = zext nneg i8 %i.bx to i32
  %i.bz = icmp slt i8 %i.bw, -64
  br i1 %i.bz, label %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit21.i.i.i.i.i, label %bb.l

bb.k:                                             ; preds = %bb.l, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit17.i.i.i.i.i
  %i.ca = phi ptr [ %i.co, %bb.l ], [ %i.bo, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit17.i.i.i.i.i ]
  %.sroa.010.0.i.i.i.i.i = phi i32 [ %i.cs, %bb.l ], [ %i.br, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit17.i.i.i.i.i ]
  %i.cb = shl nuw nsw i32 %.sroa.010.0.i.i.i.i.i, 6
  %i.cc = and i8 %i.bl, 63
  %i.cd = zext nneg i8 %i.cc to i32
  %i.ce = or disjoint i32 %i.cb, %i.cd
  br label %bb.m

_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit21.i.i.i.i.i: ; preds = %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit19.i.i.i.i.i
  %i.cf = icmp ne ptr %.sroa.4.0, %i.bv
  tail call void @llvm.assume(i1 %i.cf)
  %i.cg = getelementptr inbounds i8, ptr %i.bj, i64 -4 ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 1, !noalias !51, !noundef !5
  %i.ci = and i8 %i.ch, 7
  %i.cj = zext nneg i8 %i.ci to i32
  %i.ck = shl nuw nsw i32 %i.cj, 6
  %i.cl = and i8 %i.bw, 63
  %i.cm = zext nneg i8 %i.cl to i32
  %i.cn = or disjoint i32 %i.ck, %i.cm
  br label %bb.l

bb.l:                                             ; preds = %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit21.i.i.i.i.i, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit19.i.i.i.i.i
  %i.co = phi ptr [ %i.cg, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit21.i.i.i.i.i ], [ %i.bv, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit19.i.i.i.i.i ]
  %.sroa.010.1.i.i.i.i.i = phi i32 [ %i.cn, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit21.i.i.i.i.i ], [ %i.by, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit19.i.i.i.i.i ]
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
  br label %_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i.i7

bb.q:                                             ; preds = %bb.o
  %i.cz = icmp eq i32 %.sroa.4.1.i.ph.i.i.i.i, 12288
  %i.da = zext i1 %i.cz to i8
  br label %_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i.i7

bb.r:                                             ; preds = %bb.o
  %i.db = and i32 %.sroa.4.1.i.ph.i.i.i.i, 255
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs4NRVxsYgnAr_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !noalias !52, !noundef !5
  br label %_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i.i7

bb.s:                                             ; preds = %bb.o
  %i.df = and i32 %.sroa.4.1.i.ph.i.i.i.i, 255
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs4NRVxsYgnAr_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1, !noalias !52, !noundef !5
  %i.dj = lshr i8 %i.di, 1
  br label %_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i.i7

_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i.i7: ; preds = %bb.s, %bb.r, %bb.q, %bb.p
  %.sroa.0.0.i.i.i.i.i.i.i8 = phi i8 [ %i.da, %bb.q ], [ %i.de, %bb.r ], [ %i.cy, %bb.p ], [ %i.dj, %bb.s ]
  %i.dk = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i8 to i1
  br i1 %i.dk, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i.i7, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m
  %i.dl = icmp eq ptr %.sroa.4.0, %i.ct
  br i1 %i.dl, label %.loopexit, label %.lr.ph.i.i5

bb.u:                                             ; preds = %_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i.i7, %bb.o, %bb.n
  %i.dm = ptrtoint ptr %i.bj to i64
  %i.dn = ptrtoint ptr %.sroa.4.0 to i64
  %i.do = sub i64 %i.aq, %i.dn
  %i.dp = add i64 %i.do, %i.dm
  br label %.loopexit

.loopexit:                                        ; preds = %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i, %bb.t, %bb.a, %_RNvXso_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit, %bb.u
  %.sroa.0.03035 = phi i64 [ %i.c, %bb.u ], [ %i.c, %_RNvXso_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit ], [ 0, %bb.a ], [ %i.c, %bb.t ], [ 0, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i ] ; 2 uses
  %.sroa.02.1 = phi i64 [ %i.dp, %bb.u ], [ %i.aq, %_RNvXso_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit ], [ 0, %bb.a ], [ %i.aq, %bb.t ], [ 0, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i ]
  %i.dq = sub nuw i64 %.sroa.02.1, %.sroa.0.03035
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.03035
  %i.ds = insertvalue { ptr, i64 } poison, ptr %i.dr, 0
  %i.dt = insertvalue { ptr, i64 } %i.ds, i64 %i.dq, 1
  ret { ptr, i64 } %i.dt
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvMs_NtCsamjPIc071P4_6metric6metricINtB5_6MetricNtNtB7_5gauge8U64GaugeE8recorderNtB7_10AttributesECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !61, !noalias !62, !nonnull !5, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 6 uses
  %i.f = cmpxchg weak ptr %i.e, i8 0, i8 1 acquire monotonic, align 1, !noalias !63
  %i.g = extractvalue { i8, i1 } %i.f, 1
  br i1 %i.g, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.h = invoke noundef zeroext i1 @_RNvMs1_NtCsgIGNhOnZR2a_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.e, i64 undef, i32 noundef -1)
          to label %bb.c unwind label %bb.g, !noalias !63 ; 0 uses

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !noalias !61
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !64
  invoke void @_RNvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8BTreeMapNtCsamjPIc071P4_6metric10AttributesNtNtB18_5gauge8U64GaugeE5entryCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %.noexc.i.i unwind label %bb.d, !noalias !65

.noexc.i.i:                                       ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !64
  %i.j = invoke noundef nonnull align 8 ptr @_RINvMs2_NtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map5entryINtB6_5EntryNtCsamjPIc071P4_6metric10AttributesNtNtB1e_5gauge8U64GaugeE14or_insert_withNCNCINvMs_NtB1e_6metricINtB2z_6MetricB1L_E8observerB1c_E00ECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0)
          to label %_RINvMs_NtCsamjPIc071P4_6metric6metricINtB5_6MetricNtNtB7_5gauge8U64GaugeE8observerNtB7_10AttributesECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit unwind label %bb.d, !noalias !66

bb.d:                                             ; preds = %.noexc.i.i, %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = cmpxchg ptr %i.e, i8 1, i8 0 release monotonic, align 1, !noalias !66
  %i.m = extractvalue { i8, i1 } %i.l, 1
  br i1 %i.m, label %.body.i, label %bb.e, !prof !6

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvMs1_NtCsgIGNhOnZR2a_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull align 8 %i.e, i1 noundef zeroext false)
          to label %.body.i unwind label %bb.f, !noalias !66

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26, !noalias !66
  unreachable

.body.i:                                          ; preds = %bb.g, %bb.e, %bb.d
  %eh.lpad-body4.i = phi { ptr, i32 } [ %i.k, %bb.e ], [ %i.k, %bb.d ], [ %i.o, %bb.g ]
  resume { ptr, i32 } %eh.lpad-body4.i

bb.g:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXNtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB2_8BTreeMapReINtNtB8_6borrow3CoweEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %.body.i unwind label %bb.h, !noalias !61

bb.h:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26, !noalias !61
  unreachable

_RINvMs_NtCsamjPIc071P4_6metric6metricINtB5_6MetricNtNtB7_5gauge8U64GaugeE8observerNtB7_10AttributesECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit: ; preds = %.noexc.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !64
  %.val = load ptr, ptr %i.j, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.q = atomicrmw add ptr %.val, i64 1 monotonic, align 8
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.i, label %_RNvXs_NtCsamjPIc071P4_6metric5gaugeNtB4_8U64GaugeNtNtB6_6metric14MetricObserver8recorder.exit

bb.i:                                             ; preds = %_RINvMs_NtCsamjPIc071P4_6metric6metricINtB5_6MetricNtNtB7_5gauge8U64GaugeE8observerNtB7_10AttributesECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit
  call void @llvm.trap()
  unreachable

_RNvXs_NtCsamjPIc071P4_6metric5gaugeNtB4_8U64GaugeNtNtB6_6metric14MetricObserver8recorder.exit: ; preds = %_RINvMs_NtCsamjPIc071P4_6metric6metricINtB5_6MetricNtNtB7_5gauge8U64GaugeE8observerNtB7_10AttributesECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit
  %i.s = cmpxchg ptr %i.e, i8 1, i8 0 release monotonic, align 1
  %i.t = extractvalue { i8, i1 } %i.s, 1
  br i1 %i.t, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6gU0GsN6MoR_8lock_api5mutex16MappedMutexGuardNtNtCsgIGNhOnZR2a_11parking_lot9raw_mutex8RawMutexNtNtCsamjPIc071P4_6metric5gauge8U64GaugeEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit3, label %bb.j, !prof !6

bb.j:                                             ; preds = %_RNvXs_NtCsamjPIc071P4_6metric5gaugeNtB4_8U64GaugeNtNtB6_6metric14MetricObserver8recorder.exit
  call void @_RNvMs1_NtCsgIGNhOnZR2a_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.e, i1 noundef zeroext false)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6gU0GsN6MoR_8lock_api5mutex16MappedMutexGuardNtNtCsgIGNhOnZR2a_11parking_lot9raw_mutex8RawMutexNtNtCsamjPIc071P4_6metric5gauge8U64GaugeEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit3

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6gU0GsN6MoR_8lock_api5mutex16MappedMutexGuardNtNtCsgIGNhOnZR2a_11parking_lot9raw_mutex8RawMutexNtNtCsamjPIc071P4_6metric5gauge8U64GaugeEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit3: ; preds = %_RNvXs_NtCsamjPIc071P4_6metric5gaugeNtB4_8U64GaugeNtNtB6_6metric14MetricObserver8recorder.exit, %bb.j
  ret ptr %.val
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvMs_NtCsamjPIc071P4_6metric6metricINtB5_6MetricNtNtB7_7counter10U64CounterE8recorderNtB7_10AttributesECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !75, !noalias !76, !nonnull !5, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 6 uses
  %i.f = cmpxchg weak ptr %i.e, i8 0, i8 1 acquire monotonic, align 1, !noalias !77
  %i.g = extractvalue { i8, i1 } %i.f, 1
  br i1 %i.g, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.h = invoke noundef zeroext i1 @_RNvMs1_NtCsgIGNhOnZR2a_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.e, i64 undef, i32 noundef -1)
          to label %bb.c unwind label %bb.g, !noalias !77 ; 0 uses

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !78
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !noalias !75
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !78
  invoke void @_RNvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8BTreeMapNtCsamjPIc071P4_6metric10AttributesNtNtB18_7counter10U64CounterE5entryCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %.noexc.i.i unwind label %bb.d, !noalias !79

.noexc.i.i:                                       ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !78
  %i.j = invoke noundef nonnull align 8 ptr @_RINvMs2_NtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map5entryINtB6_5EntryNtCsamjPIc071P4_6metric10AttributesNtNtB1e_7counter10U64CounterE14or_insert_withNCNCINvMs_NtB1e_6metricINtB2E_6MetricB1L_E8observerB1c_E00ECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0)
          to label %_RINvMs_NtCsamjPIc071P4_6metric6metricINtB5_6MetricNtNtB7_7counter10U64CounterE8observerNtB7_10AttributesECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit unwind label %bb.d, !noalias !80

bb.d:                                             ; preds = %.noexc.i.i, %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = cmpxchg ptr %i.e, i8 1, i8 0 release monotonic, align 1, !noalias !80
  %i.m = extractvalue { i8, i1 } %i.l, 1
  br i1 %i.m, label %.body.i, label %bb.e, !prof !6

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvMs1_NtCsgIGNhOnZR2a_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull align 8 %i.e, i1 noundef zeroext false)
          to label %.body.i unwind label %bb.f, !noalias !80

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26, !noalias !80
  unreachable

.body.i:                                          ; preds = %bb.g, %bb.e, %bb.d
  %eh.lpad-body4.i = phi { ptr, i32 } [ %i.k, %bb.e ], [ %i.k, %bb.d ], [ %i.o, %bb.g ]
  resume { ptr, i32 } %eh.lpad-body4.i

bb.g:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXNtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB2_8BTreeMapReINtNtB8_6borrow3CoweEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %.body.i unwind label %bb.h, !noalias !75

bb.h:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26, !noalias !75
  unreachable

_RINvMs_NtCsamjPIc071P4_6metric6metricINtB5_6MetricNtNtB7_7counter10U64CounterE8observerNtB7_10AttributesECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit: ; preds = %.noexc.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !78
  %.val = load ptr, ptr %i.j, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.q = atomicrmw add ptr %.val, i64 1 monotonic, align 8
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.i, label %_RNvXs_NtCsamjPIc071P4_6metric7counterNtB4_10U64CounterNtNtB6_6metric14MetricObserver8recorder.exit

bb.i:                                             ; preds = %_RINvMs_NtCsamjPIc071P4_6metric6metricINtB5_6MetricNtNtB7_7counter10U64CounterE8observerNtB7_10AttributesECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit
  call void @llvm.trap()
  unreachable

_RNvXs_NtCsamjPIc071P4_6metric7counterNtB4_10U64CounterNtNtB6_6metric14MetricObserver8recorder.exit: ; preds = %_RINvMs_NtCsamjPIc071P4_6metric6metricINtB5_6MetricNtNtB7_7counter10U64CounterE8observerNtB7_10AttributesECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit
  %i.s = cmpxchg ptr %i.e, i8 1, i8 0 release monotonic, align 1
  %i.t = extractvalue { i8, i1 } %i.s, 1
  br i1 %i.t, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6gU0GsN6MoR_8lock_api5mutex16MappedMutexGuardNtNtCsgIGNhOnZR2a_11parking_lot9raw_mutex8RawMutexNtNtCsamjPIc071P4_6metric7counter10U64CounterEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit3, label %bb.j, !prof !6

bb.j:                                             ; preds = %_RNvXs_NtCsamjPIc071P4_6metric7counterNtB4_10U64CounterNtNtB6_6metric14MetricObserver8recorder.exit
  call void @_RNvMs1_NtCsgIGNhOnZR2a_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.e, i1 noundef zeroext false)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6gU0GsN6MoR_8lock_api5mutex16MappedMutexGuardNtNtCsgIGNhOnZR2a_11parking_lot9raw_mutex8RawMutexNtNtCsamjPIc071P4_6metric7counter10U64CounterEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit3

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6gU0GsN6MoR_8lock_api5mutex16MappedMutexGuardNtNtCsgIGNhOnZR2a_11parking_lot9raw_mutex8RawMutexNtNtCsamjPIc071P4_6metric7counter10U64CounterEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit3: ; preds = %_RNvXs_NtCsamjPIc071P4_6metric7counterNtB4_10U64CounterNtNtB6_6metric14MetricObserver8recorder.exit, %bb.j
  ret ptr %.val
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvMs_NtCsamjPIc071P4_6metric6metricINtB5_6MetricNtNtB7_8duration17DurationHistogramE8recorderNtB7_10AttributesECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !89, !noalias !90, !nonnull !5, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 6 uses
  %i.f = cmpxchg weak ptr %i.e, i8 0, i8 1 acquire monotonic, align 1, !noalias !91
  %i.g = extractvalue { i8, i1 } %i.f, 1
  br i1 %i.g, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.h = invoke noundef zeroext i1 @_RNvMs1_NtCsgIGNhOnZR2a_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.e, i64 undef, i32 noundef -1)
          to label %bb.c unwind label %bb.g, !noalias !91 ; 0 uses

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !92
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !noalias !89
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48
end_hunk_0
