Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/foundations-rs/original/foundations-0829c0e58918e871.foundations.822e5dc8be635b49-cgu.04?download=true
inline.NumInlined: 1416
inline.NumDeleted: 767
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 14
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RINvMNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_bodyINtB3_7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtCs3oUPovFnLWP_4core5error5ErrorNtNtB2p_6marker4SendNtB2W_4SyncEL_EE3newINtNtB5_7map_err6MapErrINtNtB7_4full4FullB1b_ENvYzINtNtB2p_7convert4IntoB1L_E4intoEECsbaWXNhtWAp9_11foundations:bb.a
  %i.m = load i64, ptr %i.l, align 8, !dbg !1339, !alias.scope !1323, !noundef !718
  invoke void %i.i(ptr noundef %i.g, ptr noundef %i.k, i64 noundef %i.m)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsefgzIPu8p8D_14http_body_util11combinators7map_err6MapErrINtNtBI_4full4FullNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesENvYzINtNtB4_7convert4IntoINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB3R_4SyncEL_EE4intoEECsbaWXNhtWAp9_11foundations.exit unwind label %bb.e, !dbg !1337, !inline_history !1324

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #36, !dbg !1340
  unreachable, !dbg !1340

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsefgzIPu8p8D_14http_body_util11combinators7map_err6MapErrINtNtBI_4full4FullNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesENvYzINtNtB4_7convert4IntoINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB3R_4SyncEL_EE4intoEECsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.c, !dbg !1340

_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxINtNtNtCsefgzIPu8p8D_14http_body_util11combinators7map_err6MapErrINtNtBL_4full4FullNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesENvYzINtNtCs3oUPovFnLWP_4core7convert4IntoIBv_DNtNtB2J_5error5ErrorNtNtB2J_6marker4SendNtB3G_4SyncEL_EE4intoEE3newCsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !dbg !1341
  %i.o = insertvalue { ptr, ptr } poison, ptr %i.a, 0, !dbg !1342
  %i.p = insertvalue { ptr, ptr } %i.o, ptr @2, 1, !dbg !1342
  ret { ptr, ptr } %i.p, !dbg !1342
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef { ptr, ptr } @_RINvMNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_bodyINtB3_7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtCs3oUPovFnLWP_4core5error5ErrorNtNtB2p_6marker4SendNtB2W_4SyncEL_EE3newINtNtB5_7map_err6MapErrINtNtB7_5empty5EmptyB1b_ENvYzINtNtB2p_7convert4IntoB1L_E4intoEECsbaWXNhtWAp9_11foundations() unnamed_addr #2 personality ptr @rust_eh_personality !dbg !1343 {
bb.a:
  ret { ptr, ptr } { ptr inttoptr (i64 1 to ptr), ptr @3 }, !dbg !1344
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvMs2_NtCshWGQb3rdfV0_9once_cell3impINtB6_8OnceCellINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsbaWXNhtWAp9_11foundations8security4RuleEE10initializeNCINvMs4_NtB8_4syncINtB2s_8OnceCellBP_E11get_or_initNCNvMs9_B2s_INtB2s_4LazyBP_E5force0E0NtNvMs4_B2s_IB2D_pE11get_or_init4VoidEB1q_(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %1) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !1345 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !1351
  store ptr %1, ptr %i.d, align 8, !dbg !1352
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !1353
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1354
  store ptr %i.e, ptr %i.c, align 8, !dbg !1354
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !1355
  store ptr %i.d, ptr %i.b, align 8, !dbg !1355
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !1355
  store ptr %i.c, ptr %i.f, align 8, !dbg !1355
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !1355
  store ptr %i.a, ptr %i.g, align 8, !dbg !1355
  call void @_RNvNtCshWGQb3rdfV0_9once_cell3imp18initialize_or_wait(ptr noundef nonnull align 8 %0, ptr noundef nonnull %i.b, ptr nonnull @7) #37, !dbg !1356
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !1357
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !1358
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !1359
  ret void, !dbg !1360
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef ptr @_RINvMs2_NtCshWGQb3rdfV0_9once_cell3impINtB6_8OnceCellINtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtCsbaWXNhtWAp9_11foundations9telemetry15memory_profiler14MemoryProfilerEE10initializeNCNvMB1t_B1r_16get_or_init_with0NtCs7XllS0bOcsN_6anyhow5ErrorEB1x_(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(2) %1) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !1361 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 7 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !1372
  store ptr %1, ptr %i.d, align 8, !dbg !1373
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !1374
  store ptr null, ptr %i.c, align 8, !dbg !1375
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !1376
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1377
  store ptr %i.e, ptr %i.b, align 8, !dbg !1377
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !1378
  store ptr %i.d, ptr %i.a, align 8, !dbg !1378
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !1378
  store ptr %i.b, ptr %i.f, align 8, !dbg !1378
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !1378
  store ptr %i.c, ptr %i.g, align 8, !dbg !1378
  invoke void @_RNvNtCshWGQb3rdfV0_9once_cell3imp18initialize_or_wait(ptr noundef nonnull align 8 %0, ptr noundef nonnull %i.a, ptr nonnull @8)
          to label %bb.d unwind label %bb.b, !dbg !1379

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %i.c, align 8, !dbg !1380, !alias.scope !1371, !noundef !718
  %i.j = icmp eq ptr %i.i, null, !dbg !1380
  br i1 %i.j, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtCs7XllS0bOcsN_6anyhow5ErrorEECsbaWXNhtWAp9_11foundations.exit, label %bb.c, !dbg !1380

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvXs4_NtCs7XllS0bOcsN_6anyhow5errorNtB7_5ErrorNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtCs7XllS0bOcsN_6anyhow5ErrorEECsbaWXNhtWAp9_11foundations.exit unwind label %bb.e, !dbg !1381

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1382
  %i.k = load ptr, ptr %i.c, align 8, !dbg !1383, !noundef !718
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !1384
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !1385
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !1386
  ret ptr %i.k, !dbg !1387

bb.e:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #36, !dbg !1388
  unreachable, !dbg !1388

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtCs7XllS0bOcsN_6anyhow5ErrorEECsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.h, !dbg !1388
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsa_NtCs55GSN77t6jg_9trackable5errorINtB6_14TrackableErrorNtNtCs7b3ymaOY8oW_12thrift_codec5error9ErrorKindE3newINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtCs3oUPovFnLWP_4core5error5ErrorNtNtB2t_6marker4SendNtB30_4SyncEL_EECsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, i1 noundef zeroext %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !1389 {
bb.a:
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #35, !dbg !1404, !noalias !1402
  %i.a = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, 1633) 32, i64 noundef range(i64 1, 9) 8) #35, !dbg !1405, !noalias !1402 ; 6 uses
  %i.b = icmp eq ptr %i.a, null, !dbg !1406
  br i1 %i.b, label %bb.b, label %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerIBv_DNtNtCs3oUPovFnLWP_4core5error5ErrorNtNtB19_6marker4SendNtB1G_4SyncEL_EEE3newCsbaWXNhtWAp9_11foundations.exit, !dbg !1407, !prof !764

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #34
          to label %.noexc unwind label %bb.c, !dbg !1408

.noexc:                                           ; preds = %bb.b
  unreachable, !dbg !1408

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerINtNtBG_5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1S_4SyncEL_EEECsbaWXNhtWAp9_11foundations(ptr nonnull %2, ptr nonnull %3) #38
          to label %bb.e unwind label %bb.d, !dbg !1409

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #36, !dbg !1410
  unreachable, !dbg !1410

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.c, !dbg !1410

_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerIBv_DNtNtCs3oUPovFnLWP_4core5error5ErrorNtNtB19_6marker4SendNtB1G_4SyncEL_EEE3newCsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.a
  store i64 1, ptr %i.a, align 8, !dbg !1411
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !1411
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !1411
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !1411
  store ptr %2, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !1411
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !1411
  store ptr %3, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !1411
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !1412
  %i.f = zext i1 %1 to i8, !dbg !1412
  store i8 %i.f, ptr %i.e, align 8, !dbg !1412
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !1412
  store ptr %i.a, ptr %i.g, align 8, !dbg !1412
  store i64 0, ptr %0, align 8, !dbg !1412
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1412
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.44.0..sroa_idx, align 8, !dbg !1412
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !1412
  store i64 0, ptr %.sroa.55.0..sroa_idx, align 8, !dbg !1412
  ret void, !dbg !1413
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCs55GSN77t6jg_9trackable7HistoryNtBE_8LocationEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !35 {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtCs55GSN77t6jg_9trackable8LocationENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtCs55GSN77t6jg_9trackable8LocationEECsbaWXNhtWAp9_11foundations.exit unwind label %bb.b, !dbg !1417

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtCs55GSN77t6jg_9trackable8LocationENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtCs55GSN77t6jg_9trackable8LocationEECsbaWXNhtWAp9_11foundations.exit.i unwind label %bb.c, !dbg !1418

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #36, !dbg !1417
  unreachable, !dbg !1417

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtCs55GSN77t6jg_9trackable8LocationEECsbaWXNhtWAp9_11foundations.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !1417

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtCs55GSN77t6jg_9trackable8LocationEECsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtCs55GSN77t6jg_9trackable8LocationENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0), !dbg !1419
  ret void, !dbg !1420
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsdra7vpBasQ9_7dashmap7DashMapINtNtCs1xwejQucwHj_5alloc6borrow3CoweENtNtNtCsgtgatFLTNh8_8governor5state9in_memory13InMemoryStateEECsbaWXNhtWAp9_11foundations(ptr %.0.val, i64 %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !38 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %cond = icmp eq i64 %.8.val, 0, !dbg !1445
  br i1 %cond, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSINtNtCs5lJabBKj2Vx_15crossbeam_utils12cache_padded11CachePaddedINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsdra7vpBasQ9_7dashmap4lock9RawRwLockINtNtNtCscYIHOBAkUpv_9hashbrown3raw5inner8RawTableTINtNtBG_6borrow3CoweEINtNtB2W_4util11SharedValueNtNtNtCsgtgatFLTNh8_8governor5state9in_memory13InMemoryStateEEEEEEECsbaWXNhtWAp9_11foundations.exit, label %.lr.ph, !dbg !1445

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5lJabBKj2Vx_15crossbeam_utils12cache_padded11CachePaddedINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsdra7vpBasQ9_7dashmap4lock9RawRwLockINtNtNtCscYIHOBAkUpv_9hashbrown3raw5inner8RawTableTINtNtCs1xwejQucwHj_5alloc6borrow3CoweEINtNtB2m_4util11SharedValueNtNtNtCsgtgatFLTNh8_8governor5state9in_memory13InMemoryStateEEEEEECsbaWXNhtWAp9_11foundations.exit.i.i: ; preds = %.lr.ph
  %i.a = icmp eq i64 %i.c, %.8.val, !dbg !1445
  br i1 %i.a, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs5lJabBKj2Vx_15crossbeam_utils12cache_padded11CachePaddedINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsdra7vpBasQ9_7dashmap4lock9RawRwLockINtNtNtCscYIHOBAkUpv_9hashbrown3raw5inner8RawTableTINtNtCs1xwejQucwHj_5alloc6borrow3CoweEINtNtB2n_4util11SharedValueNtNtNtCsgtgatFLTNh8_8governor5state9in_memory13InMemoryStateEEEEEECsbaWXNhtWAp9_11foundations.exit.i, label %.lr.ph, !dbg !1445

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5lJabBKj2Vx_15crossbeam_utils12cache_padded11CachePaddedINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsdra7vpBasQ9_7dashmap4lock9RawRwLockINtNtNtCscYIHOBAkUpv_9hashbrown3raw5inner8RawTableTINtNtCs1xwejQucwHj_5alloc6borrow3CoweEINtNtB2m_4util11SharedValueNtNtNtCsgtgatFLTNh8_8governor5state9in_memory13InMemoryStateEEEEEECsbaWXNhtWAp9_11foundations.exit.i.i
  %.sroa.0.0.i.i1 = phi i64 [ %i.c, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5lJabBKj2Vx_15crossbeam_utils12cache_padded11CachePaddedINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsdra7vpBasQ9_7dashmap4lock9RawRwLockINtNtNtCscYIHOBAkUpv_9hashbrown3raw5inner8RawTableTINtNtCs1xwejQucwHj_5alloc6borrow3CoweEINtNtB2m_4util11SharedValueNtNtNtCsgtgatFLTNh8_8governor5state9in_memory13InMemoryStateEEEEEECsbaWXNhtWAp9_11foundations.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw [128 x i8], ptr %.0.val, i64 %.sroa.0.0.i.i1, !dbg !1445
  %i.c = add nuw nsw i64 %.sroa.0.0.i.i1, 1, !dbg !1445 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !1446
  invoke void @_RNvXsf_NtNtCscYIHOBAkUpv_9hashbrown3raw5innerINtB5_8RawTableTINtNtCs1xwejQucwHj_5alloc6borrow3CoweEINtNtCsdra7vpBasQ9_7dashmap4util11SharedValueNtNtNtCsgtgatFLTNh8_8governor5state9in_memory13InMemoryStateEEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5lJabBKj2Vx_15crossbeam_utils12cache_padded11CachePaddedINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsdra7vpBasQ9_7dashmap4lock9RawRwLockINtNtNtCscYIHOBAkUpv_9hashbrown3raw5inner8RawTableTINtNtCs1xwejQucwHj_5alloc6borrow3CoweEINtNtB2m_4util11SharedValueNtNtNtCsgtgatFLTNh8_8governor5state9in_memory13InMemoryStateEEEEEECsbaWXNhtWAp9_11foundations.exit.i.i unwind label %bb.b, !dbg !1447

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5lJabBKj2Vx_15crossbeam_utils12cache_padded11CachePaddedINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsdra7vpBasQ9_7dashmap4lock9RawRwLockINtNtNtCscYIHOBAkUpv_9hashbrown3raw5inner8RawTableTINtNtCs1xwejQucwHj_5alloc6borrow3CoweEINtNtB2m_4util11SharedValueNtNtNtCsgtgatFLTNh8_8governor5state9in_memory13InMemoryStateEEEEEECsbaWXNhtWAp9_11foundations.exit7.i.i: ; preds = %.lr.ph3
  %i.e = add nuw nsw i64 %.sroa.0.1.i.i2, 1, !dbg !1445 ; 2 uses
  %i.f = icmp eq i64 %i.e, %.8.val, !dbg !1445
  br i1 %i.f, label %.body.i, label %.lr.ph3, !dbg !1445

bb.b:                                             ; preds = %.lr.ph
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = icmp eq i64 %i.c, %.8.val, !dbg !1445
  br i1 %i.h, label %.body.i, label %.lr.ph3, !dbg !1445

.lr.ph3:                                          ; preds = %bb.b, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5lJabBKj2Vx_15crossbeam_utils12cache_padded11CachePaddedINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsdra7vpBasQ9_7dashmap4lock9RawRwLockINtNtNtCscYIHOBAkUpv_9hashbrown3raw5inner8RawTableTINtNtCs1xwejQucwHj_5alloc6borrow3CoweEINtNtB2m_4util11SharedValueNtNtNtCsgtgatFLTNh8_8governor5state9in_memory13InMemoryStateEEEEEECsbaWXNhtWAp9_11foundations.exit7.i.i
  %.sroa.0.1.i.i2 = phi i64 [ %i.e, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5lJabBKj2Vx_15crossbeam_utils12cache_padded11CachePaddedINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsdra7vpBasQ9_7dashmap4lock9RawRwLockINtNtNtCscYIHOBAkUpv_9hashbrown3raw5inner8RawTableTINtNtCs1xwejQucwHj_5alloc6borrow3CoweEINtNtB2m_4util11SharedValueNtNtNtCsgtgatFLTNh8_8governor5state9in_memory13InMemoryStateEEEEEECsbaWXNhtWAp9_11foundations.exit7.i.i ], [ %i.c, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw [128 x i8], ptr %.0.val, i64 %.sroa.0.1.i.i2, !dbg !1445
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !1448
  invoke void @_RNvXsf_NtNtCscYIHOBAkUpv_9hashbrown3raw5innerINtB5_8RawTableTINtNtCs1xwejQucwHj_5alloc6borrow3CoweEINtNtCsdra7vpBasQ9_7dashmap4util11SharedValueNtNtNtCsgtgatFLTNh8_8governor5state9in_memory13InMemoryStateEEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5lJabBKj2Vx_15crossbeam_utils12cache_padded11CachePaddedINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsdra7vpBasQ9_7dashmap4lock9RawRwLockINtNtNtCscYIHOBAkUpv_9hashbrown3raw5inner8RawTableTINtNtCs1xwejQucwHj_5alloc6borrow3CoweEINtNtB2m_4util11SharedValueNtNtNtCsgtgatFLTNh8_8governor5state9in_memory13InMemoryStateEEEEEECsbaWXNhtWAp9_11foundations.exit7.i.i unwind label %bb.c, !dbg !1449

bb.c:                                             ; preds = %.lr.ph3
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #36, !dbg !1445
  unreachable, !dbg !1445

.body.i:                                          ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5lJabBKj2Vx_15crossbeam_utils12cache_padded11CachePaddedINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsdra7vpBasQ9_7dashmap4lock9RawRwLockINtNtNtCscYIHOBAkUpv_9hashbrown3raw5inner8RawTableTINtNtCs1xwejQucwHj_5alloc6borrow3CoweEINtNtB2m_4util11SharedValueNtNtNtCsgtgatFLTNh8_8governor5state9in_memory13InMemoryStateEEEEEECsbaWXNhtWAp9_11foundations.exit7.i.i, %bb.b
  %i.l = shl nuw nsw i64 %.8.val, 7, !dbg !1450
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.l, i64 noundef 128) #35, !dbg !1451
  resume { ptr, i32 } %i.g, !dbg !1452

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs5lJabBKj2Vx_15crossbeam_utils12cache_padded11CachePaddedINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsdra7vpBasQ9_7dashmap4lock9RawRwLockINtNtNtCscYIHOBAkUpv_9hashbrown3raw5inner8RawTableTINtNtCs1xwejQucwHj_5alloc6borrow3CoweEINtNtB2n_4util11SharedValueNtNtNtCsgtgatFLTNh8_8governor5state9in_memory13InMemoryStateEEEEEECsbaWXNhtWAp9_11foundations.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5lJabBKj2Vx_15crossbeam_utils12cache_padded11CachePaddedINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsdra7vpBasQ9_7dashmap4lock9RawRwLockINtNtNtCscYIHOBAkUpv_9hashbrown3raw5inner8RawTableTINtNtCs1xwejQucwHj_5alloc6borrow3CoweEINtNtB2m_4util11SharedValueNtNtNtCsgtgatFLTNh8_8governor5state9in_memory13InMemoryStateEEEEEECsbaWXNhtWAp9_11foundations.exit.i.i
  %i.m = shl nuw nsw i64 %.8.val, 7, !dbg !1453
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.m, i64 noundef 128) #35, !dbg !1454
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSINtNtCs5lJabBKj2Vx_15crossbeam_utils12cache_padded11CachePaddedINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsdra7vpBasQ9_7dashmap4lock9RawRwLockINtNtNtCscYIHOBAkUpv_9hashbrown3raw5inner8RawTableTINtNtBG_6borrow3CoweEINtNtB2W_4util11SharedValueNtNtNtCsgtgatFLTNh8_8governor5state9in_memory13InMemoryStateEEEEEEECsbaWXNhtWAp9_11foundations.exit, !dbg !1455

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSINtNtCs5lJabBKj2Vx_15crossbeam_utils12cache_padded11CachePaddedINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsdra7vpBasQ9_7dashmap4lock9RawRwLockINtNtNtCscYIHOBAkUpv_9hashbrown3raw5inner8RawTableTINtNtBG_6borrow3CoweEINtNtB2W_4util11SharedValueNtNtNtCsgtgatFLTNh8_8governor5state9in_memory13InMemoryStateEEEEEEECsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs5lJabBKj2Vx_15crossbeam_utils12cache_padded11CachePaddedINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsdra7vpBasQ9_7dashmap4lock9RawRwLockINtNtNtCscYIHOBAkUpv_9hashbrown3raw5inner8RawTableTINtNtCs1xwejQucwHj_5alloc6borrow3CoweEINtNtB2n_4util11SharedValueNtNtNtCsgtgatFLTNh8_8governor5state9in_memory13InMemoryStateEEEEEECsbaWXNhtWAp9_11foundations.exit.i
  ret void, !dbg !1456
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNCNvMs1_NtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc7boundedINtBM_6SenderpE13reserve_inner018WakeReceiverOnDropINtNtNtCsdBNFPP92xfl_5tower6buffer7message7MessageINtNtCs74LoFwSioHw_4http7request7RequestNtNtCsfUalJnHtWpm_5tonic4body4BodyEINtNtB4_3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB3c_8response8ResponseB3L_EIB4B_DNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB75_4SyncEL_EEB73_EL_EEEEECsbaWXNhtWAp9_11foundations(ptr nofree readonly captures(none) %.0.val) unnamed_addr #1 !dbg !54 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = load ptr, ptr %.0.val, align 8, !dbg !1467, !nonnull !718, !noundef !718
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 448, !dbg !1468 ; 2 uses
  %i.c = tail call noundef zeroext i1 @_RNvXse_NtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc4chanNtNtB7_7bounded9SemaphoreNtB5_9Semaphore9is_closed(ptr noundef nonnull align 8 %i.b), !dbg !1469
  br i1 %i.c, label %bb.b, label %_RNvXNCNvMs1_NtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc7boundedINtBa_6SenderpE13reserve_inner0INtB2_18WakeReceiverOnDropINtNtNtCsdBNFPP92xfl_5tower6buffer7message7MessageINtNtCs74LoFwSioHw_4http7request7RequestNtNtCsfUalJnHtWpm_5tonic4body4BodyEINtNtCs3oUPovFnLWP_4core3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtB3T_6future6future6Futurep6OutputINtNtB3T_6result6ResultINtNtB2G_8response8ResponseB3f_EIB4l_DNtNtB3T_5error5ErrorNtNtB3T_6marker4SendNtB6S_4SyncEL_EEB6Q_EL_EEEENtNtNtB3T_3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations.exit, !dbg !1470

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvXse_NtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc4chanNtNtB7_7bounded9SemaphoreNtB5_9Semaphore7is_idle(ptr noundef nonnull align 8 %i.b), !dbg !1471
  br i1 %i.d, label %bb.c, label %_RNvXNCNvMs1_NtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc7boundedINtBa_6SenderpE13reserve_inner0INtB2_18WakeReceiverOnDropINtNtNtCsdBNFPP92xfl_5tower6buffer7message7MessageINtNtCs74LoFwSioHw_4http7request7RequestNtNtCsfUalJnHtWpm_5tonic4body4BodyEINtNtCs3oUPovFnLWP_4core3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtB3T_6future6future6Futurep6OutputINtNtB3T_6result6ResultINtNtB2G_8response8ResponseB3f_EIB4l_DNtNtB3T_5error5ErrorNtNtB3T_6marker4SendNtB6S_4SyncEL_EEB6Q_EL_EEEENtNtNtB3T_3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations.exit, !dbg !1472

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %.0.val, align 8, !dbg !1473, !nonnull !718, !noundef !718
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 256, !dbg !1474
  tail call void @_RNvMs0_NtNtNtCs3zuhHmEJ01l_5tokio4sync4task12atomic_wakerNtB5_11AtomicWaker4wake(ptr noundef nonnull align 8 %i.f), !dbg !1475
  br label %_RNvXNCNvMs1_NtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc7boundedINtBa_6SenderpE13reserve_inner0INtB2_18WakeReceiverOnDropINtNtNtCsdBNFPP92xfl_5tower6buffer7message7MessageINtNtCs74LoFwSioHw_4http7request7RequestNtNtCsfUalJnHtWpm_5tonic4body4BodyEINtNtCs3oUPovFnLWP_4core3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtB3T_6future6future6Futurep6OutputINtNtB3T_6result6ResultINtNtB2G_8response8ResponseB3f_EIB4l_DNtNtB3T_5error5ErrorNtNtB3T_6marker4SendNtB6S_4SyncEL_EEB6Q_EL_EEEENtNtNtB3T_3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations.exit, !dbg !1476

_RNvXNCNvMs1_NtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc7boundedINtBa_6SenderpE13reserve_inner0INtB2_18WakeReceiverOnDropINtNtNtCsdBNFPP92xfl_5tower6buffer7message7MessageINtNtCs74LoFwSioHw_4http7request7RequestNtNtCsfUalJnHtWpm_5tonic4body4BodyEINtNtCs3oUPovFnLWP_4core3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtB3T_6future6future6Futurep6OutputINtNtB3T_6result6ResultINtNtB2G_8response8ResponseB3f_EIB4l_DNtNtB3T_5error5ErrorNtNtB3T_6marker4SendNtB6S_4SyncEL_EEB6Q_EL_EEEENtNtNtB3T_3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void, !dbg !1477
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_3pin14PinMacroHelperINtNtNtCsfUalJnHtWpm_5tonic5codec6decode9StreamingNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v126ExportTraceServiceResponseEEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !63 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1501), !dbg !1502
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216, !dbg !1503
  %.val.i = load ptr, ptr %i.a, align 8, !dbg !1503, !alias.scope !1501 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 224, !dbg !1503
  %.val1.i = load ptr, ptr %i.b, align 8, !dbg !1503, !alias.scope !1501, !nonnull !718, !align !826, !noundef !718 ; 5 uses
  %i.c = load ptr, ptr %.val1.i, align 8, !dbg !1504, !invariant.load !718, !noalias !1501 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.c, null, !dbg !1504
  br i1 %.not.i.i.i, label %bb.c, label %bb.b, !dbg !1504

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.c(ptr noundef nonnull %.val.i)
          to label %bb.c unwind label %bb.e, !dbg !1504, !noalias !1501

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8, !dbg !1505
  %i.e = load i64, ptr %i.d, align 8, !dbg !1505, !range !827, !invariant.load !718, !noalias !1501 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0, !dbg !1506
  br i1 %i.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsfUalJnHtWpm_5tonic5codec6decode9StreamingNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v126ExportTraceServiceResponseEECsbaWXNhtWAp9_11foundations.exit, label %bb.d, !dbg !1506

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16, !dbg !1505
  %i.h = load i64, ptr %i.g, align 8, !dbg !1507, !range !828, !invariant.load !718, !noalias !1501
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.e, i64 noundef range(i64 1, 536870913) %i.h) #35, !dbg !1508, !noalias !1501
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsfUalJnHtWpm_5tonic5codec6decode9StreamingNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v126ExportTraceServiceResponseEECsbaWXNhtWAp9_11foundations.exit, !dbg !1509

bb.e:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8, !dbg !1510
  %i.k = load i64, ptr %i.j, align 8, !dbg !1510, !range !827, !invariant.load !718, !noalias !1501 ; 2 uses
  %i.l = icmp eq i64 %i.k, 0, !dbg !1511
  br i1 %i.l, label %.body.i, label %bb.f, !dbg !1511

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16, !dbg !1510
  %i.n = load i64, ptr %i.m, align 8, !dbg !1512, !range !828, !invariant.load !718, !noalias !1501
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.k, i64 noundef range(i64 1, 536870913) %i.n) #35, !dbg !1513, !noalias !1501
  br label %.body.i, !dbg !1514

.body.i:                                          ; preds = %bb.f, %bb.e
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsfUalJnHtWpm_5tonic5codec6decode14StreamingInnerECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %0) #38
          to label %bb.h unwind label %bb.g, !dbg !1503

bb.g:                                             ; preds = %.body.i
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #36, !dbg !1503
  unreachable, !dbg !1503

bb.h:                                             ; preds = %.body.i
  resume { ptr, i32 } %i.i, !dbg !1503

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsfUalJnHtWpm_5tonic5codec6decode9StreamingNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v126ExportTraceServiceResponseEECsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.c, %bb.d
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsfUalJnHtWpm_5tonic5codec6decode14StreamingInnerECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %0), !dbg !1503
  ret void, !dbg !1502
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestNtNtCsfUalJnHtWpm_5tonic6status6StatusEEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !1515 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !1525, !range !832, !noundef !718 ; 2 uses
  %i.b = icmp eq i64 %i.a, -2, !dbg !1525
  br i1 %i.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestNtNtCsfUalJnHtWpm_5tonic6status6StatusEECsbaWXNhtWAp9_11foundations.exit, label %bb.b, !dbg !1525

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestNtNtCsfUalJnHtWpm_5tonic6status6StatusEECsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.f, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestECsbaWXNhtWAp9_11foundations.exit.i, %bb.a
  ret void, !dbg !1525

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1524), !dbg !1525
  %.not.i = icmp eq i64 %i.a, -1, !dbg !1526
  br i1 %.not.i, label %bb.f, label %bb.c, !dbg !1526

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic5trace2v113ResourceSpansENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestECsbaWXNhtWAp9_11foundations.exit.i unwind label %bb.d, !dbg !1527

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic5trace2v113ResourceSpansENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic5trace2v113ResourceSpansEECsbaWXNhtWAp9_11foundations.exit.i.i.i unwind label %bb.e, !dbg !1528

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #36, !dbg !1527
  unreachable, !dbg !1527

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic5trace2v113ResourceSpansEECsbaWXNhtWAp9_11foundations.exit.i.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c, !dbg !1527

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestECsbaWXNhtWAp9_11foundations.exit.i: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic5trace2v113ResourceSpansENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0), !dbg !1529
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestNtNtCsfUalJnHtWpm_5tonic6status6StatusEECsbaWXNhtWAp9_11foundations.exit, !dbg !1526

bb.f:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1526
  %.val.i = load ptr, ptr %i.e, align 8, !dbg !1526, !alias.scope !1524, !nonnull !718, !noundef !718
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfUalJnHtWpm_5tonic6status6StatusECsbaWXNhtWAp9_11foundations(ptr nonnull %.val.i), !dbg !1526, !noalias !1524
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestNtNtCsfUalJnHtWpm_5tonic6status6StatusEECsbaWXNhtWAp9_11foundations.exit, !dbg !1526
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtNtCsC6fiw49j4l_12sentry_types8protocol2v713ClientSdkInfoEEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !1530 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !1549, !range !832, !noundef !718
  %switch = icmp ugt i64 %i.a, -3, !dbg !1549
  br i1 %switch, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtNtCsC6fiw49j4l_12sentry_types8protocol2v713ClientSdkInfoEECsbaWXNhtWAp9_11foundations.exit, label %bb.b, !dbg !1549

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtNtCsC6fiw49j4l_12sentry_types8protocol2v713ClientSdkInfoEECsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsC6fiw49j4l_12sentry_types8protocol2v713ClientSdkInfoECsbaWXNhtWAp9_11foundations.exit.i
  ret void, !dbg !1549

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsbaWXNhtWAp9_11foundations.exit.i.i.i unwind label %bb.c, !dbg !1550

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %0)
          to label %.body.i.i unwind label %bb.d, !dbg !1551

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #36, !dbg !1550
  unreachable, !dbg !1550

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsbaWXNhtWAp9_11foundations.exit.i.i.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsbaWXNhtWAp9_11foundations.exit.i.i unwind label %bb.e, !dbg !1552

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsbaWXNhtWAp9_11foundations.exit.i.i.i
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i, !dbg !1553
end_hunk_0
begin_hunk_1_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvMs8_NtNtCs3zuhHmEJ01l_5tokio4sync5mutexINtBJ_5MutexINtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel8ReceiverINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEE7acquire0EB1D_:bb.a
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #36, !dbg !3921
  unreachable, !dbg !3921

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs3zuhHmEJ01l_5tokio4sync15batch_semaphore6WaiterECsbaWXNhtWAp9_11foundations.exit.i: ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.d, !dbg !3921
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvMs_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channelNtBI_18SharedSpanReceiver9recv_many0EBO_(ptr noundef nonnull align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !3926 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !3968
  %i.b = load i8, ptr %i.a, align 8, !dbg !3968, !range !869, !noundef !718
  switch i8 %i.b, label %common.ret [
    i8 4, label %bb.k
    i8 3, label %bb.b
  ], !dbg !3968

common.ret:                                       ; preds = %bb.i, %bb.h, %bb.d, %bb.c, %bb.b, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsl4QKJNSbRGn_17prometheus_client7metrics5gauge5GaugeECsbaWXNhtWAp9_11foundations.exit, %bb.a
  ret void, !dbg !3968

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176, !dbg !3969
  %i.d = load i8, ptr %i.c, align 8, !dbg !3969, !range !872, !noundef !718
  %cond.i = icmp eq i8 %i.d, 3, !dbg !3969
  br i1 %cond.i, label %bb.c, label %common.ret, !dbg !3969

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 168, !dbg !3970
  %i.f = load i8, ptr %i.e, align 8, !dbg !3970, !range !872, !noundef !718
  %cond.i.i = icmp eq i8 %i.f, 3, !dbg !3970
  br i1 %cond.i.i, label %bb.d, label %common.ret, !dbg !3970

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !3971
  %i.h = load i8, ptr %i.g, align 8, !dbg !3971, !range !869, !noundef !718
  %cond.i.i.i = icmp eq i8 %i.h, 4, !dbg !3971
  br i1 %cond.i.i.i, label %bb.e, label %common.ret, !dbg !3971

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104, !dbg !3972
  invoke void @_RNvXs3_NtNtCs3zuhHmEJ01l_5tokio4sync15batch_semaphoreNtB5_7AcquireNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noundef nonnull align 8 %i.i)
          to label %bb.h unwind label %bb.f, !dbg !3973

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !3973
  %.val2.i.i.i.i = load ptr, ptr %i.k, align 8, !dbg !3973, !align !826, !noundef !718 ; 2 uses
  %i.l = icmp eq ptr %.val2.i.i.i.i, null, !dbg !3974
  br i1 %i.l, label %common.resume, label %bb.g, !dbg !3974

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr i8, ptr %0, i64 120, !dbg !3973
  %.val3.i.i.i.i = load ptr, ptr %i.m, align 8, !dbg !3973
  %i.n = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i, i64 24, !dbg !3975
  %i.o = load ptr, ptr %i.n, align 8, !dbg !3975, !nonnull !718, !noundef !718
  invoke void %i.o(ptr noundef %.val3.i.i.i.i)
          to label %common.resume unwind label %bb.j, !dbg !3975, !inline_history !309

