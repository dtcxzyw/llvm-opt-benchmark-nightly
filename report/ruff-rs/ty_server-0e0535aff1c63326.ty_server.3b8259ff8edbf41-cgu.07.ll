Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_server-0e0535aff1c63326.ty_server.3b8259ff8edbf41-cgu.07?download=true
inline.NumInlined: 1656
inline.NumDeleted: 759
begin_hunk_0_@_RNvXs1_NtCsjNt1Wzngcv_9ty_server7sessionNtB5_13MutIndexGuardNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop:bb.a
  %i.az = icmp eq i64 %i.ay, 1
  br i1 %i.az, label %bb.u, label %common.resume

bb.u:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCsjNt1Wzngcv_9ty_server7session5index5IndexE9drop_slowBL_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.g)
          to label %common.resume unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1_NtCsjNt1Wzngcv_9ty_server8documentNtB5_11DocumentKeyNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !14, !noundef !5
  %i.b = trunc nuw i64 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !noundef !5
  %i.g = tail call noundef zeroext i1 @_RNvXsi_NtCs4NRVxsYgnAr_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef %i.f, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = tail call noundef zeroext i1 @_RNvXsp_NtNtCs56aZGHL6Dc6_7ruff_db6system4pathNtB5_13SystemPathBufNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.g, %bb.b ], [ %i.i, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtNtCs4NRVxsYgnAr_4core3ptr8metadataINtB5_11DynMetadataDNtNtCs45bxiIjzMqg_5salsa8database8DatabaseEL_ENtNtB9_3fmt5Debug3fmtCsjNt1Wzngcv_9ty_server(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter11debug_tuple(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @223, i64 noundef 11)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  store ptr %i.c, ptr %i.a, align 8
  %i.d = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @224)
  %i.e = call noundef zeroext i1 @_RNvMs2_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_10DebugTuple6finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RNvXs1_NtNtCscvBHLZPbXnS_10serde_json5value5indexReNtB5_5Index10index_intoCsjNt1Wzngcv_9ty_server(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !5
  %i.d = tail call noundef align 8 ptr @_RNvXs_NtNtCscvBHLZPbXnS_10serde_json5value5indexeNtB4_5Index10index_into(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  ret ptr %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMNtCsjNt1Wzngcv_9ty_server7sessionNtBT_7Session23remove_workspace_folders0_0INtB7_5FnMutTNtBT_14DocumentHandleEE8call_mutBV_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(128) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [128 x i8], align 8               ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.a, ptr noundef nonnull align 8 dereferenceable(128) %2, i64 128, i1 false)
  %i.b = load ptr, ptr %1, align 8, !nonnull !5, !align !8, !noundef !5
  %.val = load ptr, ptr %i.b, align 8             ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2404)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2405)
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.c = load i64, ptr %.sroa.0.0.i, align 8, !range !14, !alias.scope !2405, !noundef !5
  %i.d = trunc nuw i64 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvMNtNtCs56aZGHL6Dc6_7ruff_db6system4pathNtB3_10SystemPath11starts_withRNtB3_13SystemPathBufECsjNt1Wzngcv_9ty_server.exit.i, %bb.a
  store i32 -1, ptr %0, align 8, !alias.scope !2404
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsjNt1Wzngcv_9ty_server7session14DocumentHandleEBF_(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.a), !noalias !2404
  br label %_RNCNvMNtCsjNt1Wzngcv_9ty_server7sessionNtB4_7Session23remove_workspace_folders0_0B6_.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !2405, !nonnull !5, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !2405, !noundef !5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %.val.i.i.i = load ptr, ptr %i.i, align 8, !alias.scope !2406, !noalias !2407, !nonnull !5, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %.val1.i.i.i = load i64, ptr %i.j, align 8, !alias.scope !2406, !noalias !2407, !noundef !5
  %i.k = invoke noundef zeroext i1 @_RINvMs16_NtCs2AWtUsOyxgP_3std4pathNtB7_4Path11starts_withRNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path10SystemPathECsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef %i.h, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i.i.i, i64 noundef %.val1.i.i.i)
          to label %_RINvMNtNtCs56aZGHL6Dc6_7ruff_db6system4pathNtB3_10SystemPath11starts_withRNtB3_13SystemPathBufECsjNt1Wzngcv_9ty_server.exit.i unwind label %bb.d, !noalias !2407

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsjNt1Wzngcv_9ty_server7session14DocumentHandleEBF_(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.a) #35
          to label %bb.g unwind label %bb.f, !noalias !2404

_RINvMNtNtCs56aZGHL6Dc6_7ruff_db6system4pathNtB3_10SystemPath11starts_withRNtB3_13SystemPathBufECsjNt1Wzngcv_9ty_server.exit.i: ; preds = %bb.c
  br i1 %i.k, label %bb.e, label %bb.b

bb.e:                                             ; preds = %_RINvMNtNtCs56aZGHL6Dc6_7ruff_db6system4pathNtB3_10SystemPath11starts_withRNtB3_13SystemPathBufECsjNt1Wzngcv_9ty_server.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %2, i64 128, i1 false)
  br label %_RNCNvMNtCsjNt1Wzngcv_9ty_server7sessionNtB4_7Session23remove_workspace_folders0_0B6_.exit

bb.f:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34, !noalias !2404
  unreachable

bb.g:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.l

_RNCNvMNtCsjNt1Wzngcv_9ty_server7sessionNtB4_7Session23remove_workspace_folders0_0B6_.exit: ; preds = %bb.b, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMNtCsjNt1Wzngcv_9ty_server7sessionNtBT_7Session33file_watcher_registration_optionss0_0INtB7_5FnMutTRTRNtNtCs4o81Y09oZk1_10ty_project2db15ProjectDatabaseRNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path10SystemPathEEE8call_mutBV_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2410)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !2410, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !2410, !noundef !5
  %i.e = load ptr, ptr %1, align 8, !alias.scope !2410, !nonnull !5, !align !8, !noundef !5 ; 2 uses
  %i.f = tail call { i32, i32 } @_RNvXsh_NtCs4o81Y09oZk1_10ty_project2dbNtB5_15ProjectDatabaseNtB5_2Db7project(ptr noundef nonnull align 8 %i.e), !noalias !2410 ; 2 uses
  %i.g = extractvalue { i32, i32 } %i.f, 0
  %i.h = extractvalue { i32, i32 } %i.f, 1
  %i.i = tail call { ptr, i64 } @_RNvMsd_Cs4o81Y09oZk1_10ty_projectNtB5_7Project4root(i32 noundef %i.g, i32 noundef %i.h, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(296) @52), !noalias !2410 ; 2 uses
  %i.j = extractvalue { ptr, i64 } %i.i, 0
  %i.k = extractvalue { ptr, i64 } %i.i, 1
  %i.l = tail call noundef zeroext i1 @_RINvMs16_NtCs2AWtUsOyxgP_3std4pathNtB7_4Path11starts_withRNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path10SystemPathECsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef %i.k), !noalias !2410
  %i.m = xor i1 %i.l, true
  ret i1 %i.m
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMNtCsjNt1Wzngcv_9ty_server7sessionNtBT_7Session53request_uninitialized_workspace_folder_configurations0INtB7_5FnMutTTRNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufRNtBT_9WorkspaceEEE8call_mutBV_(ptr dead_on_unwind noalias noundef writable sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %3) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2414)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2415)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load i8, ptr %i.a, align 8, !range !13, !alias.scope !2415, !noundef !5
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %3)
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 64
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.sroa.15.0..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(17) %i.e, i64 17, i1 false), !alias.scope !2416
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 60
  %i.h = load i32, ptr %i.g, align 4, !alias.scope !2415, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load <4 x i32>, ptr %i.i, align 8, !alias.scope !2415
  store <4 x i32> %i.j, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !2414
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load <2 x i16>, ptr %i.f, align 8, !alias.scope !2415
  store <2 x i16> %i.k, ptr %.sroa.8.0..sroa_idx.i, align 8, !alias.scope !2414
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.l = load <4 x i32>, ptr %i.d, align 4, !alias.scope !2415
  store <4 x i32> %i.l, ptr %.sroa.10.0..sroa_idx.i, align 4, !alias.scope !2414
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %i.h, ptr %.sroa.14.0..sroa_idx.i, align 4, !alias.scope !2414
  br label %_RNCNvMNtCsjNt1Wzngcv_9ty_server7sessionNtB4_7Session53request_uninitialized_workspace_folder_configurations0B6_.exit

bb.c:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8, !alias.scope !2414
  br label %_RNCNvMNtCsjNt1Wzngcv_9ty_server7sessionNtB4_7Session53request_uninitialized_workspace_folder_configurations0B6_.exit

