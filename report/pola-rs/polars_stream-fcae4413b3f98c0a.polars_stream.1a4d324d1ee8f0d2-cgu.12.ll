Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_stream-fcae4413b3f98c0a.polars_stream.1a4d324d1ee8f0d2-cgu.12?download=true
inline.NumInlined: 9846
inline.NumDeleted: 4307
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0
@432 = private unnamed_addr constant [9 x i8] c"SQLSyntax", align 1
@433 = private unnamed_addr constant [19 x i8] c"StringCacheMismatch", align 1
@434 = private unnamed_addr constant [19 x i8] c"StructFieldNotFound", align 1
@435 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEECs2g09Ig8GZd6_13polars_stream, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsn_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENtNtCscgRAwXFJnXP_4core3fmt5Debug3fmtCs2g09Ig8GZd6_13polars_stream }>, align 8
@436 = private unnamed_addr constant [7 x i8] c"Context", align 1
@437 = private unnamed_addr constant [11 x i8] c"ExprContext", align 1
@438 = private unnamed_addr constant [4 x i8] c"expr", align 1
@439 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRNtNtCsgjwxzEoLG5s_12polars_error6python9PyErrWrapNtB6_5Debug3fmtCs2g09Ig8GZd6_13polars_stream }>, align 8
@440 = private unnamed_addr constant [6 x i8] c"Python", align 1
@441 = private unnamed_addr constant [12 x i8] c"AcquireError", align 1
@442 = private unnamed_addr constant [11 x i8] c"AccessKeyId", align 1
@443 = private unnamed_addr constant [15 x i8] c"SecretAccessKey", align 1
@444 = private unnamed_addr constant [6 x i8] c"Region", align 1
@445 = private unnamed_addr constant [13 x i8] c"DefaultRegion", align 1
@446 = private unnamed_addr constant [6 x i8] c"Bucket", align 1
@447 = private unnamed_addr constant [8 x i8] c"Endpoint", align 1
@448 = private unnamed_addr constant [10 x i8] c"S3Endpoint", align 1
@449 = private unnamed_addr constant [5 x i8] c"Token", align 1
@450 = private unnamed_addr constant [14 x i8] c"ImdsV1Fallback", align 1
@451 = private unnamed_addr constant [25 x i8] c"VirtualHostedStyleRequest", align 1
@452 = private unnamed_addr constant [15 x i8] c"UnsignedPayload", align 1
@453 = private unnamed_addr constant [8 x i8] c"Checksum", align 1
@454 = private unnamed_addr constant [16 x i8] c"MetadataEndpoint", align 1
@455 = private unnamed_addr constant [31 x i8] c"ContainerCredentialsRelativeUri", align 1
@456 = private unnamed_addr constant [27 x i8] c"ContainerCredentialsFullUri", align 1
@457 = private unnamed_addr constant [31 x i8] c"ContainerAuthorizationTokenFile", align 1
@458 = private unnamed_addr constant [20 x i8] c"WebIdentityTokenFile", align 1
@459 = private unnamed_addr constant [7 x i8] c"RoleArn", align 1
@460 = private unnamed_addr constant [15 x i8] c"RoleSessionName", align 1
@461 = private unnamed_addr constant [11 x i8] c"StsEndpoint", align 1
@462 = private unnamed_addr constant [15 x i8] c"CopyIfNotExists", align 1
@463 = private unnamed_addr constant [14 x i8] c"ConditionalPut", align 1
@464 = private unnamed_addr constant [13 x i8] c"SkipSignature", align 1
@465 = private unnamed_addr constant [14 x i8] c"DisableTagging", align 1
@466 = private unnamed_addr constant [9 x i8] c"S3Express", align 1
@467 = private unnamed_addr constant [12 x i8] c"RequestPayer", align 1
@468 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRNtNtCs8RKTHBS4OBx_12object_store6client15ClientConfigKeyNtB6_5Debug3fmtCs2g09Ig8GZd6_13polars_stream }>, align 8
@469 = private unnamed_addr constant [6 x i8] c"Client", align 1
@470 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRNtNtNtCs8RKTHBS4OBx_12object_store3aws7builder21S3EncryptionConfigKeyNtB6_5Debug3fmtCs2g09Ig8GZd6_13polars_stream }>, align 8
@471 = private unnamed_addr constant [10 x i8] c"Encryption", align 1
@472 = private unnamed_addr constant [28 x i8] c"failed to write whole buffer", align 1
@473 = private unnamed_addr constant <{ ptr, [9 x i8], [7 x i8] }> <{ ptr @472, [9 x i8] c"\1C\00\00\00\00\00\00\00\17", [7 x i8] undef }>, align 8
@474 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCNvYNtNtCs8RKTHBS4OBx_12object_store3gcp18GoogleCloudStorageNtBP_11ObjectStore10get_ranges0ECs2g09Ig8GZd6_13polars_stream, [16 x i8] c"\08\01\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNCNvYNtNtCs8RKTHBS4OBx_12object_store3gcp18GoogleCloudStorageNtB8_11ObjectStore10get_ranges0Cs2g09Ig8GZd6_13polars_stream }>, align 8
@475 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCNvYNtNtCs8RKTHBS4OBx_12object_store3gcp18GoogleCloudStorageNtBP_11ObjectStore11rename_opts0ECs2g09Ig8GZd6_13polars_stream, [16 x i8] c"\80\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNCNvYNtNtCs8RKTHBS4OBx_12object_store3gcp18GoogleCloudStorageNtB8_11ObjectStore11rename_opts0Cs2g09Ig8GZd6_13polars_stream }>, align 8
@476 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCNvYNtNtCs8RKTHBS4OBx_12object_store4http9HttpStoreNtBP_11ObjectStore10get_ranges0ECs2g09Ig8GZd6_13polars_stream, [16 x i8] c"\08\01\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNCNvYNtNtCs8RKTHBS4OBx_12object_store4http9HttpStoreNtB8_11ObjectStore10get_ranges0Cs2g09Ig8GZd6_13polars_stream }>, align 8
@477 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCNvYNtNtCs8RKTHBS4OBx_12object_store4http9HttpStoreNtBP_11ObjectStore11rename_opts0ECs2g09Ig8GZd6_13polars_stream, [16 x i8] c"\80\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNCNvYNtNtCs8RKTHBS4OBx_12object_store4http9HttpStoreNtB8_11ObjectStore11rename_opts0Cs2g09Ig8GZd6_13polars_stream }>, align 8
@478 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr }> <{ ptr @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCslt8cbK4E2O5_12futures_util6stream10try_stream10try_filter9TryFilterINtNtB4_3pin3PinINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCsakNx6c7aNgo_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtCs8RKTHBS4OBx_12object_store10ObjectMetaNtB40_5ErrorENtNtB4_6marker4SendEL_EEINtNtNtBP_6future5ready5ReadybENCNvYNtNtB40_4http9HttpStoreNtB40_11ObjectStore16list_with_offset0EECs2g09Ig8GZd6_13polars_stream, [16 x i8] c"\90\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1_NtNtNtCslt8cbK4E2O5_12futures_util6stream10try_stream10try_filterINtB5_9TryFilterINtNtCscgRAwXFJnXP_4core3pin3PinINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCsakNx6c7aNgo_12futures_core6stream6Streamp4ItemINtNtB1t_6result6ResultNtCs8RKTHBS4OBx_12object_store10ObjectMetaNtB3J_5ErrorENtNtB1t_6marker4SendEL_EEINtNtNtBb_6future5ready5ReadybENCNvYNtNtB3J_4http9HttpStoreNtB3J_11ObjectStore16list_with_offset0EB2u_9poll_nextCs2g09Ig8GZd6_13polars_stream, ptr @_RNvXs1_NtNtNtCslt8cbK4E2O5_12futures_util6stream10try_stream10try_filterINtB5_9TryFilterINtNtCscgRAwXFJnXP_4core3pin3PinINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCsakNx6c7aNgo_12futures_core6stream6Streamp4ItemINtNtB1t_6result6ResultNtCs8RKTHBS4OBx_12object_store10ObjectMetaNtB3J_5ErrorENtNtB1t_6marker4SendEL_EEINtNtNtBb_6future5ready5ReadybENCNvYNtNtB3J_4http9HttpStoreNtB3J_11ObjectStore16list_with_offset0EB2u_9size_hintCs2g09Ig8GZd6_13polars_stream }>, align 8
@479 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @270, [16 x i8] c"I\00\00\00\00\00\00\00Y\07\00\00$\00\00\00" }>, align 8
@480 = private unnamed_addr constant [40 x i8] c"description() is deprecated; use Display", align 1
@481 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -604323603932567398 to ptr), ptr inttoptr (i64 5344794030256500925 to ptr) }>, align 8
@switch.table._RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRNtNtNtCs8RKTHBS4OBx_12object_store3aws7builder21S3EncryptionConfigKeyNtB6_5Debug3fmtCs2g09Ig8GZd6_13polars_stream = private unnamed_addr constant [4 x i8] c"\14\08\10\15", align 8
@switch.table._RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRNtNtNtCs8RKTHBS4OBx_12object_store3aws7builder21S3EncryptionConfigKeyNtB6_5Debug3fmtCs2g09Ig8GZd6_13polars_stream.1380 = private unnamed_addr constant [4 x ptr] [ptr @369, ptr @370, ptr @371, ptr @372], align 8
@switch.table._RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRRNtNtNtCslpwjCj2YNBy_9polars_io5cloud18concurrency_config19ConcurrencyStrategyNtB6_5Debug3fmtCs2g09Ig8GZd6_13polars_stream = private unnamed_addr constant [3 x i8] c"\09\06\0A", align 8
@switch.table._RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRRNtNtNtCslpwjCj2YNBy_9polars_io5cloud18concurrency_config19ConcurrencyStrategyNtB6_5Debug3fmtCs2g09Ig8GZd6_13polars_stream.1382 = private unnamed_addr constant [3 x ptr] [ptr @333, ptr @334, ptr @335], align 8

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc void @_RINvCsgjwxzEoLG5s_12polars_error14to_compute_errNtNtNtCscgRAwXFJnXP_4core3str5error9Utf8ErrorECs2g09Ig8GZd6_13polars_stream(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dead_on_return dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !5052 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !5075
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !5076, !noalias !5071
  store i64 0, ptr %i.c, align 8, !dbg !5077, !noalias !5071
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !5077
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i, align 8, !dbg !5077, !noalias !5071
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !5077
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !dbg !5077, !noalias !5071
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !5078, !noalias !5071
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !5079
  store i32 1610612768, ptr %i.e, align 8, !dbg !5079, !noalias !5071
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20, !dbg !5079
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !dbg !5079, !noalias !5071
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 22, !dbg !5079
  store i16 0, ptr %.sroa.5.0..sroa_idx.i.i, align 2, !dbg !5079, !noalias !5071
  store ptr %i.c, ptr %i.b, align 8, !dbg !5079, !noalias !5071
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !5079
  store ptr @365, ptr %i.f, align 8, !dbg !5079, !noalias !5071
  %i.g = invoke noundef zeroext i1 @_RNvXs_NtNtCscgRAwXFJnXP_4core3str5errorNtB4_9Utf8ErrorNtNtB8_3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.c unwind label %bb.b, !dbg !5080, !noalias !5072

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #35
          to label %bb.f unwind label %bb.e, !dbg !5081, !noalias !5072

bb.c:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.d, label %_RNvXsB_NtCsgZ49sUHp3tW_5alloc6stringNtNtNtCscgRAwXFJnXP_4core3str5error9Utf8ErrorNtB5_8ToString9to_stringCs2g09Ig8GZd6_13polars_stream.exit, !dbg !5082, !prof !3798

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @366, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @242, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @368) #36
          to label %.noexc.i.i unwind label %bb.b, !dbg !5083, !noalias !5072

.noexc.i.i:                                       ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !5084, !noalias !5072
  unreachable, !dbg !5084

bb.f:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.h, !dbg !5084

_RNvXsB_NtCsgZ49sUHp3tW_5alloc6stringNtNtNtCscgRAwXFJnXP_4core3str5error9Utf8ErrorNtB5_8ToString9to_stringCs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !5085, !noalias !5073
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !5086, !noalias !5071
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !5081, !noalias !5071
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !5087
  call void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1), !dbg !5088
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !5089
  store i64 2, ptr %0, align 8, !dbg !5087
  ret void, !dbg !5090
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvMCsidoPH4Qgqxm_12polars_asyncNtB3_14RuntimeManager14spawn_blockingNCNCNCNCNvMNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan10components13row_deletionsNtB1h_21DeletionFilesProvider24spawn_row_deletions_inits0_0000INtNtCscgRAwXFJnXP_4core6result6ResultINtNtB3U_6option6OptionINtNtNtCs8774dFTUdNv_12polars_arrow5array4list9ListArrayxEENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB1r_(ptr noundef nonnull align 8 captures(address, read_provenance) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !5091 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !5147 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !5148, !range !3814, !noundef !3786
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !5148
  %i.h = trunc nuw i64 %i.f to i1, !dbg !5149     ; 2 uses
  %i.i = load ptr, ptr %i.g, align 8, !dbg !5150, !nonnull !3786, !noundef !3786 ; 2 uses
  %. = select i1 %i.h, i64 480, i64 712, !dbg !5151
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %., !dbg !5152
  br label %bb.b, !dbg !5153

bb.b:                                             ; preds = %bb.b, %bb.a
  %i.k = atomicrmw add ptr @_RNvNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !dbg !5154, !noalias !5141 ; 2 uses
  %.not.i.i = icmp eq i64 %i.k, 0, !dbg !5155
  br i1 %.not.i.i, label %bb.b, label %bb.c, !dbg !5156

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !5157, !noalias !5141
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(32) %1, i64 32, i1 false), !dbg !5157, !noalias !5142
  %.sroa.01.0.v.i.i.i = select i1 %i.h, i64 504, i64 512, !dbg !5158
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sroa.01.0.v.i.i.i, !dbg !5158 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16, !dbg !5159
  %i.m = load ptr, ptr %i.l, align 8, !dbg !5160, !noalias !5141, !noundef !3786 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.m, null, !dbg !5160
  br i1 %.not.i.i.i, label %bb.f, label %bb.d, !dbg !5161

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24, !dbg !5160
  %i.o = load ptr, ptr %i.n, align 8, !dbg !5162, !noalias !5141, !nonnull !3786, !align !3839, !noundef !3786
  %i.p = atomicrmw add ptr %i.m, i64 1 monotonic, align 8, !dbg !5163, !noalias !5141
  %i.q = icmp slt i64 %i.p, 0, !dbg !5164
  br i1 %i.q, label %bb.e, label %bb.f, !dbg !5164

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.trap(), !dbg !5165
  unreachable, !dbg !5165

bb.f:                                             ; preds = %bb.d, %bb.c
  %.sroa.5.0.i.i.i = phi ptr [ undef, %bb.c ], [ %i.o, %bb.d ], !dbg !5166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !5167, !noalias !5141
  call void @_RINvNtNtCskmDBXs7hs3c_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCNCNCNvMNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan10components13row_deletionsNtB1z_21DeletionFilesProvider24spawn_row_deletions_inits0_0000ENtNtBR_8schedule16BlockingScheduleEB1J_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, ptr noundef %i.m, ptr %.sroa.5.0.i.i.i, i64 noundef %i.k), !dbg !5167, !noalias !5141
  %i.r = load ptr, ptr %i.a, align 8, !dbg !5168, !noalias !5141, !nonnull !3786, !noundef !3786
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !5169
  %i.t = load ptr, ptr %i.s, align 8, !dbg !5169, !noalias !5141, !nonnull !3786, !noundef !3786 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !5170, !noalias !5141
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !5171, !noalias !5141
  %i.u = invoke { i64, ptr } @_RNvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j, ptr noundef nonnull %i.r, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
          to label %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNCNCNvMNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan10components13row_deletionsNtB1C_21DeletionFilesProvider24spawn_row_deletions_inits0_0000INtNtCscgRAwXFJnXP_4core6result6ResultINtNtB4f_6option6OptionINtNtNtCs8774dFTUdNv_12polars_arrow5array4list9ListArrayxEENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB1M_.exit.i unwind label %bb.g, !dbg !5172, !noalias !5143 ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = invoke noundef zeroext i1 @_RNvMNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i.i unwind label %bb.i, !dbg !5173, !noalias !5143

.noexc.i.i:                                       ; preds = %bb.g
  br i1 %i.w, label %bb.h, label %common.resume.i, !dbg !5174

bb.h:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %common.resume.i unwind label %bb.i, !dbg !5175, !noalias !5143

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !5176, !noalias !5143
  unreachable, !dbg !5176

common.resume.i:                                  ; preds = %bb.o, %.noexc.i, %bb.h, %.noexc.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.v, %.noexc.i.i ], [ %i.v, %bb.h ], [ %i.ab, %.noexc.i ], [ %i.ab, %bb.o ]
  resume { ptr, i32 } %common.resume.op.i, !dbg !5177

_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNCNCNvMNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan10components13row_deletionsNtB1C_21DeletionFilesProvider24spawn_row_deletions_inits0_0000INtNtCscgRAwXFJnXP_4core6result6ResultINtNtB4f_6option6OptionINtNtNtCs8774dFTUdNv_12polars_arrow5array4list9ListArrayxEENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB1M_.exit.i: ; preds = %bb.f
  %i.y = extractvalue { i64, ptr } %i.u, 0, !dbg !5178
  %i.z = extractvalue { i64, ptr } %i.u, 1, !dbg !5178 ; 2 uses
  %i.aa = trunc nuw i64 %i.y to i1, !dbg !5179
  %.not.i = icmp ne ptr %i.z, null
  %or.cond.not.i = select i1 %i.aa, i1 %.not.i, i1 false, !dbg !5179, !prof !3854
  br i1 %or.cond.not.i, label %bb.j, label %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCNCNCNvMNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan10components13row_deletionsNtB1w_21DeletionFilesProvider24spawn_row_deletions_inits0_0000INtNtCscgRAwXFJnXP_4core6result6ResultINtNtB49_6option6OptionINtNtNtCs8774dFTUdNv_12polars_arrow5array4list9ListArrayxEENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB1G_.exit, !dbg !5179, !prof !3854

bb.j:                                             ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNCNCNvMNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan10components13row_deletionsNtB1C_21DeletionFilesProvider24spawn_row_deletions_inits0_0000INtNtCscgRAwXFJnXP_4core6result6ResultINtNtB4f_6option6OptionINtNtNtCs8774dFTUdNv_12polars_arrow5array4list9ListArrayxEENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB1M_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !5180, !noalias !5144
  store ptr %i.z, ptr %i.d, align 8, !dbg !5180, !noalias !5144
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !5181, !noalias !5144
  store ptr %i.d, ptr %i.c, align 8, !dbg !5181, !noalias !5144
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !5181
  store ptr @_RNvXs7_NtNtCsh8eZTKRCwoO_3std2io5errorNtB5_5ErrorNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !dbg !5181, !noalias !5144
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @20, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #36
          to label %bb.l unwind label %bb.k, !dbg !5182, !noalias !5146

bb.k:                                             ; preds = %bb.j
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val15.i = load ptr, ptr %i.d, align 8, !dbg !5183, !noalias !5144, !nonnull !3786, !noundef !3786
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream(ptr nonnull %.val15.i) #35
          to label %bb.n unwind label %bb.m, !dbg !5183, !noalias !5146

bb.l:                                             ; preds = %bb.j
  unreachable

bb.m:                                             ; preds = %bb.o, %bb.n, %bb.k
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !5184, !noalias !5146
  unreachable, !dbg !5184

bb.n:                                             ; preds = %bb.k
  %i.ad = invoke noundef zeroext i1 @_RNvMNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i unwind label %bb.m, !dbg !5185, !noalias !5146

.noexc.i:                                         ; preds = %bb.n
  br i1 %i.ad, label %bb.o, label %common.resume.i, !dbg !5186

bb.o:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %common.resume.i unwind label %bb.m, !dbg !5187, !noalias !5146

_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCNCNCNvMNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan10components13row_deletionsNtB1w_21DeletionFilesProvider24spawn_row_deletions_inits0_0000INtNtCscgRAwXFJnXP_4core6result6ResultINtNtB49_6option6OptionINtNtNtCs8774dFTUdNv_12polars_arrow5array4list9ListArrayxEENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB1G_.exit: ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNCNCNvMNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan10components13row_deletionsNtB1C_21DeletionFilesProvider24spawn_row_deletions_inits0_0000INtNtCscgRAwXFJnXP_4core6result6ResultINtNtB4f_6option6OptionINtNtNtCs8774dFTUdNv_12polars_arrow5array4list9ListArrayxEENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB1M_.exit.i
  ret ptr %i.t, !dbg !5188
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvMCsidoPH4Qgqxm_12polars_asyncNtB3_14RuntimeManager14spawn_blockingNCNCNvMNtCs2g09Ig8GZd6_13polars_stream10expressionNtB1d_10StreamExpr18evaluate_on_groups00INtNtCscgRAwXFJnXP_4core6result6ResultNtNtCskY9G75ZWc4U_11polars_expr11expressions18AggregationContextNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB1f_(ptr noundef nonnull align 8 captures(address, read_provenance) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(248) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !5189 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [248 x i8], align 8               ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !5245 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !5246, !range !3814, !noundef !3786
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !5246
  %i.h = trunc nuw i64 %i.f to i1, !dbg !5247     ; 2 uses
  %i.i = load ptr, ptr %i.g, align 8, !dbg !5248, !nonnull !3786, !noundef !3786 ; 2 uses
  %. = select i1 %i.h, i64 480, i64 712, !dbg !5249
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %., !dbg !5250
  br label %bb.b, !dbg !5251

bb.b:                                             ; preds = %bb.b, %bb.a
  %i.k = atomicrmw add ptr @_RNvNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !dbg !5252, !noalias !5239 ; 2 uses
  %.not.i.i = icmp eq i64 %i.k, 0, !dbg !5253
  br i1 %.not.i.i, label %bb.b, label %bb.c, !dbg !5254

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !5255, !noalias !5239
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(248) %1, i64 248, i1 false), !dbg !5255, !noalias !5240
  %.sroa.01.0.v.i.i.i = select i1 %i.h, i64 504, i64 512, !dbg !5256
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sroa.01.0.v.i.i.i, !dbg !5256 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16, !dbg !5257
  %i.m = load ptr, ptr %i.l, align 8, !dbg !5258, !noalias !5239, !noundef !3786 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.m, null, !dbg !5258
  br i1 %.not.i.i.i, label %bb.f, label %bb.d, !dbg !5259

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24, !dbg !5258
  %i.o = load ptr, ptr %i.n, align 8, !dbg !5260, !noalias !5239, !nonnull !3786, !align !3839, !noundef !3786
  %i.p = atomicrmw add ptr %i.m, i64 1 monotonic, align 8, !dbg !5261, !noalias !5239
  %i.q = icmp slt i64 %i.p, 0, !dbg !5262
  br i1 %i.q, label %bb.e, label %bb.f, !dbg !5262

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.trap(), !dbg !5263
  unreachable, !dbg !5263

bb.f:                                             ; preds = %bb.d, %bb.c
  %.sroa.5.0.i.i.i = phi ptr [ undef, %bb.c ], [ %i.o, %bb.d ], !dbg !5264
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !5265, !noalias !5239
  call void @_RINvNtNtCskmDBXs7hs3c_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCNvMNtCs2g09Ig8GZd6_13polars_stream10expressionNtB1v_10StreamExpr18evaluate_on_groups00ENtNtBR_8schedule16BlockingScheduleEB1x_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(248) %i.b, ptr noundef %i.m, ptr %.sroa.5.0.i.i.i, i64 noundef %i.k), !dbg !5265, !noalias !5239
  %i.r = load ptr, ptr %i.a, align 8, !dbg !5266, !noalias !5239, !nonnull !3786, !noundef !3786
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !5267
  %i.t = load ptr, ptr %i.s, align 8, !dbg !5267, !noalias !5239, !nonnull !3786, !noundef !3786 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !5268, !noalias !5239
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !5269, !noalias !5239
  %i.u = invoke { i64, ptr } @_RNvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j, ptr noundef nonnull %i.r, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
          to label %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtCs2g09Ig8GZd6_13polars_stream10expressionNtB1y_10StreamExpr18evaluate_on_groups00INtNtCscgRAwXFJnXP_4core6result6ResultNtNtCskY9G75ZWc4U_11polars_expr11expressions18AggregationContextNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB1A_.exit.i unwind label %bb.g, !dbg !5270, !noalias !5241 ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = invoke noundef zeroext i1 @_RNvMNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i.i unwind label %bb.i, !dbg !5271, !noalias !5241

.noexc.i.i:                                       ; preds = %bb.g
  br i1 %i.w, label %bb.h, label %common.resume.i, !dbg !5272

bb.h:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %common.resume.i unwind label %bb.i, !dbg !5273, !noalias !5241

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !5274, !noalias !5241
  unreachable, !dbg !5274

common.resume.i:                                  ; preds = %bb.o, %.noexc.i, %bb.h, %.noexc.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.v, %.noexc.i.i ], [ %i.v, %bb.h ], [ %i.ab, %.noexc.i ], [ %i.ab, %bb.o ]
  resume { ptr, i32 } %common.resume.op.i, !dbg !5275

_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtCs2g09Ig8GZd6_13polars_stream10expressionNtB1y_10StreamExpr18evaluate_on_groups00INtNtCscgRAwXFJnXP_4core6result6ResultNtNtCskY9G75ZWc4U_11polars_expr11expressions18AggregationContextNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB1A_.exit.i: ; preds = %bb.f
  %i.y = extractvalue { i64, ptr } %i.u, 0, !dbg !5276
  %i.z = extractvalue { i64, ptr } %i.u, 1, !dbg !5276 ; 2 uses
  %i.aa = trunc nuw i64 %i.y to i1, !dbg !5277
  %.not.i = icmp ne ptr %i.z, null
  %or.cond.not.i = select i1 %i.aa, i1 %.not.i, i1 false, !dbg !5277, !prof !3854
  br i1 %or.cond.not.i, label %bb.j, label %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCNvMNtCs2g09Ig8GZd6_13polars_stream10expressionNtB1s_10StreamExpr18evaluate_on_groups00INtNtCscgRAwXFJnXP_4core6result6ResultNtNtCskY9G75ZWc4U_11polars_expr11expressions18AggregationContextNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB1u_.exit, !dbg !5277, !prof !3854

bb.j:                                             ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtCs2g09Ig8GZd6_13polars_stream10expressionNtB1y_10StreamExpr18evaluate_on_groups00INtNtCscgRAwXFJnXP_4core6result6ResultNtNtCskY9G75ZWc4U_11polars_expr11expressions18AggregationContextNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB1A_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !5278, !noalias !5242
  store ptr %i.z, ptr %i.d, align 8, !dbg !5278, !noalias !5242
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !5279, !noalias !5242
  store ptr %i.d, ptr %i.c, align 8, !dbg !5279, !noalias !5242
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !5279
  store ptr @_RNvXs7_NtNtCsh8eZTKRCwoO_3std2io5errorNtB5_5ErrorNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !dbg !5279, !noalias !5242
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @20, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #36
          to label %bb.l unwind label %bb.k, !dbg !5280, !noalias !5244

bb.k:                                             ; preds = %bb.j
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i = load ptr, ptr %i.d, align 8, !dbg !5281, !noalias !5242, !nonnull !3786, !noundef !3786
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream(ptr nonnull %.val.i) #35
          to label %bb.n unwind label %bb.m, !dbg !5281, !noalias !5244

bb.l:                                             ; preds = %bb.j
  unreachable

bb.m:                                             ; preds = %bb.o, %bb.n, %bb.k
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !5282, !noalias !5244
  unreachable, !dbg !5282

bb.n:                                             ; preds = %bb.k
  %i.ad = invoke noundef zeroext i1 @_RNvMNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i unwind label %bb.m, !dbg !5283, !noalias !5244

.noexc.i:                                         ; preds = %bb.n
  br i1 %i.ad, label %bb.o, label %common.resume.i, !dbg !5284

bb.o:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %common.resume.i unwind label %bb.m, !dbg !5285, !noalias !5244

_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCNvMNtCs2g09Ig8GZd6_13polars_stream10expressionNtB1s_10StreamExpr18evaluate_on_groups00INtNtCscgRAwXFJnXP_4core6result6ResultNtNtCskY9G75ZWc4U_11polars_expr11expressions18AggregationContextNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB1u_.exit: ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtCs2g09Ig8GZd6_13polars_stream10expressionNtB1y_10StreamExpr18evaluate_on_groups00INtNtCscgRAwXFJnXP_4core6result6ResultNtNtCskY9G75ZWc4U_11polars_expr11expressions18AggregationContextNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB1A_.exit.i
  ret ptr %i.t, !dbg !5286
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvMCsidoPH4Qgqxm_12polars_asyncNtB3_14RuntimeManager14spawn_blockingNCNCNvMNtCs2g09Ig8GZd6_13polars_stream10expressionNtB1d_10StreamExpr8evaluate00INtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB1f_(ptr noundef nonnull align 8 captures(address, read_provenance) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(168) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !5287 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [168 x i8], align 8               ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !5342 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !5343, !range !3814, !noundef !3786
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !5343
  %i.h = trunc nuw i64 %i.f to i1, !dbg !5344     ; 2 uses
  %i.i = load ptr, ptr %i.g, align 8, !dbg !5345, !nonnull !3786, !noundef !3786 ; 2 uses
  %. = select i1 %i.h, i64 480, i64 712, !dbg !5346
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %., !dbg !5347
  br label %bb.b, !dbg !5348

bb.b:                                             ; preds = %bb.b, %bb.a
  %i.k = atomicrmw add ptr @_RNvNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !dbg !5349, !noalias !5336 ; 2 uses
  %.not.i.i = icmp eq i64 %i.k, 0, !dbg !5350
  br i1 %.not.i.i, label %bb.b, label %bb.c, !dbg !5351

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !5352, !noalias !5336
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(168) %1, i64 168, i1 false), !dbg !5352, !noalias !5337
  %.sroa.01.0.v.i.i.i = select i1 %i.h, i64 504, i64 512, !dbg !5353
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sroa.01.0.v.i.i.i, !dbg !5353 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16, !dbg !5354
  %i.m = load ptr, ptr %i.l, align 8, !dbg !5355, !noalias !5336, !noundef !3786 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.m, null, !dbg !5355
  br i1 %.not.i.i.i, label %bb.f, label %bb.d, !dbg !5356

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24, !dbg !5355
  %i.o = load ptr, ptr %i.n, align 8, !dbg !5357, !noalias !5336, !nonnull !3786, !align !3839, !noundef !3786
  %i.p = atomicrmw add ptr %i.m, i64 1 monotonic, align 8, !dbg !5358, !noalias !5336
  %i.q = icmp slt i64 %i.p, 0, !dbg !5359
  br i1 %i.q, label %bb.e, label %bb.f, !dbg !5359

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.trap(), !dbg !5360
  unreachable, !dbg !5360

bb.f:                                             ; preds = %bb.d, %bb.c
  %.sroa.5.0.i.i.i = phi ptr [ undef, %bb.c ], [ %i.o, %bb.d ], !dbg !5361
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !5362, !noalias !5336
  call void @_RINvNtNtCskmDBXs7hs3c_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCNvMNtCs2g09Ig8GZd6_13polars_stream10expressionNtB1v_10StreamExpr8evaluate00ENtNtBR_8schedule16BlockingScheduleEB1x_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(168) %i.b, ptr noundef %i.m, ptr %.sroa.5.0.i.i.i, i64 noundef %i.k), !dbg !5362, !noalias !5336
  %i.r = load ptr, ptr %i.a, align 8, !dbg !5363, !noalias !5336, !nonnull !3786, !noundef !3786
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !5364
  %i.t = load ptr, ptr %i.s, align 8, !dbg !5364, !noalias !5336, !nonnull !3786, !noundef !3786 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !5365, !noalias !5336
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !5366, !noalias !5336
  %i.u = invoke { i64, ptr } @_RNvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j, ptr noundef nonnull %i.r, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
          to label %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtCs2g09Ig8GZd6_13polars_stream10expressionNtB1y_10StreamExpr8evaluate00INtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB1A_.exit.i unwind label %bb.g, !dbg !5367, !noalias !5338 ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = invoke noundef zeroext i1 @_RNvMNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i.i unwind label %bb.i, !dbg !5368, !noalias !5338

.noexc.i.i:                                       ; preds = %bb.g
  br i1 %i.w, label %bb.h, label %common.resume.i, !dbg !5369

bb.h:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %common.resume.i unwind label %bb.i, !dbg !5370, !noalias !5338

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !5371, !noalias !5338
  unreachable, !dbg !5371

common.resume.i:                                  ; preds = %bb.o, %.noexc.i, %bb.h, %.noexc.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.v, %.noexc.i.i ], [ %i.v, %bb.h ], [ %i.ab, %.noexc.i ], [ %i.ab, %bb.o ]
  resume { ptr, i32 } %common.resume.op.i, !dbg !5372

_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtCs2g09Ig8GZd6_13polars_stream10expressionNtB1y_10StreamExpr8evaluate00INtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB1A_.exit.i: ; preds = %bb.f
  %i.y = extractvalue { i64, ptr } %i.u, 0, !dbg !5373
  %i.z = extractvalue { i64, ptr } %i.u, 1, !dbg !5373 ; 2 uses
  %i.aa = trunc nuw i64 %i.y to i1, !dbg !5374
  %.not.i = icmp ne ptr %i.z, null
  %or.cond.not.i = select i1 %i.aa, i1 %.not.i, i1 false, !dbg !5374, !prof !3854
  br i1 %or.cond.not.i, label %bb.j, label %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCNvMNtCs2g09Ig8GZd6_13polars_stream10expressionNtB1s_10StreamExpr8evaluate00INtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB1u_.exit, !dbg !5374, !prof !3854

bb.j:                                             ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtCs2g09Ig8GZd6_13polars_stream10expressionNtB1y_10StreamExpr8evaluate00INtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB1A_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !5375, !noalias !5339
  store ptr %i.z, ptr %i.d, align 8, !dbg !5375, !noalias !5339
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !5376, !noalias !5339
  store ptr %i.d, ptr %i.c, align 8, !dbg !5376, !noalias !5339
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !5376
  store ptr @_RNvXs7_NtNtCsh8eZTKRCwoO_3std2io5errorNtB5_5ErrorNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !dbg !5376, !noalias !5339
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @20, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #36
          to label %bb.l unwind label %bb.k, !dbg !5377, !noalias !5341

bb.k:                                             ; preds = %bb.j
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i = load ptr, ptr %i.d, align 8, !dbg !5378, !noalias !5339, !nonnull !3786, !noundef !3786
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream(ptr nonnull %.val.i) #35
          to label %bb.n unwind label %bb.m, !dbg !5378, !noalias !5341

bb.l:                                             ; preds = %bb.j
  unreachable

bb.m:                                             ; preds = %bb.o, %bb.n, %bb.k
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !5379, !noalias !5341
  unreachable, !dbg !5379

bb.n:                                             ; preds = %bb.k
  %i.ad = invoke noundef zeroext i1 @_RNvMNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i unwind label %bb.m, !dbg !5380, !noalias !5341

.noexc.i:                                         ; preds = %bb.n
  br i1 %i.ad, label %bb.o, label %common.resume.i, !dbg !5381

bb.o:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %common.resume.i unwind label %bb.m, !dbg !5382, !noalias !5341

_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCNvMNtCs2g09Ig8GZd6_13polars_stream10expressionNtB1s_10StreamExpr8evaluate00INtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB1u_.exit: ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtCs2g09Ig8GZd6_13polars_stream10expressionNtB1y_10StreamExpr8evaluate00INtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB1A_.exit.i
  ret ptr %i.t, !dbg !5383
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvMCsidoPH4Qgqxm_12polars_asyncNtB3_14RuntimeManager14spawn_blockingNCNCNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources3csv17line_batch_sourceNtB1d_15LineBatchSource9run_async00INtNtCscgRAwXFJnXP_4core6result6ResultjNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB1l_(ptr noundef nonnull align 8 captures(address, read_provenance) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(456) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !5384 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [456 x i8], align 8               ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !5439 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !5440, !range !3814, !noundef !3786
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !5440
  %i.h = trunc nuw i64 %i.f to i1, !dbg !5441     ; 2 uses
  %i.i = load ptr, ptr %i.g, align 8, !dbg !5442, !nonnull !3786, !noundef !3786 ; 2 uses
  %. = select i1 %i.h, i64 480, i64 712, !dbg !5443
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %., !dbg !5444
  br label %bb.b, !dbg !5445

bb.b:                                             ; preds = %bb.b, %bb.a
  %i.k = atomicrmw add ptr @_RNvNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !dbg !5446, !noalias !5433 ; 2 uses
  %.not.i.i = icmp eq i64 %i.k, 0, !dbg !5447
  br i1 %.not.i.i, label %bb.b, label %bb.c, !dbg !5448

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !5449, !noalias !5433
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(456) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(456) %1, i64 456, i1 false), !dbg !5449, !noalias !5434
  %.sroa.01.0.v.i.i.i = select i1 %i.h, i64 504, i64 512, !dbg !5450
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sroa.01.0.v.i.i.i, !dbg !5450 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16, !dbg !5451
  %i.m = load ptr, ptr %i.l, align 8, !dbg !5452, !noalias !5433, !noundef !3786 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.m, null, !dbg !5452
  br i1 %.not.i.i.i, label %bb.f, label %bb.d, !dbg !5453

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24, !dbg !5452
  %i.o = load ptr, ptr %i.n, align 8, !dbg !5454, !noalias !5433, !nonnull !3786, !align !3839, !noundef !3786
  %i.p = atomicrmw add ptr %i.m, i64 1 monotonic, align 8, !dbg !5455, !noalias !5433
  %i.q = icmp slt i64 %i.p, 0, !dbg !5456
  br i1 %i.q, label %bb.e, label %bb.f, !dbg !5456

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.trap(), !dbg !5457
  unreachable, !dbg !5457

bb.f:                                             ; preds = %bb.d, %bb.c
  %.sroa.5.0.i.i.i = phi ptr [ undef, %bb.c ], [ %i.o, %bb.d ], !dbg !5458
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !5459, !noalias !5433
  call void @_RINvNtNtCskmDBXs7hs3c_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources3csv17line_batch_sourceNtB1v_15LineBatchSource9run_async00ENtNtBR_8schedule16BlockingScheduleEB1D_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(456) %i.b, ptr noundef %i.m, ptr %.sroa.5.0.i.i.i, i64 noundef %i.k), !dbg !5459, !noalias !5433
  %i.r = load ptr, ptr %i.a, align 8, !dbg !5460, !noalias !5433, !nonnull !3786, !noundef !3786
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !5461
  %i.t = load ptr, ptr %i.s, align 8, !dbg !5461, !noalias !5433, !nonnull !3786, !noundef !3786 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !5462, !noalias !5433
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !5463, !noalias !5433
  %i.u = invoke { i64, ptr } @_RNvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j, ptr noundef nonnull %i.r, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
          to label %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources3csv17line_batch_sourceNtB1y_15LineBatchSource9run_async00INtNtCscgRAwXFJnXP_4core6result6ResultjNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB1G_.exit.i unwind label %bb.g, !dbg !5464, !noalias !5435 ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = invoke noundef zeroext i1 @_RNvMNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i.i unwind label %bb.i, !dbg !5465, !noalias !5435

.noexc.i.i:                                       ; preds = %bb.g
  br i1 %i.w, label %bb.h, label %common.resume.i, !dbg !5466

bb.h:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %common.resume.i unwind label %bb.i, !dbg !5467, !noalias !5435

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !5468, !noalias !5435
  unreachable, !dbg !5468

common.resume.i:                                  ; preds = %bb.o, %.noexc.i, %bb.h, %.noexc.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.v, %.noexc.i.i ], [ %i.v, %bb.h ], [ %i.ab, %.noexc.i ], [ %i.ab, %bb.o ]
  resume { ptr, i32 } %common.resume.op.i, !dbg !5469

_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources3csv17line_batch_sourceNtB1y_15LineBatchSource9run_async00INtNtCscgRAwXFJnXP_4core6result6ResultjNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB1G_.exit.i: ; preds = %bb.f
  %i.y = extractvalue { i64, ptr } %i.u, 0, !dbg !5470
  %i.z = extractvalue { i64, ptr } %i.u, 1, !dbg !5470 ; 2 uses
  %i.aa = trunc nuw i64 %i.y to i1, !dbg !5471
  %.not.i = icmp ne ptr %i.z, null
  %or.cond.not.i = select i1 %i.aa, i1 %.not.i, i1 false, !dbg !5471, !prof !3854
  br i1 %or.cond.not.i, label %bb.j, label %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources3csv17line_batch_sourceNtB1s_15LineBatchSource9run_async00INtNtCscgRAwXFJnXP_4core6result6ResultjNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB1A_.exit, !dbg !5471, !prof !3854

bb.j:                                             ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources3csv17line_batch_sourceNtB1y_15LineBatchSource9run_async00INtNtCscgRAwXFJnXP_4core6result6ResultjNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB1G_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !5472, !noalias !5436
  store ptr %i.z, ptr %i.d, align 8, !dbg !5472, !noalias !5436
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !5473, !noalias !5436
  store ptr %i.d, ptr %i.c, align 8, !dbg !5473, !noalias !5436
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !5473
  store ptr @_RNvXs7_NtNtCsh8eZTKRCwoO_3std2io5errorNtB5_5ErrorNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !dbg !5473, !noalias !5436
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @20, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #36
          to label %bb.l unwind label %bb.k, !dbg !5474, !noalias !5438

bb.k:                                             ; preds = %bb.j
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i = load ptr, ptr %i.d, align 8, !dbg !5475, !noalias !5436, !nonnull !3786, !noundef !3786
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream(ptr nonnull %.val.i) #35
          to label %bb.n unwind label %bb.m, !dbg !5475, !noalias !5438

bb.l:                                             ; preds = %bb.j
  unreachable

bb.m:                                             ; preds = %bb.o, %bb.n, %bb.k
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !5476, !noalias !5438
  unreachable, !dbg !5476

bb.n:                                             ; preds = %bb.k
  %i.ad = invoke noundef zeroext i1 @_RNvMNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i unwind label %bb.m, !dbg !5477, !noalias !5438

.noexc.i:                                         ; preds = %bb.n
  br i1 %i.ad, label %bb.o, label %common.resume.i, !dbg !5478

bb.o:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %common.resume.i unwind label %bb.m, !dbg !5479, !noalias !5438

_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources3csv17line_batch_sourceNtB1s_15LineBatchSource9run_async00INtNtCscgRAwXFJnXP_4core6result6ResultjNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB1A_.exit: ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources3csv17line_batch_sourceNtB1y_15LineBatchSource9run_async00INtNtCscgRAwXFJnXP_4core6result6ResultjNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB1G_.exit.i
  ret ptr %i.t, !dbg !5480
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvMCsidoPH4Qgqxm_12polars_asyncNtB3_14RuntimeManager14spawn_blockingNCNCNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources5batch15get_batch_stateNtB1d_13GetBatchState4next00INtNtCscgRAwXFJnXP_4core6result6ResultTB2t_INtNtB30_6option6OptionNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB1l_(ptr noundef nonnull align 8 captures(address, read_provenance) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(208) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !5481 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [208 x i8], align 8               ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !5536 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !5537, !range !3814, !noundef !3786
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !5537
  %i.h = trunc nuw i64 %i.f to i1, !dbg !5538     ; 2 uses
  %i.i = load ptr, ptr %i.g, align 8, !dbg !5539, !nonnull !3786, !noundef !3786 ; 2 uses
  %. = select i1 %i.h, i64 480, i64 712, !dbg !5540
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %., !dbg !5541
  br label %bb.b, !dbg !5542

bb.b:                                             ; preds = %bb.b, %bb.a
  %i.k = atomicrmw add ptr @_RNvNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !dbg !5543, !noalias !5530 ; 2 uses
  %.not.i.i = icmp eq i64 %i.k, 0, !dbg !5544
  br i1 %.not.i.i, label %bb.b, label %bb.c, !dbg !5545

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !5546, !noalias !5530
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(208) %1, i64 208, i1 false), !dbg !5546, !noalias !5531
  %.sroa.01.0.v.i.i.i = select i1 %i.h, i64 504, i64 512, !dbg !5547
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sroa.01.0.v.i.i.i, !dbg !5547 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16, !dbg !5548
  %i.m = load ptr, ptr %i.l, align 8, !dbg !5549, !noalias !5530, !noundef !3786 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.m, null, !dbg !5549
  br i1 %.not.i.i.i, label %bb.f, label %bb.d, !dbg !5550

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24, !dbg !5549
  %i.o = load ptr, ptr %i.n, align 8, !dbg !5551, !noalias !5530, !nonnull !3786, !align !3839, !noundef !3786
  %i.p = atomicrmw add ptr %i.m, i64 1 monotonic, align 8, !dbg !5552, !noalias !5530
  %i.q = icmp slt i64 %i.p, 0, !dbg !5553
  br i1 %i.q, label %bb.e, label %bb.f, !dbg !5553

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.trap(), !dbg !5554
  unreachable, !dbg !5554

bb.f:                                             ; preds = %bb.d, %bb.c
  %.sroa.5.0.i.i.i = phi ptr [ undef, %bb.c ], [ %i.o, %bb.d ], !dbg !5555
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !5556, !noalias !5530
  call void @_RINvNtNtCskmDBXs7hs3c_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources5batch15get_batch_stateNtB1v_13GetBatchState4next00ENtNtBR_8schedule16BlockingScheduleEB1D_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(208) %i.b, ptr noundef %i.m, ptr %.sroa.5.0.i.i.i, i64 noundef %i.k), !dbg !5556, !noalias !5530
  %i.r = load ptr, ptr %i.a, align 8, !dbg !5557, !noalias !5530, !nonnull !3786, !noundef !3786
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !5558
  %i.t = load ptr, ptr %i.s, align 8, !dbg !5558, !noalias !5530, !nonnull !3786, !noundef !3786 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !5559, !noalias !5530
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !5560, !noalias !5530
  %i.u = invoke { i64, ptr } @_RNvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j, ptr noundef nonnull %i.r, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
          to label %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources5batch15get_batch_stateNtB1y_13GetBatchState4next00INtNtCscgRAwXFJnXP_4core6result6ResultTB2O_INtNtB3l_6option6OptionNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB1G_.exit.i unwind label %bb.g, !dbg !5561, !noalias !5532 ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = invoke noundef zeroext i1 @_RNvMNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i.i unwind label %bb.i, !dbg !5562, !noalias !5532

.noexc.i.i:                                       ; preds = %bb.g
  br i1 %i.w, label %bb.h, label %common.resume.i, !dbg !5563

bb.h:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %common.resume.i unwind label %bb.i, !dbg !5564, !noalias !5532

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !5565, !noalias !5532
  unreachable, !dbg !5565

common.resume.i:                                  ; preds = %bb.o, %.noexc.i, %bb.h, %.noexc.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.v, %.noexc.i.i ], [ %i.v, %bb.h ], [ %i.ab, %.noexc.i ], [ %i.ab, %bb.o ]
  resume { ptr, i32 } %common.resume.op.i, !dbg !5566

_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources5batch15get_batch_stateNtB1y_13GetBatchState4next00INtNtCscgRAwXFJnXP_4core6result6ResultTB2O_INtNtB3l_6option6OptionNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB1G_.exit.i: ; preds = %bb.f
  %i.y = extractvalue { i64, ptr } %i.u, 0, !dbg !5567
  %i.z = extractvalue { i64, ptr } %i.u, 1, !dbg !5567 ; 2 uses
  %i.aa = trunc nuw i64 %i.y to i1, !dbg !5568
  %.not.i = icmp ne ptr %i.z, null
  %or.cond.not.i = select i1 %i.aa, i1 %.not.i, i1 false, !dbg !5568, !prof !3854
  br i1 %or.cond.not.i, label %bb.j, label %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources5batch15get_batch_stateNtB1s_13GetBatchState4next00INtNtCscgRAwXFJnXP_4core6result6ResultTB2I_INtNtB3f_6option6OptionNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB1A_.exit, !dbg !5568, !prof !3854

bb.j:                                             ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources5batch15get_batch_stateNtB1y_13GetBatchState4next00INtNtCscgRAwXFJnXP_4core6result6ResultTB2O_INtNtB3l_6option6OptionNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB1G_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !5569, !noalias !5533
  store ptr %i.z, ptr %i.d, align 8, !dbg !5569, !noalias !5533
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !5570, !noalias !5533
  store ptr %i.d, ptr %i.c, align 8, !dbg !5570, !noalias !5533
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !5570
  store ptr @_RNvXs7_NtNtCsh8eZTKRCwoO_3std2io5errorNtB5_5ErrorNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !dbg !5570, !noalias !5533
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @20, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #36
          to label %bb.l unwind label %bb.k, !dbg !5571, !noalias !5535

bb.k:                                             ; preds = %bb.j
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i = load ptr, ptr %i.d, align 8, !dbg !5572, !noalias !5533, !nonnull !3786, !noundef !3786
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream(ptr nonnull %.val.i) #35
          to label %bb.n unwind label %bb.m, !dbg !5572, !noalias !5535

bb.l:                                             ; preds = %bb.j
  unreachable

bb.m:                                             ; preds = %bb.o, %bb.n, %bb.k
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !5573, !noalias !5535
  unreachable, !dbg !5573

bb.n:                                             ; preds = %bb.k
  %i.ad = invoke noundef zeroext i1 @_RNvMNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i unwind label %bb.m, !dbg !5574, !noalias !5535

.noexc.i:                                         ; preds = %bb.n
  br i1 %i.ad, label %bb.o, label %common.resume.i, !dbg !5575

bb.o:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %common.resume.i unwind label %bb.m, !dbg !5576, !noalias !5535

_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources5batch15get_batch_stateNtB1s_13GetBatchState4next00INtNtCscgRAwXFJnXP_4core6result6ResultTB2I_INtNtB3f_6option6OptionNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB1A_.exit: ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources5batch15get_batch_stateNtB1y_13GetBatchState4next00INtNtCscgRAwXFJnXP_4core6result6ResultTB2O_INtNtB3l_6option6OptionNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB1G_.exit.i
  ret ptr %i.t, !dbg !5577
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvMCsidoPH4Qgqxm_12polars_asyncNtB3_14RuntimeManager14spawn_blockingNCNCNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources5batch15get_batch_stateNtB1d_13GetBatchState4peek00INtNtCscgRAwXFJnXP_4core6result6ResultTB2t_INtNtB30_6option6OptionNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB1l_(ptr noundef nonnull align 8 captures(address, read_provenance) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(208) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !5578 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [208 x i8], align 8               ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !5633 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !5634, !range !3814, !noundef !3786
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !5634
  %i.h = trunc nuw i64 %i.f to i1, !dbg !5635     ; 2 uses
  %i.i = load ptr, ptr %i.g, align 8, !dbg !5636, !nonnull !3786, !noundef !3786 ; 2 uses
  %. = select i1 %i.h, i64 480, i64 712, !dbg !5637
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %., !dbg !5638
  br label %bb.b, !dbg !5639

bb.b:                                             ; preds = %bb.b, %bb.a
  %i.k = atomicrmw add ptr @_RNvNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !dbg !5640, !noalias !5627 ; 2 uses
  %.not.i.i = icmp eq i64 %i.k, 0, !dbg !5641
  br i1 %.not.i.i, label %bb.b, label %bb.c, !dbg !5642

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !5643, !noalias !5627
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(208) %1, i64 208, i1 false), !dbg !5643, !noalias !5628
  %.sroa.01.0.v.i.i.i = select i1 %i.h, i64 504, i64 512, !dbg !5644
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sroa.01.0.v.i.i.i, !dbg !5644 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16, !dbg !5645
  %i.m = load ptr, ptr %i.l, align 8, !dbg !5646, !noalias !5627, !noundef !3786 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.m, null, !dbg !5646
  br i1 %.not.i.i.i, label %bb.f, label %bb.d, !dbg !5647

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24, !dbg !5646
  %i.o = load ptr, ptr %i.n, align 8, !dbg !5648, !noalias !5627, !nonnull !3786, !align !3839, !noundef !3786
  %i.p = atomicrmw add ptr %i.m, i64 1 monotonic, align 8, !dbg !5649, !noalias !5627
  %i.q = icmp slt i64 %i.p, 0, !dbg !5650
  br i1 %i.q, label %bb.e, label %bb.f, !dbg !5650

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.trap(), !dbg !5651
  unreachable, !dbg !5651

bb.f:                                             ; preds = %bb.d, %bb.c
  %.sroa.5.0.i.i.i = phi ptr [ undef, %bb.c ], [ %i.o, %bb.d ], !dbg !5652
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !5653, !noalias !5627
  call void @_RINvNtNtCskmDBXs7hs3c_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources5batch15get_batch_stateNtB1v_13GetBatchState4peek00ENtNtBR_8schedule16BlockingScheduleEB1D_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(208) %i.b, ptr noundef %i.m, ptr %.sroa.5.0.i.i.i, i64 noundef %i.k), !dbg !5653, !noalias !5627
  %i.r = load ptr, ptr %i.a, align 8, !dbg !5654, !noalias !5627, !nonnull !3786, !noundef !3786
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !5655
  %i.t = load ptr, ptr %i.s, align 8, !dbg !5655, !noalias !5627, !nonnull !3786, !noundef !3786 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !5656, !noalias !5627
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !5657, !noalias !5627
  %i.u = invoke { i64, ptr } @_RNvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j, ptr noundef nonnull %i.r, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
          to label %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources5batch15get_batch_stateNtB1y_13GetBatchState4peek00INtNtCscgRAwXFJnXP_4core6result6ResultTB2O_INtNtB3l_6option6OptionNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB1G_.exit.i unwind label %bb.g, !dbg !5658, !noalias !5629 ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = invoke noundef zeroext i1 @_RNvMNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i.i unwind label %bb.i, !dbg !5659, !noalias !5629

.noexc.i.i:                                       ; preds = %bb.g
  br i1 %i.w, label %bb.h, label %common.resume.i, !dbg !5660

bb.h:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %common.resume.i unwind label %bb.i, !dbg !5661, !noalias !5629

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !5662, !noalias !5629
  unreachable, !dbg !5662

common.resume.i:                                  ; preds = %bb.o, %.noexc.i, %bb.h, %.noexc.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.v, %.noexc.i.i ], [ %i.v, %bb.h ], [ %i.ab, %.noexc.i ], [ %i.ab, %bb.o ]
  resume { ptr, i32 } %common.resume.op.i, !dbg !5663

_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources5batch15get_batch_stateNtB1y_13GetBatchState4peek00INtNtCscgRAwXFJnXP_4core6result6ResultTB2O_INtNtB3l_6option6OptionNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB1G_.exit.i: ; preds = %bb.f
  %i.y = extractvalue { i64, ptr } %i.u, 0, !dbg !5664
  %i.z = extractvalue { i64, ptr } %i.u, 1, !dbg !5664 ; 2 uses
  %i.aa = trunc nuw i64 %i.y to i1, !dbg !5665
  %.not.i = icmp ne ptr %i.z, null
  %or.cond.not.i = select i1 %i.aa, i1 %.not.i, i1 false, !dbg !5665, !prof !3854
  br i1 %or.cond.not.i, label %bb.j, label %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources5batch15get_batch_stateNtB1s_13GetBatchState4peek00INtNtCscgRAwXFJnXP_4core6result6ResultTB2I_INtNtB3f_6option6OptionNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB1A_.exit, !dbg !5665, !prof !3854

bb.j:                                             ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources5batch15get_batch_stateNtB1y_13GetBatchState4peek00INtNtCscgRAwXFJnXP_4core6result6ResultTB2O_INtNtB3l_6option6OptionNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB1G_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !5666, !noalias !5630
  store ptr %i.z, ptr %i.d, align 8, !dbg !5666, !noalias !5630
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !5667, !noalias !5630
  store ptr %i.d, ptr %i.c, align 8, !dbg !5667, !noalias !5630
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !5667
  store ptr @_RNvXs7_NtNtCsh8eZTKRCwoO_3std2io5errorNtB5_5ErrorNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !dbg !5667, !noalias !5630
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @20, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #36
          to label %bb.l unwind label %bb.k, !dbg !5668, !noalias !5632

bb.k:                                             ; preds = %bb.j
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i = load ptr, ptr %i.d, align 8, !dbg !5669, !noalias !5630, !nonnull !3786, !noundef !3786
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream(ptr nonnull %.val.i) #35
          to label %bb.n unwind label %bb.m, !dbg !5669, !noalias !5632

bb.l:                                             ; preds = %bb.j
  unreachable

bb.m:                                             ; preds = %bb.o, %bb.n, %bb.k
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !5670, !noalias !5632
  unreachable, !dbg !5670

bb.n:                                             ; preds = %bb.k
  %i.ad = invoke noundef zeroext i1 @_RNvMNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i unwind label %bb.m, !dbg !5671, !noalias !5632

.noexc.i:                                         ; preds = %bb.n
  br i1 %i.ad, label %bb.o, label %common.resume.i, !dbg !5672

bb.o:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %common.resume.i unwind label %bb.m, !dbg !5673, !noalias !5632

_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources5batch15get_batch_stateNtB1s_13GetBatchState4peek00INtNtCscgRAwXFJnXP_4core6result6ResultTB2I_INtNtB3f_6option6OptionNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB1A_.exit: ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources5batch15get_batch_stateNtB1y_13GetBatchState4peek00INtNtCscgRAwXFJnXP_4core6result6ResultTB2O_INtNtB3l_6option6OptionNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB1G_.exit.i
  ret ptr %i.t, !dbg !5674
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvMCsidoPH4Qgqxm_12polars_asyncNtB3_14RuntimeManager14spawn_blockingNCNCNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources6ndjson22line_batch_distributorNtB1d_20LineBatchDistributor9run_async00INtNtCscgRAwXFJnXP_4core6result6ResultjNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB1l_(ptr noundef nonnull align 8 captures(address, read_provenance) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(152) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !5675 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [152 x i8], align 8               ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !5730 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !5731, !range !3814, !noundef !3786
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !5731
  %i.h = trunc nuw i64 %i.f to i1, !dbg !5732     ; 2 uses
  %i.i = load ptr, ptr %i.g, align 8, !dbg !5733, !nonnull !3786, !noundef !3786 ; 2 uses
  %. = select i1 %i.h, i64 480, i64 712, !dbg !5734
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %., !dbg !5735
  br label %bb.b, !dbg !5736

bb.b:                                             ; preds = %bb.b, %bb.a
  %i.k = atomicrmw add ptr @_RNvNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !dbg !5737, !noalias !5724 ; 2 uses
  %.not.i.i = icmp eq i64 %i.k, 0, !dbg !5738
  br i1 %.not.i.i, label %bb.b, label %bb.c, !dbg !5739

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !5740, !noalias !5724
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(152) %1, i64 152, i1 false), !dbg !5740, !noalias !5725
  %.sroa.01.0.v.i.i.i = select i1 %i.h, i64 504, i64 512, !dbg !5741
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sroa.01.0.v.i.i.i, !dbg !5741 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16, !dbg !5742
  %i.m = load ptr, ptr %i.l, align 8, !dbg !5743, !noalias !5724, !noundef !3786 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.m, null, !dbg !5743
  br i1 %.not.i.i.i, label %bb.f, label %bb.d, !dbg !5744

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24, !dbg !5743
  %i.o = load ptr, ptr %i.n, align 8, !dbg !5745, !noalias !5724, !nonnull !3786, !align !3839, !noundef !3786
  %i.p = atomicrmw add ptr %i.m, i64 1 monotonic, align 8, !dbg !5746, !noalias !5724
  %i.q = icmp slt i64 %i.p, 0, !dbg !5747
  br i1 %i.q, label %bb.e, label %bb.f, !dbg !5747

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.trap(), !dbg !5748
  unreachable, !dbg !5748

bb.f:                                             ; preds = %bb.d, %bb.c
  %.sroa.5.0.i.i.i = phi ptr [ undef, %bb.c ], [ %i.o, %bb.d ], !dbg !5749
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !5750, !noalias !5724
  call void @_RINvNtNtCskmDBXs7hs3c_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources6ndjson22line_batch_distributorNtB1v_20LineBatchDistributor9run_async00ENtNtBR_8schedule16BlockingScheduleEB1D_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(152) %i.b, ptr noundef %i.m, ptr %.sroa.5.0.i.i.i, i64 noundef %i.k), !dbg !5750, !noalias !5724
  %i.r = load ptr, ptr %i.a, align 8, !dbg !5751, !noalias !5724, !nonnull !3786, !noundef !3786
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !5752
  %i.t = load ptr, ptr %i.s, align 8, !dbg !5752, !noalias !5724, !nonnull !3786, !noundef !3786 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !5753, !noalias !5724
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !5754, !noalias !5724
  %i.u = invoke { i64, ptr } @_RNvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j, ptr noundef nonnull %i.r, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
          to label %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources6ndjson22line_batch_distributorNtB1y_20LineBatchDistributor9run_async00INtNtCscgRAwXFJnXP_4core6result6ResultjNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB1G_.exit.i unwind label %bb.g, !dbg !5755, !noalias !5726 ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = invoke noundef zeroext i1 @_RNvMNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i.i unwind label %bb.i, !dbg !5756, !noalias !5726

.noexc.i.i:                                       ; preds = %bb.g
  br i1 %i.w, label %bb.h, label %common.resume.i, !dbg !5757

bb.h:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %common.resume.i unwind label %bb.i, !dbg !5758, !noalias !5726

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !5759, !noalias !5726
  unreachable, !dbg !5759

common.resume.i:                                  ; preds = %bb.o, %.noexc.i, %bb.h, %.noexc.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.v, %.noexc.i.i ], [ %i.v, %bb.h ], [ %i.ab, %.noexc.i ], [ %i.ab, %bb.o ]
  resume { ptr, i32 } %common.resume.op.i, !dbg !5760

_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources6ndjson22line_batch_distributorNtB1y_20LineBatchDistributor9run_async00INtNtCscgRAwXFJnXP_4core6result6ResultjNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB1G_.exit.i: ; preds = %bb.f
  %i.y = extractvalue { i64, ptr } %i.u, 0, !dbg !5761
  %i.z = extractvalue { i64, ptr } %i.u, 1, !dbg !5761 ; 2 uses
  %i.aa = trunc nuw i64 %i.y to i1, !dbg !5762
  %.not.i = icmp ne ptr %i.z, null
  %or.cond.not.i = select i1 %i.aa, i1 %.not.i, i1 false, !dbg !5762, !prof !3854
  br i1 %or.cond.not.i, label %bb.j, label %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources6ndjson22line_batch_distributorNtB1s_20LineBatchDistributor9run_async00INtNtCscgRAwXFJnXP_4core6result6ResultjNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB1A_.exit, !dbg !5762, !prof !3854

bb.j:                                             ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources6ndjson22line_batch_distributorNtB1y_20LineBatchDistributor9run_async00INtNtCscgRAwXFJnXP_4core6result6ResultjNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB1G_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !5763, !noalias !5727
  store ptr %i.z, ptr %i.d, align 8, !dbg !5763, !noalias !5727
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !5764, !noalias !5727
  store ptr %i.d, ptr %i.c, align 8, !dbg !5764, !noalias !5727
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !5764
  store ptr @_RNvXs7_NtNtCsh8eZTKRCwoO_3std2io5errorNtB5_5ErrorNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !dbg !5764, !noalias !5727
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @20, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #36
          to label %bb.l unwind label %bb.k, !dbg !5765, !noalias !5729

bb.k:                                             ; preds = %bb.j
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i = load ptr, ptr %i.d, align 8, !dbg !5766, !noalias !5727, !nonnull !3786, !noundef !3786
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream(ptr nonnull %.val.i) #35
          to label %bb.n unwind label %bb.m, !dbg !5766, !noalias !5729

bb.l:                                             ; preds = %bb.j
  unreachable

bb.m:                                             ; preds = %bb.o, %bb.n, %bb.k
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !5767, !noalias !5729
  unreachable, !dbg !5767

bb.n:                                             ; preds = %bb.k
  %i.ad = invoke noundef zeroext i1 @_RNvMNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i unwind label %bb.m, !dbg !5768, !noalias !5729

.noexc.i:                                         ; preds = %bb.n
  br i1 %i.ad, label %bb.o, label %common.resume.i, !dbg !5769

bb.o:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %common.resume.i unwind label %bb.m, !dbg !5770, !noalias !5729

_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources6ndjson22line_batch_distributorNtB1s_20LineBatchDistributor9run_async00INtNtCscgRAwXFJnXP_4core6result6ResultjNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB1A_.exit: ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources6ndjson22line_batch_distributorNtB1y_20LineBatchDistributor9run_async00INtNtCscgRAwXFJnXP_4core6result6ResultjNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB1G_.exit.i
  ret ptr %i.t, !dbg !5771
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvMCsidoPH4Qgqxm_12polars_asyncNtB3_14RuntimeManager14spawn_blockingNCNCNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components13file_providerNtB1d_12FileProvider9open_file00INtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options13file_provider18FileProviderReturnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB1l_(ptr noundef nonnull align 8 captures(address, read_provenance) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !5772 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !5827 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !5828, !range !3814, !noundef !3786
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !5828
  %i.h = trunc nuw i64 %i.f to i1, !dbg !5829     ; 2 uses
  %i.i = load ptr, ptr %i.g, align 8, !dbg !5830, !nonnull !3786, !noundef !3786 ; 2 uses
  %. = select i1 %i.h, i64 480, i64 712, !dbg !5831
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %., !dbg !5832
  br label %bb.b, !dbg !5833

bb.b:                                             ; preds = %bb.b, %bb.a
  %i.k = atomicrmw add ptr @_RNvNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !dbg !5834, !noalias !5821 ; 2 uses
  %.not.i.i = icmp eq i64 %i.k, 0, !dbg !5835
  br i1 %.not.i.i, label %bb.b, label %bb.c, !dbg !5836

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !5837, !noalias !5821
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(32) %1, i64 32, i1 false), !dbg !5837, !noalias !5822
  %.sroa.01.0.v.i.i.i = select i1 %i.h, i64 504, i64 512, !dbg !5838
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sroa.01.0.v.i.i.i, !dbg !5838 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16, !dbg !5839
  %i.m = load ptr, ptr %i.l, align 8, !dbg !5840, !noalias !5821, !noundef !3786 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.m, null, !dbg !5840
  br i1 %.not.i.i.i, label %bb.f, label %bb.d, !dbg !5841

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24, !dbg !5840
  %i.o = load ptr, ptr %i.n, align 8, !dbg !5842, !noalias !5821, !nonnull !3786, !align !3839, !noundef !3786
  %i.p = atomicrmw add ptr %i.m, i64 1 monotonic, align 8, !dbg !5843, !noalias !5821
  %i.q = icmp slt i64 %i.p, 0, !dbg !5844
  br i1 %i.q, label %bb.e, label %bb.f, !dbg !5844

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.trap(), !dbg !5845
  unreachable, !dbg !5845

bb.f:                                             ; preds = %bb.d, %bb.c
  %.sroa.5.0.i.i.i = phi ptr [ undef, %bb.c ], [ %i.o, %bb.d ], !dbg !5846
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !5847, !noalias !5821
  call void @_RINvNtNtCskmDBXs7hs3c_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components13file_providerNtB1v_12FileProvider9open_file00ENtNtBR_8schedule16BlockingScheduleEB1D_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, ptr noundef %i.m, ptr %.sroa.5.0.i.i.i, i64 noundef %i.k), !dbg !5847, !noalias !5821
  %i.r = load ptr, ptr %i.a, align 8, !dbg !5848, !noalias !5821, !nonnull !3786, !noundef !3786
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !5849
  %i.t = load ptr, ptr %i.s, align 8, !dbg !5849, !noalias !5821, !nonnull !3786, !noundef !3786 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !5850, !noalias !5821
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !5851, !noalias !5821
  %i.u = invoke { i64, ptr } @_RNvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j, ptr noundef nonnull %i.r, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
          to label %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components13file_providerNtB1y_12FileProvider9open_file00INtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options13file_provider18FileProviderReturnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB1G_.exit.i unwind label %bb.g, !dbg !5852, !noalias !5823 ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = invoke noundef zeroext i1 @_RNvMNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i.i unwind label %bb.i, !dbg !5853, !noalias !5823

.noexc.i.i:                                       ; preds = %bb.g
  br i1 %i.w, label %bb.h, label %common.resume.i, !dbg !5854

bb.h:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %common.resume.i unwind label %bb.i, !dbg !5855, !noalias !5823

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !5856, !noalias !5823
  unreachable, !dbg !5856

common.resume.i:                                  ; preds = %bb.o, %.noexc.i, %bb.h, %.noexc.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.v, %.noexc.i.i ], [ %i.v, %bb.h ], [ %i.ab, %.noexc.i ], [ %i.ab, %bb.o ]
  resume { ptr, i32 } %common.resume.op.i, !dbg !5857

_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components13file_providerNtB1y_12FileProvider9open_file00INtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options13file_provider18FileProviderReturnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB1G_.exit.i: ; preds = %bb.f
  %i.y = extractvalue { i64, ptr } %i.u, 0, !dbg !5858
  %i.z = extractvalue { i64, ptr } %i.u, 1, !dbg !5858 ; 2 uses
  %i.aa = trunc nuw i64 %i.y to i1, !dbg !5859
  %.not.i = icmp ne ptr %i.z, null
  %or.cond.not.i = select i1 %i.aa, i1 %.not.i, i1 false, !dbg !5859, !prof !3854
  br i1 %or.cond.not.i, label %bb.j, label %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components13file_providerNtB1s_12FileProvider9open_file00INtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options13file_provider18FileProviderReturnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB1A_.exit, !dbg !5859, !prof !3854

bb.j:                                             ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components13file_providerNtB1y_12FileProvider9open_file00INtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options13file_provider18FileProviderReturnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB1G_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !5860, !noalias !5824
  store ptr %i.z, ptr %i.d, align 8, !dbg !5860, !noalias !5824
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !5861, !noalias !5824
  store ptr %i.d, ptr %i.c, align 8, !dbg !5861, !noalias !5824
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !5861
  store ptr @_RNvXs7_NtNtCsh8eZTKRCwoO_3std2io5errorNtB5_5ErrorNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !dbg !5861, !noalias !5824
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @20, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #36
          to label %bb.l unwind label %bb.k, !dbg !5862, !noalias !5826

bb.k:                                             ; preds = %bb.j
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i = load ptr, ptr %i.d, align 8, !dbg !5863, !noalias !5824, !nonnull !3786, !noundef !3786
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream(ptr nonnull %.val.i) #35
          to label %bb.n unwind label %bb.m, !dbg !5863, !noalias !5826

bb.l:                                             ; preds = %bb.j
  unreachable

bb.m:                                             ; preds = %bb.o, %bb.n, %bb.k
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !5864, !noalias !5826
  unreachable, !dbg !5864

bb.n:                                             ; preds = %bb.k
  %i.ad = invoke noundef zeroext i1 @_RNvMNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i unwind label %bb.m, !dbg !5865, !noalias !5826

.noexc.i:                                         ; preds = %bb.n
  br i1 %i.ad, label %bb.o, label %common.resume.i, !dbg !5866

bb.o:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %common.resume.i unwind label %bb.m, !dbg !5867, !noalias !5826

_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components13file_providerNtB1s_12FileProvider9open_file00INtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options13file_provider18FileProviderReturnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB1A_.exit: ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components13file_providerNtB1y_12FileProvider9open_file00INtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options13file_provider18FileProviderReturnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB1G_.exit.i
  ret ptr %i.t, !dbg !5868
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvMCsidoPH4Qgqxm_12polars_asyncNtB3_14RuntimeManager14spawn_blockingNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components21sinked_path_info_list26call_sinked_paths_callback0s_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB1k_(ptr noundef nonnull align 8 captures(address, read_provenance) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(200) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !5869 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [200 x i8], align 8               ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !5924 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !5925, !range !3814, !noundef !3786
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !5925
  %i.h = trunc nuw i64 %i.f to i1, !dbg !5926     ; 2 uses
  %i.i = load ptr, ptr %i.g, align 8, !dbg !5927, !nonnull !3786, !noundef !3786 ; 2 uses
  %. = select i1 %i.h, i64 480, i64 712, !dbg !5928
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %., !dbg !5929
  br label %bb.b, !dbg !5930

bb.b:                                             ; preds = %bb.b, %bb.a
  %i.k = atomicrmw add ptr @_RNvNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !dbg !5931, !noalias !5918 ; 2 uses
  %.not.i.i = icmp eq i64 %i.k, 0, !dbg !5932
  br i1 %.not.i.i, label %bb.b, label %bb.c, !dbg !5933

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !5934, !noalias !5918
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(200) %1, i64 200, i1 false), !dbg !5934, !noalias !5919
  %.sroa.01.0.v.i.i.i = select i1 %i.h, i64 504, i64 512, !dbg !5935
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sroa.01.0.v.i.i.i, !dbg !5935 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16, !dbg !5936
  %i.m = load ptr, ptr %i.l, align 8, !dbg !5937, !noalias !5918, !noundef !3786 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.m, null, !dbg !5937
  br i1 %.not.i.i.i, label %bb.f, label %bb.d, !dbg !5938

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24, !dbg !5937
  %i.o = load ptr, ptr %i.n, align 8, !dbg !5939, !noalias !5918, !nonnull !3786, !align !3839, !noundef !3786
  %i.p = atomicrmw add ptr %i.m, i64 1 monotonic, align 8, !dbg !5940, !noalias !5918
  %i.q = icmp slt i64 %i.p, 0, !dbg !5941
  br i1 %i.q, label %bb.e, label %bb.f, !dbg !5941

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.trap(), !dbg !5942
  unreachable, !dbg !5942

bb.f:                                             ; preds = %bb.d, %bb.c
  %.sroa.5.0.i.i.i = phi ptr [ undef, %bb.c ], [ %i.o, %bb.d ], !dbg !5943
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !5944, !noalias !5918
  call void @_RINvNtNtCskmDBXs7hs3c_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components21sinked_path_info_list26call_sinked_paths_callback0s_0ENtNtBR_8schedule16BlockingScheduleEB1C_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(200) %i.b, ptr noundef %i.m, ptr %.sroa.5.0.i.i.i, i64 noundef %i.k), !dbg !5944, !noalias !5918
  %i.r = load ptr, ptr %i.a, align 8, !dbg !5945, !noalias !5918, !nonnull !3786, !noundef !3786
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !5946
  %i.t = load ptr, ptr %i.s, align 8, !dbg !5946, !noalias !5918, !nonnull !3786, !noundef !3786 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !5947, !noalias !5918
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !5948, !noalias !5918
  %i.u = invoke { i64, ptr } @_RNvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j, ptr noundef nonnull %i.r, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
          to label %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components21sinked_path_info_list26call_sinked_paths_callback0s_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB1F_.exit.i unwind label %bb.g, !dbg !5949, !noalias !5920 ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = invoke noundef zeroext i1 @_RNvMNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i.i unwind label %bb.i, !dbg !5950, !noalias !5920

.noexc.i.i:                                       ; preds = %bb.g
  br i1 %i.w, label %bb.h, label %common.resume.i, !dbg !5951

bb.h:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %common.resume.i unwind label %bb.i, !dbg !5952, !noalias !5920

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !5953, !noalias !5920
  unreachable, !dbg !5953

common.resume.i:                                  ; preds = %bb.o, %.noexc.i, %bb.h, %.noexc.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.v, %.noexc.i.i ], [ %i.v, %bb.h ], [ %i.ab, %.noexc.i ], [ %i.ab, %bb.o ]
  resume { ptr, i32 } %common.resume.op.i, !dbg !5954

_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components21sinked_path_info_list26call_sinked_paths_callback0s_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB1F_.exit.i: ; preds = %bb.f
  %i.y = extractvalue { i64, ptr } %i.u, 0, !dbg !5955
  %i.z = extractvalue { i64, ptr } %i.u, 1, !dbg !5955 ; 2 uses
  %i.aa = trunc nuw i64 %i.y to i1, !dbg !5956
  %.not.i = icmp ne ptr %i.z, null
  %or.cond.not.i = select i1 %i.aa, i1 %.not.i, i1 false, !dbg !5956, !prof !3854
  br i1 %or.cond.not.i, label %bb.j, label %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components21sinked_path_info_list26call_sinked_paths_callback0s_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB1z_.exit, !dbg !5956, !prof !3854

bb.j:                                             ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components21sinked_path_info_list26call_sinked_paths_callback0s_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB1F_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !5957, !noalias !5921
  store ptr %i.z, ptr %i.d, align 8, !dbg !5957, !noalias !5921
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !5958, !noalias !5921
  store ptr %i.d, ptr %i.c, align 8, !dbg !5958, !noalias !5921
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !5958
  store ptr @_RNvXs7_NtNtCsh8eZTKRCwoO_3std2io5errorNtB5_5ErrorNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !dbg !5958, !noalias !5921
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @20, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #36
          to label %bb.l unwind label %bb.k, !dbg !5959, !noalias !5923

bb.k:                                             ; preds = %bb.j
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i = load ptr, ptr %i.d, align 8, !dbg !5960, !noalias !5921, !nonnull !3786, !noundef !3786
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream(ptr nonnull %.val.i) #35
          to label %bb.n unwind label %bb.m, !dbg !5960, !noalias !5923

bb.l:                                             ; preds = %bb.j
  unreachable

bb.m:                                             ; preds = %bb.o, %bb.n, %bb.k
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !5961, !noalias !5923
  unreachable, !dbg !5961

bb.n:                                             ; preds = %bb.k
  %i.ad = invoke noundef zeroext i1 @_RNvMNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i unwind label %bb.m, !dbg !5962, !noalias !5923

.noexc.i:                                         ; preds = %bb.n
  br i1 %i.ad, label %bb.o, label %common.resume.i, !dbg !5963

bb.o:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %common.resume.i unwind label %bb.m, !dbg !5964, !noalias !5923

_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components21sinked_path_info_list26call_sinked_paths_callback0s_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB1z_.exit: ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components21sinked_path_info_list26call_sinked_paths_callback0s_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB1F_.exit.i
  ret ptr %i.t, !dbg !5965
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvMCsidoPH4Qgqxm_12polars_asyncNtB3_14RuntimeManager14spawn_blockingNCNCNvXNtCskAlUH1kY1DR_10polars_ooc11spill_frameNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1f_9Spillable7unspill00B1S_ECs2g09Ig8GZd6_13polars_stream(ptr noundef nonnull align 8 captures(address, read_provenance) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !5966 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !6022 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !6023, !range !3814, !noundef !3786
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !6023
  %i.h = trunc nuw i64 %i.f to i1, !dbg !6024     ; 2 uses
  %i.i = load ptr, ptr %i.g, align 8, !dbg !6025, !nonnull !3786, !noundef !3786 ; 2 uses
  %. = select i1 %i.h, i64 480, i64 712, !dbg !6026
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %., !dbg !6027
  br label %bb.b, !dbg !6028

bb.b:                                             ; preds = %bb.b, %bb.a
  %i.k = atomicrmw add ptr @_RNvNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !dbg !6029, !noalias !6016 ; 2 uses
  %.not.i.i = icmp eq i64 %i.k, 0, !dbg !6030
  br i1 %.not.i.i, label %bb.b, label %bb.c, !dbg !6031

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !6032, !noalias !6016
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !6032, !noalias !6017
  %.sroa.01.0.v.i.i.i = select i1 %i.h, i64 504, i64 512, !dbg !6033
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sroa.01.0.v.i.i.i, !dbg !6033 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16, !dbg !6034
  %i.m = load ptr, ptr %i.l, align 8, !dbg !6035, !noalias !6016, !noundef !3786 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.m, null, !dbg !6035
  br i1 %.not.i.i.i, label %bb.f, label %bb.d, !dbg !6036

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24, !dbg !6035
  %i.o = load ptr, ptr %i.n, align 8, !dbg !6037, !noalias !6016, !nonnull !3786, !align !3839, !noundef !3786
  %i.p = atomicrmw add ptr %i.m, i64 1 monotonic, align 8, !dbg !6038, !noalias !6016
  %i.q = icmp slt i64 %i.p, 0, !dbg !6039
  br i1 %i.q, label %bb.e, label %bb.f, !dbg !6039

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.trap(), !dbg !6040
  unreachable, !dbg !6040

bb.f:                                             ; preds = %bb.d, %bb.c
  %.sroa.5.0.i.i.i = phi ptr [ undef, %bb.c ], [ %i.o, %bb.d ], !dbg !6041
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !6042, !noalias !6016
  call void @_RINvNtNtCskmDBXs7hs3c_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCNvXNtCskAlUH1kY1DR_10polars_ooc11spill_frameNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1x_9Spillable7unspill00ENtNtBR_8schedule16BlockingScheduleECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noundef %i.m, ptr %.sroa.5.0.i.i.i, i64 noundef %i.k), !dbg !6042, !noalias !6016
  %i.r = load ptr, ptr %i.a, align 8, !dbg !6043, !noalias !6016, !nonnull !3786, !noundef !3786
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !6044
  %i.t = load ptr, ptr %i.s, align 8, !dbg !6044, !noalias !6016, !nonnull !3786, !noundef !3786 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !6045, !noalias !6016
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !6046, !noalias !6016
  %i.u = invoke { i64, ptr } @_RNvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j, ptr noundef nonnull %i.r, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
          to label %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvXNtCskAlUH1kY1DR_10polars_ooc11spill_frameNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1A_9Spillable7unspill00B2d_ECs2g09Ig8GZd6_13polars_stream.exit.i unwind label %bb.g, !dbg !6047, !noalias !6018 ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = invoke noundef zeroext i1 @_RNvMNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i.i unwind label %bb.i, !dbg !6048, !noalias !6018

.noexc.i.i:                                       ; preds = %bb.g
  br i1 %i.w, label %bb.h, label %common.resume.i, !dbg !6049

bb.h:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %common.resume.i unwind label %bb.i, !dbg !6050, !noalias !6018

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !6051, !noalias !6018
  unreachable, !dbg !6051

common.resume.i:                                  ; preds = %bb.o, %.noexc.i, %bb.h, %.noexc.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.v, %.noexc.i.i ], [ %i.v, %bb.h ], [ %i.ab, %.noexc.i ], [ %i.ab, %bb.o ]
  resume { ptr, i32 } %common.resume.op.i, !dbg !6052

_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvXNtCskAlUH1kY1DR_10polars_ooc11spill_frameNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1A_9Spillable7unspill00B2d_ECs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %bb.f
  %i.y = extractvalue { i64, ptr } %i.u, 0, !dbg !6053
  %i.z = extractvalue { i64, ptr } %i.u, 1, !dbg !6053 ; 2 uses
  %i.aa = trunc nuw i64 %i.y to i1, !dbg !6054
  %.not.i = icmp ne ptr %i.z, null
  %or.cond.not.i = select i1 %i.aa, i1 %.not.i, i1 false, !dbg !6054, !prof !3854
  br i1 %or.cond.not.i, label %bb.j, label %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCNvXNtCskAlUH1kY1DR_10polars_ooc11spill_frameNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1u_9Spillable7unspill00B27_ECs2g09Ig8GZd6_13polars_stream.exit, !dbg !6054, !prof !3854

bb.j:                                             ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvXNtCskAlUH1kY1DR_10polars_ooc11spill_frameNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1A_9Spillable7unspill00B2d_ECs2g09Ig8GZd6_13polars_stream.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !6055, !noalias !6019
  store ptr %i.z, ptr %i.d, align 8, !dbg !6055, !noalias !6019
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !6056, !noalias !6019
  store ptr %i.d, ptr %i.c, align 8, !dbg !6056, !noalias !6019
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !6056
  store ptr @_RNvXs7_NtNtCsh8eZTKRCwoO_3std2io5errorNtB5_5ErrorNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !dbg !6056, !noalias !6019
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @20, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #36
          to label %bb.l unwind label %bb.k, !dbg !6057, !noalias !6021

bb.k:                                             ; preds = %bb.j
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i = load ptr, ptr %i.d, align 8, !dbg !6058, !noalias !6019, !nonnull !3786, !noundef !3786
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream(ptr nonnull %.val.i) #35
          to label %bb.n unwind label %bb.m, !dbg !6058, !noalias !6021

bb.l:                                             ; preds = %bb.j
  unreachable

bb.m:                                             ; preds = %bb.o, %bb.n, %bb.k
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !6059, !noalias !6021
  unreachable, !dbg !6059

bb.n:                                             ; preds = %bb.k
  %i.ad = invoke noundef zeroext i1 @_RNvMNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i unwind label %bb.m, !dbg !6060, !noalias !6021

.noexc.i:                                         ; preds = %bb.n
  br i1 %i.ad, label %bb.o, label %common.resume.i, !dbg !6061

bb.o:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %common.resume.i unwind label %bb.m, !dbg !6062, !noalias !6021

_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCNvXNtCskAlUH1kY1DR_10polars_ooc11spill_frameNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1u_9Spillable7unspill00B27_ECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvXNtCskAlUH1kY1DR_10polars_ooc11spill_frameNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1A_9Spillable7unspill00B2d_ECs2g09Ig8GZd6_13polars_stream.exit.i
  ret ptr %i.t, !dbg !6063
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvMCsidoPH4Qgqxm_12polars_asyncNtB3_14RuntimeManager14spawn_blockingNCNCNvXs_NtNtCs2g09Ig8GZd6_13polars_stream5nodes13callback_sinkNtB1f_16CallbackSinkNodeNtB1h_11ComputeNode12update_state00INtNtCscgRAwXFJnXP_4core6result6ResultbNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB1j_(ptr noundef nonnull align 8 captures(address, read_provenance) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !6064 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [64 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !6119 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !6120, !range !3814, !noundef !3786
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !6120
  %i.h = trunc nuw i64 %i.f to i1, !dbg !6121     ; 2 uses
  %i.i = load ptr, ptr %i.g, align 8, !dbg !6122, !nonnull !3786, !noundef !3786 ; 2 uses
  %. = select i1 %i.h, i64 480, i64 712, !dbg !6123
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %., !dbg !6124
  br label %bb.b, !dbg !6125

bb.b:                                             ; preds = %bb.b, %bb.a
  %i.k = atomicrmw add ptr @_RNvNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !dbg !6126, !noalias !6113 ; 2 uses
  %.not.i.i = icmp eq i64 %i.k, 0, !dbg !6127
  br i1 %.not.i.i, label %bb.b, label %bb.c, !dbg !6128

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !6129, !noalias !6113
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(64) %1, i64 64, i1 false), !dbg !6129, !noalias !6114
  %.sroa.01.0.v.i.i.i = select i1 %i.h, i64 504, i64 512, !dbg !6130
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sroa.01.0.v.i.i.i, !dbg !6130 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16, !dbg !6131
  %i.m = load ptr, ptr %i.l, align 8, !dbg !6132, !noalias !6113, !noundef !3786 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.m, null, !dbg !6132
  br i1 %.not.i.i.i, label %bb.f, label %bb.d, !dbg !6133

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24, !dbg !6132
  %i.o = load ptr, ptr %i.n, align 8, !dbg !6134, !noalias !6113, !nonnull !3786, !align !3839, !noundef !3786
  %i.p = atomicrmw add ptr %i.m, i64 1 monotonic, align 8, !dbg !6135, !noalias !6113
  %i.q = icmp slt i64 %i.p, 0, !dbg !6136
  br i1 %i.q, label %bb.e, label %bb.f, !dbg !6136

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.trap(), !dbg !6137
  unreachable, !dbg !6137

bb.f:                                             ; preds = %bb.d, %bb.c
  %.sroa.5.0.i.i.i = phi ptr [ undef, %bb.c ], [ %i.o, %bb.d ], !dbg !6138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !6139, !noalias !6113
  call void @_RINvNtNtCskmDBXs7hs3c_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCNvXs_NtNtCs2g09Ig8GZd6_13polars_stream5nodes13callback_sinkNtB1x_16CallbackSinkNodeNtB1z_11ComputeNode12update_state00ENtNtBR_8schedule16BlockingScheduleEB1B_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.b, ptr noundef %i.m, ptr %.sroa.5.0.i.i.i, i64 noundef %i.k), !dbg !6139, !noalias !6113
  %i.r = load ptr, ptr %i.a, align 8, !dbg !6140, !noalias !6113, !nonnull !3786, !noundef !3786
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !6141
  %i.t = load ptr, ptr %i.s, align 8, !dbg !6141, !noalias !6113, !nonnull !3786, !noundef !3786 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !6142, !noalias !6113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !6143, !noalias !6113
  %i.u = invoke { i64, ptr } @_RNvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j, ptr noundef nonnull %i.r, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
          to label %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvXs_NtNtCs2g09Ig8GZd6_13polars_stream5nodes13callback_sinkNtB1A_16CallbackSinkNodeNtB1C_11ComputeNode12update_state00INtNtCscgRAwXFJnXP_4core6result6ResultbNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB1E_.exit.i unwind label %bb.g, !dbg !6144, !noalias !6115 ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = invoke noundef zeroext i1 @_RNvMNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i.i unwind label %bb.i, !dbg !6145, !noalias !6115

.noexc.i.i:                                       ; preds = %bb.g
  br i1 %i.w, label %bb.h, label %common.resume.i, !dbg !6146

bb.h:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %common.resume.i unwind label %bb.i, !dbg !6147, !noalias !6115

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !6148, !noalias !6115
  unreachable, !dbg !6148

common.resume.i:                                  ; preds = %bb.o, %.noexc.i, %bb.h, %.noexc.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.v, %.noexc.i.i ], [ %i.v, %bb.h ], [ %i.ab, %.noexc.i ], [ %i.ab, %bb.o ]
  resume { ptr, i32 } %common.resume.op.i, !dbg !6149

_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvXs_NtNtCs2g09Ig8GZd6_13polars_stream5nodes13callback_sinkNtB1A_16CallbackSinkNodeNtB1C_11ComputeNode12update_state00INtNtCscgRAwXFJnXP_4core6result6ResultbNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB1E_.exit.i: ; preds = %bb.f
  %i.y = extractvalue { i64, ptr } %i.u, 0, !dbg !6150
  %i.z = extractvalue { i64, ptr } %i.u, 1, !dbg !6150 ; 2 uses
  %i.aa = trunc nuw i64 %i.y to i1, !dbg !6151
  %.not.i = icmp ne ptr %i.z, null
  %or.cond.not.i = select i1 %i.aa, i1 %.not.i, i1 false, !dbg !6151, !prof !3854
  br i1 %or.cond.not.i, label %bb.j, label %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCNvXs_NtNtCs2g09Ig8GZd6_13polars_stream5nodes13callback_sinkNtB1u_16CallbackSinkNodeNtB1w_11ComputeNode12update_state00INtNtCscgRAwXFJnXP_4core6result6ResultbNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB1y_.exit, !dbg !6151, !prof !3854

bb.j:                                             ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvXs_NtNtCs2g09Ig8GZd6_13polars_stream5nodes13callback_sinkNtB1A_16CallbackSinkNodeNtB1C_11ComputeNode12update_state00INtNtCscgRAwXFJnXP_4core6result6ResultbNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB1E_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !6152, !noalias !6116
  store ptr %i.z, ptr %i.d, align 8, !dbg !6152, !noalias !6116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !6153, !noalias !6116
  store ptr %i.d, ptr %i.c, align 8, !dbg !6153, !noalias !6116
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !6153
  store ptr @_RNvXs7_NtNtCsh8eZTKRCwoO_3std2io5errorNtB5_5ErrorNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !dbg !6153, !noalias !6116
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @20, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #36
          to label %bb.l unwind label %bb.k, !dbg !6154, !noalias !6118

bb.k:                                             ; preds = %bb.j
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i = load ptr, ptr %i.d, align 8, !dbg !6155, !noalias !6116, !nonnull !3786, !noundef !3786
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream(ptr nonnull %.val.i) #35
          to label %bb.n unwind label %bb.m, !dbg !6155, !noalias !6118

bb.l:                                             ; preds = %bb.j
  unreachable

bb.m:                                             ; preds = %bb.o, %bb.n, %bb.k
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !6156, !noalias !6118
  unreachable, !dbg !6156

bb.n:                                             ; preds = %bb.k
  %i.ad = invoke noundef zeroext i1 @_RNvMNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i unwind label %bb.m, !dbg !6157, !noalias !6118

.noexc.i:                                         ; preds = %bb.n
  br i1 %i.ad, label %bb.o, label %common.resume.i, !dbg !6158

bb.o:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %common.resume.i unwind label %bb.m, !dbg !6159, !noalias !6118

_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCNvXs_NtNtCs2g09Ig8GZd6_13polars_stream5nodes13callback_sinkNtB1u_16CallbackSinkNodeNtB1w_11ComputeNode12update_state00INtNtCscgRAwXFJnXP_4core6result6ResultbNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB1y_.exit: ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvXs_NtNtCs2g09Ig8GZd6_13polars_stream5nodes13callback_sinkNtB1A_16CallbackSinkNodeNtB1C_11ComputeNode12update_state00INtNtCscgRAwXFJnXP_4core6result6ResultbNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB1E_.exit.i
  ret ptr %i.t, !dbg !6160
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvMCsidoPH4Qgqxm_12polars_asyncNtB3_14RuntimeManager14spawn_blockingNCNCNvXs_NtNtCs2g09Ig8GZd6_13polars_stream5nodes13callback_sinkNtB1f_16CallbackSinkNodeNtB1h_11ComputeNode5spawn0s_0INtNtCscgRAwXFJnXP_4core6result6ResultbNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB1j_(ptr noundef nonnull align 8 captures(address, read_provenance) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !6161 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [64 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !6216 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !6217, !range !3814, !noundef !3786
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !6217
  %i.h = trunc nuw i64 %i.f to i1, !dbg !6218     ; 2 uses
  %i.i = load ptr, ptr %i.g, align 8, !dbg !6219, !nonnull !3786, !noundef !3786 ; 2 uses
  %. = select i1 %i.h, i64 480, i64 712, !dbg !6220
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %., !dbg !6221
  br label %bb.b, !dbg !6222

bb.b:                                             ; preds = %bb.b, %bb.a
  %i.k = atomicrmw add ptr @_RNvNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !dbg !6223, !noalias !6210 ; 2 uses
  %.not.i.i = icmp eq i64 %i.k, 0, !dbg !6224
  br i1 %.not.i.i, label %bb.b, label %bb.c, !dbg !6225

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !6226, !noalias !6210
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(64) %1, i64 64, i1 false), !dbg !6226, !noalias !6211
  %.sroa.01.0.v.i.i.i = select i1 %i.h, i64 504, i64 512, !dbg !6227
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sroa.01.0.v.i.i.i, !dbg !6227 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16, !dbg !6228
  %i.m = load ptr, ptr %i.l, align 8, !dbg !6229, !noalias !6210, !noundef !3786 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.m, null, !dbg !6229
  br i1 %.not.i.i.i, label %bb.f, label %bb.d, !dbg !6230

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24, !dbg !6229
  %i.o = load ptr, ptr %i.n, align 8, !dbg !6231, !noalias !6210, !nonnull !3786, !align !3839, !noundef !3786
  %i.p = atomicrmw add ptr %i.m, i64 1 monotonic, align 8, !dbg !6232, !noalias !6210
  %i.q = icmp slt i64 %i.p, 0, !dbg !6233
  br i1 %i.q, label %bb.e, label %bb.f, !dbg !6233

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.trap(), !dbg !6234
  unreachable, !dbg !6234

bb.f:                                             ; preds = %bb.d, %bb.c
  %.sroa.5.0.i.i.i = phi ptr [ undef, %bb.c ], [ %i.o, %bb.d ], !dbg !6235
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !6236, !noalias !6210
  call void @_RINvNtNtCskmDBXs7hs3c_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCNvXs_NtNtCs2g09Ig8GZd6_13polars_stream5nodes13callback_sinkNtB1x_16CallbackSinkNodeNtB1z_11ComputeNode5spawn0s_0ENtNtBR_8schedule16BlockingScheduleEB1B_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.b, ptr noundef %i.m, ptr %.sroa.5.0.i.i.i, i64 noundef %i.k), !dbg !6236, !noalias !6210
  %i.r = load ptr, ptr %i.a, align 8, !dbg !6237, !noalias !6210, !nonnull !3786, !noundef !3786
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !6238
  %i.t = load ptr, ptr %i.s, align 8, !dbg !6238, !noalias !6210, !nonnull !3786, !noundef !3786 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !6239, !noalias !6210
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !6240, !noalias !6210
  %i.u = invoke { i64, ptr } @_RNvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j, ptr noundef nonnull %i.r, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
          to label %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvXs_NtNtCs2g09Ig8GZd6_13polars_stream5nodes13callback_sinkNtB1A_16CallbackSinkNodeNtB1C_11ComputeNode5spawn0s_0INtNtCscgRAwXFJnXP_4core6result6ResultbNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB1E_.exit.i unwind label %bb.g, !dbg !6241, !noalias !6212 ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = invoke noundef zeroext i1 @_RNvMNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i.i unwind label %bb.i, !dbg !6242, !noalias !6212

.noexc.i.i:                                       ; preds = %bb.g
  br i1 %i.w, label %bb.h, label %common.resume.i, !dbg !6243

bb.h:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %common.resume.i unwind label %bb.i, !dbg !6244, !noalias !6212

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !6245, !noalias !6212
  unreachable, !dbg !6245

common.resume.i:                                  ; preds = %bb.o, %.noexc.i, %bb.h, %.noexc.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.v, %.noexc.i.i ], [ %i.v, %bb.h ], [ %i.ab, %.noexc.i ], [ %i.ab, %bb.o ]
  resume { ptr, i32 } %common.resume.op.i, !dbg !6246

_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvXs_NtNtCs2g09Ig8GZd6_13polars_stream5nodes13callback_sinkNtB1A_16CallbackSinkNodeNtB1C_11ComputeNode5spawn0s_0INtNtCscgRAwXFJnXP_4core6result6ResultbNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB1E_.exit.i: ; preds = %bb.f
  %i.y = extractvalue { i64, ptr } %i.u, 0, !dbg !6247
  %i.z = extractvalue { i64, ptr } %i.u, 1, !dbg !6247 ; 2 uses
  %i.aa = trunc nuw i64 %i.y to i1, !dbg !6248
  %.not.i = icmp ne ptr %i.z, null
  %or.cond.not.i = select i1 %i.aa, i1 %.not.i, i1 false, !dbg !6248, !prof !3854
  br i1 %or.cond.not.i, label %bb.j, label %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCNvXs_NtNtCs2g09Ig8GZd6_13polars_stream5nodes13callback_sinkNtB1u_16CallbackSinkNodeNtB1w_11ComputeNode5spawn0s_0INtNtCscgRAwXFJnXP_4core6result6ResultbNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB1y_.exit, !dbg !6248, !prof !3854

bb.j:                                             ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvXs_NtNtCs2g09Ig8GZd6_13polars_stream5nodes13callback_sinkNtB1A_16CallbackSinkNodeNtB1C_11ComputeNode5spawn0s_0INtNtCscgRAwXFJnXP_4core6result6ResultbNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB1E_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !6249, !noalias !6213
  store ptr %i.z, ptr %i.d, align 8, !dbg !6249, !noalias !6213
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !6250, !noalias !6213
  store ptr %i.d, ptr %i.c, align 8, !dbg !6250, !noalias !6213
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !6250
  store ptr @_RNvXs7_NtNtCsh8eZTKRCwoO_3std2io5errorNtB5_5ErrorNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !dbg !6250, !noalias !6213
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @20, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #36
          to label %bb.l unwind label %bb.k, !dbg !6251, !noalias !6215

bb.k:                                             ; preds = %bb.j
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i = load ptr, ptr %i.d, align 8, !dbg !6252, !noalias !6213, !nonnull !3786, !noundef !3786
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream(ptr nonnull %.val.i) #35
          to label %bb.n unwind label %bb.m, !dbg !6252, !noalias !6215

bb.l:                                             ; preds = %bb.j
  unreachable

bb.m:                                             ; preds = %bb.o, %bb.n, %bb.k
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !6253, !noalias !6215
  unreachable, !dbg !6253

bb.n:                                             ; preds = %bb.k
  %i.ad = invoke noundef zeroext i1 @_RNvMNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i unwind label %bb.m, !dbg !6254, !noalias !6215

.noexc.i:                                         ; preds = %bb.n
  br i1 %i.ad, label %bb.o, label %common.resume.i, !dbg !6255

bb.o:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %common.resume.i unwind label %bb.m, !dbg !6256, !noalias !6215

_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCNvXs_NtNtCs2g09Ig8GZd6_13polars_stream5nodes13callback_sinkNtB1u_16CallbackSinkNodeNtB1w_11ComputeNode5spawn0s_0INtNtCscgRAwXFJnXP_4core6result6ResultbNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB1y_.exit: ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvXs_NtNtCs2g09Ig8GZd6_13polars_stream5nodes13callback_sinkNtB1A_16CallbackSinkNodeNtB1C_11ComputeNode5spawn0s_0INtNtCscgRAwXFJnXP_4core6result6ResultbNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB1E_.exit.i
  ret ptr %i.t, !dbg !6257
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMCsidoPH4Qgqxm_12polars_asyncNtB3_14RuntimeManager17block_in_place_onINtNtB3_8executor10JoinHandleINtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECs2g09Ig8GZd6_13polars_stream(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noundef nonnull align 8 %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !6258 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [3 x i8], align 1                 ; 7 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [1 x i8], align 1                 ; 5 uses
  %i.g = alloca [1 x i8], align 1                 ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [16 x i8], align 8                ; 3 uses
  store ptr %2, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %3, ptr %i.k, align 8
  %i.l = invoke noundef zeroext i1 @_RINvMs2_NtNtCsh8eZTKRCwoO_3std6thread5localINtB6_8LocalKeyINtNtCscgRAwXFJnXP_4core4cell4CellbEE4withNvMs8_BX_BU_3getbECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @4)
          to label %bb.b unwind label %bb.w, !dbg !6353

bb.b:                                             ; preds = %bb.a
  br i1 %i.l, label %bb.t, label %bb.c, !dbg !6354

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !6355
  store ptr %1, ptr %i.h, align 8, !dbg !6355
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !6355 ; 2 uses
  store ptr %2, ptr %i.m, align 8, !dbg !6355
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !6355
  store ptr %3, ptr %i.n, align 8, !dbg !6355
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !6356, !noalias !6337
  store i8 0, ptr %i.g, align 1, !dbg !6357, !noalias !6337
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !6358, !noalias !6337
  store i8 0, ptr %i.f, align 1, !dbg !6359, !noalias !6337
  %i.o = invoke { ptr, i64 } @_RINvNtNtCskmDBXs7hs3c_5tokio7runtime7context14with_schedulerINtNtCscgRAwXFJnXP_4core6result6ResultuReENCINvNtNtNtB4_9scheduler12multi_thread6worker12with_currentBW_NCINvB1H_14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB37_14RuntimeManager17block_in_place_onINtNtB37_8executor10JoinHandleIBX_uNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEs_0B4I_E0E0ECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull dereferenceable(1) %i.g, ptr noalias noundef nonnull dereferenceable(1) %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5)
          to label %bb.d unwind label %bb.r, !dbg !6360, !noalias !6337 ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.p = extractvalue { ptr, i64 } %i.o, 0, !dbg !6360 ; 2 uses
  %.not.i = icmp eq ptr %i.p, null, !dbg !6361
  br i1 %.not.i, label %bb.f, label %bb.e, !dbg !6362, !prof !3869

bb.e:                                             ; preds = %bb.d
  %i.q = extractvalue { ptr, i64 } %i.o, 1, !dbg !6360
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !6363, !noalias !6337
  store ptr %i.p, ptr %i.e, align 8, !dbg !6363, !noalias !6337
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !6363
  store i64 %i.q, ptr %i.r, align 8, !dbg !6363, !noalias !6337
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !6364, !noalias !6337
  store ptr %i.e, ptr %i.b, align 8, !dbg !6364, !noalias !6337
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !6364
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtReNtB6_7Display3fmtCs2g09Ig8GZd6_13polars_stream, ptr %.sroa.46.0..sroa_idx.i, align 8, !dbg !6364, !noalias !6337
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @48, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #36
          to label %bb.g unwind label %bb.r, !dbg !6365, !noalias !6337

bb.f:                                             ; preds = %bb.d
  %i.s = load i8, ptr %i.g, align 1, !dbg !6366, !range !3872, !noalias !6337, !noundef !3786
  %i.t = trunc nuw i8 %i.s to i1, !dbg !6366
  br i1 %i.t, label %bb.i, label %bb.h, !dbg !6366

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.f
  call void @_RINvMNtNtCskmDBXs7hs3c_5tokio7runtime7runtimeNtB3_7Runtime8block_onINtNtCsidoPH4Qgqxm_12polars_async8executor10JoinHandleINtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noundef nonnull align 8 %1, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69), !dbg !6367
  br label %bb.u, !dbg !6367

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !6368, !noalias !6337
  %i.u = load i8, ptr %i.f, align 1, !dbg !6369, !range !3872, !noalias !6337, !noundef !3786
  %i.v = invoke { i1, i8 } @_RNvNtNtCskmDBXs7hs3c_5tokio4task4coop4stop()
          to label %bb.j unwind label %bb.r, !dbg !6370, !noalias !6337 ; 2 uses

bb.j:                                             ; preds = %bb.i
  %i.w = extractvalue { i1, i8 } %i.v, 0, !dbg !6370
  %i.x = extractvalue { i1, i8 } %i.v, 1, !dbg !6370
  store i8 %i.u, ptr %i.d, align 1, !dbg !6371, !noalias !6337
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 1, !dbg !6371
  %i.z = zext i1 %i.w to i8, !dbg !6371
  store i8 %i.z, ptr %i.y, align 1, !dbg !6371, !noalias !6337
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 2, !dbg !6371
  store i8 %i.x, ptr %i.aa, align 1, !dbg !6371, !noalias !6337
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !6372, !noalias !6337
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !dbg !6372, !noalias !6340
  call void @llvm.experimental.noalias.scope.decl(metadata !6341), !dbg !6373
  %i.ab = invoke noundef i8 @_RINvMs2_NtNtCsh8eZTKRCwoO_3std6thread5localINtB6_8LocalKeyNtNtNtCskmDBXs7hs3c_5tokio7runtime7context7ContextE4withNCINvNtBW_10runtime_mt12exit_runtimeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2u_14RuntimeManager17block_in_place_onINtNtB2u_8executor10JoinHandleINtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEs_0B45_E0NtNtBW_7runtime12EnterRuntimeECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @27)
          to label %bb.k unwind label %bb.n, !dbg !6374, !noalias !6342

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !6375, !noalias !6342
  store i8 %i.ab, ptr %i.a, align 1, !dbg !6376, !noalias !6342
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.c, align 8, !dbg !6377, !alias.scope !6341, !noalias !6343, !nonnull !3786, !noundef !3786
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !6377
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !6377, !alias.scope !6341, !noalias !6343, !nonnull !3786, !noundef !3786
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !6377
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !6377, !alias.scope !6341, !noalias !6343, !nonnull !3786, !noundef !3786
  invoke void @_RINvMNtNtCskmDBXs7hs3c_5tokio7runtime7runtimeNtB3_7Runtime8block_onINtNtCsidoPH4Qgqxm_12polars_async8executor10JoinHandleINtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noundef nonnull align 8 %.sroa.0.0.copyload.i.i, ptr noundef nonnull %.sroa.4.0.copyload.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %.sroa.5.0.copyload.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69)
          to label %_RNCINvMCsidoPH4Qgqxm_12polars_asyncNtB5_14RuntimeManager17block_in_place_onINtNtB5_8executor10JoinHandleINtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEs_0Cs2g09Ig8GZd6_13polars_stream.exit.i.i unwind label %bb.l, !dbg !6378, !noalias !6344

bb.l:                                             ; preds = %bb.k
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXNvNtNtNtCskmDBXs7hs3c_5tokio7runtime7context10runtime_mt12exit_runtimeNtB2_5ResetNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(1) %i.a)
          to label %.body.i unwind label %bb.m, !dbg !6379, !noalias !6342

_RNCINvMCsidoPH4Qgqxm_12polars_asyncNtB5_14RuntimeManager17block_in_place_onINtNtB5_8executor10JoinHandleINtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEs_0Cs2g09Ig8GZd6_13polars_stream.exit.i.i: ; preds = %bb.k
  invoke void @_RNvXNvNtNtNtCskmDBXs7hs3c_5tokio7runtime7context10runtime_mt12exit_runtimeNtB2_5ResetNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(1) %i.a)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNvNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler12multi_thread6worker14block_in_place5ResetECs2g09Ig8GZd6_13polars_stream.exit9.i unwind label %bb.p, !dbg !6380, !noalias !6337

bb.m:                                             ; preds = %bb.o, %bb.l
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !6381, !noalias !6343
  unreachable, !dbg !6381

bb.n:                                             ; preds = %bb.j
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6345), !dbg !6382
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !6383 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6346), !dbg !6383
  call void @llvm.experimental.noalias.scope.decl(metadata !6347), !dbg !6384
  call void @llvm.experimental.noalias.scope.decl(metadata !6348), !dbg !6385
  %i.ag = load ptr, ptr %i.af, align 8, !dbg !6386, !alias.scope !6349, !noalias !6343, !nonnull !3786, !noundef !3786
  %i.ah = atomicrmw sub ptr %i.ag, i64 1 release, align 8, !dbg !6387, !noalias !6350
  %i.ai = icmp eq i64 %i.ah, 1, !dbg !6388
  br i1 %i.ai, label %bb.o, label %.body.i, !dbg !6388

bb.o:                                             ; preds = %bb.n
  fence acquire, !dbg !6389
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task7DynTaskINtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENtBM_12TaskMetadataEEL_E9drop_slowCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.af) #38
          to label %.body.i unwind label %bb.m, !dbg !6390, !noalias !6343

bb.p:                                             ; preds = %_RNCINvMCsidoPH4Qgqxm_12polars_asyncNtB5_14RuntimeManager17block_in_place_onINtNtB5_8executor10JoinHandleINtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEs_0Cs2g09Ig8GZd6_13polars_stream.exit.i.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body.i, !dbg !6391

.body.i:                                          ; preds = %bb.p, %bb.o, %bb.n, %bb.l
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.aj, %bb.p ], [ %i.ae, %bb.n ], [ %i.ac, %bb.l ], [ %i.ae, %bb.o ]
  invoke void @_RNvXNvNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler12multi_thread6worker14block_in_placeNtB2_5ResetNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(3) %i.d)
          to label %.body.thread unwind label %bb.q, !dbg !6392, !noalias !6337

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNvNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler12multi_thread6worker14block_in_place5ResetECs2g09Ig8GZd6_13polars_stream.exit9.i: ; preds = %_RNCINvMCsidoPH4Qgqxm_12polars_asyncNtB5_14RuntimeManager17block_in_place_onINtNtB5_8executor10JoinHandleINtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEs_0Cs2g09Ig8GZd6_13polars_stream.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !6393, !noalias !6342
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !6394, !noalias !6337
  call void @_RNvXNvNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler12multi_thread6worker14block_in_placeNtB2_5ResetNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(3) %i.d), !dbg !6395
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !6391, !noalias !6337
  br label %bb.u, !dbg !6396

bb.q:                                             ; preds = %bb.s, %.body.i
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !6397, !noalias !6340
  unreachable, !dbg !6397

bb.r:                                             ; preds = %bb.i, %bb.e, %bb.c
  %lpad.thr_comm.i = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_RINvMs1_NtNtCs8RKTHBS4OBx_12object_store3aws7builderNtB6_15AmazonS3Builder11with_configReECs2g09Ig8GZd6_13polars_stream:bb.a
  %i.lz = getelementptr inbounds nuw i8, ptr %1, i64 1256, !dbg !19105
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8RKTHBS4OBx_12object_store6config11ConfigValueNtNtNtBL_3aws7builder14RequesterPayerEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.lz) #35
          to label %bb.gn unwind label %bb.fe, !dbg !19105

bb.gn:                                            ; preds = %bb.gm
  %i.ma = getelementptr inbounds nuw i8, ptr %1, i64 1488, !dbg !19105 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !18855), !dbg !19105
  %i.mb = load ptr, ptr %i.ma, align 8, !dbg !19248, !alias.scope !18855, !noundef !3786 ; 2 uses
  %i.mc = icmp eq ptr %i.mb, null, !dbg !19248
  br i1 %i.mc, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtNtNtCs8RKTHBS4OBx_12object_store6client4http10connection13HttpConnectorEL_EEECs2g09Ig8GZd6_13polars_stream.exit, label %bb.go, !dbg !19248

bb.go:                                            ; preds = %bb.gn
  %i.md = atomicrmw sub ptr %i.mb, i64 1 release, align 8, !dbg !19249, !noalias !18856
  %i.me = icmp eq i64 %i.md, 1, !dbg !19250
  br i1 %i.me, label %bb.gp, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtNtNtCs8RKTHBS4OBx_12object_store6client4http10connection13HttpConnectorEL_EEECs2g09Ig8GZd6_13polars_stream.exit, !dbg !19250

bb.gp:                                            ; preds = %bb.go
  fence acquire, !dbg !19251
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtNtCs8RKTHBS4OBx_12object_store6client4http10connection13HttpConnectorEL_E9drop_slowBP_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ma) #38
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtNtNtCs8RKTHBS4OBx_12object_store6client4http10connection13HttpConnectorEL_EEECs2g09Ig8GZd6_13polars_stream.exit unwind label %bb.fe, !dbg !19252

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtNtNtCs8RKTHBS4OBx_12object_store6client4http10connection13HttpConnectorEL_EEECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.go, %bb.gn, %bb.gp
  resume { ptr, i32 } %.pn, !dbg !19242
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs1_NtNtCs8RKTHBS4OBx_12object_store3aws7builderNtB6_15AmazonS3Builder8with_urlNtNtCsgZ49sUHp3tW_5alloc6string6StringECs2g09Ig8GZd6_13polars_stream(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([1504 x i8]) align 8 captures(none) dereferenceable(1504) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(1504) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !109 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 824, !dbg !19261 ; 6 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !19262, !range !3952, !alias.scope !19260, !noundef !3786
  %i.c = icmp eq i64 %i.b, -9223372036854775808, !dbg !19262
  br i1 %i.c, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsgZ49sUHp3tW_5alloc6string6StringEECs2g09Ig8GZd6_13polars_stream.exit, label %bb.b, !dbg !19262

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECs2g09Ig8GZd6_13polars_stream.exit.i unwind label %bb.c, !dbg !19263

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.d, !dbg !19264

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !19263
  unreachable, !dbg !19263

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsgZ49sUHp3tW_5alloc6string6StringEECs2g09Ig8GZd6_13polars_stream.exit unwind label %bb.e, !dbg !19265

bb.e:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECs2g09Ig8GZd6_13polars_stream.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !19261

.body:                                            ; preds = %bb.c, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.d, %bb.c ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !dbg !19261
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8RKTHBS4OBx_12object_store3aws7builder15AmazonS3BuilderECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(1504) %1) #35
          to label %bb.g unwind label %bb.f, !dbg !19266

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsgZ49sUHp3tW_5alloc6string6StringEECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.a, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECs2g09Ig8GZd6_13polars_stream.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !dbg !19261
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1504) %0, ptr noundef nonnull align 8 dereferenceable(1504) %1, i64 1504, i1 false), !dbg !19267
  ret void, !dbg !19268

bb.f:                                             ; preds = %.body
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !19269
  unreachable, !dbg !19269

bb.g:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body, !dbg !19269
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs2_NtCsh8eZTKRCwoO_3std2fsNtB6_4File4openRNtNtB8_4path7PathBufECs2g09Ig8GZd6_13polars_stream(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !110 {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !19272
  store i32 0, ptr %i.a, align 4, !dbg !19275
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4, !dbg !19275
  store i32 438, ptr %.sroa.4.0..sroa_idx, align 4, !dbg !19275
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !19275 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %.sroa.5.0..sroa_idx, i8 0, i64 6, i1 false), !dbg !19275
  store i8 1, ptr %.sroa.5.0..sroa_idx, align 4, !dbg !19276
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !19277
  %.val.i = load ptr, ptr %i.b, align 8, !dbg !19277, !nonnull !3786, !noundef !3786
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !19277
  %.val1.i = load i64, ptr %i.c, align 8, !dbg !19277, !noundef !3786
  call void @_RNvMsl_NtCsh8eZTKRCwoO_3std2fsNtB5_11OpenOptions5__open(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val1.i), !dbg !19278
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !19279
  ret void, !dbg !19280
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs4_NtCs3XBxJoY2OLA_9once_cell4syncINtB6_8OnceCellINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtBV_5types6string8PyStringEE15get_or_try_initNCINvB2_11get_or_initNCINvNtNtBV_4sync9once_lock26init_once_cell_py_attachedNCNvMs3_B2G_NtB2G_8Interned3get0BQ_E0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidECs2g09Ig8GZd6_13polars_stream(ptr noundef nonnull align 8 %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !19281 {
bb.a:
  %i.a = load atomic ptr, ptr %0 acquire, align 8, !dbg !19293
  %.not = icmp eq ptr %i.a, inttoptr (i64 2 to ptr), !dbg !19294
  br i1 %.not, label %bb.b, label %bb.c, !dbg !19295, !prof !3869

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !19296
  tail call void @_RNvXs4_NtNtCsbm5zPlkZccl_4pyo38internal5stateNtB5_13SuspendAttachNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b), !dbg !19297
  br label %bb.d, !dbg !19298

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvMs2_NtCs3XBxJoY2OLA_9once_cell3impINtB6_8OnceCellINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtBU_5types6string8PyStringEE10initializeNCINvMs4_NtB8_4syncINtB2h_8OnceCellBP_E11get_or_initNCINvNtNtBU_4sync9once_lock26init_once_cell_py_attachedNCNvMs3_B35_NtB35_8Interned3get0BP_E0E0NtNvMs4_B2h_IB2s_pE11get_or_init4VoidECs2g09Ig8GZd6_13polars_stream(ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1), !dbg !19299
  br label %bb.d, !dbg !19298

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  ret ptr %i.c, !dbg !19300
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCNvMs1_Cs8RKTHBS4OBx_12object_storeNtB1v_9GetResult5bytes00INtNtCscgRAwXFJnXP_4core6result6ResultNtNtCshK0ivY6saku_5bytes5bytes5BytesNtB1v_5ErrorEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !19301 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19338), !dbg !19344
  br label %bb.b, !dbg !19345

bb.b:                                             ; preds = %bb.b, %bb.a
  %i.e = atomicrmw add ptr @_RNvNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !dbg !19346, !noalias !19339 ; 2 uses
  %.not.i = icmp eq i64 %i.e, 0, !dbg !19347
  br i1 %.not.i, label %bb.b, label %bb.c, !dbg !19348

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !19349, !noalias !19339
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(48) %2, i64 48, i1 false), !dbg !19349, !noalias !19340
  %.val.i = load i64, ptr %1, align 8, !dbg !19350, !range !3814, !alias.scope !19338, !noalias !19341, !noundef !3786
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !19350
  %.val7.i = load ptr, ptr %i.f, align 8, !dbg !19350, !alias.scope !19338, !noalias !19341
  %i.g = trunc nuw i64 %.val.i to i1, !dbg !19351
  %.sroa.01.0.v.i.i = select i1 %i.g, i64 504, i64 512, !dbg !19351
  %.sroa.01.0.i.i = getelementptr inbounds nuw i8, ptr %.val7.i, i64 %.sroa.01.0.v.i.i, !dbg !19351 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 16, !dbg !19352
  %i.i = load ptr, ptr %i.h, align 8, !dbg !19353, !noalias !19339, !noundef !3786 ; 3 uses
  %.not.i.i = icmp eq ptr %i.i, null, !dbg !19353
  br i1 %.not.i.i, label %bb.f, label %bb.d, !dbg !19354

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 24, !dbg !19353
  %i.k = load ptr, ptr %i.j, align 8, !dbg !19355, !noalias !19339, !nonnull !3786, !align !3839, !noundef !3786
  %i.l = atomicrmw add ptr %i.i, i64 1 monotonic, align 8, !dbg !19356, !noalias !19339
  %i.m = icmp slt i64 %i.l, 0, !dbg !19357
  br i1 %i.m, label %bb.e, label %bb.f, !dbg !19357

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.trap(), !dbg !19358
  unreachable, !dbg !19358

bb.f:                                             ; preds = %bb.d, %bb.c
  %.sroa.5.0.i.i = phi ptr [ undef, %bb.c ], [ %i.k, %bb.d ], !dbg !19359
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !19360, !noalias !19339
  call void @_RINvNtNtCskmDBXs7hs3c_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCNvMs1_Cs8RKTHBS4OBx_12object_storeNtB1y_9GetResult5bytes00ENtNtBR_8schedule16BlockingScheduleECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.b, ptr noundef %i.i, ptr %.sroa.5.0.i.i, i64 noundef %i.e), !dbg !19360, !noalias !19339
  %i.n = load ptr, ptr %i.a, align 8, !dbg !19361, !noalias !19339, !nonnull !3786, !noundef !3786
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !19362
  %i.p = load ptr, ptr %i.o, align 8, !dbg !19362, !noalias !19339, !nonnull !3786, !noundef !3786 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !19363, !noalias !19339
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !19364, !noalias !19339
  %i.q = invoke { i64, ptr } @_RNvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noundef nonnull %i.n, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1)
          to label %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMs1_Cs8RKTHBS4OBx_12object_storeNtB1B_9GetResult5bytes00INtNtCscgRAwXFJnXP_4core6result6ResultNtNtCshK0ivY6saku_5bytes5bytes5BytesNtB1B_5ErrorEECs2g09Ig8GZd6_13polars_stream.exit unwind label %bb.g, !dbg !19365, !noalias !19342 ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = invoke noundef zeroext i1 @_RNvMNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.p)
          to label %.noexc.i unwind label %bb.i, !dbg !19366, !noalias !19342

.noexc.i:                                         ; preds = %bb.g
  br i1 %i.s, label %bb.h, label %common.resume, !dbg !19367

bb.h:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.p)
          to label %common.resume unwind label %bb.i, !dbg !19368, !noalias !19342

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !19369, !noalias !19342
  unreachable, !dbg !19369

common.resume:                                    ; preds = %bb.p, %.noexc, %.noexc.i, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.r, %.noexc.i ], [ %i.r, %bb.h ], [ %i.x, %.noexc ], [ %i.x, %bb.p ]
  resume { ptr, i32 } %common.resume.op, !dbg !19370

_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMs1_Cs8RKTHBS4OBx_12object_storeNtB1B_9GetResult5bytes00INtNtCscgRAwXFJnXP_4core6result6ResultNtNtCshK0ivY6saku_5bytes5bytes5BytesNtB1B_5ErrorEECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.f
  %i.u = extractvalue { i64, ptr } %i.q, 0, !dbg !19371
  %i.v = extractvalue { i64, ptr } %i.q, 1, !dbg !19371 ; 2 uses
  %i.w = trunc nuw i64 %i.u to i1, !dbg !19372
  %.not = icmp ne ptr %i.v, null
  %or.cond.not = select i1 %i.w, i1 %.not, i1 false, !dbg !19372, !prof !3854
  br i1 %or.cond.not, label %bb.k, label %bb.j, !dbg !19372, !prof !3854

bb.j:                                             ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMs1_Cs8RKTHBS4OBx_12object_storeNtB1B_9GetResult5bytes00INtNtCscgRAwXFJnXP_4core6result6ResultNtNtCshK0ivY6saku_5bytes5bytes5BytesNtB1B_5ErrorEECs2g09Ig8GZd6_13polars_stream.exit
  ret ptr %i.p, !dbg !19373

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMs1_Cs8RKTHBS4OBx_12object_storeNtB1B_9GetResult5bytes00INtNtCscgRAwXFJnXP_4core6result6ResultNtNtCshK0ivY6saku_5bytes5bytes5BytesNtB1B_5ErrorEECs2g09Ig8GZd6_13polars_stream.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !19374
  store ptr %i.v, ptr %i.d, align 8, !dbg !19374
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !19375
  store ptr %i.d, ptr %i.c, align 8, !dbg !19375
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !19375
  store ptr @_RNvXs7_NtNtCsh8eZTKRCwoO_3std2io5errorNtB5_5ErrorNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx, align 8, !dbg !19375
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @20, ptr noundef nonnull %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #36
          to label %bb.m unwind label %bb.l, !dbg !19376

bb.l:                                             ; preds = %bb.k
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val = load ptr, ptr %i.d, align 8, !dbg !19377, !nonnull !3786, !noundef !3786
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream(ptr nonnull %.val) #35
          to label %bb.o unwind label %bb.n, !dbg !19377

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.p, %bb.o, %bb.l
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !19378
  unreachable, !dbg !19378

bb.o:                                             ; preds = %bb.l
  %i.z = invoke noundef zeroext i1 @_RNvMNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.p)
          to label %.noexc unwind label %bb.n, !dbg !19379

.noexc:                                           ; preds = %bb.o
  br i1 %i.z, label %bb.p, label %common.resume, !dbg !19380

bb.p:                                             ; preds = %.noexc
  invoke void @_RNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.p)
          to label %common.resume unwind label %bb.n, !dbg !19381
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNvXs_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources3csvNtB1s_13CsvFileReaderNtNtNtB1u_10multi_scan16reader_interface10FileReader10begin_reads0_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB1y_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(96) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !19382 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [96 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19419), !dbg !19425
  br label %bb.b, !dbg !19426

bb.b:                                             ; preds = %bb.b, %bb.a
  %i.e = atomicrmw add ptr @_RNvNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !dbg !19427, !noalias !19420 ; 2 uses
  %.not.i = icmp eq i64 %i.e, 0, !dbg !19428
  br i1 %.not.i, label %bb.b, label %bb.c, !dbg !19429

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !19430, !noalias !19420
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(96) %2, i64 96, i1 false), !dbg !19430, !noalias !19421
  %.val.i = load i64, ptr %1, align 8, !dbg !19431, !range !3814, !alias.scope !19419, !noalias !19422, !noundef !3786
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !19431
  %.val7.i = load ptr, ptr %i.f, align 8, !dbg !19431, !alias.scope !19419, !noalias !19422
  %i.g = trunc nuw i64 %.val.i to i1, !dbg !19432
  %.sroa.01.0.v.i.i = select i1 %i.g, i64 504, i64 512, !dbg !19432
  %.sroa.01.0.i.i = getelementptr inbounds nuw i8, ptr %.val7.i, i64 %.sroa.01.0.v.i.i, !dbg !19432 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 16, !dbg !19433
  %i.i = load ptr, ptr %i.h, align 8, !dbg !19434, !noalias !19420, !noundef !3786 ; 3 uses
  %.not.i.i = icmp eq ptr %i.i, null, !dbg !19434
  br i1 %.not.i.i, label %bb.f, label %bb.d, !dbg !19435

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 24, !dbg !19434
  %i.k = load ptr, ptr %i.j, align 8, !dbg !19436, !noalias !19420, !nonnull !3786, !align !3839, !noundef !3786
  %i.l = atomicrmw add ptr %i.i, i64 1 monotonic, align 8, !dbg !19437, !noalias !19420
  %i.m = icmp slt i64 %i.l, 0, !dbg !19438
  br i1 %i.m, label %bb.e, label %bb.f, !dbg !19438

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.trap(), !dbg !19439
  unreachable, !dbg !19439

bb.f:                                             ; preds = %bb.d, %bb.c
  %.sroa.5.0.i.i = phi ptr [ undef, %bb.c ], [ %i.k, %bb.d ], !dbg !19440
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !19441, !noalias !19420
  call void @_RINvNtNtCskmDBXs7hs3c_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNvXs_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources3csvNtB1v_13CsvFileReaderNtNtNtB1x_10multi_scan16reader_interface10FileReader10begin_reads0_0ENtNtBR_8schedule16BlockingScheduleEB1B_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(96) %i.b, ptr noundef %i.i, ptr %.sroa.5.0.i.i, i64 noundef %i.e), !dbg !19441, !noalias !19420
  %i.n = load ptr, ptr %i.a, align 8, !dbg !19442, !noalias !19420, !nonnull !3786, !noundef !3786
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !19443
  %i.p = load ptr, ptr %i.o, align 8, !dbg !19443, !noalias !19420, !nonnull !3786, !noundef !3786 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !19444, !noalias !19420
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !19445, !noalias !19420
  %i.q = invoke { i64, ptr } @_RNvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noundef nonnull %i.n, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1)
          to label %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNvXs_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources3csvNtB1y_13CsvFileReaderNtNtNtB1A_10multi_scan16reader_interface10FileReader10begin_reads0_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB1E_.exit unwind label %bb.g, !dbg !19446, !noalias !19423 ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = invoke noundef zeroext i1 @_RNvMNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.p)
          to label %.noexc.i unwind label %bb.i, !dbg !19447, !noalias !19423

.noexc.i:                                         ; preds = %bb.g
  br i1 %i.s, label %bb.h, label %common.resume, !dbg !19448

bb.h:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.p)
          to label %common.resume unwind label %bb.i, !dbg !19449, !noalias !19423

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !19450, !noalias !19423
  unreachable, !dbg !19450

common.resume:                                    ; preds = %bb.p, %.noexc, %.noexc.i, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.r, %.noexc.i ], [ %i.r, %bb.h ], [ %i.x, %.noexc ], [ %i.x, %bb.p ]
  resume { ptr, i32 } %common.resume.op, !dbg !19451

_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNvXs_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources3csvNtB1y_13CsvFileReaderNtNtNtB1A_10multi_scan16reader_interface10FileReader10begin_reads0_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB1E_.exit: ; preds = %bb.f
  %i.u = extractvalue { i64, ptr } %i.q, 0, !dbg !19452
  %i.v = extractvalue { i64, ptr } %i.q, 1, !dbg !19452 ; 2 uses
  %i.w = trunc nuw i64 %i.u to i1, !dbg !19453
  %.not = icmp ne ptr %i.v, null
  %or.cond.not = select i1 %i.w, i1 %.not, i1 false, !dbg !19453, !prof !3854
  br i1 %or.cond.not, label %bb.k, label %bb.j, !dbg !19453, !prof !3854

bb.j:                                             ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNvXs_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources3csvNtB1y_13CsvFileReaderNtNtNtB1A_10multi_scan16reader_interface10FileReader10begin_reads0_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB1E_.exit
  ret ptr %i.p, !dbg !19454

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNvXs_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources3csvNtB1y_13CsvFileReaderNtNtNtB1A_10multi_scan16reader_interface10FileReader10begin_reads0_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB1E_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !19455
  store ptr %i.v, ptr %i.d, align 8, !dbg !19455
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !19456
  store ptr %i.d, ptr %i.c, align 8, !dbg !19456
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !19456
  store ptr @_RNvXs7_NtNtCsh8eZTKRCwoO_3std2io5errorNtB5_5ErrorNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx, align 8, !dbg !19456
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @20, ptr noundef nonnull %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #36
          to label %bb.m unwind label %bb.l, !dbg !19457

bb.l:                                             ; preds = %bb.k
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val = load ptr, ptr %i.d, align 8, !dbg !19458, !nonnull !3786, !noundef !3786
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream(ptr nonnull %.val) #35
          to label %bb.o unwind label %bb.n, !dbg !19458

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.p, %bb.o, %bb.l
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !19459
  unreachable, !dbg !19459

bb.o:                                             ; preds = %bb.l
  %i.z = invoke noundef zeroext i1 @_RNvMNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.p)
          to label %.noexc unwind label %bb.n, !dbg !19460

.noexc:                                           ; preds = %bb.o
  br i1 %i.z, label %bb.p, label %common.resume, !dbg !19461

bb.p:                                             ; preds = %.noexc
  invoke void @_RNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.p)
          to label %common.resume unwind label %bb.n, !dbg !19462
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtCskAlUH1kY1DR_10polars_ooc13spill_contextNtB6_16WeakSpillContext8registerNtNtB8_11spill_frame10SpillFrameNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !19463 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !19552
  %i.e = load ptr, ptr %1, align 8, !dbg !19553, !nonnull !3786, !noundef !3786 ; 2 uses
  %i.f = atomicrmw add ptr %i.e, i64 1 monotonic, align 8, !dbg !19554
  %i.g = icmp slt i64 %i.f, 0, !dbg !19555
  br i1 %i.g, label %bb.c, label %bb.b, !dbg !19555

bb.b:                                             ; preds = %bb.a
  store ptr %i.e, ptr %i.d, align 8, !dbg !19556
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !19556 ; 2 uses
  store ptr @21, ptr %i.h, align 8, !dbg !19556
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !19557
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !19558
  %i.i = load ptr, ptr %0, align 8, !dbg !19558, !nonnull !3786, !align !3839, !noundef !3786 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !19558
  %i.k = invoke noundef align 8 ptr @_RINvMs2_CscbFR6njYCjp_12thread_localINtB6_11ThreadLocalINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison6rwlock6RwLockNtNtCskAlUH1kY1DR_10polars_ooc13spill_context15LocalSpillQueueEE10get_or_tryNCINvB2_6get_orNvYBR_NtNtCscgRAwXFJnXP_4core7default7Default7defaultE0uECs2g09Ig8GZd6_13polars_stream(ptr noundef nonnull align 8 %i.j)
          to label %bb.f unwind label %bb.e, !dbg !19559 ; 5 uses

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.trap(), !dbg !19560
  unreachable, !dbg !19560

.body:                                            ; preds = %bb.n, %bb.j, %bb.e
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.j ], [ %i.o, %bb.e ], [ %i.ap, %bb.n ]
  call void @llvm.experimental.noalias.scope.decl(metadata !19536), !dbg !19561
  call void @llvm.experimental.noalias.scope.decl(metadata !19537), !dbg !19562
  %i.l = load ptr, ptr %i.d, align 8, !dbg !19563, !alias.scope !19538, !nonnull !3786, !noundef !3786
  %i.m = atomicrmw sub ptr %i.l, i64 1 release, align 8, !dbg !19564, !noalias !19538
  %i.n = icmp eq i64 %i.m, 1, !dbg !19565
  br i1 %i.n, label %bb.d, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCskAlUH1kY1DR_10polars_ooc11spill_token13DynSpillTokenEL_EECs2g09Ig8GZd6_13polars_stream.exit, !dbg !19565

bb.d:                                             ; preds = %.body
  fence acquire, !dbg !19566
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtCskAlUH1kY1DR_10polars_ooc11spill_token13DynSpillTokenEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d) #38
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCskAlUH1kY1DR_10polars_ooc11spill_token13DynSpillTokenEL_EECs2g09Ig8GZd6_13polars_stream.exit unwind label %bb.t, !dbg !19567

bb.e:                                             ; preds = %bb.q, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag5guard.exit.i, %bb.h, %bb.g, %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.f:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.p = cmpxchg weak ptr %i.k, i32 0, i32 1073741823 acquire monotonic, align 4, !dbg !19568, !noalias !19539
  %i.q = extractvalue { i32, i1 } %i.p, 1, !dbg !19568
  br i1 %i.q, label %.noexc5, label %bb.g, !dbg !19569, !prof !3869

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvMNtNtNtNtCsh8eZTKRCwoO_3std3sys4sync6rwlock5futexNtB2_6RwLock15write_contended(ptr noundef nonnull align 8 %i.k)
          to label %.noexc5 unwind label %bb.e, !dbg !19570

.noexc5:                                          ; preds = %bb.g, %bb.f
  %i.r = load atomic i64, ptr @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !19571, !noalias !19539
  %i.s = and i64 %i.r, 9223372036854775807, !dbg !19572
  %i.t = icmp eq i64 %i.s, 0, !dbg !19572
  br i1 %i.t, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag5guard.exit.i, label %bb.h, !dbg !19572, !prof !3869

bb.h:                                             ; preds = %.noexc5
  %i.u = invoke noundef zeroext i1 @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count17is_zero_slow_path() #38
          to label %.noexc6 unwind label %bb.e, !dbg !19573

.noexc6:                                          ; preds = %bb.h
  %i.v = xor i1 %i.u, true, !dbg !19574
  %i.w = zext i1 %i.v to i8, !dbg !19575
  br label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag5guard.exit.i, !dbg !19573

_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag5guard.exit.i: ; preds = %.noexc6, %.noexc5
  %.sroa.01.0.i.i = phi i8 [ %i.w, %.noexc6 ], [ 0, %.noexc5 ], !dbg !19576
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !19577
  %i.y = load atomic i8, ptr %i.x monotonic, align 8, !dbg !19578, !noalias !19539
  %i.z = icmp ne i8 %i.y, 0, !dbg !19579
  invoke void @_RINvNtNtCsh8eZTKRCwoO_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_6rwlock16RwLockWriteGuardNtNtCskAlUH1kY1DR_10polars_ooc13spill_context15LocalSpillQueueENCNvMse_B10_BX_3new0ECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i1 noundef zeroext %i.z, i8 noundef %.sroa.01.0.i.i, ptr noundef nonnull align 8 %i.k)
          to label %_RNvMs9_NtNtNtCsh8eZTKRCwoO_3std4sync6poison6rwlockINtB5_6RwLockNtNtCskAlUH1kY1DR_10polars_ooc13spill_context15LocalSpillQueueE5writeCs2g09Ig8GZd6_13polars_stream.exit unwind label %bb.e, !dbg !19580

_RNvMs9_NtNtNtCsh8eZTKRCwoO_3std4sync6poison6rwlockINtB5_6RwLockNtNtCskAlUH1kY1DR_10polars_ooc13spill_context15LocalSpillQueueE5writeCs2g09Ig8GZd6_13polars_stream.exit: ; preds = %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag5guard.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19540), !dbg !19581
  %i.aa = load i64, ptr %i.b, align 8, !dbg !19582, !range !3814, !alias.scope !19540, !noalias !19541, !noundef !3786
  %i.ab = trunc nuw i64 %i.aa to i1, !dbg !19583
  br i1 %i.ab, label %bb.i, label %bb.m, !dbg !19583, !prof !3798

bb.i:                                             ; preds = %_RNvMs9_NtNtNtCsh8eZTKRCwoO_3std4sync6poison6rwlockINtB5_6RwLockNtNtCskAlUH1kY1DR_10polars_ooc13spill_context15LocalSpillQueueE5writeCs2g09Ig8GZd6_13polars_stream.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !19584, !noalias !19542
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !19584
  %i.ad = load ptr, ptr %i.ac, align 8, !dbg !19584, !alias.scope !19540, !noalias !19541, !nonnull !3786, !align !3839, !noundef !3786
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !19584
  %i.af = load i8, ptr %i.ae, align 8, !dbg !19584, !range !3872, !alias.scope !19540, !noalias !19541, !noundef !3786
  store ptr %i.ad, ptr %i.a, align 8, !dbg !19584, !noalias !19542
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !19584
  store i8 %i.af, ptr %i.ag, align 8, !dbg !19584, !noalias !19542
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @230, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @238, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #36
          to label %bb.k unwind label %bb.j, !dbg !19585, !noalias !19540

bb.j:                                             ; preds = %bb.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsi_NtNtNtCsh8eZTKRCwoO_3std4sync6poison6rwlockINtB5_16RwLockWriteGuardNtNtCskAlUH1kY1DR_10polars_ooc13spill_context15LocalSpillQueueENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %.body unwind label %bb.l, !dbg !19586

bb.k:                                             ; preds = %bb.i
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !19587, !noalias !19540
  unreachable, !dbg !19587

bb.m:                                             ; preds = %_RNvMs9_NtNtNtCsh8eZTKRCwoO_3std4sync6poison6rwlockINtB5_6RwLockNtNtCskAlUH1kY1DR_10polars_ooc13spill_context15LocalSpillQueueE5writeCs2g09Ig8GZd6_13polars_stream.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !19588
  %i.ak = load ptr, ptr %i.aj, align 8, !dbg !19588, !alias.scope !19540, !noalias !19541, !nonnull !3786, !align !3839, !noundef !3786 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !19588
  %i.am = load i8, ptr %i.al, align 8, !dbg !19588, !range !3872, !alias.scope !19540, !noalias !19541, !noundef !3786
  store ptr %i.ak, ptr %i.c, align 8, !dbg !19558
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !19558
  store i8 %i.am, ptr %i.an, align 8, !dbg !19558
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !19589
  %i.ao = invoke noundef i64 @_RNvMs0_NtCskAlUH1kY1DR_10polars_ooc13spill_contextNtB5_17SpillContextInner10context_id(ptr noundef nonnull align 8 %i.i)
          to label %bb.o unwind label %bb.n, !dbg !19590 ; 2 uses

bb.n:                                             ; preds = %bb.r, %bb.p, %bb.m
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsi_NtNtNtCsh8eZTKRCwoO_3std4sync6poison6rwlockINtB5_16RwLockWriteGuardNtNtCskAlUH1kY1DR_10polars_ooc13spill_context15LocalSpillQueueENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %.body unwind label %bb.t, !dbg !19591

bb.o:                                             ; preds = %bb.m
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !19592
  %i.ar = load i64, ptr %i.aq, align 8, !dbg !19592, !noundef !3786
  %i.as = icmp eq i64 %i.ao, %i.ar, !dbg !19593
  br i1 %i.as, label %bb.p, label %bb.q, !dbg !19593

bb.p:                                             ; preds = %bb.o
  %i.at = load ptr, ptr %i.d, align 8, !dbg !19594, !nonnull !3786, !noundef !3786
  %i.au = load ptr, ptr %i.h, align 8, !dbg !19594, !nonnull !3786, !align !3839, !noundef !3786 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16, !dbg !19595
  %i.aw = load i64, ptr %i.av, align 8, !dbg !19595, !range !4022, !invariant.load !3786
  %i.ax = add nsw i64 %i.aw, -1, !dbg !19595
  %i.ay = and i64 %i.ax, -16, !dbg !19595
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ay, !dbg !19595
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16, !dbg !19595
  %i.bb = getelementptr inbounds nuw i8, ptr %i.au, i64 24, !dbg !19544
  %i.bc = load ptr, ptr %i.bb, align 8, !dbg !19544, !invariant.load !3786, !nonnull !3786
  %i.bd = invoke noundef i32 %i.bc(ptr noundef nonnull %i.ba, ptr noundef nonnull align 8 %i.i, i64 noundef %i.ao)
          to label %bb.r unwind label %bb.n, !dbg !19596

bb.q:                                             ; preds = %bb.r, %bb.o
  invoke void @_RNvXsi_NtNtNtCsh8eZTKRCwoO_3std4sync6poison6rwlockINtB5_16RwLockWriteGuardNtNtCskAlUH1kY1DR_10polars_ooc13spill_context15LocalSpillQueueENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison6rwlock16RwLockWriteGuardNtNtCskAlUH1kY1DR_10polars_ooc13spill_context15LocalSpillQueueEECs2g09Ig8GZd6_13polars_stream.exit11 unwind label %bb.e, !dbg !19597

bb.r:                                             ; preds = %bb.p
  %i.be = getelementptr inbounds nuw i8, ptr %i.ak, i64 16, !dbg !19598
end_hunk_1
begin_hunk_2_@_RINvNtNtNtCskmDBXs7hs3c_5tokio7runtime7context7runtime13enter_runtimeNCINvMNtNtB6_9scheduler14current_threadNtB1b_13CurrentThread8block_onNCNvNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins9equi_join11select_keys0E0INtNtCscgRAwXFJnXP_4core6result6ResultNtNtCskY9G75ZWc4U_11polars_expr9hash_keys8HashKeysNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB2m_:bb.a
  br i1 %i.as, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio4sync6notify8NotifiedECs2g09Ig8GZd6_13polars_stream.exit.i, label %bb.r, !dbg !104793

bb.r:                                             ; preds = %bb.q
  %.val1.i.i = load ptr, ptr %i.x, align 8, !dbg !104790, !noalias !104728
  %i.at = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 24, !dbg !104794
  %i.au = load ptr, ptr %i.at, align 8, !dbg !104794, !noalias !104726, !nonnull !3786, !noundef !3786
  invoke void %i.au(ptr noundef %.val1.i.i)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio4sync6notify8NotifiedECs2g09Ig8GZd6_13polars_stream.exit.i unwind label %.loopexit.split-lp, !dbg !104794, !inline_history !104712

bb.s:                                             ; preds = %bb.p
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !104790, !noalias !104726
  unreachable, !dbg !104790

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio4sync6notify8NotifiedECs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !104780, !noalias !104728
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !104795, !noalias !104728
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i), !dbg !104795
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i), !dbg !104795
  br label %bb.aa, !dbg !104778

bb.t:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !104789, !noalias !104728
  invoke void @_RNvXsb_NtNtCskmDBXs7hs3c_5tokio4sync6notifyNtB5_8NotifiedNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop(ptr noundef nonnull align 8 %i.d)
          to label %bb.w unwind label %bb.u, !dbg !104796, !noalias !104726

bb.u:                                             ; preds = %bb.t
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i8.i = load ptr, ptr %i.w, align 8, !dbg !104796, !noalias !104728, !align !3839, !noundef !3786 ; 2 uses
  %i.ax = icmp eq ptr %.val2.i8.i, null, !dbg !104797
  br i1 %i.ax, label %.body, label %bb.v, !dbg !104797

bb.v:                                             ; preds = %bb.u
  %.val3.i9.i = load ptr, ptr %i.x, align 8, !dbg !104796, !noalias !104728
  %i.ay = getelementptr inbounds nuw i8, ptr %.val2.i8.i, i64 24, !dbg !104798
  %i.az = load ptr, ptr %i.ay, align 8, !dbg !104798, !noalias !104726, !nonnull !3786, !noundef !3786
  invoke void %i.az(ptr noundef %.val3.i9.i)
          to label %.body unwind label %bb.y, !dbg !104798, !noalias !104726, !inline_history !2430

bb.w:                                             ; preds = %bb.t
  %.val.i11.i = load ptr, ptr %i.w, align 8, !dbg !104796, !noalias !104728, !align !3839, !noundef !3786 ; 2 uses
  %i.ba = icmp eq ptr %.val.i11.i, null, !dbg !104799
  br i1 %i.ba, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio4sync6notify8NotifiedECs2g09Ig8GZd6_13polars_stream.exit13.i, label %bb.x, !dbg !104799

bb.x:                                             ; preds = %bb.w
  %.val1.i12.i = load ptr, ptr %i.x, align 8, !dbg !104796, !noalias !104728
  %i.bb = getelementptr inbounds nuw i8, ptr %.val.i11.i, i64 24, !dbg !104800
  %i.bc = load ptr, ptr %i.bb, align 8, !dbg !104800, !noalias !104726, !nonnull !3786, !noundef !3786
  invoke void %i.bc(ptr noundef %.val1.i12.i)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio4sync6notify8NotifiedECs2g09Ig8GZd6_13polars_stream.exit13.i unwind label %.loopexit, !dbg !104800, !inline_history !104712

bb.y:                                             ; preds = %bb.v
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !104796, !noalias !104726
  unreachable, !dbg !104796

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio4sync6notify8NotifiedECs2g09Ig8GZd6_13polars_stream.exit13.i: ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !104780, !noalias !104728
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !104795, !noalias !104728
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i), !dbg !104795
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i), !dbg !104795
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !104801, !noalias !104728
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !104746, !noalias !104728
  %i.be = load ptr, ptr %i.r, align 8, !dbg !104746, !alias.scope !104727, !noalias !104726, !nonnull !3786, !align !3839, !noundef !3786
  invoke void @_RNvMNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler14current_threadNtB2_13CurrentThread9take_core(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.i, ptr noundef nonnull align 8 %i.be, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.q)
          to label %.noexc8 unwind label %.loopexit, !dbg !104747

.noexc8:                                          ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio4sync6notify8NotifiedECs2g09Ig8GZd6_13polars_stream.exit13.i
  %i.bf = load i64, ptr %i.i, align 8, !dbg !104746, !range !3889, !noalias !104728, !noundef !3786
  %.not.i = icmp eq i64 %i.bf, 2, !dbg !104746
  br i1 %.not.i, label %bb.c, label %._crit_edge.i, !dbg !104748

bb.z:                                             ; preds = %bb.a
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @28, ptr noundef nonnull inttoptr (i64 387 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) #36, !dbg !104802
  unreachable

.loopexit:                                        ; preds = %bb.c, %bb.x, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio4sync6notify8NotifiedECs2g09Ig8GZd6_13polars_stream.exit13.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.b, %.noexc, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std6thread6thread6ThreadECs2g09Ig8GZd6_13polars_stream.exit6.i, %bb.r
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %.thread.i, %bb.j, %bb.o, %bb.p, %bb.u, %bb.v
  %eh.lpad-body = phi { ptr, i32 } [ %i.aw, %bb.v ], [ %i.ao, %bb.o ], [ %lpad.phi.i, %bb.j ], [ %.pn6.i, %.thread.i ], [ %i.aw, %bb.u ], [ %i.ao, %bb.p ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCskmDBXs7hs3c_5tokio7runtime7context7runtime17EnterRuntimeGuardECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(32) %i.k) #35
          to label %bb.ac unwind label %bb.ab, !dbg !104803

bb.aa:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio4sync6notify8NotifiedECs2g09Ig8GZd6_13polars_stream.exit.i, %.noexc5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !104801, !noalias !104728
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !104804
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCskmDBXs7hs3c_5tokio7runtime7context7runtime17EnterRuntimeGuardECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(32) %i.k), !dbg !104803
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !104803
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !104805
  ret void, !dbg !104806

bb.ab:                                            ; preds = %.body
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !104807
  unreachable, !dbg !104807

bb.ac:                                            ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body, !dbg !104807
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4pool14spawn_blockingNCNCINvMNtNtB8_2fs11dir_builderNtB1c_10DirBuilder6createReE00INtNtCscgRAwXFJnXP_4core6result6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !104808 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !104899
  %i.f = invoke { i64, ptr } @_RNvMNtNtCskmDBXs7hs3c_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w, !dbg !104900 ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { i64, ptr } %i.f, 0, !dbg !104900 ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.f, 1, !dbg !104900 ; 3 uses
  store i64 %i.g, ptr %i.e, align 8, !dbg !104900
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !104900 ; 5 uses
  store ptr %i.h, ptr %i.i, align 8, !dbg !104900
  br label %bb.c, !dbg !104901

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.j = atomicrmw add ptr @_RNvNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !dbg !104902, !noalias !104884 ; 2 uses
  %.not.i.i = icmp eq i64 %i.j, 0, !dbg !104903
  br i1 %.not.i.i, label %bb.c, label %bb.d, !dbg !104904

bb.d:                                             ; preds = %bb.c
  %i.k = trunc nuw i64 %i.g to i1, !dbg !104905   ; 2 uses
  %.sroa.01.0.v = select i1 %i.k, i64 480, i64 712, !dbg !104905
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v, !dbg !104905
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !104906, !noalias !104884
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !dbg !104906
  %.sroa.01.0.v.i.i.i = select i1 %i.k, i64 504, i64 512, !dbg !104907
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v.i.i.i, !dbg !104907 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16, !dbg !104908
  %i.m = load ptr, ptr %i.l, align 8, !dbg !104909, !noalias !104884, !noundef !3786 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.m, null, !dbg !104909
  br i1 %.not.i.i.i, label %bb.g, label %bb.e, !dbg !104910

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24, !dbg !104909
  %i.o = load ptr, ptr %i.n, align 8, !dbg !104911, !noalias !104884, !nonnull !3786, !align !3839, !noundef !3786
  %i.p = atomicrmw add ptr %i.m, i64 1 monotonic, align 8, !dbg !104912, !noalias !104884
  %i.q = icmp slt i64 %i.p, 0, !dbg !104913
  br i1 %i.q, label %bb.f, label %bb.g, !dbg !104913

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.trap(), !dbg !104914
  unreachable, !dbg !104914

bb.g:                                             ; preds = %bb.e, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ undef, %bb.d ], [ %i.o, %bb.e ], !dbg !104915
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !104916, !noalias !104884
  invoke void @_RINvNtNtCskmDBXs7hs3c_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvMNtNtB6_2fs11dir_builderNtB1w_10DirBuilder6createReE00ENtNtBR_8schedule16BlockingScheduleECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, ptr noundef %i.m, ptr %.sroa.5.0.i.i.i, i64 noundef %i.j)
          to label %.noexc unwind label %bb.q, !dbg !104916

.noexc:                                           ; preds = %bb.g
  %i.r = load ptr, ptr %i.a, align 8, !dbg !104917, !noalias !104884, !nonnull !3786, !noundef !3786
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !104918
  %i.t = load ptr, ptr %i.s, align 8, !dbg !104918, !noalias !104884, !nonnull !3786, !noundef !3786 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !104919, !noalias !104884
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !104920, !noalias !104884
  %i.u = invoke { i64, ptr } @_RNvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.r, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
          to label %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvMNtNtBc_2fs11dir_builderNtB1z_10DirBuilder6createReE00INtNtCscgRAwXFJnXP_4core6result6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECs2g09Ig8GZd6_13polars_stream.exit.i unwind label %bb.h, !dbg !104921, !noalias !104886 ; 2 uses

bb.h:                                             ; preds = %.noexc
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = invoke noundef zeroext i1 @_RNvMNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i.i unwind label %bb.j, !dbg !104922, !noalias !104886

.noexc.i.i:                                       ; preds = %bb.h
  br i1 %i.w, label %bb.i, label %.body, !dbg !104923

bb.i:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %.body unwind label %bb.j, !dbg !104924, !noalias !104886

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !104925, !noalias !104886
  unreachable, !dbg !104925

_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvMNtNtBc_2fs11dir_builderNtB1z_10DirBuilder6createReE00INtNtCscgRAwXFJnXP_4core6result6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %.noexc
  %i.y = extractvalue { i64, ptr } %i.u, 0, !dbg !104926
  %i.z = extractvalue { i64, ptr } %i.u, 1, !dbg !104926 ; 2 uses
  %i.aa = trunc nuw i64 %i.y to i1, !dbg !104927
  %.not.i = icmp ne ptr %i.z, null
  %or.cond.not.i = select i1 %i.aa, i1 %.not.i, i1 false, !dbg !104927, !prof !3854
  br i1 %or.cond.not.i, label %bb.k, label %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvMNtNtBc_2fs11dir_builderNtB1t_10DirBuilder6createReE00INtNtCscgRAwXFJnXP_4core6result6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECs2g09Ig8GZd6_13polars_stream.exit, !dbg !104927, !prof !3854

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvMNtNtBc_2fs11dir_builderNtB1z_10DirBuilder6createReE00INtNtCscgRAwXFJnXP_4core6result6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECs2g09Ig8GZd6_13polars_stream.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !104928, !noalias !104887
  store ptr %i.z, ptr %i.d, align 8, !dbg !104928, !noalias !104887
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !104929, !noalias !104887
  store ptr %i.d, ptr %i.c, align 8, !dbg !104929, !noalias !104887
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !104929
  store ptr @_RNvXs7_NtNtCsh8eZTKRCwoO_3std2io5errorNtB5_5ErrorNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !dbg !104929, !noalias !104887
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @20, ptr noundef nonnull %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #36
          to label %bb.m unwind label %bb.l, !dbg !104930, !noalias !104889

bb.l:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i = load ptr, ptr %i.d, align 8, !dbg !104931, !noalias !104887, !nonnull !3786, !noundef !3786
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream(ptr nonnull %.val.i) #35
          to label %bb.o unwind label %bb.n, !dbg !104931, !noalias !104889

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.p, %bb.o, %bb.l
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !104932, !noalias !104889
  unreachable, !dbg !104932

bb.o:                                             ; preds = %bb.l
  %i.ad = invoke noundef zeroext i1 @_RNvMNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i unwind label %bb.n, !dbg !104933, !noalias !104889

.noexc.i:                                         ; preds = %bb.o
  br i1 %i.ad, label %bb.p, label %.body, !dbg !104934

bb.p:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %.body unwind label %bb.n, !dbg !104935, !noalias !104889

bb.q:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !104936

.body:                                            ; preds = %.noexc.i.i, %bb.i, %.noexc.i, %bb.p, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.q ], [ %i.v, %.noexc.i.i ], [ %i.v, %bb.i ], [ %i.ab, %.noexc.i ], [ %i.ab, %bb.p ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(16) %i.e) #35
          to label %.thread unwind label %bb.v, !dbg !104936

_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvMNtNtBc_2fs11dir_builderNtB1t_10DirBuilder6createReE00INtNtCscgRAwXFJnXP_4core6result6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvMNtNtBc_2fs11dir_builderNtB1z_10DirBuilder6createReE00INtNtCscgRAwXFJnXP_4core6result6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECs2g09Ig8GZd6_13polars_stream.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !104890), !dbg !104936
  call void @llvm.experimental.noalias.scope.decl(metadata !104891), !dbg !104937
  %i.af = load i64, ptr %i.e, align 8, !dbg !104938, !range !3814, !alias.scope !104892, !noundef !3786
  %i.ag = icmp eq i64 %i.af, 0, !dbg !104938
  br i1 %i.ag, label %bb.r, label %bb.t, !dbg !104938

bb.r:                                             ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvMNtNtBc_2fs11dir_builderNtB1t_10DirBuilder6createReE00INtNtCscgRAwXFJnXP_4core6result6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECs2g09Ig8GZd6_13polars_stream.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !104893), !dbg !104938
  call void @llvm.experimental.noalias.scope.decl(metadata !104894), !dbg !104939
  %i.ah = load ptr, ptr %i.i, align 8, !dbg !104940, !alias.scope !104895, !nonnull !3786, !noundef !3786
  %i.ai = atomicrmw sub ptr %i.ah, i64 1 release, align 8, !dbg !104941, !noalias !104895
  %i.aj = icmp eq i64 %i.ai, 1, !dbg !104942
  br i1 %i.aj, label %bb.s, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit, !dbg !104942

bb.s:                                             ; preds = %bb.r
  fence acquire, !dbg !104943
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #38, !dbg !104944
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit, !dbg !104944

bb.t:                                             ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvMNtNtBc_2fs11dir_builderNtB1t_10DirBuilder6createReE00INtNtCscgRAwXFJnXP_4core6result6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECs2g09Ig8GZd6_13polars_stream.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !104896), !dbg !104938
  call void @llvm.experimental.noalias.scope.decl(metadata !104897), !dbg !104945
  %i.ak = load ptr, ptr %i.i, align 8, !dbg !104946, !alias.scope !104898, !nonnull !3786, !noundef !3786
  %i.al = atomicrmw sub ptr %i.ak, i64 1 release, align 8, !dbg !104947, !noalias !104898
  %i.am = icmp eq i64 %i.al, 1, !dbg !104948
  br i1 %i.am, label %bb.u, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit, !dbg !104948

bb.u:                                             ; preds = %bb.t
  fence acquire, !dbg !104949
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #38, !dbg !104950
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit, !dbg !104950

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !104936
  ret ptr %i.t, !dbg !104951

bb.v:                                             ; preds = %bb.w, %.body
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !104952
  unreachable, !dbg !104952

.thread:                                          ; preds = %.body, %bb.w
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %.pn8, !dbg !104952

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCNCINvMNtNtCskmDBXs7hs3c_5tokio2fs11dir_builderNtBO_10DirBuilder6createReE00ECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(32) %0) #35
          to label %.thread unwind label %bb.v, !dbg !104936
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4pool14spawn_blockingNCNCINvMNtNtB8_2fs12open_optionsNtB1c_11OpenOptions8std_openRNtNtCsh8eZTKRCwoO_3std4path4PathE00INtNtCscgRAwXFJnXP_4core6result6ResultNtNtB27_2fs4FileNtNtNtB27_2io5error5ErrorEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !104953 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !105044
  %i.f = invoke { i64, ptr } @_RNvMNtNtCskmDBXs7hs3c_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w, !dbg !105045 ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { i64, ptr } %i.f, 0, !dbg !105045 ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.f, 1, !dbg !105045 ; 3 uses
  store i64 %i.g, ptr %i.e, align 8, !dbg !105045
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !105045 ; 5 uses
  store ptr %i.h, ptr %i.i, align 8, !dbg !105045
  br label %bb.c, !dbg !105046

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.j = atomicrmw add ptr @_RNvNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !dbg !105047, !noalias !105029 ; 2 uses
  %.not.i.i = icmp eq i64 %i.j, 0, !dbg !105048
  br i1 %.not.i.i, label %bb.c, label %bb.d, !dbg !105049

bb.d:                                             ; preds = %bb.c
  %i.k = trunc nuw i64 %i.g to i1, !dbg !105050   ; 2 uses
  %.sroa.01.0.v = select i1 %i.k, i64 480, i64 712, !dbg !105050
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v, !dbg !105050
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !105051, !noalias !105029
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false), !dbg !105051
  %.sroa.01.0.v.i.i.i = select i1 %i.k, i64 504, i64 512, !dbg !105052
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v.i.i.i, !dbg !105052 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16, !dbg !105053
  %i.m = load ptr, ptr %i.l, align 8, !dbg !105054, !noalias !105029, !noundef !3786 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.m, null, !dbg !105054
  br i1 %.not.i.i.i, label %bb.g, label %bb.e, !dbg !105055

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24, !dbg !105054
  %i.o = load ptr, ptr %i.n, align 8, !dbg !105056, !noalias !105029, !nonnull !3786, !align !3839, !noundef !3786
  %i.p = atomicrmw add ptr %i.m, i64 1 monotonic, align 8, !dbg !105057, !noalias !105029
  %i.q = icmp slt i64 %i.p, 0, !dbg !105058
  br i1 %i.q, label %bb.f, label %bb.g, !dbg !105058

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.trap(), !dbg !105059
  unreachable, !dbg !105059

bb.g:                                             ; preds = %bb.e, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ undef, %bb.d ], [ %i.o, %bb.e ], !dbg !105060
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !105061, !noalias !105029
  invoke void @_RINvNtNtCskmDBXs7hs3c_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvMNtNtB6_2fs12open_optionsNtB1w_11OpenOptions8std_openRNtNtCsh8eZTKRCwoO_3std4path4PathE00ENtNtBR_8schedule16BlockingScheduleECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.b, ptr noundef %i.m, ptr %.sroa.5.0.i.i.i, i64 noundef %i.j)
          to label %.noexc unwind label %bb.q, !dbg !105061

.noexc:                                           ; preds = %bb.g
  %i.r = load ptr, ptr %i.a, align 8, !dbg !105062, !noalias !105029, !nonnull !3786, !noundef !3786
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !105063
  %i.t = load ptr, ptr %i.s, align 8, !dbg !105063, !noalias !105029, !nonnull !3786, !noundef !3786 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !105064, !noalias !105029
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !105065, !noalias !105029
  %i.u = invoke { i64, ptr } @_RNvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.r, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
          to label %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvMNtNtBc_2fs12open_optionsNtB1z_11OpenOptions8std_openRNtNtCsh8eZTKRCwoO_3std4path4PathE00INtNtCscgRAwXFJnXP_4core6result6ResultNtNtB2u_2fs4FileNtNtNtB2u_2io5error5ErrorEECs2g09Ig8GZd6_13polars_stream.exit.i unwind label %bb.h, !dbg !105066, !noalias !105031 ; 2 uses

bb.h:                                             ; preds = %.noexc
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = invoke noundef zeroext i1 @_RNvMNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i.i unwind label %bb.j, !dbg !105067, !noalias !105031

.noexc.i.i:                                       ; preds = %bb.h
  br i1 %i.w, label %bb.i, label %.body, !dbg !105068

bb.i:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %.body unwind label %bb.j, !dbg !105069, !noalias !105031

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !105070, !noalias !105031
  unreachable, !dbg !105070

_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvMNtNtBc_2fs12open_optionsNtB1z_11OpenOptions8std_openRNtNtCsh8eZTKRCwoO_3std4path4PathE00INtNtCscgRAwXFJnXP_4core6result6ResultNtNtB2u_2fs4FileNtNtNtB2u_2io5error5ErrorEECs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %.noexc
  %i.y = extractvalue { i64, ptr } %i.u, 0, !dbg !105071
  %i.z = extractvalue { i64, ptr } %i.u, 1, !dbg !105071 ; 2 uses
  %i.aa = trunc nuw i64 %i.y to i1, !dbg !105072
  %.not.i = icmp ne ptr %i.z, null
  %or.cond.not.i = select i1 %i.aa, i1 %.not.i, i1 false, !dbg !105072, !prof !3854
  br i1 %or.cond.not.i, label %bb.k, label %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvMNtNtBc_2fs12open_optionsNtB1t_11OpenOptions8std_openRNtNtCsh8eZTKRCwoO_3std4path4PathE00INtNtCscgRAwXFJnXP_4core6result6ResultNtNtB2o_2fs4FileNtNtNtB2o_2io5error5ErrorEECs2g09Ig8GZd6_13polars_stream.exit, !dbg !105072, !prof !3854

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvMNtNtBc_2fs12open_optionsNtB1z_11OpenOptions8std_openRNtNtCsh8eZTKRCwoO_3std4path4PathE00INtNtCscgRAwXFJnXP_4core6result6ResultNtNtB2u_2fs4FileNtNtNtB2u_2io5error5ErrorEECs2g09Ig8GZd6_13polars_stream.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !105073, !noalias !105032
  store ptr %i.z, ptr %i.d, align 8, !dbg !105073, !noalias !105032
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !105074, !noalias !105032
  store ptr %i.d, ptr %i.c, align 8, !dbg !105074, !noalias !105032
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !105074
  store ptr @_RNvXs7_NtNtCsh8eZTKRCwoO_3std2io5errorNtB5_5ErrorNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !dbg !105074, !noalias !105032
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @20, ptr noundef nonnull %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #36
          to label %bb.m unwind label %bb.l, !dbg !105075, !noalias !105034

bb.l:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i = load ptr, ptr %i.d, align 8, !dbg !105076, !noalias !105032, !nonnull !3786, !noundef !3786
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream(ptr nonnull %.val.i) #35
          to label %bb.o unwind label %bb.n, !dbg !105076, !noalias !105034

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.p, %bb.o, %bb.l
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !105077, !noalias !105034
  unreachable, !dbg !105077

bb.o:                                             ; preds = %bb.l
  %i.ad = invoke noundef zeroext i1 @_RNvMNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i unwind label %bb.n, !dbg !105078, !noalias !105034

.noexc.i:                                         ; preds = %bb.o
  br i1 %i.ad, label %bb.p, label %.body, !dbg !105079

bb.p:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %.body unwind label %bb.n, !dbg !105080, !noalias !105034

bb.q:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !105081

.body:                                            ; preds = %.noexc.i.i, %bb.i, %.noexc.i, %bb.p, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.q ], [ %i.v, %.noexc.i.i ], [ %i.v, %bb.i ], [ %i.ab, %.noexc.i ], [ %i.ab, %bb.p ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(16) %i.e) #35
          to label %.thread unwind label %bb.v, !dbg !105081

_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvMNtNtBc_2fs12open_optionsNtB1t_11OpenOptions8std_openRNtNtCsh8eZTKRCwoO_3std4path4PathE00INtNtCscgRAwXFJnXP_4core6result6ResultNtNtB2o_2fs4FileNtNtNtB2o_2io5error5ErrorEECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvMNtNtBc_2fs12open_optionsNtB1z_11OpenOptions8std_openRNtNtCsh8eZTKRCwoO_3std4path4PathE00INtNtCscgRAwXFJnXP_4core6result6ResultNtNtB2u_2fs4FileNtNtNtB2u_2io5error5ErrorEECs2g09Ig8GZd6_13polars_stream.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !105035), !dbg !105081
  call void @llvm.experimental.noalias.scope.decl(metadata !105036), !dbg !105082
  %i.af = load i64, ptr %i.e, align 8, !dbg !105083, !range !3814, !alias.scope !105037, !noundef !3786
  %i.ag = icmp eq i64 %i.af, 0, !dbg !105083
  br i1 %i.ag, label %bb.r, label %bb.t, !dbg !105083

bb.r:                                             ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvMNtNtBc_2fs12open_optionsNtB1t_11OpenOptions8std_openRNtNtCsh8eZTKRCwoO_3std4path4PathE00INtNtCscgRAwXFJnXP_4core6result6ResultNtNtB2o_2fs4FileNtNtNtB2o_2io5error5ErrorEECs2g09Ig8GZd6_13polars_stream.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !105038), !dbg !105083
  call void @llvm.experimental.noalias.scope.decl(metadata !105039), !dbg !105084
  %i.ah = load ptr, ptr %i.i, align 8, !dbg !105085, !alias.scope !105040, !nonnull !3786, !noundef !3786
  %i.ai = atomicrmw sub ptr %i.ah, i64 1 release, align 8, !dbg !105086, !noalias !105040
  %i.aj = icmp eq i64 %i.ai, 1, !dbg !105087
  br i1 %i.aj, label %bb.s, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit, !dbg !105087

bb.s:                                             ; preds = %bb.r
  fence acquire, !dbg !105088
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #38, !dbg !105089
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit, !dbg !105089

bb.t:                                             ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvMNtNtBc_2fs12open_optionsNtB1t_11OpenOptions8std_openRNtNtCsh8eZTKRCwoO_3std4path4PathE00INtNtCscgRAwXFJnXP_4core6result6ResultNtNtB2o_2fs4FileNtNtNtB2o_2io5error5ErrorEECs2g09Ig8GZd6_13polars_stream.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !105041), !dbg !105083
  call void @llvm.experimental.noalias.scope.decl(metadata !105042), !dbg !105090
  %i.ak = load ptr, ptr %i.i, align 8, !dbg !105091, !alias.scope !105043, !nonnull !3786, !noundef !3786
  %i.al = atomicrmw sub ptr %i.ak, i64 1 release, align 8, !dbg !105092, !noalias !105043
  %i.am = icmp eq i64 %i.al, 1, !dbg !105093
  br i1 %i.am, label %bb.u, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit, !dbg !105093

bb.u:                                             ; preds = %bb.t
  fence acquire, !dbg !105094
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #38, !dbg !105095
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit, !dbg !105095

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !105081
  ret ptr %i.t, !dbg !105096

bb.v:                                             ; preds = %bb.w, %.body
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !105097
  unreachable, !dbg !105097

.thread:                                          ; preds = %.body, %bb.w
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %.pn8, !dbg !105097

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCNCINvMNtNtCskmDBXs7hs3c_5tokio2fs12open_optionsNtBO_11OpenOptions8std_openRNtNtCsh8eZTKRCwoO_3std4path4PathE00ECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(40) %0) #35
          to label %.thread unwind label %bb.v, !dbg !105081
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4pool14spawn_blockingNCNCINvNtNtB8_2fs12canonicalize12canonicalizeReE00INtNtCscgRAwXFJnXP_4core6result6ResultNtNtCsh8eZTKRCwoO_3std4path7PathBufNtNtNtB2y_2io5error5ErrorEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !105098 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !105189
  %i.f = invoke { i64, ptr } @_RNvMNtNtCskmDBXs7hs3c_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w, !dbg !105190 ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { i64, ptr } %i.f, 0, !dbg !105190 ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.f, 1, !dbg !105190 ; 3 uses
  store i64 %i.g, ptr %i.e, align 8, !dbg !105190
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !105190 ; 5 uses
  store ptr %i.h, ptr %i.i, align 8, !dbg !105190
  br label %bb.c, !dbg !105191

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.j = atomicrmw add ptr @_RNvNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !dbg !105192, !noalias !105174 ; 2 uses
  %.not.i.i = icmp eq i64 %i.j, 0, !dbg !105193
  br i1 %.not.i.i, label %bb.c, label %bb.d, !dbg !105194

bb.d:                                             ; preds = %bb.c
  %i.k = trunc nuw i64 %i.g to i1, !dbg !105195   ; 2 uses
  %.sroa.01.0.v = select i1 %i.k, i64 480, i64 712, !dbg !105195
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v, !dbg !105195
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !105196, !noalias !105174
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !dbg !105196
  %.sroa.01.0.v.i.i.i = select i1 %i.k, i64 504, i64 512, !dbg !105197
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v.i.i.i, !dbg !105197 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16, !dbg !105198
  %i.m = load ptr, ptr %i.l, align 8, !dbg !105199, !noalias !105174, !noundef !3786 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.m, null, !dbg !105199
  br i1 %.not.i.i.i, label %bb.g, label %bb.e, !dbg !105200

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24, !dbg !105199
  %i.o = load ptr, ptr %i.n, align 8, !dbg !105201, !noalias !105174, !nonnull !3786, !align !3839, !noundef !3786
  %i.p = atomicrmw add ptr %i.m, i64 1 monotonic, align 8, !dbg !105202, !noalias !105174
  %i.q = icmp slt i64 %i.p, 0, !dbg !105203
  br i1 %i.q, label %bb.f, label %bb.g, !dbg !105203

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.trap(), !dbg !105204
  unreachable, !dbg !105204

bb.g:                                             ; preds = %bb.e, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ undef, %bb.d ], [ %i.o, %bb.e ], !dbg !105205
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !105206, !noalias !105174
  invoke void @_RINvNtNtCskmDBXs7hs3c_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvNtNtB6_2fs12canonicalize12canonicalizeReE00ENtNtBR_8schedule16BlockingScheduleECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noundef %i.m, ptr %.sroa.5.0.i.i.i, i64 noundef %i.j)
          to label %.noexc unwind label %bb.q, !dbg !105206

.noexc:                                           ; preds = %bb.g
  %i.r = load ptr, ptr %i.a, align 8, !dbg !105207, !noalias !105174, !nonnull !3786, !noundef !3786
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !105208
  %i.t = load ptr, ptr %i.s, align 8, !dbg !105208, !noalias !105174, !nonnull !3786, !noundef !3786 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !105209, !noalias !105174
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !105210, !noalias !105174
  %i.u = invoke { i64, ptr } @_RNvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.r, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
          to label %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtBc_2fs12canonicalize12canonicalizeReE00INtNtCscgRAwXFJnXP_4core6result6ResultNtNtCsh8eZTKRCwoO_3std4path7PathBufNtNtNtB2V_2io5error5ErrorEECs2g09Ig8GZd6_13polars_stream.exit.i unwind label %bb.h, !dbg !105211, !noalias !105176 ; 2 uses

bb.h:                                             ; preds = %.noexc
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = invoke noundef zeroext i1 @_RNvMNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i.i unwind label %bb.j, !dbg !105212, !noalias !105176

.noexc.i.i:                                       ; preds = %bb.h
  br i1 %i.w, label %bb.i, label %.body, !dbg !105213

bb.i:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %.body unwind label %bb.j, !dbg !105214, !noalias !105176

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !105215, !noalias !105176
  unreachable, !dbg !105215

_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtBc_2fs12canonicalize12canonicalizeReE00INtNtCscgRAwXFJnXP_4core6result6ResultNtNtCsh8eZTKRCwoO_3std4path7PathBufNtNtNtB2V_2io5error5ErrorEECs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %.noexc
  %i.y = extractvalue { i64, ptr } %i.u, 0, !dbg !105216
  %i.z = extractvalue { i64, ptr } %i.u, 1, !dbg !105216 ; 2 uses
  %i.aa = trunc nuw i64 %i.y to i1, !dbg !105217
  %.not.i = icmp ne ptr %i.z, null
  %or.cond.not.i = select i1 %i.aa, i1 %.not.i, i1 false, !dbg !105217, !prof !3854
  br i1 %or.cond.not.i, label %bb.k, label %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtBc_2fs12canonicalize12canonicalizeReE00INtNtCscgRAwXFJnXP_4core6result6ResultNtNtCsh8eZTKRCwoO_3std4path7PathBufNtNtNtB2P_2io5error5ErrorEECs2g09Ig8GZd6_13polars_stream.exit, !dbg !105217, !prof !3854

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtBc_2fs12canonicalize12canonicalizeReE00INtNtCscgRAwXFJnXP_4core6result6ResultNtNtCsh8eZTKRCwoO_3std4path7PathBufNtNtNtB2V_2io5error5ErrorEECs2g09Ig8GZd6_13polars_stream.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !105218, !noalias !105177
  store ptr %i.z, ptr %i.d, align 8, !dbg !105218, !noalias !105177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !105219, !noalias !105177
  store ptr %i.d, ptr %i.c, align 8, !dbg !105219, !noalias !105177
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !105219
  store ptr @_RNvXs7_NtNtCsh8eZTKRCwoO_3std2io5errorNtB5_5ErrorNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !dbg !105219, !noalias !105177
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @20, ptr noundef nonnull %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #36
          to label %bb.m unwind label %bb.l, !dbg !105220, !noalias !105179

bb.l:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i = load ptr, ptr %i.d, align 8, !dbg !105221, !noalias !105177, !nonnull !3786, !noundef !3786
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream(ptr nonnull %.val.i) #35
          to label %bb.o unwind label %bb.n, !dbg !105221, !noalias !105179

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.p, %bb.o, %bb.l
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !105222, !noalias !105179
  unreachable, !dbg !105222

bb.o:                                             ; preds = %bb.l
  %i.ad = invoke noundef zeroext i1 @_RNvMNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i unwind label %bb.n, !dbg !105223, !noalias !105179

.noexc.i:                                         ; preds = %bb.o
  br i1 %i.ad, label %bb.p, label %.body, !dbg !105224

bb.p:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %.body unwind label %bb.n, !dbg !105225, !noalias !105179

bb.q:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !105226

.body:                                            ; preds = %.noexc.i.i, %bb.i, %.noexc.i, %bb.p, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.q ], [ %i.v, %.noexc.i.i ], [ %i.v, %bb.i ], [ %i.ab, %.noexc.i ], [ %i.ab, %bb.p ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(16) %i.e) #35
          to label %.thread unwind label %bb.v, !dbg !105226

_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtBc_2fs12canonicalize12canonicalizeReE00INtNtCscgRAwXFJnXP_4core6result6ResultNtNtCsh8eZTKRCwoO_3std4path7PathBufNtNtNtB2P_2io5error5ErrorEECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtBc_2fs12canonicalize12canonicalizeReE00INtNtCscgRAwXFJnXP_4core6result6ResultNtNtCsh8eZTKRCwoO_3std4path7PathBufNtNtNtB2V_2io5error5ErrorEECs2g09Ig8GZd6_13polars_stream.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !105180), !dbg !105226
  call void @llvm.experimental.noalias.scope.decl(metadata !105181), !dbg !105227
  %i.af = load i64, ptr %i.e, align 8, !dbg !105228, !range !3814, !alias.scope !105182, !noundef !3786
  %i.ag = icmp eq i64 %i.af, 0, !dbg !105228
  br i1 %i.ag, label %bb.r, label %bb.t, !dbg !105228

bb.r:                                             ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtBc_2fs12canonicalize12canonicalizeReE00INtNtCscgRAwXFJnXP_4core6result6ResultNtNtCsh8eZTKRCwoO_3std4path7PathBufNtNtNtB2P_2io5error5ErrorEECs2g09Ig8GZd6_13polars_stream.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !105183), !dbg !105228
  call void @llvm.experimental.noalias.scope.decl(metadata !105184), !dbg !105229
  %i.ah = load ptr, ptr %i.i, align 8, !dbg !105230, !alias.scope !105185, !nonnull !3786, !noundef !3786
  %i.ai = atomicrmw sub ptr %i.ah, i64 1 release, align 8, !dbg !105231, !noalias !105185
  %i.aj = icmp eq i64 %i.ai, 1, !dbg !105232
  br i1 %i.aj, label %bb.s, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit, !dbg !105232

bb.s:                                             ; preds = %bb.r
  fence acquire, !dbg !105233
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #38, !dbg !105234
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit, !dbg !105234

bb.t:                                             ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtBc_2fs12canonicalize12canonicalizeReE00INtNtCscgRAwXFJnXP_4core6result6ResultNtNtCsh8eZTKRCwoO_3std4path7PathBufNtNtNtB2P_2io5error5ErrorEECs2g09Ig8GZd6_13polars_stream.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !105186), !dbg !105228
  call void @llvm.experimental.noalias.scope.decl(metadata !105187), !dbg !105235
  %i.ak = load ptr, ptr %i.i, align 8, !dbg !105236, !alias.scope !105188, !nonnull !3786, !noundef !3786
  %i.al = atomicrmw sub ptr %i.ak, i64 1 release, align 8, !dbg !105237, !noalias !105188
  %i.am = icmp eq i64 %i.al, 1, !dbg !105238
  br i1 %i.am, label %bb.u, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit, !dbg !105238

bb.u:                                             ; preds = %bb.t
  fence acquire, !dbg !105239
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #38, !dbg !105240
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit, !dbg !105240

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !105226
  ret ptr %i.t, !dbg !105241

bb.v:                                             ; preds = %bb.w, %.body
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !105242
  unreachable, !dbg !105242

.thread:                                          ; preds = %.body, %bb.w
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %.pn8, !dbg !105242

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCNCINvNtNtCskmDBXs7hs3c_5tokio2fs12canonicalize12canonicalizeReE00ECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %0) #35
          to label %.thread unwind label %bb.v, !dbg !105226
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4pool14spawn_blockingNCNCINvNtNtNtB6_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2b_14RuntimeManager17block_in_place_onINtNtB2b_8executor10JoinHandleINtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEs_0B3M_E00uECs2g09Ig8GZd6_13polars_stream(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !105243 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !105344
  %i.f = invoke { i64, ptr } @_RNvMNtNtCskmDBXs7hs3c_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w, !dbg !105345 ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { i64, ptr } %i.f, 0, !dbg !105345 ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.f, 1, !dbg !105345 ; 4 uses
  store i64 %i.g, ptr %i.d, align 8, !dbg !105345
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !105345 ; 5 uses
  store ptr %i.h, ptr %i.i, align 8, !dbg !105345
  %i.j = trunc nuw i64 %i.g to i1, !dbg !105346   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ], !dbg !105347
  %. = select i1 %i.j, i64 480, i64 712, !dbg !105348
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %., !dbg !105349
  br label %bb.c, !dbg !105350

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.l = atomicrmw add ptr @_RNvNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !dbg !105351, !noalias !105330 ; 2 uses
  %.not.i.i = icmp eq i64 %i.l, 0, !dbg !105352
  br i1 %.not.i.i, label %bb.c, label %bb.d, !dbg !105353

bb.d:                                             ; preds = %bb.c
  %.sroa.01.0.v.i.i.i = select i1 %i.j, i64 504, i64 512, !dbg !105354
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v.i.i.i, !dbg !105354 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16, !dbg !105355
  %i.n = load ptr, ptr %i.m, align 8, !dbg !105356, !noalias !105330, !noundef !3786 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.n, null, !dbg !105356
  br i1 %.not.i.i.i, label %bb.g, label %bb.e, !dbg !105357

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24, !dbg !105356
  %i.p = load ptr, ptr %i.o, align 8, !dbg !105358, !noalias !105330, !nonnull !3786, !align !3839, !noundef !3786
  %i.q = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !dbg !105359, !noalias !105330
  %i.r = icmp slt i64 %i.q, 0, !dbg !105360
  br i1 %i.r, label %bb.f, label %bb.g, !dbg !105360

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.trap(), !dbg !105361
  unreachable, !dbg !105361

bb.g:                                             ; preds = %bb.e, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ undef, %bb.d ], [ %i.p, %bb.e ], !dbg !105362
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !105363, !noalias !105330
  invoke void @_RINvNtNtCskmDBXs7hs3c_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvNtNtNtB4_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2v_14RuntimeManager17block_in_place_onINtNtB2v_8executor10JoinHandleINtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEs_0B46_E00ENtNtBR_8schedule16BlockingScheduleECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull %0, ptr noundef %i.n, ptr %.sroa.5.0.i.i.i, i64 noundef %i.l)
          to label %.noexc unwind label %bb.q, !dbg !105363

.noexc:                                           ; preds = %bb.g
  %i.s = load ptr, ptr %i.a, align 8, !dbg !105364, !noalias !105330, !nonnull !3786, !noundef !3786
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !105365
  %i.u = load ptr, ptr %i.t, align 8, !dbg !105365, !noalias !105330, !nonnull !3786, !noundef !3786 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !105366, !noalias !105330
  %i.v = invoke { i64, ptr } @_RNvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k, ptr noundef nonnull %i.s, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d)
          to label %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2y_14RuntimeManager17block_in_place_onINtNtB2y_8executor10JoinHandleINtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEs_0B49_E00uECs2g09Ig8GZd6_13polars_stream.exit.i unwind label %bb.h, !dbg !105367, !noalias !105331 ; 2 uses

bb.h:                                             ; preds = %.noexc
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = invoke noundef zeroext i1 @_RNvMNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.u)
          to label %.noexc.i.i unwind label %bb.j, !dbg !105368, !noalias !105331

.noexc.i.i:                                       ; preds = %bb.h
  br i1 %i.x, label %bb.i, label %.body, !dbg !105369

bb.i:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.u)
          to label %.body unwind label %bb.j, !dbg !105370, !noalias !105331

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !105371, !noalias !105331
  unreachable, !dbg !105371

_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2y_14RuntimeManager17block_in_place_onINtNtB2y_8executor10JoinHandleINtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEs_0B49_E00uECs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %.noexc
  %i.z = extractvalue { i64, ptr } %i.v, 0, !dbg !105372
  %i.aa = extractvalue { i64, ptr } %i.v, 1, !dbg !105372 ; 2 uses
  %i.ab = trunc nuw i64 %i.z to i1, !dbg !105373
  %.not.i = icmp ne ptr %i.aa, null
  %or.cond.not.i = select i1 %i.ab, i1 %.not.i, i1 false, !dbg !105373, !prof !3854
  br i1 %or.cond.not.i, label %bb.k, label %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2s_14RuntimeManager17block_in_place_onINtNtB2s_8executor10JoinHandleINtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEs_0B43_E00uECs2g09Ig8GZd6_13polars_stream.exit, !dbg !105373, !prof !3854

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2y_14RuntimeManager17block_in_place_onINtNtB2y_8executor10JoinHandleINtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEs_0B49_E00uECs2g09Ig8GZd6_13polars_stream.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !105374, !noalias !105332
  store ptr %i.aa, ptr %i.c, align 8, !dbg !105374, !noalias !105332
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !105375, !noalias !105332
  store ptr %i.c, ptr %i.b, align 8, !dbg !105375, !noalias !105332
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !105375
  store ptr @_RNvXs7_NtNtCsh8eZTKRCwoO_3std2io5errorNtB5_5ErrorNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !dbg !105375, !noalias !105332
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @20, ptr noundef nonnull %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #36
          to label %bb.m unwind label %bb.l, !dbg !105376

bb.l:                                             ; preds = %bb.k
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i = load ptr, ptr %i.c, align 8, !dbg !105377, !noalias !105332, !nonnull !3786, !noundef !3786
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream(ptr nonnull %.val.i) #35
          to label %bb.o unwind label %bb.n, !dbg !105377

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.p, %bb.o, %bb.l
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !105378
  unreachable, !dbg !105378

bb.o:                                             ; preds = %bb.l
  %i.ae = invoke noundef zeroext i1 @_RNvMNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.u)
          to label %.noexc.i unwind label %bb.n, !dbg !105379

.noexc.i:                                         ; preds = %bb.o
  br i1 %i.ae, label %bb.p, label %.body, !dbg !105380

bb.p:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.u)
          to label %.body unwind label %bb.n, !dbg !105381

bb.q:                                             ; preds = %bb.g
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !105382

.body:                                            ; preds = %.noexc.i.i, %bb.i, %.noexc.i, %bb.p, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.q ], [ %i.w, %.noexc.i.i ], [ %i.w, %bb.i ], [ %i.ac, %.noexc.i ], [ %i.ac, %bb.p ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(16) %i.d) #35
          to label %.thread unwind label %bb.v, !dbg !105382

_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2s_14RuntimeManager17block_in_place_onINtNtB2s_8executor10JoinHandleINtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEs_0B43_E00uECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2y_14RuntimeManager17block_in_place_onINtNtB2y_8executor10JoinHandleINtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEs_0B49_E00uECs2g09Ig8GZd6_13polars_stream.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !105334), !dbg !105382
  call void @llvm.experimental.noalias.scope.decl(metadata !105335), !dbg !105383
  %i.ag = load i64, ptr %i.d, align 8, !dbg !105384, !range !3814, !alias.scope !105336, !noundef !3786
  %i.ah = icmp eq i64 %i.ag, 0, !dbg !105384
  br i1 %i.ah, label %bb.r, label %bb.t, !dbg !105384

bb.r:                                             ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2s_14RuntimeManager17block_in_place_onINtNtB2s_8executor10JoinHandleINtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEs_0B43_E00uECs2g09Ig8GZd6_13polars_stream.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !105337), !dbg !105384
  call void @llvm.experimental.noalias.scope.decl(metadata !105338), !dbg !105385
  %i.ai = load ptr, ptr %i.i, align 8, !dbg !105386, !alias.scope !105339, !nonnull !3786, !noundef !3786
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !dbg !105387, !noalias !105339
  %i.ak = icmp eq i64 %i.aj, 1, !dbg !105388
  br i1 %i.ak, label %bb.s, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit, !dbg !105388

bb.s:                                             ; preds = %bb.r
  fence acquire, !dbg !105389
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #38, !dbg !105390
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit, !dbg !105390

bb.t:                                             ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2s_14RuntimeManager17block_in_place_onINtNtB2s_8executor10JoinHandleINtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEs_0B43_E00uECs2g09Ig8GZd6_13polars_stream.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !105340), !dbg !105384
  call void @llvm.experimental.noalias.scope.decl(metadata !105341), !dbg !105391
  %i.al = load ptr, ptr %i.i, align 8, !dbg !105392, !alias.scope !105342, !nonnull !3786, !noundef !3786
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !dbg !105393, !noalias !105342
  %i.an = icmp eq i64 %i.am, 1, !dbg !105394
  br i1 %i.an, label %bb.u, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit, !dbg !105394

bb.u:                                             ; preds = %bb.t
  fence acquire, !dbg !105395
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #38, !dbg !105396
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit, !dbg !105396

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !105382
  ret ptr %i.u, !dbg !105397

bb.v:                                             ; preds = %bb.x, %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !105398
  unreachable, !dbg !105398

.thread:                                          ; preds = %bb.w, %bb.x, %.body
  %.pn9 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.w ], [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.x ]
  resume { ptr, i32 } %.pn9, !dbg !105398

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = atomicrmw sub ptr %0, i64 1 release, align 8, !dbg !105399, !noalias !105343
  %i.aq = icmp eq i64 %i.ap, 1, !dbg !105400
  br i1 %i.aq, label %bb.x, label %.thread, !dbg !105400

bb.x:                                             ; preds = %bb.w
  fence acquire, !dbg !105401
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler12multi_thread6worker6WorkerE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #38
          to label %.thread unwind label %bb.v, !dbg !105402
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4pool14spawn_blockingNCNCINvNtNtNtB6_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2b_14RuntimeManager17block_in_place_onINtNtB2b_8executor17AbortOnDropHandleINtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEs_0B3T_E00uECs2g09Ig8GZd6_13polars_stream(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !105403 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !105504
  %i.f = invoke { i64, ptr } @_RNvMNtNtCskmDBXs7hs3c_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w, !dbg !105505 ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { i64, ptr } %i.f, 0, !dbg !105505 ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.f, 1, !dbg !105505 ; 4 uses
  store i64 %i.g, ptr %i.d, align 8, !dbg !105505
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !105505 ; 5 uses
  store ptr %i.h, ptr %i.i, align 8, !dbg !105505
  %i.j = trunc nuw i64 %i.g to i1, !dbg !105506   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ], !dbg !105507
  %. = select i1 %i.j, i64 480, i64 712, !dbg !105508
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %., !dbg !105509
  br label %bb.c, !dbg !105510

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.l = atomicrmw add ptr @_RNvNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !dbg !105511, !noalias !105490 ; 2 uses
  %.not.i.i = icmp eq i64 %i.l, 0, !dbg !105512
  br i1 %.not.i.i, label %bb.c, label %bb.d, !dbg !105513

bb.d:                                             ; preds = %bb.c
  %.sroa.01.0.v.i.i.i = select i1 %i.j, i64 504, i64 512, !dbg !105514
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v.i.i.i, !dbg !105514 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16, !dbg !105515
  %i.n = load ptr, ptr %i.m, align 8, !dbg !105516, !noalias !105490, !noundef !3786 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.n, null, !dbg !105516
  br i1 %.not.i.i.i, label %bb.g, label %bb.e, !dbg !105517

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24, !dbg !105516
  %i.p = load ptr, ptr %i.o, align 8, !dbg !105518, !noalias !105490, !nonnull !3786, !align !3839, !noundef !3786
  %i.q = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !dbg !105519, !noalias !105490
  %i.r = icmp slt i64 %i.q, 0, !dbg !105520
  br i1 %i.r, label %bb.f, label %bb.g, !dbg !105520

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.trap(), !dbg !105521
  unreachable, !dbg !105521

bb.g:                                             ; preds = %bb.e, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ undef, %bb.d ], [ %i.p, %bb.e ], !dbg !105522
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !105523, !noalias !105490
  invoke void @_RINvNtNtCskmDBXs7hs3c_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvNtNtNtB4_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2v_14RuntimeManager17block_in_place_onINtNtB2v_8executor17AbortOnDropHandleINtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEs_0B4d_E00ENtNtBR_8schedule16BlockingScheduleECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull %0, ptr noundef %i.n, ptr %.sroa.5.0.i.i.i, i64 noundef %i.l)
          to label %.noexc unwind label %bb.q, !dbg !105523

.noexc:                                           ; preds = %bb.g
  %i.s = load ptr, ptr %i.a, align 8, !dbg !105524, !noalias !105490, !nonnull !3786, !noundef !3786
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !105525
  %i.u = load ptr, ptr %i.t, align 8, !dbg !105525, !noalias !105490, !nonnull !3786, !noundef !3786 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !105526, !noalias !105490
  %i.v = invoke { i64, ptr } @_RNvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k, ptr noundef nonnull %i.s, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d)
          to label %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2y_14RuntimeManager17block_in_place_onINtNtB2y_8executor17AbortOnDropHandleINtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEs_0B4g_E00uECs2g09Ig8GZd6_13polars_stream.exit.i unwind label %bb.h, !dbg !105527, !noalias !105491 ; 2 uses

bb.h:                                             ; preds = %.noexc
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = invoke noundef zeroext i1 @_RNvMNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.u)
          to label %.noexc.i.i unwind label %bb.j, !dbg !105528, !noalias !105491

.noexc.i.i:                                       ; preds = %bb.h
  br i1 %i.x, label %bb.i, label %.body, !dbg !105529

bb.i:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.u)
          to label %.body unwind label %bb.j, !dbg !105530, !noalias !105491

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !105531, !noalias !105491
  unreachable, !dbg !105531

_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2y_14RuntimeManager17block_in_place_onINtNtB2y_8executor17AbortOnDropHandleINtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEs_0B4g_E00uECs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %.noexc
  %i.z = extractvalue { i64, ptr } %i.v, 0, !dbg !105532
  %i.aa = extractvalue { i64, ptr } %i.v, 1, !dbg !105532 ; 2 uses
  %i.ab = trunc nuw i64 %i.z to i1, !dbg !105533
  %.not.i = icmp ne ptr %i.aa, null
  %or.cond.not.i = select i1 %i.ab, i1 %.not.i, i1 false, !dbg !105533, !prof !3854
  br i1 %or.cond.not.i, label %bb.k, label %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2s_14RuntimeManager17block_in_place_onINtNtB2s_8executor17AbortOnDropHandleINtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEs_0B4a_E00uECs2g09Ig8GZd6_13polars_stream.exit, !dbg !105533, !prof !3854

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2y_14RuntimeManager17block_in_place_onINtNtB2y_8executor17AbortOnDropHandleINtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEs_0B4g_E00uECs2g09Ig8GZd6_13polars_stream.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !105534, !noalias !105492
  store ptr %i.aa, ptr %i.c, align 8, !dbg !105534, !noalias !105492
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !105535, !noalias !105492
  store ptr %i.c, ptr %i.b, align 8, !dbg !105535, !noalias !105492
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !105535
  store ptr @_RNvXs7_NtNtCsh8eZTKRCwoO_3std2io5errorNtB5_5ErrorNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !dbg !105535, !noalias !105492
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @20, ptr noundef nonnull %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #36
          to label %bb.m unwind label %bb.l, !dbg !105536

bb.l:                                             ; preds = %bb.k
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i = load ptr, ptr %i.c, align 8, !dbg !105537, !noalias !105492, !nonnull !3786, !noundef !3786
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream(ptr nonnull %.val.i) #35
          to label %bb.o unwind label %bb.n, !dbg !105537

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.p, %bb.o, %bb.l
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !105538
  unreachable, !dbg !105538

bb.o:                                             ; preds = %bb.l
  %i.ae = invoke noundef zeroext i1 @_RNvMNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.u)
          to label %.noexc.i unwind label %bb.n, !dbg !105539

.noexc.i:                                         ; preds = %bb.o
  br i1 %i.ae, label %bb.p, label %.body, !dbg !105540

bb.p:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.u)
          to label %.body unwind label %bb.n, !dbg !105541

bb.q:                                             ; preds = %bb.g
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !105542

.body:                                            ; preds = %.noexc.i.i, %bb.i, %.noexc.i, %bb.p, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.q ], [ %i.w, %.noexc.i.i ], [ %i.w, %bb.i ], [ %i.ac, %.noexc.i ], [ %i.ac, %bb.p ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(16) %i.d) #35
          to label %.thread unwind label %bb.v, !dbg !105542

_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2s_14RuntimeManager17block_in_place_onINtNtB2s_8executor17AbortOnDropHandleINtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEs_0B4a_E00uECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2y_14RuntimeManager17block_in_place_onINtNtB2y_8executor17AbortOnDropHandleINtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEs_0B4g_E00uECs2g09Ig8GZd6_13polars_stream.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !105494), !dbg !105542
  call void @llvm.experimental.noalias.scope.decl(metadata !105495), !dbg !105543
  %i.ag = load i64, ptr %i.d, align 8, !dbg !105544, !range !3814, !alias.scope !105496, !noundef !3786
  %i.ah = icmp eq i64 %i.ag, 0, !dbg !105544
  br i1 %i.ah, label %bb.r, label %bb.t, !dbg !105544

bb.r:                                             ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2s_14RuntimeManager17block_in_place_onINtNtB2s_8executor17AbortOnDropHandleINtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEs_0B4a_E00uECs2g09Ig8GZd6_13polars_stream.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !105497), !dbg !105544
  call void @llvm.experimental.noalias.scope.decl(metadata !105498), !dbg !105545
  %i.ai = load ptr, ptr %i.i, align 8, !dbg !105546, !alias.scope !105499, !nonnull !3786, !noundef !3786
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !dbg !105547, !noalias !105499
  %i.ak = icmp eq i64 %i.aj, 1, !dbg !105548
  br i1 %i.ak, label %bb.s, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit, !dbg !105548

bb.s:                                             ; preds = %bb.r
  fence acquire, !dbg !105549
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #38, !dbg !105550
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit, !dbg !105550

bb.t:                                             ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2s_14RuntimeManager17block_in_place_onINtNtB2s_8executor17AbortOnDropHandleINtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEs_0B4a_E00uECs2g09Ig8GZd6_13polars_stream.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !105500), !dbg !105544
  call void @llvm.experimental.noalias.scope.decl(metadata !105501), !dbg !105551
  %i.al = load ptr, ptr %i.i, align 8, !dbg !105552, !alias.scope !105502, !nonnull !3786, !noundef !3786
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !dbg !105553, !noalias !105502
  %i.an = icmp eq i64 %i.am, 1, !dbg !105554
  br i1 %i.an, label %bb.u, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit, !dbg !105554

bb.u:                                             ; preds = %bb.t
  fence acquire, !dbg !105555
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #38, !dbg !105556
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit, !dbg !105556

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !105542
  ret ptr %i.u, !dbg !105557

bb.v:                                             ; preds = %bb.x, %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !105558
  unreachable, !dbg !105558

.thread:                                          ; preds = %bb.w, %bb.x, %.body
  %.pn9 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.w ], [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.x ]
  resume { ptr, i32 } %.pn9, !dbg !105558

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = atomicrmw sub ptr %0, i64 1 release, align 8, !dbg !105559, !noalias !105503
  %i.aq = icmp eq i64 %i.ap, 1, !dbg !105560
  br i1 %i.aq, label %bb.x, label %.thread, !dbg !105560

bb.x:                                             ; preds = %bb.w
  fence acquire, !dbg !105561
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler12multi_thread6worker6WorkerE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #38
          to label %.thread unwind label %bb.v, !dbg !105562
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4pool14spawn_blockingNCNCINvNtNtNtB6_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2b_14RuntimeManager17block_in_place_onNCNCNvMs0_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins9equi_joinNtB3s_10BuildState18finalize_unordereds_0s_0Es_0uE00uEB3y_(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !105563 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !105664
  %i.f = invoke { i64, ptr } @_RNvMNtNtCskmDBXs7hs3c_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w, !dbg !105665 ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { i64, ptr } %i.f, 0, !dbg !105665 ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.f, 1, !dbg !105665 ; 4 uses
  store i64 %i.g, ptr %i.d, align 8, !dbg !105665
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !105665 ; 5 uses
  store ptr %i.h, ptr %i.i, align 8, !dbg !105665
  %i.j = trunc nuw i64 %i.g to i1, !dbg !105666   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ], !dbg !105667
  %. = select i1 %i.j, i64 480, i64 712, !dbg !105668
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %., !dbg !105669
  br label %bb.c, !dbg !105670

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.l = atomicrmw add ptr @_RNvNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !dbg !105671, !noalias !105650 ; 2 uses
  %.not.i.i = icmp eq i64 %i.l, 0, !dbg !105672
  br i1 %.not.i.i, label %bb.c, label %bb.d, !dbg !105673

bb.d:                                             ; preds = %bb.c
  %.sroa.01.0.v.i.i.i = select i1 %i.j, i64 504, i64 512, !dbg !105674
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v.i.i.i, !dbg !105674 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16, !dbg !105675
  %i.n = load ptr, ptr %i.m, align 8, !dbg !105676, !noalias !105650, !noundef !3786 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.n, null, !dbg !105676
  br i1 %.not.i.i.i, label %bb.g, label %bb.e, !dbg !105677

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24, !dbg !105676
  %i.p = load ptr, ptr %i.o, align 8, !dbg !105678, !noalias !105650, !nonnull !3786, !align !3839, !noundef !3786
  %i.q = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !dbg !105679, !noalias !105650
  %i.r = icmp slt i64 %i.q, 0, !dbg !105680
  br i1 %i.r, label %bb.f, label %bb.g, !dbg !105680

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.trap(), !dbg !105681
  unreachable, !dbg !105681

bb.g:                                             ; preds = %bb.e, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ undef, %bb.d ], [ %i.p, %bb.e ], !dbg !105682
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !105683, !noalias !105650
  invoke void @_RINvNtNtCskmDBXs7hs3c_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvNtNtNtB4_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2v_14RuntimeManager17block_in_place_onNCNCNvMs0_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins9equi_joinNtB3M_10BuildState18finalize_unordereds_0s_0Es_0uE00ENtNtBR_8schedule16BlockingScheduleEB3S_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull %0, ptr noundef %i.n, ptr %.sroa.5.0.i.i.i, i64 noundef %i.l)
          to label %.noexc unwind label %bb.q, !dbg !105683

.noexc:                                           ; preds = %bb.g
  %i.s = load ptr, ptr %i.a, align 8, !dbg !105684, !noalias !105650, !nonnull !3786, !noundef !3786
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !105685
  %i.u = load ptr, ptr %i.t, align 8, !dbg !105685, !noalias !105650, !nonnull !3786, !noundef !3786 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !105686, !noalias !105650
  %i.v = invoke { i64, ptr } @_RNvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k, ptr noundef nonnull %i.s, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d)
          to label %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2y_14RuntimeManager17block_in_place_onNCNCNvMs0_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins9equi_joinNtB3P_10BuildState18finalize_unordereds_0s_0Es_0uE00uEB3V_.exit.i unwind label %bb.h, !dbg !105687, !noalias !105651 ; 2 uses

bb.h:                                             ; preds = %.noexc
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = invoke noundef zeroext i1 @_RNvMNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.u)
          to label %.noexc.i.i unwind label %bb.j, !dbg !105688, !noalias !105651

.noexc.i.i:                                       ; preds = %bb.h
  br i1 %i.x, label %bb.i, label %.body, !dbg !105689

bb.i:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.u)
          to label %.body unwind label %bb.j, !dbg !105690, !noalias !105651

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !105691, !noalias !105651
  unreachable, !dbg !105691

_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2y_14RuntimeManager17block_in_place_onNCNCNvMs0_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins9equi_joinNtB3P_10BuildState18finalize_unordereds_0s_0Es_0uE00uEB3V_.exit.i: ; preds = %.noexc
  %i.z = extractvalue { i64, ptr } %i.v, 0, !dbg !105692
  %i.aa = extractvalue { i64, ptr } %i.v, 1, !dbg !105692 ; 2 uses
  %i.ab = trunc nuw i64 %i.z to i1, !dbg !105693
  %.not.i = icmp ne ptr %i.aa, null
  %or.cond.not.i = select i1 %i.ab, i1 %.not.i, i1 false, !dbg !105693, !prof !3854
  br i1 %or.cond.not.i, label %bb.k, label %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2s_14RuntimeManager17block_in_place_onNCNCNvMs0_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins9equi_joinNtB3J_10BuildState18finalize_unordereds_0s_0Es_0uE00uEB3P_.exit, !dbg !105693, !prof !3854

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2y_14RuntimeManager17block_in_place_onNCNCNvMs0_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins9equi_joinNtB3P_10BuildState18finalize_unordereds_0s_0Es_0uE00uEB3V_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !105694, !noalias !105652
  store ptr %i.aa, ptr %i.c, align 8, !dbg !105694, !noalias !105652
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !105695, !noalias !105652
  store ptr %i.c, ptr %i.b, align 8, !dbg !105695, !noalias !105652
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !105695
  store ptr @_RNvXs7_NtNtCsh8eZTKRCwoO_3std2io5errorNtB5_5ErrorNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !dbg !105695, !noalias !105652
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @20, ptr noundef nonnull %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #36
          to label %bb.m unwind label %bb.l, !dbg !105696

bb.l:                                             ; preds = %bb.k
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i = load ptr, ptr %i.c, align 8, !dbg !105697, !noalias !105652, !nonnull !3786, !noundef !3786
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream(ptr nonnull %.val.i) #35
          to label %bb.o unwind label %bb.n, !dbg !105697

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.p, %bb.o, %bb.l
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !105698
  unreachable, !dbg !105698

bb.o:                                             ; preds = %bb.l
  %i.ae = invoke noundef zeroext i1 @_RNvMNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.u)
          to label %.noexc.i unwind label %bb.n, !dbg !105699

.noexc.i:                                         ; preds = %bb.o
  br i1 %i.ae, label %bb.p, label %.body, !dbg !105700

bb.p:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.u)
          to label %.body unwind label %bb.n, !dbg !105701

bb.q:                                             ; preds = %bb.g
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !105702

.body:                                            ; preds = %.noexc.i.i, %bb.i, %.noexc.i, %bb.p, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.q ], [ %i.w, %.noexc.i.i ], [ %i.w, %bb.i ], [ %i.ac, %.noexc.i ], [ %i.ac, %bb.p ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(16) %i.d) #35
          to label %.thread unwind label %bb.v, !dbg !105702

_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2s_14RuntimeManager17block_in_place_onNCNCNvMs0_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins9equi_joinNtB3J_10BuildState18finalize_unordereds_0s_0Es_0uE00uEB3P_.exit: ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2y_14RuntimeManager17block_in_place_onNCNCNvMs0_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins9equi_joinNtB3P_10BuildState18finalize_unordereds_0s_0Es_0uE00uEB3V_.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !105654), !dbg !105702
  call void @llvm.experimental.noalias.scope.decl(metadata !105655), !dbg !105703
  %i.ag = load i64, ptr %i.d, align 8, !dbg !105704, !range !3814, !alias.scope !105656, !noundef !3786
  %i.ah = icmp eq i64 %i.ag, 0, !dbg !105704
  br i1 %i.ah, label %bb.r, label %bb.t, !dbg !105704

bb.r:                                             ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2s_14RuntimeManager17block_in_place_onNCNCNvMs0_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins9equi_joinNtB3J_10BuildState18finalize_unordereds_0s_0Es_0uE00uEB3P_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !105657), !dbg !105704
  call void @llvm.experimental.noalias.scope.decl(metadata !105658), !dbg !105705
  %i.ai = load ptr, ptr %i.i, align 8, !dbg !105706, !alias.scope !105659, !nonnull !3786, !noundef !3786
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !dbg !105707, !noalias !105659
  %i.ak = icmp eq i64 %i.aj, 1, !dbg !105708
  br i1 %i.ak, label %bb.s, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit, !dbg !105708

bb.s:                                             ; preds = %bb.r
  fence acquire, !dbg !105709
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #38, !dbg !105710
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit, !dbg !105710

bb.t:                                             ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2s_14RuntimeManager17block_in_place_onNCNCNvMs0_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins9equi_joinNtB3J_10BuildState18finalize_unordereds_0s_0Es_0uE00uEB3P_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !105660), !dbg !105704
  call void @llvm.experimental.noalias.scope.decl(metadata !105661), !dbg !105711
  %i.al = load ptr, ptr %i.i, align 8, !dbg !105712, !alias.scope !105662, !nonnull !3786, !noundef !3786
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !dbg !105713, !noalias !105662
  %i.an = icmp eq i64 %i.am, 1, !dbg !105714
  br i1 %i.an, label %bb.u, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit, !dbg !105714

bb.u:                                             ; preds = %bb.t
  fence acquire, !dbg !105715
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #38, !dbg !105716
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit, !dbg !105716

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !105702
  ret ptr %i.u, !dbg !105717

bb.v:                                             ; preds = %bb.x, %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !105718
  unreachable, !dbg !105718

.thread:                                          ; preds = %bb.w, %bb.x, %.body
  %.pn9 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.w ], [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.x ]
  resume { ptr, i32 } %.pn9, !dbg !105718

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = atomicrmw sub ptr %0, i64 1 release, align 8, !dbg !105719, !noalias !105663
  %i.aq = icmp eq i64 %i.ap, 1, !dbg !105720
  br i1 %i.aq, label %bb.x, label %.thread, !dbg !105720

bb.x:                                             ; preds = %bb.w
  fence acquire, !dbg !105721
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler12multi_thread6worker6WorkerE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #38
          to label %.thread unwind label %bb.v, !dbg !105722
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4pool14spawn_blockingNCNCINvNtNtNtB6_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2b_14RuntimeManager17block_in_place_onNCNCNvMs_NtNtCs2g09Ig8GZd6_13polars_stream5nodes8group_byNtB3r_16GroupBySinkState14combine_localss1_0s_0Es_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE00uEB3v_(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !105723 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !105824
  %i.f = invoke { i64, ptr } @_RNvMNtNtCskmDBXs7hs3c_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w, !dbg !105825 ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { i64, ptr } %i.f, 0, !dbg !105825 ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.f, 1, !dbg !105825 ; 4 uses
  store i64 %i.g, ptr %i.d, align 8, !dbg !105825
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !105825 ; 5 uses
  store ptr %i.h, ptr %i.i, align 8, !dbg !105825
  %i.j = trunc nuw i64 %i.g to i1, !dbg !105826   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ], !dbg !105827
  %. = select i1 %i.j, i64 480, i64 712, !dbg !105828
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %., !dbg !105829
  br label %bb.c, !dbg !105830

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.l = atomicrmw add ptr @_RNvNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !dbg !105831, !noalias !105810 ; 2 uses
  %.not.i.i = icmp eq i64 %i.l, 0, !dbg !105832
  br i1 %.not.i.i, label %bb.c, label %bb.d, !dbg !105833

bb.d:                                             ; preds = %bb.c
  %.sroa.01.0.v.i.i.i = select i1 %i.j, i64 504, i64 512, !dbg !105834
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v.i.i.i, !dbg !105834 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16, !dbg !105835
  %i.n = load ptr, ptr %i.m, align 8, !dbg !105836, !noalias !105810, !noundef !3786 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.n, null, !dbg !105836
  br i1 %.not.i.i.i, label %bb.g, label %bb.e, !dbg !105837

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24, !dbg !105836
  %i.p = load ptr, ptr %i.o, align 8, !dbg !105838, !noalias !105810, !nonnull !3786, !align !3839, !noundef !3786
  %i.q = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !dbg !105839, !noalias !105810
  %i.r = icmp slt i64 %i.q, 0, !dbg !105840
  br i1 %i.r, label %bb.f, label %bb.g, !dbg !105840

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.trap(), !dbg !105841
  unreachable, !dbg !105841

bb.g:                                             ; preds = %bb.e, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ undef, %bb.d ], [ %i.p, %bb.e ], !dbg !105842
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !105843, !noalias !105810
  invoke void @_RINvNtNtCskmDBXs7hs3c_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvNtNtNtB4_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2v_14RuntimeManager17block_in_place_onNCNCNvMs_NtNtCs2g09Ig8GZd6_13polars_stream5nodes8group_byNtB3L_16GroupBySinkState14combine_localss1_0s_0Es_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE00ENtNtBR_8schedule16BlockingScheduleEB3P_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull %0, ptr noundef %i.n, ptr %.sroa.5.0.i.i.i, i64 noundef %i.l)
          to label %.noexc unwind label %bb.q, !dbg !105843

.noexc:                                           ; preds = %bb.g
  %i.s = load ptr, ptr %i.a, align 8, !dbg !105844, !noalias !105810, !nonnull !3786, !noundef !3786
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !105845
  %i.u = load ptr, ptr %i.t, align 8, !dbg !105845, !noalias !105810, !nonnull !3786, !noundef !3786 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !105846, !noalias !105810
  %i.v = invoke { i64, ptr } @_RNvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k, ptr noundef nonnull %i.s, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d)
          to label %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2y_14RuntimeManager17block_in_place_onNCNCNvMs_NtNtCs2g09Ig8GZd6_13polars_stream5nodes8group_byNtB3O_16GroupBySinkState14combine_localss1_0s_0Es_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE00uEB3S_.exit.i unwind label %bb.h, !dbg !105847, !noalias !105811 ; 2 uses

bb.h:                                             ; preds = %.noexc
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = invoke noundef zeroext i1 @_RNvMNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.u)
          to label %.noexc.i.i unwind label %bb.j, !dbg !105848, !noalias !105811

.noexc.i.i:                                       ; preds = %bb.h
  br i1 %i.x, label %bb.i, label %.body, !dbg !105849

bb.i:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.u)
          to label %.body unwind label %bb.j, !dbg !105850, !noalias !105811

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !105851, !noalias !105811
  unreachable, !dbg !105851

_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2y_14RuntimeManager17block_in_place_onNCNCNvMs_NtNtCs2g09Ig8GZd6_13polars_stream5nodes8group_byNtB3O_16GroupBySinkState14combine_localss1_0s_0Es_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE00uEB3S_.exit.i: ; preds = %.noexc
  %i.z = extractvalue { i64, ptr } %i.v, 0, !dbg !105852
  %i.aa = extractvalue { i64, ptr } %i.v, 1, !dbg !105852 ; 2 uses
  %i.ab = trunc nuw i64 %i.z to i1, !dbg !105853
  %.not.i = icmp ne ptr %i.aa, null
  %or.cond.not.i = select i1 %i.ab, i1 %.not.i, i1 false, !dbg !105853, !prof !3854
  br i1 %or.cond.not.i, label %bb.k, label %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2s_14RuntimeManager17block_in_place_onNCNCNvMs_NtNtCs2g09Ig8GZd6_13polars_stream5nodes8group_byNtB3I_16GroupBySinkState14combine_localss1_0s_0Es_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE00uEB3M_.exit, !dbg !105853, !prof !3854

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2y_14RuntimeManager17block_in_place_onNCNCNvMs_NtNtCs2g09Ig8GZd6_13polars_stream5nodes8group_byNtB3O_16GroupBySinkState14combine_localss1_0s_0Es_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE00uEB3S_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !105854, !noalias !105812
  store ptr %i.aa, ptr %i.c, align 8, !dbg !105854, !noalias !105812
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !105855, !noalias !105812
  store ptr %i.c, ptr %i.b, align 8, !dbg !105855, !noalias !105812
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !105855
  store ptr @_RNvXs7_NtNtCsh8eZTKRCwoO_3std2io5errorNtB5_5ErrorNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !dbg !105855, !noalias !105812
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @20, ptr noundef nonnull %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #36
          to label %bb.m unwind label %bb.l, !dbg !105856

bb.l:                                             ; preds = %bb.k
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i = load ptr, ptr %i.c, align 8, !dbg !105857, !noalias !105812, !nonnull !3786, !noundef !3786
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream(ptr nonnull %.val.i) #35
          to label %bb.o unwind label %bb.n, !dbg !105857

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.p, %bb.o, %bb.l
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !105858
  unreachable, !dbg !105858

bb.o:                                             ; preds = %bb.l
  %i.ae = invoke noundef zeroext i1 @_RNvMNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.u)
          to label %.noexc.i unwind label %bb.n, !dbg !105859

.noexc.i:                                         ; preds = %bb.o
  br i1 %i.ae, label %bb.p, label %.body, !dbg !105860

bb.p:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.u)
          to label %.body unwind label %bb.n, !dbg !105861

bb.q:                                             ; preds = %bb.g
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !105862

.body:                                            ; preds = %.noexc.i.i, %bb.i, %.noexc.i, %bb.p, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.q ], [ %i.w, %.noexc.i.i ], [ %i.w, %bb.i ], [ %i.ac, %.noexc.i ], [ %i.ac, %bb.p ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(16) %i.d) #35
          to label %.thread unwind label %bb.v, !dbg !105862

_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2s_14RuntimeManager17block_in_place_onNCNCNvMs_NtNtCs2g09Ig8GZd6_13polars_stream5nodes8group_byNtB3I_16GroupBySinkState14combine_localss1_0s_0Es_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE00uEB3M_.exit: ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2y_14RuntimeManager17block_in_place_onNCNCNvMs_NtNtCs2g09Ig8GZd6_13polars_stream5nodes8group_byNtB3O_16GroupBySinkState14combine_localss1_0s_0Es_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE00uEB3S_.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !105814), !dbg !105862
  call void @llvm.experimental.noalias.scope.decl(metadata !105815), !dbg !105863
  %i.ag = load i64, ptr %i.d, align 8, !dbg !105864, !range !3814, !alias.scope !105816, !noundef !3786
  %i.ah = icmp eq i64 %i.ag, 0, !dbg !105864
  br i1 %i.ah, label %bb.r, label %bb.t, !dbg !105864

bb.r:                                             ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2s_14RuntimeManager17block_in_place_onNCNCNvMs_NtNtCs2g09Ig8GZd6_13polars_stream5nodes8group_byNtB3I_16GroupBySinkState14combine_localss1_0s_0Es_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE00uEB3M_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !105817), !dbg !105864
  call void @llvm.experimental.noalias.scope.decl(metadata !105818), !dbg !105865
  %i.ai = load ptr, ptr %i.i, align 8, !dbg !105866, !alias.scope !105819, !nonnull !3786, !noundef !3786
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !dbg !105867, !noalias !105819
  %i.ak = icmp eq i64 %i.aj, 1, !dbg !105868
  br i1 %i.ak, label %bb.s, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit, !dbg !105868

bb.s:                                             ; preds = %bb.r
  fence acquire, !dbg !105869
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #38, !dbg !105870
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit, !dbg !105870

bb.t:                                             ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2s_14RuntimeManager17block_in_place_onNCNCNvMs_NtNtCs2g09Ig8GZd6_13polars_stream5nodes8group_byNtB3I_16GroupBySinkState14combine_localss1_0s_0Es_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE00uEB3M_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !105820), !dbg !105864
  call void @llvm.experimental.noalias.scope.decl(metadata !105821), !dbg !105871
  %i.al = load ptr, ptr %i.i, align 8, !dbg !105872, !alias.scope !105822, !nonnull !3786, !noundef !3786
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !dbg !105873, !noalias !105822
  %i.an = icmp eq i64 %i.am, 1, !dbg !105874
  br i1 %i.an, label %bb.u, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit, !dbg !105874

bb.u:                                             ; preds = %bb.t
  fence acquire, !dbg !105875
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #38, !dbg !105876
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit, !dbg !105876

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !105862
  ret ptr %i.u, !dbg !105877

bb.v:                                             ; preds = %bb.x, %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !105878
  unreachable, !dbg !105878

.thread:                                          ; preds = %bb.w, %bb.x, %.body
  %.pn9 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.w ], [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.x ]
  resume { ptr, i32 } %.pn9, !dbg !105878

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = atomicrmw sub ptr %0, i64 1 release, align 8, !dbg !105879, !noalias !105823
  %i.aq = icmp eq i64 %i.ap, 1, !dbg !105880
  br i1 %i.aq, label %bb.x, label %.thread, !dbg !105880

bb.x:                                             ; preds = %bb.w
  fence acquire, !dbg !105881
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler12multi_thread6worker6WorkerE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #38
          to label %.thread unwind label %bb.v, !dbg !105882
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4pool14spawn_blockingNCNCINvNtNtNtB6_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2b_14RuntimeManager17block_in_place_onNCNCNvMs_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins14semi_anti_joinNtB3r_10BuildState8finalizes_0s_0Es_0uE00uEB3x_(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !105883 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !105984
  %i.f = invoke { i64, ptr } @_RNvMNtNtCskmDBXs7hs3c_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w, !dbg !105985 ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { i64, ptr } %i.f, 0, !dbg !105985 ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.f, 1, !dbg !105985 ; 4 uses
  store i64 %i.g, ptr %i.d, align 8, !dbg !105985
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !105985 ; 5 uses
  store ptr %i.h, ptr %i.i, align 8, !dbg !105985
  %i.j = trunc nuw i64 %i.g to i1, !dbg !105986   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ], !dbg !105987
  %. = select i1 %i.j, i64 480, i64 712, !dbg !105988
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %., !dbg !105989
  br label %bb.c, !dbg !105990

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.l = atomicrmw add ptr @_RNvNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !dbg !105991, !noalias !105970 ; 2 uses
  %.not.i.i = icmp eq i64 %i.l, 0, !dbg !105992
  br i1 %.not.i.i, label %bb.c, label %bb.d, !dbg !105993

bb.d:                                             ; preds = %bb.c
  %.sroa.01.0.v.i.i.i = select i1 %i.j, i64 504, i64 512, !dbg !105994
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v.i.i.i, !dbg !105994 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16, !dbg !105995
  %i.n = load ptr, ptr %i.m, align 8, !dbg !105996, !noalias !105970, !noundef !3786 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.n, null, !dbg !105996
  br i1 %.not.i.i.i, label %bb.g, label %bb.e, !dbg !105997

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24, !dbg !105996
  %i.p = load ptr, ptr %i.o, align 8, !dbg !105998, !noalias !105970, !nonnull !3786, !align !3839, !noundef !3786
  %i.q = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !dbg !105999, !noalias !105970
  %i.r = icmp slt i64 %i.q, 0, !dbg !106000
  br i1 %i.r, label %bb.f, label %bb.g, !dbg !106000

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.trap(), !dbg !106001
  unreachable, !dbg !106001

bb.g:                                             ; preds = %bb.e, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ undef, %bb.d ], [ %i.p, %bb.e ], !dbg !106002
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !106003, !noalias !105970
  invoke void @_RINvNtNtCskmDBXs7hs3c_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvNtNtNtB4_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2v_14RuntimeManager17block_in_place_onNCNCNvMs_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins14semi_anti_joinNtB3L_10BuildState8finalizes_0s_0Es_0uE00ENtNtBR_8schedule16BlockingScheduleEB3R_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull %0, ptr noundef %i.n, ptr %.sroa.5.0.i.i.i, i64 noundef %i.l)
          to label %.noexc unwind label %bb.q, !dbg !106003

.noexc:                                           ; preds = %bb.g
  %i.s = load ptr, ptr %i.a, align 8, !dbg !106004, !noalias !105970, !nonnull !3786, !noundef !3786
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !106005
  %i.u = load ptr, ptr %i.t, align 8, !dbg !106005, !noalias !105970, !nonnull !3786, !noundef !3786 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !106006, !noalias !105970
  %i.v = invoke { i64, ptr } @_RNvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k, ptr noundef nonnull %i.s, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d)
          to label %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2y_14RuntimeManager17block_in_place_onNCNCNvMs_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins14semi_anti_joinNtB3O_10BuildState8finalizes_0s_0Es_0uE00uEB3U_.exit.i unwind label %bb.h, !dbg !106007, !noalias !105971 ; 2 uses

bb.h:                                             ; preds = %.noexc
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = invoke noundef zeroext i1 @_RNvMNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.u)
          to label %.noexc.i.i unwind label %bb.j, !dbg !106008, !noalias !105971

.noexc.i.i:                                       ; preds = %bb.h
  br i1 %i.x, label %bb.i, label %.body, !dbg !106009

bb.i:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.u)
          to label %.body unwind label %bb.j, !dbg !106010, !noalias !105971

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !106011, !noalias !105971
  unreachable, !dbg !106011

_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2y_14RuntimeManager17block_in_place_onNCNCNvMs_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins14semi_anti_joinNtB3O_10BuildState8finalizes_0s_0Es_0uE00uEB3U_.exit.i: ; preds = %.noexc
  %i.z = extractvalue { i64, ptr } %i.v, 0, !dbg !106012
  %i.aa = extractvalue { i64, ptr } %i.v, 1, !dbg !106012 ; 2 uses
  %i.ab = trunc nuw i64 %i.z to i1, !dbg !106013
  %.not.i = icmp ne ptr %i.aa, null
  %or.cond.not.i = select i1 %i.ab, i1 %.not.i, i1 false, !dbg !106013, !prof !3854
  br i1 %or.cond.not.i, label %bb.k, label %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2s_14RuntimeManager17block_in_place_onNCNCNvMs_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins14semi_anti_joinNtB3I_10BuildState8finalizes_0s_0Es_0uE00uEB3O_.exit, !dbg !106013, !prof !3854

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2y_14RuntimeManager17block_in_place_onNCNCNvMs_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins14semi_anti_joinNtB3O_10BuildState8finalizes_0s_0Es_0uE00uEB3U_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !106014, !noalias !105972
  store ptr %i.aa, ptr %i.c, align 8, !dbg !106014, !noalias !105972
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !106015, !noalias !105972
  store ptr %i.c, ptr %i.b, align 8, !dbg !106015, !noalias !105972
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !106015
  store ptr @_RNvXs7_NtNtCsh8eZTKRCwoO_3std2io5errorNtB5_5ErrorNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !dbg !106015, !noalias !105972
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @20, ptr noundef nonnull %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #36
          to label %bb.m unwind label %bb.l, !dbg !106016

bb.l:                                             ; preds = %bb.k
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i = load ptr, ptr %i.c, align 8, !dbg !106017, !noalias !105972, !nonnull !3786, !noundef !3786
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream(ptr nonnull %.val.i) #35
          to label %bb.o unwind label %bb.n, !dbg !106017

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.p, %bb.o, %bb.l
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !106018
  unreachable, !dbg !106018

bb.o:                                             ; preds = %bb.l
  %i.ae = invoke noundef zeroext i1 @_RNvMNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.u)
          to label %.noexc.i unwind label %bb.n, !dbg !106019

.noexc.i:                                         ; preds = %bb.o
  br i1 %i.ae, label %bb.p, label %.body, !dbg !106020

bb.p:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.u)
          to label %.body unwind label %bb.n, !dbg !106021

bb.q:                                             ; preds = %bb.g
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !106022

.body:                                            ; preds = %.noexc.i.i, %bb.i, %.noexc.i, %bb.p, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.q ], [ %i.w, %.noexc.i.i ], [ %i.w, %bb.i ], [ %i.ac, %.noexc.i ], [ %i.ac, %bb.p ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(16) %i.d) #35
          to label %.thread unwind label %bb.v, !dbg !106022

_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2s_14RuntimeManager17block_in_place_onNCNCNvMs_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins14semi_anti_joinNtB3I_10BuildState8finalizes_0s_0Es_0uE00uEB3O_.exit: ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2y_14RuntimeManager17block_in_place_onNCNCNvMs_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins14semi_anti_joinNtB3O_10BuildState8finalizes_0s_0Es_0uE00uEB3U_.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !105974), !dbg !106022
  call void @llvm.experimental.noalias.scope.decl(metadata !105975), !dbg !106023
  %i.ag = load i64, ptr %i.d, align 8, !dbg !106024, !range !3814, !alias.scope !105976, !noundef !3786
  %i.ah = icmp eq i64 %i.ag, 0, !dbg !106024
  br i1 %i.ah, label %bb.r, label %bb.t, !dbg !106024

bb.r:                                             ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2s_14RuntimeManager17block_in_place_onNCNCNvMs_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins14semi_anti_joinNtB3I_10BuildState8finalizes_0s_0Es_0uE00uEB3O_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !105977), !dbg !106024
  call void @llvm.experimental.noalias.scope.decl(metadata !105978), !dbg !106025
  %i.ai = load ptr, ptr %i.i, align 8, !dbg !106026, !alias.scope !105979, !nonnull !3786, !noundef !3786
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !dbg !106027, !noalias !105979
  %i.ak = icmp eq i64 %i.aj, 1, !dbg !106028
  br i1 %i.ak, label %bb.s, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit, !dbg !106028

bb.s:                                             ; preds = %bb.r
  fence acquire, !dbg !106029
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #38, !dbg !106030
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit, !dbg !106030

bb.t:                                             ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2s_14RuntimeManager17block_in_place_onNCNCNvMs_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins14semi_anti_joinNtB3I_10BuildState8finalizes_0s_0Es_0uE00uEB3O_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !105980), !dbg !106024
  call void @llvm.experimental.noalias.scope.decl(metadata !105981), !dbg !106031
  %i.al = load ptr, ptr %i.i, align 8, !dbg !106032, !alias.scope !105982, !nonnull !3786, !noundef !3786
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !dbg !106033, !noalias !105982
  %i.an = icmp eq i64 %i.am, 1, !dbg !106034
  br i1 %i.an, label %bb.u, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit, !dbg !106034

bb.u:                                             ; preds = %bb.t
  fence acquire, !dbg !106035
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #38, !dbg !106036
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit, !dbg !106036

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !106022
  ret ptr %i.u, !dbg !106037

bb.v:                                             ; preds = %bb.x, %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !106038
  unreachable, !dbg !106038

.thread:                                          ; preds = %bb.w, %bb.x, %.body
  %.pn9 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.w ], [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.x ]
  resume { ptr, i32 } %.pn9, !dbg !106038

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = atomicrmw sub ptr %0, i64 1 release, align 8, !dbg !106039, !noalias !105983
  %i.aq = icmp eq i64 %i.ap, 1, !dbg !106040
  br i1 %i.aq, label %bb.x, label %.thread, !dbg !106040

bb.x:                                             ; preds = %bb.w
  fence acquire, !dbg !106041
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler12multi_thread6worker6WorkerE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #38
          to label %.thread unwind label %bb.v, !dbg !106042
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4pool14spawn_blockingNCNCINvNtNtNtB6_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2b_14RuntimeManager17block_in_place_onNCNCNvMs_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins9equi_joinNtB3r_11SampleState23try_transition_to_builds_00Es_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE00uEB3x_(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !106043 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !106144
  %i.f = invoke { i64, ptr } @_RNvMNtNtCskmDBXs7hs3c_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w, !dbg !106145 ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { i64, ptr } %i.f, 0, !dbg !106145 ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.f, 1, !dbg !106145 ; 4 uses
  store i64 %i.g, ptr %i.d, align 8, !dbg !106145
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !106145 ; 5 uses
  store ptr %i.h, ptr %i.i, align 8, !dbg !106145
  %i.j = trunc nuw i64 %i.g to i1, !dbg !106146   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ], !dbg !106147
  %. = select i1 %i.j, i64 480, i64 712, !dbg !106148
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %., !dbg !106149
  br label %bb.c, !dbg !106150

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.l = atomicrmw add ptr @_RNvNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !dbg !106151, !noalias !106130 ; 2 uses
  %.not.i.i = icmp eq i64 %i.l, 0, !dbg !106152
  br i1 %.not.i.i, label %bb.c, label %bb.d, !dbg !106153

bb.d:                                             ; preds = %bb.c
  %.sroa.01.0.v.i.i.i = select i1 %i.j, i64 504, i64 512, !dbg !106154
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v.i.i.i, !dbg !106154 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16, !dbg !106155
  %i.n = load ptr, ptr %i.m, align 8, !dbg !106156, !noalias !106130, !noundef !3786 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.n, null, !dbg !106156
  br i1 %.not.i.i.i, label %bb.g, label %bb.e, !dbg !106157

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24, !dbg !106156
  %i.p = load ptr, ptr %i.o, align 8, !dbg !106158, !noalias !106130, !nonnull !3786, !align !3839, !noundef !3786
  %i.q = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !dbg !106159, !noalias !106130
  %i.r = icmp slt i64 %i.q, 0, !dbg !106160
  br i1 %i.r, label %bb.f, label %bb.g, !dbg !106160

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.trap(), !dbg !106161
  unreachable, !dbg !106161

bb.g:                                             ; preds = %bb.e, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ undef, %bb.d ], [ %i.p, %bb.e ], !dbg !106162
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !106163, !noalias !106130
  invoke void @_RINvNtNtCskmDBXs7hs3c_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvNtNtNtB4_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2v_14RuntimeManager17block_in_place_onNCNCNvMs_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins9equi_joinNtB3L_11SampleState23try_transition_to_builds_00Es_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE00ENtNtBR_8schedule16BlockingScheduleEB3R_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull %0, ptr noundef %i.n, ptr %.sroa.5.0.i.i.i, i64 noundef %i.l)
          to label %.noexc unwind label %bb.q, !dbg !106163

.noexc:                                           ; preds = %bb.g
  %i.s = load ptr, ptr %i.a, align 8, !dbg !106164, !noalias !106130, !nonnull !3786, !noundef !3786
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !106165
  %i.u = load ptr, ptr %i.t, align 8, !dbg !106165, !noalias !106130, !nonnull !3786, !noundef !3786 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !106166, !noalias !106130
  %i.v = invoke { i64, ptr } @_RNvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k, ptr noundef nonnull %i.s, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d)
          to label %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2y_14RuntimeManager17block_in_place_onNCNCNvMs_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins9equi_joinNtB3O_11SampleState23try_transition_to_builds_00Es_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE00uEB3U_.exit.i unwind label %bb.h, !dbg !106167, !noalias !106131 ; 2 uses

bb.h:                                             ; preds = %.noexc
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = invoke noundef zeroext i1 @_RNvMNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.u)
          to label %.noexc.i.i unwind label %bb.j, !dbg !106168, !noalias !106131

.noexc.i.i:                                       ; preds = %bb.h
  br i1 %i.x, label %bb.i, label %.body, !dbg !106169

bb.i:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.u)
          to label %.body unwind label %bb.j, !dbg !106170, !noalias !106131

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !106171, !noalias !106131
  unreachable, !dbg !106171

_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2y_14RuntimeManager17block_in_place_onNCNCNvMs_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins9equi_joinNtB3O_11SampleState23try_transition_to_builds_00Es_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE00uEB3U_.exit.i: ; preds = %.noexc
  %i.z = extractvalue { i64, ptr } %i.v, 0, !dbg !106172
  %i.aa = extractvalue { i64, ptr } %i.v, 1, !dbg !106172 ; 2 uses
  %i.ab = trunc nuw i64 %i.z to i1, !dbg !106173
  %.not.i = icmp ne ptr %i.aa, null
  %or.cond.not.i = select i1 %i.ab, i1 %.not.i, i1 false, !dbg !106173, !prof !3854
  br i1 %or.cond.not.i, label %bb.k, label %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2s_14RuntimeManager17block_in_place_onNCNCNvMs_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins9equi_joinNtB3I_11SampleState23try_transition_to_builds_00Es_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE00uEB3O_.exit, !dbg !106173, !prof !3854

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2y_14RuntimeManager17block_in_place_onNCNCNvMs_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins9equi_joinNtB3O_11SampleState23try_transition_to_builds_00Es_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE00uEB3U_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !106174, !noalias !106132
  store ptr %i.aa, ptr %i.c, align 8, !dbg !106174, !noalias !106132
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !106175, !noalias !106132
  store ptr %i.c, ptr %i.b, align 8, !dbg !106175, !noalias !106132
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !106175
  store ptr @_RNvXs7_NtNtCsh8eZTKRCwoO_3std2io5errorNtB5_5ErrorNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !dbg !106175, !noalias !106132
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @20, ptr noundef nonnull %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #36
          to label %bb.m unwind label %bb.l, !dbg !106176

bb.l:                                             ; preds = %bb.k
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i = load ptr, ptr %i.c, align 8, !dbg !106177, !noalias !106132, !nonnull !3786, !noundef !3786
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream(ptr nonnull %.val.i) #35
          to label %bb.o unwind label %bb.n, !dbg !106177

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.p, %bb.o, %bb.l
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !106178
  unreachable, !dbg !106178

bb.o:                                             ; preds = %bb.l
  %i.ae = invoke noundef zeroext i1 @_RNvMNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.u)
          to label %.noexc.i unwind label %bb.n, !dbg !106179

.noexc.i:                                         ; preds = %bb.o
  br i1 %i.ae, label %bb.p, label %.body, !dbg !106180

bb.p:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.u)
          to label %.body unwind label %bb.n, !dbg !106181

bb.q:                                             ; preds = %bb.g
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !106182

.body:                                            ; preds = %.noexc.i.i, %bb.i, %.noexc.i, %bb.p, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.q ], [ %i.w, %.noexc.i.i ], [ %i.w, %bb.i ], [ %i.ac, %.noexc.i ], [ %i.ac, %bb.p ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(16) %i.d) #35
          to label %.thread unwind label %bb.v, !dbg !106182

_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2s_14RuntimeManager17block_in_place_onNCNCNvMs_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins9equi_joinNtB3I_11SampleState23try_transition_to_builds_00Es_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE00uEB3O_.exit: ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2y_14RuntimeManager17block_in_place_onNCNCNvMs_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins9equi_joinNtB3O_11SampleState23try_transition_to_builds_00Es_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE00uEB3U_.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !106134), !dbg !106182
  call void @llvm.experimental.noalias.scope.decl(metadata !106135), !dbg !106183
  %i.ag = load i64, ptr %i.d, align 8, !dbg !106184, !range !3814, !alias.scope !106136, !noundef !3786
  %i.ah = icmp eq i64 %i.ag, 0, !dbg !106184
  br i1 %i.ah, label %bb.r, label %bb.t, !dbg !106184

bb.r:                                             ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2s_14RuntimeManager17block_in_place_onNCNCNvMs_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins9equi_joinNtB3I_11SampleState23try_transition_to_builds_00Es_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE00uEB3O_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !106137), !dbg !106184
  call void @llvm.experimental.noalias.scope.decl(metadata !106138), !dbg !106185
  %i.ai = load ptr, ptr %i.i, align 8, !dbg !106186, !alias.scope !106139, !nonnull !3786, !noundef !3786
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !dbg !106187, !noalias !106139
  %i.ak = icmp eq i64 %i.aj, 1, !dbg !106188
  br i1 %i.ak, label %bb.s, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit, !dbg !106188

bb.s:                                             ; preds = %bb.r
  fence acquire, !dbg !106189
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #38, !dbg !106190
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit, !dbg !106190

bb.t:                                             ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2s_14RuntimeManager17block_in_place_onNCNCNvMs_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins9equi_joinNtB3I_11SampleState23try_transition_to_builds_00Es_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE00uEB3O_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !106140), !dbg !106184
  call void @llvm.experimental.noalias.scope.decl(metadata !106141), !dbg !106191
  %i.al = load ptr, ptr %i.i, align 8, !dbg !106192, !alias.scope !106142, !nonnull !3786, !noundef !3786
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !dbg !106193, !noalias !106142
  %i.an = icmp eq i64 %i.am, 1, !dbg !106194
  br i1 %i.an, label %bb.u, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit, !dbg !106194

bb.u:                                             ; preds = %bb.t
  fence acquire, !dbg !106195
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #38, !dbg !106196
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit, !dbg !106196

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !106182
  ret ptr %i.u, !dbg !106197

bb.v:                                             ; preds = %bb.x, %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !106198
  unreachable, !dbg !106198

.thread:                                          ; preds = %bb.w, %bb.x, %.body
  %.pn9 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.w ], [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.x ]
  resume { ptr, i32 } %.pn9, !dbg !106198

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = atomicrmw sub ptr %0, i64 1 release, align 8, !dbg !106199, !noalias !106143
  %i.aq = icmp eq i64 %i.ap, 1, !dbg !106200
  br i1 %i.aq, label %bb.x, label %.thread, !dbg !106200

bb.x:                                             ; preds = %bb.w
  fence acquire, !dbg !106201
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler12multi_thread6worker6WorkerE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #38
          to label %.thread unwind label %bb.v, !dbg !106202
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4pool14spawn_blockingNCNCINvNtNtNtB6_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2b_14RuntimeManager17block_in_place_onNCNCNvNtCs2g09Ig8GZd6_13polars_stream7execute12run_subgraphs_0s0_0Es_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE00uEB3q_(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !106203 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !106304
  %i.f = invoke { i64, ptr } @_RNvMNtNtCskmDBXs7hs3c_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w, !dbg !106305 ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { i64, ptr } %i.f, 0, !dbg !106305 ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.f, 1, !dbg !106305 ; 4 uses
  store i64 %i.g, ptr %i.d, align 8, !dbg !106305
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !106305 ; 5 uses
  store ptr %i.h, ptr %i.i, align 8, !dbg !106305
  %i.j = trunc nuw i64 %i.g to i1, !dbg !106306   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ], !dbg !106307
  %. = select i1 %i.j, i64 480, i64 712, !dbg !106308
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %., !dbg !106309
  br label %bb.c, !dbg !106310

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.l = atomicrmw add ptr @_RNvNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !dbg !106311, !noalias !106290 ; 2 uses
  %.not.i.i = icmp eq i64 %i.l, 0, !dbg !106312
  br i1 %.not.i.i, label %bb.c, label %bb.d, !dbg !106313

bb.d:                                             ; preds = %bb.c
  %.sroa.01.0.v.i.i.i = select i1 %i.j, i64 504, i64 512, !dbg !106314
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v.i.i.i, !dbg !106314 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16, !dbg !106315
  %i.n = load ptr, ptr %i.m, align 8, !dbg !106316, !noalias !106290, !noundef !3786 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.n, null, !dbg !106316
  br i1 %.not.i.i.i, label %bb.g, label %bb.e, !dbg !106317

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24, !dbg !106316
  %i.p = load ptr, ptr %i.o, align 8, !dbg !106318, !noalias !106290, !nonnull !3786, !align !3839, !noundef !3786
  %i.q = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !dbg !106319, !noalias !106290
  %i.r = icmp slt i64 %i.q, 0, !dbg !106320
  br i1 %i.r, label %bb.f, label %bb.g, !dbg !106320

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.trap(), !dbg !106321
  unreachable, !dbg !106321

bb.g:                                             ; preds = %bb.e, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ undef, %bb.d ], [ %i.p, %bb.e ], !dbg !106322
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !106323, !noalias !106290
  invoke void @_RINvNtNtCskmDBXs7hs3c_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvNtNtNtB4_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2v_14RuntimeManager17block_in_place_onNCNCNvNtCs2g09Ig8GZd6_13polars_stream7execute12run_subgraphs_0s0_0Es_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE00ENtNtBR_8schedule16BlockingScheduleEB3K_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull %0, ptr noundef %i.n, ptr %.sroa.5.0.i.i.i, i64 noundef %i.l)
          to label %.noexc unwind label %bb.q, !dbg !106323

.noexc:                                           ; preds = %bb.g
  %i.s = load ptr, ptr %i.a, align 8, !dbg !106324, !noalias !106290, !nonnull !3786, !noundef !3786
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !106325
  %i.u = load ptr, ptr %i.t, align 8, !dbg !106325, !noalias !106290, !nonnull !3786, !noundef !3786 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !106326, !noalias !106290
  %i.v = invoke { i64, ptr } @_RNvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k, ptr noundef nonnull %i.s, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d)
          to label %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2y_14RuntimeManager17block_in_place_onNCNCNvNtCs2g09Ig8GZd6_13polars_stream7execute12run_subgraphs_0s0_0Es_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE00uEB3N_.exit.i unwind label %bb.h, !dbg !106327, !noalias !106291 ; 2 uses

bb.h:                                             ; preds = %.noexc
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = invoke noundef zeroext i1 @_RNvMNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.u)
          to label %.noexc.i.i unwind label %bb.j, !dbg !106328, !noalias !106291

.noexc.i.i:                                       ; preds = %bb.h
  br i1 %i.x, label %bb.i, label %.body, !dbg !106329

bb.i:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.u)
          to label %.body unwind label %bb.j, !dbg !106330, !noalias !106291

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !106331, !noalias !106291
  unreachable, !dbg !106331

_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2y_14RuntimeManager17block_in_place_onNCNCNvNtCs2g09Ig8GZd6_13polars_stream7execute12run_subgraphs_0s0_0Es_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE00uEB3N_.exit.i: ; preds = %.noexc
  %i.z = extractvalue { i64, ptr } %i.v, 0, !dbg !106332
  %i.aa = extractvalue { i64, ptr } %i.v, 1, !dbg !106332 ; 2 uses
  %i.ab = trunc nuw i64 %i.z to i1, !dbg !106333
  %.not.i = icmp ne ptr %i.aa, null
  %or.cond.not.i = select i1 %i.ab, i1 %.not.i, i1 false, !dbg !106333, !prof !3854
  br i1 %or.cond.not.i, label %bb.k, label %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2s_14RuntimeManager17block_in_place_onNCNCNvNtCs2g09Ig8GZd6_13polars_stream7execute12run_subgraphs_0s0_0Es_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE00uEB3H_.exit, !dbg !106333, !prof !3854

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2y_14RuntimeManager17block_in_place_onNCNCNvNtCs2g09Ig8GZd6_13polars_stream7execute12run_subgraphs_0s0_0Es_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE00uEB3N_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !106334, !noalias !106292
  store ptr %i.aa, ptr %i.c, align 8, !dbg !106334, !noalias !106292
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !106335, !noalias !106292
  store ptr %i.c, ptr %i.b, align 8, !dbg !106335, !noalias !106292
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !106335
  store ptr @_RNvXs7_NtNtCsh8eZTKRCwoO_3std2io5errorNtB5_5ErrorNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !dbg !106335, !noalias !106292
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @20, ptr noundef nonnull %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #36
          to label %bb.m unwind label %bb.l, !dbg !106336

bb.l:                                             ; preds = %bb.k
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i = load ptr, ptr %i.c, align 8, !dbg !106337, !noalias !106292, !nonnull !3786, !noundef !3786
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream(ptr nonnull %.val.i) #35
          to label %bb.o unwind label %bb.n, !dbg !106337

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.p, %bb.o, %bb.l
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !106338
  unreachable, !dbg !106338

bb.o:                                             ; preds = %bb.l
  %i.ae = invoke noundef zeroext i1 @_RNvMNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.u)
          to label %.noexc.i unwind label %bb.n, !dbg !106339

.noexc.i:                                         ; preds = %bb.o
  br i1 %i.ae, label %bb.p, label %.body, !dbg !106340

bb.p:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.u)
          to label %.body unwind label %bb.n, !dbg !106341

bb.q:                                             ; preds = %bb.g
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !106342

.body:                                            ; preds = %.noexc.i.i, %bb.i, %.noexc.i, %bb.p, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.q ], [ %i.w, %.noexc.i.i ], [ %i.w, %bb.i ], [ %i.ac, %.noexc.i ], [ %i.ac, %bb.p ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(16) %i.d) #35
          to label %.thread unwind label %bb.v, !dbg !106342

_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2s_14RuntimeManager17block_in_place_onNCNCNvNtCs2g09Ig8GZd6_13polars_stream7execute12run_subgraphs_0s0_0Es_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE00uEB3H_.exit: ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2y_14RuntimeManager17block_in_place_onNCNCNvNtCs2g09Ig8GZd6_13polars_stream7execute12run_subgraphs_0s0_0Es_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE00uEB3N_.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !106294), !dbg !106342
  call void @llvm.experimental.noalias.scope.decl(metadata !106295), !dbg !106343
  %i.ag = load i64, ptr %i.d, align 8, !dbg !106344, !range !3814, !alias.scope !106296, !noundef !3786
  %i.ah = icmp eq i64 %i.ag, 0, !dbg !106344
  br i1 %i.ah, label %bb.r, label %bb.t, !dbg !106344

bb.r:                                             ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2s_14RuntimeManager17block_in_place_onNCNCNvNtCs2g09Ig8GZd6_13polars_stream7execute12run_subgraphs_0s0_0Es_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE00uEB3H_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !106297), !dbg !106344
  call void @llvm.experimental.noalias.scope.decl(metadata !106298), !dbg !106345
  %i.ai = load ptr, ptr %i.i, align 8, !dbg !106346, !alias.scope !106299, !nonnull !3786, !noundef !3786
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !dbg !106347, !noalias !106299
  %i.ak = icmp eq i64 %i.aj, 1, !dbg !106348
  br i1 %i.ak, label %bb.s, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit, !dbg !106348

bb.s:                                             ; preds = %bb.r
  fence acquire, !dbg !106349
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #38, !dbg !106350
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit, !dbg !106350

bb.t:                                             ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2s_14RuntimeManager17block_in_place_onNCNCNvNtCs2g09Ig8GZd6_13polars_stream7execute12run_subgraphs_0s0_0Es_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE00uEB3H_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !106300), !dbg !106344
  call void @llvm.experimental.noalias.scope.decl(metadata !106301), !dbg !106351
  %i.al = load ptr, ptr %i.i, align 8, !dbg !106352, !alias.scope !106302, !nonnull !3786, !noundef !3786
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !dbg !106353, !noalias !106302
  %i.an = icmp eq i64 %i.am, 1, !dbg !106354
  br i1 %i.an, label %bb.u, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit, !dbg !106354

bb.u:                                             ; preds = %bb.t
  fence acquire, !dbg !106355
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #38, !dbg !106356
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit, !dbg !106356

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !106342
  ret ptr %i.u, !dbg !106357

bb.v:                                             ; preds = %bb.x, %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !106358
  unreachable, !dbg !106358

.thread:                                          ; preds = %bb.w, %bb.x, %.body
  %.pn9 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.w ], [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.x ]
  resume { ptr, i32 } %.pn9, !dbg !106358

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = atomicrmw sub ptr %0, i64 1 release, align 8, !dbg !106359, !noalias !106303
  %i.aq = icmp eq i64 %i.ap, 1, !dbg !106360
  br i1 %i.aq, label %bb.x, label %.thread, !dbg !106360

bb.x:                                             ; preds = %bb.w
  fence acquire, !dbg !106361
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler12multi_thread6worker6WorkerE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #38
          to label %.thread unwind label %bb.v, !dbg !106362
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4pool14spawn_blockingNCNCINvNtNtNtB6_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2b_14RuntimeManager17block_in_place_onNCNvMs0_NtCskAlUH1kY1DR_10polars_ooc11spill_tokenINtB3q_15SpillTokenInnerNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE11pin_or_lock0Es_0INtNtCscgRAwXFJnXP_4core6option6OptionINtB3q_9PinnedRefB4t_EEE00uECs2g09Ig8GZd6_13polars_stream(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !106363 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !106464
  %i.f = invoke { i64, ptr } @_RNvMNtNtCskmDBXs7hs3c_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w, !dbg !106465 ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { i64, ptr } %i.f, 0, !dbg !106465 ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.f, 1, !dbg !106465 ; 4 uses
  store i64 %i.g, ptr %i.d, align 8, !dbg !106465
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !106465 ; 5 uses
  store ptr %i.h, ptr %i.i, align 8, !dbg !106465
  %i.j = trunc nuw i64 %i.g to i1, !dbg !106466   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ], !dbg !106467
  %. = select i1 %i.j, i64 480, i64 712, !dbg !106468
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %., !dbg !106469
  br label %bb.c, !dbg !106470

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.l = atomicrmw add ptr @_RNvNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !dbg !106471, !noalias !106450 ; 2 uses
  %.not.i.i = icmp eq i64 %i.l, 0, !dbg !106472
  br i1 %.not.i.i, label %bb.c, label %bb.d, !dbg !106473

bb.d:                                             ; preds = %bb.c
  %.sroa.01.0.v.i.i.i = select i1 %i.j, i64 504, i64 512, !dbg !106474
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v.i.i.i, !dbg !106474 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16, !dbg !106475
  %i.n = load ptr, ptr %i.m, align 8, !dbg !106476, !noalias !106450, !noundef !3786 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.n, null, !dbg !106476
  br i1 %.not.i.i.i, label %bb.g, label %bb.e, !dbg !106477

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24, !dbg !106476
  %i.p = load ptr, ptr %i.o, align 8, !dbg !106478, !noalias !106450, !nonnull !3786, !align !3839, !noundef !3786
  %i.q = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !dbg !106479, !noalias !106450
  %i.r = icmp slt i64 %i.q, 0, !dbg !106480
  br i1 %i.r, label %bb.f, label %bb.g, !dbg !106480

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.trap(), !dbg !106481
  unreachable, !dbg !106481

bb.g:                                             ; preds = %bb.e, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ undef, %bb.d ], [ %i.p, %bb.e ], !dbg !106482
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !106483, !noalias !106450
  invoke void @_RINvNtNtCskmDBXs7hs3c_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvNtNtNtB4_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2v_14RuntimeManager17block_in_place_onNCNvMs0_NtCskAlUH1kY1DR_10polars_ooc11spill_tokenINtB3K_15SpillTokenInnerNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE11pin_or_lock0Es_0INtNtCscgRAwXFJnXP_4core6option6OptionINtB3K_9PinnedRefB4N_EEE00ENtNtBR_8schedule16BlockingScheduleECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull %0, ptr noundef %i.n, ptr %.sroa.5.0.i.i.i, i64 noundef %i.l)
          to label %.noexc unwind label %bb.q, !dbg !106483

.noexc:                                           ; preds = %bb.g
  %i.s = load ptr, ptr %i.a, align 8, !dbg !106484, !noalias !106450, !nonnull !3786, !noundef !3786
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !106485
  %i.u = load ptr, ptr %i.t, align 8, !dbg !106485, !noalias !106450, !nonnull !3786, !noundef !3786 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !106486, !noalias !106450
  %i.v = invoke { i64, ptr } @_RNvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k, ptr noundef nonnull %i.s, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d)
          to label %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2y_14RuntimeManager17block_in_place_onNCNvMs0_NtCskAlUH1kY1DR_10polars_ooc11spill_tokenINtB3N_15SpillTokenInnerNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE11pin_or_lock0Es_0INtNtCscgRAwXFJnXP_4core6option6OptionINtB3N_9PinnedRefB4Q_EEE00uECs2g09Ig8GZd6_13polars_stream.exit.i unwind label %bb.h, !dbg !106487, !noalias !106451 ; 2 uses

bb.h:                                             ; preds = %.noexc
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = invoke noundef zeroext i1 @_RNvMNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.u)
          to label %.noexc.i.i unwind label %bb.j, !dbg !106488, !noalias !106451

.noexc.i.i:                                       ; preds = %bb.h
  br i1 %i.x, label %bb.i, label %.body, !dbg !106489

bb.i:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.u)
          to label %.body unwind label %bb.j, !dbg !106490, !noalias !106451

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !106491, !noalias !106451
  unreachable, !dbg !106491

_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2y_14RuntimeManager17block_in_place_onNCNvMs0_NtCskAlUH1kY1DR_10polars_ooc11spill_tokenINtB3N_15SpillTokenInnerNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE11pin_or_lock0Es_0INtNtCscgRAwXFJnXP_4core6option6OptionINtB3N_9PinnedRefB4Q_EEE00uECs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %.noexc
  %i.z = extractvalue { i64, ptr } %i.v, 0, !dbg !106492
  %i.aa = extractvalue { i64, ptr } %i.v, 1, !dbg !106492 ; 2 uses
  %i.ab = trunc nuw i64 %i.z to i1, !dbg !106493
  %.not.i = icmp ne ptr %i.aa, null
  %or.cond.not.i = select i1 %i.ab, i1 %.not.i, i1 false, !dbg !106493, !prof !3854
  br i1 %or.cond.not.i, label %bb.k, label %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2s_14RuntimeManager17block_in_place_onNCNvMs0_NtCskAlUH1kY1DR_10polars_ooc11spill_tokenINtB3H_15SpillTokenInnerNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE11pin_or_lock0Es_0INtNtCscgRAwXFJnXP_4core6option6OptionINtB3H_9PinnedRefB4K_EEE00uECs2g09Ig8GZd6_13polars_stream.exit, !dbg !106493, !prof !3854

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2y_14RuntimeManager17block_in_place_onNCNvMs0_NtCskAlUH1kY1DR_10polars_ooc11spill_tokenINtB3N_15SpillTokenInnerNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE11pin_or_lock0Es_0INtNtCscgRAwXFJnXP_4core6option6OptionINtB3N_9PinnedRefB4Q_EEE00uECs2g09Ig8GZd6_13polars_stream.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !106494, !noalias !106452
  store ptr %i.aa, ptr %i.c, align 8, !dbg !106494, !noalias !106452
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !106495, !noalias !106452
  store ptr %i.c, ptr %i.b, align 8, !dbg !106495, !noalias !106452
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !106495
  store ptr @_RNvXs7_NtNtCsh8eZTKRCwoO_3std2io5errorNtB5_5ErrorNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !dbg !106495, !noalias !106452
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @20, ptr noundef nonnull %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #36
          to label %bb.m unwind label %bb.l, !dbg !106496

bb.l:                                             ; preds = %bb.k
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i = load ptr, ptr %i.c, align 8, !dbg !106497, !noalias !106452, !nonnull !3786, !noundef !3786
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream(ptr nonnull %.val.i) #35
          to label %bb.o unwind label %bb.n, !dbg !106497

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.p, %bb.o, %bb.l
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !106498
  unreachable, !dbg !106498

bb.o:                                             ; preds = %bb.l
  %i.ae = invoke noundef zeroext i1 @_RNvMNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.u)
          to label %.noexc.i unwind label %bb.n, !dbg !106499

.noexc.i:                                         ; preds = %bb.o
  br i1 %i.ae, label %bb.p, label %.body, !dbg !106500

bb.p:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.u)
          to label %.body unwind label %bb.n, !dbg !106501

bb.q:                                             ; preds = %bb.g
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !106502

.body:                                            ; preds = %.noexc.i.i, %bb.i, %.noexc.i, %bb.p, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.q ], [ %i.w, %.noexc.i.i ], [ %i.w, %bb.i ], [ %i.ac, %.noexc.i ], [ %i.ac, %bb.p ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(16) %i.d) #35
          to label %.thread unwind label %bb.v, !dbg !106502

_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2s_14RuntimeManager17block_in_place_onNCNvMs0_NtCskAlUH1kY1DR_10polars_ooc11spill_tokenINtB3H_15SpillTokenInnerNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE11pin_or_lock0Es_0INtNtCscgRAwXFJnXP_4core6option6OptionINtB3H_9PinnedRefB4K_EEE00uECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2y_14RuntimeManager17block_in_place_onNCNvMs0_NtCskAlUH1kY1DR_10polars_ooc11spill_tokenINtB3N_15SpillTokenInnerNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE11pin_or_lock0Es_0INtNtCscgRAwXFJnXP_4core6option6OptionINtB3N_9PinnedRefB4Q_EEE00uECs2g09Ig8GZd6_13polars_stream.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !106454), !dbg !106502
  call void @llvm.experimental.noalias.scope.decl(metadata !106455), !dbg !106503
  %i.ag = load i64, ptr %i.d, align 8, !dbg !106504, !range !3814, !alias.scope !106456, !noundef !3786
  %i.ah = icmp eq i64 %i.ag, 0, !dbg !106504
  br i1 %i.ah, label %bb.r, label %bb.t, !dbg !106504

bb.r:                                             ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2s_14RuntimeManager17block_in_place_onNCNvMs0_NtCskAlUH1kY1DR_10polars_ooc11spill_tokenINtB3H_15SpillTokenInnerNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE11pin_or_lock0Es_0INtNtCscgRAwXFJnXP_4core6option6OptionINtB3H_9PinnedRefB4K_EEE00uECs2g09Ig8GZd6_13polars_stream.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !106457), !dbg !106504
  call void @llvm.experimental.noalias.scope.decl(metadata !106458), !dbg !106505
  %i.ai = load ptr, ptr %i.i, align 8, !dbg !106506, !alias.scope !106459, !nonnull !3786, !noundef !3786
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !dbg !106507, !noalias !106459
  %i.ak = icmp eq i64 %i.aj, 1, !dbg !106508
  br i1 %i.ak, label %bb.s, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit, !dbg !106508

bb.s:                                             ; preds = %bb.r
  fence acquire, !dbg !106509
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #38, !dbg !106510
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit, !dbg !106510

bb.t:                                             ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2s_14RuntimeManager17block_in_place_onNCNvMs0_NtCskAlUH1kY1DR_10polars_ooc11spill_tokenINtB3H_15SpillTokenInnerNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE11pin_or_lock0Es_0INtNtCscgRAwXFJnXP_4core6option6OptionINtB3H_9PinnedRefB4K_EEE00uECs2g09Ig8GZd6_13polars_stream.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !106460), !dbg !106504
  call void @llvm.experimental.noalias.scope.decl(metadata !106461), !dbg !106511
  %i.al = load ptr, ptr %i.i, align 8, !dbg !106512, !alias.scope !106462, !nonnull !3786, !noundef !3786
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !dbg !106513, !noalias !106462
  %i.an = icmp eq i64 %i.am, 1, !dbg !106514
  br i1 %i.an, label %bb.u, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit, !dbg !106514

bb.u:                                             ; preds = %bb.t
  fence acquire, !dbg !106515
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #38, !dbg !106516
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit, !dbg !106516

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !106502
  ret ptr %i.u, !dbg !106517

bb.v:                                             ; preds = %bb.x, %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !106518
  unreachable, !dbg !106518

.thread:                                          ; preds = %bb.w, %bb.x, %.body
  %.pn9 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.w ], [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.x ]
  resume { ptr, i32 } %.pn9, !dbg !106518

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = atomicrmw sub ptr %0, i64 1 release, align 8, !dbg !106519, !noalias !106463
  %i.aq = icmp eq i64 %i.ap, 1, !dbg !106520
  br i1 %i.aq, label %bb.x, label %.thread, !dbg !106520

bb.x:                                             ; preds = %bb.w
  fence acquire, !dbg !106521
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler12multi_thread6worker6WorkerE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #38
          to label %.thread unwind label %bb.v, !dbg !106522
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4pool14spawn_blockingNCNCINvNtNtNtB6_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2b_14RuntimeManager17block_in_place_onNCNvNtCs2g09Ig8GZd6_13polars_stream7execute13execute_graph0Es_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE00uEB3o_(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !106523 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !106624
  %i.f = invoke { i64, ptr } @_RNvMNtNtCskmDBXs7hs3c_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w, !dbg !106625 ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { i64, ptr } %i.f, 0, !dbg !106625 ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.f, 1, !dbg !106625 ; 4 uses
  store i64 %i.g, ptr %i.d, align 8, !dbg !106625
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !106625 ; 5 uses
  store ptr %i.h, ptr %i.i, align 8, !dbg !106625
  %i.j = trunc nuw i64 %i.g to i1, !dbg !106626   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ], !dbg !106627
  %. = select i1 %i.j, i64 480, i64 712, !dbg !106628
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %., !dbg !106629
  br label %bb.c, !dbg !106630

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.l = atomicrmw add ptr @_RNvNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !dbg !106631, !noalias !106610 ; 2 uses
  %.not.i.i = icmp eq i64 %i.l, 0, !dbg !106632
  br i1 %.not.i.i, label %bb.c, label %bb.d, !dbg !106633

bb.d:                                             ; preds = %bb.c
  %.sroa.01.0.v.i.i.i = select i1 %i.j, i64 504, i64 512, !dbg !106634
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v.i.i.i, !dbg !106634 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16, !dbg !106635
  %i.n = load ptr, ptr %i.m, align 8, !dbg !106636, !noalias !106610, !noundef !3786 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.n, null, !dbg !106636
  br i1 %.not.i.i.i, label %bb.g, label %bb.e, !dbg !106637

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24, !dbg !106636
  %i.p = load ptr, ptr %i.o, align 8, !dbg !106638, !noalias !106610, !nonnull !3786, !align !3839, !noundef !3786
  %i.q = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !dbg !106639, !noalias !106610
  %i.r = icmp slt i64 %i.q, 0, !dbg !106640
  br i1 %i.r, label %bb.f, label %bb.g, !dbg !106640

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.trap(), !dbg !106641
  unreachable, !dbg !106641

bb.g:                                             ; preds = %bb.e, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ undef, %bb.d ], [ %i.p, %bb.e ], !dbg !106642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !106643, !noalias !106610
  invoke void @_RINvNtNtCskmDBXs7hs3c_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvNtNtNtB4_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2v_14RuntimeManager17block_in_place_onNCNvNtCs2g09Ig8GZd6_13polars_stream7execute13execute_graph0Es_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE00ENtNtBR_8schedule16BlockingScheduleEB3I_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull %0, ptr noundef %i.n, ptr %.sroa.5.0.i.i.i, i64 noundef %i.l)
          to label %.noexc unwind label %bb.q, !dbg !106643

.noexc:                                           ; preds = %bb.g
  %i.s = load ptr, ptr %i.a, align 8, !dbg !106644, !noalias !106610, !nonnull !3786, !noundef !3786
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !106645
  %i.u = load ptr, ptr %i.t, align 8, !dbg !106645, !noalias !106610, !nonnull !3786, !noundef !3786 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !106646, !noalias !106610
  %i.v = invoke { i64, ptr } @_RNvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k, ptr noundef nonnull %i.s, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d)
          to label %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2y_14RuntimeManager17block_in_place_onNCNvNtCs2g09Ig8GZd6_13polars_stream7execute13execute_graph0Es_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE00uEB3L_.exit.i unwind label %bb.h, !dbg !106647, !noalias !106611 ; 2 uses

bb.h:                                             ; preds = %.noexc
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = invoke noundef zeroext i1 @_RNvMNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.u)
          to label %.noexc.i.i unwind label %bb.j, !dbg !106648, !noalias !106611

.noexc.i.i:                                       ; preds = %bb.h
  br i1 %i.x, label %bb.i, label %.body, !dbg !106649

bb.i:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.u)
          to label %.body unwind label %bb.j, !dbg !106650, !noalias !106611

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !106651, !noalias !106611
  unreachable, !dbg !106651

_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2y_14RuntimeManager17block_in_place_onNCNvNtCs2g09Ig8GZd6_13polars_stream7execute13execute_graph0Es_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE00uEB3L_.exit.i: ; preds = %.noexc
  %i.z = extractvalue { i64, ptr } %i.v, 0, !dbg !106652
  %i.aa = extractvalue { i64, ptr } %i.v, 1, !dbg !106652 ; 2 uses
  %i.ab = trunc nuw i64 %i.z to i1, !dbg !106653
  %.not.i = icmp ne ptr %i.aa, null
  %or.cond.not.i = select i1 %i.ab, i1 %.not.i, i1 false, !dbg !106653, !prof !3854
  br i1 %or.cond.not.i, label %bb.k, label %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2s_14RuntimeManager17block_in_place_onNCNvNtCs2g09Ig8GZd6_13polars_stream7execute13execute_graph0Es_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE00uEB3F_.exit, !dbg !106653, !prof !3854

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2y_14RuntimeManager17block_in_place_onNCNvNtCs2g09Ig8GZd6_13polars_stream7execute13execute_graph0Es_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE00uEB3L_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !106654, !noalias !106612
  store ptr %i.aa, ptr %i.c, align 8, !dbg !106654, !noalias !106612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !106655, !noalias !106612
  store ptr %i.c, ptr %i.b, align 8, !dbg !106655, !noalias !106612
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !106655
  store ptr @_RNvXs7_NtNtCsh8eZTKRCwoO_3std2io5errorNtB5_5ErrorNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !dbg !106655, !noalias !106612
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @20, ptr noundef nonnull %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #36
          to label %bb.m unwind label %bb.l, !dbg !106656

bb.l:                                             ; preds = %bb.k
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i = load ptr, ptr %i.c, align 8, !dbg !106657, !noalias !106612, !nonnull !3786, !noundef !3786
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream(ptr nonnull %.val.i) #35
          to label %bb.o unwind label %bb.n, !dbg !106657

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.p, %bb.o, %bb.l
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !106658
  unreachable, !dbg !106658

bb.o:                                             ; preds = %bb.l
  %i.ae = invoke noundef zeroext i1 @_RNvMNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.u)
          to label %.noexc.i unwind label %bb.n, !dbg !106659

.noexc.i:                                         ; preds = %bb.o
  br i1 %i.ae, label %bb.p, label %.body, !dbg !106660

bb.p:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.u)
          to label %.body unwind label %bb.n, !dbg !106661

bb.q:                                             ; preds = %bb.g
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !106662

.body:                                            ; preds = %.noexc.i.i, %bb.i, %.noexc.i, %bb.p, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.q ], [ %i.w, %.noexc.i.i ], [ %i.w, %bb.i ], [ %i.ac, %.noexc.i ], [ %i.ac, %bb.p ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(16) %i.d) #35
          to label %.thread unwind label %bb.v, !dbg !106662

_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2s_14RuntimeManager17block_in_place_onNCNvNtCs2g09Ig8GZd6_13polars_stream7execute13execute_graph0Es_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE00uEB3F_.exit: ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2y_14RuntimeManager17block_in_place_onNCNvNtCs2g09Ig8GZd6_13polars_stream7execute13execute_graph0Es_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE00uEB3L_.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !106614), !dbg !106662
  call void @llvm.experimental.noalias.scope.decl(metadata !106615), !dbg !106663
  %i.ag = load i64, ptr %i.d, align 8, !dbg !106664, !range !3814, !alias.scope !106616, !noundef !3786
  %i.ah = icmp eq i64 %i.ag, 0, !dbg !106664
  br i1 %i.ah, label %bb.r, label %bb.t, !dbg !106664

bb.r:                                             ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2s_14RuntimeManager17block_in_place_onNCNvNtCs2g09Ig8GZd6_13polars_stream7execute13execute_graph0Es_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE00uEB3F_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !106617), !dbg !106664
  call void @llvm.experimental.noalias.scope.decl(metadata !106618), !dbg !106665
  %i.ai = load ptr, ptr %i.i, align 8, !dbg !106666, !alias.scope !106619, !nonnull !3786, !noundef !3786
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !dbg !106667, !noalias !106619
  %i.ak = icmp eq i64 %i.aj, 1, !dbg !106668
  br i1 %i.ak, label %bb.s, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit, !dbg !106668

bb.s:                                             ; preds = %bb.r
  fence acquire, !dbg !106669
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #38, !dbg !106670
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit, !dbg !106670

bb.t:                                             ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2s_14RuntimeManager17block_in_place_onNCNvNtCs2g09Ig8GZd6_13polars_stream7execute13execute_graph0Es_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE00uEB3F_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !106620), !dbg !106664
  call void @llvm.experimental.noalias.scope.decl(metadata !106621), !dbg !106671
  %i.al = load ptr, ptr %i.i, align 8, !dbg !106672, !alias.scope !106622, !nonnull !3786, !noundef !3786
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !dbg !106673, !noalias !106622
  %i.an = icmp eq i64 %i.am, 1, !dbg !106674
  br i1 %i.an, label %bb.u, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit, !dbg !106674

bb.u:                                             ; preds = %bb.t
  fence acquire, !dbg !106675
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #38, !dbg !106676
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit, !dbg !106676

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !106662
  ret ptr %i.u, !dbg !106677

bb.v:                                             ; preds = %bb.x, %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !106678
  unreachable, !dbg !106678

.thread:                                          ; preds = %bb.w, %bb.x, %.body
  %.pn9 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.w ], [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.x ]
  resume { ptr, i32 } %.pn9, !dbg !106678

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = atomicrmw sub ptr %0, i64 1 release, align 8, !dbg !106679, !noalias !106623
  %i.aq = icmp eq i64 %i.ap, 1, !dbg !106680
  br i1 %i.aq, label %bb.x, label %.thread, !dbg !106680

bb.x:                                             ; preds = %bb.w
  fence acquire, !dbg !106681
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler12multi_thread6worker6WorkerE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #38
          to label %.thread unwind label %bb.v, !dbg !106682
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4pool14spawn_blockingNCNCINvNtNtNtB6_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2b_14RuntimeManager17block_in_place_onNCNvNtCs2g09Ig8GZd6_13polars_stream7execute13execute_graphs0_0Es_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE00uEB3o_(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !106683 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !106784
  %i.f = invoke { i64, ptr } @_RNvMNtNtCskmDBXs7hs3c_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w, !dbg !106785 ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { i64, ptr } %i.f, 0, !dbg !106785 ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.f, 1, !dbg !106785 ; 4 uses
  store i64 %i.g, ptr %i.d, align 8, !dbg !106785
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !106785 ; 5 uses
  store ptr %i.h, ptr %i.i, align 8, !dbg !106785
  %i.j = trunc nuw i64 %i.g to i1, !dbg !106786   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ], !dbg !106787
  %. = select i1 %i.j, i64 480, i64 712, !dbg !106788
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %., !dbg !106789
  br label %bb.c, !dbg !106790

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.l = atomicrmw add ptr @_RNvNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !dbg !106791, !noalias !106770 ; 2 uses
  %.not.i.i = icmp eq i64 %i.l, 0, !dbg !106792
  br i1 %.not.i.i, label %bb.c, label %bb.d, !dbg !106793

bb.d:                                             ; preds = %bb.c
  %.sroa.01.0.v.i.i.i = select i1 %i.j, i64 504, i64 512, !dbg !106794
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v.i.i.i, !dbg !106794 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16, !dbg !106795
  %i.n = load ptr, ptr %i.m, align 8, !dbg !106796, !noalias !106770, !noundef !3786 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.n, null, !dbg !106796
  br i1 %.not.i.i.i, label %bb.g, label %bb.e, !dbg !106797

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24, !dbg !106796
  %i.p = load ptr, ptr %i.o, align 8, !dbg !106798, !noalias !106770, !nonnull !3786, !align !3839, !noundef !3786
  %i.q = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !dbg !106799, !noalias !106770
  %i.r = icmp slt i64 %i.q, 0, !dbg !106800
  br i1 %i.r, label %bb.f, label %bb.g, !dbg !106800

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.trap(), !dbg !106801
  unreachable, !dbg !106801

bb.g:                                             ; preds = %bb.e, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ undef, %bb.d ], [ %i.p, %bb.e ], !dbg !106802
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !106803, !noalias !106770
  invoke void @_RINvNtNtCskmDBXs7hs3c_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvNtNtNtB4_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2v_14RuntimeManager17block_in_place_onNCNvNtCs2g09Ig8GZd6_13polars_stream7execute13execute_graphs0_0Es_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE00ENtNtBR_8schedule16BlockingScheduleEB3I_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull %0, ptr noundef %i.n, ptr %.sroa.5.0.i.i.i, i64 noundef %i.l)
          to label %.noexc unwind label %bb.q, !dbg !106803

.noexc:                                           ; preds = %bb.g
  %i.s = load ptr, ptr %i.a, align 8, !dbg !106804, !noalias !106770, !nonnull !3786, !noundef !3786
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !106805
  %i.u = load ptr, ptr %i.t, align 8, !dbg !106805, !noalias !106770, !nonnull !3786, !noundef !3786 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !106806, !noalias !106770
  %i.v = invoke { i64, ptr } @_RNvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k, ptr noundef nonnull %i.s, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d)
          to label %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2y_14RuntimeManager17block_in_place_onNCNvNtCs2g09Ig8GZd6_13polars_stream7execute13execute_graphs0_0Es_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE00uEB3L_.exit.i unwind label %bb.h, !dbg !106807, !noalias !106771 ; 2 uses

bb.h:                                             ; preds = %.noexc
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = invoke noundef zeroext i1 @_RNvMNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.u)
          to label %.noexc.i.i unwind label %bb.j, !dbg !106808, !noalias !106771

.noexc.i.i:                                       ; preds = %bb.h
  br i1 %i.x, label %bb.i, label %.body, !dbg !106809

bb.i:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.u)
          to label %.body unwind label %bb.j, !dbg !106810, !noalias !106771

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !106811, !noalias !106771
  unreachable, !dbg !106811

_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2y_14RuntimeManager17block_in_place_onNCNvNtCs2g09Ig8GZd6_13polars_stream7execute13execute_graphs0_0Es_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE00uEB3L_.exit.i: ; preds = %.noexc
  %i.z = extractvalue { i64, ptr } %i.v, 0, !dbg !106812
  %i.aa = extractvalue { i64, ptr } %i.v, 1, !dbg !106812 ; 2 uses
  %i.ab = trunc nuw i64 %i.z to i1, !dbg !106813
  %.not.i = icmp ne ptr %i.aa, null
  %or.cond.not.i = select i1 %i.ab, i1 %.not.i, i1 false, !dbg !106813, !prof !3854
  br i1 %or.cond.not.i, label %bb.k, label %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2s_14RuntimeManager17block_in_place_onNCNvNtCs2g09Ig8GZd6_13polars_stream7execute13execute_graphs0_0Es_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE00uEB3F_.exit, !dbg !106813, !prof !3854

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2y_14RuntimeManager17block_in_place_onNCNvNtCs2g09Ig8GZd6_13polars_stream7execute13execute_graphs0_0Es_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE00uEB3L_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !106814, !noalias !106772
  store ptr %i.aa, ptr %i.c, align 8, !dbg !106814, !noalias !106772
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !106815, !noalias !106772
  store ptr %i.c, ptr %i.b, align 8, !dbg !106815, !noalias !106772
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !106815
  store ptr @_RNvXs7_NtNtCsh8eZTKRCwoO_3std2io5errorNtB5_5ErrorNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !dbg !106815, !noalias !106772
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @20, ptr noundef nonnull %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #36
          to label %bb.m unwind label %bb.l, !dbg !106816

bb.l:                                             ; preds = %bb.k
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i = load ptr, ptr %i.c, align 8, !dbg !106817, !noalias !106772, !nonnull !3786, !noundef !3786
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream(ptr nonnull %.val.i) #35
          to label %bb.o unwind label %bb.n, !dbg !106817

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.p, %bb.o, %bb.l
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !106818
  unreachable, !dbg !106818

bb.o:                                             ; preds = %bb.l
  %i.ae = invoke noundef zeroext i1 @_RNvMNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.u)
          to label %.noexc.i unwind label %bb.n, !dbg !106819

.noexc.i:                                         ; preds = %bb.o
  br i1 %i.ae, label %bb.p, label %.body, !dbg !106820

bb.p:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.u)
          to label %.body unwind label %bb.n, !dbg !106821

bb.q:                                             ; preds = %bb.g
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !106822

.body:                                            ; preds = %.noexc.i.i, %bb.i, %.noexc.i, %bb.p, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.q ], [ %i.w, %.noexc.i.i ], [ %i.w, %bb.i ], [ %i.ac, %.noexc.i ], [ %i.ac, %bb.p ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(16) %i.d) #35
          to label %.thread unwind label %bb.v, !dbg !106822

_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2s_14RuntimeManager17block_in_place_onNCNvNtCs2g09Ig8GZd6_13polars_stream7execute13execute_graphs0_0Es_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE00uEB3F_.exit: ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2y_14RuntimeManager17block_in_place_onNCNvNtCs2g09Ig8GZd6_13polars_stream7execute13execute_graphs0_0Es_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE00uEB3L_.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !106774), !dbg !106822
  call void @llvm.experimental.noalias.scope.decl(metadata !106775), !dbg !106823
  %i.ag = load i64, ptr %i.d, align 8, !dbg !106824, !range !3814, !alias.scope !106776, !noundef !3786
  %i.ah = icmp eq i64 %i.ag, 0, !dbg !106824
  br i1 %i.ah, label %bb.r, label %bb.t, !dbg !106824

bb.r:                                             ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2s_14RuntimeManager17block_in_place_onNCNvNtCs2g09Ig8GZd6_13polars_stream7execute13execute_graphs0_0Es_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE00uEB3F_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !106777), !dbg !106824
  call void @llvm.experimental.noalias.scope.decl(metadata !106778), !dbg !106825
  %i.ai = load ptr, ptr %i.i, align 8, !dbg !106826, !alias.scope !106779, !nonnull !3786, !noundef !3786
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !dbg !106827, !noalias !106779
  %i.ak = icmp eq i64 %i.aj, 1, !dbg !106828
  br i1 %i.ak, label %bb.s, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit, !dbg !106828

bb.s:                                             ; preds = %bb.r
  fence acquire, !dbg !106829
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #38, !dbg !106830
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit, !dbg !106830

bb.t:                                             ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2s_14RuntimeManager17block_in_place_onNCNvNtCs2g09Ig8GZd6_13polars_stream7execute13execute_graphs0_0Es_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE00uEB3F_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !106780), !dbg !106824
  call void @llvm.experimental.noalias.scope.decl(metadata !106781), !dbg !106831
  %i.al = load ptr, ptr %i.i, align 8, !dbg !106832, !alias.scope !106782, !nonnull !3786, !noundef !3786
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !dbg !106833, !noalias !106782
  %i.an = icmp eq i64 %i.am, 1, !dbg !106834
  br i1 %i.an, label %bb.u, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit, !dbg !106834

bb.u:                                             ; preds = %bb.t
  fence acquire, !dbg !106835
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #38, !dbg !106836
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit, !dbg !106836

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !106822
  ret ptr %i.u, !dbg !106837

bb.v:                                             ; preds = %bb.x, %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !106838
  unreachable, !dbg !106838

.thread:                                          ; preds = %bb.w, %bb.x, %.body
  %.pn9 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.w ], [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.x ]
  resume { ptr, i32 } %.pn9, !dbg !106838

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = atomicrmw sub ptr %0, i64 1 release, align 8, !dbg !106839, !noalias !106783
  %i.aq = icmp eq i64 %i.ap, 1, !dbg !106840
  br i1 %i.aq, label %bb.x, label %.thread, !dbg !106840

bb.x:                                             ; preds = %bb.w
  fence acquire, !dbg !106841
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler12multi_thread6worker6WorkerE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #38
          to label %.thread unwind label %bb.v, !dbg !106842
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4pool14spawn_blockingNCNCINvNtNtNtB6_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2b_14RuntimeManager17block_in_place_onNCNvNtCs2g09Ig8GZd6_13polars_stream7execute13execute_graphs_0Es_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE00uEB3o_(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !106843 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !106944
  %i.f = invoke { i64, ptr } @_RNvMNtNtCskmDBXs7hs3c_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w, !dbg !106945 ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { i64, ptr } %i.f, 0, !dbg !106945 ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.f, 1, !dbg !106945 ; 4 uses
  store i64 %i.g, ptr %i.d, align 8, !dbg !106945
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !106945 ; 5 uses
  store ptr %i.h, ptr %i.i, align 8, !dbg !106945
  %i.j = trunc nuw i64 %i.g to i1, !dbg !106946   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ], !dbg !106947
  %. = select i1 %i.j, i64 480, i64 712, !dbg !106948
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %., !dbg !106949
  br label %bb.c, !dbg !106950

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.l = atomicrmw add ptr @_RNvNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !dbg !106951, !noalias !106930 ; 2 uses
  %.not.i.i = icmp eq i64 %i.l, 0, !dbg !106952
  br i1 %.not.i.i, label %bb.c, label %bb.d, !dbg !106953

bb.d:                                             ; preds = %bb.c
  %.sroa.01.0.v.i.i.i = select i1 %i.j, i64 504, i64 512, !dbg !106954
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v.i.i.i, !dbg !106954 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16, !dbg !106955
  %i.n = load ptr, ptr %i.m, align 8, !dbg !106956, !noalias !106930, !noundef !3786 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.n, null, !dbg !106956
  br i1 %.not.i.i.i, label %bb.g, label %bb.e, !dbg !106957

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24, !dbg !106956
  %i.p = load ptr, ptr %i.o, align 8, !dbg !106958, !noalias !106930, !nonnull !3786, !align !3839, !noundef !3786
  %i.q = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !dbg !106959, !noalias !106930
  %i.r = icmp slt i64 %i.q, 0, !dbg !106960
  br i1 %i.r, label %bb.f, label %bb.g, !dbg !106960

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.trap(), !dbg !106961
  unreachable, !dbg !106961

bb.g:                                             ; preds = %bb.e, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ undef, %bb.d ], [ %i.p, %bb.e ], !dbg !106962
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !106963, !noalias !106930
  invoke void @_RINvNtNtCskmDBXs7hs3c_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvNtNtNtB4_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2v_14RuntimeManager17block_in_place_onNCNvNtCs2g09Ig8GZd6_13polars_stream7execute13execute_graphs_0Es_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE00ENtNtBR_8schedule16BlockingScheduleEB3I_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull %0, ptr noundef %i.n, ptr %.sroa.5.0.i.i.i, i64 noundef %i.l)
          to label %.noexc unwind label %bb.q, !dbg !106963

.noexc:                                           ; preds = %bb.g
  %i.s = load ptr, ptr %i.a, align 8, !dbg !106964, !noalias !106930, !nonnull !3786, !noundef !3786
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !106965
  %i.u = load ptr, ptr %i.t, align 8, !dbg !106965, !noalias !106930, !nonnull !3786, !noundef !3786 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !106966, !noalias !106930
  %i.v = invoke { i64, ptr } @_RNvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k, ptr noundef nonnull %i.s, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d)
          to label %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2y_14RuntimeManager17block_in_place_onNCNvNtCs2g09Ig8GZd6_13polars_stream7execute13execute_graphs_0Es_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE00uEB3L_.exit.i unwind label %bb.h, !dbg !106967, !noalias !106931 ; 2 uses

bb.h:                                             ; preds = %.noexc
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = invoke noundef zeroext i1 @_RNvMNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.u)
          to label %.noexc.i.i unwind label %bb.j, !dbg !106968, !noalias !106931

.noexc.i.i:                                       ; preds = %bb.h
  br i1 %i.x, label %bb.i, label %.body, !dbg !106969

bb.i:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.u)
          to label %.body unwind label %bb.j, !dbg !106970, !noalias !106931

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !106971, !noalias !106931
  unreachable, !dbg !106971

_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2y_14RuntimeManager17block_in_place_onNCNvNtCs2g09Ig8GZd6_13polars_stream7execute13execute_graphs_0Es_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE00uEB3L_.exit.i: ; preds = %.noexc
  %i.z = extractvalue { i64, ptr } %i.v, 0, !dbg !106972
  %i.aa = extractvalue { i64, ptr } %i.v, 1, !dbg !106972 ; 2 uses
  %i.ab = trunc nuw i64 %i.z to i1, !dbg !106973
  %.not.i = icmp ne ptr %i.aa, null
  %or.cond.not.i = select i1 %i.ab, i1 %.not.i, i1 false, !dbg !106973, !prof !3854
  br i1 %or.cond.not.i, label %bb.k, label %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2s_14RuntimeManager17block_in_place_onNCNvNtCs2g09Ig8GZd6_13polars_stream7execute13execute_graphs_0Es_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE00uEB3F_.exit, !dbg !106973, !prof !3854

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2y_14RuntimeManager17block_in_place_onNCNvNtCs2g09Ig8GZd6_13polars_stream7execute13execute_graphs_0Es_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE00uEB3L_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !106974, !noalias !106932
  store ptr %i.aa, ptr %i.c, align 8, !dbg !106974, !noalias !106932
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !106975, !noalias !106932
  store ptr %i.c, ptr %i.b, align 8, !dbg !106975, !noalias !106932
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !106975
  store ptr @_RNvXs7_NtNtCsh8eZTKRCwoO_3std2io5errorNtB5_5ErrorNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !dbg !106975, !noalias !106932
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @20, ptr noundef nonnull %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #36
          to label %bb.m unwind label %bb.l, !dbg !106976

bb.l:                                             ; preds = %bb.k
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i = load ptr, ptr %i.c, align 8, !dbg !106977, !noalias !106932, !nonnull !3786, !noundef !3786
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream(ptr nonnull %.val.i) #35
          to label %bb.o unwind label %bb.n, !dbg !106977

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.p, %bb.o, %bb.l
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !106978
  unreachable, !dbg !106978

bb.o:                                             ; preds = %bb.l
  %i.ae = invoke noundef zeroext i1 @_RNvMNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.u)
          to label %.noexc.i unwind label %bb.n, !dbg !106979

.noexc.i:                                         ; preds = %bb.o
  br i1 %i.ae, label %bb.p, label %.body, !dbg !106980

bb.p:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.u)
          to label %.body unwind label %bb.n, !dbg !106981

bb.q:                                             ; preds = %bb.g
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !106982

.body:                                            ; preds = %.noexc.i.i, %bb.i, %.noexc.i, %bb.p, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.q ], [ %i.w, %.noexc.i.i ], [ %i.w, %bb.i ], [ %i.ac, %.noexc.i ], [ %i.ac, %bb.p ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(16) %i.d) #35
          to label %.thread unwind label %bb.v, !dbg !106982

_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2s_14RuntimeManager17block_in_place_onNCNvNtCs2g09Ig8GZd6_13polars_stream7execute13execute_graphs_0Es_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE00uEB3F_.exit: ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2y_14RuntimeManager17block_in_place_onNCNvNtCs2g09Ig8GZd6_13polars_stream7execute13execute_graphs_0Es_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE00uEB3L_.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !106934), !dbg !106982
  call void @llvm.experimental.noalias.scope.decl(metadata !106935), !dbg !106983
  %i.ag = load i64, ptr %i.d, align 8, !dbg !106984, !range !3814, !alias.scope !106936, !noundef !3786
  %i.ah = icmp eq i64 %i.ag, 0, !dbg !106984
  br i1 %i.ah, label %bb.r, label %bb.t, !dbg !106984

bb.r:                                             ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2s_14RuntimeManager17block_in_place_onNCNvNtCs2g09Ig8GZd6_13polars_stream7execute13execute_graphs_0Es_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE00uEB3F_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !106937), !dbg !106984
  call void @llvm.experimental.noalias.scope.decl(metadata !106938), !dbg !106985
  %i.ai = load ptr, ptr %i.i, align 8, !dbg !106986, !alias.scope !106939, !nonnull !3786, !noundef !3786
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !dbg !106987, !noalias !106939
  %i.ak = icmp eq i64 %i.aj, 1, !dbg !106988
  br i1 %i.ak, label %bb.s, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit, !dbg !106988

bb.s:                                             ; preds = %bb.r
  fence acquire, !dbg !106989
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #38, !dbg !106990
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit, !dbg !106990

bb.t:                                             ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2s_14RuntimeManager17block_in_place_onNCNvNtCs2g09Ig8GZd6_13polars_stream7execute13execute_graphs_0Es_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE00uEB3F_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !106940), !dbg !106984
  call void @llvm.experimental.noalias.scope.decl(metadata !106941), !dbg !106991
  %i.al = load ptr, ptr %i.i, align 8, !dbg !106992, !alias.scope !106942, !nonnull !3786, !noundef !3786
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !dbg !106993, !noalias !106942
  %i.an = icmp eq i64 %i.am, 1, !dbg !106994
  br i1 %i.an, label %bb.u, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit, !dbg !106994

bb.u:                                             ; preds = %bb.t
  fence acquire, !dbg !106995
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #38, !dbg !106996
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit, !dbg !106996

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !106982
  ret ptr %i.u, !dbg !106997

bb.v:                                             ; preds = %bb.x, %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !106998
  unreachable, !dbg !106998

.thread:                                          ; preds = %bb.w, %bb.x, %.body
  %.pn9 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.w ], [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.x ]
  resume { ptr, i32 } %.pn9, !dbg !106998

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = atomicrmw sub ptr %0, i64 1 release, align 8, !dbg !106999, !noalias !106943
  %i.aq = icmp eq i64 %i.ap, 1, !dbg !107000
  br i1 %i.aq, label %bb.x, label %.thread, !dbg !107000

bb.x:                                             ; preds = %bb.w
  fence acquire, !dbg !107001
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler12multi_thread6worker6WorkerE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #38
          to label %.thread unwind label %bb.v, !dbg !107002
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4pool14spawn_blockingNCNCINvNtNtNtB6_9scheduler12multi_thread6worker14block_in_placeNCNCNvMs_NtNtNtCslpwjCj2YNBy_9polars_io5utils4file14async_writableNtB2e_13AsyncWritable5close00INtNtCscgRAwXFJnXP_4core6result6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEE00uECs2g09Ig8GZd6_13polars_stream(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !107003 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !107104
  %i.f = invoke { i64, ptr } @_RNvMNtNtCskmDBXs7hs3c_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w, !dbg !107105 ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { i64, ptr } %i.f, 0, !dbg !107105 ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.f, 1, !dbg !107105 ; 4 uses
  store i64 %i.g, ptr %i.d, align 8, !dbg !107105
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !107105 ; 5 uses
  store ptr %i.h, ptr %i.i, align 8, !dbg !107105
  %i.j = trunc nuw i64 %i.g to i1, !dbg !107106   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ], !dbg !107107
  %. = select i1 %i.j, i64 480, i64 712, !dbg !107108
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %., !dbg !107109
  br label %bb.c, !dbg !107110

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.l = atomicrmw add ptr @_RNvNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !dbg !107111, !noalias !107090 ; 2 uses
  %.not.i.i = icmp eq i64 %i.l, 0, !dbg !107112
  br i1 %.not.i.i, label %bb.c, label %bb.d, !dbg !107113

bb.d:                                             ; preds = %bb.c
  %.sroa.01.0.v.i.i.i = select i1 %i.j, i64 504, i64 512, !dbg !107114
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v.i.i.i, !dbg !107114 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16, !dbg !107115
  %i.n = load ptr, ptr %i.m, align 8, !dbg !107116, !noalias !107090, !noundef !3786 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.n, null, !dbg !107116
  br i1 %.not.i.i.i, label %bb.g, label %bb.e, !dbg !107117

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24, !dbg !107116
  %i.p = load ptr, ptr %i.o, align 8, !dbg !107118, !noalias !107090, !nonnull !3786, !align !3839, !noundef !3786
  %i.q = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !dbg !107119, !noalias !107090
  %i.r = icmp slt i64 %i.q, 0, !dbg !107120
  br i1 %i.r, label %bb.f, label %bb.g, !dbg !107120

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.trap(), !dbg !107121
  unreachable, !dbg !107121

bb.g:                                             ; preds = %bb.e, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ undef, %bb.d ], [ %i.p, %bb.e ], !dbg !107122
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !107123, !noalias !107090
  invoke void @_RINvNtNtCskmDBXs7hs3c_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvNtNtNtB4_9scheduler12multi_thread6worker14block_in_placeNCNCNvMs_NtNtNtCslpwjCj2YNBy_9polars_io5utils4file14async_writableNtB2y_13AsyncWritable5close00INtNtCscgRAwXFJnXP_4core6result6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEE00ENtNtBR_8schedule16BlockingScheduleECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull %0, ptr noundef %i.n, ptr %.sroa.5.0.i.i.i, i64 noundef %i.l)
          to label %.noexc unwind label %bb.q, !dbg !107123

.noexc:                                           ; preds = %bb.g
  %i.s = load ptr, ptr %i.a, align 8, !dbg !107124, !noalias !107090, !nonnull !3786, !noundef !3786
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !107125
  %i.u = load ptr, ptr %i.t, align 8, !dbg !107125, !noalias !107090, !nonnull !3786, !noundef !3786 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !107126, !noalias !107090
  %i.v = invoke { i64, ptr } @_RNvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k, ptr noundef nonnull %i.s, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d)
          to label %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCNCNvMs_NtNtNtCslpwjCj2YNBy_9polars_io5utils4file14async_writableNtB2B_13AsyncWritable5close00INtNtCscgRAwXFJnXP_4core6result6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEE00uECs2g09Ig8GZd6_13polars_stream.exit.i unwind label %bb.h, !dbg !107127, !noalias !107091 ; 2 uses

bb.h:                                             ; preds = %.noexc
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = invoke noundef zeroext i1 @_RNvMNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.u)
          to label %.noexc.i.i unwind label %bb.j, !dbg !107128, !noalias !107091

.noexc.i.i:                                       ; preds = %bb.h
  br i1 %i.x, label %bb.i, label %.body, !dbg !107129

bb.i:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.u)
          to label %.body unwind label %bb.j, !dbg !107130, !noalias !107091

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !107131, !noalias !107091
  unreachable, !dbg !107131

_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCNCNvMs_NtNtNtCslpwjCj2YNBy_9polars_io5utils4file14async_writableNtB2B_13AsyncWritable5close00INtNtCscgRAwXFJnXP_4core6result6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEE00uECs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %.noexc
  %i.z = extractvalue { i64, ptr } %i.v, 0, !dbg !107132
  %i.aa = extractvalue { i64, ptr } %i.v, 1, !dbg !107132 ; 2 uses
  %i.ab = trunc nuw i64 %i.z to i1, !dbg !107133
  %.not.i = icmp ne ptr %i.aa, null
  %or.cond.not.i = select i1 %i.ab, i1 %.not.i, i1 false, !dbg !107133, !prof !3854
  br i1 %or.cond.not.i, label %bb.k, label %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCNCNvMs_NtNtNtCslpwjCj2YNBy_9polars_io5utils4file14async_writableNtB2v_13AsyncWritable5close00INtNtCscgRAwXFJnXP_4core6result6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEE00uECs2g09Ig8GZd6_13polars_stream.exit, !dbg !107133, !prof !3854

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCNCNvMs_NtNtNtCslpwjCj2YNBy_9polars_io5utils4file14async_writableNtB2B_13AsyncWritable5close00INtNtCscgRAwXFJnXP_4core6result6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEE00uECs2g09Ig8GZd6_13polars_stream.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !107134, !noalias !107092
  store ptr %i.aa, ptr %i.c, align 8, !dbg !107134, !noalias !107092
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !107135, !noalias !107092
  store ptr %i.c, ptr %i.b, align 8, !dbg !107135, !noalias !107092
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !107135
  store ptr @_RNvXs7_NtNtCsh8eZTKRCwoO_3std2io5errorNtB5_5ErrorNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !dbg !107135, !noalias !107092
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @20, ptr noundef nonnull %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #36
          to label %bb.m unwind label %bb.l, !dbg !107136

bb.l:                                             ; preds = %bb.k
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i = load ptr, ptr %i.c, align 8, !dbg !107137, !noalias !107092, !nonnull !3786, !noundef !3786
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream(ptr nonnull %.val.i) #35
          to label %bb.o unwind label %bb.n, !dbg !107137

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.p, %bb.o, %bb.l
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !107138
  unreachable, !dbg !107138

bb.o:                                             ; preds = %bb.l
  %i.ae = invoke noundef zeroext i1 @_RNvMNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.u)
          to label %.noexc.i unwind label %bb.n, !dbg !107139

.noexc.i:                                         ; preds = %bb.o
  br i1 %i.ae, label %bb.p, label %.body, !dbg !107140

bb.p:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.u)
          to label %.body unwind label %bb.n, !dbg !107141

bb.q:                                             ; preds = %bb.g
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !107142

.body:                                            ; preds = %.noexc.i.i, %bb.i, %.noexc.i, %bb.p, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.q ], [ %i.w, %.noexc.i.i ], [ %i.w, %bb.i ], [ %i.ac, %.noexc.i ], [ %i.ac, %bb.p ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(16) %i.d) #35
          to label %.thread unwind label %bb.v, !dbg !107142

_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCNCNvMs_NtNtNtCslpwjCj2YNBy_9polars_io5utils4file14async_writableNtB2v_13AsyncWritable5close00INtNtCscgRAwXFJnXP_4core6result6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEE00uECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCNCNvMs_NtNtNtCslpwjCj2YNBy_9polars_io5utils4file14async_writableNtB2B_13AsyncWritable5close00INtNtCscgRAwXFJnXP_4core6result6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEE00uECs2g09Ig8GZd6_13polars_stream.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !107094), !dbg !107142
  call void @llvm.experimental.noalias.scope.decl(metadata !107095), !dbg !107143
  %i.ag = load i64, ptr %i.d, align 8, !dbg !107144, !range !3814, !alias.scope !107096, !noundef !3786
  %i.ah = icmp eq i64 %i.ag, 0, !dbg !107144
  br i1 %i.ah, label %bb.r, label %bb.t, !dbg !107144

bb.r:                                             ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCNCNvMs_NtNtNtCslpwjCj2YNBy_9polars_io5utils4file14async_writableNtB2v_13AsyncWritable5close00INtNtCscgRAwXFJnXP_4core6result6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEE00uECs2g09Ig8GZd6_13polars_stream.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !107097), !dbg !107144
  call void @llvm.experimental.noalias.scope.decl(metadata !107098), !dbg !107145
  %i.ai = load ptr, ptr %i.i, align 8, !dbg !107146, !alias.scope !107099, !nonnull !3786, !noundef !3786
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !dbg !107147, !noalias !107099
  %i.ak = icmp eq i64 %i.aj, 1, !dbg !107148
  br i1 %i.ak, label %bb.s, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit, !dbg !107148

bb.s:                                             ; preds = %bb.r
  fence acquire, !dbg !107149
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #38, !dbg !107150
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit, !dbg !107150

bb.t:                                             ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCNCNvMs_NtNtNtCslpwjCj2YNBy_9polars_io5utils4file14async_writableNtB2v_13AsyncWritable5close00INtNtCscgRAwXFJnXP_4core6result6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEE00uECs2g09Ig8GZd6_13polars_stream.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !107100), !dbg !107144
  call void @llvm.experimental.noalias.scope.decl(metadata !107101), !dbg !107151
  %i.al = load ptr, ptr %i.i, align 8, !dbg !107152, !alias.scope !107102, !nonnull !3786, !noundef !3786
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !dbg !107153, !noalias !107102
  %i.an = icmp eq i64 %i.am, 1, !dbg !107154
  br i1 %i.an, label %bb.u, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit, !dbg !107154

bb.u:                                             ; preds = %bb.t
  fence acquire, !dbg !107155
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #38, !dbg !107156
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit, !dbg !107156

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !107142
  ret ptr %i.u, !dbg !107157

bb.v:                                             ; preds = %bb.x, %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !107158
  unreachable, !dbg !107158

.thread:                                          ; preds = %bb.w, %bb.x, %.body
  %.pn9 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.w ], [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.x ]
  resume { ptr, i32 } %.pn9, !dbg !107158

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = atomicrmw sub ptr %0, i64 1 release, align 8, !dbg !107159, !noalias !107103
  %i.aq = icmp eq i64 %i.ap, 1, !dbg !107160
  br i1 %i.aq, label %bb.x, label %.thread, !dbg !107160

bb.x:                                             ; preds = %bb.w
  fence acquire, !dbg !107161
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler12multi_thread6worker6WorkerE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #38
          to label %.thread unwind label %bb.v, !dbg !107162
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4pool14spawn_blockingNCNCINvNtNtNtB6_9scheduler12multi_thread6worker14block_in_placeNCNCNvMs_NtNtNtCslpwjCj2YNBy_9polars_io5utils4file14async_writableNtB2e_13AsyncWritable8sync_all00INtNtCscgRAwXFJnXP_4core6result6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEE00uECs2g09Ig8GZd6_13polars_stream(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !107163 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !107264
  %i.f = invoke { i64, ptr } @_RNvMNtNtCskmDBXs7hs3c_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w, !dbg !107265 ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { i64, ptr } %i.f, 0, !dbg !107265 ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.f, 1, !dbg !107265 ; 4 uses
  store i64 %i.g, ptr %i.d, align 8, !dbg !107265
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !107265 ; 5 uses
  store ptr %i.h, ptr %i.i, align 8, !dbg !107265
  %i.j = trunc nuw i64 %i.g to i1, !dbg !107266   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ], !dbg !107267
  %. = select i1 %i.j, i64 480, i64 712, !dbg !107268
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %., !dbg !107269
  br label %bb.c, !dbg !107270

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.l = atomicrmw add ptr @_RNvNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !dbg !107271, !noalias !107250 ; 2 uses
  %.not.i.i = icmp eq i64 %i.l, 0, !dbg !107272
  br i1 %.not.i.i, label %bb.c, label %bb.d, !dbg !107273

bb.d:                                             ; preds = %bb.c
  %.sroa.01.0.v.i.i.i = select i1 %i.j, i64 504, i64 512, !dbg !107274
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v.i.i.i, !dbg !107274 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16, !dbg !107275
  %i.n = load ptr, ptr %i.m, align 8, !dbg !107276, !noalias !107250, !noundef !3786 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.n, null, !dbg !107276
  br i1 %.not.i.i.i, label %bb.g, label %bb.e, !dbg !107277

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24, !dbg !107276
  %i.p = load ptr, ptr %i.o, align 8, !dbg !107278, !noalias !107250, !nonnull !3786, !align !3839, !noundef !3786
  %i.q = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !dbg !107279, !noalias !107250
  %i.r = icmp slt i64 %i.q, 0, !dbg !107280
  br i1 %i.r, label %bb.f, label %bb.g, !dbg !107280

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.trap(), !dbg !107281
  unreachable, !dbg !107281

bb.g:                                             ; preds = %bb.e, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ undef, %bb.d ], [ %i.p, %bb.e ], !dbg !107282
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !107283, !noalias !107250
  invoke void @_RINvNtNtCskmDBXs7hs3c_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvNtNtNtB4_9scheduler12multi_thread6worker14block_in_placeNCNCNvMs_NtNtNtCslpwjCj2YNBy_9polars_io5utils4file14async_writableNtB2y_13AsyncWritable8sync_all00INtNtCscgRAwXFJnXP_4core6result6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEE00ENtNtBR_8schedule16BlockingScheduleECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull %0, ptr noundef %i.n, ptr %.sroa.5.0.i.i.i, i64 noundef %i.l)
          to label %.noexc unwind label %bb.q, !dbg !107283

.noexc:                                           ; preds = %bb.g
  %i.s = load ptr, ptr %i.a, align 8, !dbg !107284, !noalias !107250, !nonnull !3786, !noundef !3786
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !107285
  %i.u = load ptr, ptr %i.t, align 8, !dbg !107285, !noalias !107250, !nonnull !3786, !noundef !3786 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !107286, !noalias !107250
  %i.v = invoke { i64, ptr } @_RNvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k, ptr noundef nonnull %i.s, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d)
          to label %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCNCNvMs_NtNtNtCslpwjCj2YNBy_9polars_io5utils4file14async_writableNtB2B_13AsyncWritable8sync_all00INtNtCscgRAwXFJnXP_4core6result6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEE00uECs2g09Ig8GZd6_13polars_stream.exit.i unwind label %bb.h, !dbg !107287, !noalias !107251 ; 2 uses

bb.h:                                             ; preds = %.noexc
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = invoke noundef zeroext i1 @_RNvMNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.u)
          to label %.noexc.i.i unwind label %bb.j, !dbg !107288, !noalias !107251

.noexc.i.i:                                       ; preds = %bb.h
  br i1 %i.x, label %bb.i, label %.body, !dbg !107289

bb.i:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.u)
          to label %.body unwind label %bb.j, !dbg !107290, !noalias !107251

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !107291, !noalias !107251
  unreachable, !dbg !107291

_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCNCNvMs_NtNtNtCslpwjCj2YNBy_9polars_io5utils4file14async_writableNtB2B_13AsyncWritable8sync_all00INtNtCscgRAwXFJnXP_4core6result6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEE00uECs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %.noexc
  %i.z = extractvalue { i64, ptr } %i.v, 0, !dbg !107292
  %i.aa = extractvalue { i64, ptr } %i.v, 1, !dbg !107292 ; 2 uses
  %i.ab = trunc nuw i64 %i.z to i1, !dbg !107293
  %.not.i = icmp ne ptr %i.aa, null
  %or.cond.not.i = select i1 %i.ab, i1 %.not.i, i1 false, !dbg !107293, !prof !3854
  br i1 %or.cond.not.i, label %bb.k, label %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCNCNvMs_NtNtNtCslpwjCj2YNBy_9polars_io5utils4file14async_writableNtB2v_13AsyncWritable8sync_all00INtNtCscgRAwXFJnXP_4core6result6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEE00uECs2g09Ig8GZd6_13polars_stream.exit, !dbg !107293, !prof !3854

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCNCNvMs_NtNtNtCslpwjCj2YNBy_9polars_io5utils4file14async_writableNtB2B_13AsyncWritable8sync_all00INtNtCscgRAwXFJnXP_4core6result6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEE00uECs2g09Ig8GZd6_13polars_stream.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !107294, !noalias !107252
  store ptr %i.aa, ptr %i.c, align 8, !dbg !107294, !noalias !107252
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !107295, !noalias !107252
  store ptr %i.c, ptr %i.b, align 8, !dbg !107295, !noalias !107252
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !107295
  store ptr @_RNvXs7_NtNtCsh8eZTKRCwoO_3std2io5errorNtB5_5ErrorNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !dbg !107295, !noalias !107252
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @20, ptr noundef nonnull %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #36
          to label %bb.m unwind label %bb.l, !dbg !107296

bb.l:                                             ; preds = %bb.k
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i = load ptr, ptr %i.c, align 8, !dbg !107297, !noalias !107252, !nonnull !3786, !noundef !3786
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream(ptr nonnull %.val.i) #35
          to label %bb.o unwind label %bb.n, !dbg !107297

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.p, %bb.o, %bb.l
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !107298
  unreachable, !dbg !107298

bb.o:                                             ; preds = %bb.l
  %i.ae = invoke noundef zeroext i1 @_RNvMNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.u)
          to label %.noexc.i unwind label %bb.n, !dbg !107299

.noexc.i:                                         ; preds = %bb.o
  br i1 %i.ae, label %bb.p, label %.body, !dbg !107300

bb.p:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.u)
          to label %.body unwind label %bb.n, !dbg !107301

bb.q:                                             ; preds = %bb.g
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !107302

.body:                                            ; preds = %.noexc.i.i, %bb.i, %.noexc.i, %bb.p, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.q ], [ %i.w, %.noexc.i.i ], [ %i.w, %bb.i ], [ %i.ac, %.noexc.i ], [ %i.ac, %bb.p ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(16) %i.d) #35
          to label %.thread unwind label %bb.v, !dbg !107302

_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCNCNvMs_NtNtNtCslpwjCj2YNBy_9polars_io5utils4file14async_writableNtB2v_13AsyncWritable8sync_all00INtNtCscgRAwXFJnXP_4core6result6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEE00uECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCNCNvMs_NtNtNtCslpwjCj2YNBy_9polars_io5utils4file14async_writableNtB2B_13AsyncWritable8sync_all00INtNtCscgRAwXFJnXP_4core6result6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEE00uECs2g09Ig8GZd6_13polars_stream.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !107254), !dbg !107302
  call void @llvm.experimental.noalias.scope.decl(metadata !107255), !dbg !107303
  %i.ag = load i64, ptr %i.d, align 8, !dbg !107304, !range !3814, !alias.scope !107256, !noundef !3786
  %i.ah = icmp eq i64 %i.ag, 0, !dbg !107304
  br i1 %i.ah, label %bb.r, label %bb.t, !dbg !107304

bb.r:                                             ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCNCNvMs_NtNtNtCslpwjCj2YNBy_9polars_io5utils4file14async_writableNtB2v_13AsyncWritable8sync_all00INtNtCscgRAwXFJnXP_4core6result6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEE00uECs2g09Ig8GZd6_13polars_stream.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !107257), !dbg !107304
  call void @llvm.experimental.noalias.scope.decl(metadata !107258), !dbg !107305
  %i.ai = load ptr, ptr %i.i, align 8, !dbg !107306, !alias.scope !107259, !nonnull !3786, !noundef !3786
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !dbg !107307, !noalias !107259
  %i.ak = icmp eq i64 %i.aj, 1, !dbg !107308
  br i1 %i.ak, label %bb.s, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit, !dbg !107308

bb.s:                                             ; preds = %bb.r
  fence acquire, !dbg !107309
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #38, !dbg !107310
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit, !dbg !107310

bb.t:                                             ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCNCNvMs_NtNtNtCslpwjCj2YNBy_9polars_io5utils4file14async_writableNtB2v_13AsyncWritable8sync_all00INtNtCscgRAwXFJnXP_4core6result6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEE00uECs2g09Ig8GZd6_13polars_stream.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !107260), !dbg !107304
  call void @llvm.experimental.noalias.scope.decl(metadata !107261), !dbg !107311
  %i.al = load ptr, ptr %i.i, align 8, !dbg !107312, !alias.scope !107262, !nonnull !3786, !noundef !3786
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !dbg !107313, !noalias !107262
  %i.an = icmp eq i64 %i.am, 1, !dbg !107314
  br i1 %i.an, label %bb.u, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit, !dbg !107314

bb.u:                                             ; preds = %bb.t
  fence acquire, !dbg !107315
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #38, !dbg !107316
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit, !dbg !107316

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !107302
  ret ptr %i.u, !dbg !107317

bb.v:                                             ; preds = %bb.x, %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !107318
  unreachable, !dbg !107318

.thread:                                          ; preds = %bb.w, %bb.x, %.body
  %.pn9 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.w ], [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.x ]
  resume { ptr, i32 } %.pn9, !dbg !107318

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = atomicrmw sub ptr %0, i64 1 release, align 8, !dbg !107319, !noalias !107263
  %i.aq = icmp eq i64 %i.ap, 1, !dbg !107320
  br i1 %i.aq, label %bb.x, label %.thread, !dbg !107320

bb.x:                                             ; preds = %bb.w
  fence acquire, !dbg !107321
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler12multi_thread6worker6WorkerE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #38
          to label %.thread unwind label %bb.v, !dbg !107322
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4pool14spawn_blockingNCNCINvNtNtNtB6_9scheduler12multi_thread6worker14block_in_placeNCNCNvMs_NtNtNtCslpwjCj2YNBy_9polars_io5utils4file14async_writableNtB2e_13AsyncWritable9sync_data00INtNtCscgRAwXFJnXP_4core6result6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEE00uECs2g09Ig8GZd6_13polars_stream(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !107323 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !107424
  %i.f = invoke { i64, ptr } @_RNvMNtNtCskmDBXs7hs3c_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w, !dbg !107425 ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { i64, ptr } %i.f, 0, !dbg !107425 ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.f, 1, !dbg !107425 ; 4 uses
  store i64 %i.g, ptr %i.d, align 8, !dbg !107425
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !107425 ; 5 uses
  store ptr %i.h, ptr %i.i, align 8, !dbg !107425
  %i.j = trunc nuw i64 %i.g to i1, !dbg !107426   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ], !dbg !107427
  %. = select i1 %i.j, i64 480, i64 712, !dbg !107428
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %., !dbg !107429
  br label %bb.c, !dbg !107430

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.l = atomicrmw add ptr @_RNvNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !dbg !107431, !noalias !107410 ; 2 uses
  %.not.i.i = icmp eq i64 %i.l, 0, !dbg !107432
  br i1 %.not.i.i, label %bb.c, label %bb.d, !dbg !107433

bb.d:                                             ; preds = %bb.c
  %.sroa.01.0.v.i.i.i = select i1 %i.j, i64 504, i64 512, !dbg !107434
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v.i.i.i, !dbg !107434 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16, !dbg !107435
  %i.n = load ptr, ptr %i.m, align 8, !dbg !107436, !noalias !107410, !noundef !3786 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.n, null, !dbg !107436
  br i1 %.not.i.i.i, label %bb.g, label %bb.e, !dbg !107437

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24, !dbg !107436
  %i.p = load ptr, ptr %i.o, align 8, !dbg !107438, !noalias !107410, !nonnull !3786, !align !3839, !noundef !3786
  %i.q = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !dbg !107439, !noalias !107410
  %i.r = icmp slt i64 %i.q, 0, !dbg !107440
  br i1 %i.r, label %bb.f, label %bb.g, !dbg !107440

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.trap(), !dbg !107441
  unreachable, !dbg !107441

bb.g:                                             ; preds = %bb.e, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ undef, %bb.d ], [ %i.p, %bb.e ], !dbg !107442
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !107443, !noalias !107410
  invoke void @_RINvNtNtCskmDBXs7hs3c_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvNtNtNtB4_9scheduler12multi_thread6worker14block_in_placeNCNCNvMs_NtNtNtCslpwjCj2YNBy_9polars_io5utils4file14async_writableNtB2y_13AsyncWritable9sync_data00INtNtCscgRAwXFJnXP_4core6result6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEE00ENtNtBR_8schedule16BlockingScheduleECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull %0, ptr noundef %i.n, ptr %.sroa.5.0.i.i.i, i64 noundef %i.l)
          to label %.noexc unwind label %bb.q, !dbg !107443

.noexc:                                           ; preds = %bb.g
  %i.s = load ptr, ptr %i.a, align 8, !dbg !107444, !noalias !107410, !nonnull !3786, !noundef !3786
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !107445
  %i.u = load ptr, ptr %i.t, align 8, !dbg !107445, !noalias !107410, !nonnull !3786, !noundef !3786 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !107446, !noalias !107410
  %i.v = invoke { i64, ptr } @_RNvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k, ptr noundef nonnull %i.s, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d)
          to label %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCNCNvMs_NtNtNtCslpwjCj2YNBy_9polars_io5utils4file14async_writableNtB2B_13AsyncWritable9sync_data00INtNtCscgRAwXFJnXP_4core6result6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEE00uECs2g09Ig8GZd6_13polars_stream.exit.i unwind label %bb.h, !dbg !107447, !noalias !107411 ; 2 uses

bb.h:                                             ; preds = %.noexc
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = invoke noundef zeroext i1 @_RNvMNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.u)
          to label %.noexc.i.i unwind label %bb.j, !dbg !107448, !noalias !107411

.noexc.i.i:                                       ; preds = %bb.h
  br i1 %i.x, label %bb.i, label %.body, !dbg !107449

bb.i:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.u)
          to label %.body unwind label %bb.j, !dbg !107450, !noalias !107411

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !107451, !noalias !107411
  unreachable, !dbg !107451

_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCNCNvMs_NtNtNtCslpwjCj2YNBy_9polars_io5utils4file14async_writableNtB2B_13AsyncWritable9sync_data00INtNtCscgRAwXFJnXP_4core6result6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEE00uECs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %.noexc
  %i.z = extractvalue { i64, ptr } %i.v, 0, !dbg !107452
  %i.aa = extractvalue { i64, ptr } %i.v, 1, !dbg !107452 ; 2 uses
  %i.ab = trunc nuw i64 %i.z to i1, !dbg !107453
  %.not.i = icmp ne ptr %i.aa, null
  %or.cond.not.i = select i1 %i.ab, i1 %.not.i, i1 false, !dbg !107453, !prof !3854
  br i1 %or.cond.not.i, label %bb.k, label %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCNCNvMs_NtNtNtCslpwjCj2YNBy_9polars_io5utils4file14async_writableNtB2v_13AsyncWritable9sync_data00INtNtCscgRAwXFJnXP_4core6result6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEE00uECs2g09Ig8GZd6_13polars_stream.exit, !dbg !107453, !prof !3854

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCNCNvMs_NtNtNtCslpwjCj2YNBy_9polars_io5utils4file14async_writableNtB2B_13AsyncWritable9sync_data00INtNtCscgRAwXFJnXP_4core6result6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEE00uECs2g09Ig8GZd6_13polars_stream.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !107454, !noalias !107412
  store ptr %i.aa, ptr %i.c, align 8, !dbg !107454, !noalias !107412
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !107455, !noalias !107412
  store ptr %i.c, ptr %i.b, align 8, !dbg !107455, !noalias !107412
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !107455
  store ptr @_RNvXs7_NtNtCsh8eZTKRCwoO_3std2io5errorNtB5_5ErrorNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !dbg !107455, !noalias !107412
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @20, ptr noundef nonnull %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #36
          to label %bb.m unwind label %bb.l, !dbg !107456

bb.l:                                             ; preds = %bb.k
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i = load ptr, ptr %i.c, align 8, !dbg !107457, !noalias !107412, !nonnull !3786, !noundef !3786
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream(ptr nonnull %.val.i) #35
          to label %bb.o unwind label %bb.n, !dbg !107457

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.p, %bb.o, %bb.l
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !107458
  unreachable, !dbg !107458

bb.o:                                             ; preds = %bb.l
  %i.ae = invoke noundef zeroext i1 @_RNvMNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.u)
          to label %.noexc.i unwind label %bb.n, !dbg !107459

.noexc.i:                                         ; preds = %bb.o
  br i1 %i.ae, label %bb.p, label %.body, !dbg !107460

bb.p:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.u)
          to label %.body unwind label %bb.n, !dbg !107461

bb.q:                                             ; preds = %bb.g
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !107462

.body:                                            ; preds = %.noexc.i.i, %bb.i, %.noexc.i, %bb.p, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.q ], [ %i.w, %.noexc.i.i ], [ %i.w, %bb.i ], [ %i.ac, %.noexc.i ], [ %i.ac, %bb.p ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(16) %i.d) #35
          to label %.thread unwind label %bb.v, !dbg !107462

_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCNCNvMs_NtNtNtCslpwjCj2YNBy_9polars_io5utils4file14async_writableNtB2v_13AsyncWritable9sync_data00INtNtCscgRAwXFJnXP_4core6result6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEE00uECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCNCNvMs_NtNtNtCslpwjCj2YNBy_9polars_io5utils4file14async_writableNtB2B_13AsyncWritable9sync_data00INtNtCscgRAwXFJnXP_4core6result6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEE00uECs2g09Ig8GZd6_13polars_stream.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !107414), !dbg !107462
  call void @llvm.experimental.noalias.scope.decl(metadata !107415), !dbg !107463
  %i.ag = load i64, ptr %i.d, align 8, !dbg !107464, !range !3814, !alias.scope !107416, !noundef !3786
  %i.ah = icmp eq i64 %i.ag, 0, !dbg !107464
  br i1 %i.ah, label %bb.r, label %bb.t, !dbg !107464

bb.r:                                             ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCNCNvMs_NtNtNtCslpwjCj2YNBy_9polars_io5utils4file14async_writableNtB2v_13AsyncWritable9sync_data00INtNtCscgRAwXFJnXP_4core6result6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEE00uECs2g09Ig8GZd6_13polars_stream.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !107417), !dbg !107464
  call void @llvm.experimental.noalias.scope.decl(metadata !107418), !dbg !107465
  %i.ai = load ptr, ptr %i.i, align 8, !dbg !107466, !alias.scope !107419, !nonnull !3786, !noundef !3786
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !dbg !107467, !noalias !107419
  %i.ak = icmp eq i64 %i.aj, 1, !dbg !107468
  br i1 %i.ak, label %bb.s, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit, !dbg !107468

bb.s:                                             ; preds = %bb.r
  fence acquire, !dbg !107469
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #38, !dbg !107470
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit, !dbg !107470

bb.t:                                             ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCNCNvMs_NtNtNtCslpwjCj2YNBy_9polars_io5utils4file14async_writableNtB2v_13AsyncWritable9sync_data00INtNtCscgRAwXFJnXP_4core6result6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEE00uECs2g09Ig8GZd6_13polars_stream.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !107420), !dbg !107464
  call void @llvm.experimental.noalias.scope.decl(metadata !107421), !dbg !107471
  %i.al = load ptr, ptr %i.i, align 8, !dbg !107472, !alias.scope !107422, !nonnull !3786, !noundef !3786
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !dbg !107473, !noalias !107422
  %i.an = icmp eq i64 %i.am, 1, !dbg !107474
  br i1 %i.an, label %bb.u, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit, !dbg !107474

bb.u:                                             ; preds = %bb.t
  fence acquire, !dbg !107475
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #38, !dbg !107476
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit, !dbg !107476

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !107462
  ret ptr %i.u, !dbg !107477

bb.v:                                             ; preds = %bb.x, %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !107478
  unreachable, !dbg !107478

.thread:                                          ; preds = %bb.w, %bb.x, %.body
  %.pn9 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.w ], [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.x ]
  resume { ptr, i32 } %.pn9, !dbg !107478

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = atomicrmw sub ptr %0, i64 1 release, align 8, !dbg !107479, !noalias !107423
  %i.aq = icmp eq i64 %i.ap, 1, !dbg !107480
  br i1 %i.aq, label %bb.x, label %.thread, !dbg !107480

bb.x:                                             ; preds = %bb.w
  fence acquire, !dbg !107481
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler12multi_thread6worker6WorkerE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #38
          to label %.thread unwind label %bb.v, !dbg !107482
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4pool14spawn_blockingNCNCNvMNtNtB8_2fs4fileNtB1b_4File8sync_all00INtNtCscgRAwXFJnXP_4core6result6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECs2g09Ig8GZd6_13polars_stream(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !107483 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !107584
  %i.f = invoke { i64, ptr } @_RNvMNtNtCskmDBXs7hs3c_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w, !dbg !107585 ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { i64, ptr } %i.f, 0, !dbg !107585 ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.f, 1, !dbg !107585 ; 4 uses
  store i64 %i.g, ptr %i.d, align 8, !dbg !107585
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !107585 ; 5 uses
  store ptr %i.h, ptr %i.i, align 8, !dbg !107585
  %i.j = trunc nuw i64 %i.g to i1, !dbg !107586   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ], !dbg !107587
  %. = select i1 %i.j, i64 480, i64 712, !dbg !107588
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %., !dbg !107589
  br label %bb.c, !dbg !107590

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.l = atomicrmw add ptr @_RNvNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !dbg !107591, !noalias !107570 ; 2 uses
  %.not.i.i = icmp eq i64 %i.l, 0, !dbg !107592
  br i1 %.not.i.i, label %bb.c, label %bb.d, !dbg !107593

bb.d:                                             ; preds = %bb.c
  %.sroa.01.0.v.i.i.i = select i1 %i.j, i64 504, i64 512, !dbg !107594
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v.i.i.i, !dbg !107594 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16, !dbg !107595
  %i.n = load ptr, ptr %i.m, align 8, !dbg !107596, !noalias !107570, !noundef !3786 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.n, null, !dbg !107596
  br i1 %.not.i.i.i, label %bb.g, label %bb.e, !dbg !107597

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24, !dbg !107596
  %i.p = load ptr, ptr %i.o, align 8, !dbg !107598, !noalias !107570, !nonnull !3786, !align !3839, !noundef !3786
  %i.q = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !dbg !107599, !noalias !107570
  %i.r = icmp slt i64 %i.q, 0, !dbg !107600
  br i1 %i.r, label %bb.f, label %bb.g, !dbg !107600

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.trap(), !dbg !107601
  unreachable, !dbg !107601

bb.g:                                             ; preds = %bb.e, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ undef, %bb.d ], [ %i.p, %bb.e ], !dbg !107602
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !107603, !noalias !107570
  invoke void @_RINvNtNtCskmDBXs7hs3c_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCNvMNtNtB6_2fs4fileNtB1v_4File8sync_all00ENtNtBR_8schedule16BlockingScheduleECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull %0, ptr noundef %i.n, ptr %.sroa.5.0.i.i.i, i64 noundef %i.l)
          to label %.noexc unwind label %bb.q, !dbg !107603

.noexc:                                           ; preds = %bb.g
  %i.s = load ptr, ptr %i.a, align 8, !dbg !107604, !noalias !107570, !nonnull !3786, !noundef !3786
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !107605
  %i.u = load ptr, ptr %i.t, align 8, !dbg !107605, !noalias !107570, !nonnull !3786, !noundef !3786 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !107606, !noalias !107570
  %i.v = invoke { i64, ptr } @_RNvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k, ptr noundef nonnull %i.s, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d)
          to label %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtBc_2fs4fileNtB1y_4File8sync_all00INtNtCscgRAwXFJnXP_4core6result6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECs2g09Ig8GZd6_13polars_stream.exit.i unwind label %bb.h, !dbg !107607, !noalias !107571 ; 2 uses

bb.h:                                             ; preds = %.noexc
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = invoke noundef zeroext i1 @_RNvMNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.u)
          to label %.noexc.i.i unwind label %bb.j, !dbg !107608, !noalias !107571

.noexc.i.i:                                       ; preds = %bb.h
  br i1 %i.x, label %bb.i, label %.body, !dbg !107609

bb.i:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.u)
          to label %.body unwind label %bb.j, !dbg !107610, !noalias !107571

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !107611, !noalias !107571
  unreachable, !dbg !107611

_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtBc_2fs4fileNtB1y_4File8sync_all00INtNtCscgRAwXFJnXP_4core6result6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %.noexc
  %i.z = extractvalue { i64, ptr } %i.v, 0, !dbg !107612
  %i.aa = extractvalue { i64, ptr } %i.v, 1, !dbg !107612 ; 2 uses
  %i.ab = trunc nuw i64 %i.z to i1, !dbg !107613
  %.not.i = icmp ne ptr %i.aa, null
  %or.cond.not.i = select i1 %i.ab, i1 %.not.i, i1 false, !dbg !107613, !prof !3854
  br i1 %or.cond.not.i, label %bb.k, label %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCNvMNtNtBc_2fs4fileNtB1s_4File8sync_all00INtNtCscgRAwXFJnXP_4core6result6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECs2g09Ig8GZd6_13polars_stream.exit, !dbg !107613, !prof !3854

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtBc_2fs4fileNtB1y_4File8sync_all00INtNtCscgRAwXFJnXP_4core6result6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECs2g09Ig8GZd6_13polars_stream.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !107614, !noalias !107572
  store ptr %i.aa, ptr %i.c, align 8, !dbg !107614, !noalias !107572
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !107615, !noalias !107572
  store ptr %i.c, ptr %i.b, align 8, !dbg !107615, !noalias !107572
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !107615
  store ptr @_RNvXs7_NtNtCsh8eZTKRCwoO_3std2io5errorNtB5_5ErrorNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !dbg !107615, !noalias !107572
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @20, ptr noundef nonnull %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #36
          to label %bb.m unwind label %bb.l, !dbg !107616

bb.l:                                             ; preds = %bb.k
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i = load ptr, ptr %i.c, align 8, !dbg !107617, !noalias !107572, !nonnull !3786, !noundef !3786
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream(ptr nonnull %.val.i) #35
          to label %bb.o unwind label %bb.n, !dbg !107617

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.p, %bb.o, %bb.l
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !107618
  unreachable, !dbg !107618

bb.o:                                             ; preds = %bb.l
  %i.ae = invoke noundef zeroext i1 @_RNvMNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.u)
          to label %.noexc.i unwind label %bb.n, !dbg !107619

.noexc.i:                                         ; preds = %bb.o
  br i1 %i.ae, label %bb.p, label %.body, !dbg !107620

bb.p:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.u)
          to label %.body unwind label %bb.n, !dbg !107621

bb.q:                                             ; preds = %bb.g
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !107622

.body:                                            ; preds = %.noexc.i.i, %bb.i, %.noexc.i, %bb.p, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.q ], [ %i.w, %.noexc.i.i ], [ %i.w, %bb.i ], [ %i.ac, %.noexc.i ], [ %i.ac, %bb.p ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(16) %i.d) #35
          to label %.thread unwind label %bb.v, !dbg !107622

_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCNvMNtNtBc_2fs4fileNtB1s_4File8sync_all00INtNtCscgRAwXFJnXP_4core6result6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtBc_2fs4fileNtB1y_4File8sync_all00INtNtCscgRAwXFJnXP_4core6result6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECs2g09Ig8GZd6_13polars_stream.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !107574), !dbg !107622
  call void @llvm.experimental.noalias.scope.decl(metadata !107575), !dbg !107623
  %i.ag = load i64, ptr %i.d, align 8, !dbg !107624, !range !3814, !alias.scope !107576, !noundef !3786
  %i.ah = icmp eq i64 %i.ag, 0, !dbg !107624
  br i1 %i.ah, label %bb.r, label %bb.t, !dbg !107624

bb.r:                                             ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCNvMNtNtBc_2fs4fileNtB1s_4File8sync_all00INtNtCscgRAwXFJnXP_4core6result6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECs2g09Ig8GZd6_13polars_stream.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !107577), !dbg !107624
  call void @llvm.experimental.noalias.scope.decl(metadata !107578), !dbg !107625
  %i.ai = load ptr, ptr %i.i, align 8, !dbg !107626, !alias.scope !107579, !nonnull !3786, !noundef !3786
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !dbg !107627, !noalias !107579
  %i.ak = icmp eq i64 %i.aj, 1, !dbg !107628
  br i1 %i.ak, label %bb.s, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit, !dbg !107628

bb.s:                                             ; preds = %bb.r
  fence acquire, !dbg !107629
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #38, !dbg !107630
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit, !dbg !107630

bb.t:                                             ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCNvMNtNtBc_2fs4fileNtB1s_4File8sync_all00INtNtCscgRAwXFJnXP_4core6result6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECs2g09Ig8GZd6_13polars_stream.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !107580), !dbg !107624
  call void @llvm.experimental.noalias.scope.decl(metadata !107581), !dbg !107631
  %i.al = load ptr, ptr %i.i, align 8, !dbg !107632, !alias.scope !107582, !nonnull !3786, !noundef !3786
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !dbg !107633, !noalias !107582
  %i.an = icmp eq i64 %i.am, 1, !dbg !107634
  br i1 %i.an, label %bb.u, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit, !dbg !107634

bb.u:                                             ; preds = %bb.t
  fence acquire, !dbg !107635
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #38, !dbg !107636
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit, !dbg !107636

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !107622
  ret ptr %i.u, !dbg !107637

bb.v:                                             ; preds = %bb.x, %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !107638
  unreachable, !dbg !107638

.thread:                                          ; preds = %bb.w, %bb.x, %.body
  %.pn9 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.w ], [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.x ]
  resume { ptr, i32 } %.pn9, !dbg !107638

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = atomicrmw sub ptr %0, i64 1 release, align 8, !dbg !107639, !noalias !107583
  %i.aq = icmp eq i64 %i.ap, 1, !dbg !107640
  br i1 %i.aq, label %bb.x, label %.thread, !dbg !107640

bb.x:                                             ; preds = %bb.w
  fence acquire, !dbg !107641
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtCsh8eZTKRCwoO_3std2fs4FileE9drop_slowCskmDBXs7hs3c_5tokio(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #38
          to label %.thread unwind label %bb.v, !dbg !107642
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4pool14spawn_blockingNCNCNvMNtNtB8_2fs4fileNtB1b_4File9sync_data00INtNtCscgRAwXFJnXP_4core6result6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECs2g09Ig8GZd6_13polars_stream(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !107643 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !107744
  %i.f = invoke { i64, ptr } @_RNvMNtNtCskmDBXs7hs3c_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w, !dbg !107745 ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { i64, ptr } %i.f, 0, !dbg !107745 ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.f, 1, !dbg !107745 ; 4 uses
  store i64 %i.g, ptr %i.d, align 8, !dbg !107745
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !107745 ; 5 uses
  store ptr %i.h, ptr %i.i, align 8, !dbg !107745
  %i.j = trunc nuw i64 %i.g to i1, !dbg !107746   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ], !dbg !107747
  %. = select i1 %i.j, i64 480, i64 712, !dbg !107748
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %., !dbg !107749
  br label %bb.c, !dbg !107750

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.l = atomicrmw add ptr @_RNvNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !dbg !107751, !noalias !107730 ; 2 uses
  %.not.i.i = icmp eq i64 %i.l, 0, !dbg !107752
  br i1 %.not.i.i, label %bb.c, label %bb.d, !dbg !107753

bb.d:                                             ; preds = %bb.c
  %.sroa.01.0.v.i.i.i = select i1 %i.j, i64 504, i64 512, !dbg !107754
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v.i.i.i, !dbg !107754 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16, !dbg !107755
  %i.n = load ptr, ptr %i.m, align 8, !dbg !107756, !noalias !107730, !noundef !3786 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.n, null, !dbg !107756
  br i1 %.not.i.i.i, label %bb.g, label %bb.e, !dbg !107757

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24, !dbg !107756
  %i.p = load ptr, ptr %i.o, align 8, !dbg !107758, !noalias !107730, !nonnull !3786, !align !3839, !noundef !3786
  %i.q = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !dbg !107759, !noalias !107730
  %i.r = icmp slt i64 %i.q, 0, !dbg !107760
  br i1 %i.r, label %bb.f, label %bb.g, !dbg !107760

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.trap(), !dbg !107761
  unreachable, !dbg !107761

bb.g:                                             ; preds = %bb.e, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ undef, %bb.d ], [ %i.p, %bb.e ], !dbg !107762
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !107763, !noalias !107730
  invoke void @_RINvNtNtCskmDBXs7hs3c_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCNvMNtNtB6_2fs4fileNtB1v_4File9sync_data00ENtNtBR_8schedule16BlockingScheduleECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull %0, ptr noundef %i.n, ptr %.sroa.5.0.i.i.i, i64 noundef %i.l)
          to label %.noexc unwind label %bb.q, !dbg !107763

.noexc:                                           ; preds = %bb.g
  %i.s = load ptr, ptr %i.a, align 8, !dbg !107764, !noalias !107730, !nonnull !3786, !noundef !3786
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !107765
  %i.u = load ptr, ptr %i.t, align 8, !dbg !107765, !noalias !107730, !nonnull !3786, !noundef !3786 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !107766, !noalias !107730
  %i.v = invoke { i64, ptr } @_RNvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k, ptr noundef nonnull %i.s, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d)
          to label %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtBc_2fs4fileNtB1y_4File9sync_data00INtNtCscgRAwXFJnXP_4core6result6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECs2g09Ig8GZd6_13polars_stream.exit.i unwind label %bb.h, !dbg !107767, !noalias !107731 ; 2 uses

bb.h:                                             ; preds = %.noexc
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = invoke noundef zeroext i1 @_RNvMNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.u)
          to label %.noexc.i.i unwind label %bb.j, !dbg !107768, !noalias !107731

.noexc.i.i:                                       ; preds = %bb.h
  br i1 %i.x, label %bb.i, label %.body, !dbg !107769

bb.i:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.u)
          to label %.body unwind label %bb.j, !dbg !107770, !noalias !107731

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !107771, !noalias !107731
  unreachable, !dbg !107771

_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtBc_2fs4fileNtB1y_4File9sync_data00INtNtCscgRAwXFJnXP_4core6result6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %.noexc
  %i.z = extractvalue { i64, ptr } %i.v, 0, !dbg !107772
  %i.aa = extractvalue { i64, ptr } %i.v, 1, !dbg !107772 ; 2 uses
  %i.ab = trunc nuw i64 %i.z to i1, !dbg !107773
  %.not.i = icmp ne ptr %i.aa, null
  %or.cond.not.i = select i1 %i.ab, i1 %.not.i, i1 false, !dbg !107773, !prof !3854
  br i1 %or.cond.not.i, label %bb.k, label %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCNvMNtNtBc_2fs4fileNtB1s_4File9sync_data00INtNtCscgRAwXFJnXP_4core6result6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECs2g09Ig8GZd6_13polars_stream.exit, !dbg !107773, !prof !3854

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtBc_2fs4fileNtB1y_4File9sync_data00INtNtCscgRAwXFJnXP_4core6result6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECs2g09Ig8GZd6_13polars_stream.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !107774, !noalias !107732
  store ptr %i.aa, ptr %i.c, align 8, !dbg !107774, !noalias !107732
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !107775, !noalias !107732
  store ptr %i.c, ptr %i.b, align 8, !dbg !107775, !noalias !107732
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !107775
  store ptr @_RNvXs7_NtNtCsh8eZTKRCwoO_3std2io5errorNtB5_5ErrorNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !dbg !107775, !noalias !107732
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @20, ptr noundef nonnull %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #36
          to label %bb.m unwind label %bb.l, !dbg !107776

bb.l:                                             ; preds = %bb.k
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i = load ptr, ptr %i.c, align 8, !dbg !107777, !noalias !107732, !nonnull !3786, !noundef !3786
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream(ptr nonnull %.val.i) #35
          to label %bb.o unwind label %bb.n, !dbg !107777

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.p, %bb.o, %bb.l
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !107778
  unreachable, !dbg !107778

bb.o:                                             ; preds = %bb.l
  %i.ae = invoke noundef zeroext i1 @_RNvMNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.u)
          to label %.noexc.i unwind label %bb.n, !dbg !107779

.noexc.i:                                         ; preds = %bb.o
  br i1 %i.ae, label %bb.p, label %.body, !dbg !107780

bb.p:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.u)
          to label %.body unwind label %bb.n, !dbg !107781

bb.q:                                             ; preds = %bb.g
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !107782

.body:                                            ; preds = %.noexc.i.i, %bb.i, %.noexc.i, %bb.p, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.q ], [ %i.w, %.noexc.i.i ], [ %i.w, %bb.i ], [ %i.ac, %.noexc.i ], [ %i.ac, %bb.p ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(16) %i.d) #35
          to label %.thread unwind label %bb.v, !dbg !107782

_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCNvMNtNtBc_2fs4fileNtB1s_4File9sync_data00INtNtCscgRAwXFJnXP_4core6result6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtBc_2fs4fileNtB1y_4File9sync_data00INtNtCscgRAwXFJnXP_4core6result6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECs2g09Ig8GZd6_13polars_stream.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !107734), !dbg !107782
  call void @llvm.experimental.noalias.scope.decl(metadata !107735), !dbg !107783
  %i.ag = load i64, ptr %i.d, align 8, !dbg !107784, !range !3814, !alias.scope !107736, !noundef !3786
  %i.ah = icmp eq i64 %i.ag, 0, !dbg !107784
  br i1 %i.ah, label %bb.r, label %bb.t, !dbg !107784

bb.r:                                             ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCNvMNtNtBc_2fs4fileNtB1s_4File9sync_data00INtNtCscgRAwXFJnXP_4core6result6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECs2g09Ig8GZd6_13polars_stream.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !107737), !dbg !107784
  call void @llvm.experimental.noalias.scope.decl(metadata !107738), !dbg !107785
  %i.ai = load ptr, ptr %i.i, align 8, !dbg !107786, !alias.scope !107739, !nonnull !3786, !noundef !3786
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !dbg !107787, !noalias !107739
  %i.ak = icmp eq i64 %i.aj, 1, !dbg !107788
  br i1 %i.ak, label %bb.s, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit, !dbg !107788

bb.s:                                             ; preds = %bb.r
  fence acquire, !dbg !107789
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #38, !dbg !107790
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit, !dbg !107790

bb.t:                                             ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCNvMNtNtBc_2fs4fileNtB1s_4File9sync_data00INtNtCscgRAwXFJnXP_4core6result6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECs2g09Ig8GZd6_13polars_stream.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !107740), !dbg !107784
  call void @llvm.experimental.noalias.scope.decl(metadata !107741), !dbg !107791
  %i.al = load ptr, ptr %i.i, align 8, !dbg !107792, !alias.scope !107742, !nonnull !3786, !noundef !3786
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !dbg !107793, !noalias !107742
  %i.an = icmp eq i64 %i.am, 1, !dbg !107794
  br i1 %i.an, label %bb.u, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit, !dbg !107794

bb.u:                                             ; preds = %bb.t
  fence acquire, !dbg !107795
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #38, !dbg !107796
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit, !dbg !107796

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !107782
  ret ptr %i.u, !dbg !107797

bb.v:                                             ; preds = %bb.x, %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !107798
  unreachable, !dbg !107798

.thread:                                          ; preds = %bb.w, %bb.x, %.body
  %.pn9 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.w ], [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.x ]
  resume { ptr, i32 } %.pn9, !dbg !107798

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = atomicrmw sub ptr %0, i64 1 release, align 8, !dbg !107799, !noalias !107743
  %i.aq = icmp eq i64 %i.ap, 1, !dbg !107800
  br i1 %i.aq, label %bb.x, label %.thread, !dbg !107800

bb.x:                                             ; preds = %bb.w
  fence acquire, !dbg !107801
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtCsh8eZTKRCwoO_3std2fs4FileE9drop_slowCskmDBXs7hs3c_5tokio(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #38
          to label %.thread unwind label %bb.v, !dbg !107802
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4pool14spawn_blockingNCNCNvNtNtB8_2fs5write20write_spawn_blocking00INtNtCscgRAwXFJnXP_4core6result6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !107803 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [56 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !107894
  %i.f = invoke { i64, ptr } @_RNvMNtNtCskmDBXs7hs3c_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w, !dbg !107895 ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { i64, ptr } %i.f, 0, !dbg !107895 ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.f, 1, !dbg !107895 ; 3 uses
  store i64 %i.g, ptr %i.e, align 8, !dbg !107895
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !107895 ; 5 uses
  store ptr %i.h, ptr %i.i, align 8, !dbg !107895
  br label %bb.c, !dbg !107896

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.j = atomicrmw add ptr @_RNvNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !dbg !107897, !noalias !107879 ; 2 uses
  %.not.i.i = icmp eq i64 %i.j, 0, !dbg !107898
  br i1 %.not.i.i, label %bb.c, label %bb.d, !dbg !107899

bb.d:                                             ; preds = %bb.c
  %i.k = trunc nuw i64 %i.g to i1, !dbg !107900   ; 2 uses
  %.sroa.01.0.v = select i1 %i.k, i64 480, i64 712, !dbg !107900
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v, !dbg !107900
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !107901, !noalias !107879
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false), !dbg !107901
  %.sroa.01.0.v.i.i.i = select i1 %i.k, i64 504, i64 512, !dbg !107902
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v.i.i.i, !dbg !107902 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16, !dbg !107903
  %i.m = load ptr, ptr %i.l, align 8, !dbg !107904, !noalias !107879, !noundef !3786 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.m, null, !dbg !107904
  br i1 %.not.i.i.i, label %bb.g, label %bb.e, !dbg !107905

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24, !dbg !107904
  %i.o = load ptr, ptr %i.n, align 8, !dbg !107906, !noalias !107879, !nonnull !3786, !align !3839, !noundef !3786
  %i.p = atomicrmw add ptr %i.m, i64 1 monotonic, align 8, !dbg !107907, !noalias !107879
  %i.q = icmp slt i64 %i.p, 0, !dbg !107908
  br i1 %i.q, label %bb.f, label %bb.g, !dbg !107908

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.trap(), !dbg !107909
  unreachable, !dbg !107909

bb.g:                                             ; preds = %bb.e, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ undef, %bb.d ], [ %i.o, %bb.e ], !dbg !107910
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !107911, !noalias !107879
  invoke void @_RINvNtNtCskmDBXs7hs3c_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCNvNtNtB6_2fs5write20write_spawn_blocking00ENtNtBR_8schedule16BlockingScheduleECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.b, ptr noundef %i.m, ptr %.sroa.5.0.i.i.i, i64 noundef %i.j)
          to label %.noexc unwind label %bb.q, !dbg !107911

.noexc:                                           ; preds = %bb.g
  %i.r = load ptr, ptr %i.a, align 8, !dbg !107912, !noalias !107879, !nonnull !3786, !noundef !3786
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !107913
  %i.t = load ptr, ptr %i.s, align 8, !dbg !107913, !noalias !107879, !nonnull !3786, !noundef !3786 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !107914, !noalias !107879
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !107915, !noalias !107879
  %i.u = invoke { i64, ptr } @_RNvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.r, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
          to label %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvNtNtBc_2fs5write20write_spawn_blocking00INtNtCscgRAwXFJnXP_4core6result6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECs2g09Ig8GZd6_13polars_stream.exit.i unwind label %bb.h, !dbg !107916, !noalias !107881 ; 2 uses

bb.h:                                             ; preds = %.noexc
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = invoke noundef zeroext i1 @_RNvMNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i.i unwind label %bb.j, !dbg !107917, !noalias !107881

.noexc.i.i:                                       ; preds = %bb.h
  br i1 %i.w, label %bb.i, label %.body, !dbg !107918

bb.i:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %.body unwind label %bb.j, !dbg !107919, !noalias !107881

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !107920, !noalias !107881
  unreachable, !dbg !107920

_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvNtNtBc_2fs5write20write_spawn_blocking00INtNtCscgRAwXFJnXP_4core6result6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %.noexc
  %i.y = extractvalue { i64, ptr } %i.u, 0, !dbg !107921
  %i.z = extractvalue { i64, ptr } %i.u, 1, !dbg !107921 ; 2 uses
  %i.aa = trunc nuw i64 %i.y to i1, !dbg !107922
  %.not.i = icmp ne ptr %i.z, null
  %or.cond.not.i = select i1 %i.aa, i1 %.not.i, i1 false, !dbg !107922, !prof !3854
  br i1 %or.cond.not.i, label %bb.k, label %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCNvNtNtBc_2fs5write20write_spawn_blocking00INtNtCscgRAwXFJnXP_4core6result6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECs2g09Ig8GZd6_13polars_stream.exit, !dbg !107922, !prof !3854

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvNtNtBc_2fs5write20write_spawn_blocking00INtNtCscgRAwXFJnXP_4core6result6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECs2g09Ig8GZd6_13polars_stream.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !107923, !noalias !107882
  store ptr %i.z, ptr %i.d, align 8, !dbg !107923, !noalias !107882
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !107924, !noalias !107882
  store ptr %i.d, ptr %i.c, align 8, !dbg !107924, !noalias !107882
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !107924
  store ptr @_RNvXs7_NtNtCsh8eZTKRCwoO_3std2io5errorNtB5_5ErrorNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !dbg !107924, !noalias !107882
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @20, ptr noundef nonnull %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #36
          to label %bb.m unwind label %bb.l, !dbg !107925, !noalias !107884

bb.l:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i = load ptr, ptr %i.d, align 8, !dbg !107926, !noalias !107882, !nonnull !3786, !noundef !3786
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2g09Ig8GZd6_13polars_stream(ptr nonnull %.val.i) #35
          to label %bb.o unwind label %bb.n, !dbg !107926, !noalias !107884

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.p, %bb.o, %bb.l
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !107927, !noalias !107884
  unreachable, !dbg !107927

bb.o:                                             ; preds = %bb.l
  %i.ad = invoke noundef zeroext i1 @_RNvMNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i unwind label %bb.n, !dbg !107928, !noalias !107884

.noexc.i:                                         ; preds = %bb.o
  br i1 %i.ad, label %bb.p, label %.body, !dbg !107929

bb.p:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %.body unwind label %bb.n, !dbg !107930, !noalias !107884

bb.q:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !107931

.body:                                            ; preds = %.noexc.i.i, %bb.i, %.noexc.i, %bb.p, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.q ], [ %i.v, %.noexc.i.i ], [ %i.v, %bb.i ], [ %i.ab, %.noexc.i ], [ %i.ab, %bb.p ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(16) %i.e) #35
          to label %.thread unwind label %bb.v, !dbg !107931

_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCNvNtNtBc_2fs5write20write_spawn_blocking00INtNtCscgRAwXFJnXP_4core6result6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvNtNtBc_2fs5write20write_spawn_blocking00INtNtCscgRAwXFJnXP_4core6result6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECs2g09Ig8GZd6_13polars_stream.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !107885), !dbg !107931
  call void @llvm.experimental.noalias.scope.decl(metadata !107886), !dbg !107932
  %i.af = load i64, ptr %i.e, align 8, !dbg !107933, !range !3814, !alias.scope !107887, !noundef !3786
  %i.ag = icmp eq i64 %i.af, 0, !dbg !107933
  br i1 %i.ag, label %bb.r, label %bb.t, !dbg !107933

bb.r:                                             ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCNvNtNtBc_2fs5write20write_spawn_blocking00INtNtCscgRAwXFJnXP_4core6result6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECs2g09Ig8GZd6_13polars_stream.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !107888), !dbg !107933
  call void @llvm.experimental.noalias.scope.decl(metadata !107889), !dbg !107934
  %i.ah = load ptr, ptr %i.i, align 8, !dbg !107935, !alias.scope !107890, !nonnull !3786, !noundef !3786
  %i.ai = atomicrmw sub ptr %i.ah, i64 1 release, align 8, !dbg !107936, !noalias !107890
  %i.aj = icmp eq i64 %i.ai, 1, !dbg !107937
  br i1 %i.aj, label %bb.s, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit, !dbg !107937

bb.s:                                             ; preds = %bb.r
  fence acquire, !dbg !107938
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #38, !dbg !107939
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit, !dbg !107939

bb.t:                                             ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCNvNtNtBc_2fs5write20write_spawn_blocking00INtNtCscgRAwXFJnXP_4core6result6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECs2g09Ig8GZd6_13polars_stream.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !107891), !dbg !107933
  call void @llvm.experimental.noalias.scope.decl(metadata !107892), !dbg !107940
  %i.ak = load ptr, ptr %i.i, align 8, !dbg !107941, !alias.scope !107893, !nonnull !3786, !noundef !3786
  %i.al = atomicrmw sub ptr %i.ak, i64 1 release, align 8, !dbg !107942, !noalias !107893
  %i.am = icmp eq i64 %i.al, 1, !dbg !107943
  br i1 %i.am, label %bb.u, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit, !dbg !107943

bb.u:                                             ; preds = %bb.t
  fence acquire, !dbg !107944
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #38, !dbg !107945
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit, !dbg !107945

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !107931
  ret ptr %i.t, !dbg !107946

bb.v:                                             ; preds = %bb.w, %.body
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !107947
  unreachable, !dbg !107947

.thread:                                          ; preds = %.body, %bb.w
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %.pn8, !dbg !107947

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCNCNvNtNtCskmDBXs7hs3c_5tokio2fs5write20write_spawn_blocking00ECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(56) %0) #35
          to label %.thread unwind label %bb.v, !dbg !107931
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common15read_dictionaryINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(40) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %3, ptr noalias noundef align 8 dereferenceable(40) %4, ptr noalias noundef align 8 dereferenceable(24) %5, i64 noundef %6, ptr noalias noundef align 8 dereferenceable(24) %7, i1 noundef zeroext %8) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !107948 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [96 x i8], align 16               ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [96 x i8], align 16               ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [96 x i8], align 16               ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [80 x i8], align 16               ; 10 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.097 = alloca [80 x i8], align 8          ; 3 uses
  %i.l = alloca [72 x i8], align 8                ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.o = alloca [72 x i8], align 8                ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.r = alloca [72 x i8], align 8                ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = alloca [72 x i8], align 8                ; 2 uses
  %i.u = alloca [80 x i8], align 16               ; 7 uses
  %i.v = alloca [40 x i8], align 8                ; 5 uses
  %i.w = alloca [24 x i8], align 8                ; 8 uses
  %i.x = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.6109 = alloca [40 x i8], align 8         ; 6 uses
  %i.y = alloca [32 x i8], align 8                ; 11 uses
  %i.z = alloca [32 x i8], align 8                ; 4 uses
  %.sroa.094 = alloca [56 x i8], align 8          ; 5 uses
  %i.aa = alloca [96 x i8], align 8               ; 6 uses
  %i.ab = alloca [88 x i8], align 8               ; 8 uses
  %i.ac = alloca [16 x i8], align 8               ; 5 uses
  %i.ad = alloca [96 x i8], align 16              ; 5 uses
  %i.ae = alloca [24 x i8], align 8               ; 2 uses
  %i.af = alloca [40 x i8], align 8               ; 3 uses
  %.sroa.673.sroa.7 = alloca [32 x i8], align 8   ; 2 uses
  %i.ag = alloca [80 x i8], align 16              ; 8 uses
  %.sroa.679.sroa.7 = alloca [32 x i8], align 8   ; 5 uses
  %i.ah = alloca [72 x i8], align 8               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !108090
  call void @_RINvMNtCsfyRUffk9zcp_6planus12table_readerNtB3_5Table6accessbECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i64 noundef 2, ptr noalias noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 15, ptr noalias noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 8), !dbg !108171
  %i.ai = load i8, ptr %i.u, align 16, !dbg !108172, !range !4292, !noundef !3786 ; 2 uses
  %.not = icmp eq i8 %i.ai, 9, !dbg !108172
  %i.aj = getelementptr inbounds nuw i8, ptr %i.u, i64 1, !dbg !108173
  %i.ak = load i8, ptr %i.aj, align 1, !dbg !108173 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b, !dbg !108174

bb.b:                                             ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %i.t, i64 9
  %.sroa.6137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 2, !dbg !108175
  %.sroa.5320.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 18, !dbg !108176
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !108176, !noalias !108092
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(78) %.sroa.5320.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(78) %.sroa.6137.0..sroa_idx, i64 78, i1 false), !dbg !108175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !108177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !108176
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !108176
  store i8 %i.ai, ptr %i.am, align 16, !dbg !108176, !noalias !108093
  %.sroa.4319.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 17, !dbg !108176
  store i8 %i.ak, ptr %.sroa.4319.0..sroa_idx, align 1, !dbg !108176, !noalias !108093
  store i64 29, ptr %i.h, align 16, !dbg !108176, !noalias !108092
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !108178, !noalias !108092
  store ptr %i.h, ptr %i.g, align 8, !dbg !108178, !noalias !108092
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !108178
  store ptr @_RNvXNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read5errorNtB2_13OutOfSpecKindNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !dbg !108178, !noalias !108092
  call void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noundef nonnull @36, ptr noundef nonnull %i.g), !dbg !108179, !noalias !108095
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !108180, !noalias !108092
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !108180, !noalias !108092
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8, !dbg !108181 ; 2 uses
  call void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.4.0..sroa_idx.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @92), !dbg !108182
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !108183
  %.sroa.88.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !108184
  store i64 2, ptr %0, align 8, !dbg !108185
  %.sroa.2155.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !108185
  store i8 %.sroa.88.0.copyload, ptr %.sroa.2155.0..sroa_idx, align 8, !dbg !108185
  %.sroa.3156.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9, !dbg !108185
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.3156.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(63) %i.al, i64 63, i1 false), !dbg !108185
  br label %bb.ai, !dbg !108186

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !108177
  switch i8 %i.ak, label %bb.e [
    i8 2, label %bb.d
    i8 0, label %bb.d
  ], !dbg !108187

bb.d:                                             ; preds = %bb.c, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !108103
  call void @_RINvMNtCsfyRUffk9zcp_6planus12table_readerNtB3_5Table6accessxECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i64 noundef 0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 15, ptr noalias noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 2), !dbg !108188
  %i.an = load i8, ptr %i.j, align 16, !dbg !108189, !range !4292, !noundef !3786 ; 2 uses
  %.not287 = icmp eq i8 %i.an, 9, !dbg !108189
  br i1 %.not287, label %bb.g, label %bb.f, !dbg !108190

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) @39, i64 72, i1 false), !dbg !108191
end_hunk_2