bb.h:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !3973
  %.val.i.i.i.i = load ptr, ptr %i.p, align 8, !dbg !3973, !align !826, !noundef !718 ; 2 uses
  %i.q = icmp eq ptr %.val.i.i.i.i, null, !dbg !3976
  br i1 %i.q, label %common.ret, label %bb.i, !dbg !3976

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr i8, ptr %0, i64 120, !dbg !3973
  %.val1.i.i.i.i = load ptr, ptr %i.r, align 8, !dbg !3973
  %i.s = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 24, !dbg !3977
  %i.t = load ptr, ptr %i.s, align 8, !dbg !3977, !nonnull !718, !noundef !718
  tail call void %i.t(ptr noundef %.val1.i.i.i.i), !dbg !3977, !inline_history !3946
  br label %common.ret, !dbg !3976

bb.j:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #36, !dbg !3973
  unreachable, !dbg !3973

common.resume:                                    ; preds = %bb.m, %bb.f, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.f ], [ %i.j, %bb.g ], [ %i.z, %bb.m ]
  resume { ptr, i32 } %common.resume.op, !dbg !3978

bb.k:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !3979 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3964), !dbg !3979
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3965), !dbg !3980
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3966), !dbg !3981
  %i.w = load ptr, ptr %i.v, align 8, !dbg !3982, !alias.scope !3967, !nonnull !718, !noundef !718
  %i.x = atomicrmw add ptr %i.w, i64 -1 release, align 8, !dbg !3983, !noalias !3967
  %i.y = icmp eq i64 %i.x, 1, !dbg !3984
  br i1 %i.y, label %bb.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsl4QKJNSbRGn_17prometheus_client7metrics5gauge5GaugeECsbaWXNhtWAp9_11foundations.exit, !dbg !3984

bb.l:                                             ; preds = %bb.k
  fence acquire, !dbg !3985
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCs3oUPovFnLWP_4core4sync6atomic6AtomicyEE9drop_slowCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.v) #37
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsl4QKJNSbRGn_17prometheus_client7metrics5gauge5GaugeECsbaWXNhtWAp9_11foundations.exit unwind label %bb.m, !dbg !3986

bb.m:                                             ; preds = %bb.l
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !3987
  invoke void @_RNvXsd_NtNtCs3zuhHmEJ01l_5tokio4sync5mutexINtB5_10MutexGuardINtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel8ReceiverINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB15_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aa)
          to label %common.resume unwind label %bb.n, !dbg !3988

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsl4QKJNSbRGn_17prometheus_client7metrics5gauge5GaugeECsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.k, %bb.l
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !3987
  tail call void @_RNvXsd_NtNtCs3zuhHmEJ01l_5tokio4sync5mutexINtB5_10MutexGuardINtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel8ReceiverINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB15_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ab), !dbg !3989
  br label %common.ret, !dbg !3987

bb.n:                                             ; preds = %bb.m
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #36, !dbg !3968
  unreachable, !dbg !3968
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvMsb_NtNtCs3zuhHmEJ01l_5tokio4sync9broadcastINtBJ_8ReceiverNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7ChannelE4recv0ECsbaWXNhtWAp9_11foundations(ptr noundef nonnull align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !313 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !4007
  %i.b = load i8, ptr %i.a, align 8, !dbg !4007, !range !872, !noundef !718
  %cond = icmp eq i8 %i.b, 3, !dbg !4007
  br i1 %cond, label %bb.b, label %common.ret, !dbg !4007

common.ret:                                       ; preds = %bb.f, %bb.e, %bb.a
  ret void, !dbg !4007

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !4008
  invoke void @_RNvXsf_NtNtCs3zuhHmEJ01l_5tokio4sync9broadcastINtB5_4RecvNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7ChannelENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noundef nonnull align 8 %i.c)
          to label %bb.e unwind label %bb.c, !dbg !4009

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !4009
  %.val2.i.i = load ptr, ptr %i.e, align 8, !dbg !4009, !align !826, !noundef !718 ; 2 uses
  %i.f = icmp eq ptr %.val2.i.i, null, !dbg !4010
  br i1 %i.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs3zuhHmEJ01l_5tokio4sync9broadcast10WaiterCellECsbaWXNhtWAp9_11foundations.exit.i.i, label %bb.d, !dbg !4010

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %0, i64 24, !dbg !4009
  %.val3.i.i = load ptr, ptr %i.g, align 8, !dbg !4009
  %i.h = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 24, !dbg !4011
  %i.i = load ptr, ptr %i.h, align 8, !dbg !4011, !nonnull !718, !noundef !718
  invoke void %i.i(ptr noundef %.val3.i.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs3zuhHmEJ01l_5tokio4sync9broadcast10WaiterCellECsbaWXNhtWAp9_11foundations.exit.i.i unwind label %bb.g, !dbg !4011, !inline_history !193

bb.e:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !4009
  %.val.i.i = load ptr, ptr %i.j, align 8, !dbg !4009, !align !826, !noundef !718 ; 2 uses
  %i.k = icmp eq ptr %.val.i.i, null, !dbg !4012
  br i1 %i.k, label %common.ret, label %bb.f, !dbg !4012

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr i8, ptr %0, i64 24, !dbg !4009
  %.val1.i.i = load ptr, ptr %i.l, align 8, !dbg !4009
  %i.m = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 24, !dbg !4013
  %i.n = load ptr, ptr %i.m, align 8, !dbg !4013, !nonnull !718, !noundef !718
  tail call void %i.n(ptr noundef %.val1.i.i), !dbg !4013, !inline_history !4006
  br label %common.ret, !dbg !4012

bb.g:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #36, !dbg !4009
  unreachable, !dbg !4009

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs3zuhHmEJ01l_5tokio4sync9broadcast10WaiterCellECsbaWXNhtWAp9_11foundations.exit.i.i: ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.d, !dbg !4009
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvNtNtCsbaWXNhtWAp9_11foundations6sentry4hook26install_hook_with_settingss_0EBJ_(ptr noalias nofree noundef align 8 dereferenceable(88) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !4014 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !4077
  %.val = load ptr, ptr %i.a, align 8, !dbg !4077, !noundef !718 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !4077
  %.val1 = load i64, ptr %i.b, align 8, !dbg !4077 ; 6 uses
  %i.c = icmp eq ptr %.val, null, !dbg !4078
  %cond = icmp eq i64 %.val1, 0
  %or.cond = select i1 %i.c, i1 true, i1 %cond, !dbg !4078
  br i1 %or.cond, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgtgatFLTNh8_8governor5state11RateLimiterINtNtCs1xwejQucwHj_5alloc6borrow3CoweEINtCsdra7vpBasQ9_7dashmap7DashMapB1I_NtNtB10_9in_memory13InMemoryStateENtNtCsbaWXNhtWAp9_11foundations9ratelimit17StaticQuantaClockINtNtB12_10middleware14NoOpMiddlewareNtNtNtB12_5clock6quanta13QuantaInstantEEEEB3x_.exit, label %.lr.ph, !dbg !4078

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5lJabBKj2Vx_15crossbeam_utils12cache_padded11CachePaddedINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsdra7vpBasQ9_7dashmap4lock9RawRwLockINtNtNtCscYIHOBAkUpv_9hashbrown3raw5inner8RawTableTINtNtCs1xwejQucwHj_5alloc6borrow3CoweEINtNtB2m_4util11SharedValueNtNtNtCsgtgatFLTNh8_8governor5state9in_memory13InMemoryStateEEEEEECsbaWXNhtWAp9_11foundations.exit.i.i.i.i.i: ; preds = %.lr.ph
  %i.d = icmp eq i64 %i.f, %.val1, !dbg !4079
  br i1 %i.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs5lJabBKj2Vx_15crossbeam_utils12cache_padded11CachePaddedINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsdra7vpBasQ9_7dashmap4lock9RawRwLockINtNtNtCscYIHOBAkUpv_9hashbrown3raw5inner8RawTableTINtNtCs1xwejQucwHj_5alloc6borrow3CoweEINtNtB2n_4util11SharedValueNtNtNtCsgtgatFLTNh8_8governor5state9in_memory13InMemoryStateEEEEEECsbaWXNhtWAp9_11foundations.exit.i.i.i.i, label %.lr.ph, !dbg !4079

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5lJabBKj2Vx_15crossbeam_utils12cache_padded11CachePaddedINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsdra7vpBasQ9_7dashmap4lock9RawRwLockINtNtNtCscYIHOBAkUpv_9hashbrown3raw5inner8RawTableTINtNtCs1xwejQucwHj_5alloc6borrow3CoweEINtNtB2m_4util11SharedValueNtNtNtCsgtgatFLTNh8_8governor5state9in_memory13InMemoryStateEEEEEECsbaWXNhtWAp9_11foundations.exit.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i4 = phi i64 [ %i.f, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5lJabBKj2Vx_15crossbeam_utils12cache_padded11CachePaddedINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsdra7vpBasQ9_7dashmap4lock9RawRwLockINtNtNtCscYIHOBAkUpv_9hashbrown3raw5inner8RawTableTINtNtCs1xwejQucwHj_5alloc6borrow3CoweEINtNtB2m_4util11SharedValueNtNtNtCsgtgatFLTNh8_8governor5state9in_memory13InMemoryStateEEEEEECsbaWXNhtWAp9_11foundations.exit.i.i.i.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [128 x i8], ptr %.val, i64 %.sroa.0.0.i.i.i.i.i4, !dbg !4079
  %i.f = add nuw nsw i64 %.sroa.0.0.i.i.i.i.i4, 1, !dbg !4079 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !4080
  invoke void @_RNvXsf_NtNtCscYIHOBAkUpv_9hashbrown3raw5innerINtB5_8RawTableTINtNtCs1xwejQucwHj_5alloc6borrow3CoweEINtNtCsdra7vpBasQ9_7dashmap4util11SharedValueNtNtNtCsgtgatFLTNh8_8governor5state9in_memory13InMemoryStateEEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5lJabBKj2Vx_15crossbeam_utils12cache_padded11CachePaddedINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsdra7vpBasQ9_7dashmap4lock9RawRwLockINtNtNtCscYIHOBAkUpv_9hashbrown3raw5inner8RawTableTINtNtCs1xwejQucwHj_5alloc6borrow3CoweEINtNtB2m_4util11SharedValueNtNtNtCsgtgatFLTNh8_8governor5state9in_memory13InMemoryStateEEEEEECsbaWXNhtWAp9_11foundations.exit.i.i.i.i.i unwind label %bb.b, !dbg !4081

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5lJabBKj2Vx_15crossbeam_utils12cache_padded11CachePaddedINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsdra7vpBasQ9_7dashmap4lock9RawRwLockINtNtNtCscYIHOBAkUpv_9hashbrown3raw5inner8RawTableTINtNtCs1xwejQucwHj_5alloc6borrow3CoweEINtNtB2m_4util11SharedValueNtNtNtCsgtgatFLTNh8_8governor5state9in_memory13InMemoryStateEEEEEECsbaWXNhtWAp9_11foundations.exit7.i.i.i.i.i: ; preds = %.lr.ph6
  %i.h = add nuw nsw i64 %.sroa.0.1.i.i.i.i.i5, 1, !dbg !4079 ; 2 uses
  %i.i = icmp eq i64 %i.h, %.val1, !dbg !4079
  br i1 %i.i, label %.body.i.i.i.i, label %.lr.ph6, !dbg !4079

bb.b:                                             ; preds = %.lr.ph
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = icmp eq i64 %i.f, %.val1, !dbg !4079
  br i1 %i.k, label %.body.i.i.i.i, label %.lr.ph6, !dbg !4079

.lr.ph6:                                          ; preds = %bb.b, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5lJabBKj2Vx_15crossbeam_utils12cache_padded11CachePaddedINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsdra7vpBasQ9_7dashmap4lock9RawRwLockINtNtNtCscYIHOBAkUpv_9hashbrown3raw5inner8RawTableTINtNtCs1xwejQucwHj_5alloc6borrow3CoweEINtNtB2m_4util11SharedValueNtNtNtCsgtgatFLTNh8_8governor5state9in_memory13InMemoryStateEEEEEECsbaWXNhtWAp9_11foundations.exit7.i.i.i.i.i
  %.sroa.0.1.i.i.i.i.i5 = phi i64 [ %i.h, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5lJabBKj2Vx_15crossbeam_utils12cache_padded11CachePaddedINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsdra7vpBasQ9_7dashmap4lock9RawRwLockINtNtNtCscYIHOBAkUpv_9hashbrown3raw5inner8RawTableTINtNtCs1xwejQucwHj_5alloc6borrow3CoweEINtNtB2m_4util11SharedValueNtNtNtCsgtgatFLTNh8_8governor5state9in_memory13InMemoryStateEEEEEECsbaWXNhtWAp9_11foundations.exit7.i.i.i.i.i ], [ %i.f, %bb.b ] ; 2 uses
  %i.l = getelementptr inbounds nuw [128 x i8], ptr %.val, i64 %.sroa.0.1.i.i.i.i.i5, !dbg !4079
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !4082
  invoke void @_RNvXsf_NtNtCscYIHOBAkUpv_9hashbrown3raw5innerINtB5_8RawTableTINtNtCs1xwejQucwHj_5alloc6borrow3CoweEINtNtCsdra7vpBasQ9_7dashmap4util11SharedValueNtNtNtCsgtgatFLTNh8_8governor5state9in_memory13InMemoryStateEEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.m)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5lJabBKj2Vx_15crossbeam_utils12cache_padded11CachePaddedINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsdra7vpBasQ9_7dashmap4lock9RawRwLockINtNtNtCscYIHOBAkUpv_9hashbrown3raw5inner8RawTableTINtNtCs1xwejQucwHj_5alloc6borrow3CoweEINtNtB2m_4util11SharedValueNtNtNtCsgtgatFLTNh8_8governor5state9in_memory13InMemoryStateEEEEEECsbaWXNhtWAp9_11foundations.exit7.i.i.i.i.i unwind label %bb.c, !dbg !4083

bb.c:                                             ; preds = %.lr.ph6
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #36, !dbg !4079
  unreachable, !dbg !4079

.body.i.i.i.i:                                    ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5lJabBKj2Vx_15crossbeam_utils12cache_padded11CachePaddedINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsdra7vpBasQ9_7dashmap4lock9RawRwLockINtNtNtCscYIHOBAkUpv_9hashbrown3raw5inner8RawTableTINtNtCs1xwejQucwHj_5alloc6borrow3CoweEINtNtB2m_4util11SharedValueNtNtNtCsgtgatFLTNh8_8governor5state9in_memory13InMemoryStateEEEEEECsbaWXNhtWAp9_11foundations.exit7.i.i.i.i.i, %bb.b
  %i.o = shl nuw nsw i64 %.val1, 7, !dbg !4084
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.o, i64 noundef 128) #35, !dbg !4085
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4073), !dbg !4077
  %i.p = load ptr, ptr %0, align 8, !dbg !4086, !alias.scope !4073, !noundef !718 ; 2 uses
  %i.q = icmp eq ptr %i.p, null, !dbg !4086
  br i1 %i.q, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTNtNtNtCsC6fiw49j4l_12sentry_types8protocol2v75EventEEp6OutputIBC_B1X_ENtNtB4_6marker4SendNtB37_4SyncEL_EEECsbaWXNhtWAp9_11foundations.exit, label %bb.d, !dbg !4086

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs5lJabBKj2Vx_15crossbeam_utils12cache_padded11CachePaddedINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsdra7vpBasQ9_7dashmap4lock9RawRwLockINtNtNtCscYIHOBAkUpv_9hashbrown3raw5inner8RawTableTINtNtCs1xwejQucwHj_5alloc6borrow3CoweEINtNtB2n_4util11SharedValueNtNtNtCsgtgatFLTNh8_8governor5state9in_memory13InMemoryStateEEEEEECsbaWXNhtWAp9_11foundations.exit.i.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5lJabBKj2Vx_15crossbeam_utils12cache_padded11CachePaddedINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsdra7vpBasQ9_7dashmap4lock9RawRwLockINtNtNtCscYIHOBAkUpv_9hashbrown3raw5inner8RawTableTINtNtCs1xwejQucwHj_5alloc6borrow3CoweEINtNtB2m_4util11SharedValueNtNtNtCsgtgatFLTNh8_8governor5state9in_memory13InMemoryStateEEEEEECsbaWXNhtWAp9_11foundations.exit.i.i.i.i.i
  %i.r = shl nuw nsw i64 %.val1, 7, !dbg !4087
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.r, i64 noundef 128) #35, !dbg !4088
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgtgatFLTNh8_8governor5state11RateLimiterINtNtCs1xwejQucwHj_5alloc6borrow3CoweEINtCsdra7vpBasQ9_7dashmap7DashMapB1I_NtNtB10_9in_memory13InMemoryStateENtNtCsbaWXNhtWAp9_11foundations9ratelimit17StaticQuantaClockINtNtB12_10middleware14NoOpMiddlewareNtNtNtB12_5clock6quanta13QuantaInstantEEEEB3x_.exit, !dbg !4089

bb.d:                                             ; preds = %.body.i.i.i.i
  %i.s = atomicrmw add ptr %i.p, i64 -1 release, align 8, !dbg !4090, !noalias !4074
  %i.t = icmp eq i64 %i.s, 1, !dbg !4091
  br i1 %i.t, label %bb.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTNtNtNtCsC6fiw49j4l_12sentry_types8protocol2v75EventEEp6OutputIBC_B1X_ENtNtB4_6marker4SendNtB37_4SyncEL_EEECsbaWXNhtWAp9_11foundations.exit, !dbg !4091

bb.e:                                             ; preds = %bb.d
  fence acquire, !dbg !4092
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnTNtNtNtCsC6fiw49j4l_12sentry_types8protocol2v75EventEEp6OutputINtNtBO_6option6OptionB1o_ENtNtBO_6marker4SendNtB2Q_4SyncEL_E9drop_slowCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) #37
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTNtNtNtCsC6fiw49j4l_12sentry_types8protocol2v75EventEEp6OutputIBC_B1X_ENtNtB4_6marker4SendNtB37_4SyncEL_EEECsbaWXNhtWAp9_11foundations.exit unwind label %bb.h, !dbg !4093

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgtgatFLTNh8_8governor5state11RateLimiterINtNtCs1xwejQucwHj_5alloc6borrow3CoweEINtCsdra7vpBasQ9_7dashmap7DashMapB1I_NtNtB10_9in_memory13InMemoryStateENtNtCsbaWXNhtWAp9_11foundations9ratelimit17StaticQuantaClockINtNtB12_10middleware14NoOpMiddlewareNtNtNtB12_5clock6quanta13QuantaInstantEEEEB3x_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs5lJabBKj2Vx_15crossbeam_utils12cache_padded11CachePaddedINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsdra7vpBasQ9_7dashmap4lock9RawRwLockINtNtNtCscYIHOBAkUpv_9hashbrown3raw5inner8RawTableTINtNtCs1xwejQucwHj_5alloc6borrow3CoweEINtNtB2n_4util11SharedValueNtNtNtCsgtgatFLTNh8_8governor5state9in_memory13InMemoryStateEEEEEECsbaWXNhtWAp9_11foundations.exit.i.i.i.i, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4075), !dbg !4077
  %i.u = load ptr, ptr %0, align 8, !dbg !4094, !alias.scope !4075, !noundef !718 ; 2 uses
  %i.v = icmp eq ptr %i.u, null, !dbg !4094
  br i1 %i.v, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTNtNtNtCsC6fiw49j4l_12sentry_types8protocol2v75EventEEp6OutputIBC_B1X_ENtNtB4_6marker4SendNtB37_4SyncEL_EEECsbaWXNhtWAp9_11foundations.exit2, label %bb.f, !dbg !4094

bb.f:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgtgatFLTNh8_8governor5state11RateLimiterINtNtCs1xwejQucwHj_5alloc6borrow3CoweEINtCsdra7vpBasQ9_7dashmap7DashMapB1I_NtNtB10_9in_memory13InMemoryStateENtNtCsbaWXNhtWAp9_11foundations9ratelimit17StaticQuantaClockINtNtB12_10middleware14NoOpMiddlewareNtNtNtB12_5clock6quanta13QuantaInstantEEEEB3x_.exit
  %i.w = atomicrmw add ptr %i.u, i64 -1 release, align 8, !dbg !4095, !noalias !4076
  %i.x = icmp eq i64 %i.w, 1, !dbg !4096
  br i1 %i.x, label %bb.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTNtNtNtCsC6fiw49j4l_12sentry_types8protocol2v75EventEEp6OutputIBC_B1X_ENtNtB4_6marker4SendNtB37_4SyncEL_EEECsbaWXNhtWAp9_11foundations.exit2, !dbg !4096

bb.g:                                             ; preds = %bb.f
  fence acquire, !dbg !4097
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnTNtNtNtCsC6fiw49j4l_12sentry_types8protocol2v75EventEEp6OutputINtNtBO_6option6OptionB1o_ENtNtBO_6marker4SendNtB2Q_4SyncEL_E9drop_slowCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) #37, !dbg !4098
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTNtNtNtCsC6fiw49j4l_12sentry_types8protocol2v75EventEEp6OutputIBC_B1X_ENtNtB4_6marker4SendNtB37_4SyncEL_EEECsbaWXNhtWAp9_11foundations.exit2, !dbg !4098

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTNtNtNtCsC6fiw49j4l_12sentry_types8protocol2v75EventEEp6OutputIBC_B1X_ENtNtB4_6marker4SendNtB37_4SyncEL_EEECsbaWXNhtWAp9_11foundations.exit2: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgtgatFLTNh8_8governor5state11RateLimiterINtNtCs1xwejQucwHj_5alloc6borrow3CoweEINtCsdra7vpBasQ9_7dashmap7DashMapB1I_NtNtB10_9in_memory13InMemoryStateENtNtCsbaWXNhtWAp9_11foundations9ratelimit17StaticQuantaClockINtNtB12_10middleware14NoOpMiddlewareNtNtNtB12_5clock6quanta13QuantaInstantEEEEB3x_.exit, %bb.f, %bb.g
  ret void, !dbg !4077

bb.h:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #36, !dbg !4077
  unreachable, !dbg !4077

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTNtNtNtCsC6fiw49j4l_12sentry_types8protocol2v75EventEEp6OutputIBC_B1X_ENtNtB4_6marker4SendNtB37_4SyncEL_EEECsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.d, %.body.i.i.i.i, %bb.e
  resume { ptr, i32 } %i.j, !dbg !4077
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing16output_otlp_grpc9do_export0EBL_(ptr noundef nonnull align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !4099 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 568, !dbg !4245
  %i.b = load i8, ptr %i.a, align 8, !dbg !4245, !range !875, !noundef !718
  switch i8 %i.b, label %common.ret [
    i8 0, label %bb.b
    i8 3, label %bb.f
    i8 4, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvMNtNtCsfUalJnHtWpm_5tonic6client4grpcINtBH_4GrpcNtNtNtBL_9transport7channel7ChannelE5unaryNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestNtB2a_26ExportTraceServiceResponseINtNtCscOl6cF6RnLx_11tonic_prost5codec10ProstCodecB28_B3P_EE0ECsbaWXNhtWAp9_11foundations.exit
    i8 5, label %bb.g
  ], !dbg !4245

common.ret:                                       ; preds = %bb.t, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsbaWXNhtWAp9_11foundations11ServiceInfoEBD_.exit, %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsfUalJnHtWpm_5tonic6client4grpc4GrpcNtNtNtBI_9transport7channel7ChannelEECsbaWXNhtWAp9_11foundations.exit39
  ret void, !dbg !4245

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !4246
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7ChannelECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(48) %i.c)
          to label %bb.d unwind label %bb.c, !dbg !4246

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsfUalJnHtWpm_5tonic6client4grpc10GrpcConfigECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %0) #38
          to label %.body unwind label %bb.e, !dbg !4246

bb.d:                                             ; preds = %bb.b
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsfUalJnHtWpm_5tonic6client4grpc10GrpcConfigECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsfUalJnHtWpm_5tonic6client4grpc4GrpcNtNtNtBI_9transport7channel7ChannelEECsbaWXNhtWAp9_11foundations.exit unwind label %bb.o, !dbg !4246

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #36, !dbg !4246
  unreachable, !dbg !4246

bb.f:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 576, !dbg !4247
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvMs_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channelNtBI_18SharedSpanReceiver9recv_many0EBO_(ptr noundef nonnull align 8 %i.f)
          to label %bb.w unwind label %bb.v, !dbg !4247

bb.g:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 576, !dbg !4248 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1496, !dbg !4249
  %i.i = load i8, ptr %i.h, align 8, !dbg !4249, !range !872, !noundef !718
  switch i8 %i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvMNtNtCsfUalJnHtWpm_5tonic6client4grpcINtBH_4GrpcNtNtNtBL_9transport7channel7ChannelE5unaryNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestNtB2a_26ExportTraceServiceResponseINtNtCscOl6cF6RnLx_11tonic_prost5codec10ProstCodecB28_B3P_EE0ECsbaWXNhtWAp9_11foundations.exit [
    i8 0, label %bb.h
    i8 3, label %bb.i
  ], !dbg !4249

bb.h:                                             ; preds = %bb.g
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsfUalJnHtWpm_5tonic7request7RequestNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %i.g)
          to label %bb.k unwind label %bb.j, !dbg !4249

bb.i:                                             ; preds = %bb.g
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 752, !dbg !4250
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvMNtNtCsfUalJnHtWpm_5tonic6client4grpcINtBH_4GrpcNtNtNtBL_9transport7channel7ChannelE16client_streamingINtNtCsau3QU8iZK1I_12tokio_stream4once4OnceNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEB31_NtB33_26ExportTraceServiceResponseINtNtCscOl6cF6RnLx_11tonic_prost5codec10ProstCodecB31_B4N_EE0ECsbaWXNhtWAp9_11foundations(ptr noundef nonnull align 8 %i.j)
          to label %bb.n unwind label %bb.m, !dbg !4250

bb.j:                                             ; preds = %bb.h
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 712, !dbg !4249
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4217), !dbg !4249
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4218), !dbg !4251
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4219), !dbg !4252
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4220), !dbg !4253
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 736, !dbg !4254
  %i.n = load ptr, ptr %i.m, align 8, !dbg !4255, !alias.scope !4221, !noundef !718
  %i.o = load ptr, ptr %i.l, align 8, !dbg !4256, !alias.scope !4221, !nonnull !718, !align !826, !noundef !718
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32, !dbg !4256
  %i.q = load ptr, ptr %i.p, align 8, !dbg !4256, !noalias !4221, !nonnull !718, !noundef !718
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 720, !dbg !4257
  %i.s = load ptr, ptr %i.r, align 8, !dbg !4257, !alias.scope !4221, !noundef !718
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 728, !dbg !4258
  %i.u = load i64, ptr %i.t, align 8, !dbg !4258, !alias.scope !4221, !noundef !718
  invoke void %i.q(ptr noundef %i.n, ptr noundef %i.s, i64 noundef %i.u)
          to label %.body16 unwind label %bb.l, !dbg !4256, !inline_history !294

bb.k:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 712, !dbg !4249
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4222), !dbg !4249
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4223), !dbg !4259
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4224), !dbg !4260
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4225), !dbg !4261
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 736, !dbg !4262
  %i.x = load ptr, ptr %i.w, align 8, !dbg !4263, !alias.scope !4226, !noundef !718
  %i.y = load ptr, ptr %i.v, align 8, !dbg !4264, !alias.scope !4226, !nonnull !718, !align !826, !noundef !718
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32, !dbg !4264
  %i.aa = load ptr, ptr %i.z, align 8, !dbg !4264, !noalias !4226, !nonnull !718, !noundef !718
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 720, !dbg !4265
  %i.ac = load ptr, ptr %i.ab, align 8, !dbg !4265, !alias.scope !4226, !noundef !718
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 728, !dbg !4266
  %i.ae = load i64, ptr %i.ad, align 8, !dbg !4266, !alias.scope !4226, !noundef !718
  invoke void %i.aa(ptr noundef %i.x, ptr noundef %i.ac, i64 noundef %i.ae)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvMNtNtCsfUalJnHtWpm_5tonic6client4grpcINtBH_4GrpcNtNtNtBL_9transport7channel7ChannelE5unaryNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestNtB2a_26ExportTraceServiceResponseINtNtCscOl6cF6RnLx_11tonic_prost5codec10ProstCodecB28_B3P_EE0ECsbaWXNhtWAp9_11foundations.exit unwind label %bb.ab, !dbg !4264, !inline_history !4227

bb.l:                                             ; preds = %bb.j
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #36, !dbg !4249
  unreachable, !dbg !4249

bb.m:                                             ; preds = %bb.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1497, !dbg !4267
  store i8 0, ptr %i.ah, align 1, !dbg !4267
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1498, !dbg !4268
  store i8 0, ptr %i.ai, align 2, !dbg !4268
  br label %.body16, !dbg !4269

bb.n:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1497, !dbg !4267
  store i8 0, ptr %i.aj, align 1, !dbg !4267
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1498, !dbg !4268
  store i8 0, ptr %i.ak, align 2, !dbg !4268
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvMNtNtCsfUalJnHtWpm_5tonic6client4grpcINtBH_4GrpcNtNtNtBL_9transport7channel7ChannelE5unaryNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestNtB2a_26ExportTraceServiceResponseINtNtCscOl6cF6RnLx_11tonic_prost5codec10ProstCodecB28_B3P_EE0ECsbaWXNhtWAp9_11foundations.exit, !dbg !4249

bb.o:                                             ; preds = %bb.d
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !4245

.body:                                            ; preds = %bb.c, %bb.o
  %eh.lpad-body = phi { ptr, i32 } [ %i.al, %bb.o ], [ %i.d, %bb.c ]
end_hunk_1
begin_hunk_2_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing16output_otlp_grpc9do_export0EBL_:bb.a
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic5trace2v113ResourceSpansEECsbaWXNhtWAp9_11foundations.exit unwind label %bb.ag, !dbg !4296

bb.af:                                            ; preds = %bb.ad
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #36, !dbg !4294
  unreachable, !dbg !4294