_RNCNvMNtCsjNt1Wzngcv_9ty_server7sessionNtB4_7Session53request_uninitialized_workspace_folder_configurations0B6_.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMNtNtCsjNt1Wzngcv_9ty_server8document8notebookNtBT_16NotebookDocument16to_ruff_notebook0INtB7_5FnMutTRNtBT_12NotebookCellEE8call_mutBX_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([168 x i8]) align 8 captures(none) dereferenceable(168) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.02.i = alloca [56 x i8], align 8         ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.05.i = alloca [112 x i8], align 8        ; 6 uses
  %.sroa.0.i = alloca [56 x i8], align 8          ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [32 x i8], align 8                ; 9 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [32 x i8], align 8                ; 7 uses
  %i.n = alloca [24 x i8], align 8                ; 7 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [32 x i8], align 8                ; 8 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [32 x i8], align 8                ; 7 uses
  %i.w = alloca [24 x i8], align 8                ; 7 uses
  %i.x = alloca [16 x i8], align 8                ; 5 uses
  %i.y = alloca [16 x i8], align 8                ; 5 uses
  %i.z = alloca [16 x i8], align 8                ; 5 uses
  %i.aa = alloca [32 x i8], align 8               ; 8 uses
  %i.ab = alloca [32 x i8], align 8               ; 10 uses
  %i.ac = alloca [32 x i8], align 8               ; 9 uses
  %i.ad = load ptr, ptr %1, align 8, !nonnull !5, !align !8, !noundef !5
  %.val = load ptr, ptr %i.ad, align 8, !nonnull !5, !align !8, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2435)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2436)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.05.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !2437
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !2437
  call void @_RNvMs_NtCsjNt1Wzngcv_9ty_server8documentNtB4_11DocumentKey8from_uri(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ab, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %2), !noalias !2435
  invoke void @_RNvMNtNtCsjNt1Wzngcv_9ty_server7session5indexNtB2_5Index8document(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ac, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ab)
          to label %bb.d unwind label %bb.c, !noalias !2435

bb.b:                                             ; preds = %bb.h, %bb.c
  %.pn.i = phi { ptr, i32 } [ %i.ae, %bb.c ], [ %i.aq, %bb.h ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsjNt1Wzngcv_9ty_server8document11DocumentKeyEBF_(ptr noalias noundef align 8 dereferenceable(32) %i.ab) #35
          to label %common.resume.i unwind label %bb.ap, !noalias !2435

bb.c:                                             ; preds = %bb.m, %bb.e, %bb.a
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.af = load i64, ptr %i.ac, align 8, !range !22, !noalias !2437, !noundef !5
  %.not.i = icmp eq i64 %i.af, 2
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultRNtNtNtCsjNt1Wzngcv_9ty_server7session5index8DocumentNtB10_13DocumentErrorEEB14_(ptr noalias noundef align 8 dereferenceable(32) %i.ac)
          to label %bb.aq unwind label %bb.c, !noalias !2435

bb.f:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !noalias !2437, !nonnull !5, !align !8, !noundef !5 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !range !14, !noalias !2435, !noundef !5
  %i.aj = trunc nuw i64 %i.ai to i1
  br i1 %i.aj, label %bb.o, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !noalias !2435, !nonnull !5, !noundef !5 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 144
  %i.an = load ptr, ptr %i.am, align 8, !noalias !2435, !nonnull !5, !noundef !5
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 152
  %i.ap = load i64, ptr %i.ao, align 8, !noalias !2435, !noundef !5 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2437
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, i64 noundef %i.ap, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.i unwind label %bb.h, !noalias !2435

bb.h:                                             ; preds = %bb.ad, %bb.ab, %bb.aa, %bb.x, %.noexc97.i, %bb.w, %bb.u, %bb.r, %bb.q, %bb.j, %bb.g
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultRNtNtNtCsjNt1Wzngcv_9ty_server7session5index8DocumentNtB10_13DocumentErrorEEB14_(ptr noalias noundef align 8 dereferenceable(32) %i.ac) #35
          to label %bb.b unwind label %bb.ap, !noalias !2435

bb.i:                                             ; preds = %bb.g
  %i.ar = load i64, ptr %i.f, align 8, !range !14, !noalias !2437, !noundef !5
  %i.as = trunc nuw i64 %i.ar to i1
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.au = load i64, ptr %i.at, align 8, !range !15, !noalias !2437, !noundef !5 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  br i1 %i.as, label %bb.j, label %bb.k, !prof !9

bb.j:                                             ; preds = %bb.i
  %i.aw = load i64, ptr %i.av, align 8, !noalias !2437
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.au, i64 %i.aw) #36
          to label %bb.n unwind label %bb.h, !noalias !2435

bb.k:                                             ; preds = %bb.i
  %i.ax = load ptr, ptr %i.av, align 8, !noalias !2437, !nonnull !5, !noundef !5 ; 3 uses
  %i.ay = icmp ule i64 %i.ap, %i.au
  call void @llvm.assume(i1 %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2437
  %.not90.i = icmp eq i64 %i.ap, 0
  br i1 %.not90.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ax, ptr nonnull align 1 %i.an, i64 %i.ap, i1 false), !noalias !2435
  br label %bb.m

bb.m:                                             ; preds = %bb.ae, %bb.z, %bb.y, %_RNCNCNvMNtNtCsjNt1Wzngcv_9ty_server8document8notebookNtB6_16NotebookDocument16to_ruff_notebook0s_0Ba_.exit.i, %bb.l, %bb.k
  %.sroa.6.sroa.4.0.i = phi i64 [ 0, %bb.k ], [ %i.ap, %bb.l ], [ undef, %bb.ae ], [ undef, %bb.z ], [ undef, %bb.y ], [ undef, %_RNCNCNvMNtNtCsjNt1Wzngcv_9ty_server8document8notebookNtB6_16NotebookDocument16to_ruff_notebook0s_0Ba_.exit.i ]
  %.sroa.6.sroa.0.0.i = phi ptr [ %i.ax, %bb.k ], [ %i.ax, %bb.l ], [ undef, %bb.ae ], [ undef, %bb.z ], [ undef, %bb.y ], [ undef, %_RNCNCNvMNtNtCsjNt1Wzngcv_9ty_server8document8notebookNtB6_16NotebookDocument16to_ruff_notebook0s_0Ba_.exit.i ]
  %.sroa.0.0.i = phi i64 [ %i.au, %bb.k ], [ %i.au, %bb.l ], [ -1, %bb.ae ], [ -1, %bb.z ], [ -1, %bb.y ], [ -1, %_RNCNCNvMNtNtCsjNt1Wzngcv_9ty_server8document8notebookNtB6_16NotebookDocument16to_ruff_notebook0s_0Ba_.exit.i ] ; 2 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultRNtNtNtCsjNt1Wzngcv_9ty_server7session5index8DocumentNtB10_13DocumentErrorEEB14_(ptr noalias noundef align 8 dereferenceable(32) %i.ac)
          to label %bb.ag unwind label %bb.c, !noalias !2435

bb.n:                                             ; preds = %bb.j
  unreachable

bb.o:                                             ; preds = %bb.f
  %i.az = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !2437
  %i.ba = icmp ult i64 %i.az, 4
  br i1 %i.ba, label %bb.p, label %bb.y

default.unreachable:                              ; preds = %bb.ao
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.bb = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvMNtNtCsjNt1Wzngcv_9ty_server8document8notebookNtB6_16NotebookDocument16to_ruff_notebook010___CALLSITE, i64 16) monotonic, align 8, !noalias !2437 ; 3 uses
  switch i8 %i.bb, label %bb.q [
    i8 0, label %bb.y
    i8 1, label %bb.r
    i8 2, label %bb.r
  ], !prof !7

bb.q:                                             ; preds = %bb.p
  %i.bc = invoke noundef i8 @_RNvMNtCs3pBv9WGWlWf_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvMNtNtCsjNt1Wzngcv_9ty_server8document8notebookNtB6_16NotebookDocument16to_ruff_notebook010___CALLSITE)
          to label %bb.s unwind label %bb.h, !noalias !2435 ; 2 uses

bb.r:                                             ; preds = %bb.p, %bb.s, %bb.p
  %.sroa.014.0.i = phi i8 [ %i.bc, %bb.s ], [ %i.bb, %bb.p ], [ %i.bb, %bb.p ]
  %i.bd = load ptr, ptr @_RNvNCNvMNtNtCsjNt1Wzngcv_9ty_server8document8notebookNtB6_16NotebookDocument16to_ruff_notebook010___CALLSITE, align 8, !noalias !2437, !nonnull !5, !align !8, !noundef !5
  %i.be = invoke noundef zeroext i1 @_RNvNtCsdbMkb98Dhky_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bd, i8 noundef %.sroa.014.0.i)
          to label %bb.t unwind label %bb.h, !noalias !2435

bb.s:                                             ; preds = %bb.q
  %i.bf = icmp eq i8 %i.bc, 0
  br i1 %i.bf, label %bb.y, label %bb.r

bb.t:                                             ; preds = %bb.r
  br i1 %i.be, label %bb.u, label %bb.y

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !2437
  %i.bg = load ptr, ptr @_RNvNCNvMNtNtCsjNt1Wzngcv_9ty_server8document8notebookNtB6_16NotebookDocument16to_ruff_notebook010___CALLSITE, align 8, !noalias !2437, !nonnull !5, !align !8, !noundef !5 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !2437
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !2437
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !2437
  store ptr %2, ptr %i.x, align 8, !noalias !2437
  %.sroa.453.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr @_RNvXs2_Csl4BgoAJVhPh_3urlNtB5_3UrlNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.453.0..sroa_idx.i, align 8, !noalias !2437
  store ptr @54, ptr %i.y, align 8, !noalias !2437
  %i.bi = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.x, ptr %i.bi, align 8, !noalias !2437
  store ptr %i.y, ptr %i.z, align 8, !noalias !2437
  %i.bj = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr @10, ptr %i.bj, align 8, !noalias !2437
  store i64 1, ptr %i.aa, align 8, !noalias !2437
  %.sroa.016.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.z, ptr %.sroa.016.sroa.4.0..sroa_idx.i, align 8, !noalias !2437
  %.sroa.016.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i64 1, ptr %.sroa.016.sroa.5.0..sroa_idx.i, align 8, !noalias !2437
  %.sroa.417.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store ptr %i.bh, ptr %.sroa.417.0..sroa_idx.i, align 8, !noalias !2437
  invoke void @_RNvMNtCs3pBv9WGWlWf_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aa)
          to label %.noexc.i unwind label %bb.h, !noalias !2435