.body27:                                          ; preds = %bb.ag, %bb.ad, %bb.aq, %.body16
  %.pn3 = phi { ptr, i32 } [ %eh.lpad-body17, %.body16 ], [ %eh.lpad-body17, %bb.aq ], [ %i.bq, %bb.ag ], [ %i.bn, %bb.ad ]
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 569, !dbg !4293
  store i8 0, ptr %i.bp, align 1, !dbg !4293
  br label %bb.aa, !dbg !4288

bb.ag:                                            ; preds = %bb.ae
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %.body27

.body24:                                          ; preds = %bb.ai, %bb.x, %bb.aa
  %.pn7 = phi { ptr, i32 } [ %.pn5, %bb.aa ], [ %i.bv, %bb.ai ], [ %i.bc, %bb.x ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 528, !dbg !4297 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4237), !dbg !4297
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4238), !dbg !4298
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4239), !dbg !4299
  %i.bs = load ptr, ptr %i.br, align 8, !dbg !4300, !alias.scope !4240, !nonnull !718, !noundef !718
  %i.bt = atomicrmw add ptr %i.bs, i64 -1 release, align 8, !dbg !4301, !noalias !4240
  %i.bu = icmp eq i64 %i.bt, 1, !dbg !4302
  br i1 %i.bu, label %bb.ah, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel18SharedSpanReceiverEBJ_.exit30, !dbg !4302

bb.ah:                                            ; preds = %.body24
  fence acquire, !dbg !4303
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCs3zuhHmEJ01l_5tokio4sync5mutex5MutexINtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel8ReceiverINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEEE9drop_slowB1x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.br) #37
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel18SharedSpanReceiverEBJ_.exit30 unwind label %bb.u, !dbg !4304

bb.ai:                                            ; preds = %bb.y
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %.body24

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEECsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.y
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 528, !dbg !4297 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4241), !dbg !4297
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4242), !dbg !4305
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4243), !dbg !4306
  %i.bx = load ptr, ptr %i.bw, align 8, !dbg !4307, !alias.scope !4244, !nonnull !718, !noundef !718
  %i.by = atomicrmw add ptr %i.bx, i64 -1 release, align 8, !dbg !4308, !noalias !4244
  %i.bz = icmp eq i64 %i.by, 1, !dbg !4309
  br i1 %i.bz, label %bb.aj, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel18SharedSpanReceiverEBJ_.exit32, !dbg !4309

bb.aj:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEECsbaWXNhtWAp9_11foundations.exit
  fence acquire, !dbg !4310
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCs3zuhHmEJ01l_5tokio4sync5mutex5MutexINtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel8ReceiverINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEEE9drop_slowB1x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bw) #37
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel18SharedSpanReceiverEBJ_.exit32 unwind label %bb.ak, !dbg !4311

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel18SharedSpanReceiverEBJ_.exit30: ; preds = %.body24, %bb.ah, %bb.ak
  %.pn9 = phi { ptr, i32 } [ %i.cb, %bb.ak ], [ %.pn7, %bb.ah ], [ %.pn7, %.body24 ]
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 440, !dbg !4312
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsbaWXNhtWAp9_11foundations11ServiceInfoEBD_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.ca) #38
          to label %.body35 unwind label %bb.u, !dbg !4312

bb.ak:                                            ; preds = %bb.aj
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel18SharedSpanReceiverEBJ_.exit30

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel18SharedSpanReceiverEBJ_.exit32: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEECsbaWXNhtWAp9_11foundations.exit, %bb.aj
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 440, !dbg !4312 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.cc)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsbaWXNhtWAp9_11foundations.exit.i34 unwind label %bb.al, !dbg !4313

bb.al:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel18SharedSpanReceiverEBJ_.exit32
  %i.cd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.cc)
          to label %.body35 unwind label %bb.am, !dbg !4314

bb.am:                                            ; preds = %bb.al
  %i.ce = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #36, !dbg !4313
  unreachable, !dbg !4313

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsbaWXNhtWAp9_11foundations.exit.i34: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel18SharedSpanReceiverEBJ_.exit32
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.cc)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsbaWXNhtWAp9_11foundations11ServiceInfoEBD_.exit38 unwind label %bb.an, !dbg !4315

.body35:                                          ; preds = %bb.an, %bb.al, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel18SharedSpanReceiverEBJ_.exit30
  %.pn11 = phi { ptr, i32 } [ %.pn9, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel18SharedSpanReceiverEBJ_.exit30 ], [ %i.cg, %bb.an ], [ %i.cd, %bb.al ]
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 272, !dbg !4316
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsfUalJnHtWpm_5tonic6client4grpc4GrpcNtNtNtBI_9transport7channel7ChannelEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(168) %i.cf) #38
          to label %common.resume unwind label %bb.u, !dbg !4316

bb.an:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsbaWXNhtWAp9_11foundations.exit.i34
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %.body35

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsbaWXNhtWAp9_11foundations11ServiceInfoEBD_.exit38: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsbaWXNhtWAp9_11foundations.exit.i34
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 272, !dbg !4316 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 392, !dbg !4317
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7ChannelECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ci)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsfUalJnHtWpm_5tonic6client4grpc4GrpcNtNtNtBI_9transport7channel7ChannelEECsbaWXNhtWAp9_11foundations.exit39 unwind label %bb.ao, !dbg !4317

bb.ao:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsbaWXNhtWAp9_11foundations11ServiceInfoEBD_.exit38
  %i.cj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsfUalJnHtWpm_5tonic6client4grpc10GrpcConfigECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %i.ch) #38
          to label %common.resume unwind label %bb.ap, !dbg !4317

bb.ap:                                            ; preds = %bb.ao
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #36, !dbg !4317
  unreachable, !dbg !4317

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsfUalJnHtWpm_5tonic6client4grpc4GrpcNtNtNtBI_9transport7channel7ChannelEECsbaWXNhtWAp9_11foundations.exit39: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsbaWXNhtWAp9_11foundations11ServiceInfoEBD_.exit38
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsfUalJnHtWpm_5tonic6client4grpc10GrpcConfigECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %i.ch), !dbg !4317
  br label %common.ret, !dbg !4245

bb.aq:                                            ; preds = %.body16
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic5trace2v113ResourceSpansEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #38
          to label %.body27 unwind label %bb.u, !dbg !4293
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing24output_jaeger_thrift_udp9do_export0EBL_(ptr noundef nonnull align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !4318 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !4451
  %i.b = load i8, ptr %i.a, align 8, !dbg !4451, !range !869, !noundef !718
  switch i8 %i.b, label %common.ret [
    i8 0, label %bb.b
    i8 3, label %bb.d
    i8 4, label %bb.e
  ], !dbg !4451

common.ret:                                       ; preds = %bb.u, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel18SharedSpanReceiverEBJ_.exit23, %bb.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger8reporter21JaegerCompactReporterEECsbaWXNhtWAp9_11foundations.exit, %bb.a
  ret void, !dbg !4451

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4426), !dbg !4451
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4427), !dbg !4452
  %i.c = load ptr, ptr %0, align 8, !dbg !4453, !alias.scope !4428, !nonnull !718, !noundef !718
  %i.d = atomicrmw add ptr %i.c, i64 -1 release, align 8, !dbg !4454, !noalias !4428
  %i.e = icmp eq i64 %i.d, 1, !dbg !4455
  br i1 %i.e, label %bb.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger8reporter21JaegerCompactReporterEECsbaWXNhtWAp9_11foundations.exit, !dbg !4455

bb.c:                                             ; preds = %bb.b
  fence acquire, !dbg !4456
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger8reporter21JaegerCompactReporterE9drop_slowCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #37
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger8reporter21JaegerCompactReporterEECsbaWXNhtWAp9_11foundations.exit unwind label %bb.g, !dbg !4457

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !4458
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvMs_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channelNtBI_18SharedSpanReceiver9recv_many0EBO_(ptr noundef nonnull align 8 %i.f)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEECsbaWXNhtWAp9_11foundations.exit19 unwind label %bb.o, !dbg !4458

bb.e:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 632, !dbg !4459
  %i.h = load i8, ptr %i.g, align 8, !dbg !4459, !range !872, !noundef !718
  %cond.i = icmp eq i8 %i.h, 3, !dbg !4459
  br i1 %cond.i, label %bb.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvMNtCs7qAQKZbgfvS_20cf_rustracing_jaeger8reporterNtBG_21JaegerCompactReporter6report0ECsbaWXNhtWAp9_11foundations.exit, !dbg !4459

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144, !dbg !4460
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvMs0_NtCs7qAQKZbgfvS_20cf_rustracing_jaeger8reporterNtBK_14JaegerReporter6reportNCNCNvMBK_NtBK_21JaegerCompactReporter6report00E0ECsbaWXNhtWAp9_11foundations(ptr noundef nonnull align 8 %i.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvMNtCs7qAQKZbgfvS_20cf_rustracing_jaeger8reporterNtBG_21JaegerCompactReporter6report0ECsbaWXNhtWAp9_11foundations.exit unwind label %bb.m, !dbg !4460

bb.g:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !4451 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4429), !dbg !4451
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4430), !dbg !4461
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4431), !dbg !4462
  %i.l = load ptr, ptr %i.k, align 8, !dbg !4463, !alias.scope !4432, !nonnull !718, !noundef !718
  %i.m = atomicrmw add ptr %i.l, i64 -1 release, align 8, !dbg !4464, !noalias !4432
  %i.n = icmp eq i64 %i.m, 1, !dbg !4465
  br i1 %i.n, label %bb.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel18SharedSpanReceiverEBJ_.exit, !dbg !4465

bb.h:                                             ; preds = %bb.g
  fence acquire, !dbg !4466
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCs3zuhHmEJ01l_5tokio4sync5mutex5MutexINtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel8ReceiverINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEEE9drop_slowB1x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #37
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel18SharedSpanReceiverEBJ_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !4467

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger8reporter21JaegerCompactReporterEECsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.b, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !4451 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4433), !dbg !4451
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4434), !dbg !4468
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4435), !dbg !4469
  %i.p = load ptr, ptr %i.o, align 8, !dbg !4470, !alias.scope !4436, !nonnull !718, !noundef !718
  %i.q = atomicrmw add ptr %i.p, i64 -1 release, align 8, !dbg !4471, !noalias !4436
  %i.r = icmp eq i64 %i.q, 1, !dbg !4472
  br i1 %i.r, label %bb.i, label %common.ret, !dbg !4472

bb.i:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger8reporter21JaegerCompactReporterEECsbaWXNhtWAp9_11foundations.exit
  fence acquire, !dbg !4473
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCs3zuhHmEJ01l_5tokio4sync5mutex5MutexINtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel8ReceiverINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEEE9drop_slowB1x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o) #37, !dbg !4474
  br label %common.ret, !dbg !4474

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.s, %bb.p, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueAINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEj1_ECsbaWXNhtWAp9_11foundations.exit, %bb.m, %bb.h, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEECsbaWXNhtWAp9_11foundations.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #36, !dbg !4451
  unreachable, !dbg !4451

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel18SharedSpanReceiverEBJ_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel18SharedSpanReceiverEBJ_.exit21, %bb.s, %bb.g, %bb.h
  %.pn8 = phi { ptr, i32 } [ %i.j, %bb.g ], [ %i.j, %bb.h ], [ %.pn6, %bb.s ], [ %.pn6, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel18SharedSpanReceiverEBJ_.exit21 ]
  resume { ptr, i32 } %.pn8, !dbg !4451

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEECsbaWXNhtWAp9_11foundations.exit19: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueAINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEj1_ECsbaWXNhtWAp9_11foundations.exit16, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !4475 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %bb.k unwind label %bb.j, !dbg !4476

bb.j:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEECsbaWXNhtWAp9_11foundations.exit19
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %.body unwind label %bb.l, !dbg !4477

bb.k:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEECsbaWXNhtWAp9_11foundations.exit19
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEECsbaWXNhtWAp9_11foundations.exit unwind label %bb.q, !dbg !4478

bb.l:                                             ; preds = %bb.j
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #36, !dbg !4476
  unreachable, !dbg !4476

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEECsbaWXNhtWAp9_11foundations.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueAINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEj1_ECsbaWXNhtWAp9_11foundations.exit, %bb.o
  %.pn2 = phi { ptr, i32 } [ %i.ac, %bb.o ], [ %.pn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueAINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEj1_ECsbaWXNhtWAp9_11foundations.exit ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !4475
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(24) %i.v) #38
          to label %.body unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !4475

bb.m:                                             ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 640, !dbg !4479
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %i.x)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueAINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEj1_ECsbaWXNhtWAp9_11foundations.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !4480

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvMNtCs7qAQKZbgfvS_20cf_rustracing_jaeger8reporterNtBG_21JaegerCompactReporter6report0ECsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.e, %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 640, !dbg !4479
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %i.y)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueAINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEj1_ECsbaWXNhtWAp9_11foundations.exit16 unwind label %bb.n, !dbg !4481

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueAINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEj1_ECsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.m, %bb.n
  %.pn = phi { ptr, i32 } [ %i.aa, %bb.n ], [ %i.w, %bb.m ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !4482
  invoke void @_RNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.z)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEECsbaWXNhtWAp9_11foundations.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !4483

bb.n:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvMNtCs7qAQKZbgfvS_20cf_rustracing_jaeger8reporterNtBG_21JaegerCompactReporter6report0ECsbaWXNhtWAp9_11foundations.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueAINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEj1_ECsbaWXNhtWAp9_11foundations.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueAINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEj1_ECsbaWXNhtWAp9_11foundations.exit16: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvMNtCs7qAQKZbgfvS_20cf_rustracing_jaeger8reporterNtBG_21JaegerCompactReporter6report0ECsbaWXNhtWAp9_11foundations.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !4482
  invoke void @_RNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ab)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEECsbaWXNhtWAp9_11foundations.exit19 unwind label %bb.o, !dbg !4484

bb.o:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueAINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEj1_ECsbaWXNhtWAp9_11foundations.exit16, %bb.d
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEECsbaWXNhtWAp9_11foundations.exit

.body:                                            ; preds = %bb.q, %bb.j, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEECsbaWXNhtWAp9_11foundations.exit
  %.pn4 = phi { ptr, i32 } [ %.pn2, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEECsbaWXNhtWAp9_11foundations.exit ], [ %i.ah, %bb.q ], [ %i.t, %bb.j ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !4485 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4437), !dbg !4485
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4438), !dbg !4486
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4439), !dbg !4487
  %i.ae = load ptr, ptr %i.ad, align 8, !dbg !4488, !alias.scope !4440, !nonnull !718, !noundef !718
  %i.af = atomicrmw add ptr %i.ae, i64 -1 release, align 8, !dbg !4489, !noalias !4440
  %i.ag = icmp eq i64 %i.af, 1, !dbg !4490
  br i1 %i.ag, label %bb.p, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel18SharedSpanReceiverEBJ_.exit21, !dbg !4490

bb.p:                                             ; preds = %.body
  fence acquire, !dbg !4491
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCs3zuhHmEJ01l_5tokio4sync5mutex5MutexINtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel8ReceiverINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEEE9drop_slowB1x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ad) #37
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel18SharedSpanReceiverEBJ_.exit21 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !4492

bb.q:                                             ; preds = %bb.k
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEECsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !4485 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4441), !dbg !4485
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4442), !dbg !4493
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4443), !dbg !4494
  %i.aj = load ptr, ptr %i.ai, align 8, !dbg !4495, !alias.scope !4444, !nonnull !718, !noundef !718
  %i.ak = atomicrmw add ptr %i.aj, i64 -1 release, align 8, !dbg !4496, !noalias !4444
  %i.al = icmp eq i64 %i.ak, 1, !dbg !4497
  br i1 %i.al, label %bb.r, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel18SharedSpanReceiverEBJ_.exit23, !dbg !4497

bb.r:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEECsbaWXNhtWAp9_11foundations.exit
  fence acquire, !dbg !4498
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCs3zuhHmEJ01l_5tokio4sync5mutex5MutexINtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel8ReceiverINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEEE9drop_slowB1x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ai) #37
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel18SharedSpanReceiverEBJ_.exit23 unwind label %bb.t, !dbg !4499

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel18SharedSpanReceiverEBJ_.exit21: ; preds = %.body, %bb.p, %bb.t
  %.pn6 = phi { ptr, i32 } [ %i.aq, %bb.t ], [ %.pn4, %bb.p ], [ %.pn4, %.body ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !4500 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4445), !dbg !4500
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4446), !dbg !4501
  %i.an = load ptr, ptr %i.am, align 8, !dbg !4502, !alias.scope !4447, !nonnull !718, !noundef !718
  %i.ao = atomicrmw add ptr %i.an, i64 -1 release, align 8, !dbg !4503, !noalias !4447
  %i.ap = icmp eq i64 %i.ao, 1, !dbg !4504
  br i1 %i.ap, label %bb.s, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel18SharedSpanReceiverEBJ_.exit, !dbg !4504

bb.s:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel18SharedSpanReceiverEBJ_.exit21
  fence acquire, !dbg !4505
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger8reporter21JaegerCompactReporterE9drop_slowCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.am) #37
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel18SharedSpanReceiverEBJ_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !4506

bb.t:                                             ; preds = %bb.r
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel18SharedSpanReceiverEBJ_.exit21

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel18SharedSpanReceiverEBJ_.exit23: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEECsbaWXNhtWAp9_11foundations.exit, %bb.r
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !4500 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4448), !dbg !4500
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4449), !dbg !4507
  %i.as = load ptr, ptr %i.ar, align 8, !dbg !4508, !alias.scope !4450, !nonnull !718, !noundef !718
  %i.at = atomicrmw add ptr %i.as, i64 -1 release, align 8, !dbg !4509, !noalias !4450
  %i.au = icmp eq i64 %i.at, 1, !dbg !4510
  br i1 %i.au, label %bb.u, label %common.ret, !dbg !4510

bb.u:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel18SharedSpanReceiverEBJ_.exit23
  fence acquire, !dbg !4511
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger8reporter21JaegerCompactReporterE9drop_slowCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ar) #37, !dbg !4512
  br label %common.ret, !dbg !4512
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsbaWXNhtWAp9_11foundations11ServiceInfoEBD_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !315 {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsbaWXNhtWAp9_11foundations.exit unwind label %bb.b, !dbg !4517

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECsbaWXNhtWAp9_11foundations.exit.i.i unwind label %bb.c, !dbg !4518

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #36, !dbg !4517
  unreachable, !dbg !4517

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECsbaWXNhtWAp9_11foundations.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !4517

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0), !dbg !4519
  ret void, !dbg !4520
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !78 {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsbaWXNhtWAp9_11foundations.exit unwind label %bb.b, !dbg !4524

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECsbaWXNhtWAp9_11foundations.exit.i unwind label %bb.c, !dbg !4525

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #36, !dbg !4524
  unreachable, !dbg !4524

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECsbaWXNhtWAp9_11foundations.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !4524

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0), !dbg !4526
  ret void, !dbg !4527
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs26L2cHvO7VQ_13cf_rustracing5error5ErrorECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !4528 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4552), !dbg !4556
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !4557 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4553), !dbg !4557
  %i.b = load ptr, ptr %i.a, align 8, !dbg !4558, !alias.scope !4554, !noundef !718 ; 2 uses
  %i.c = icmp eq ptr %i.b, null, !dbg !4558
end_hunk_2
begin_hunk_3_@_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvCs6AjmZOIP0uL_12thread_local15allocate_bucketINtNtBc_4cell7RefCellINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB2D_4sync3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEEEE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB6p_8for_each4callINtB1u_5EntryB2d_ENCINvMsk_B2B_IB2z_B7s_E14extend_trustedBN_E0E0EB51_:bb.a
  %i.f = add i64 %i.c, 1, !dbg !6974              ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !6970 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !6970
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !dbg !6970, !llvm.loop !6956

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.preheader ], [ %i.f, %.lr.ph.i.prol ]
  %.unr = phi i64 [ %.sroa.4.0.copyload, %.lr.ph.i.preheader ], [ %i.f, %.lr.ph.i.prol ]
  %.sroa.0.010.i.unr = phi i64 [ %0, %.lr.ph.i.preheader ], [ %i.d, %.lr.ph.i.prol ]
  %i.g = sub i64 %0, %1, !dbg !6970
  %i.h = icmp ugt i64 %i.g, -4, !dbg !6970
  br i1 %i.h, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtCs6AjmZOIP0uL_12thread_local5EntryINtNtBa_4cell7RefCellINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB36_4sync3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEEEEuNCINvB28_15allocate_bucketB2G_E0NCINvNvBL_8for_each4callB25_NCINvMsk_B34_IB32_B25_E14extend_trustedINtB1B_3MapB3_B6R_EE0E0E0EB5u_.exit, label %.lr.ph.i, !dbg !6970

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %i.i = phi i64 [ %i.o, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ], !dbg !6971 ; 5 uses
  %.sroa.0.010.i = phi i64 [ %i.m, %.lr.ph.i ], [ %.sroa.0.010.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.j = getelementptr inbounds nuw [40 x i8], ptr %.sroa.6.0.copyload, i64 %i.i, !dbg !6972
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 32, !dbg !6973
  store i8 0, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !dbg !6973, !noalias !6966
  %i.k = getelementptr [40 x i8], ptr %.sroa.6.0.copyload, i64 %i.i, !dbg !6972
  %.sroa.42.0..sroa_idx.i.i.1 = getelementptr i8, ptr %i.k, i64 72, !dbg !6973
  store i8 0, ptr %.sroa.42.0..sroa_idx.i.i.1, align 8, !dbg !6973, !noalias !6966
  %i.l = getelementptr [40 x i8], ptr %.sroa.6.0.copyload, i64 %i.i, !dbg !6972
  %.sroa.42.0..sroa_idx.i.i.2 = getelementptr i8, ptr %i.l, i64 112, !dbg !6973
  store i8 0, ptr %.sroa.42.0..sroa_idx.i.i.2, align 8, !dbg !6973, !noalias !6966
  %i.m = add nuw i64 %.sroa.0.010.i, 4, !dbg !6971 ; 2 uses
  %i.n = getelementptr [40 x i8], ptr %.sroa.6.0.copyload, i64 %i.i, !dbg !6972
  %.sroa.42.0..sroa_idx.i.i.3 = getelementptr i8, ptr %i.n, i64 152, !dbg !6973
  store i8 0, ptr %.sroa.42.0..sroa_idx.i.i.3, align 8, !dbg !6973, !noalias !6966
  %i.o = add i64 %i.i, 4, !dbg !6974              ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.m, %1, !dbg !6969
  br i1 %exitcond.not.i.3, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtCs6AjmZOIP0uL_12thread_local5EntryINtNtBa_4cell7RefCellINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB36_4sync3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEEEEuNCINvB28_15allocate_bucketB2G_E0NCINvNvBL_8for_each4callB25_NCINvMsk_B34_IB32_B25_E14extend_trustedINtB1B_3MapB3_B6R_EE0E0E0EB5u_.exit, label %.lr.ph.i, !dbg !6970

_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtCs6AjmZOIP0uL_12thread_local5EntryINtNtBa_4cell7RefCellINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB36_4sync3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEEEEuNCINvB28_15allocate_bucketB2G_E0NCINvNvBL_8for_each4callB25_NCINvMsk_B34_IB32_B25_E14extend_trustedINtB1B_3MapB3_B6R_EE0E0E0EB5u_.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.a
  %.val6.i = phi i64 [ %.sroa.4.0.copyload, %bb.a ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.o, %.lr.ph.i ], !dbg !6975
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val6.i, ptr %.sroa.0.0.copyload, align 8, !dbg !6976, !noalias !6967
  ret void, !dbg !6977
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvCs6AjmZOIP0uL_12thread_local15allocate_bucketINtNtBc_4cell7RefCellINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCs26L2cHvO7VQ_13cf_rustracing6tracer6TracerINtNtB2D_5boxed3BoxDINtNtB3a_7sampler7SamplerNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateENtNtBc_6marker4SendNtB5E_4SyncEL_EB4A_EEEE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB6k_8for_each4callINtB1u_5EntryB2d_ENCINvMsk_B2B_IB2z_B7n_E14extend_trustedBN_E0E0ECsbaWXNhtWAp9_11foundations(i64 noundef %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #7 personality ptr @rust_eh_personality !dbg !6978 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !7021 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !7021
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !7021 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !7021
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !7021 ; 5 uses
  %i.a = icmp ult i64 %0, %1, !dbg !7022
  br i1 %i.a, label %.lr.ph.i.preheader, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtCs6AjmZOIP0uL_12thread_local5EntryINtNtBa_4cell7RefCellINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCs26L2cHvO7VQ_13cf_rustracing6tracer6TracerINtNtB36_5boxed3BoxDINtNtB3D_7sampler7SamplerNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateENtNtBa_6marker4SendNtB67_4SyncEL_EB53_EEEEuNCINvB28_15allocate_bucketB2G_E0NCINvNvBL_8for_each4callB25_NCINvMsk_B34_IB32_B25_E14extend_trustedINtB1B_3MapB3_B6M_EE0E0E0ECsbaWXNhtWAp9_11foundations.exit, !dbg !7023

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.b = sub nuw i64 %1, %0, !dbg !7023
  %xtraiter = and i64 %i.b, 3, !dbg !7023         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !7023
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !dbg !7023

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %i.c = phi i64 [ %i.f, %.lr.ph.i.prol ], [ %.sroa.4.0.copyload, %.lr.ph.i.preheader ], !dbg !7024 ; 2 uses
  %.sroa.0.010.i.prol = phi i64 [ %i.d, %.lr.ph.i.prol ], [ %0, %.lr.ph.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.d = add nuw i64 %.sroa.0.010.i.prol, 1, !dbg !7024 ; 2 uses
  %i.e = getelementptr inbounds nuw [40 x i8], ptr %.sroa.6.0.copyload, i64 %i.c, !dbg !7025
  %.sroa.42.0..sroa_idx.i.i.prol = getelementptr inbounds nuw i8, ptr %i.e, i64 32, !dbg !7026
  store i8 0, ptr %.sroa.42.0..sroa_idx.i.i.prol, align 8, !dbg !7026, !noalias !7019
  %i.f = add i64 %i.c, 1, !dbg !7027              ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !7023 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !7023
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !dbg !7023, !llvm.loop !7009

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.preheader ], [ %i.f, %.lr.ph.i.prol ]
  %.unr = phi i64 [ %.sroa.4.0.copyload, %.lr.ph.i.preheader ], [ %i.f, %.lr.ph.i.prol ]
  %.sroa.0.010.i.unr = phi i64 [ %0, %.lr.ph.i.preheader ], [ %i.d, %.lr.ph.i.prol ]
  %i.g = sub i64 %0, %1, !dbg !7023
  %i.h = icmp ugt i64 %i.g, -4, !dbg !7023
  br i1 %i.h, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtCs6AjmZOIP0uL_12thread_local5EntryINtNtBa_4cell7RefCellINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCs26L2cHvO7VQ_13cf_rustracing6tracer6TracerINtNtB36_5boxed3BoxDINtNtB3D_7sampler7SamplerNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateENtNtBa_6marker4SendNtB67_4SyncEL_EB53_EEEEuNCINvB28_15allocate_bucketB2G_E0NCINvNvBL_8for_each4callB25_NCINvMsk_B34_IB32_B25_E14extend_trustedINtB1B_3MapB3_B6M_EE0E0E0ECsbaWXNhtWAp9_11foundations.exit, label %.lr.ph.i, !dbg !7023

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %i.i = phi i64 [ %i.o, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ], !dbg !7024 ; 5 uses
  %.sroa.0.010.i = phi i64 [ %i.m, %.lr.ph.i ], [ %.sroa.0.010.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.j = getelementptr inbounds nuw [40 x i8], ptr %.sroa.6.0.copyload, i64 %i.i, !dbg !7025
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 32, !dbg !7026
  store i8 0, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !dbg !7026, !noalias !7019
  %i.k = getelementptr [40 x i8], ptr %.sroa.6.0.copyload, i64 %i.i, !dbg !7025
  %.sroa.42.0..sroa_idx.i.i.1 = getelementptr i8, ptr %i.k, i64 72, !dbg !7026
  store i8 0, ptr %.sroa.42.0..sroa_idx.i.i.1, align 8, !dbg !7026, !noalias !7019
  %i.l = getelementptr [40 x i8], ptr %.sroa.6.0.copyload, i64 %i.i, !dbg !7025
  %.sroa.42.0..sroa_idx.i.i.2 = getelementptr i8, ptr %i.l, i64 112, !dbg !7026
  store i8 0, ptr %.sroa.42.0..sroa_idx.i.i.2, align 8, !dbg !7026, !noalias !7019
  %i.m = add nuw i64 %.sroa.0.010.i, 4, !dbg !7024 ; 2 uses
  %i.n = getelementptr [40 x i8], ptr %.sroa.6.0.copyload, i64 %i.i, !dbg !7025
  %.sroa.42.0..sroa_idx.i.i.3 = getelementptr i8, ptr %i.n, i64 152, !dbg !7026
  store i8 0, ptr %.sroa.42.0..sroa_idx.i.i.3, align 8, !dbg !7026, !noalias !7019
  %i.o = add i64 %i.i, 4, !dbg !7027              ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.m, %1, !dbg !7022
  br i1 %exitcond.not.i.3, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtCs6AjmZOIP0uL_12thread_local5EntryINtNtBa_4cell7RefCellINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCs26L2cHvO7VQ_13cf_rustracing6tracer6TracerINtNtB36_5boxed3BoxDINtNtB3D_7sampler7SamplerNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateENtNtBa_6marker4SendNtB67_4SyncEL_EB53_EEEEuNCINvB28_15allocate_bucketB2G_E0NCINvNvBL_8for_each4callB25_NCINvMsk_B34_IB32_B25_E14extend_trustedINtB1B_3MapB3_B6M_EE0E0E0ECsbaWXNhtWAp9_11foundations.exit, label %.lr.ph.i, !dbg !7023

_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtCs6AjmZOIP0uL_12thread_local5EntryINtNtBa_4cell7RefCellINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCs26L2cHvO7VQ_13cf_rustracing6tracer6TracerINtNtB36_5boxed3BoxDINtNtB3D_7sampler7SamplerNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateENtNtBa_6marker4SendNtB67_4SyncEL_EB53_EEEEuNCINvB28_15allocate_bucketB2G_E0NCINvNvBL_8for_each4callB25_NCINvMsk_B34_IB32_B25_E14extend_trustedINtB1B_3MapB3_B6M_EE0E0E0ECsbaWXNhtWAp9_11foundations.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.a
  %.val6.i = phi i64 [ %.sroa.4.0.copyload, %bb.a ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.o, %.lr.ph.i ], !dbg !7028
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val6.i, ptr %.sroa.0.0.copyload, align 8, !dbg !7029, !noalias !7020
  ret void, !dbg !7030
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvCs6AjmZOIP0uL_12thread_local15allocate_bucketINtNtBc_4cell7RefCellINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing8internal10SharedSpanEEE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4m_8for_each4callINtB1u_5EntryB2d_ENCINvMsk_B2B_IB2z_B5p_E14extend_trustedBN_E0E0EB3d_(i64 noundef %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #7 personality ptr @rust_eh_personality !dbg !7031 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !7074 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !7074
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !7074 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !7074
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !7074 ; 5 uses
  %i.a = icmp ult i64 %0, %1, !dbg !7075
  br i1 %i.a, label %.lr.ph.i.preheader, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtCs6AjmZOIP0uL_12thread_local5EntryINtNtBa_4cell7RefCellINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing8internal10SharedSpanEEEuNCINvB28_15allocate_bucketB2G_E0NCINvNvBL_8for_each4callB25_NCINvMsk_B34_IB32_B25_E14extend_trustedINtB1B_3MapB3_B4O_EE0E0E0EB3G_.exit, !dbg !7076

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.b = sub nuw i64 %1, %0, !dbg !7076
  %xtraiter = and i64 %i.b, 3, !dbg !7076         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !7076
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !dbg !7076

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %i.c = phi i64 [ %i.f, %.lr.ph.i.prol ], [ %.sroa.4.0.copyload, %.lr.ph.i.preheader ], !dbg !7077 ; 2 uses
  %.sroa.0.010.i.prol = phi i64 [ %i.d, %.lr.ph.i.prol ], [ %0, %.lr.ph.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.d = add nuw i64 %.sroa.0.010.i.prol, 1, !dbg !7077 ; 2 uses
  %i.e = getelementptr inbounds nuw [40 x i8], ptr %.sroa.6.0.copyload, i64 %i.c, !dbg !7078
  %.sroa.42.0..sroa_idx.i.i.prol = getelementptr inbounds nuw i8, ptr %i.e, i64 32, !dbg !7079
  store i8 0, ptr %.sroa.42.0..sroa_idx.i.i.prol, align 8, !dbg !7079, !noalias !7072
  %i.f = add i64 %i.c, 1, !dbg !7080              ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !7076 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !7076
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !dbg !7076, !llvm.loop !7062

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.preheader ], [ %i.f, %.lr.ph.i.prol ]
  %.unr = phi i64 [ %.sroa.4.0.copyload, %.lr.ph.i.preheader ], [ %i.f, %.lr.ph.i.prol ]
  %.sroa.0.010.i.unr = phi i64 [ %0, %.lr.ph.i.preheader ], [ %i.d, %.lr.ph.i.prol ]
  %i.g = sub i64 %0, %1, !dbg !7076
  %i.h = icmp ugt i64 %i.g, -4, !dbg !7076
  br i1 %i.h, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtCs6AjmZOIP0uL_12thread_local5EntryINtNtBa_4cell7RefCellINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing8internal10SharedSpanEEEuNCINvB28_15allocate_bucketB2G_E0NCINvNvBL_8for_each4callB25_NCINvMsk_B34_IB32_B25_E14extend_trustedINtB1B_3MapB3_B4O_EE0E0E0EB3G_.exit, label %.lr.ph.i, !dbg !7076

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %i.i = phi i64 [ %i.o, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ], !dbg !7077 ; 5 uses
  %.sroa.0.010.i = phi i64 [ %i.m, %.lr.ph.i ], [ %.sroa.0.010.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.j = getelementptr inbounds nuw [40 x i8], ptr %.sroa.6.0.copyload, i64 %i.i, !dbg !7078
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 32, !dbg !7079
  store i8 0, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !dbg !7079, !noalias !7072
  %i.k = getelementptr [40 x i8], ptr %.sroa.6.0.copyload, i64 %i.i, !dbg !7078
  %.sroa.42.0..sroa_idx.i.i.1 = getelementptr i8, ptr %i.k, i64 72, !dbg !7079
  store i8 0, ptr %.sroa.42.0..sroa_idx.i.i.1, align 8, !dbg !7079, !noalias !7072
  %i.l = getelementptr [40 x i8], ptr %.sroa.6.0.copyload, i64 %i.i, !dbg !7078
  %.sroa.42.0..sroa_idx.i.i.2 = getelementptr i8, ptr %i.l, i64 112, !dbg !7079
  store i8 0, ptr %.sroa.42.0..sroa_idx.i.i.2, align 8, !dbg !7079, !noalias !7072
  %i.m = add nuw i64 %.sroa.0.010.i, 4, !dbg !7077 ; 2 uses
  %i.n = getelementptr [40 x i8], ptr %.sroa.6.0.copyload, i64 %i.i, !dbg !7078
  %.sroa.42.0..sroa_idx.i.i.3 = getelementptr i8, ptr %i.n, i64 152, !dbg !7079
  store i8 0, ptr %.sroa.42.0..sroa_idx.i.i.3, align 8, !dbg !7079, !noalias !7072
  %i.o = add i64 %i.i, 4, !dbg !7080              ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.m, %1, !dbg !7075
  br i1 %exitcond.not.i.3, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtCs6AjmZOIP0uL_12thread_local5EntryINtNtBa_4cell7RefCellINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing8internal10SharedSpanEEEuNCINvB28_15allocate_bucketB2G_E0NCINvNvBL_8for_each4callB25_NCINvMsk_B34_IB32_B25_E14extend_trustedINtB1B_3MapB3_B4O_EE0E0E0EB3G_.exit, label %.lr.ph.i, !dbg !7076

_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtCs6AjmZOIP0uL_12thread_local5EntryINtNtBa_4cell7RefCellINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing8internal10SharedSpanEEEuNCINvB28_15allocate_bucketB2G_E0NCINvNvBL_8for_each4callB25_NCINvMsk_B34_IB32_B25_E14extend_trustedINtB1B_3MapB3_B4O_EE0E0E0EB3G_.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.a
  %.val6.i = phi i64 [ %.sroa.4.0.copyload, %bb.a ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.o, %.lr.ph.i ], !dbg !7081
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val6.i, ptr %.sroa.0.0.copyload, align 8, !dbg !7082, !noalias !7073
  ret void, !dbg !7083
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvMs1_Csdra7vpBasQ9_7dashmapINtB1x_7DashMapINtNtCs1xwejQucwHj_5alloc6borrow3CoweENtNtNtCsgtgatFLTNh8_8governor5state9in_memory13InMemoryStateE41with_capacity_and_hasher_and_shard_amount0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4s_8for_each4callINtNtCs5lJabBKj2Vx_15crossbeam_utils12cache_padded11CachePaddedINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtB1x_4lock9RawRwLockINtNtNtCscYIHOBAkUpv_9hashbrown3raw5inner8RawTableTB28_INtNtB1x_4util11SharedValueB2K_EEEEENCINvMsk_NtB2d_3vecINtB9b_3VecB5v_E14extend_trustedBN_E0E0ECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !7084 {
bb.a:
  %i.a = alloca [128 x i8], align 128             ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7146
  %i.c = load i64, ptr %i.b, align 8, !dbg !7146, !noundef !718 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !7146
  %i.e = load i64, ptr %i.d, align 8, !dbg !7146, !noundef !718 ; 2 uses
  %i.f = load ptr, ptr %0, align 8, !dbg !7147, !nonnull !718, !align !826, !noundef !718
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !7148 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !7148
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !7148 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !7148
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !7148
  %i.g = icmp ult i64 %i.c, %i.e, !dbg !7149
  br i1 %i.g, label %.lr.ph.i, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtCs5lJabBKj2Vx_15crossbeam_utils12cache_padded11CachePaddedINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsdra7vpBasQ9_7dashmap4lock9RawRwLockINtNtNtCscYIHOBAkUpv_9hashbrown3raw5inner8RawTableTINtNtCs1xwejQucwHj_5alloc6borrow3CoweEINtNtB3Q_4util11SharedValueNtNtNtCsgtgatFLTNh8_8governor5state9in_memory13InMemoryStateEEEEEuNCNvMs1_B3Q_INtB3Q_7DashMapB5g_B6j_E41with_capacity_and_hasher_and_shard_amount0NCINvNvBL_8for_each4callB25_NCINvMsk_NtB5l_3vecINtB9g_3VecB25_E14extend_trustedINtB1B_3MapB3_B7n_EE0E0E0ECsbaWXNhtWAp9_11foundations.exit, !dbg !7150

.lr.ph.i:                                         ; preds = %bb.a
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b, !dbg !7150

bb.b:                                             ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldjINtNtCs5lJabBKj2Vx_15crossbeam_utils12cache_padded11CachePaddedINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsdra7vpBasQ9_7dashmap4lock9RawRwLockINtNtNtCscYIHOBAkUpv_9hashbrown3raw5inner8RawTableTINtNtCs1xwejQucwHj_5alloc6borrow3CoweEINtNtB2G_4util11SharedValueNtNtNtCsgtgatFLTNh8_8governor5state9in_memory13InMemoryStateEEEEEuNCNvMs1_B2G_INtB2G_7DashMapB46_B59_E41with_capacity_and_hasher_and_shard_amount0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtB4b_3vecINtB8A_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB6d_EE0E0E0CsbaWXNhtWAp9_11foundations.exit.i, %.lr.ph.i
  %.val4.i = phi i64 [ %.sroa.5.0.copyload, %.lr.ph.i ], [ %i.k, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldjINtNtCs5lJabBKj2Vx_15crossbeam_utils12cache_padded11CachePaddedINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsdra7vpBasQ9_7dashmap4lock9RawRwLockINtNtNtCscYIHOBAkUpv_9hashbrown3raw5inner8RawTableTINtNtCs1xwejQucwHj_5alloc6borrow3CoweEINtNtB2G_4util11SharedValueNtNtNtCsgtgatFLTNh8_8governor5state9in_memory13InMemoryStateEEEEEuNCNvMs1_B2G_INtB2G_7DashMapB46_B59_E41with_capacity_and_hasher_and_shard_amount0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtB4b_3vecINtB8A_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB6d_EE0E0E0CsbaWXNhtWAp9_11foundations.exit.i ] ; 3 uses
  %.sroa.0.010.i = phi i64 [ %i.c, %.lr.ph.i ], [ %i.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldjINtNtCs5lJabBKj2Vx_15crossbeam_utils12cache_padded11CachePaddedINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsdra7vpBasQ9_7dashmap4lock9RawRwLockINtNtNtCscYIHOBAkUpv_9hashbrown3raw5inner8RawTableTINtNtCs1xwejQucwHj_5alloc6borrow3CoweEINtNtB2G_4util11SharedValueNtNtNtCsgtgatFLTNh8_8governor5state9in_memory13InMemoryStateEEEEEuNCNvMs1_B2G_INtB2G_7DashMapB46_B59_E41with_capacity_and_hasher_and_shard_amount0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtB4b_3vecINtB8A_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB6d_EE0E0E0CsbaWXNhtWAp9_11foundations.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !7151, !noalias !7133
  %i.h = load i64, ptr %i.f, align 8, !dbg !7152, !noalias !7134, !noundef !718
  invoke void @_RNvMs6_NtNtCscYIHOBAkUpv_9hashbrown3raw5innerINtB5_8RawTableTINtNtCs1xwejQucwHj_5alloc6borrow3CoweEINtNtCsdra7vpBasQ9_7dashmap4util11SharedValueNtNtNtCsgtgatFLTNh8_8governor5state9in_memory13InMemoryStateEEE16with_capacity_inCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %.sroa.4.0..sroa_idx.i.i.i, i64 noundef %i.h)
          to label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldjINtNtCs5lJabBKj2Vx_15crossbeam_utils12cache_padded11CachePaddedINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsdra7vpBasQ9_7dashmap4lock9RawRwLockINtNtNtCscYIHOBAkUpv_9hashbrown3raw5inner8RawTableTINtNtCs1xwejQucwHj_5alloc6borrow3CoweEINtNtB2G_4util11SharedValueNtNtNtCsgtgatFLTNh8_8governor5state9in_memory13InMemoryStateEEEEEuNCNvMs1_B2G_INtB2G_7DashMapB46_B59_E41with_capacity_and_hasher_and_shard_amount0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtB4b_3vecINtB8A_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB6d_EE0E0E0CsbaWXNhtWAp9_11foundations.exit.i unwind label %bb.c, !dbg !7153, !noalias !7133

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldjINtNtCs5lJabBKj2Vx_15crossbeam_utils12cache_padded11CachePaddedINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsdra7vpBasQ9_7dashmap4lock9RawRwLockINtNtNtCscYIHOBAkUpv_9hashbrown3raw5inner8RawTableTINtNtCs1xwejQucwHj_5alloc6borrow3CoweEINtNtB2G_4util11SharedValueNtNtNtCsgtgatFLTNh8_8governor5state9in_memory13InMemoryStateEEEEEuNCNvMs1_B2G_INtB2G_7DashMapB46_B59_E41with_capacity_and_hasher_and_shard_amount0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtB4b_3vecINtB8A_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB6d_EE0E0E0CsbaWXNhtWAp9_11foundations.exit.i: ; preds = %bb.b
  %i.i = add nuw i64 %.sroa.0.010.i, 1, !dbg !7154 ; 2 uses
  store i64 0, ptr %i.a, align 128, !dbg !7155, !noalias !7141
  %i.j = getelementptr inbounds nuw [128 x i8], ptr %.sroa.7.0.copyload, i64 %.val4.i, !dbg !7156
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(128) %i.j, ptr noundef nonnull readonly align 128 dereferenceable(128) %i.a, i64 128, i1 false), !dbg !7157, !noalias !7141
  %i.k = add i64 %.val4.i, 1, !dbg !7158          ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !7159, !noalias !7133
  %exitcond.not.i = icmp eq i64 %i.i, %i.e, !dbg !7149
  br i1 %exitcond.not.i, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtCs5lJabBKj2Vx_15crossbeam_utils12cache_padded11CachePaddedINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsdra7vpBasQ9_7dashmap4lock9RawRwLockINtNtNtCscYIHOBAkUpv_9hashbrown3raw5inner8RawTableTINtNtCs1xwejQucwHj_5alloc6borrow3CoweEINtNtB3Q_4util11SharedValueNtNtNtCsgtgatFLTNh8_8governor5state9in_memory13InMemoryStateEEEEEuNCNvMs1_B3Q_INtB3Q_7DashMapB5g_B6j_E41with_capacity_and_hasher_and_shard_amount0NCINvNvBL_8for_each4callB25_NCINvMsk_NtB5l_3vecINtB9g_3VecB25_E14extend_trustedINtB1B_3MapB3_B7n_EE0E0E0ECsbaWXNhtWAp9_11foundations.exit, label %bb.b, !dbg !7150

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val4.i, ptr %.sroa.0.0.copyload, align 8, !dbg !7160, !noalias !7133
  resume { ptr, i32 } %i.l, !dbg !7161

_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtCs5lJabBKj2Vx_15crossbeam_utils12cache_padded11CachePaddedINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsdra7vpBasQ9_7dashmap4lock9RawRwLockINtNtNtCscYIHOBAkUpv_9hashbrown3raw5inner8RawTableTINtNtCs1xwejQucwHj_5alloc6borrow3CoweEINtNtB3Q_4util11SharedValueNtNtNtCsgtgatFLTNh8_8governor5state9in_memory13InMemoryStateEEEEEuNCNvMs1_B3Q_INtB3Q_7DashMapB5g_B6j_E41with_capacity_and_hasher_and_shard_amount0NCINvNvBL_8for_each4callB25_NCINvMsk_NtB5l_3vecINtB9g_3VecB25_E14extend_trustedINtB1B_3MapB3_B7n_EE0E0E0ECsbaWXNhtWAp9_11foundations.exit: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldjINtNtCs5lJabBKj2Vx_15crossbeam_utils12cache_padded11CachePaddedINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsdra7vpBasQ9_7dashmap4lock9RawRwLockINtNtNtCscYIHOBAkUpv_9hashbrown3raw5inner8RawTableTINtNtCs1xwejQucwHj_5alloc6borrow3CoweEINtNtB2G_4util11SharedValueNtNtNtCsgtgatFLTNh8_8governor5state9in_memory13InMemoryStateEEEEEuNCNvMs1_B2G_INtB2G_7DashMapB46_B59_E41with_capacity_and_hasher_and_shard_amount0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtB4b_3vecINtB8A_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB6d_EE0E0E0CsbaWXNhtWAp9_11foundations.exit.i, %bb.a
  %.val6.i = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.k, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldjINtNtCs5lJabBKj2Vx_15crossbeam_utils12cache_padded11CachePaddedINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsdra7vpBasQ9_7dashmap4lock9RawRwLockINtNtNtCscYIHOBAkUpv_9hashbrown3raw5inner8RawTableTINtNtCs1xwejQucwHj_5alloc6borrow3CoweEINtNtB2G_4util11SharedValueNtNtNtCsgtgatFLTNh8_8governor5state9in_memory13InMemoryStateEEEEEuNCNvMs1_B2G_INtB2G_7DashMapB46_B59_E41with_capacity_and_hasher_and_shard_amount0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtB4b_3vecINtB8A_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB6d_EE0E0E0CsbaWXNhtWAp9_11foundations.exit.i ], !dbg !7162
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val6.i, ptr %.sroa.0.0.copyload, align 8, !dbg !7163, !noalias !7133
  ret void, !dbg !7164
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvMs1_NtNtCs3zuhHmEJ01l_5tokio4sync9broadcastINtB1x_6SenderNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7ChannelE23new_with_receiver_count0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3G_8for_each4callINtNtNtNtB1B_4loom3std5mutex5MutexINtB1x_4SlotB2o_EENCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5I_3VecB4J_E14extend_trustedBN_E0E0ECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #8 personality ptr @rust_eh_personality !dbg !7165 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7216
  %i.b = load i64, ptr %i.a, align 8, !dbg !7216, !noundef !718 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !7216
  %i.d = load i64, ptr %i.c, align 8, !dbg !7216, !noundef !718 ; 4 uses
  %i.e = load ptr, ptr %0, align 8, !dbg !7217, !nonnull !718, !align !826, !noundef !718 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !7218 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !7218
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !7218 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !7218
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !7218 ; 3 uses
  %i.f = icmp ult i64 %i.b, %i.d, !dbg !7219
  br i1 %i.f, label %.lr.ph.i.preheader, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtNtNtCs3zuhHmEJ01l_5tokio4loom3std5mutex5MutexINtNtNtB2e_4sync9broadcast4SlotNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7ChannelEEuNCNvMs1_B2W_INtB2W_6SenderB3o_E23new_with_receiver_count0NCINvNvBL_8for_each4callB25_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5N_3VecB25_E14extend_trustedINtB1B_3MapB3_B4h_EE0E0E0ECsbaWXNhtWAp9_11foundations.exit, !dbg !7220

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.g = sub nuw i64 %i.d, %i.b, !dbg !7220
  %.neg = add i64 %i.b, 1, !dbg !7220
  %xtraiter = and i64 %i.g, 1, !dbg !7220
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !7220
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !dbg !7220

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.h = add nuw i64 %i.b, 1, !dbg !7221
  %i.i = load i64, ptr %i.e, align 8, !dbg !7222, !noalias !7211, !noundef !718
  %i.j = sub i64 %i.b, %i.i, !dbg !7223
  %i.k = getelementptr inbounds nuw [72 x i8], ptr %.sroa.6.0.copyload, i64 %.sroa.4.0.copyload, !dbg !7224 ; 5 uses
  store i32 0, ptr %i.k, align 8, !dbg !7225, !noalias !7214
  %.sroa.44.0..sroa_idx.i.i.prol = getelementptr inbounds nuw i8, ptr %i.k, i64 4, !dbg !7225
  store i8 0, ptr %.sroa.44.0..sroa_idx.i.i.prol, align 4, !dbg !7225, !noalias !7214
  %.sroa.66.0..sroa_idx.i.i.prol = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !7225
  store i64 -1, ptr %.sroa.66.0..sroa_idx.i.i.prol, align 8, !dbg !7225, !noalias !7214
  %.sroa.8.0..sroa_idx.i.i.prol = getelementptr inbounds nuw i8, ptr %i.k, i64 56, !dbg !7225
  store i64 0, ptr %.sroa.8.0..sroa_idx.i.i.prol, align 8, !dbg !7225, !noalias !7214
  %.sroa.9.0..sroa_idx.i.i.prol = getelementptr inbounds nuw i8, ptr %i.k, i64 64, !dbg !7225
  store i64 %i.j, ptr %.sroa.9.0..sroa_idx.i.i.prol, align 8, !dbg !7225, !noalias !7214
  %i.l = add i64 %.sroa.4.0.copyload, 1, !dbg !7226 ; 2 uses
  br label %.lr.ph.i.prol.loopexit, !dbg !7220

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.preheader ], [ %i.l, %.lr.ph.i.prol ]
  %.unr = phi i64 [ %.sroa.4.0.copyload, %.lr.ph.i.preheader ], [ %i.l, %.lr.ph.i.prol ]
  %.sroa.0.010.i.unr = phi i64 [ %i.b, %.lr.ph.i.preheader ], [ %i.h, %.lr.ph.i.prol ]
  %i.m = icmp eq i64 %i.d, %.neg, !dbg !7220
  br i1 %i.m, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtNtNtCs3zuhHmEJ01l_5tokio4loom3std5mutex5MutexINtNtNtB2e_4sync9broadcast4SlotNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7ChannelEEuNCNvMs1_B2W_INtB2W_6SenderB3o_E23new_with_receiver_count0NCINvNvBL_8for_each4callB25_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5N_3VecB25_E14extend_trustedINtB1B_3MapB3_B4h_EE0E0E0ECsbaWXNhtWAp9_11foundations.exit, label %.lr.ph.i, !dbg !7220

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %i.n = phi i64 [ %i.x, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ], !dbg !7221 ; 3 uses
  %.sroa.0.010.i = phi i64 [ %i.s, %.lr.ph.i ], [ %.sroa.0.010.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.o = add nuw i64 %.sroa.0.010.i, 1, !dbg !7221
  %i.p = load i64, ptr %i.e, align 8, !dbg !7222, !noalias !7211, !noundef !718
  %i.q = sub i64 %.sroa.0.010.i, %i.p, !dbg !7223
  %i.r = getelementptr inbounds nuw [72 x i8], ptr %.sroa.6.0.copyload, i64 %i.n, !dbg !7224 ; 5 uses
  store i32 0, ptr %i.r, align 8, !dbg !7225, !noalias !7214
  %.sroa.44.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 4, !dbg !7225
  store i8 0, ptr %.sroa.44.0..sroa_idx.i.i, align 4, !dbg !7225, !noalias !7214
  %.sroa.66.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8, !dbg !7225
  store i64 -1, ptr %.sroa.66.0..sroa_idx.i.i, align 8, !dbg !7225, !noalias !7214
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 56, !dbg !7225
  store i64 0, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !dbg !7225, !noalias !7214
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 64, !dbg !7225
  store i64 %i.q, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !dbg !7225, !noalias !7214
  %i.s = add nuw i64 %.sroa.0.010.i, 2, !dbg !7221 ; 2 uses
  %i.t = load i64, ptr %i.e, align 8, !dbg !7222, !noalias !7211, !noundef !718
  %i.u = sub i64 %i.o, %i.t, !dbg !7223
  %i.v = getelementptr [72 x i8], ptr %.sroa.6.0.copyload, i64 %i.n, !dbg !7224 ; 5 uses
  %i.w = getelementptr i8, ptr %i.v, i64 72, !dbg !7224
  store i32 0, ptr %i.w, align 8, !dbg !7225, !noalias !7214
  %.sroa.44.0..sroa_idx.i.i.1 = getelementptr i8, ptr %i.v, i64 76, !dbg !7225
  store i8 0, ptr %.sroa.44.0..sroa_idx.i.i.1, align 4, !dbg !7225, !noalias !7214
  %.sroa.66.0..sroa_idx.i.i.1 = getelementptr i8, ptr %i.v, i64 80, !dbg !7225
  store i64 -1, ptr %.sroa.66.0..sroa_idx.i.i.1, align 8, !dbg !7225, !noalias !7214
  %.sroa.8.0..sroa_idx.i.i.1 = getelementptr i8, ptr %i.v, i64 128, !dbg !7225
  store i64 0, ptr %.sroa.8.0..sroa_idx.i.i.1, align 8, !dbg !7225, !noalias !7214
  %.sroa.9.0..sroa_idx.i.i.1 = getelementptr i8, ptr %i.v, i64 136, !dbg !7225
  store i64 %i.u, ptr %.sroa.9.0..sroa_idx.i.i.1, align 8, !dbg !7225, !noalias !7214
  %i.x = add i64 %i.n, 2, !dbg !7226              ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.s, %i.d, !dbg !7219
  br i1 %exitcond.not.i.1, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtNtNtCs3zuhHmEJ01l_5tokio4loom3std5mutex5MutexINtNtNtB2e_4sync9broadcast4SlotNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7ChannelEEuNCNvMs1_B2W_INtB2W_6SenderB3o_E23new_with_receiver_count0NCINvNvBL_8for_each4callB25_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5N_3VecB25_E14extend_trustedINtB1B_3MapB3_B4h_EE0E0E0ECsbaWXNhtWAp9_11foundations.exit, label %.lr.ph.i, !dbg !7220

_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtNtNtCs3zuhHmEJ01l_5tokio4loom3std5mutex5MutexINtNtNtB2e_4sync9broadcast4SlotNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7ChannelEEuNCNvMs1_B2W_INtB2W_6SenderB3o_E23new_with_receiver_count0NCINvNvBL_8for_each4callB25_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5N_3VecB25_E14extend_trustedINtB1B_3MapB3_B4h_EE0E0E0ECsbaWXNhtWAp9_11foundations.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.a
  %.val6.i = phi i64 [ %.sroa.4.0.copyload, %bb.a ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.x, %.lr.ph.i ], !dbg !7227
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val6.i, ptr %.sroa.0.0.copyload, align 8, !dbg !7228, !noalias !7215
  ret void, !dbg !7229
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvMs_NtNtCs49WdmBbiWyj_17crossbeam_channel7flavors5arrayINtB1w_7ChannelNtCshBQhFkKQVuE_10slog_async8AsyncMsgE13with_capacity0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3t_8for_each4callINtB1w_4SlotB2A_ENCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4W_3VecB4w_E14extend_trustedBN_E0E0ECsbaWXNhtWAp9_11foundations(i64 noundef %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #7 personality ptr @rust_eh_personality !dbg !7230 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !7273 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !7273
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !7273 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !7273
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !7273 ; 5 uses
  %i.a = icmp ult i64 %0, %1, !dbg !7274
  br i1 %i.a, label %.lr.ph.i.preheader, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtNtCs49WdmBbiWyj_17crossbeam_channel7flavors5array4SlotNtCshBQhFkKQVuE_10slog_async8AsyncMsgEuNCNvMs_B28_INtB28_7ChannelB32_E13with_capacity0NCINvNvBL_8for_each4callB25_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB51_3VecB25_E14extend_trustedINtB1B_3MapB3_B3F_EE0E0E0ECsbaWXNhtWAp9_11foundations.exit, !dbg !7275

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.b = sub nuw i64 %1, %0, !dbg !7275
  %xtraiter = and i64 %i.b, 3, !dbg !7275         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !7275
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !dbg !7275

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %i.c = phi i64 [ %i.f, %.lr.ph.i.prol ], [ %.sroa.4.0.copyload, %.lr.ph.i.preheader ], !dbg !7276 ; 2 uses
  %.sroa.0.010.i.prol = phi i64 [ %i.d, %.lr.ph.i.prol ], [ %0, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.d = add nuw i64 %.sroa.0.010.i.prol, 1, !dbg !7276 ; 2 uses
  %i.e = getelementptr inbounds nuw [104 x i8], ptr %.sroa.6.0.copyload, i64 %i.c, !dbg !7277
  %.sroa.4.0..sroa_idx.i.i.prol = getelementptr inbounds nuw i8, ptr %i.e, i64 96, !dbg !7278
  store i64 %.sroa.0.010.i.prol, ptr %.sroa.4.0..sroa_idx.i.i.prol, align 8, !dbg !7278, !noalias !7271
  %i.f = add i64 %i.c, 1, !dbg !7279              ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !7275 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !7275
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !dbg !7275, !llvm.loop !7261

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.preheader ], [ %i.f, %.lr.ph.i.prol ]
  %.unr = phi i64 [ %.sroa.4.0.copyload, %.lr.ph.i.preheader ], [ %i.f, %.lr.ph.i.prol ]
  %.sroa.0.010.i.unr = phi i64 [ %0, %.lr.ph.i.preheader ], [ %i.d, %.lr.ph.i.prol ]
  %i.g = sub i64 %0, %1, !dbg !7275
  %i.h = icmp ugt i64 %i.g, -4, !dbg !7275
  br i1 %i.h, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtNtCs49WdmBbiWyj_17crossbeam_channel7flavors5array4SlotNtCshBQhFkKQVuE_10slog_async8AsyncMsgEuNCNvMs_B28_INtB28_7ChannelB32_E13with_capacity0NCINvNvBL_8for_each4callB25_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB51_3VecB25_E14extend_trustedINtB1B_3MapB3_B3F_EE0E0E0ECsbaWXNhtWAp9_11foundations.exit, label %.lr.ph.i, !dbg !7275

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %i.i = phi i64 [ %i.r, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ], !dbg !7276 ; 5 uses
  %.sroa.0.010.i = phi i64 [ %i.p, %.lr.ph.i ], [ %.sroa.0.010.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.j = add nuw i64 %.sroa.0.010.i, 1, !dbg !7276
  %i.k = getelementptr inbounds nuw [104 x i8], ptr %.sroa.6.0.copyload, i64 %i.i, !dbg !7277
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 96, !dbg !7278
  store i64 %.sroa.0.010.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !7278, !noalias !7271
  %i.l = add nuw i64 %.sroa.0.010.i, 2, !dbg !7276
  %i.m = getelementptr [104 x i8], ptr %.sroa.6.0.copyload, i64 %i.i, !dbg !7277
  %.sroa.4.0..sroa_idx.i.i.1 = getelementptr i8, ptr %i.m, i64 200, !dbg !7278
  store i64 %i.j, ptr %.sroa.4.0..sroa_idx.i.i.1, align 8, !dbg !7278, !noalias !7271
  %i.n = add nuw i64 %.sroa.0.010.i, 3, !dbg !7276
  %i.o = getelementptr [104 x i8], ptr %.sroa.6.0.copyload, i64 %i.i, !dbg !7277
  %.sroa.4.0..sroa_idx.i.i.2 = getelementptr i8, ptr %i.o, i64 304, !dbg !7278
  store i64 %i.l, ptr %.sroa.4.0..sroa_idx.i.i.2, align 8, !dbg !7278, !noalias !7271
  %i.p = add nuw i64 %.sroa.0.010.i, 4, !dbg !7276 ; 2 uses
  %i.q = getelementptr [104 x i8], ptr %.sroa.6.0.copyload, i64 %i.i, !dbg !7277
  %.sroa.4.0..sroa_idx.i.i.3 = getelementptr i8, ptr %i.q, i64 408, !dbg !7278
  store i64 %i.n, ptr %.sroa.4.0..sroa_idx.i.i.3, align 8, !dbg !7278, !noalias !7271
  %i.r = add i64 %i.i, 4, !dbg !7279              ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.p, %1, !dbg !7274
  br i1 %exitcond.not.i.3, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtNtCs49WdmBbiWyj_17crossbeam_channel7flavors5array4SlotNtCshBQhFkKQVuE_10slog_async8AsyncMsgEuNCNvMs_B28_INtB28_7ChannelB32_E13with_capacity0NCINvNvBL_8for_each4callB25_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB51_3VecB25_E14extend_trustedINtB1B_3MapB3_B3F_EE0E0E0ECsbaWXNhtWAp9_11foundations.exit, label %.lr.ph.i, !dbg !7275

_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtNtCs49WdmBbiWyj_17crossbeam_channel7flavors5array4SlotNtCshBQhFkKQVuE_10slog_async8AsyncMsgEuNCNvMs_B28_INtB28_7ChannelB32_E13with_capacity0NCINvNvBL_8for_each4callB25_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB51_3VecB25_E14extend_trustedINtB1B_3MapB3_B3F_EE0E0E0ECsbaWXNhtWAp9_11foundations.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.a
  %.val6.i = phi i64 [ %.sroa.4.0.copyload, %bb.a ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.r, %.lr.ph.i ], !dbg !7280
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val6.i, ptr %.sroa.0.0.copyload, align 8, !dbg !7281, !noalias !7272
  ret void, !dbg !7282
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing16output_otlp_grpc5start0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2I_8for_each4callINtNtBc_3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtBc_6future6future6Futurep6OutputuNtNtBc_6marker4SendEL_EENCINvMsk_NtB46_3vecINtB5L_3VecB3L_E14extend_trustedBN_E0E0EB1z_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !7283 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [1632 x i8], align 8              ; 18 uses
  %.sroa.0.i.i.i = alloca [24 x i8], align 8      ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !7369
  %i.e = load i64, ptr %i.d, align 8, !dbg !7369, !noundef !718 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !7369
  %i.g = load i64, ptr %i.f, align 8, !dbg !7369, !noundef !718 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !7370 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !7370
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !7370 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !7370
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !7370
  %.sroa.8.24.copyload = load ptr, ptr %0, align 8, !dbg !7370 ; 2 uses
  %.sroa.10.24..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7370
  %.sroa.10.24.copyload = load ptr, ptr %.sroa.10.24..sroa_idx, align 8, !dbg !7370 ; 9 uses
  %.sroa.11.24..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !7370
  %.sroa.11.24.copyload = load ptr, ptr %.sroa.11.24..sroa_idx, align 8, !dbg !7370 ; 2 uses
  %.sroa.12.24..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !7370
  %.sroa.12.24.copyload = load ptr, ptr %.sroa.12.24..sroa_idx, align 8, !dbg !7370
  %i.h = icmp ult i64 %i.e, %i.g, !dbg !7371
  br i1 %i.h, label %.lr.ph.i, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtBa_3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtBa_6future6future6Futurep6OutputuNtNtBa_6marker4SendEL_EEuNCNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing16output_otlp_grpc5start0NCINvNvBL_8for_each4callB25_NCINvMsk_NtB2q_3vecINtB5Q_3VecB25_E14extend_trustedINtB1B_3MapB3_B3X_EE0E0E0EB47_.exit, !dbg !7372

.lr.ph.i:                                         ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.24.copyload) ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.10.24.copyload, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.10.24.copyload, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.10.24.copyload, i64 40
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.10.24.copyload, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.10.24.copyload, i64 56
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.10.24.copyload, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.10.24.copyload, i64 72
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.10.24.copyload, i64 80
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  br label %bb.c, !dbg !7372

bb.b:                                             ; preds = %bb.c
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.l, !dbg !7373

bb.c:                                             ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldjINtNtBa_3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtBa_6future6future6Futurep6OutputuNtNtBa_6marker4SendEL_EEuNCNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing16output_otlp_grpc5start0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtB1g_3vecINtB5a_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2N_EE0E0E0B2X_.exit.i, %.lr.ph.i
  %.val4.i = phi i64 [ %.sroa.5.0.copyload, %.lr.ph.i ], [ %i.aw, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldjINtNtBa_3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtBa_6future6future6Futurep6OutputuNtNtBa_6marker4SendEL_EEuNCNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing16output_otlp_grpc5start0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtB1g_3vecINtB5a_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2N_EE0E0E0B2X_.exit.i ] ; 3 uses
  %.sroa.0.010.i = phi i64 [ %i.e, %.lr.ph.i ], [ %i.x, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldjINtNtBa_3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtBa_6future6future6Futurep6OutputuNtNtBa_6marker4SendEL_EEuNCNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing16output_otlp_grpc5start0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtB1g_3vecINtB5a_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2N_EE0E0E0B2X_.exit.i ]
  %i.x = add nuw i64 %.sroa.0.010.i, 1, !dbg !7374 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !7375, !noalias !7364
  %i.y = invoke { ptr, i64 } @_RNvMs1_NtNtCs3zuhHmEJ01l_5tokio4sync9broadcastINtB5_6SenderNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7ChannelE9subscribeCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.8.24.copyload)
          to label %.noexc.i unwind label %bb.b, !dbg !7376, !noalias !7365 ; 2 uses

.noexc.i:                                         ; preds = %bb.c
  %i.z = extractvalue { ptr, i64 } %i.y, 0, !dbg !7376 ; 2 uses
  %i.aa = extractvalue { ptr, i64 } %i.y, 1, !dbg !7376 ; 2 uses
  store ptr %i.z, ptr %i.c, align 8, !dbg !7376, !noalias !7364
  store i64 %i.aa, ptr %i.i, align 8, !dbg !7376, !noalias !7364
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i), !dbg !7377
  %i.ab = load ptr, ptr %i.j, align 8, !dbg !7378, !noalias !7364, !nonnull !718, !noundef !718
  %i.ac = load i64, ptr %i.k, align 8, !dbg !7378, !noalias !7364, !noundef !718
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !7378, !noalias !7364
  invoke void @_RNvXs4_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.10.24.copyload)
          to label %bb.d unwind label %bb.j, !dbg !7378, !noalias !7364

bb.d:                                             ; preds = %.noexc.i
  %i.ad = load ptr, ptr %i.l, align 8, !dbg !7378, !noalias !7364, !nonnull !718, !noundef !718
  %i.ae = load i64, ptr %i.m, align 8, !dbg !7378, !noalias !7364, !noundef !718
  %i.af = load ptr, ptr %i.n, align 8, !dbg !7378, !noalias !7364, !nonnull !718, !noundef !718
  %i.ag = load i64, ptr %i.o, align 8, !dbg !7378, !noalias !7364, !noundef !718
  %i.ah = load ptr, ptr %i.p, align 8, !dbg !7378, !noalias !7364, !nonnull !718, !noundef !718
  %i.ai = load i64, ptr %i.q, align 8, !dbg !7378, !noalias !7364, !noundef !718
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !7378, !noalias !7364
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !7378, !noalias !7364
  %i.aj = load ptr, ptr %.sroa.11.24.copyload, align 8, !dbg !7379, !noalias !7364, !nonnull !718, !noundef !718
  %i.ak = atomicrmw add ptr %i.aj, i64 1 monotonic, align 8, !dbg !7380, !noalias !7364
  %i.al = icmp slt i64 %i.ak, 0, !dbg !7381
  br i1 %i.al, label %bb.i, label %bb.e, !dbg !7381

bb.e:                                             ; preds = %bb.d
  %i.am = load ptr, ptr %.sroa.11.24.copyload, align 8, !dbg !7382, !noalias !7364, !nonnull !718, !noundef !718
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !7383, !noalias !7364
  store ptr %i.z, ptr %i.r, align 8, !dbg !7383, !noalias !7364
  store i64 %i.aa, ptr %i.s, align 8, !dbg !7383, !noalias !7364
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i.i, i64 24, i1 false), !dbg !7383, !noalias !7364
  store ptr %i.ab, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !dbg !7383, !noalias !7364
  store i64 %i.ac, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !dbg !7383, !noalias !7364
  store ptr %i.ad, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !dbg !7383, !noalias !7364
  store i64 %i.ae, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !dbg !7383, !noalias !7364
  store ptr %i.af, ptr %.sroa.8.0..sroa_idx.i.i.i, align 8, !dbg !7383, !noalias !7364
  store i64 %i.ag, ptr %.sroa.9.0..sroa_idx.i.i.i, align 8, !dbg !7383, !noalias !7364
  store ptr %i.ah, ptr %.sroa.10.0..sroa_idx.i.i.i, align 8, !dbg !7383, !noalias !7364
  store i64 %i.ai, ptr %.sroa.11.0..sroa_idx.i.i.i, align 8, !dbg !7383, !noalias !7364
  store ptr %i.am, ptr %i.t, align 8, !dbg !7383, !noalias !7364
  %i.an = load i64, ptr %.sroa.12.24.copyload, align 8, !dbg !7383, !noalias !7364, !noundef !718
  store i64 %i.an, ptr %i.u, align 8, !dbg !7383, !noalias !7364
  store i8 0, ptr %i.v, align 8, !dbg !7383, !noalias !7364
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #35, !dbg !7384, !noalias !7367
  %i.ao = tail call noundef align 8 dereferenceable_or_null(1632) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, 1633) 1632, i64 noundef range(i64 1, 9) 8) #35, !dbg !7385, !noalias !7367 ; 3 uses
  %i.ap = icmp eq ptr %i.ao, null, !dbg !7386
  br i1 %i.ap, label %bb.f, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldjINtNtBa_3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtBa_6future6future6Futurep6OutputuNtNtBa_6marker4SendEL_EEuNCNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing16output_otlp_grpc5start0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtB1g_3vecINtB5a_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2N_EE0E0E0B2X_.exit.i, !dbg !7387, !prof !764

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1632) #34
          to label %.noexc.i.i.i unwind label %bb.g, !dbg !7388, !noalias !7364