.noexc.i:                                         ; preds = %bb.u
  %i.bk = load atomic i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !2438
  %i.bl = icmp eq i8 %i.bk, 0
  br i1 %i.bl, label %bb.v, label %_RNCNCNvMNtNtCsjNt1Wzngcv_9ty_server8document8notebookNtB6_16NotebookDocument16to_ruff_notebook0s_0Ba_.exit.i

bb.v:                                             ; preds = %.noexc.i
  %i.bm = load atomic i64, ptr @_RNvCsdxG2AMukdbL_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !2438 ; 2 uses
  %i.bn = icmp ult i64 %i.bm, 6
  call void @llvm.assume(i1 %i.bn)
  %i.bo = icmp samesign ugt i64 %i.bm, 1
  br i1 %i.bo, label %bb.w, label %_RNCNCNvMNtNtCsjNt1Wzngcv_9ty_server8document8notebookNtB6_16NotebookDocument16to_ruff_notebook0s_0Ba_.exit.i

bb.w:                                             ; preds = %bb.v
  %i.bp = load ptr, ptr @_RNvNCNvMNtNtCsjNt1Wzngcv_9ty_server8document8notebookNtB6_16NotebookDocument16to_ruff_notebook010___CALLSITE, align 8, !noalias !2438, !nonnull !5, !align !8, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2438
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %i.br = load ptr, ptr %i.bq, align 8, !noalias !2435, !nonnull !5, !noundef !5
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  %i.bt = load i64, ptr %i.bs, align 8, !noalias !2435, !noundef !5
  store i64 2, ptr %i.d, align 8, !noalias !2438
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.br, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !noalias !2438
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.bt, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !2438
  %i.bu = invoke { ptr, ptr } @_RNvCsdxG2AMukdbL_3log6logger()
          to label %.noexc97.i unwind label %bb.h, !noalias !2435 ; 2 uses

.noexc97.i:                                       ; preds = %bb.w
  %i.bv = extractvalue { ptr, ptr } %i.bu, 0      ; 2 uses
  %i.bw = extractvalue { ptr, ptr } %i.bu, 1      ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !invariant.load !5, !noalias !2435, !nonnull !5
  %i.bz = invoke noundef zeroext i1 %i.by(ptr noundef %i.bv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d)
          to label %.noexc98.i unwind label %bb.h, !noalias !2435, !inline_history !2422

.noexc98.i:                                       ; preds = %.noexc97.i
  br i1 %i.bz, label %bb.x, label %.noexc99.i

bb.x:                                             ; preds = %.noexc98.i
  invoke void @_RNvNtCsdbMkb98Dhky_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bp, ptr noundef nonnull %i.bv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bw, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aa)
          to label %.noexc99.i unwind label %bb.h, !noalias !2435

.noexc99.i:                                       ; preds = %bb.x, %.noexc98.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2438
  br label %_RNCNCNvMNtNtCsjNt1Wzngcv_9ty_server8document8notebookNtB6_16NotebookDocument16to_ruff_notebook0s_0Ba_.exit.i

_RNCNCNvMNtNtCsjNt1Wzngcv_9ty_server8document8notebookNtB6_16NotebookDocument16to_ruff_notebook0s_0Ba_.exit.i: ; preds = %.noexc99.i, %bb.v, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !2437
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !2437
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !2437
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !2437
  br label %bb.m

bb.y:                                             ; preds = %bb.t, %bb.s, %bb.p, %bb.o
  %i.ca = load atomic i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !2437
  %i.cb = icmp eq i8 %i.ca, 0
  br i1 %i.cb, label %bb.z, label %bb.m

bb.z:                                             ; preds = %bb.y
  %i.cc = load atomic i64, ptr @_RNvCsdxG2AMukdbL_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !2437 ; 2 uses
  %i.cd = icmp ult i64 %i.cc, 6
  call void @llvm.assume(i1 %i.cd)
  %i.ce = icmp samesign ugt i64 %i.cc, 1
  br i1 %i.ce, label %bb.aa, label %bb.m

bb.aa:                                            ; preds = %bb.z
  %i.cf = load ptr, ptr @_RNvNCNvMNtNtCsjNt1Wzngcv_9ty_server8document8notebookNtB6_16NotebookDocument16to_ruff_notebook010___CALLSITE, align 8, !noalias !2437, !nonnull !5, !align !8, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !2437
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.ch = load ptr, ptr %i.cg, align 8, !noalias !2435, !nonnull !5, !noundef !5
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 40
  %i.cj = load i64, ptr %i.ci, align 8, !noalias !2435, !noundef !5
  store i64 2, ptr %i.w, align 8, !noalias !2437
  %.sroa.3.0..sroa_idx58.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.ch, ptr %.sroa.3.0..sroa_idx58.i, align 8, !noalias !2437
  %.sroa.559.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 %i.cj, ptr %.sroa.559.0..sroa_idx.i, align 8, !noalias !2437
  %i.ck = invoke { ptr, ptr } @_RNvCsdxG2AMukdbL_3log6logger()
          to label %bb.ab unwind label %bb.h, !noalias !2435 ; 2 uses

bb.ab:                                            ; preds = %bb.aa
  %i.cl = extractvalue { ptr, ptr } %i.ck, 0      ; 2 uses
  %i.cm = extractvalue { ptr, ptr } %i.ck, 1      ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.co = load ptr, ptr %i.cn, align 8, !invariant.load !5, !noalias !2435, !nonnull !5
  %i.cp = invoke noundef zeroext i1 %i.co(ptr noundef %i.cl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.w)
          to label %bb.ac unwind label %bb.h, !noalias !2435

bb.ac:                                            ; preds = %bb.ab
  br i1 %i.cp, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !2437
  %i.cq = load ptr, ptr @_RNvNCNvMNtNtCsjNt1Wzngcv_9ty_server8document8notebookNtB6_16NotebookDocument16to_ruff_notebook010___CALLSITE, align 8, !noalias !2437, !nonnull !5, !align !8, !noundef !5
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !2437
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !2437
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !2437
  store ptr %2, ptr %i.s, align 8, !noalias !2437
  %.sroa.463.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr @_RNvXs2_Csl4BgoAJVhPh_3urlNtB5_3UrlNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.463.0..sroa_idx.i, align 8, !noalias !2437
  store ptr @54, ptr %i.t, align 8, !noalias !2437
  %i.cs = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.s, ptr %i.cs, align 8, !noalias !2437
  store ptr %i.t, ptr %i.u, align 8, !noalias !2437
  %i.ct = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr @10, ptr %i.ct, align 8, !noalias !2437
  store i64 1, ptr %i.v, align 8, !noalias !2437
  %.sroa.465.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.u, ptr %.sroa.465.0..sroa_idx.i, align 8, !noalias !2437
  %.sroa.566.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 1, ptr %.sroa.566.0..sroa_idx.i, align 8, !noalias !2437
  %i.cu = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store ptr %i.cr, ptr %i.cu, align 8, !noalias !2437
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2437
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false), !noalias !2437
  invoke void @_RNvNtCsdbMkb98Dhky_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.cf, ptr noundef nonnull %i.cl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cm, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.v)
          to label %bb.af unwind label %bb.h, !noalias !2435

bb.ae:                                            ; preds = %bb.af, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !2437
  br label %bb.m

bb.af:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2437
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !2437
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !2437
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !2437
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !2437
  br label %bb.ae

bb.ag:                                            ; preds = %bb.m
  %i.cv = load i64, ptr %i.ab, align 8, !range !14, !alias.scope !2439, !noalias !2437, !noundef !5
  %i.cw = icmp eq i64 %i.cv, 0
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 5 uses
  br i1 %i.cw, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cx)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsjNt1Wzngcv_9ty_server8document11DocumentKeyEBF_.exit.i unwind label %bb.ai, !noalias !2435

bb.ai:                                            ; preds = %bb.ah
  %i.cy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cx)
          to label %common.resume.i unwind label %bb.aj, !noalias !2435

bb.aj:                                            ; preds = %bb.ai
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34, !noalias !2435
  unreachable

common.resume.i:                                  ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscvBHLZPbXnS_10serde_json5value5ValueEECsjNt1Wzngcv_9ty_server.exit.i, %4, %bb.av, %bb.as, %bb.al, %bb.ai, %bb.b
  %common.resume.op.i = phi { ptr, i32 } [ %5, %4 ], [ %i.da, %bb.al ], [ %i.dl, %bb.av ], [ %i.cy, %bb.ai ], [ %i.dj, %bb.as ], [ %.pn94.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscvBHLZPbXnS_10serde_json5value5ValueEECsjNt1Wzngcv_9ty_server.exit.i ], [ %.pn.i, %bb.b ]
  resume { ptr, i32 } %common.resume.op.i

bb.ak:                                            ; preds = %bb.ag
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cx)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsjNt1Wzngcv_9ty_server8document11DocumentKeyEBF_.exit.i unwind label %bb.al, !noalias !2435

bb.al:                                            ; preds = %bb.ak
  %i.da = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cx)
          to label %common.resume.i unwind label %bb.am, !noalias !2435