.noexc.i.i.i:                                     ; preds = %bb.f
  unreachable, !dbg !7388

bb.g:                                             ; preds = %bb.f
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNCNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing16output_otlp_grpc5start00EBN_(ptr noundef nonnull align 8 dereferenceable(1632) %i.b) #38
          to label %bb.l unwind label %bb.h, !dbg !7389, !noalias !7364

bb.h:                                             ; preds = %bb.g
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #36, !dbg !7390, !noalias !7364
  unreachable, !dbg !7390

bb.i:                                             ; preds = %bb.d
  tail call void @llvm.trap(), !dbg !7391
  unreachable, !dbg !7391

bb.j:                                             ; preds = %.noexc.i
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs3zuhHmEJ01l_5tokio4sync9broadcast8ReceiverNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7ChannelEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(16) %i.c) #38
          to label %bb.l unwind label %bb.k, !dbg !7392, !noalias !7364

bb.k:                                             ; preds = %bb.j
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #36, !dbg !7393, !noalias !7364
  unreachable, !dbg !7393

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldjINtNtBa_3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtBa_6future6future6Futurep6OutputuNtNtBa_6marker4SendEL_EEuNCNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing16output_otlp_grpc5start0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtB1g_3vecINtB5a_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2N_EE0E0E0B2X_.exit.i: ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1632) %i.ao, ptr noundef nonnull align 8 dereferenceable(1632) %i.b, i64 1632, i1 false), !dbg !7394, !noalias !7364
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !7395, !noalias !7364
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i), !dbg !7396
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !7392, !noalias !7364
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %.val4.i, !dbg !7397 ; 2 uses
  store ptr %i.ao, ptr %i.au, align 8, !dbg !7398, !noalias !7368
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8, !dbg !7398
  store ptr @63, ptr %i.av, align 8, !dbg !7398, !noalias !7368
  %i.aw = add i64 %.val4.i, 1, !dbg !7399         ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.x, %i.g, !dbg !7371
  br i1 %exitcond.not.i, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtBa_3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtBa_6future6future6Futurep6OutputuNtNtBa_6marker4SendEL_EEuNCNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing16output_otlp_grpc5start0NCINvNvBL_8for_each4callB25_NCINvMsk_NtB2q_3vecINtB5Q_3VecB25_E14extend_trustedINtB1B_3MapB3_B3X_EE0E0E0EB47_.exit, label %bb.c, !dbg !7372

bb.l:                                             ; preds = %bb.j, %bb.g, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.w, %bb.b ], [ %i.as, %bb.j ], [ %i.aq, %bb.g ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val4.i, ptr %.sroa.0.0.copyload, align 8, !dbg !7400, !noalias !7365
  resume { ptr, i32 } %eh.lpad-body.i, !dbg !7401

_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtBa_3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtBa_6future6future6Futurep6OutputuNtNtBa_6marker4SendEL_EEuNCNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing16output_otlp_grpc5start0NCINvNvBL_8for_each4callB25_NCINvMsk_NtB2q_3vecINtB5Q_3VecB25_E14extend_trustedINtB1B_3MapB3_B3X_EE0E0E0EB47_.exit: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldjINtNtBa_3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtBa_6future6future6Futurep6OutputuNtNtBa_6marker4SendEL_EEuNCNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing16output_otlp_grpc5start0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtB1g_3vecINtB5a_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2N_EE0E0E0B2X_.exit.i, %bb.a
  %.val6.i = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.aw, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldjINtNtBa_3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtBa_6future6future6Futurep6OutputuNtNtBa_6marker4SendEL_EEuNCNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing16output_otlp_grpc5start0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtB1g_3vecINtB5a_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2N_EE0E0E0B2X_.exit.i ], !dbg !7373
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val6.i, ptr %.sroa.0.0.copyload, align 8, !dbg !7402, !noalias !7365
  ret void, !dbg !7403
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing24output_jaeger_thrift_udp5start0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2Q_8for_each4callINtNtBc_3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtBc_6future6future6Futurep6OutputuNtNtBc_6marker4SendEL_EENCINvMsk_NtB4e_3vecINtB5T_3VecB3T_E14extend_trustedBN_E0E0EB1z_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !7404 {
bb.a:
  %i.a = alloca [864 x i8], align 8               ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !7500
  %i.c = load i64, ptr %i.b, align 8, !dbg !7500, !noundef !718 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !7500
  %i.e = load i64, ptr %i.d, align 8, !dbg !7500, !noundef !718 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !7501 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !7501
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !7501 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !7501
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !7501
  %.sroa.8.24.copyload = load ptr, ptr %0, align 8, !dbg !7501 ; 3 uses
  %.sroa.10.24..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7501
  %.sroa.10.24.copyload = load ptr, ptr %.sroa.10.24..sroa_idx, align 8, !dbg !7501 ; 2 uses
  %.sroa.11.24..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !7501
  %.sroa.11.24.copyload = load ptr, ptr %.sroa.11.24..sroa_idx, align 8, !dbg !7501
  %i.f = icmp ult i64 %i.c, %i.e, !dbg !7502
  br i1 %i.f, label %.lr.ph.i, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtBa_3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtBa_6future6future6Futurep6OutputuNtNtBa_6marker4SendEL_EEuNCNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing24output_jaeger_thrift_udp5start0NCINvNvBL_8for_each4callB25_NCINvMsk_NtB2q_3vecINtB5Y_3VecB25_E14extend_trustedINtB1B_3MapB3_B3X_EE0E0E0EB47_.exit, !dbg !7503

.lr.ph.i:                                         ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.24.copyload) ]
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  br label %bb.b, !dbg !7503

bb.b:                                             ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldjINtNtBa_3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtBa_6future6future6Futurep6OutputuNtNtBa_6marker4SendEL_EEuNCNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing24output_jaeger_thrift_udp5start0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtB1g_3vecINtB5i_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2N_EE0E0E0B2X_.exit.i, %.lr.ph.i
  %.val4.i = phi i64 [ %.sroa.5.0.copyload, %.lr.ph.i ], [ %i.z, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldjINtNtBa_3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtBa_6future6future6Futurep6OutputuNtNtBa_6marker4SendEL_EEuNCNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing24output_jaeger_thrift_udp5start0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtB1g_3vecINtB5i_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2N_EE0E0E0B2X_.exit.i ] ; 3 uses
  %.sroa.0.010.i = phi i64 [ %i.c, %.lr.ph.i ], [ %i.j, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldjINtNtBa_3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtBa_6future6future6Futurep6OutputuNtNtBa_6marker4SendEL_EEuNCNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing24output_jaeger_thrift_udp5start0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtB1g_3vecINtB5i_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2N_EE0E0E0B2X_.exit.i ]
  %i.j = add nuw i64 %.sroa.0.010.i, 1, !dbg !7504 ; 2 uses
  %i.k = load ptr, ptr %.sroa.8.24.copyload, align 8, !dbg !7505, !noalias !7492, !nonnull !718, !noundef !718
  %i.l = atomicrmw add ptr %i.k, i64 1 monotonic, align 8, !dbg !7506, !noalias !7492
  %i.m = icmp slt i64 %i.l, 0, !dbg !7507
  br i1 %i.m, label %bb.d, label %bb.c, !dbg !7507

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %.sroa.8.24.copyload, align 8, !dbg !7508, !noalias !7492, !nonnull !718, !noundef !718
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !7509, !noalias !7492
  %i.o = load ptr, ptr %.sroa.10.24.copyload, align 8, !dbg !7510, !noalias !7492, !nonnull !718, !noundef !718
  %i.p = atomicrmw add ptr %i.o, i64 1 monotonic, align 8, !dbg !7511, !noalias !7492
  %i.q = icmp slt i64 %i.p, 0, !dbg !7512
  br i1 %i.q, label %bb.i, label %bb.e, !dbg !7512

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap(), !dbg !7513
  unreachable, !dbg !7513

bb.e:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %.sroa.10.24.copyload, align 8, !dbg !7514, !noalias !7492, !nonnull !718, !noundef !718
  %i.s = load i64, ptr %.sroa.11.24.copyload, align 8, !dbg !7515, !noalias !7492, !noundef !718
  store ptr %i.n, ptr %i.a, align 8, !dbg !7516, !noalias !7492
  store ptr %i.r, ptr %i.g, align 8, !dbg !7516, !noalias !7492
  store i64 %i.s, ptr %i.h, align 8, !dbg !7516, !noalias !7492
  store i8 0, ptr %i.i, align 8, !dbg !7516, !noalias !7492
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #35, !dbg !7517, !noalias !7497
  %i.t = tail call noundef align 8 dereferenceable_or_null(864) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, 1633) 864, i64 noundef range(i64 1, 9) 8) #35, !dbg !7518, !noalias !7497 ; 3 uses
  %i.u = icmp eq ptr %i.t, null, !dbg !7519
  br i1 %i.u, label %bb.f, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldjINtNtBa_3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtBa_6future6future6Futurep6OutputuNtNtBa_6marker4SendEL_EEuNCNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing24output_jaeger_thrift_udp5start0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtB1g_3vecINtB5i_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2N_EE0E0E0B2X_.exit.i, !dbg !7520, !prof !764

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 864) #34
          to label %.noexc.i.i.i unwind label %bb.g, !dbg !7521, !noalias !7492

.noexc.i.i.i:                                     ; preds = %bb.f
  unreachable, !dbg !7521

bb.g:                                             ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing24output_jaeger_thrift_udp9do_export0EBL_(ptr noundef nonnull align 8 dereferenceable(864) %i.a) #38
          to label %bb.j unwind label %bb.h, !dbg !7522, !noalias !7492

bb.h:                                             ; preds = %bb.g
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #36, !dbg !7523, !noalias !7492
  unreachable, !dbg !7523

bb.i:                                             ; preds = %bb.c
  tail call void @llvm.trap(), !dbg !7524
  unreachable, !dbg !7524

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldjINtNtBa_3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtBa_6future6future6Futurep6OutputuNtNtBa_6marker4SendEL_EEuNCNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing24output_jaeger_thrift_udp5start0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtB1g_3vecINtB5i_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2N_EE0E0E0B2X_.exit.i: ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(864) %i.t, ptr noundef nonnull align 8 dereferenceable(864) %i.a, i64 864, i1 false), !dbg !7525, !noalias !7492
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !7526, !noalias !7492
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %.val4.i, !dbg !7527 ; 2 uses
  store ptr %i.t, ptr %i.x, align 8, !dbg !7528, !noalias !7498
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8, !dbg !7528
  store ptr @65, ptr %i.y, align 8, !dbg !7528, !noalias !7498
  %i.z = add i64 %.val4.i, 1, !dbg !7529          ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.j, %i.e, !dbg !7502
  br i1 %exitcond.not.i, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtBa_3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtBa_6future6future6Futurep6OutputuNtNtBa_6marker4SendEL_EEuNCNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing24output_jaeger_thrift_udp5start0NCINvNvBL_8for_each4callB25_NCINvMsk_NtB2q_3vecINtB5Y_3VecB25_E14extend_trustedINtB1B_3MapB3_B3X_EE0E0E0EB47_.exit, label %bb.b, !dbg !7503

bb.j:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val4.i, ptr %.sroa.0.0.copyload, align 8, !dbg !7530, !noalias !7499
  resume { ptr, i32 } %i.v, !dbg !7531

_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtBa_3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtBa_6future6future6Futurep6OutputuNtNtBa_6marker4SendEL_EEuNCNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing24output_jaeger_thrift_udp5start0NCINvNvBL_8for_each4callB25_NCINvMsk_NtB2q_3vecINtB5Y_3VecB25_E14extend_trustedINtB1B_3MapB3_B3X_EE0E0E0EB47_.exit: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldjINtNtBa_3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtBa_6future6future6Futurep6OutputuNtNtBa_6marker4SendEL_EEuNCNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing24output_jaeger_thrift_udp5start0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtB1g_3vecINtB5i_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2N_EE0E0E0B2X_.exit.i, %bb.a
  %.val6.i = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.z, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldjINtNtBa_3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtBa_6future6future6Futurep6OutputuNtNtBa_6marker4SendEL_EEuNCNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing24output_jaeger_thrift_udp5start0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtB1g_3vecINtB5i_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2N_EE0E0E0B2X_.exit.i ], !dbg !7532
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val6.i, ptr %.sroa.0.0.copyload, align 8, !dbg !7533, !noalias !7499
  ret void, !dbg !7534
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEENCNvMs2_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7testingNtB3p_14TestTracesSink6traces0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4R_8for_each4callNtB3p_9TestTraceNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6j_3VecB5U_E14extend_trustedBN_E0E0EB3v_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !7535 {
bb.a:
  %i.a = alloca [128 x i8], align 8               ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !dbg !7605, !nonnull !718, !noundef !718 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7605
  %i.d = load ptr, ptr %i.c, align 8, !dbg !7605, !nonnull !718, !noundef !718 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !7606
  %i.f = load ptr, ptr %i.e, align 8, !dbg !7606, !nonnull !718, !align !826, !noundef !718
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !7606
  %i.h = load ptr, ptr %i.g, align 8, !dbg !7606, !nonnull !718, !noundef !718
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !7607 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !7607
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !7607 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !7607
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !7607
  %i.i = icmp eq ptr %i.b, %i.d, !dbg !7608
  br i1 %i.i, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2Q_8adapters3map8map_foldRBQ_NtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7testing9TestTraceuNCNvMs2_B4a_NtB4a_14TestTracesSink6traces0NCINvNvB2K_8for_each4callB48_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6A_3VecB48_E14extend_trustedINtB3A_3MapBF_B5i_EE0E0E0EB4g_.exit, label %bb.b, !dbg !7609

bb.b:                                             ; preds = %bb.a
  %i.j = ptrtoint ptr %i.d to i64, !dbg !7610
  %i.k = ptrtoint ptr %i.b to i64, !dbg !7610
  %i.l = sub nuw i64 %i.j, %i.k, !dbg !7610
  %i.m = udiv exact i64 %i.l, 224, !dbg !7610
  br label %bb.c, !dbg !7611

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.p, %bb.d ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.q, %bb.d ], !dbg !7612 ; 2 uses
  %i.n = getelementptr inbounds nuw [224 x i8], ptr %i.b, i64 %.sroa.01.0.i, !dbg !7613
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !7614, !noalias !7594
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.h, align 1, !dbg !7615, !noalias !7595
  invoke void @_RNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7testing16create_test_span(ptr noalias nofree noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.f, i32 noundef %.sroa.0.0.copyload.i.i.i)
          to label %bb.d unwind label %bb.e, !dbg !7616, !noalias !7598

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw [128 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i, !dbg !7617
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.o, ptr noundef nonnull readonly align 8 dereferenceable(128) %i.a, i64 128, i1 false), !dbg !7618, !noalias !7599
  %i.p = add i64 %.val10.i, 1, !dbg !7619         ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !7620, !noalias !7594
  %i.q = add nuw i64 %.sroa.01.0.i, 1, !dbg !7621 ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.m, !dbg !7622
  br i1 %i.r, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2Q_8adapters3map8map_foldRBQ_NtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7testing9TestTraceuNCNvMs2_B4a_NtB4a_14TestTracesSink6traces0NCINvNvB2K_8for_each4callB48_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6A_3VecB48_E14extend_trustedINtB3A_3MapBF_B5i_EE0E0E0EB4g_.exit, label %bb.c, !dbg !7622

bb.e:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !dbg !7623, !noalias !7598
  resume { ptr, i32 } %i.s, !dbg !7624

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2Q_8adapters3map8map_foldRBQ_NtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7testing9TestTraceuNCNvMs2_B4a_NtB4a_14TestTracesSink6traces0NCINvNvB2K_8for_each4callB48_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6A_3VecB48_E14extend_trustedINtB3A_3MapBF_B5i_EE0E0E0EB4g_.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.p, %bb.d ], !dbg !7625
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !7625, !noalias !7598
  ret void, !dbg !7626
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEENCNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7testing16create_test_span0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4C_8for_each4callNtB3l_8TestSpanNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB63_3VecB5F_E14extend_trustedBN_E0E0EB3r_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !7627 {
bb.a:
  %i.a = alloca [128 x i8], align 8               ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !dbg !7696, !nonnull !718, !noundef !718 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7696
  %i.d = load ptr, ptr %i.c, align 8, !dbg !7696, !nonnull !718, !noundef !718 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !7697
  %i.f = load ptr, ptr %i.e, align 8, !dbg !7697, !nonnull !718, !align !826, !noundef !718
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !7697
  %i.h = load ptr, ptr %i.g, align 8, !dbg !7697, !nonnull !718, !noundef !718
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !7698 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !7698
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !7698 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !7698
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !7698
  %i.i = icmp eq ptr %i.b, %i.d, !dbg !7699
  br i1 %i.i, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2Q_8adapters3map8map_foldRBQ_NtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7testing8TestSpanuNCNvB4a_16create_test_span0NCINvNvB2K_8for_each4callB48_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6k_3VecB48_E14extend_trustedINtB3A_3MapBF_B5h_EE0E0E0EB4g_.exit, label %bb.b, !dbg !7700

bb.b:                                             ; preds = %bb.a
  %i.j = ptrtoint ptr %i.d to i64, !dbg !7701
  %i.k = ptrtoint ptr %i.b to i64, !dbg !7701
  %i.l = sub nuw i64 %i.j, %i.k, !dbg !7701
  %i.m = udiv exact i64 %i.l, 224, !dbg !7701
  br label %bb.c, !dbg !7702

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.p, %bb.d ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.q, %bb.d ], !dbg !7703 ; 2 uses
  %i.n = getelementptr inbounds nuw [224 x i8], ptr %i.b, i64 %.sroa.01.0.i, !dbg !7704
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !7705, !noalias !7686
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.h, align 1, !dbg !7706, !noalias !7687
  invoke void @_RNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7testing16create_test_span(ptr noalias nofree noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.f, i32 noundef %.sroa.0.0.copyload.i.i.i)
          to label %bb.d unwind label %bb.e, !dbg !7707, !noalias !7689

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw [128 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i, !dbg !7708
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.o, ptr noundef nonnull readonly align 8 dereferenceable(128) %i.a, i64 128, i1 false), !dbg !7709, !noalias !7690
  %i.p = add i64 %.val10.i, 1, !dbg !7710         ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !7711, !noalias !7686
  %i.q = add nuw i64 %.sroa.01.0.i, 1, !dbg !7712 ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.m, !dbg !7713
  br i1 %i.r, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2Q_8adapters3map8map_foldRBQ_NtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7testing8TestSpanuNCNvB4a_16create_test_span0NCINvNvB2K_8for_each4callB48_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6k_3VecB48_E14extend_trustedINtB3A_3MapBF_B5h_EE0E0E0EB4g_.exit, label %bb.c, !dbg !7713

bb.e:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !dbg !7714, !noalias !7689
  resume { ptr, i32 } %i.s, !dbg !7715

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2Q_8adapters3map8map_foldRBQ_NtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7testing8TestSpanuNCNvB4a_16create_test_span0NCINvNvB2K_8for_each4callB48_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6k_3VecB48_E14extend_trustedINtB3A_3MapBF_B5h_EE0E0E0EB4g_.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.p, %bb.d ], !dbg !7716
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !7716, !noalias !7689
  ret void, !dbg !7717
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEENvYNtNtNtB2i_6thrift6jaeger4SpanINtNtBc_7convert4FromRB1n_E4fromENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4k_8for_each4callB3k_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5A_3VecB3k_E14extend_trustedBN_E0E0ECsbaWXNhtWAp9_11foundations(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !7718 {
bb.a:
  %i.a = alloca [152 x i8], align 8               ; 4 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !7784 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !7784
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !7784 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !7784
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !7784
end_hunk_3
begin_hunk_4_@_RNCNCNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing16output_otlp_grpc5start00Bb_:bb.a

.body69.i:                                        ; preds = %bb.hb, %bb.ha
  %i.wj = phi ptr [ %i.dg, %bb.hb ], [ %i.wd, %bb.ha ]
  %i.wk = phi ptr [ %i.df, %bb.hb ], [ %i.we, %bb.ha ]
  %eh.lpad-body70.i = phi { ptr, i32 } [ %i.wi, %bb.hb ], [ %i.wh, %bb.ha ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !dbg !10787, !noalias !10312
  br label %bb.hz, !dbg !10788

bb.hc:                                            ; preds = %bb.gz
  %i.wl = getelementptr inbounds nuw i8, ptr %i.ab, i64 16, !dbg !10786
  %i.wm = load i8, ptr %i.wl, align 8, !dbg !10786, !range !10414, !alias.scope !10413, !noalias !10312, !noundef !718 ; 3 uses
  %i.wn = icmp eq i8 %i.wm, -2, !dbg !10786       ; 2 uses
  %spec.select.i.i = select i1 %i.wn, i8 3, i8 1, !dbg !10786
  store i8 %spec.select.i.i, ptr %i.wf, align 8, !dbg !10789, !noalias !10412
  br i1 %i.wn, label %bb.hd, label %bb.he, !dbg !10781

bb.hd:                                            ; preds = %bb.hc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !dbg !10787, !noalias !10312
  br label %bb.id, !dbg !10781

bb.he:                                            ; preds = %bb.hc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i64 16, i1 false), !dbg !10790, !noalias !10312
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 17, !dbg !10790
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.0..sroa_idx.i, i64 7, i1 false), !dbg !10790, !noalias !10312
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !dbg !10787, !noalias !10312
  %.not26.i = icmp eq i8 %i.wm, -1, !dbg !10780
  br i1 %.not26.i, label %bb.hg, label %bb.hf, !dbg !10791

bb.hf:                                            ; preds = %bb.he
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !dbg !10792, !noalias !10312
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.i, i64 16, i1 false), !dbg !10792, !noalias !10312
  %.sroa.2.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16, !dbg !10792
  store i8 %i.wm, ptr %.sroa.2.0..sroa_idx7.i, align 8, !dbg !10792, !noalias !10312
  %.sroa.3.0..sroa_idx9.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 17, !dbg !10792
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.0..sroa_idx9.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.i, i64 7, i1 false), !dbg !10792, !noalias !10312
  invoke void @_RINvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing8internal14reporter_errorNtNtNtCsfUalJnHtWpm_5tonic9transport5error5ErrorEB8_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.aa)
          to label %bb.hi unwind label %bb.hh, !dbg !10793

bb.hg:                                            ; preds = %bb.he
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !dbg !10794, !noalias !10312
  %i.wo = getelementptr inbounds nuw i8, ptr %0, i64 400, !dbg !10795 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !dbg !10796, !noalias !10312
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !dbg !10797, !noalias !10312
  %i.wp = getelementptr inbounds nuw i8, ptr %0, i64 697, !dbg !10797
  store i8 0, ptr %i.wp, align 1, !dbg !10797, !noalias !10312
  %i.wq = getelementptr inbounds nuw i8, ptr %0, i64 704, !dbg !10797 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.wq, i64 24, i1 false), !dbg !10797, !noalias !10312
  invoke void @_RNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing16output_otlp_grpc14create_request(ptr noalias nofree noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.x)
          to label %bb.ho unwind label %bb.hn, !dbg !10796

bb.hh:                                            ; preds = %bb.hf
  %i.wr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !dbg !10798, !noalias !10312
  br label %bb.hz, !dbg !10798

bb.hi:                                            ; preds = %bb.hf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !dbg !10798, !noalias !10312
  %i.ws = getelementptr inbounds nuw i8, ptr %0, i64 704, !dbg !10745 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic5trace2v113ResourceSpansENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ws)
          to label %bb.hk unwind label %bb.hj, !dbg !10799

bb.hj:                                            ; preds = %bb.hi
  %i.wt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic5trace2v113ResourceSpansENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ws)
          to label %.body72.i unwind label %bb.hl, !dbg !10800

bb.hk:                                            ; preds = %bb.hi
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic5trace2v113ResourceSpansENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ws)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic5trace2v113ResourceSpansEECsbaWXNhtWAp9_11foundations.exit.i unwind label %bb.hm, !dbg !10801

bb.hl:                                            ; preds = %bb.hj
  %i.wu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #36, !dbg !10799
  unreachable, !dbg !10799

.body72.i:                                        ; preds = %bb.gt, %bb.ib, %bb.hz, %bb.hm, %bb.hj
  %i.wv = phi ptr [ %i.wd, %bb.hj ], [ %i.yh, %bb.ib ], [ %i.yh, %bb.hz ], [ %i.wy, %bb.hm ], [ %i.ug, %bb.gt ]
  %i.ww = phi ptr [ %i.we, %bb.hj ], [ %i.yi, %bb.ib ], [ %i.yi, %bb.hz ], [ %i.wz, %bb.hm ], [ %i.uh, %bb.gt ]
  %.pn40.i = phi { ptr, i32 } [ %i.wt, %bb.hj ], [ %.pn37.pn.i, %bb.ib ], [ %.pn37.pn.i, %bb.hz ], [ %i.xa, %bb.hm ], [ %i.vs, %bb.gt ]
  %i.wx = getelementptr inbounds nuw i8, ptr %0, i64 697, !dbg !10745
  store i8 0, ptr %i.wx, align 1, !dbg !10745, !noalias !10312
  br label %bb.ia, !dbg !10772

bb.hm:                                            ; preds = %bb.gu, %bb.hk
  %i.wy = phi ptr [ %i.ug, %bb.gu ], [ %i.wd, %bb.hk ]
  %i.wz = phi ptr [ %i.uh, %bb.gu ], [ %i.we, %bb.hk ]
  %i.xa = landingpad { ptr, i32 }
          cleanup
  br label %.body72.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic5trace2v113ResourceSpansEECsbaWXNhtWAp9_11foundations.exit.i: ; preds = %bb.hk
  %i.xb = getelementptr inbounds nuw i8, ptr %0, i64 697, !dbg !10745
  store i8 0, ptr %i.xb, align 1, !dbg !10745, !noalias !10312
  br label %bb.fx, !dbg !10772

bb.hn:                                            ; preds = %bb.hg
  %i.xc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !10802, !noalias !10312
  br label %.sink.split.i, !dbg !10744

bb.ho:                                            ; preds = %bb.hg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !10802, !noalias !10312
  %i.xd = load ptr, ptr @_RNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing16output_otlp_grpc14COLLECTOR_PATH, align 8, !dbg !10803, !noalias !10312, !nonnull !718, !noundef !718 ; 5 uses
  %i.xe = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing16output_otlp_grpc14COLLECTOR_PATH, i64 8), align 8, !dbg !10803, !noalias !10312, !noundef !718 ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10415), !dbg !10804
  call void @llvm.experimental.noalias.scope.decl(metadata !10416), !dbg !10805
  %i.xf = add i64 %i.xe, -65535, !dbg !10806
  %or.cond20.i.i = icmp ult i64 %i.xf, -65534, !dbg !10806
  br i1 %or.cond20.i.i, label %_RNvNtNtCs74LoFwSioHw_4http3uri4path19scan_path_and_query.exit.thread.i.i, label %bb.hp, !dbg !10806

bb.hp:                                            ; preds = %bb.ho
  %i.xg = icmp eq i64 %i.xe, 1, !dbg !10807
  %i.xh = load i8, ptr %i.xd, align 1, !dbg !10808, !alias.scope !10420 ; 2 uses
  %i.xi = icmp eq i8 %i.xh, 42
  %or.cond.i.i.i = select i1 %i.xg, i1 %i.xi, i1 false, !dbg !10807
  br i1 %or.cond.i.i.i, label %_RNvNtNtCs74LoFwSioHw_4http3uri4path19scan_path_and_query.exit.i.i, label %thread-pre-split.i.i.i, !dbg !10807

thread-pre-split.i.i.i:                           ; preds = %bb.hp
  switch i8 %i.xh, label %_RNvNtNtCs74LoFwSioHw_4http3uri4path19scan_path_and_query.exit.thread.i.i [
    i8 47, label %.preheader
    i8 63, label %.preheader
    i8 35, label %.preheader
  ], !dbg !10809

.preheader:                                       ; preds = %thread-pre-split.i.i.i, %thread-pre-split.i.i.i, %thread-pre-split.i.i.i
  br label %bb.hr, !dbg !10810

bb.hq:                                            ; preds = %bb.hr
  %i.xj = trunc nuw i64 %.sroa.07.054.i.i.i to i16, !dbg !10811 ; 3 uses
  %i.xk = add nuw nsw i64 %.sroa.07.054.i.i.i, 1, !dbg !10812 ; 2 uses
  %i.xl = icmp samesign ult i64 %i.xk, %i.xe
  br i1 %i.xl, label %.preheader.split.i.i.i, label %.thread.i.i74.i, !dbg !10813

bb.hr:                                            ; preds = %.preheader, %bb.hs
  %.sroa.07.054.i.i.i = phi i64 [ %i.xr, %bb.hs ], [ 0, %.preheader ] ; 5 uses
  %.sroa.021.053.i.i.i = phi i8 [ %.sroa.021.1.i.i.i, %bb.hs ], [ 0, %.preheader ] ; 4 uses
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xd, i64 %.sroa.07.054.i.i.i, !dbg !10814
  %i.xn = load i8, ptr %i.xm, align 1, !dbg !10814, !alias.scope !10420, !noundef !718
  %i.xo = zext i8 %i.xn to i64, !dbg !10814
  %i.xp = getelementptr inbounds nuw i8, ptr @74, i64 %i.xo, !dbg !10810
  %i.xq = load i8, ptr %i.xp, align 1, !dbg !10810, !noalias !10422, !noundef !718
  switch i8 %i.xq, label %_RNvNtNtCs74LoFwSioHw_4http3uri4path19scan_path_and_query.exit.thread.i.i [
    i8 0, label %bb.hs
    i8 1, label %bb.hq
    i8 2, label %bb.ht
    i8 3, label %bb.hu
  ], !dbg !10810

bb.hs:                                            ; preds = %bb.hu, %bb.hr
  %.sroa.021.1.i.i.i = phi i8 [ %.sroa.021.053.i.i.i, %bb.hr ], [ 1, %bb.hu ], !dbg !10815 ; 2 uses
  %i.xr = add nuw nsw i64 %.sroa.07.054.i.i.i, 1, !dbg !10816 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.xr, %i.xe, !dbg !10817
  br i1 %exitcond.not.i.i.i, label %.thread.i.i74.i, label %bb.hr, !dbg !10817

bb.ht:                                            ; preds = %bb.hr
  %i.xs = trunc nuw i64 %.sroa.07.054.i.i.i to i16, !dbg !10818
  br label %.thread.i.i74.i, !dbg !10819

bb.hu:                                            ; preds = %bb.hr
  br label %bb.hs, !dbg !10820

.thread.i.i74.i:                                  ; preds = %bb.hs, %bb.hv, %bb.hx, %bb.ht, %bb.hq
  %.sroa.018.038.i.i.i = phi i16 [ -1, %bb.ht ], [ %i.xj, %bb.hx ], [ %i.xj, %bb.hq ], [ %i.xj, %bb.hv ], [ -1, %bb.hs ]
  %.sroa.024.2.i.i.i = phi i64 [ 1, %bb.ht ], [ 1, %bb.hx ], [ 0, %bb.hq ], [ 0, %bb.hv ], [ 0, %bb.hs ], !dbg !10821
  %.sroa.5.2.i.i.i = phi i16 [ %i.xs, %bb.ht ], [ %i.yc, %bb.hx ], [ undef, %bb.hq ], [ undef, %bb.hv ], [ undef, %bb.hs ], !dbg !10821
  %.sroa.021.2.i.i.i = phi i8 [ %.sroa.021.053.i.i.i, %bb.ht ], [ %.sroa.021.3.i.i.i, %bb.hx ], [ %.sroa.021.053.i.i.i, %bb.hq ], [ %.sroa.021.4.i.i.i, %bb.hv ], [ %.sroa.021.1.i.i.i, %bb.hs ], !dbg !10822
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.428.i.i.i), !dbg !10823
  %.sroa.428.i.i.i.2.i.i.i.2.i.i.i.2.i.i.2.i.i.2.i.2.i.2..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.428.i.i.i, i64 2, !dbg !10823
  store i16 %.sroa.018.038.i.i.i, ptr %.sroa.428.i.i.i.2.i.i.i.2.i.i.i.2.i.i.2.i.i.2.i.2.i.2..sroa_idx, align 2, !dbg !10823, !noalias !10422
  store i16 %.sroa.5.2.i.i.i, ptr %.sroa.428.i.i.i, align 2, !dbg !10823, !noalias !10422
  %.sroa.428.i.i.i.4.i.i.i.4.i.i.i.4.i.i.4.i.i.4.i.4.i.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.428.i.i.i, i64 4, !dbg !10823
  store i8 %.sroa.021.2.i.i.i, ptr %.sroa.428.i.i.i.4.i.i.i.4.i.i.i.4.i.i.4.i.i.4.i.4.i.4..sroa_idx, align 2, !dbg !10823, !noalias !10422
  %.sroa.428.i.i.i.1.i.i.i.1.i.i.i.1.i.i.1.i.i.1.i.1.i.1..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.428.i.i.i, i64 1, !dbg !10824
  %.sroa.428.i.i.i.1..sroa.428.i.i.i.1..sroa.428.i.i.i.1..sroa.428.i.i.1..sroa.428.i.i.1..sroa.428.i.1..sroa.428.i.1..sroa.428.1..sroa.428.1..sroa.428.1..sroa.428.3..sroa.13.sroa.0.0.copyload6.i.i.i = load i40, ptr %.sroa.428.i.i.i.1.i.i.i.1.i.i.i.1.i.i.1.i.i.1.i.1.i.1..sroa_idx, align 1, !dbg !10824, !noalias !10422
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.428.i.i.i), !dbg !10825
  %i.xt = zext i40 %.sroa.428.i.i.i.1..sroa.428.i.i.i.1..sroa.428.i.i.i.1..sroa.428.i.i.1..sroa.428.i.i.1..sroa.428.i.1..sroa.428.i.1..sroa.428.1..sroa.428.1..sroa.428.1..sroa.428.3..sroa.13.sroa.0.0.copyload6.i.i.i to i64, !dbg !10826
  %i.xu = shl nuw i64 %i.xt, 24, !dbg !10826
  %i.xv = or disjoint i64 %i.xu, %.sroa.024.2.i.i.i, !dbg !10826
  br label %_RNvNtNtCs74LoFwSioHw_4http3uri4path19scan_path_and_query.exit.i.i, !dbg !10826

.preheader.split.i.i.i:                           ; preds = %bb.hq, %bb.hv
  %.sroa.021.3.i.i.i = phi i8 [ %.sroa.021.4.i.i.i, %bb.hv ], [ %.sroa.021.053.i.i.i, %bb.hq ], !dbg !10822 ; 2 uses
  %.sroa.07.3.i.i.i = phi i64 [ %i.yb, %bb.hv ], [ %i.xk, %bb.hq ], !dbg !10808 ; 3 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xd, i64 %.sroa.07.3.i.i.i, !dbg !10827
  %i.xx = load i8, ptr %i.xw, align 1, !dbg !10827, !alias.scope !10420, !noundef !718
  %i.xy = zext i8 %i.xx to i64, !dbg !10827
  %i.xz = getelementptr inbounds nuw i8, ptr @75, i64 %i.xy, !dbg !10828
  %i.ya = load i8, ptr %i.xz, align 1, !dbg !10828, !noalias !10422, !noundef !718
  switch i8 %i.ya, label %_RNvNtNtCs74LoFwSioHw_4http3uri4path19scan_path_and_query.exit.thread.i.i [
    i8 0, label %bb.hv
    i8 3, label %bb.hw
    i8 2, label %bb.hx
  ], !dbg !10828

bb.hv:                                            ; preds = %bb.hw, %.preheader.split.i.i.i
  %.sroa.021.4.i.i.i = phi i8 [ %.sroa.021.3.i.i.i, %.preheader.split.i.i.i ], [ 1, %bb.hw ], !dbg !10815 ; 2 uses
  %i.yb = add nuw nsw i64 %.sroa.07.3.i.i.i, 1, !dbg !10829 ; 2 uses
  %exitcond67.not.i.i.i = icmp eq i64 %i.yb, %i.xe, !dbg !10830
  br i1 %exitcond67.not.i.i.i, label %.thread.i.i74.i, label %.preheader.split.i.i.i, !dbg !10830

bb.hw:                                            ; preds = %.preheader.split.i.i.i
  br label %bb.hv, !dbg !10831

bb.hx:                                            ; preds = %.preheader.split.i.i.i
  %i.yc = trunc nuw i64 %.sroa.07.3.i.i.i to i16, !dbg !10832
  br label %.thread.i.i74.i, !dbg !10833

_RNvNtNtCs74LoFwSioHw_4http3uri4path19scan_path_and_query.exit.i.i: ; preds = %.thread.i.i74.i, %bb.hp
  %.sroa.13.sroa.0.0.i.i.i = phi i64 [ %i.xv, %.thread.i.i74.i ], [ 281470681743360, %bb.hp ] ; 3 uses
  %i.yd = and i64 %.sroa.13.sroa.0.0.i.i.i, 65535, !dbg !10805
  %i.ye = icmp ne i64 %i.yd, 2, !dbg !10805
  %i.yf = and i64 %.sroa.13.sroa.0.0.i.i.i, 281474976710657, !dbg !10834
  %or.cond.not.i.i = icmp eq i64 %i.yf, 0, !dbg !10834
  %or.cond.i.i = and i1 %i.ye, %or.cond.not.i.i, !dbg !10834
  br i1 %or.cond.i.i, label %.thread183.i, label %_RNvNtNtCs74LoFwSioHw_4http3uri4path19scan_path_and_query.exit.thread.i.i, !dbg !10834, !prof !10424

_RNvNtNtCs74LoFwSioHw_4http3uri4path19scan_path_and_query.exit.thread.i.i: ; preds = %bb.hr, %.preheader.split.i.i.i, %_RNvNtNtCs74LoFwSioHw_4http3uri4path19scan_path_and_query.exit.i.i, %thread-pre-split.i.i.i, %bb.ho
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @69, ptr noundef nonnull inttoptr (i64 57 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #42
          to label %.noexc75.i unwind label %bb.hy, !dbg !10835

.noexc75.i:                                       ; preds = %_RNvNtNtCs74LoFwSioHw_4http3uri4path19scan_path_and_query.exit.thread.i.i
  unreachable, !dbg !10835

.thread183.i:                                     ; preds = %_RNvNtNtCs74LoFwSioHw_4http3uri4path19scan_path_and_query.exit.i.i
  %.sroa.514.0.extract.shift.i.i = lshr i64 %.sroa.13.sroa.0.0.i.i.i, 32, !dbg !10805
  %.sroa.514.0.extract.trunc.i.i = trunc i64 %.sroa.514.0.extract.shift.i.i to i16, !dbg !10805
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.wq, ptr noundef nonnull align 8 dereferenceable(128) %i.y, i64 128, i1 false), !dbg !10836, !noalias !10312
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !10837, !noalias !10312
  %.sroa.797.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 832, !dbg !10795
  store ptr %i.wo, ptr %.sroa.797.0..sroa_idx.i, align 8, !dbg !10795, !noalias !10312
  %.sroa.898.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 840, !dbg !10795
  store ptr @68, ptr %.sroa.898.0..sroa_idx.i, align 8, !dbg !10795, !noalias !10312
  %.sroa.898.sroa.7.0..sroa.898.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 848, !dbg !10795
  store ptr %i.xd, ptr %.sroa.898.sroa.7.0..sroa.898.0..sroa_idx.sroa_idx.i, align 8, !dbg !10795, !noalias !10312
  %.sroa.898.sroa.8.0..sroa.898.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 856, !dbg !10795
  store i64 %i.xe, ptr %.sroa.898.sroa.8.0..sroa.898.0..sroa_idx.sroa_idx.i, align 8, !dbg !10795, !noalias !10312
  %.sroa.898.sroa.9.0..sroa.898.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 864, !dbg !10795
  store i64 0, ptr %.sroa.898.sroa.9.0..sroa.898.0..sroa_idx.sroa_idx.i, align 8, !dbg !10795, !noalias !10312
  %.sroa.898.sroa.10.0..sroa.898.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 872, !dbg !10795
  store i16 %.sroa.514.0.extract.trunc.i.i, ptr %.sroa.898.sroa.10.0..sroa.898.0..sroa_idx.sroa_idx.i, align 8, !dbg !10795, !noalias !10312
  %.sroa.10100.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1624, !dbg !10795 ; 2 uses
  store i8 0, ptr %.sroa.10100.0..sroa_idx.i, align 8, !dbg !10795, !noalias !10312
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11109.i), !dbg !10530
  br label %bb.av, !dbg !10529

bb.hy:                                            ; preds = %_RNvNtNtCs74LoFwSioHw_4http3uri4path19scan_path_and_query.exit.thread.i.i
  %i.yg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsfUalJnHtWpm_5tonic7request7RequestNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(128) %i.y) #38
          to label %.sink.split.i unwind label %bb.fu, !dbg !10837

.sink.split.i:                                    ; preds = %bb.hy, %bb.hn
  %.pn33.ph.i = phi { ptr, i32 } [ %i.xc, %bb.hn ], [ %i.yg, %bb.hy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !10837, !noalias !10312
  br label %bb.fs, !dbg !10838

bb.hz:                                            ; preds = %bb.hh, %.body69.i, %bb.fs
  %i.yh = phi ptr [ %i.tu, %bb.fs ], [ %i.wd, %bb.hh ], [ %i.wj, %.body69.i ] ; 2 uses
  %i.yi = phi ptr [ %i.tv, %bb.fs ], [ %i.we, %bb.hh ], [ %i.wk, %.body69.i ] ; 2 uses
  %.pn37.pn.i = phi { ptr, i32 } [ %.pn35.i, %bb.fs ], [ %i.wr, %bb.hh ], [ %eh.lpad-body70.i, %.body69.i ] ; 2 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %0, i64 697, !dbg !10745
  %i.yk = load i8, ptr %i.yj, align 1, !dbg !10745, !range !883, !noalias !10312, !noundef !718
  %i.yl = trunc nuw i8 %i.yk to i1, !dbg !10745
  br i1 %i.yl, label %bb.ib, label %.body72.i, !dbg !10745

bb.ia:                                            ; preds = %.body72.i, %bb.gc, %bb.fz
  %i.ym = phi ptr [ %i.wv, %.body72.i ], [ %i.ug, %bb.gc ], [ %i.ug, %bb.fz ]
  %i.yn = phi ptr [ %i.ww, %.body72.i ], [ %i.uh, %bb.gc ], [ %i.uh, %bb.fz ]
  %.pn40.pn.i = phi { ptr, i32 } [ %.pn40.i, %.body72.i ], [ %i.uo, %bb.gc ], [ %i.uk, %bb.fz ]
  %i.yo = getelementptr inbounds nuw i8, ptr %0, i64 672, !dbg !10752
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(24) %i.yo) #38
          to label %.body56.i unwind label %bb.fu, !dbg !10752

bb.ib:                                            ; preds = %bb.hz
  %i.yp = getelementptr inbounds nuw i8, ptr %0, i64 704, !dbg !10745
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic5trace2v113ResourceSpansEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(24) %i.yp) #38
          to label %.body72.i unwind label %bb.fu, !dbg !10745

bb.ic:                                            ; preds = %bb.at, %bb.as
  %i.yq = landingpad { ptr, i32 }
          cleanup
  br label %.body46, !dbg !10484

.body46:                                          ; preds = %.body64.i, %bb.ic
  %i.yr = phi ptr [ %i.df, %bb.ic ], [ %i.vq, %.body64.i ]
  %eh.lpad-body47 = phi { ptr, i32 } [ %i.yq, %bb.ic ], [ %.pn40.pn.pn.pn.pn.pn.i, %.body64.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing16output_otlp_grpc9do_export0EBL_(ptr noundef nonnull align 8 %i.yr) #38
          to label %bb.ad unwind label %bb.am, !dbg !10484

bb.id:                                            ; preds = %bb.hd, %bb.ga, %bb.fn
  %i.ys = phi ptr [ %i.tl, %bb.fn ], [ %i.ug, %bb.ga ], [ %i.wd, %bb.hd ]
  %.sink.i.ph = phi i8 [ 5, %bb.fn ], [ 3, %bb.ga ], [ 4, %bb.hd ]
  store i8 %.sink.i.ph, ptr %i.ys, align 8, !dbg !10839, !noalias !10312
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.06.i), !dbg !10839
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i), !dbg !10839
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !dbg !10485
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !dbg !10485
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.062), !dbg !10485
  br label %common.ret, !dbg !10485

bb.ie:                                            ; preds = %bb.gq
  store i8 1, ptr %i.ug, align 8, !dbg !10839, !noalias !10312
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.06.i), !dbg !10839
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i), !dbg !10839
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing16output_otlp_grpc9do_export0EBL_(ptr noundef nonnull align 8 %i.uh)
          to label %bb.ig unwind label %bb.if, !dbg !10484

bb.if:                                            ; preds = %bb.ie
  %i.yt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.ig:                                            ; preds = %bb.ie
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.062), !dbg !10484
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !dbg !10487
  %i.yu = getelementptr inbounds nuw i8, ptr %0, i64 123, !dbg !10457
  store i8 0, ptr %i.yu, align 1, !dbg !10457
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !dbg !10457
  %i.yv = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !10457 ; 5 uses
  invoke void @_RNvXsc_NtNtCs3zuhHmEJ01l_5tokio4sync9broadcastINtB5_8ReceiverNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7ChannelENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.yv)
          to label %bb.ij unwind label %bb.ih, !dbg !10840

bb.ih:                                            ; preds = %bb.ig
  %i.yw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10425), !dbg !10840
  call void @llvm.experimental.noalias.scope.decl(metadata !10426), !dbg !10841
  %i.yx = load ptr, ptr %i.yv, align 8, !dbg !10842, !alias.scope !10427, !nonnull !718, !noundef !718
  %i.yy = atomicrmw add ptr %i.yx, i64 -1 release, align 8, !dbg !10843, !noalias !10428
  %i.yz = icmp eq i64 %i.yy, 1, !dbg !10844
  br i1 %i.yz, label %bb.ii, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel18SharedSpanReceiverEBJ_.exit, !dbg !10844

bb.ii:                                            ; preds = %bb.ih
  fence acquire, !dbg !10845
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCs3zuhHmEJ01l_5tokio4sync9broadcast6SharedNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7ChannelEE9drop_slowCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.yv) #37
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel18SharedSpanReceiverEBJ_.exit unwind label %bb.il, !dbg !10846

bb.ij:                                            ; preds = %bb.ig
  call void @llvm.experimental.noalias.scope.decl(metadata !10429), !dbg !10840
  call void @llvm.experimental.noalias.scope.decl(metadata !10430), !dbg !10847
  %i.za = load ptr, ptr %i.yv, align 8, !dbg !10848, !alias.scope !10431, !nonnull !718, !noundef !718
  %i.zb = atomicrmw add ptr %i.za, i64 -1 release, align 8, !dbg !10849, !noalias !10432
  %i.zc = icmp eq i64 %i.zb, 1, !dbg !10850
  br i1 %i.zc, label %bb.ik, label %common.ret, !dbg !10850

bb.ik:                                            ; preds = %bb.ij
  fence acquire, !dbg !10851
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCs3zuhHmEJ01l_5tokio4sync9broadcast6SharedNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7ChannelEE9drop_slowCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.yv) #37
          to label %common.ret unwind label %bb.al, !dbg !10852

bb.il:                                            ; preds = %bb.ii
  %i.zd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #36, !dbg !10840
  unreachable, !dbg !10840

bb.im:                                            ; preds = %bb.in, %bb.ae
  store i8 0, ptr %i.cn, align 1, !dbg !10457
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !dbg !10457
  br label %bb.an, !dbg !10853

bb.in:                                            ; preds = %bb.ae
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7ChannelECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ag) #38
          to label %bb.im unwind label %bb.am, !dbg !10457

bb.io:                                            ; preds = %bb.an
  %i.ze = getelementptr inbounds nuw i8, ptr %0, i64 122, !dbg !10457
  %i.zf = load i8, ptr %i.ze, align 2, !dbg !10457, !range !883, !noundef !718
  %i.zg = trunc nuw i8 %i.zf to i1, !dbg !10457
  br i1 %i.zg, label %bb.iq, label %bb.ip, !dbg !10457

bb.ip:                                            ; preds = %bb.iq, %bb.io
  %i.zh = getelementptr inbounds nuw i8, ptr %0, i64 121, !dbg !10457
  %i.zi = load i8, ptr %i.zh, align 1, !dbg !10457, !range !883, !noundef !718
  %i.zj = trunc nuw i8 %i.zi to i1, !dbg !10457
  br i1 %i.zj, label %bb.ir, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel18SharedSpanReceiverEBJ_.exit, !dbg !10457

bb.iq:                                            ; preds = %bb.io
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsbaWXNhtWAp9_11foundations11ServiceInfoEBD_(ptr noalias nofree noundef align 8 dereferenceable(88) %0) #38
          to label %bb.ip unwind label %bb.am, !dbg !10457

bb.ir:                                            ; preds = %bb.ip
  %i.zk = getelementptr inbounds nuw i8, ptr %0, i64 104, !dbg !10457 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10434), !dbg !10457
  call void @llvm.experimental.noalias.scope.decl(metadata !10435), !dbg !10854
  call void @llvm.experimental.noalias.scope.decl(metadata !10436), !dbg !10855
  %i.zl = load ptr, ptr %i.zk, align 8, !dbg !10856, !alias.scope !10437, !nonnull !718, !noundef !718
  %i.zm = atomicrmw add ptr %i.zl, i64 -1 release, align 8, !dbg !10857, !noalias !10437
  %i.zn = icmp eq i64 %i.zm, 1, !dbg !10858
  br i1 %i.zn, label %bb.is, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel18SharedSpanReceiverEBJ_.exit, !dbg !10858

bb.is:                                            ; preds = %bb.ir
  fence acquire, !dbg !10859
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCs3zuhHmEJ01l_5tokio4sync5mutex5MutexINtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel8ReceiverINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEEE9drop_slowB1x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.zk) #37
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel18SharedSpanReceiverEBJ_.exit unwind label %bb.am, !dbg !10860
}

end_hunk_4
begin_hunk_5_@_RNCNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing24output_jaeger_thrift_udp9do_export0B9_:bb.a
  %i.nu = getelementptr inbounds nuw i8, ptr %0, i64 624, !dbg !11956
  store i8 0, ptr %i.nu, align 8, !dbg !11956, !noalias !11779
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.982, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.671.i.i, i64 16, i1 false), !dbg !12107, !noalias !11857
  store i8 1, ptr %i.nh, align 1, !dbg !12097, !noalias !11779
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.671.i.i), !dbg !12097
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !12097, !noalias !11772
  br label %bb.ee, !dbg !11900

bb.dw:                                            ; preds = %bb.du
  %i.nv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #36, !dbg !12104, !noalias !11785
  unreachable, !dbg !12104

bb.dx:                                            ; preds = %bb.ea, %bb.dv, %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEENvYNtNtNtB2c_6thrift6jaeger4SpanINtNtBc_7convert4FromRB1h_E4fromENtNtNtBa_6traits8iterator8Iterator7collectINtNtCs1xwejQucwHj_5alloc3vec3VecB3e_EECsbaWXNhtWAp9_11foundations.exit.i.i
  %i.nw = phi ptr [ %i.ng, %bb.ea ], [ %i.ng, %bb.dv ], [ %i.be, %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEENvYNtNtNtB2c_6thrift6jaeger4SpanINtNtBc_7convert4FromRB1h_E4fromENtNtNtBa_6traits8iterator8Iterator7collectINtNtCs1xwejQucwHj_5alloc3vec3VecB3e_EECsbaWXNhtWAp9_11foundations.exit.i.i ]
  %i.nx = phi ptr [ %i.nh, %bb.ea ], [ %i.nh, %bb.dv ], [ %i.bi, %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEENvYNtNtNtB2c_6thrift6jaeger4SpanINtNtBc_7convert4FromRB1h_E4fromENtNtNtBa_6traits8iterator8Iterator7collectINtNtCs1xwejQucwHj_5alloc3vec3VecB3e_EECsbaWXNhtWAp9_11foundations.exit.i.i ]
  %i.ny = phi ptr [ %i.ni, %bb.ea ], [ %i.ni, %bb.dv ], [ %i.bj, %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEENvYNtNtNtB2c_6thrift6jaeger4SpanINtNtBc_7convert4FromRB1h_E4fromENtNtNtBa_6traits8iterator8Iterator7collectINtNtCs1xwejQucwHj_5alloc3vec3VecB3e_EECsbaWXNhtWAp9_11foundations.exit.i.i ]
  %i.nz = landingpad { ptr, i32 }
          cleanup
  br label %.body36.i.i

bb.dy:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultjNtNtNtB5_2io5error5ErrorE7map_errNtNtCs26L2cHvO7VQ_13cf_rustracing5error5ErrorNvNtCs7qAQKZbgfvS_20cf_rustracing_jaeger5error13from_io_errorECsbaWXNhtWAp9_11foundations.exit.i.i
  %.sroa.1052.0..sroa_idx53.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !12108
  %.sroa.1052.0.copyload54.i.i = load i64, ptr %.sroa.1052.0..sroa_idx53.i.i, align 8, !dbg !12108, !alias.scope !11858, !noalias !11779
  %.sroa.11.0..sroa_idx55.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !12108
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.671.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.0..sroa_idx55.i.i, i64 16, i1 false), !dbg !12108, !noalias !11779
  %.sroa.11.sroa.8.0..sroa.11.0..sroa_idx55.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 32, !dbg !12108
  %.sroa.11.sroa.8.0.copyload.i.i = load i64, ptr %.sroa.11.sroa.8.0..sroa.11.0..sroa_idx55.sroa_idx.i.i, align 8, !dbg !12108, !alias.scope !11858, !noalias !11779
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !12098, !noalias !11779
  %i.oa = getelementptr inbounds nuw i8, ptr %0, i64 592, !dbg !12099 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.oa)
          to label %bb.ea unwind label %bb.dz, !dbg !12109, !noalias !11785

bb.dz:                                            ; preds = %bb.dy
  %i.ob = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.oa)
          to label %.body36.i.i unwind label %bb.eb, !dbg !12110, !noalias !11785

bb.ea:                                            ; preds = %bb.dy
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.oa)
          to label %bb.ed unwind label %bb.dx, !dbg !12111, !noalias !11785

bb.eb:                                            ; preds = %bb.dz
  %i.oc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #36, !dbg !12109, !noalias !11785
  unreachable, !dbg !12109

bb.ec:                                            ; preds = %bb.ag, %bb.af
  %i.od = landingpad { ptr, i32 }
          cleanup
  br label %.body.i, !dbg !12112

.body.i:                                          ; preds = %bb.ec, %bb.ae
  %i.oe = phi ptr [ %i.at, %bb.ec ], [ %i.cm, %bb.ae ]
  %i.of = phi ptr [ %i.bd, %bb.ec ], [ %i.co, %bb.ae ]
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.od, %bb.ec ], [ %.pn17.pn.pn.i.i, %bb.ae ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvMs0_NtCs7qAQKZbgfvS_20cf_rustracing_jaeger8reporterNtBK_14JaegerReporter6reportNCNCNvMBK_NtBK_21JaegerCompactReporter6report00E0ECsbaWXNhtWAp9_11foundations(ptr noundef nonnull align 8 %i.of) #38
          to label %.body.thread unwind label %bb.eg, !dbg !12112, !noalias !11799

bb.ed:                                            ; preds = %bb.ea, %bb.ac
  %i.og = phi ptr [ %i.ng, %bb.ea ], [ %i.be, %bb.ac ] ; 2 uses
  %i.oh = phi ptr [ %i.nh, %bb.ea ], [ %i.bi, %bb.ac ]
  %i.oi = phi ptr [ %i.ni, %bb.ea ], [ %i.bj, %bb.ac ]
  %.sroa.772.1.i.i = phi i64 [ %.sroa.11.sroa.8.0.copyload.i.i, %bb.ea ], [ %.sroa.1048.0.i.i, %bb.ac ]
  %.sroa.4.1.i.i = phi i64 [ %.sroa.1052.0.copyload54.i.i, %bb.ea ], [ %.sroa.7.sroa.0.0.i.i, %bb.ac ]
  %.sroa.070.1.i.i = phi i64 [ %.pr.i.i, %bb.ea ], [ %.sroa.047.0.i.i, %bb.ac ], !dbg !12113 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !11954, !noalias !11779
  %i.oj = getelementptr inbounds nuw i8, ptr %0, i64 624, !dbg !11956
  store i8 0, ptr %i.oj, align 8, !dbg !11956, !noalias !11779
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.982, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.671.i.i, i64 16, i1 false), !dbg !12107, !noalias !11857
  store i8 1, ptr %i.oh, align 1, !dbg !12097, !noalias !11779
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.671.i.i), !dbg !12097
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !12097, !noalias !11772
  %i.ok = icmp eq i64 %.sroa.070.1.i.i, -2, !dbg !11900
  br i1 %i.ok, label %bb.ei, label %bb.ee, !dbg !11900