bb.am:                                            ; preds = %bb.al
  %i.db = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34, !noalias !2435
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsjNt1Wzngcv_9ty_server8document11DocumentKeyEBF_.exit.i: ; preds = %bb.ak, %bb.ah
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cx), !noalias !2435
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !2437
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !2437
  %.not91.i = icmp eq i64 %.sroa.0.0.i, -1
  br i1 %.not91.i, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.bj, %bb.bg, %bb.bf, %_RNCNCNvMNtNtCsjNt1Wzngcv_9ty_server8document8notebookNtB6_16NotebookDocument16to_ruff_notebook0s0_0Ba_.exit.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsjNt1Wzngcv_9ty_server8document11DocumentKeyEBF_.exit.i
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsjNt1Wzngcv_9ty_server8document11DocumentKeyEBF_.exit.i
  %.sroa.3.sroa.3.0.i = phi i64 [ 0, %bb.an ], [ %.sroa.6.sroa.4.0.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsjNt1Wzngcv_9ty_server8document11DocumentKeyEBF_.exit.i ]
  %.sroa.3.sroa.0.0.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.an ], [ %.sroa.6.sroa.0.0.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsjNt1Wzngcv_9ty_server8document11DocumentKeyEBF_.exit.i ]
  %.sroa.03.0.i = phi i64 [ 0, %bb.an ], [ %.sroa.0.0.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsjNt1Wzngcv_9ty_server8document11DocumentKeyEBF_.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2437
  %i.dc = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  store i64 %.sroa.03.0.i, ptr %i.dc, align 8, !noalias !2437
  %.sroa.3.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %.sroa.3.sroa.0.0.i, ptr %.sroa.3.0..sroa_idx5.i, align 8, !noalias !2437
  %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx5.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 %.sroa.3.sroa.3.0.i, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx5.sroa_idx.i, align 8, !noalias !2437
  store i64 0, ptr %i.i, align 8, !noalias !2437
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.de = load i32, ptr %i.dd, align 8, !range !30, !alias.scope !2436, !noundef !5
  switch i32 %i.de, label %default.unreachable [
    i32 0, label %bb.bk
    i32 1, label %bb.bn
    i32 2, label %3
  ]

bb.ap:                                            ; preds = %.body107.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscvBHLZPbXnS_10serde_json5value5ValueEECsjNt1Wzngcv_9ty_server.exit.i, %.body.i, %bb.h, %bb.b
  %i.df = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34, !noalias !2435
  unreachable

bb.aq:                                            ; preds = %bb.e
  %i.dg = load i64, ptr %i.ab, align 8, !range !14, !alias.scope !2440, !noalias !2437, !noundef !5
  %i.dh = icmp eq i64 %i.dg, 0
  %i.di = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 5 uses
  br i1 %i.dh, label %bb.ar, label %bb.au

bb.ar:                                            ; preds = %bb.aq
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.di)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsjNt1Wzngcv_9ty_server8document11DocumentKeyEBF_.exit102.i unwind label %bb.as, !noalias !2435

bb.as:                                            ; preds = %bb.ar
  %i.dj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.di)
          to label %common.resume.i unwind label %bb.at, !noalias !2435

bb.at:                                            ; preds = %bb.as
  %i.dk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34, !noalias !2435
  unreachable

bb.au:                                            ; preds = %bb.aq
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.di)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsjNt1Wzngcv_9ty_server8document11DocumentKeyEBF_.exit102.i unwind label %bb.av, !noalias !2435

bb.av:                                            ; preds = %bb.au
  %i.dl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.di)
          to label %common.resume.i unwind label %bb.aw, !noalias !2435

bb.aw:                                            ; preds = %bb.av
  %i.dm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34, !noalias !2435
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsjNt1Wzngcv_9ty_server8document11DocumentKeyEBF_.exit102.i: ; preds = %bb.au, %bb.ar
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.di), !noalias !2435
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !2437
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !2437
  %i.dn = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !2437
  %i.do = icmp ult i64 %i.dn, 4
  br i1 %i.do, label %bb.ax, label %bb.bf

bb.ax:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsjNt1Wzngcv_9ty_server8document11DocumentKeyEBF_.exit102.i
  %i.dp = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvMNtNtCsjNt1Wzngcv_9ty_server8document8notebookNtB6_16NotebookDocument16to_ruff_notebook0s_10___CALLSITE, i64 16) monotonic, align 8, !noalias !2437 ; 3 uses
  switch i8 %i.dp, label %bb.ay [
    i8 0, label %bb.bf
    i8 1, label %bb.az
    i8 2, label %bb.az
  ], !prof !7

bb.ay:                                            ; preds = %bb.ax
  %i.dq = call noundef i8 @_RNvMNtCs3pBv9WGWlWf_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvMNtNtCsjNt1Wzngcv_9ty_server8document8notebookNtB6_16NotebookDocument16to_ruff_notebook0s_10___CALLSITE), !noalias !2435 ; 2 uses
  %i.dr = icmp eq i8 %i.dq, 0
  br i1 %i.dr, label %bb.bf, label %bb.az

bb.az:                                            ; preds = %bb.ax, %bb.ay, %bb.ax
  %.sroa.024.0.i = phi i8 [ %i.dq, %bb.ay ], [ %i.dp, %bb.ax ], [ %i.dp, %bb.ax ]
  %i.ds = load ptr, ptr @_RNvNCNvMNtNtCsjNt1Wzngcv_9ty_server8document8notebookNtB6_16NotebookDocument16to_ruff_notebook0s_10___CALLSITE, align 8, !noalias !2437, !nonnull !5, !align !8, !noundef !5
  %i.dt = call noundef zeroext i1 @_RNvNtCsdbMkb98Dhky_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ds, i8 noundef %.sroa.024.0.i), !noalias !2435
  br i1 %i.dt, label %bb.ba, label %bb.bf

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !2437
  %i.du = load ptr, ptr @_RNvNCNvMNtNtCsjNt1Wzngcv_9ty_server8document8notebookNtB6_16NotebookDocument16to_ruff_notebook0s_10___CALLSITE, align 8, !noalias !2437, !nonnull !5, !align !8, !noundef !5 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !2437
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !2437
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !2437
  store ptr %2, ptr %i.o, align 8, !noalias !2437
  %.sroa.471.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @_RNvXs2_Csl4BgoAJVhPh_3urlNtB5_3UrlNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.471.0..sroa_idx.i, align 8, !noalias !2437
  store ptr @55, ptr %i.p, align 8, !noalias !2437
  %i.dw = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.o, ptr %i.dw, align 8, !noalias !2437
  store ptr %i.p, ptr %i.q, align 8, !noalias !2437
  %i.dx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr @10, ptr %i.dx, align 8, !noalias !2437
  store i64 1, ptr %i.r, align 8, !noalias !2437
  %.sroa.026.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.q, ptr %.sroa.026.sroa.4.0..sroa_idx.i, align 8, !noalias !2437
  %.sroa.026.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 1, ptr %.sroa.026.sroa.5.0..sroa_idx.i, align 8, !noalias !2437
  %.sroa.427.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %i.dv, ptr %.sroa.427.0..sroa_idx.i, align 8, !noalias !2437
  call void @_RNvMNtCs3pBv9WGWlWf_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.du, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.r), !noalias !2435
  %i.dy = load atomic i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !2441
  %i.dz = icmp eq i8 %i.dy, 0
  br i1 %i.dz, label %bb.bb, label %_RNCNCNvMNtNtCsjNt1Wzngcv_9ty_server8document8notebookNtB6_16NotebookDocument16to_ruff_notebook0s0_0Ba_.exit.i

bb.bb:                                            ; preds = %bb.ba
  %i.ea = load atomic i64, ptr @_RNvCsdxG2AMukdbL_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !2441 ; 2 uses
  %i.eb = icmp ult i64 %i.ea, 6
  call void @llvm.assume(i1 %i.eb)
  %i.ec = icmp samesign ugt i64 %i.ea, 1
  br i1 %i.ec, label %bb.bc, label %_RNCNCNvMNtNtCsjNt1Wzngcv_9ty_server8document8notebookNtB6_16NotebookDocument16to_ruff_notebook0s0_0Ba_.exit.i

bb.bc:                                            ; preds = %bb.bb
  %i.ed = load ptr, ptr @_RNvNCNvMNtNtCsjNt1Wzngcv_9ty_server8document8notebookNtB6_16NotebookDocument16to_ruff_notebook0s_10___CALLSITE, align 8, !noalias !2441, !nonnull !5, !align !8, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2441
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 32
  %i.ef = load ptr, ptr %i.ee, align 8, !noalias !2435, !nonnull !5, !noundef !5
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 40
  %i.eh = load i64, ptr %i.eg, align 8, !noalias !2435, !noundef !5
  store i64 2, ptr %i.c, align 8, !noalias !2441
  %.sroa.3.0..sroa_idx.i103.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.ef, ptr %.sroa.3.0..sroa_idx.i103.i, align 8, !noalias !2441
  %.sroa.5.0..sroa_idx.i104.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.eh, ptr %.sroa.5.0..sroa_idx.i104.i, align 8, !noalias !2441
  %i.ei = call { ptr, ptr } @_RNvCsdxG2AMukdbL_3log6logger(), !noalias !2435 ; 2 uses
  %i.ej = extractvalue { ptr, ptr } %i.ei, 0      ; 2 uses
  %i.ek = extractvalue { ptr, ptr } %i.ei, 1      ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 24
  %i.em = load ptr, ptr %i.el, align 8, !invariant.load !5, !noalias !2435, !nonnull !5
  %i.en = call noundef zeroext i1 %i.em(ptr noundef %i.ej, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c), !noalias !2435, !inline_history !2429
  br i1 %i.en, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  call void @_RNvNtCsdbMkb98Dhky_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ed, ptr noundef nonnull %i.ej, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ek, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.r), !noalias !2435
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2441
  br label %_RNCNCNvMNtNtCsjNt1Wzngcv_9ty_server8document8notebookNtB6_16NotebookDocument16to_ruff_notebook0s0_0Ba_.exit.i

_RNCNCNvMNtNtCsjNt1Wzngcv_9ty_server8document8notebookNtB6_16NotebookDocument16to_ruff_notebook0s0_0Ba_.exit.i: ; preds = %bb.be, %bb.bb, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !2437
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !2437
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !2437
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !2437
  br label %bb.an

bb.bf:                                            ; preds = %bb.az, %bb.ay, %bb.ax, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsjNt1Wzngcv_9ty_server8document11DocumentKeyEBF_.exit102.i
  %i.eo = load atomic i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !2437
  %i.ep = icmp eq i8 %i.eo, 0
  br i1 %i.ep, label %bb.bg, label %bb.an

bb.bg:                                            ; preds = %bb.bf
  %i.eq = load atomic i64, ptr @_RNvCsdxG2AMukdbL_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !2437 ; 2 uses
  %i.er = icmp ult i64 %i.eq, 6
  call void @llvm.assume(i1 %i.er)
  %i.es = icmp samesign ugt i64 %i.eq, 1
  br i1 %i.es, label %bb.bh, label %bb.an

bb.bh:                                            ; preds = %bb.bg
  %i.et = load ptr, ptr @_RNvNCNvMNtNtCsjNt1Wzngcv_9ty_server8document8notebookNtB6_16NotebookDocument16to_ruff_notebook0s_10___CALLSITE, align 8, !noalias !2437, !nonnull !5, !align !8, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !2437
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 32
  %i.ev = load ptr, ptr %i.eu, align 8, !noalias !2435, !nonnull !5, !noundef !5
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 40
  %i.ex = load i64, ptr %i.ew, align 8, !noalias !2435, !noundef !5
  store i64 2, ptr %i.n, align 8, !noalias !2437
  %.sroa.376.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.ev, ptr %.sroa.376.0..sroa_idx.i, align 8, !noalias !2437
  %.sroa.577.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 %i.ex, ptr %.sroa.577.0..sroa_idx.i, align 8, !noalias !2437
  %i.ey = call { ptr, ptr } @_RNvCsdxG2AMukdbL_3log6logger(), !noalias !2435 ; 2 uses
  %i.ez = extractvalue { ptr, ptr } %i.ey, 0      ; 2 uses
  %i.fa = extractvalue { ptr, ptr } %i.ey, 1      ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 24
  %i.fc = load ptr, ptr %i.fb, align 8, !invariant.load !5, !noalias !2435, !nonnull !5
  %i.fd = call noundef zeroext i1 %i.fc(ptr noundef %i.ez, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n), !noalias !2435, !inline_history !2430
  br i1 %i.fd, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2437
  %i.fe = load ptr, ptr @_RNvNCNvMNtNtCsjNt1Wzngcv_9ty_server8document8notebookNtB6_16NotebookDocument16to_ruff_notebook0s_10___CALLSITE, align 8, !noalias !2437, !nonnull !5, !align !8, !noundef !5
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2437
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2437
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2437
  store ptr %2, ptr %i.j, align 8, !noalias !2437
  %.sroa.481.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXs2_Csl4BgoAJVhPh_3urlNtB5_3UrlNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.481.0..sroa_idx.i, align 8, !noalias !2437
  store ptr @55, ptr %i.k, align 8, !noalias !2437
  %i.fg = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.j, ptr %i.fg, align 8, !noalias !2437
  store ptr %i.k, ptr %i.l, align 8, !noalias !2437
  %i.fh = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @10, ptr %i.fh, align 8, !noalias !2437
  store i64 1, ptr %i.m, align 8, !noalias !2437
  %.sroa.483.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.l, ptr %.sroa.483.0..sroa_idx.i, align 8, !noalias !2437
  %.sroa.584.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 1, ptr %.sroa.584.0..sroa_idx.i, align 8, !noalias !2437
  %i.fi = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr %i.ff, ptr %i.fi, align 8, !noalias !2437
  call void @_RNvNtCsdbMkb98Dhky_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.et, ptr noundef nonnull %i.ez, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.fa, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.m), !noalias !2435
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2437
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2437
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2437
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2437
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2437
  br label %bb.an

bb.bk:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2437
  store i64 -1, ptr %i.g, align 8, !noalias !2437
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.02.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2442
  store i64 -1, ptr %i.b, align 8, !noalias !2442
  %i.fj = invoke { i64, i64 } @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsjNt1Wzngcv_9ty_server(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @101)
          to label %bb.br unwind label %bb.bl, !noalias !2443 ; 2 uses

bb.bl:                                            ; preds = %bb.bk
  %i.fk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8w9c0syp1Hj_13ruff_notebook6schema22CodeCellMetadataVSCodeEECsjNt1Wzngcv_9ty_server(ptr noalias noundef align 8 dereferenceable(24) %i.b) #35
          to label %.body.i unwind label %bb.bm, !noalias !2443

bb.bm:                                            ; preds = %bb.bl
  %i.fl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34, !noalias !2443
  unreachable

bb.bn:                                            ; preds = %bb.ao
  %i.fm = getelementptr inbounds nuw i8, ptr %2, i64 100
  %i.fn = load i8, ptr %i.fm, align 4, !range !37, !alias.scope !2436, !noundef !5
  %i.fo = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.fp = load i32, ptr %i.fo, align 8, !alias.scope !2436
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2437
  store i64 -1, ptr %i.h, align 8, !noalias !2437
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2444
  store i64 -1, ptr %i.a, align 8, !noalias !2444
  %i.fq = invoke { i64, i64 } @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsjNt1Wzngcv_9ty_server(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @101)
          to label %bb.bs unwind label %bb.bo, !noalias !2445 ; 2 uses

bb.bo:                                            ; preds = %bb.bn
  %i.fr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8w9c0syp1Hj_13ruff_notebook6schema22CodeCellMetadataVSCodeEECsjNt1Wzngcv_9ty_server(ptr noalias noundef align 8 dereferenceable(24) %i.a) #35
          to label %.body107.i unwind label %bb.bp, !noalias !2445

bb.bp:                                            ; preds = %bb.bo
  %i.fs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34, !noalias !2445
  unreachable

3:                                                ; preds = %bb.ao
  store i64 -1, ptr %0, align 8, !alias.scope !2435
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dc)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8w9c0syp1Hj_13ruff_notebook6schema11SourceValueECsjNt1Wzngcv_9ty_server.exit.i unwind label %4, !noalias !2435

4:                                                ; preds = %3
  %5 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dc)
          to label %common.resume.i unwind label %bb.bq, !noalias !2435

bb.bq:                                            ; preds = %4
  %6 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34, !noalias !2435
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8w9c0syp1Hj_13ruff_notebook6schema11SourceValueECsjNt1Wzngcv_9ty_server.exit.i: ; preds = %3
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dc), !noalias !2435
  br label %_RNCNvMNtNtCsjNt1Wzngcv_9ty_server8document8notebookNtB4_16NotebookDocument16to_ruff_notebook0B8_.exit

.body.i:                                          ; preds = %bb.bl
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g) #35
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscvBHLZPbXnS_10serde_json5value5ValueEECsjNt1Wzngcv_9ty_server.exit.i unwind label %bb.ap, !noalias !2435

bb.br:                                            ; preds = %bb.bk
  %i.ft = extractvalue { i64, i64 } %i.fj, 0
  %i.fu = extractvalue { i64, i64 } %i.fj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.02.i, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !2437
  %.sroa.02.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.02.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.02.24..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) @100, i64 32, i1 false), !noalias !2437
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2442
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.05.i, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false), !noalias !2437
  %.sroa.444.sroa.6.0..sroa.444.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i8 -1, ptr %.sroa.444.sroa.6.0..sroa.444.0..sroa_idx.sroa_idx.i, align 8, !noalias !2436
  %.sroa.05.32..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.05.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.05.32..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !2437
  %.sroa.05.56..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.05.i, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.05.56..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.02.i, i64 56, i1 false), !noalias !2437
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.02.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2437
  store i64 2, ptr %0, align 8, !alias.scope !2435
  %.sroa.444.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.444.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.05.i, i64 112, i1 false), !noalias !2436
  %.sroa.444.sroa.4.0..sroa.444.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %i.ft, ptr %.sroa.444.sroa.4.0..sroa.444.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !2435
  %.sroa.444.sroa.5.0..sroa.444.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 %i.fu, ptr %.sroa.444.sroa.5.0..sroa.444.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !2435
  br label %_RNCNvMNtNtCsjNt1Wzngcv_9ty_server8document8notebookNtB4_16NotebookDocument16to_ruff_notebook0B8_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscvBHLZPbXnS_10serde_json5value5ValueEECsjNt1Wzngcv_9ty_server.exit.i: ; preds = %.body107.i, %.body.i
  %.pn94.i = phi { ptr, i32 } [ %i.fr, %.body107.i ], [ %i.fk, %.body.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8w9c0syp1Hj_13ruff_notebook6schema11SourceValueECsjNt1Wzngcv_9ty_server(ptr noalias noundef align 8 dereferenceable(32) %i.i) #35
          to label %common.resume.i unwind label %bb.ap, !noalias !2435

.body107.i:                                       ; preds = %bb.bo
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h) #35
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscvBHLZPbXnS_10serde_json5value5ValueEECsjNt1Wzngcv_9ty_server.exit.i unwind label %bb.ap, !noalias !2435