bb.ee:                                            ; preds = %.thread, %bb.ed
  %i.ol = phi ptr [ %i.ng, %.thread ], [ %i.og, %bb.ed ] ; 2 uses
  %.sroa.070.1.i.i89 = phi i64 [ -1, %.thread ], [ %.sroa.070.1.i.i, %bb.ed ] ; 2 uses
  %.sroa.4.1.i.i88 = phi i64 [ undef, %.thread ], [ %.sroa.4.1.i.i, %bb.ed ]
  %.sroa.772.1.i.i87 = phi i64 [ undef, %.thread ], [ %.sroa.772.1.i.i, %bb.ed ]
  %i.om = phi ptr [ %i.ni, %.thread ], [ %i.oi, %bb.ed ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvMs0_NtCs7qAQKZbgfvS_20cf_rustracing_jaeger8reporterNtBK_14JaegerReporter6reportNCNCNvMBK_NtBK_21JaegerCompactReporter6report00E0ECsbaWXNhtWAp9_11foundations(ptr noundef nonnull align 8 %i.om)
          to label %bb.ej unwind label %bb.ef, !dbg !12112, !noalias !11799

bb.ef:                                            ; preds = %bb.ee
  %i.on = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.eg:                                            ; preds = %.body.i
  %i.oo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #36, !dbg !11895, !noalias !11799
  unreachable, !dbg !11895

.body:                                            ; preds = %bb.h, %bb.i
  %i.op = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pr = load i8, ptr %i.at, align 8, !dbg !11903
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.982), !dbg !11902
  %cond.i = icmp eq i8 %.pr, 3, !dbg !11903
  br i1 %cond.i, label %bb.eh, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvMNtCs7qAQKZbgfvS_20cf_rustracing_jaeger8reporterNtBG_21JaegerCompactReporter6report0ECsbaWXNhtWAp9_11foundations.exit, !dbg !11903

bb.eh:                                            ; preds = %.body
  %i.oq = getelementptr inbounds nuw i8, ptr %0, i64 144, !dbg !12114
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvMs0_NtCs7qAQKZbgfvS_20cf_rustracing_jaeger8reporterNtBK_14JaegerReporter6reportNCNCNvMBK_NtBK_21JaegerCompactReporter6report00E0ECsbaWXNhtWAp9_11foundations(ptr noundef nonnull align 8 %i.oq)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvMNtCs7qAQKZbgfvS_20cf_rustracing_jaeger8reporterNtBG_21JaegerCompactReporter6report0ECsbaWXNhtWAp9_11foundations.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !12114

common.ret:                                       ; preds = %bb.fm, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel18SharedSpanReceiverEBJ_.exit54, %bb.ez, %bb.ei
  %.sink = phi i8 [ 3, %bb.ez ], [ 4, %bb.ei ], [ 1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel18SharedSpanReceiverEBJ_.exit54 ], [ 1, %bb.fm ]
  %common.ret.op = phi i1 [ true, %bb.ez ], [ true, %bb.ei ], [ false, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel18SharedSpanReceiverEBJ_.exit54 ], [ false, %bb.fm ]
  store i8 %.sink, ptr %i.x, align 8, !dbg !12115
  ret i1 %common.ret.op, !dbg !12115

bb.ei:                                            ; preds = %bb.ed, %.thread.i
  %i.or = phi ptr [ %i.og, %bb.ed ], [ %i.ng, %.thread.i ]
  store i8 3, ptr %i.or, align 8, !dbg !12116, !noalias !11772
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.982), !dbg !11902
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.868), !dbg !11896
  br label %common.ret, !dbg !11896

bb.ej:                                            ; preds = %bb.ee
  store i8 1, ptr %i.ol, align 8, !dbg !12116, !noalias !11772
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.sroa.2, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.982, i64 16, i1 false), !dbg !12117
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.982), !dbg !11902
  %.not22 = icmp eq i64 %.sroa.070.1.i.i89, -1, !dbg !12118
  br i1 %.not22, label %bb.ep, label %bb.ek, !dbg !12119

bb.ek:                                            ; preds = %bb.ej
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !12120
  store i64 %.sroa.070.1.i.i89, ptr %i.v, align 8, !dbg !12120
  %.sroa.3.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !12120
  store i64 %.sroa.4.1.i.i88, ptr %.sroa.3.0..sroa_idx7, align 8, !dbg !12120
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx7.sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16, !dbg !12120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx7.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.sroa.2, i64 16, i1 false), !dbg !12120
  %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx7.sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 32, !dbg !12120
  store i64 %.sroa.772.1.i.i87, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx7.sroa_idx, align 8, !dbg !12120
  %i.os = invoke noundef zeroext i1 @_RNvNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing24output_jaeger_thrift_udp7logging16is_msgsize_error(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.v)
          to label %bb.el unwind label %bb.ew, !dbg !12121

bb.el:                                            ; preds = %bb.ek
  br i1 %i.os, label %bb.en, label %bb.em, !dbg !12121

bb.em:                                            ; preds = %bb.el
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !12122
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.u, ptr noundef nonnull align 8 dereferenceable(40) %i.v, i64 40, i1 false), !dbg !12122
  invoke void @_RINvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing8internal14reporter_errorNtNtCs26L2cHvO7VQ_13cf_rustracing5error5ErrorEB8_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.u)
          to label %bb.eo unwind label %bb.eq, !dbg !12123

bb.en:                                            ; preds = %bb.el
  %i.ot = getelementptr inbounds nuw i8, ptr %0, i64 640, !dbg !12124 ; 2 uses
  invoke void @_RNvNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing24output_jaeger_thrift_udp7logging22log_span_too_large_err(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.v, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %i.ot)
          to label %bb.er unwind label %bb.ew, !dbg !12125

bb.eo:                                            ; preds = %bb.em
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !12126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !12127
  br label %bb.ep, !dbg !12128

bb.ep:                                            ; preds = %bb.ej, %bb.eo
  %i.ou = getelementptr inbounds nuw i8, ptr %0, i64 640, !dbg !12129
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %i.ou)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueAINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEj1_ECsbaWXNhtWAp9_11foundations.exit unwind label %.loopexit.split-lp105.loopexit.split-lp.loopexit.split-lp, !dbg !12130

bb.eq:                                            ; preds = %bb.em
  %i.ov = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !12126
  br label %bb.es, !dbg !12127

bb.er:                                            ; preds = %bb.en
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs26L2cHvO7VQ_13cf_rustracing5error5ErrorECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(40) %i.v)
          to label %bb.eu unwind label %bb.et, !dbg !12127

bb.es:                                            ; preds = %bb.eq, %bb.ew, %bb.et
  %.pn25 = phi { ptr, i32 } [ %i.ow, %bb.et ], [ %i.pd, %bb.ew ], [ %i.ov, %bb.eq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !12127
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvMNtCs7qAQKZbgfvS_20cf_rustracing_jaeger8reporterNtBG_21JaegerCompactReporter6report0ECsbaWXNhtWAp9_11foundations.exit, !dbg !12127

bb.et:                                            ; preds = %bb.er
  %i.ow = landingpad { ptr, i32 }
          cleanup
  br label %bb.es

bb.eu:                                            ; preds = %bb.er
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !12127
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %i.ot)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueAINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEj1_ECsbaWXNhtWAp9_11foundations.exit46 unwind label %.loopexit.split-lp105.loopexit.split-lp.loopexit.split-lp, !dbg !12131

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueAINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEj1_ECsbaWXNhtWAp9_11foundations.exit59: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvMNtCs7qAQKZbgfvS_20cf_rustracing_jaeger8reporterNtBG_21JaegerCompactReporter6report0ECsbaWXNhtWAp9_11foundations.exit, %.loopexit.split-lp105.loopexit.split-lp.loopexit.split-lp
  %.pn28 = phi { ptr, i32 } [ %lpad.loopexit.split-lp123, %.loopexit.split-lp105.loopexit.split-lp.loopexit.split-lp ], [ %.pn25.pn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvMNtCs7qAQKZbgfvS_20cf_rustracing_jaeger8reporterNtBG_21JaegerCompactReporter6report0ECsbaWXNhtWAp9_11foundations.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.868), !dbg !12132
  %i.ox = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !12133
  invoke void @_RNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ox)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEECsbaWXNhtWAp9_11foundations.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !12134

.loopexit.split-lp105.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.eu, %bb.ep
  %lpad.loopexit.split-lp123 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueAINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEj1_ECsbaWXNhtWAp9_11foundations.exit59

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueAINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEj1_ECsbaWXNhtWAp9_11foundations.exit46: ; preds = %bb.eu
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.868), !dbg !12132
  br label %bb.ev, !dbg !12135

bb.ev:                                            ; preds = %bb.fp, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueAINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEj1_ECsbaWXNhtWAp9_11foundations.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueAINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEj1_ECsbaWXNhtWAp9_11foundations.exit46
  %i.oy = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !12136 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11860), !dbg !12136
  %i.oz = load ptr, ptr %i.oy, align 8, !dbg !12137, !alias.scope !11860, !nonnull !718, !noundef !718 ; 4 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !12138
  %i.pb = load ptr, ptr %i.pa, align 8, !dbg !12138, !alias.scope !11860, !nonnull !718, !noundef !718
  %i.pc = icmp eq ptr %i.oz, %i.pb, !dbg !12139
  br i1 %i.pc, label %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCsbaWXNhtWAp9_11foundations.exit.thread, label %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCsbaWXNhtWAp9_11foundations.exit, !dbg !12140

bb.ew:                                            ; preds = %bb.ek, %bb.en
  %i.pd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs26L2cHvO7VQ_13cf_rustracing5error5ErrorECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(40) %i.v) #38
          to label %bb.es unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !12127

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvMNtCs7qAQKZbgfvS_20cf_rustracing_jaeger8reporterNtBG_21JaegerCompactReporter6report0ECsbaWXNhtWAp9_11foundations.exit, %bb.fk, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueAINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEj1_ECsbaWXNhtWAp9_11foundations.exit59, %bb.eh, %bb.d, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEECsbaWXNhtWAp9_11foundations.exit, %bb.ey, %bb.ew
  %lpad.loopexit.split-lp121 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #36, !dbg !11872
  unreachable, !dbg !11872

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueAINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEj1_ECsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.ep
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.868), !dbg !12132
  br label %bb.ev, !dbg !12141

_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.ev
  %i.pe = getelementptr inbounds nuw i8, ptr %i.oz, i64 224, !dbg !12142
  store ptr %i.pe, ptr %i.oy, align 8, !dbg !12143, !alias.scope !11860
  %.sroa.063.0.copyload64 = load i64, ptr %i.oz, align 8, !dbg !12144, !noalias !11860 ; 2 uses
  %.not17 = icmp eq i64 %.sroa.063.0.copyload64, -1, !dbg !12136
  br i1 %.not17, label %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCsbaWXNhtWAp9_11foundations.exit.thread, label %.thread120, !dbg !12136

_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCsbaWXNhtWAp9_11foundations.exit.thread: ; preds = %bb.ev, %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCsbaWXNhtWAp9_11foundations.exit
  invoke void @_RNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.oy)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEECsbaWXNhtWAp9_11foundations.exit49 unwind label %bb.fb, !dbg !12145

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEECsbaWXNhtWAp9_11foundations.exit49: ; preds = %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCsbaWXNhtWAp9_11foundations.exit.thread, %_RNvMNtCs1xwejQucwHj_5alloc3vecINtB2_3VecINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEE13with_capacityCsbaWXNhtWAp9_11foundations.exit
  %i.pf = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !12146
  %i.pg = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !12147
  %i.ph = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !12148
  %i.pi = load i64, ptr %i.ph, align 8, !dbg !12148, !noundef !718
  %i.pj = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !12146
  store ptr %i.pf, ptr %i.pj, align 8, !dbg !12146
  %.sroa.862.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !12146
  store ptr %i.pg, ptr %.sroa.862.0..sroa_idx, align 8, !dbg !12146
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !12146
  store i64 %i.pi, ptr %.sroa.9.0..sroa_idx, align 8, !dbg !12146
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136, !dbg !12146
  store i8 0, ptr %.sroa.11.0..sroa_idx, align 8, !dbg !12146
  br label %bb.ex, !dbg !12149

bb.ex:                                            ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEECsbaWXNhtWAp9_11foundations.exit49
  %i.pk = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !12149 ; 4 uses
  %i.pl = invoke fastcc { i64, i64 } @_RNCNvMs_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channelNtB6_18SharedSpanReceiver9recv_many0Bc_(ptr noundef nonnull align 8 %i.pk, ptr noalias nofree noundef align 8 dereferenceable(32) %1)
          to label %bb.ez unwind label %bb.ey, !dbg !12149 ; 2 uses

bb.ey:                                            ; preds = %bb.ex
  %i.pm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvMs_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channelNtBI_18SharedSpanReceiver9recv_many0EBO_(ptr noundef nonnull align 8 %i.pk) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEECsbaWXNhtWAp9_11foundations.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !12150

bb.ez:                                            ; preds = %bb.ex
  %i.pn = extractvalue { i64, i64 } %i.pl, 0, !dbg !12149
  %i.po = extractvalue { i64, i64 } %i.pl, 1, !dbg !12149
  %i.pp = trunc nuw i64 %i.pn to i1, !dbg !12149
  br i1 %i.pp, label %common.ret, label %bb.fa, !dbg !12149

bb.fa:                                            ; preds = %bb.ez
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvMs_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channelNtBI_18SharedSpanReceiver9recv_many0EBO_(ptr noundef nonnull align 8 %i.pk)
          to label %bb.fc unwind label %bb.fb, !dbg !12150

bb.fb:                                            ; preds = %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCsbaWXNhtWAp9_11foundations.exit.thread, %bb.fa
  %i.pq = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEECsbaWXNhtWAp9_11foundations.exit

bb.fc:                                            ; preds = %bb.fa
  %.not = icmp eq i64 %i.po, 0, !dbg !12146
  br i1 %.not, label %bb.fd, label %bb.fh, !dbg !12146

bb.fd:                                            ; preds = %bb.fc
  %i.pr = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !12151 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.pr)
          to label %bb.ff unwind label %bb.fe, !dbg !12152

bb.fe:                                            ; preds = %bb.fd
  %i.ps = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.pr)
          to label %.body51 unwind label %bb.fg, !dbg !12153

bb.ff:                                            ; preds = %bb.fd
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.pr)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEECsbaWXNhtWAp9_11foundations.exit unwind label %bb.fi, !dbg !12154

bb.fg:                                            ; preds = %bb.fe
  %i.pt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #36, !dbg !12152
  unreachable, !dbg !12152

bb.fh:                                            ; preds = %bb.fc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !12155
  %i.pu = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !12155
  invoke void @_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEE5drainNtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFullECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.w, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.pu)
          to label %bb.fp unwind label %bb.fo, !dbg !12156

bb.fi:                                            ; preds = %bb.ff, %bb.c, %bb.b
  %i.pv = landingpad { ptr, i32 }
          cleanup
  br label %.body51

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEECsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.ff
  %i.pw = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !11887 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11861), !dbg !11887
  call void @llvm.experimental.noalias.scope.decl(metadata !11862), !dbg !12157
  call void @llvm.experimental.noalias.scope.decl(metadata !11863), !dbg !12158
  %i.px = load ptr, ptr %i.pw, align 8, !dbg !12159, !alias.scope !11864, !nonnull !718, !noundef !718
  %i.py = atomicrmw add ptr %i.px, i64 -1 release, align 8, !dbg !12160, !noalias !11864
  %i.pz = icmp eq i64 %i.py, 1, !dbg !12161
  br i1 %i.pz, label %bb.fj, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel18SharedSpanReceiverEBJ_.exit54, !dbg !12161

bb.fj:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEECsbaWXNhtWAp9_11foundations.exit
  fence acquire, !dbg !12162
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCs3zuhHmEJ01l_5tokio4sync5mutex5MutexINtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel8ReceiverINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEEE9drop_slowB1x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.pw) #37
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel18SharedSpanReceiverEBJ_.exit54 unwind label %bb.fl, !dbg !12163

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel18SharedSpanReceiverEBJ_.exit: ; preds = %.body51, %bb.d, %bb.fl
  %.pn28.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.qe, %bb.fl ], [ %.pn28.pn.pn.pn.pn, %bb.d ], [ %.pn28.pn.pn.pn.pn, %.body51 ] ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !12164 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11865), !dbg !12164
  call void @llvm.experimental.noalias.scope.decl(metadata !11866), !dbg !12165
  %i.qb = load ptr, ptr %i.qa, align 8, !dbg !12166, !alias.scope !11867, !nonnull !718, !noundef !718
  %i.qc = atomicrmw add ptr %i.qb, i64 -1 release, align 8, !dbg !12167, !noalias !11867
  %i.qd = icmp eq i64 %i.qc, 1, !dbg !12168
  br i1 %i.qd, label %bb.fk, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger8reporter21JaegerCompactReporterEECsbaWXNhtWAp9_11foundations.exit, !dbg !12168

bb.fk:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel18SharedSpanReceiverEBJ_.exit
  fence acquire, !dbg !12169
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger8reporter21JaegerCompactReporterE9drop_slowCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.qa) #37
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger8reporter21JaegerCompactReporterEECsbaWXNhtWAp9_11foundations.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !12170

bb.fl:                                            ; preds = %bb.fj
  %i.qe = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel18SharedSpanReceiverEBJ_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel18SharedSpanReceiverEBJ_.exit54: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEECsbaWXNhtWAp9_11foundations.exit, %bb.fj
  %i.qf = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !12164 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11868), !dbg !12164
  call void @llvm.experimental.noalias.scope.decl(metadata !11869), !dbg !12171
  %i.qg = load ptr, ptr %i.qf, align 8, !dbg !12172, !alias.scope !11870, !nonnull !718, !noundef !718
  %i.qh = atomicrmw add ptr %i.qg, i64 -1 release, align 8, !dbg !12173, !noalias !11870
  %i.qi = icmp eq i64 %i.qh, 1, !dbg !12174
  br i1 %i.qi, label %bb.fm, label %common.ret, !dbg !12174

bb.fm:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel18SharedSpanReceiverEBJ_.exit54
  fence acquire, !dbg !12175
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger8reporter21JaegerCompactReporterE9drop_slowCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.qf) #37
          to label %common.ret unwind label %bb.fn, !dbg !12176

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger8reporter21JaegerCompactReporterEECsbaWXNhtWAp9_11foundations.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel18SharedSpanReceiverEBJ_.exit, %bb.fk, %bb.fn
  %.pn28.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.qj, %bb.fn ], [ %.pn28.pn.pn.pn.pn.pn, %bb.fk ], [ %.pn28.pn.pn.pn.pn.pn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel18SharedSpanReceiverEBJ_.exit ]
  store i8 2, ptr %i.x, align 8, !dbg !11872
  resume { ptr, i32 } %.pn28.pn.pn.pn.pn.pn.pn, !dbg !11872

bb.fn:                                            ; preds = %bb.fm
  %i.qj = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger8reporter21JaegerCompactReporterEECsbaWXNhtWAp9_11foundations.exit

bb.fo:                                            ; preds = %bb.fh
  %i.qk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !12177
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEECsbaWXNhtWAp9_11foundations.exit, !dbg !12178

bb.fp:                                            ; preds = %bb.fh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.pk, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.w, i64 40, i1 false), !dbg !12179
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !12177
  br label %bb.ev, !dbg !12141

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEECsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.fo, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueAINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEj1_ECsbaWXNhtWAp9_11foundations.exit59, %bb.ey, %bb.fb
  %.pn28.pn.pn.pn = phi { ptr, i32 } [ %i.pm, %bb.ey ], [ %i.pq, %bb.fb ], [ %i.qk, %bb.fo ], [ %.pn28, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueAINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEj1_ECsbaWXNhtWAp9_11foundations.exit59 ]
  %i.ql = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !12151
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ql) #38
          to label %.body51 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !12151

.thread120:                                       ; preds = %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCsbaWXNhtWAp9_11foundations.exit
  %.sroa.1165.0..sroa_idx66 = getelementptr inbounds nuw i8, ptr %i.oz, i64 8, !dbg !12144
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.868), !dbg !12180
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.868, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.1165.0..sroa_idx66, i64 216, i1 false), !dbg !12180
  %i.qm = getelementptr inbounds nuw i8, ptr %0, i64 640, !dbg !12181 ; 2 uses
  store i64 %.sroa.063.0.copyload64, ptr %i.qm, align 8, !dbg !12181
  %.sroa.868.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 648, !dbg !12181
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.868.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.868, i64 216, i1 false), !dbg !12181
  %i.qn = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !12118
  %.val = load ptr, ptr %i.qn, align 8, !dbg !12118, !nonnull !718, !noundef !718
  %i.qo = getelementptr inbounds nuw i8, ptr %.val, i64 16, !dbg !12182
  %i.qp = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !12118
  store ptr %i.qo, ptr %i.qp, align 8, !dbg !12118
  %.sroa.976.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !12118
  store ptr %i.qm, ptr %.sroa.976.0..sroa_idx, align 8, !dbg !12118
  %.sroa.1077.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136, !dbg !12118
  store i64 1, ptr %.sroa.1077.0..sroa_idx, align 8, !dbg !12118
  %.sroa.1279.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 632, !dbg !12118
  store i8 0, ptr %.sroa.1279.0..sroa_idx, align 8, !dbg !12118
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.982), !dbg !11896
  %i.qq = getelementptr inbounds nuw i8, ptr %0, i64 632, !dbg !11895
  br label %.thread23.i, !dbg !11895

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvMNtCs7qAQKZbgfvS_20cf_rustracing_jaeger8reporterNtBG_21JaegerCompactReporter6report0ECsbaWXNhtWAp9_11foundations.exit: ; preds = %.body, %.body.thread, %bb.eh, %bb.es
  %.pn25.pn = phi { ptr, i32 } [ %.pn25, %bb.es ], [ %i.op, %bb.eh ], [ %i.op, %.body ], [ %.pn4.i, %.body.thread ]
  %i.qr = getelementptr inbounds nuw i8, ptr %0, i64 640, !dbg !12129
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %i.qr)
end_hunk_5
begin_hunk_6_@_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtNtBb_2io8io_slice7IoSliceEINtBZ_4IterB1p_EEINtB5_7ZipImplBW_B1T_E3newCsbaWXNhtWAp9_11foundations:bb.a
  %i.e = call noundef i64 @_RNvYINtNtNtCs3oUPovFnLWP_4core5slice4iter7IterMutNtNtNtB9_2io8io_slice7IoSliceENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b), !dbg !13752
  %i.f = call noundef i64 @_RNvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtNtNtB9_2io8io_slice7IoSliceENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a), !dbg !13753
  %..i = call noundef i64 @llvm.umin.i64(i64 %i.f, i64 %i.e), !dbg !13754
  store ptr %1, ptr %0, align 8, !dbg !13755
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13755
  store ptr %2, ptr %i.g, align 8, !dbg !13755
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !13755
  store ptr %3, ptr %i.h, align 8, !dbg !13755
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !13755
  store ptr %4, ptr %i.i, align 8, !dbg !13755
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !13755
  store i64 0, ptr %i.j, align 8, !dbg !13755
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !13755
  store i64 %..i, ptr %i.k, align 8, !dbg !13755
  ret void, !dbg !13756
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs4_NtNtCsgI8t0psmkwo_10tokio_util4sync4mpscINtB5_10PollSenderINtNtNtCsdBNFPP92xfl_5tower6buffer7message7MessageINtNtCs74LoFwSioHw_4http7request7RequestNtNtCsfUalJnHtWpm_5tonic4body4BodyEINtNtCs3oUPovFnLWP_4core3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtB37_6future6future6Futurep6OutputINtNtB37_6result6ResultINtNtB1U_8response8ResponseB2t_EIB3z_DNtNtB37_5error5ErrorNtNtB37_6marker4SendNtB66_4SyncEL_EEB64_EL_EEEENtNtB37_5clone5Clone5cloneCsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !13757 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !13810
  %i.d = load ptr, ptr %i.c, align 8, !dbg !13810, !noundef !718 ; 8 uses
  %.not = icmp eq ptr %i.d, null, !dbg !13810
  br i1 %.not, label %bb.c, label %bb.b, !dbg !13811

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 496, !dbg !13812 ; 2 uses
  %i.f = atomicrmw add ptr %i.e, i64 1 monotonic, align 8, !dbg !13813 ; 0 uses
  %i.g = atomicrmw add ptr %i.d, i64 1 monotonic, align 8, !dbg !13814
  %i.h = icmp slt i64 %i.g, 0, !dbg !13815
  br i1 %i.h, label %bb.f, label %bb.e, !dbg !13815

bb.c:                                             ; preds = %bb.e, %bb.a
  %i.i = phi i64 [ 3, %bb.a ], [ 0, %bb.e ], !dbg !13816 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !13817
  store ptr %i.d, ptr %i.b, align 8, !dbg !13817
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13818
  store i64 %i.i, ptr %i.a, align 8, !dbg !13818
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !13818
  store ptr %i.d, ptr %i.j, align 8, !dbg !13818
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #35, !dbg !13819
  %i.k = tail call noundef dereferenceable_or_null(1) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, 1633) 1, i64 noundef range(i64 1, 9) 1) #35, !dbg !13820 ; 3 uses
  %i.l = icmp eq ptr %i.k, null, !dbg !13821
  br i1 %i.l, label %bb.d, label %bb.h, !dbg !13822, !prof !764

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 1) #34
          to label %.noexc unwind label %.body, !dbg !13823

.noexc:                                           ; preds = %bb.d
  unreachable, !dbg !13823

.body:                                            ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsgI8t0psmkwo_10tokio_util4sync4mpsc5StateINtNtNtCsdBNFPP92xfl_5tower6buffer7message7MessageINtNtCs74LoFwSioHw_4http7request7RequestNtNtCsfUalJnHtWpm_5tonic4body4BodyEINtNtB4_3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB2h_8response8ResponseB2Q_EIB3G_DNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB6a_4SyncEL_EEB68_EL_EEEEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(16) %i.a) #38
          to label %bb.j unwind label %bb.i, !dbg !13824

bb.e:                                             ; preds = %bb.b
  %i.n = atomicrmw add ptr %i.e, i64 1 monotonic, align 8, !dbg !13825 ; 0 uses
  %i.o = atomicrmw add ptr %i.d, i64 1 monotonic, align 8, !dbg !13826
  %i.p = icmp slt i64 %i.o, 0, !dbg !13827
  br i1 %i.p, label %bb.g, label %bb.c, !dbg !13827

bb.f:                                             ; preds = %bb.b
  tail call void @llvm.trap(), !dbg !13828
  unreachable, !dbg !13828

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.trap(), !dbg !13829
  unreachable, !dbg !13829

bb.h:                                             ; preds = %bb.c
  store i8 0, ptr %i.k, align 1, !dbg !13830
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !13831
  store ptr %i.d, ptr %i.q, align 8, !dbg !13831
  store i64 %i.i, ptr %0, align 8, !dbg !13831
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13831
  store ptr %i.d, ptr %i.r, align 8, !dbg !13831
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !13831
  store ptr %i.k, ptr %i.s, align 8, !dbg !13831
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !13831
  store ptr @99, ptr %i.t, align 8, !dbg !13831
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !13824
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !13824
  ret void, !dbg !13832

bb.i:                                             ; preds = %bb.j, %.body
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #36, !dbg !13833
  unreachable, !dbg !13833

bb.j:                                             ; preds = %.body
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc7bounded6SenderINtNtNtCsdBNFPP92xfl_5tower6buffer7message7MessageINtNtCs74LoFwSioHw_4http7request7RequestNtNtCsfUalJnHtWpm_5tonic4body4BodyEINtNtB4_3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB2I_8response8ResponseB3h_EIB47_DNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB6B_4SyncEL_EEB6z_EL_EEEEEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(8) %i.b) #38
          to label %bb.k unwind label %bb.i, !dbg !13824

bb.k:                                             ; preds = %bb.j
  resume { ptr, i32 } %i.m, !dbg !13833
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs4_NtNtNtCs3zuhHmEJ01l_5tokio4sync9broadcast5errorINtB5_9SendErrorNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7ChannelENtNtCs3oUPovFnLWP_4core3fmt5Debug3fmtCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 !dbg !13834 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13836
  store ptr %0, ptr %i.a, align 8, !dbg !13836
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @101, i64 noundef 9, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @100), !dbg !13837
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !13838
  ret i1 %i.b, !dbg !13839
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs5_NtCsgtgatFLTNh8_8governor4gcraNtB5_4GcraNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 !dbg !13840 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13842
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13842
  store ptr %i.b, ptr %i.a, align 8, !dbg !13842
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @104, i64 noundef 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @105, i64 noundef 1, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @102, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @106, i64 noundef 3, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @103), !dbg !13843
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !13844
  ret i1 %i.c, !dbg !13845
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !13846 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !13909, !nonnull !718, !noundef !718 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13909 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !dbg !13909, !nonnull !718, !noundef !718 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %0, align 8, !dbg !13910
  store ptr inttoptr (i64 8 to ptr), ptr %i.b, align 8, !dbg !13910
  %i.d = ptrtoint ptr %i.c to i64, !dbg !13911
  %i.e = ptrtoint ptr %i.a to i64, !dbg !13911    ; 2 uses
  %i.f = sub nuw i64 %i.d, %i.e, !dbg !13911
  %i.g = udiv exact i64 %i.f, 224, !dbg !13911    ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !13912
  %i.i = load ptr, ptr %i.h, align 8, !dbg !13912, !nonnull !718, !noundef !718 ; 4 uses
  %i.j = icmp eq ptr %i.c, %i.a, !dbg !13913
  br i1 %i.j, label %bb.b, label %.lr.ph, !dbg !13913

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !13914
  %i.l = load i64, ptr %i.k, align 8, !dbg !13914, !noundef !718 ; 3 uses
  %.not.i.i = icmp eq i64 %i.l, 0, !dbg !13914
  br i1 %.not.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateENtNtBO_5alloc6GlobalEECsbaWXNhtWAp9_11foundations.exit, label %bb.c, !dbg !13914

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !13915 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !dbg !13915, !noundef !718 ; 4 uses
  %i.o = icmp ult i64 %i.n, 41175768021673107, !dbg !13916
  tail call void @llvm.assume(i1 %i.o), !dbg !13917
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !13918
  %i.q = load i64, ptr %i.p, align 8, !dbg !13918, !noundef !718 ; 2 uses
  %.not3.i.i = icmp eq i64 %i.q, %i.n, !dbg !13919
  br i1 %.not3.i.i, label %bb.d, label %bb.e, !dbg !13919

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.r = add i64 %i.n, %i.l, !dbg !13920
  store i64 %i.r, ptr %i.m, align 8, !dbg !13921
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateENtNtBO_5alloc6GlobalEECsbaWXNhtWAp9_11foundations.exit, !dbg !13922

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !13923
  %i.t = load ptr, ptr %i.s, align 8, !dbg !13923, !nonnull !718, !noundef !718 ; 2 uses
  %i.u = getelementptr inbounds nuw [224 x i8], ptr %i.t, i64 %i.q, !dbg !13924
  %i.v = getelementptr inbounds nuw [224 x i8], ptr %i.t, i64 %i.n, !dbg !13925
  %i.w = mul nuw nsw i64 %i.l, 224, !dbg !13926
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.v, ptr nonnull align 8 %i.u, i64 %i.w, i1 false), !dbg !13926
  br label %bb.d, !dbg !13927

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateENtNtBO_5alloc6GlobalEECsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.l, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEECsbaWXNhtWAp9_11foundations.exit, %bb.d, %bb.b
  ret void, !dbg !13928

.body:                                            ; preds = %bb.h, %bb.i
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateENtNtBO_5alloc6GlobalEECsbaWXNhtWAp9_11foundations(ptr nonnull %0) #38, !dbg !13929
  resume { ptr, i32 } %i.ah, !dbg !13930