bb.bs:                                            ; preds = %bb.bn
  %.not93.i = icmp ne i8 %i.fn, -1                ; 2 uses
  %.sroa.037.0.i = zext i1 %.not93.i to i64
  %i.fv = zext i32 %i.fp to i64
  %.sroa.538.0.i = select i1 %.not93.i, i64 %i.fv, i64 undef
  %i.fw = extractvalue { i64, i64 } %i.fq, 0
  %i.fx = extractvalue { i64, i64 } %i.fq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !2437
  %.sroa.0.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.24..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) @100, i64 32, i1 false), !noalias !2437
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2444
  %.sroa.533.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.533.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false), !noalias !2436
  %.sroa.735.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.735.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !2436
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2437
  store i64 %.sroa.037.0.i, ptr %0, align 8, !alias.scope !2435
  %.sroa.432.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.538.0.i, ptr %.sroa.432.0..sroa_idx.i, align 8, !alias.scope !2435
  %.sroa.634.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %.sroa.634.0..sroa_idx.i, align 8, !alias.scope !2435
  %.sroa.634.sroa.4.0..sroa.634.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.634.sroa.4.0..sroa.634.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !2435
  %.sroa.634.sroa.5.0..sroa.634.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 0, ptr %.sroa.634.sroa.5.0..sroa.634.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !2435
  %.sroa.836.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.836.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.i, i64 56, i1 false), !noalias !2436
  %.sroa.836.sroa.4.0..sroa.836.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 %i.fw, ptr %.sroa.836.sroa.4.0..sroa.836.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !2435
  %.sroa.836.sroa.5.0..sroa.836.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 %i.fx, ptr %.sroa.836.sroa.5.0..sroa.836.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !2435
  br label %_RNCNvMNtNtCsjNt1Wzngcv_9ty_server8document8notebookNtB4_16NotebookDocument16to_ruff_notebook0B8_.exit

_RNCNvMNtNtCsjNt1Wzngcv_9ty_server8document8notebookNtB4_16NotebookDocument16to_ruff_notebook0B8_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8w9c0syp1Hj_13ruff_notebook6schema11SourceValueECsjNt1Wzngcv_9ty_server.exit.i, %bb.br, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2437
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.05.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtCscdodAO9FK5_5alloc4sync3ArcDNtNtCs56aZGHL6Dc6_7ruff_db6system6SystemNtNtB8_6marker4SendNtNtNtB8_5panic11unwind_safe13RefUnwindSafeNtB1K_4SyncEL_ENtB6_5Debug3fmtCsjNt1Wzngcv_9ty_server(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !8, !noundef !5 ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !5, !align !8, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !range !11, !invariant.load !5, !noalias !2449
  %i.e = add nsw i64 %i.d, -1
  %i.f = and i64 %i.e, -16
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !invariant.load !5, !noalias !2449, !nonnull !5
  %i.k = tail call noundef zeroext i1 %i.j(ptr noundef nonnull %i.h, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !inline_history !2448
  ret i1 %i.k
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCs4o81Y09oZk1_10ty_project8metadata8settings16OverrideSettingsENtB6_5Debug3fmtCsjNt1Wzngcv_9ty_server(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !align !8, !noundef !5
  %.val = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2455
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 48
  store ptr %i.d, ptr %i.a, align 8, !noalias !2455
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @405, i64 noundef 16, ptr noalias noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 5, ptr noundef nonnull readonly align 8 dereferenceable(136) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @403, ptr noalias noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 8, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @404)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2455
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCs56aZGHL6Dc6_7ruff_db6system2os13OsSystemInnerENtB6_5Debug3fmtCsjNt1Wzngcv_9ty_server(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !align !8, !noundef !5
  %.val = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2460
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 40
  store ptr %i.d, ptr %i.a, align 8, !noalias !2460
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @285, i64 noundef 13, ptr noalias noundef nonnull readonly captures(address, read_provenance) @286, i64 noundef 3, ptr noundef nonnull align 8 %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @283, ptr noalias noundef nonnull readonly captures(address, read_provenance) @287, i64 noundef 30, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @284)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2460
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCsjNt1Wzngcv_9ty_server7session5index5IndexENtB6_5Debug3fmtB19_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !align !8, !noundef !5
  %.val = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2466
  store ptr %i.c, ptr %i.a, align 8, !noalias !2466
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @205, i64 noundef 5, ptr noalias noundef nonnull readonly captures(address, read_provenance) @206, i64 noundef 9, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @204)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2466
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCsjNt1Wzngcv_9ty_server8document13text_document12TextDocumentENtB6_5Debug3fmtB19_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !align !8, !noundef !5
  %.val = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 136
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 160
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 164
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2472
  store ptr %i.c, ptr %i.a, align 8, !noalias !2472
  %i.h = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field5_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @212, i64 noundef 12, ptr noalias noundef nonnull readonly captures(address, read_provenance) @213, i64 noundef 3, ptr noundef nonnull readonly %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @207, ptr noalias noundef nonnull readonly captures(address, read_provenance) @214, i64 noundef 8, ptr noundef nonnull readonly %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @208, ptr noalias noundef nonnull readonly captures(address, read_provenance) @215, i64 noundef 7, ptr noundef nonnull readonly %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @209, ptr noalias noundef nonnull readonly captures(address, read_provenance) @216, i64 noundef 11, ptr noundef nonnull readonly %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @210, ptr noalias noundef nonnull readonly captures(address, read_provenance) @217, i64 noundef 8, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @211)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2472
  ret i1 %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCsjNt1Wzngcv_9ty_server8document8notebook16NotebookDocumentENtB6_5Debug3fmtB19_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !align !8, !noundef !5
  %.val = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 336
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 424
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 480
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2478
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 448
  store ptr %i.g, ptr %i.a, align 8, !noalias !2478
  %i.h = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field5_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @228, i64 noundef 16, ptr noalias noundef nonnull readonly captures(address, read_provenance) @213, i64 noundef 3, ptr noundef nonnull readonly %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @207, ptr noalias noundef nonnull readonly captures(address, read_provenance) @229, i64 noundef 5, ptr noundef nonnull readonly %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @225, ptr noalias noundef nonnull readonly captures(address, read_provenance) @230, i64 noundef 8, ptr noundef nonnull readonly align 8 dereferenceable(472) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @226, ptr noalias noundef nonnull readonly captures(address, read_provenance) @215, i64 noundef 7, ptr noundef nonnull readonly %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @209, ptr noalias noundef nonnull readonly captures(address, read_provenance) @231, i64 noundef 10, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @227)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2478
  ret i1 %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtCscdodAO9FK5_5alloc4sync3ArceENtB6_5Debug3fmtCsjNt1Wzngcv_9ty_server(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !8, !noundef !5 ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val1 = load i64, ptr %i.b, align 8, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.d = tail call noundef zeroext i1 @_RNvXsh_NtCs4NRVxsYgnAr_4core3fmteNtB5_5Debug3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %.val1, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtNtB8_3num7nonzero7NonZerojENtB6_5Debug3fmtCsjNt1Wzngcv_9ty_server(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !align !8, !noundef !5
  %.val = load i64, ptr %i.b, align 8, !range !38, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2483)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2483
  store i64 %.val, ptr %i.a, align 8, !noalias !2483
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i32, ptr %i.c, align 8, !alias.scope !2484, !noundef !5 ; 2 uses
  %i.e = and i32 %i.d, 33554432
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = and i32 %i.d, 67108864
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.i = call noundef zeroext i1 @_RNvXs6_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsF_NtNtCs4NRVxsYgnAr_4core3num7nonzeroINtB5_7NonZerojENtNtB9_3fmt5Debug3fmtCsjNt1Wzngcv_9ty_server.exit

bb.d:                                             ; preds = %bb.b
  %i.j = call noundef zeroext i1 @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsF_NtNtCs4NRVxsYgnAr_4core3num7nonzeroINtB5_7NonZerojENtNtB9_3fmt5Debug3fmtCsjNt1Wzngcv_9ty_server.exit

bb.e:                                             ; preds = %bb.b
  %i.k = call noundef zeroext i1 @_RNvXs8_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsF_NtNtCs4NRVxsYgnAr_4core3num7nonzeroINtB5_7NonZerojENtNtB9_3fmt5Debug3fmtCsjNt1Wzngcv_9ty_server.exit

_RNvXsF_NtNtCs4NRVxsYgnAr_4core3num7nonzeroINtB5_7NonZerojENtNtB9_3fmt5Debug3fmtCsjNt1Wzngcv_9ty_server.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i.i = phi i1 [ %i.j, %bb.d ], [ %i.k, %bb.e ], [ %i.i, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2483
  ret i1 %.sroa.0.0.in.i.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtNtB8_3num7nonzero7NonZerotENtB6_5Debug3fmtCsjNt1Wzngcv_9ty_server(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !align !40, !noundef !5
  %.val = load i16, ptr %i.b, align 2, !range !2489, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2490)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2490
  store i16 %.val, ptr %i.a, align 2, !noalias !2490
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i32, ptr %i.c, align 8, !alias.scope !2491, !noundef !5 ; 2 uses
  %i.e = and i32 %i.d, 33554432
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = and i32 %i.d, 67108864
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.i = call noundef zeroext i1 @_RNvXsm_NtNtCs4NRVxsYgnAr_4core3fmt3numtNtB7_8LowerHex3fmt(ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsF_NtNtCs4NRVxsYgnAr_4core3num7nonzeroINtB5_7NonZerotENtNtB9_3fmt5Debug3fmtCsjNt1Wzngcv_9ty_server.exit

bb.d:                                             ; preds = %bb.b
  %i.j = call noundef zeroext i1 @_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3imptNtB9_7Display3fmt(ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsF_NtNtCs4NRVxsYgnAr_4core3num7nonzeroINtB5_7NonZerotENtNtB9_3fmt5Debug3fmtCsjNt1Wzngcv_9ty_server.exit

bb.e:                                             ; preds = %bb.b
  %i.k = call noundef zeroext i1 @_RNvXso_NtNtCs4NRVxsYgnAr_4core3fmt3numtNtB7_8UpperHex3fmt(ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsF_NtNtCs4NRVxsYgnAr_4core3num7nonzeroINtB5_7NonZerotENtNtB9_3fmt5Debug3fmtCsjNt1Wzngcv_9ty_server.exit

_RNvXsF_NtNtCs4NRVxsYgnAr_4core3num7nonzeroINtB5_7NonZerotENtNtB9_3fmt5Debug3fmtCsjNt1Wzngcv_9ty_server.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i.i = phi i1 [ %i.j, %bb.d ], [ %i.k, %bb.e ], [ %i.i, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2490
  ret i1 %.sroa.0.0.in.i.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtNtB8_3num7nonzero7NonZeroyENtB6_5Debug3fmtCsjNt1Wzngcv_9ty_server(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !align !8, !noundef !5
  %.val = load i64, ptr %i.b, align 8, !range !38, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2496)
end_hunk_0
begin_hunk_1_@_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write10write_char:bb.a
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !2618, !nonnull !5, !noundef !5
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.b
  %i.aa = trunc nuw nsw i32 %1 to i8
  store i8 %i.aa, ptr %i.z, align 1
  br label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit

bb.d:                                             ; preds = %bb.b
  %i.ab = or disjoint i8 %i.n, -64
  store i8 %i.ab, ptr %i.i, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.l, ptr %i.ac, align 1
  br label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit

bb.e:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = or disjoint i8 %i.r, -32
  store i8 %i.ad, ptr %i.i, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.p, ptr %i.ae, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.l, ptr %i.af, align 1
  br label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.w, ptr %i.i, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.t, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.p, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  store i8 %i.l, ptr %i.ai, align 1
  br label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit

_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.03.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  %i.aj = add nuw i64 %.sroa.0.03.i, %i.b
  store i64 %i.aj, ptr %i.a, align 8, !alias.scope !2618
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  tail call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2), !noalias !2624
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !2625, !noundef !5 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8push_str.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !2625, !nonnull !5, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %.pre.i.i = load i64, ptr %i.a, align 8, !alias.scope !2625
  br label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8push_str.exit

_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8push_str.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %.pre.i.i, %bb.b ], [ %i.b, %bb.a ]
  %i.h = add i64 %i.g, %2
  store i64 %i.h, ptr %i.a, align 8, !alias.scope !2625
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.b, 67108864
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvXs6_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_RNvXs8_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs_NtCs3pBv9WGWlWf_12tracing_core8callsiteNtB4_15DefaultCallsiteNtB4_8Callsite8metadata(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #13 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !8, !noundef !5
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCs6nZeqdiIoCH_10serde_core2deNtNvXNvNtCs8w9c0syp1Hj_13ruff_notebook6schemase_1__NtBG_19RawNotebookMetadataNtB4_11Deserialize11deserialize9___VisitorNtB4_8Expected3fmtCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXs0_NvXNvNtCs8w9c0syp1Hj_13ruff_notebook6schemase_1__NtBa_19RawNotebookMetadataNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1k_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCs6nZeqdiIoCH_10serde_core2deNtNvXNvNtCs8w9c0syp1Hj_13ruff_notebook6schemasg_1__NtBG_10KernelspecNtB4_11Deserialize11deserialize9___VisitorNtB4_8Expected3fmtCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXs0_NvXNvNtCs8w9c0syp1Hj_13ruff_notebook6schemasg_1__NtBa_10KernelspecNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1b_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCs6nZeqdiIoCH_10serde_core2deNtNvXNvNtCs8w9c0syp1Hj_13ruff_notebook6schemasi_1__NtBG_12LanguageInfoNtB4_11Deserialize11deserialize9___VisitorNtB4_8Expected3fmtCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXs0_NvXNvNtCs8w9c0syp1Hj_13ruff_notebook6schemasi_1__NtBa_12LanguageInfoNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1d_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCs6nZeqdiIoCH_10serde_core2deNtNvXsf_Csl4BgoAJVhPh_3urlNtBH_3UrlNtB4_11Deserialize11deserialize10UrlVisitorNtB4_8Expected3fmtCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXNvXsf_Csl4BgoAJVhPh_3urlNtB8_3UrlNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB2_10UrlVisitorNtBB_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvXs_NtCsjNt1Wzngcv_9ty_server7sessionNtB4_13MutIndexGuardNtNtNtCs4NRVxsYgnAr_4core3ops5deref5Deref5deref(ptr noalias noundef readonly align 8 captures(ret: address, read_provenance) dereferenceable(40) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !noundef !5
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @322) #36
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, i64 } @_RNvXs_NtCslDNmBs4Oaup_11shellexpand7stringseNtNtB4_7wtraits12AsRefXstrExt11into_winputCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = insertvalue { ptr, i64 } poison, ptr %0, 0
  %i.b = insertvalue { ptr, i64 } %i.a, i64 %1, 1
  ret { ptr, i64 } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvXs_NtCslDNmBs4Oaup_11shellexpand7stringseNtNtB4_7wtraits12AsRefXstrExt9into_ocowCsjNt1Wzngcv_9ty_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %i.b, align 8
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtNtCs4NRVxsYgnAr_4core3ops5rangeINtB4_5RangejENtNtB8_3fmt5Debug3fmtCsjNt1Wzngcv_9ty_server(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !alias.scope !2630, !noundef !5 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %.split8

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.b, 67108864
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.split, label %_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt.exit

.split8:                                          ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvXs6_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.g, label %_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt.exit7, label %bb.c

.split:                                           ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.h, label %_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt.exit7, label %bb.c

_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt.exit: ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_RNvXs8_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.i, label %_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt.exit7, label %bb.c

bb.c:                                             ; preds = %_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt.exit, %.split, %.split8
  %i.j = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !5, !align !8, !noundef !5
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !invariant.load !5, !nonnull !5
  %i.o = tail call noundef zeroext i1 %i.n(ptr noundef nonnull %i.j, ptr noalias noundef nonnull readonly captures(address, read_provenance) @323, i64 noundef 2)
  br i1 %i.o, label %_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt.exit7, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.q = load i32, ptr %i.a, align 8, !alias.scope !2631, !noundef !5 ; 2 uses
  %i.r = and i32 %i.q, 33554432
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = and i32 %i.q, 67108864
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.v = tail call noundef zeroext i1 @_RNvXs6_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt.exit7

bb.g:                                             ; preds = %bb.e
  %i.w = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt.exit7

bb.h:                                             ; preds = %bb.e
  %i.x = tail call noundef zeroext i1 @_RNvXs8_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt.exit7

_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt.exit7: ; preds = %bb.h, %bb.g, %bb.f, %bb.c, %.split8, %.split, %_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt.exit
  %.sroa.0.0 = phi i1 [ %i.v, %bb.f ], [ true, %_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt.exit ], [ true, %bb.c ], [ true, %.split ], [ true, %.split8 ], [ %i.w, %bb.g ], [ %i.x, %bb.h ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define { ptr, i32 } @_RNvXs_NtNtNtNtCsjNt1Wzngcv_9ty_server6server3api13notifications10did_changeNtB4_28DidChangeTextDocumentHandlerNtNtB8_6traits23SyncNotificationHandler3run(ptr noalias noundef align 8 dereferenceable(776) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(120) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 10 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [40 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 11 uses
  %i.g = alloca [128 x i8], align 8               ; 4 uses
  %i.h = alloca [128 x i8], align 8               ; 11 uses
  %i.i = alloca [128 x i8], align 8               ; 14 uses
  %i.j = alloca [24 x i8], align 8                ; 9 uses
  %i.k = alloca [88 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.k, ptr noundef nonnull align 8 dereferenceable(88) %2, i64 88, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.m = load i32, ptr %i.l, align 8, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 704
  %.val.i = load ptr, ptr %i.o, align 8, !noalias !2657, !noundef !5 ; 2 uses
  %.not.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i, label %bb.b, label %_RNvMNtCsjNt1Wzngcv_9ty_server7sessionNtB2_7Session5index.exit.i, !prof !9

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @104) #36
          to label %.noexc unwind label %bb.bo

.noexc:                                           ; preds = %bb.b
  unreachable

_RNvMNtCsjNt1Wzngcv_9ty_server7sessionNtB2_7Session5index.exit.i: ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  invoke void @_RNvMNtNtCsjNt1Wzngcv_9ty_server7session5indexNtB2_5Index15document_handle(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.k)
          to label %_RNvMNtCsjNt1Wzngcv_9ty_server7sessionNtB2_7Session15document_handle.exit unwind label %bb.bo

_RNvMNtCsjNt1Wzngcv_9ty_server7sessionNtB2_7Session15document_handle.exit: ; preds = %_RNvMNtCsjNt1Wzngcv_9ty_server7sessionNtB2_7Session5index.exit.i
  invoke void @_RNvXNtNtCsjNt1Wzngcv_9ty_server6server3apiINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtB6_7session14DocumentHandleNtNtB1i_5index13DocumentErrorEINtB2_9LSPResultB1g_E17with_failure_codeB6_(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %i.h, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(128) %i.g, i32 noundef -32603)
          to label %bb.c unwind label %bb.bo

bb.c:                                             ; preds = %_RNvMNtCsjNt1Wzngcv_9ty_server7sessionNtB2_7Session15document_handle.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.q = load i32, ptr %i.h, align 8, !range !34, !noundef !5 ; 2 uses
  %i.r = icmp eq i32 %i.q, -1
  br i1 %i.r, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !5, !noundef !5
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.v = load i32, ptr %i.u, align 8, !range !42, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_ors30TextDocumentContentChangeEventENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_ors30TextDocumentContentChangeEventENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.thread unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_ors30TextDocumentContentChangeEventENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_ors30TextDocumentContentChangeEventEECsjNt1Wzngcv_9ty_server.exit unwind label %bb.bn

bb.g:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34
  unreachable

bb.h:                                             ; preds = %bb.c
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %.sroa.423.0.copyload = load i32, ptr %.sroa.423.0..sroa_idx, align 4
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.524.0.copyload = load ptr, ptr %.sroa.524.0..sroa_idx, align 8
  %.sroa.625.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.625.0.copyload = load i32, ptr %.sroa.625.0..sroa_idx, align 8
  %.sroa.726.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(108) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(108) %.sroa.726.0..sroa_idx, i64 108, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  store i32 %i.q, ptr %i.i, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 2 uses
  store i32 %.sroa.423.0.copyload, ptr %.sroa.412.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store ptr %.sroa.524.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.613.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i32 %.sroa.625.0.copyload, ptr %.sroa.613.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !2658)
  call void @llvm.experimental.noalias.scope.decl(metadata !2659)
  call void @llvm.experimental.noalias.scope.decl(metadata !2660)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 775
  %i.z = load i8, ptr %i.y, align 1, !range !33, !alias.scope !2659, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2661
  invoke fastcc void @_RNvMNtCsjNt1Wzngcv_9ty_server7sessionNtB2_7Session9index_mut(ptr noalias noundef align 8 captures(none) dereferenceable(40) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(776) %0)
          to label %bb.j unwind label %bb.i, !noalias !2662

.body29.i:                                        ; preds = %bb.ad, %bb.ac, %.body.i, %bb.i
  %.pn22.i = phi { ptr, i32 } [ %.pn.i, %.body.i ], [ %i.az, %bb.ac ], [ %i.ab, %bb.i ], [ %i.az, %bb.ad ] ; 2 uses
  %.sroa.09.0.i = phi i8 [ %.sroa.09.2.i, %.body.i ], [ %.sroa.09.4.i, %bb.ac ], [ %.sroa.09.1.i, %bb.i ], [ %.sroa.09.4.i, %bb.ad ]
  %i.aa = trunc nuw i8 %.sroa.09.0.i to i1
  br i1 %i.aa, label %.body29.thread.i, label %.body36

bb.i:                                             ; preds = %bb.ap, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsjNt1Wzngcv_9ty_server7session13MutIndexGuardEBF_.exit.i, %bb.af, %bb.h
  %.sroa.09.1.i = phi i8 [ 1, %bb.ap ], [ %.sroa.09.4.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsjNt1Wzngcv_9ty_server7session13MutIndexGuardEBF_.exit.i ], [ %.sroa.09.4.i, %bb.af ], [ 1, %bb.h ]
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %.body29.i

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2661
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 10 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !2663, !noalias !2661, !noundef !5
  %.not.i.i34 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i34, label %bb.k, label %_RNvXs0_NtCsjNt1Wzngcv_9ty_server7sessionNtB5_13MutIndexGuardNtNtNtCs4NRVxsYgnAr_4core3ops5deref8DerefMut9deref_mut.exit.i, !prof !9

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @203) #36
          to label %.noexc.i unwind label %bb.l, !noalias !2660

.noexc.i:                                         ; preds = %bb.k
  unreachable

.body.i:                                          ; preds = %bb.aw, %bb.at, %bb.u, %bb.r, %bb.m, %bb.l
  %.pn.i = phi { ptr, i32 } [ %i.af, %bb.m ], [ %i.ap, %bb.u ], [ %i.ae, %bb.l ], [ %i.an, %bb.r ], [ %i.br, %bb.at ], [ %i.bt, %bb.aw ]
  %.sroa.09.2.i = phi i8 [ 1, %bb.m ], [ 1, %bb.u ], [ %.sroa.09.3.i, %bb.l ], [ 1, %bb.r ], [ 1, %bb.at ], [ 1, %bb.aw ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsjNt1Wzngcv_9ty_server7session13MutIndexGuardEBF_(ptr noalias noundef align 8 dereferenceable(40) %i.e) #35
          to label %.body29.i unwind label %bb.ba, !noalias !2660

bb.l:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufECsjNt1Wzngcv_9ty_server.exit.i39.i, %bb.aa, %bb.y, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsjNt1Wzngcv_9ty_server8document11DocumentKeyEBF_.exit.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufECsjNt1Wzngcv_9ty_server.exit.i.i, %_RNvXs0_NtCsjNt1Wzngcv_9ty_server7sessionNtB5_13MutIndexGuardNtNtNtCs4NRVxsYgnAr_4core3ops5deref8DerefMut9deref_mut.exit.i, %bb.k
  %.sroa.09.3.i = phi i8 [ 1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufECsjNt1Wzngcv_9ty_server.exit.i39.i ], [ 0, %bb.aa ], [ 1, %bb.y ], [ 1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsjNt1Wzngcv_9ty_server8document11DocumentKeyEBF_.exit.i ], [ 1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufECsjNt1Wzngcv_9ty_server.exit.i.i ], [ 1, %_RNvXs0_NtCsjNt1Wzngcv_9ty_server7sessionNtB5_13MutIndexGuardNtNtNtCs4NRVxsYgnAr_4core3ops5deref8DerefMut9deref_mut.exit.i ], [ 1, %bb.k ]
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_RNvXs0_NtCsjNt1Wzngcv_9ty_server7sessionNtB5_13MutIndexGuardNtNtNtCs4NRVxsYgnAr_4core3ops5deref8DerefMut9deref_mut.exit.i: ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2661
  invoke void @_RNvMs_NtCsjNt1Wzngcv_9ty_server8documentNtB4_11DocumentKey8from_uri(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %.sroa.5.0..sroa_idx)
          to label %_RNvMsa_NtCsjNt1Wzngcv_9ty_server7sessionNtB5_14DocumentHandle3key.exit.i unwind label %bb.l, !noalias !2660

_RNvMsa_NtCsjNt1Wzngcv_9ty_server7sessionNtB5_14DocumentHandle3key.exit.i: ; preds = %_RNvXs0_NtCsjNt1Wzngcv_9ty_server7sessionNtB5_13MutIndexGuardNtNtNtCs4NRVxsYgnAr_4core3ops5deref8DerefMut9deref_mut.exit.i
  invoke void @_RNvMNtNtCsjNt1Wzngcv_9ty_server7session5indexNtB2_5Index12document_mut(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c)
          to label %bb.n unwind label %bb.m, !noalias !2660

bb.m:                                             ; preds = %bb.o, %_RNvMsa_NtCsjNt1Wzngcv_9ty_server7sessionNtB5_14DocumentHandle3key.exit.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsjNt1Wzngcv_9ty_server8document11DocumentKeyEBF_(ptr noalias noundef align 8 dereferenceable(32) %i.c) #35
          to label %.body.i unwind label %bb.ba, !noalias !2660

bb.n:                                             ; preds = %_RNvMsa_NtCsjNt1Wzngcv_9ty_server7sessionNtB5_14DocumentHandle3key.exit.i
  %i.ag = load i64, ptr %i.d, align 8, !range !22, !noalias !2661, !noundef !5 ; 2 uses
  %.not.i = icmp eq i64 %i.ag, 2
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !2661 ; 2 uses
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.sroa.516.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2661
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.516.0..sroa_idx.i, i64 16, i1 false), !noalias !2661
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2661
  store i64 %i.ag, ptr %i.a, align 8, !noalias !2661
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.ai, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !2661
  %i.aj = invoke noundef nonnull ptr @_RNvXs_NtCsiXichZnxgbf_6anyhow5errorNtB6_5ErrorINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtNtCsjNt1Wzngcv_9ty_server7session5index13DocumentErrorE4fromB1p_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.ar unwind label %bb.m, !noalias !2660

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2661
  %i.ak = load i64, ptr %i.c, align 8, !range !14, !alias.scope !2664, !noalias !2661, !noundef !5
  %i.al = icmp eq i64 %i.ak, 0
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  br i1 %i.al, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufECsjNt1Wzngcv_9ty_server.exit.i.i unwind label %bb.r, !noalias !2660

bb.r:                                             ; preds = %bb.q
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %.body.i unwind label %bb.s, !noalias !2660

bb.s:                                             ; preds = %bb.r
  %i.ao = landingpad { ptr, i32 }
end_hunk_1