.lr.ph:                                           ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !13931 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !dbg !13931, !nonnull !718, !noundef !718 ; 2 uses
  %i.z = ptrtoint ptr %i.y to i64, !dbg !13932
  %i.aa = sub nuw i64 %i.e, %i.z, !dbg !13932
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aa, !dbg !13933 ; 2 uses
  br label %bb.g, !dbg !13934

bb.f:                                             ; preds = %bb.g
  %i.ac = icmp eq i64 %i.ae, %i.g, !dbg !13934
  br i1 %i.ac, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEECsbaWXNhtWAp9_11foundations.exit, label %bb.g, !dbg !13934

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %.sroa.0.0.i17 = phi i64 [ 0, %.lr.ph ], [ %i.ae, %bb.f ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [224 x i8], ptr %i.ab, i64 %.sroa.0.0.i17, !dbg !13934
  %i.ae = add nuw nsw i64 %.sroa.0.0.i17, 1, !dbg !13934 ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(224) %i.ad)
          to label %bb.f unwind label %bb.i, !dbg !13934

bb.h:                                             ; preds = %.lr.ph19
  %i.af = add nuw nsw i64 %.sroa.0.1.i18, 1, !dbg !13934 ; 2 uses
  %i.ag = icmp eq i64 %i.af, %i.g, !dbg !13934
  br i1 %i.ag, label %.body, label %.lr.ph19, !dbg !13934

bb.i:                                             ; preds = %bb.g
  %i.ah = landingpad { ptr, i32 }
          cleanup
  %i.ai = icmp eq i64 %i.ae, %i.g, !dbg !13934
  br i1 %i.ai, label %.body, label %.lr.ph19, !dbg !13934

.lr.ph19:                                         ; preds = %bb.i, %bb.h
  %.sroa.0.1.i18 = phi i64 [ %i.af, %bb.h ], [ %i.ae, %bb.i ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [224 x i8], ptr %i.ab, i64 %.sroa.0.1.i18, !dbg !13934
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(224) %i.aj) #38
          to label %bb.h unwind label %bb.j, !dbg !13934

bb.j:                                             ; preds = %.lr.ph19
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #36, !dbg !13934
  unreachable, !dbg !13934

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEECsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !13935
  %i.am = load i64, ptr %i.al, align 8, !dbg !13935, !noundef !718 ; 3 uses
  %.not.i.i4 = icmp eq i64 %i.am, 0, !dbg !13935
  br i1 %.not.i.i4, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateENtNtBO_5alloc6GlobalEECsbaWXNhtWAp9_11foundations.exit, label %bb.k, !dbg !13935

bb.k:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEECsbaWXNhtWAp9_11foundations.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !13936 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !dbg !13936, !noundef !718 ; 4 uses
  %i.ap = icmp ult i64 %i.ao, 41175768021673107, !dbg !13937
  tail call void @llvm.assume(i1 %i.ap), !dbg !13938
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !13939
  %i.ar = load i64, ptr %i.aq, align 8, !dbg !13939, !noundef !718 ; 2 uses
  %.not3.i.i5 = icmp eq i64 %i.ar, %i.ao, !dbg !13940
  br i1 %.not3.i.i5, label %bb.l, label %bb.m, !dbg !13940

bb.l:                                             ; preds = %bb.m, %bb.k
  %i.as = add i64 %i.ao, %i.am, !dbg !13941
  store i64 %i.as, ptr %i.an, align 8, !dbg !13942
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateENtNtBO_5alloc6GlobalEECsbaWXNhtWAp9_11foundations.exit, !dbg !13943

bb.m:                                             ; preds = %bb.k
  %i.at = load ptr, ptr %i.x, align 8, !dbg !13944, !nonnull !718, !noundef !718 ; 2 uses
  %i.au = getelementptr inbounds nuw [224 x i8], ptr %i.at, i64 %i.ar, !dbg !13945
  %i.av = getelementptr inbounds nuw [224 x i8], ptr %i.at, i64 %i.ao, !dbg !13946
  %i.aw = mul nuw nsw i64 %i.am, 224, !dbg !13947
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr nonnull align 8 %i.au, i64 %i.aw, i1 false), !dbg !13947
  br label %bb.l, !dbg !13948
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtCs49WdmBbiWyj_17crossbeam_channel5waker5EntryENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !13949 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !14069, !nonnull !718, !noundef !718 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14069 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !dbg !14069, !nonnull !718, !noundef !718 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %0, align 8, !dbg !14070
  store ptr inttoptr (i64 8 to ptr), ptr %i.b, align 8, !dbg !14070
  %i.d = ptrtoint ptr %i.c to i64, !dbg !14071
  %i.e = ptrtoint ptr %i.a to i64, !dbg !14071    ; 2 uses
  %i.f = sub nuw i64 %i.d, %i.e, !dbg !14071
  %i.g = udiv exact i64 %i.f, 24, !dbg !14071     ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !14072
  %i.i = load ptr, ptr %i.h, align 8, !dbg !14072, !nonnull !718, !noundef !718 ; 4 uses
  %i.j = icmp eq ptr %i.c, %i.a, !dbg !14073
  br i1 %i.j, label %bb.b, label %bb.f, !dbg !14073

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !14074
  %i.l = load i64, ptr %i.k, align 8, !dbg !14074, !noundef !718 ; 3 uses
  %.not.i.i = icmp eq i64 %i.l, 0, !dbg !14074
  br i1 %.not.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCs49WdmBbiWyj_17crossbeam_channel5waker5EntryNtNtBO_5alloc6GlobalEECsbaWXNhtWAp9_11foundations.exit, label %bb.c, !dbg !14074

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !14075 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !dbg !14075, !noundef !718 ; 4 uses
  %i.o = icmp ult i64 %i.n, 384307168202282326, !dbg !14076
  tail call void @llvm.assume(i1 %i.o), !dbg !14077
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !14078
  %i.q = load i64, ptr %i.p, align 8, !dbg !14078, !noundef !718 ; 2 uses
  %.not3.i.i = icmp eq i64 %i.q, %i.n, !dbg !14079
  br i1 %.not3.i.i, label %bb.d, label %bb.e, !dbg !14079

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.r = add i64 %i.n, %i.l, !dbg !14080
  store i64 %i.r, ptr %i.m, align 8, !dbg !14081
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCs49WdmBbiWyj_17crossbeam_channel5waker5EntryNtNtBO_5alloc6GlobalEECsbaWXNhtWAp9_11foundations.exit, !dbg !14082

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !14083
  %i.t = load ptr, ptr %i.s, align 8, !dbg !14083, !nonnull !718, !noundef !718 ; 2 uses
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.q, !dbg !14084
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.n, !dbg !14085
  %i.w = mul nuw nsw i64 %i.l, 24, !dbg !14086
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.v, ptr nonnull align 8 %i.u, i64 %i.w, i1 false), !dbg !14086
  br label %bb.d, !dbg !14087

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCs49WdmBbiWyj_17crossbeam_channel5waker5EntryNtNtBO_5alloc6GlobalEECsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.m, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs49WdmBbiWyj_17crossbeam_channel5waker5EntryECsbaWXNhtWAp9_11foundations.exit, %bb.d, %bb.b
  ret void, !dbg !14088

.body:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs49WdmBbiWyj_17crossbeam_channel5waker5EntryECsbaWXNhtWAp9_11foundations.exit8.i, %bb.i
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCs49WdmBbiWyj_17crossbeam_channel5waker5EntryNtNtBO_5alloc6GlobalEECsbaWXNhtWAp9_11foundations(ptr nonnull %0) #38, !dbg !14089
  resume { ptr, i32 } %i.ai, !dbg !14090

bb.f:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !14091 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !dbg !14091, !nonnull !718, !noundef !718 ; 2 uses
  %i.z = ptrtoint ptr %i.y to i64, !dbg !14092
  %i.aa = sub nuw i64 %i.e, %i.z, !dbg !14092
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aa, !dbg !14093 ; 2 uses
  br label %bb.g, !dbg !14094

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs49WdmBbiWyj_17crossbeam_channel5waker5EntryECsbaWXNhtWAp9_11foundations.exit.i, %bb.f
  %.sroa.0.09.i = phi i64 [ 0, %bb.f ], [ %i.ad, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs49WdmBbiWyj_17crossbeam_channel5waker5EntryECsbaWXNhtWAp9_11foundations.exit.i ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %.sroa.0.09.i, !dbg !14094 ; 2 uses
  %i.ad = add nuw nsw i64 %.sroa.0.09.i, 1, !dbg !14094 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14057), !dbg !14094
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14058), !dbg !14095
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14059), !dbg !14096
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14060), !dbg !14097
  %i.ae = load ptr, ptr %i.ac, align 8, !dbg !14098, !alias.scope !14061, !nonnull !718, !noundef !718
  %i.af = atomicrmw add ptr %i.ae, i64 -1 release, align 8, !dbg !14099, !noalias !14062
  %i.ag = icmp eq i64 %i.af, 1, !dbg !14100
  br i1 %i.ag, label %bb.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs49WdmBbiWyj_17crossbeam_channel5waker5EntryECsbaWXNhtWAp9_11foundations.exit.i, !dbg !14100

bb.h:                                             ; preds = %bb.g
  fence acquire, !dbg !14101
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs49WdmBbiWyj_17crossbeam_channel7context5InnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac) #37
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs49WdmBbiWyj_17crossbeam_channel5waker5EntryECsbaWXNhtWAp9_11foundations.exit.i unwind label %bb.i, !dbg !14102

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs49WdmBbiWyj_17crossbeam_channel5waker5EntryECsbaWXNhtWAp9_11foundations.exit.i: ; preds = %bb.h, %bb.g
  %i.ah = icmp eq i64 %i.ad, %i.g, !dbg !14094
  br i1 %i.ah, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs49WdmBbiWyj_17crossbeam_channel5waker5EntryECsbaWXNhtWAp9_11foundations.exit, label %bb.g, !dbg !14094

bb.i:                                             ; preds = %bb.h
  %i.ai = landingpad { ptr, i32 }
          cleanup
  %i.aj = icmp eq i64 %i.ad, %i.g, !dbg !14094
  br i1 %i.aj, label %.body, label %.lr.ph.i, !dbg !14094

.lr.ph.i:                                         ; preds = %bb.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs49WdmBbiWyj_17crossbeam_channel5waker5EntryECsbaWXNhtWAp9_11foundations.exit8.i
  %.sroa.0.110.i = phi i64 [ %i.al, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs49WdmBbiWyj_17crossbeam_channel5waker5EntryECsbaWXNhtWAp9_11foundations.exit8.i ], [ %i.ad, %bb.i ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %.sroa.0.110.i, !dbg !14094 ; 2 uses
  %i.al = add nuw nsw i64 %.sroa.0.110.i, 1, !dbg !14094 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14063), !dbg !14094
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14064), !dbg !14103
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14065), !dbg !14104
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14066), !dbg !14105
  %i.am = load ptr, ptr %i.ak, align 8, !dbg !14106, !alias.scope !14067, !nonnull !718, !noundef !718
  %i.an = atomicrmw add ptr %i.am, i64 -1 release, align 8, !dbg !14107, !noalias !14068
  %i.ao = icmp eq i64 %i.an, 1, !dbg !14108
  br i1 %i.ao, label %bb.j, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs49WdmBbiWyj_17crossbeam_channel5waker5EntryECsbaWXNhtWAp9_11foundations.exit8.i, !dbg !14108

bb.j:                                             ; preds = %.lr.ph.i
  fence acquire, !dbg !14109
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs49WdmBbiWyj_17crossbeam_channel7context5InnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ak) #37
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs49WdmBbiWyj_17crossbeam_channel5waker5EntryECsbaWXNhtWAp9_11foundations.exit8.i unwind label %bb.k, !dbg !14110

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs49WdmBbiWyj_17crossbeam_channel5waker5EntryECsbaWXNhtWAp9_11foundations.exit8.i: ; preds = %bb.j, %.lr.ph.i
  %i.ap = icmp eq i64 %i.al, %i.g, !dbg !14094
  br i1 %i.ap, label %.body, label %.lr.ph.i, !dbg !14094

bb.k:                                             ; preds = %bb.j
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #36, !dbg !14094
  unreachable, !dbg !14094

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs49WdmBbiWyj_17crossbeam_channel5waker5EntryECsbaWXNhtWAp9_11foundations.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs49WdmBbiWyj_17crossbeam_channel5waker5EntryECsbaWXNhtWAp9_11foundations.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !14111
  %i.as = load i64, ptr %i.ar, align 8, !dbg !14111, !noundef !718 ; 3 uses
  %.not.i.i4 = icmp eq i64 %i.as, 0, !dbg !14111
  br i1 %.not.i.i4, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCs49WdmBbiWyj_17crossbeam_channel5waker5EntryNtNtBO_5alloc6GlobalEECsbaWXNhtWAp9_11foundations.exit, label %bb.l, !dbg !14111

bb.l:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs49WdmBbiWyj_17crossbeam_channel5waker5EntryECsbaWXNhtWAp9_11foundations.exit
  %i.at = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !14112 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !dbg !14112, !noundef !718 ; 4 uses
  %i.av = icmp ult i64 %i.au, 384307168202282326, !dbg !14113
  tail call void @llvm.assume(i1 %i.av), !dbg !14114
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !14115
  %i.ax = load i64, ptr %i.aw, align 8, !dbg !14115, !noundef !718 ; 2 uses
  %.not3.i.i5 = icmp eq i64 %i.ax, %i.au, !dbg !14116
  br i1 %.not3.i.i5, label %bb.m, label %bb.n, !dbg !14116

bb.m:                                             ; preds = %bb.n, %bb.l
  %i.ay = add i64 %i.au, %i.as, !dbg !14117
  store i64 %i.ay, ptr %i.at, align 8, !dbg !14118
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCs49WdmBbiWyj_17crossbeam_channel5waker5EntryNtNtBO_5alloc6GlobalEECsbaWXNhtWAp9_11foundations.exit, !dbg !14119

bb.n:                                             ; preds = %bb.l
  %i.az = load ptr, ptr %i.x, align 8, !dbg !14120, !nonnull !718, !noundef !718 ; 2 uses
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %i.az, i64 %i.ax, !dbg !14121
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %i.az, i64 %i.au, !dbg !14122
  %i.bc = mul nuw nsw i64 %i.as, 24, !dbg !14123
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bb, ptr nonnull align 8 %i.ba, i64 %i.bc, i1 false), !dbg !14123
  br label %bb.m, !dbg !14124
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !14125 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !14245, !nonnull !718, !noundef !718 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14245 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !dbg !14245, !nonnull !718, !noundef !718 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %0, align 8, !dbg !14246
  store ptr inttoptr (i64 8 to ptr), ptr %i.b, align 8, !dbg !14246
  %i.d = ptrtoint ptr %i.c to i64, !dbg !14247
  %i.e = ptrtoint ptr %i.a to i64, !dbg !14247    ; 2 uses
  %i.f = sub nuw i64 %i.d, %i.e, !dbg !14247
  %i.g = udiv exact i64 %i.f, 24, !dbg !14247     ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !14248
  %i.i = load ptr, ptr %i.h, align 8, !dbg !14248, !nonnull !718, !noundef !718 ; 4 uses
  %i.j = icmp eq ptr %i.c, %i.a, !dbg !14249
  br i1 %i.j, label %bb.b, label %bb.f, !dbg !14249

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !14250
  %i.l = load i64, ptr %i.k, align 8, !dbg !14250, !noundef !718 ; 3 uses
  %.not.i.i = icmp eq i64 %i.l, 0, !dbg !14250
  br i1 %.not.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryNtNtBO_5alloc6GlobalEECsbaWXNhtWAp9_11foundations.exit, label %bb.c, !dbg !14250

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !14251 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !dbg !14251, !noundef !718 ; 4 uses
  %i.o = icmp ult i64 %i.n, 384307168202282326, !dbg !14252
  tail call void @llvm.assume(i1 %i.o), !dbg !14253
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !14254
  %i.q = load i64, ptr %i.p, align 8, !dbg !14254, !noundef !718 ; 2 uses
  %.not3.i.i = icmp eq i64 %i.q, %i.n, !dbg !14255
  br i1 %.not3.i.i, label %bb.d, label %bb.e, !dbg !14255

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.r = add i64 %i.n, %i.l, !dbg !14256
  store i64 %i.r, ptr %i.m, align 8, !dbg !14257
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryNtNtBO_5alloc6GlobalEECsbaWXNhtWAp9_11foundations.exit, !dbg !14258

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !14259
  %i.t = load ptr, ptr %i.s, align 8, !dbg !14259, !nonnull !718, !noundef !718 ; 2 uses
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.q, !dbg !14260
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.n, !dbg !14261
  %i.w = mul nuw nsw i64 %i.l, 24, !dbg !14262
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.v, ptr nonnull align 8 %i.u, i64 %i.w, i1 false), !dbg !14262
  br label %bb.d, !dbg !14263

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryNtNtBO_5alloc6GlobalEECsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.m, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryECsbaWXNhtWAp9_11foundations.exit, %bb.d, %bb.b
  ret void, !dbg !14264

.body:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryECsbaWXNhtWAp9_11foundations.exit8.i, %bb.i
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryNtNtBO_5alloc6GlobalEECsbaWXNhtWAp9_11foundations(ptr nonnull %0) #38, !dbg !14265
  resume { ptr, i32 } %i.ai, !dbg !14266

bb.f:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !14267 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !dbg !14267, !nonnull !718, !noundef !718 ; 2 uses
  %i.z = ptrtoint ptr %i.y to i64, !dbg !14268
  %i.aa = sub nuw i64 %i.e, %i.z, !dbg !14268
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aa, !dbg !14269 ; 2 uses
  br label %bb.g, !dbg !14270

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryECsbaWXNhtWAp9_11foundations.exit.i, %bb.f
  %.sroa.0.09.i = phi i64 [ 0, %bb.f ], [ %i.ad, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryECsbaWXNhtWAp9_11foundations.exit.i ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %.sroa.0.09.i, !dbg !14270 ; 2 uses
  %i.ad = add nuw nsw i64 %.sroa.0.09.i, 1, !dbg !14270 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14233), !dbg !14270
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14234), !dbg !14271
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14235), !dbg !14272
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14236), !dbg !14273
  %i.ae = load ptr, ptr %i.ac, align 8, !dbg !14274, !alias.scope !14237, !nonnull !718, !noundef !718
  %i.af = atomicrmw add ptr %i.ae, i64 -1 release, align 8, !dbg !14275, !noalias !14238
  %i.ag = icmp eq i64 %i.af, 1, !dbg !14276
  br i1 %i.ag, label %bb.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryECsbaWXNhtWAp9_11foundations.exit.i, !dbg !14276

bb.h:                                             ; preds = %bb.g
  fence acquire, !dbg !14277
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context5InnerE9drop_slowCs24u0wB4eMVt_17opentelemetry_sdk(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac) #37
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryECsbaWXNhtWAp9_11foundations.exit.i unwind label %bb.i, !dbg !14278

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryECsbaWXNhtWAp9_11foundations.exit.i: ; preds = %bb.h, %bb.g
  %i.ah = icmp eq i64 %i.ad, %i.g, !dbg !14270
  br i1 %i.ah, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryECsbaWXNhtWAp9_11foundations.exit, label %bb.g, !dbg !14270

bb.i:                                             ; preds = %bb.h
  %i.ai = landingpad { ptr, i32 }
          cleanup
  %i.aj = icmp eq i64 %i.ad, %i.g, !dbg !14270
  br i1 %i.aj, label %.body, label %.lr.ph.i, !dbg !14270

.lr.ph.i:                                         ; preds = %bb.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryECsbaWXNhtWAp9_11foundations.exit8.i
  %.sroa.0.110.i = phi i64 [ %i.al, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryECsbaWXNhtWAp9_11foundations.exit8.i ], [ %i.ad, %bb.i ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %.sroa.0.110.i, !dbg !14270 ; 2 uses
  %i.al = add nuw nsw i64 %.sroa.0.110.i, 1, !dbg !14270 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14239), !dbg !14270
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14240), !dbg !14279
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14241), !dbg !14280
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14242), !dbg !14281
  %i.am = load ptr, ptr %i.ak, align 8, !dbg !14282, !alias.scope !14243, !nonnull !718, !noundef !718
  %i.an = atomicrmw add ptr %i.am, i64 -1 release, align 8, !dbg !14283, !noalias !14244
  %i.ao = icmp eq i64 %i.an, 1, !dbg !14284
  br i1 %i.ao, label %bb.j, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryECsbaWXNhtWAp9_11foundations.exit8.i, !dbg !14284

bb.j:                                             ; preds = %.lr.ph.i
  fence acquire, !dbg !14285
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context5InnerE9drop_slowCs24u0wB4eMVt_17opentelemetry_sdk(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ak) #37
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryECsbaWXNhtWAp9_11foundations.exit8.i unwind label %bb.k, !dbg !14286

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryECsbaWXNhtWAp9_11foundations.exit8.i: ; preds = %bb.j, %.lr.ph.i
  %i.ap = icmp eq i64 %i.al, %i.g, !dbg !14270
  br i1 %i.ap, label %.body, label %.lr.ph.i, !dbg !14270

bb.k:                                             ; preds = %bb.j
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #36, !dbg !14270
  unreachable, !dbg !14270

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryECsbaWXNhtWAp9_11foundations.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryECsbaWXNhtWAp9_11foundations.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !14287
  %i.as = load i64, ptr %i.ar, align 8, !dbg !14287, !noundef !718 ; 3 uses
  %.not.i.i4 = icmp eq i64 %i.as, 0, !dbg !14287
  br i1 %.not.i.i4, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryNtNtBO_5alloc6GlobalEECsbaWXNhtWAp9_11foundations.exit, label %bb.l, !dbg !14287

bb.l:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryECsbaWXNhtWAp9_11foundations.exit
  %i.at = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !14288 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !dbg !14288, !noundef !718 ; 4 uses
  %i.av = icmp ult i64 %i.au, 384307168202282326, !dbg !14289
  tail call void @llvm.assume(i1 %i.av), !dbg !14290
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !14291
  %i.ax = load i64, ptr %i.aw, align 8, !dbg !14291, !noundef !718 ; 2 uses
  %.not3.i.i5 = icmp eq i64 %i.ax, %i.au, !dbg !14292
  br i1 %.not3.i.i5, label %bb.m, label %bb.n, !dbg !14292

bb.m:                                             ; preds = %bb.n, %bb.l
  %i.ay = add i64 %i.au, %i.as, !dbg !14293
  store i64 %i.ay, ptr %i.at, align 8, !dbg !14294
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryNtNtBO_5alloc6GlobalEECsbaWXNhtWAp9_11foundations.exit, !dbg !14295

bb.n:                                             ; preds = %bb.l
  %i.az = load ptr, ptr %i.x, align 8, !dbg !14296, !nonnull !718, !noundef !718 ; 2 uses
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %i.az, i64 %i.ax, !dbg !14297
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %i.az, i64 %i.au, !dbg !14298
  %i.bc = mul nuw nsw i64 %i.as, 24, !dbg !14299
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bb, ptr nonnull align 8 %i.ba, i64 %i.bc, i1 false), !dbg !14299
  br label %bb.m, !dbg !14300
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs6_NtCsefgzIPu8p8D_14http_body_util4fullINtB5_4FullNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEINtNtCs3oUPovFnLWP_4core7convert4FromNtNtCs1xwejQucwHj_5alloc6string6StringE4fromCsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !14301 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !14342
  call void @_RNvXsH_NtCs8QTyv2gZm5j_5bytes5bytesNtB5_5BytesINtNtCs3oUPovFnLWP_4core7convert4FromNtNtCs1xwejQucwHj_5alloc6string6StringE4from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1), !dbg !14342
  call void @llvm.experimental.noalias.scope.decl(metadata !14331), !dbg !14343
  call void @llvm.experimental.noalias.scope.decl(metadata !14332), !dbg !14343
  %i.b = invoke noundef zeroext i1 @_RNvYNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesNtNtNtB6_3buf8buf_impl3Buf13has_remainingCsbaWXNhtWAp9_11foundations(ptr noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %bb.c unwind label %bb.b, !dbg !14344, !noalias !14331

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !14333), !dbg !14345
  call void @llvm.experimental.noalias.scope.decl(metadata !14334), !dbg !14346
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !14347
  %i.e = load ptr, ptr %i.d, align 8, !dbg !14348, !alias.scope !14335, !noundef !718
  %i.f = load ptr, ptr %i.a, align 8, !dbg !14349, !alias.scope !14335, !nonnull !718, !align !826, !noundef !718
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32, !dbg !14349
  %i.h = load ptr, ptr %i.g, align 8, !dbg !14349, !noalias !14336, !nonnull !718, !noundef !718
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !14350
  %i.j = load ptr, ptr %i.i, align 8, !dbg !14350, !alias.scope !14335, !noundef !718
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !14351
  %i.l = load i64, ptr %i.k, align 8, !dbg !14351, !alias.scope !14335, !noundef !718
  invoke void %i.h(ptr noundef %i.e, ptr noundef %i.j, i64 noundef %i.l)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesECsbaWXNhtWAp9_11foundations.exit.i unwind label %bb.f, !dbg !14349, !noalias !14331, !inline_history !347

bb.c:                                             ; preds = %bb.a
  br i1 %i.b, label %bb.e, label %bb.d, !dbg !14352

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %0, align 8, !dbg !14353, !alias.scope !14331
  call void @llvm.experimental.noalias.scope.decl(metadata !14337), !dbg !14345
  call void @llvm.experimental.noalias.scope.decl(metadata !14338), !dbg !14354
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !14355
  %i.n = load ptr, ptr %i.m, align 8, !dbg !14356, !alias.scope !14339, !noundef !718
  %i.o = load ptr, ptr %i.a, align 8, !dbg !14357, !alias.scope !14339, !nonnull !718, !align !826, !noundef !718
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32, !dbg !14357
  %i.q = load ptr, ptr %i.p, align 8, !dbg !14357, !noalias !14340, !nonnull !718, !noundef !718
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !14358
  %i.s = load ptr, ptr %i.r, align 8, !dbg !14358, !alias.scope !14339, !noundef !718
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !14359
  %i.u = load i64, ptr %i.t, align 8, !dbg !14359, !alias.scope !14339, !noundef !718
  call void %i.q(ptr noundef %i.n, ptr noundef %i.s, i64 noundef %i.u), !dbg !14357, !noalias !14340, !inline_history !693
  br label %_RNvMNtCsefgzIPu8p8D_14http_body_util4fullINtB2_4FullNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesE3newCsbaWXNhtWAp9_11foundations.exit, !dbg !14345

bb.e:                                             ; preds = %bb.c
  %.sroa.05.0.copyload.i = load ptr, ptr %i.a, align 8, !dbg !14360, !alias.scope !14332
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !14360
  %.sroa.4.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14353
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx4.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.46.0..sroa_idx.i, i64 24, i1 false), !dbg !14360, !alias.scope !14341
  store ptr %.sroa.05.0.copyload.i, ptr %0, align 8, !dbg !14353, !alias.scope !14331
  br label %_RNvMNtCsefgzIPu8p8D_14http_body_util4fullINtB2_4FullNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesE3newCsbaWXNhtWAp9_11foundations.exit, !dbg !14345

bb.f:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #36, !dbg !14361, !noalias !14331
  unreachable, !dbg !14361

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesECsbaWXNhtWAp9_11foundations.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.c, !dbg !14361

_RNvMNtCsefgzIPu8p8D_14http_body_util4fullINtB2_4FullNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesE3newCsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !14362
  ret void, !dbg !14363
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs6_NtNtCsgI8t0psmkwo_10tokio_util5codec11framed_implINtB5_10FramedImplINtNtNtCsb6T6P0NKlCh_2h25codec12framed_write11FramedWriteINtNtNtNtCsaCYLheajBls_5hyper6common2io6compat6CompatNtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service2io7BoxedIoEINtNtNtNtB1h_5proto7streams10prioritize11PrioritizedINtNtNtB2e_5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEEENtNtB7_16length_delimited20LengthDelimitedCodecNtB5_9ReadFrameENtNtCs9Hva1InW082_12futures_core6stream6Stream9poll_nextCsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(496) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #1 !dbg !14364 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %.sroa.58.sroa.5 = alloca [24 x i8], align 8    ; 5 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !14443
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 456, !dbg !14443 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 490 ; 6 uses
  %i.f = load i8, ptr %i.e, align 2, !dbg !14444, !range !883, !noundef !718
  %i.g = trunc nuw i8 %i.f to i1, !dbg !14444
  br i1 %i.g, label %._crit_edge, label %.lr.ph, !dbg !14444

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 489 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 488 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 464
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 472
  %.pre = load i8, ptr %i.h, align 1, !dbg !14445, !range !883
  %i.m = trunc nuw i8 %.pre to i1, !dbg !14445
  br i1 %i.m, label %.critedge87, label %bb.b, !dbg !14445

._crit_edge:                                      ; preds = %bb.p, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 489, !dbg !14446
  store i8 0, ptr %i.n, align 1, !dbg !14446
  store i8 0, ptr %i.e, align 2, !dbg !14447
  store i64 0, ptr %0, align 8, !dbg !14448
  br label %bb.q, !dbg !14449

bb.b:                                             ; preds = %bb.h, %.lr.ph
  %i.o = load i64, ptr %i.k, align 8, !dbg !14450, !noundef !718
  %i.p = load i64, ptr %i.l, align 8, !dbg !14451, !noundef !718
  %.not55 = icmp eq i64 %i.p, %i.o, !dbg !14452
  br i1 %.not55, label %bb.j, label %bb.k, !dbg !14452

.critedge87:                                      ; preds = %bb.p, %.lr.ph
  %i.q = load i8, ptr %i.i, align 8, !dbg !14453, !range !883, !noundef !718
  %i.r = trunc nuw i8 %i.q to i1, !dbg !14453
  br i1 %i.r, label %bb.d, label %bb.c, !dbg !14453

bb.c:                                             ; preds = %.critedge87
  call void @_RNvXs_NtNtCsgI8t0psmkwo_10tokio_util5codec16length_delimitedNtB4_20LengthDelimitedCodecNtNtB6_7decoder7Decoder6decode(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d), !dbg !14454
  %i.s = load i64, ptr %i.a, align 8, !dbg !14455, !range !922, !noundef !718
  %i.t = trunc nuw i64 %i.s to i1, !dbg !14456
  br i1 %i.t, label %bb.e, label %bb.f, !dbg !14456

bb.d:                                             ; preds = %.critedge87
  call void @_RNvYNtNtNtCsgI8t0psmkwo_10tokio_util5codec16length_delimited20LengthDelimitedCodecNtNtB6_7decoder7Decoder10decode_eofCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d), !dbg !14457
  %i.u = load i64, ptr %i.b, align 8, !dbg !14458, !range !922, !noundef !718
  %i.v = trunc nuw i64 %i.u to i1, !dbg !14459
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !14460 ; 2 uses
  br i1 %i.v, label %bb.r, label %bb.s, !dbg !14459

bb.e:                                             ; preds = %bb.c
  store i8 1, ptr %i.e, align 2, !dbg !14461
  %i.x = load ptr, ptr %i.j, align 8, !dbg !14462, !nonnull !718, !noundef !718
  store i64 1, ptr %0, align 8, !dbg !14463
  %.sroa.446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14463
  store ptr null, ptr %.sroa.446.0..sroa_idx, align 8, !dbg !14463
  br label %bb.i, !dbg !14464

bb.f:                                             ; preds = %bb.c
  %.sroa.043.0.copyload = load ptr, ptr %i.j, align 8, !dbg !14465 ; 2 uses
  %.not = icmp eq ptr %.sroa.043.0.copyload, null, !dbg !14422
  br i1 %.not, label %bb.h, label %bb.g, !dbg !14466

bb.g:                                             ; preds = %bb.f
  %.sroa.418.sroa.4.0..sroa.418.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !14467
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.418.sroa.4.0..sroa.418.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.444.0..sroa_idx, i64 24, i1 false), !dbg !14468
  store i64 1, ptr %0, align 8, !dbg !14467
  br label %bb.i, !dbg !14469

bb.h:                                             ; preds = %bb.f
  store i8 0, ptr %i.h, align 1, !dbg !14470
  br label %bb.b, !dbg !14471
end_hunk_6
