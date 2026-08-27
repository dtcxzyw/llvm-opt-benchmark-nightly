Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_catalog-609147b93d62c723.influxdb3_catalog.5df24ce7f3fe82b7-cgu.01?download=true
inline.NumInlined: 2397
inline.NumDeleted: 1338
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 52
loop-unroll.NumUnrolled: 76
begin_hunk_0_@_RINvMs6_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_8DebugMap7entriesRNtNtCscdodAO9FK5_5alloc6string6StringB12_INtNtCsc96bKABWO34_9hashbrown3map4IterB13_B13_EECs844E4pPEVZX_17influxdb3_catalog:bb.a
  br i1 %i.c, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %.sroa.69.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.69.0.copyload = load i16, ptr %.sroa.69.0..sroa_idx, align 8, !alias.scope !31
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !31
  %.sroa.08.0.copyload = load ptr, ptr %1, align 8, !alias.scope !31
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.loopexit
  %.sroa.0.022 = phi ptr [ %.sroa.0.1, %.loopexit ], [ %.sroa.08.0.copyload, %.lr.ph.preheader ] ; 2 uses
  %.sroa.6.021 = phi ptr [ %.sroa.6.1, %.loopexit ], [ %.sroa.4.0.copyload, %.lr.ph.preheader ] ; 2 uses
  %.sroa.86.020 = phi i16 [ %i.l, %.loopexit ], [ %.sroa.69.0.copyload, %.lr.ph.preheader ] ; 2 uses
  %.sroa.107.019 = phi i64 [ %i.o, %.loopexit ], [ %.sroa.810.0.copyload, %.lr.ph.preheader ]
  %.not11.i.i = icmp eq i16 %.sroa.86.020, 0
  br i1 %.not11.i.i, label %.lr.ph.i.i, label %.loopexit

.lr.ph.i.i:                                       ; preds = %.lr.ph, %.lr.ph.i.i
  %i.d = phi ptr [ %i.h, %.lr.ph.i.i ], [ %.sroa.6.021, %.lr.ph ] ; 2 uses
  %i.e = phi ptr [ %i.g, %.lr.ph.i.i ], [ %.sroa.0.022, %.lr.ph ]
  %.val9.i.i = load <16 x i8>, ptr %i.d, align 16, !noalias !35
  %i.f = icmp sgt <16 x i8> %.val9.i.i, splat (i8 -1)
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 -768 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %.cast.i.i = bitcast <16 x i1> %i.f to i16      ; 2 uses
  %.not.i.i = icmp eq i16 %.cast.i.i, 0
  br i1 %.not.i.i, label %.lr.ph.i.i, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.i, %.lr.ph
  %.sroa.6.1 = phi ptr [ %.sroa.6.021, %.lr.ph ], [ %i.h, %.lr.ph.i.i ]
  %.sroa.0.1 = phi ptr [ %.sroa.0.022, %.lr.ph ], [ %i.g, %.lr.ph.i.i ] ; 2 uses
  %.lcssa.i.i = phi i16 [ %.sroa.86.020, %.lr.ph ], [ %.cast.i.i, %.lr.ph.i.i ] ; 3 uses
  %i.i = add i16 %.lcssa.i.i, -1
  %i.j = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.k = zext nneg i16 %i.j to i64
  %i.l = and i16 %i.i, %.lcssa.i.i
  %i.m = sub nsw i64 0, %i.k
  %i.n = getelementptr inbounds [48 x i8], ptr %.sroa.0.1, i64 %i.m ; 2 uses
  %i.o = add i64 %.sroa.107.019, -1               ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %i.n, i64 -48
  %i.q = getelementptr inbounds i8, ptr %i.n, i64 -24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.p, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.q, ptr %i.a, align 8
  %i.r = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_8DebugMap5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.s = icmp eq i64 %i.o, 0
  br i1 %i.s, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_8DebugMap7entriesRNtNtCscdodAO9FK5_5alloc6string6StringB12_INtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map4IterB13_B13_EECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef returned align 8 dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  %i.d = call { ptr, ptr } @_RNvXsG_NtCsgQfI1edjipl_9hashbrown3mapINtB5_4IterNtNtCscdodAO9FK5_5alloc6string6StringBK_ENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c) ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.d, 0        ; 2 uses
  %.not6 = icmp eq ptr %i.e, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.f = phi ptr [ %i.k, %.lr.ph ], [ %i.e, %bb.a ]
  %i.g = phi { ptr, ptr } [ %i.j, %.lr.ph ], [ %i.d, %bb.a ]
  %i.h = extractvalue { ptr, ptr } %i.g, 1        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.f, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  store ptr %i.h, ptr %i.a, align 8
  %i.i = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_8DebugMap5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.j = call { ptr, ptr } @_RNvXsG_NtCsgQfI1edjipl_9hashbrown3mapINtB5_4IterNtNtCscdodAO9FK5_5alloc6string6StringBK_ENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c) ; 2 uses
  %i.k = extractvalue { ptr, ptr } %i.j, 0        ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_8DebugMap7entriesRNtNtCscdodAO9FK5_5alloc6string6StringRNtCsaXLCtUcOqO5_15influxdb3_authz16ResourceMetadataINtNtNtCs96Uix8yqi9Q_8indexmap3map4iter4IterB13_B1F_EECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef returned align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.c = icmp eq ptr %1, %2
  br i1 %i.c, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.010 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.010, i64 64 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.010, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %.sroa.0.010, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.e, ptr %i.a, align 8
  %i.f = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_8DebugMap5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @79) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.g = icmp eq ptr %i.d, %2
  br i1 %i.g, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define hidden noundef align 8 ptr @_RINvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format9record_id8RecordIdRNtNtB1b_8registry16RegisteredRecordE3getB17_EB1d_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 2 captures(none) dereferenceable(2) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !3   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker5ImmutNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format9record_id8RecordIdRNtNtB1D_8registry16RegisteredRecordNtB1h_14LeafOrInternalE11search_treeB1z_EB1F_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !3
  %.val = load i16, ptr %1, align 2
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  %.sroa.3.0.i = phi i64 [ %i.c, %bb.b ], [ %i.s, %bb.f ] ; 2 uses
  %.sroa.0.0.i = phi ptr [ %i.a, %bb.b ], [ %i.r, %bb.f ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 100 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 98
  %i.f = load i16, ptr %i.e, align 2, !noalias !40, !noundef !3 ; 2 uses
  %i.g = zext i16 %i.f to i64                     ; 3 uses
  %.idx = shl nuw nsw i64 %i.g, 1
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %i.i = icmp eq i16 %i.f, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i26, i64 2 ; 2 uses
  %i.k = add nuw nsw i64 %.sroa.8.0.i.i25, 1
  %i.l = icmp eq ptr %i.j, %i.h
  br i1 %i.l, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.sroa.0.03.i.i26 = phi ptr [ %i.j, %bb.d ], [ %i.d, %bb.c ] ; 2 uses
  %.sroa.8.0.i.i25 = phi i64 [ %i.k, %bb.d ], [ 0, %bb.c ] ; 4 uses
  %.val6.i.i = load i16, ptr %.sroa.0.03.i.i26, align 2, !noalias !40, !noundef !3
  %i.m = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i16(i16 %.val, i16 %.val6.i.i)
  switch i8 %i.m, label %bb.e [
    i8 -1, label %._crit_edge
    i8 0, label %_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker5ImmutNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format9record_id8RecordIdRNtNtB1D_8registry16RegisteredRecordNtB1h_14LeafOrInternalE11search_treeB1z_EB1F_.exit
    i8 1, label %bb.d
  ]

bb.e:                                             ; preds = %.lr.ph
  unreachable

._crit_edge:                                      ; preds = %bb.d, %.lr.ph, %bb.c
  %.sroa.4.0.i.ph.i = phi i64 [ %i.g, %bb.c ], [ %i.g, %bb.d ], [ %.sroa.8.0.i.i25, %.lr.ph ] ; 2 uses
  %i.n = icmp eq i64 %.sroa.3.0.i, 0
  br i1 %i.n, label %_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker5ImmutNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format9record_id8RecordIdRNtNtB1D_8registry16RegisteredRecordNtB1h_14LeafOrInternalE11search_treeB1z_EB1F_.exit.thread, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 128
  %i.p = icmp samesign ult i64 %.sroa.4.0.i.ph.i, 12
  tail call void @llvm.assume(i1 %i.p)
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.4.0.i.ph.i
  %i.r = load ptr, ptr %i.q, align 8, !noalias !40, !nonnull !3, !noundef !3
  %i.s = add i64 %.sroa.3.0.i, -1
  br label %bb.c

_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker5ImmutNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format9record_id8RecordIdRNtNtB1D_8registry16RegisteredRecordNtB1h_14LeafOrInternalE11search_treeB1z_EB1F_.exit.thread: ; preds = %._crit_edge, %_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker5ImmutNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format9record_id8RecordIdRNtNtB1D_8registry16RegisteredRecordNtB1h_14LeafOrInternalE11search_treeB1z_EB1F_.exit, %bb.a
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %i.v, %_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker5ImmutNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format9record_id8RecordIdRNtNtB1D_8registry16RegisteredRecordNtB1h_14LeafOrInternalE11search_treeB1z_EB1F_.exit ], [ null, %._crit_edge ]
  ret ptr %.sroa.0.0

_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker5ImmutNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format9record_id8RecordIdRNtNtB1D_8registry16RegisteredRecordNtB1h_14LeafOrInternalE11search_treeB1z_EB1F_.exit: ; preds = %.lr.ph
  %i.t = icmp samesign ult i64 %.sroa.8.0.i.i25, 11
  tail call void @llvm.assume(i1 %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 8
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.sroa.8.0.i.i25
  br label %_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker5ImmutNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format9record_id8RecordIdRNtNtB1D_8registry16RegisteredRecordNtB1h_14LeafOrInternalE11search_treeB1z_EB1F_.exit.thread
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define hidden noundef ptr @_RINvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v38NodeModeNtNtB8_7set_val9SetValZSTE3getB17_EB1f_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly captures(none) dereferenceable(1) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !3   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker5ImmutNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v38NodeModeNtNtB7_7set_val9SetValZSTNtB1h_14LeafOrInternalE11search_treeB1z_EB1H_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !3
  %.val = load i8, ptr %1, align 1
  %2 = zext nneg i8 %.val to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  %.sroa.3.0.i = phi i64 [ %i.c, %bb.b ], [ %i.s, %bb.f ] ; 2 uses
  %.sroa.0.0.i = phi ptr [ %i.a, %bb.b ], [ %i.r, %bb.f ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 12 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 10
  %i.f = load i16, ptr %i.e, align 2, !noalias !43, !noundef !3 ; 2 uses
  %i.g = zext i16 %i.f to i64                     ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.g
  %i.i = icmp eq i16 %i.f, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i26, i64 1 ; 2 uses
  %i.k = add nuw nsw i64 %.sroa.8.0.i.i25, 1
  %i.l = icmp eq ptr %i.j, %i.h
  br i1 %i.l, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.sroa.0.03.i.i26 = phi ptr [ %i.j, %bb.d ], [ %i.d, %bb.c ] ; 2 uses
  %.sroa.8.0.i.i25 = phi i64 [ %i.k, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %.val6.i.i = load i8, ptr %.sroa.0.03.i.i26, align 1, !range !46, !noalias !43, !noundef !3
  %3 = zext nneg i8 %.val6.i.i to i64
  %i.m = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %2, i64 %3)
  switch i8 %i.m, label %bb.e [
    i8 -1, label %._crit_edge
    i8 0, label %_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker5ImmutNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v38NodeModeNtNtB7_7set_val9SetValZSTNtB1h_14LeafOrInternalE11search_treeB1z_EB1H_.exit
    i8 1, label %bb.d
  ]

bb.e:                                             ; preds = %.lr.ph
  unreachable

._crit_edge:                                      ; preds = %bb.d, %.lr.ph, %bb.c
  %.sroa.4.0.i.ph.i = phi i64 [ %i.g, %bb.c ], [ %i.g, %bb.d ], [ %.sroa.8.0.i.i25, %.lr.ph ] ; 2 uses
  %i.n = icmp eq i64 %.sroa.3.0.i, 0
  br i1 %i.n, label %_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker5ImmutNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v38NodeModeNtNtB7_7set_val9SetValZSTNtB1h_14LeafOrInternalE11search_treeB1z_EB1H_.exit.thread, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 24
  %i.p = icmp samesign ult i64 %.sroa.4.0.i.ph.i, 12
  tail call void @llvm.assume(i1 %i.p)
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.4.0.i.ph.i
  %i.r = load ptr, ptr %i.q, align 8, !noalias !43, !nonnull !3, !noundef !3
  %i.s = add i64 %.sroa.3.0.i, -1
  br label %bb.c

_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker5ImmutNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v38NodeModeNtNtB7_7set_val9SetValZSTNtB1h_14LeafOrInternalE11search_treeB1z_EB1H_.exit.thread: ; preds = %._crit_edge, %_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker5ImmutNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v38NodeModeNtNtB7_7set_val9SetValZSTNtB1h_14LeafOrInternalE11search_treeB1z_EB1H_.exit, %bb.a
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %i.t, %_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker5ImmutNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v38NodeModeNtNtB7_7set_val9SetValZSTNtB1h_14LeafOrInternalE11search_treeB1z_EB1H_.exit ], [ null, %._crit_edge ]
  ret ptr %.sroa.0.0

_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker5ImmutNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v38NodeModeNtNtB7_7set_val9SetValZSTNtB1h_14LeafOrInternalE11search_treeB1z_EB1H_.exit: ; preds = %.lr.ph
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 23
  br label %_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker5ImmutNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v38NodeModeNtNtB7_7set_val9SetValZSTNtB1h_14LeafOrInternalE11search_treeB1z_EB1H_.exit.thread
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define hidden noundef ptr @_RINvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v48NodeModeNtNtB8_7set_val9SetValZSTE3getB17_EB1f_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly captures(none) dereferenceable(1) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !3   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker5ImmutNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v48NodeModeNtNtB7_7set_val9SetValZSTNtB1h_14LeafOrInternalE11search_treeB1z_EB1H_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !3
  %.val = load i8, ptr %1, align 1
  %2 = zext nneg i8 %.val to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  %.sroa.3.0.i = phi i64 [ %i.c, %bb.b ], [ %i.s, %bb.f ] ; 2 uses
  %.sroa.0.0.i = phi ptr [ %i.a, %bb.b ], [ %i.r, %bb.f ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 12 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 10
  %i.f = load i16, ptr %i.e, align 2, !noalias !47, !noundef !3 ; 2 uses
  %i.g = zext i16 %i.f to i64                     ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.g
  %i.i = icmp eq i16 %i.f, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i26, i64 1 ; 2 uses
  %i.k = add nuw nsw i64 %.sroa.8.0.i.i25, 1
  %i.l = icmp eq ptr %i.j, %i.h
  br i1 %i.l, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.sroa.0.03.i.i26 = phi ptr [ %i.j, %bb.d ], [ %i.d, %bb.c ] ; 2 uses
  %.sroa.8.0.i.i25 = phi i64 [ %i.k, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %.val6.i.i = load i8, ptr %.sroa.0.03.i.i26, align 1, !range !46, !noalias !47, !noundef !3
  %3 = zext nneg i8 %.val6.i.i to i64
  %i.m = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %2, i64 %3)
  switch i8 %i.m, label %bb.e [
    i8 -1, label %._crit_edge
    i8 0, label %_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker5ImmutNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v48NodeModeNtNtB7_7set_val9SetValZSTNtB1h_14LeafOrInternalE11search_treeB1z_EB1H_.exit
    i8 1, label %bb.d
  ]

bb.e:                                             ; preds = %.lr.ph
  unreachable

._crit_edge:                                      ; preds = %bb.d, %.lr.ph, %bb.c
  %.sroa.4.0.i.ph.i = phi i64 [ %i.g, %bb.c ], [ %i.g, %bb.d ], [ %.sroa.8.0.i.i25, %.lr.ph ] ; 2 uses
  %i.n = icmp eq i64 %.sroa.3.0.i, 0
  br i1 %i.n, label %_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker5ImmutNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v48NodeModeNtNtB7_7set_val9SetValZSTNtB1h_14LeafOrInternalE11search_treeB1z_EB1H_.exit.thread, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 24
  %i.p = icmp samesign ult i64 %.sroa.4.0.i.ph.i, 12
  tail call void @llvm.assume(i1 %i.p)
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.4.0.i.ph.i
  %i.r = load ptr, ptr %i.q, align 8, !noalias !47, !nonnull !3, !noundef !3
  %i.s = add i64 %.sroa.3.0.i, -1
  br label %bb.c

_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker5ImmutNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v48NodeModeNtNtB7_7set_val9SetValZSTNtB1h_14LeafOrInternalE11search_treeB1z_EB1H_.exit.thread: ; preds = %._crit_edge, %_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker5ImmutNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v48NodeModeNtNtB7_7set_val9SetValZSTNtB1h_14LeafOrInternalE11search_treeB1z_EB1H_.exit, %bb.a
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %i.t, %_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker5ImmutNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v48NodeModeNtNtB7_7set_val9SetValZSTNtB1h_14LeafOrInternalE11search_treeB1z_EB1H_.exit ], [ null, %._crit_edge ]
  ret ptr %.sroa.0.0

_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker5ImmutNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v48NodeModeNtNtB7_7set_val9SetValZSTNtB1h_14LeafOrInternalE11search_treeB1z_EB1H_.exit: ; preds = %.lr.ph
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 23
  br label %_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker5ImmutNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v48NodeModeNtNtB7_7set_val9SetValZSTNtB1h_14LeafOrInternalE11search_treeB1z_EB1H_.exit.thread
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define hidden noundef ptr @_RINvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4node8NodeModeNtNtB8_7set_val9SetValZSTE3getB17_EB1j_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly captures(none) dereferenceable(1) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !3   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker5ImmutNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4node8NodeModeNtNtB7_7set_val9SetValZSTNtB1h_14LeafOrInternalE11search_treeB1z_EB1L_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !3
  %.val = load i8, ptr %1, align 1
  %2 = zext nneg i8 %.val to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  %.sroa.3.0.i = phi i64 [ %i.c, %bb.b ], [ %i.s, %bb.f ] ; 2 uses
  %.sroa.0.0.i = phi ptr [ %i.a, %bb.b ], [ %i.r, %bb.f ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 12 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 10
  %i.f = load i16, ptr %i.e, align 2, !noalias !50, !noundef !3 ; 2 uses
  %i.g = zext i16 %i.f to i64                     ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.g
  %i.i = icmp eq i16 %i.f, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i26, i64 1 ; 2 uses
  %i.k = add nuw nsw i64 %.sroa.8.0.i.i25, 1
  %i.l = icmp eq ptr %i.j, %i.h
  br i1 %i.l, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.sroa.0.03.i.i26 = phi ptr [ %i.j, %bb.d ], [ %i.d, %bb.c ] ; 2 uses
  %.sroa.8.0.i.i25 = phi i64 [ %i.k, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %.val6.i.i = load i8, ptr %.sroa.0.03.i.i26, align 1, !range !46, !noalias !50, !noundef !3
  %3 = zext nneg i8 %.val6.i.i to i64
  %i.m = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %2, i64 %3)
  switch i8 %i.m, label %bb.e [
    i8 -1, label %._crit_edge
    i8 0, label %_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker5ImmutNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4node8NodeModeNtNtB7_7set_val9SetValZSTNtB1h_14LeafOrInternalE11search_treeB1z_EB1L_.exit
    i8 1, label %bb.d
  ]

bb.e:                                             ; preds = %.lr.ph
  unreachable

._crit_edge:                                      ; preds = %bb.d, %.lr.ph, %bb.c
  %.sroa.4.0.i.ph.i = phi i64 [ %i.g, %bb.c ], [ %i.g, %bb.d ], [ %.sroa.8.0.i.i25, %.lr.ph ] ; 2 uses
  %i.n = icmp eq i64 %.sroa.3.0.i, 0
  br i1 %i.n, label %_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker5ImmutNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4node8NodeModeNtNtB7_7set_val9SetValZSTNtB1h_14LeafOrInternalE11search_treeB1z_EB1L_.exit.thread, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 24
  %i.p = icmp samesign ult i64 %.sroa.4.0.i.ph.i, 12
  tail call void @llvm.assume(i1 %i.p)
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.4.0.i.ph.i
  %i.r = load ptr, ptr %i.q, align 8, !noalias !50, !nonnull !3, !noundef !3
  %i.s = add i64 %.sroa.3.0.i, -1
  br label %bb.c

_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker5ImmutNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4node8NodeModeNtNtB7_7set_val9SetValZSTNtB1h_14LeafOrInternalE11search_treeB1z_EB1L_.exit.thread: ; preds = %._crit_edge, %_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker5ImmutNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4node8NodeModeNtNtB7_7set_val9SetValZSTNtB1h_14LeafOrInternalE11search_treeB1z_EB1L_.exit, %bb.a
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %i.t, %_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker5ImmutNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4node8NodeModeNtNtB7_7set_val9SetValZSTNtB1h_14LeafOrInternalE11search_treeB1z_EB1L_.exit ], [ null, %._crit_edge ]
  ret ptr %.sroa.0.0

_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker5ImmutNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4node8NodeModeNtNtB7_7set_val9SetValZSTNtB1h_14LeafOrInternalE11search_treeB1z_EB1L_.exit: ; preds = %.lr.ph
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 23
  br label %_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker5ImmutNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4node8NodeModeNtNtB7_7set_val9SetValZSTNtB1h_14LeafOrInternalE11search_treeB1z_EB1L_.exit.thread
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB6_8BTreeMapReINtNtBc_6borrow3CoweEE27bulk_build_from_sorted_iterINtNtBc_3vec3VecTB17_B19_EEECs844E4pPEVZX_17influxdb3_catalog(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [40 x i8], align 8                ; 7 uses
  %i.g = alloca [72 x i8], align 8                ; 10 uses
  %i.h = invoke noundef nonnull align 8 ptr @_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeReINtNtB6_6borrow3CoweEEE13new_uninit_inCs844E4pPEVZX_17influxdb3_catalog()
          to label %.loopexit60.i unwind label %bb.ac ; 4 uses

.loopexit60.i:                                    ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 176
  store ptr null, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 450
  store i16 0, ptr %i.j, align 2
  %.sroa.014.0.copyload = load i64, ptr %1, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.415.0.copyload = load ptr, ptr %.sroa.415.0..sroa_idx, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.516.0.copyload = load i64, ptr %.sroa.516.0..sroa_idx, align 8 ; 2 uses
  %i.k = icmp ult i64 %.sroa.516.0.copyload, 230584300921369396
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw [40 x i8], ptr %.sroa.415.0.copyload, i64 %.sroa.516.0.copyload
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !53
  %.sroa.3.0..sroa_idx69 = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 5 uses
  store i64 -3, ptr %.sroa.3.0..sroa_idx69, align 8, !noalias !58
  %.sroa.470.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 2 uses
  store ptr %.sroa.415.0.copyload, ptr %.sroa.470.0..sroa_idx, align 8, !noalias !58
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store ptr %.sroa.415.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !58
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  store i64 %.sroa.014.0.copyload, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !58
  %.sroa.7.0..sroa_idx71 = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  store ptr %i.l, ptr %.sroa.7.0..sroa_idx71, align 8, !noalias !58
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.loopexit.i, %.loopexit60.i
  %.sroa.011.0 = phi i64 [ 0, %.loopexit60.i ], [ %i.hc, %.loopexit.i ] ; 2 uses
  %.sroa.8.0 = phi i64 [ 0, %.loopexit60.i ], [ %.sroa.8.2, %.loopexit.i ] ; 6 uses
  %.sroa.0.0 = phi ptr [ %i.h, %.loopexit60.i ], [ %.sroa.0.2, %.loopexit.i ] ; 8 uses
  %.sroa.0.054.i = phi ptr [ %i.h, %.loopexit60.i ], [ %.sroa.0.1.i, %.loopexit.i ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !53
  invoke void @_RNvXs_NtNtNtCscdodAO9FK5_5alloc11collections5btree17dedup_sorted_iterINtB4_15DedupSortedIterReINtNtBa_6borrow3CoweEINtNtNtBa_3vec9into_iter8IntoIterTB1s_B1u_EEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.g)
          to label %bb.d unwind label %bb.c, !noalias !53

.body19.i:                                        ; preds = %bb.z, %bb.v, %bb.c
  %.pn.i = phi { ptr, i32 } [ %i.hr, %bb.z ], [ %i.o, %bb.c ], [ %i.dy, %bb.v ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree17dedup_sorted_iter15DedupSortedIterReINtNtBK_6borrow3CoweEINtNtNtBK_3vec9into_iter8IntoIterTB1W_B1Y_EEEECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef align 8 dereferenceable(72) %i.g) #26
          to label %.thread unwind label %bb.aa, !noalias !53

bb.c:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body19.i

bb.d:                                             ; preds = %bb.b
  %i.p = load i64, ptr %i.m, align 8, !range !59, !noalias !53, !noundef !3
  %.not.i = icmp eq i64 %i.p, -2
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.f, align 8, !noalias !53, !nonnull !3, !noundef !3 ; 2 uses
  %i.r = load i64, ptr %i.n, align 8, !noalias !53, !noundef !3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !53
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !noalias !53
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.054.i, i64 450 ; 2 uses
  %i.t = load i16, ptr %i.s, align 2, !noalias !53, !noundef !3 ; 3 uses
  %i.u = icmp ult i16 %i.t, 11
  br i1 %i.u, label %bb.y, label %.preheader.i

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !53
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTReINtNtB9_6borrow3CoweEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(32) %.sroa.470.0..sroa_idx)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTReINtNtBI_6borrow3CoweEEEECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i unwind label %bb.g, !noalias !53

bb.g:                                             ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_TReINtNtCscdodAO9FK5_5alloc6borrow3CoweEEEEECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.g) #26
          to label %.thread unwind label %bb.k, !noalias !53

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTReINtNtBI_6borrow3CoweEEEECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i: ; preds = %bb.f
  %i.w = load i64, ptr %.sroa.3.0..sroa_idx69, align 8, !range !60, !alias.scope !61, !noalias !53, !noundef !3
  %i.x = icmp ugt i64 %i.w, -4
  br i1 %i.x, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree17dedup_sorted_iter15DedupSortedIterReINtNtBK_6borrow3CoweEINtNtNtBK_3vec9into_iter8IntoIterTB1W_B1Y_EEEECs844E4pPEVZX_17influxdb3_catalog.exit.i, label %bb.h

bb.h:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTReINtNtBI_6borrow3CoweEEEECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.3.0..sroa_idx69)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i.i.i.i.i unwind label %bb.i, !noalias !53

bb.i:                                             ; preds = %bb.h
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.3.0..sroa_idx69)
          to label %.thread unwind label %bb.j, !noalias !53

bb.j:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25, !noalias !53
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i.i.i.i.i: ; preds = %bb.h
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.3.0..sroa_idx69)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree17dedup_sorted_iter15DedupSortedIterReINtNtBK_6borrow3CoweEINtNtNtBK_3vec9into_iter8IntoIterTB1W_B1Y_EEEECs844E4pPEVZX_17influxdb3_catalog.exit.i

bb.k:                                             ; preds = %bb.g
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25, !noalias !53
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree17dedup_sorted_iter15DedupSortedIterReINtNtBK_6borrow3CoweEINtNtNtBK_3vec9into_iter8IntoIterTB1W_B1Y_EEEECs844E4pPEVZX_17influxdb3_catalog.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i.i.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTReINtNtBI_6borrow3CoweEEEECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !53
  %i.ab = icmp eq i64 %.sroa.8.0, 0
  br i1 %i.ab, label %_RINvMNtNtNtCscdodAO9FK5_5alloc11collections5btree6appendINtNtB5_4node7NodeRefNtNtBV_6marker5OwnedReINtNtB9_6borrow3CoweENtB1f_14LeafOrInternalE9bulk_pushINtNtB5_17dedup_sorted_iter15DedupSortedIterB1x_B1z_INtNtNtB9_3vec9into_iter8IntoIterTB1x_B1z_EEENtNtB9_5alloc6GlobalECs844E4pPEVZX_17influxdb3_catalog.exit, label %.lr.ph.i16.i

.lr.ph.i16.i:                                     ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree17dedup_sorted_iter15DedupSortedIterReINtNtBK_6borrow3CoweEINtNtNtBK_3vec9into_iter8IntoIterTB1W_B1Y_EEEECs844E4pPEVZX_17influxdb3_catalog.exit.i, %_RNvMs10_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_16BalancingContextReINtNtBc_6borrow3CoweEE15bulk_steal_leftCs844E4pPEVZX_17influxdb3_catalog.exit.i.i
  %.sroa.01.010.i.i = phi i64 [ %i.aj, %_RNvMs10_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_16BalancingContextReINtNtBc_6borrow3CoweEE15bulk_steal_leftCs844E4pPEVZX_17influxdb3_catalog.exit.i.i ], [ %.sroa.8.0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree17dedup_sorted_iter15DedupSortedIterReINtNtBK_6borrow3CoweEINtNtNtBK_3vec9into_iter8IntoIterTB1W_B1Y_EEEECs844E4pPEVZX_17influxdb3_catalog.exit.i ]
  %.sroa.03.09.i.i = phi ptr [ %i.am, %_RNvMs10_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_16BalancingContextReINtNtBc_6borrow3CoweEE15bulk_steal_leftCs844E4pPEVZX_17influxdb3_catalog.exit.i.i ], [ %.sroa.0.0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree17dedup_sorted_iter15DedupSortedIterReINtNtBK_6borrow3CoweEINtNtNtBK_3vec9into_iter8IntoIterTB1W_B1Y_EEEECs844E4pPEVZX_17influxdb3_catalog.exit.i ] ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i.i, i64 450
  %i.ad = load i16, ptr %i.ac, align 2, !noalias !53, !noundef !3 ; 3 uses
  %.not.i.i = icmp eq i16 %i.ad, 0
  br i1 %.not.i.i, label %.noexc17.i, label %bb.l, !prof !68

.noexc17.i:                                       ; preds = %.lr.ph.i16.i
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @103, i64 noundef 25, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @104) #27
  unreachable

bb.l:                                             ; preds = %.lr.ph.i16.i
  %i.ae = zext nneg i16 %i.ad to i64
  %i.af = add nsw i64 %i.ae, -1                   ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i.i, i64 456
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.af ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !69, !nonnull !3, !noundef !3 ; 5 uses
  %i.aj = add i64 %.sroa.01.010.i.i, -1           ; 3 uses
  %i.ak = icmp ult i16 %i.ad, 12
  call void @llvm.assume(i1 %i.ak)
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !noalias !69, !nonnull !3, !noundef !3 ; 19 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 450 ; 2 uses
  %i.ao = load i16, ptr %i.an, align 2, !noalias !53, !noundef !3 ; 3 uses
  %i.ap = icmp ult i16 %i.ao, 5
  br i1 %i.ap, label %bb.m, label %_RNvMs10_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_16BalancingContextReINtNtBc_6borrow3CoweEE15bulk_steal_leftCs844E4pPEVZX_17influxdb3_catalog.exit.i.i

_RNvMs10_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_16BalancingContextReINtNtBc_6borrow3CoweEE15bulk_steal_leftCs844E4pPEVZX_17influxdb3_catalog.exit.i.i: ; preds = %_RNvMs10_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_16BalancingContextReINtNtBc_6borrow3CoweEE15bulk_steal_leftCs844E4pPEVZX_17influxdb3_catalog.exit.loopexit.i.i, %bb.l
  %i.aq = icmp eq i64 %i.aj, 0
  br i1 %i.aq, label %_RINvMNtNtNtCscdodAO9FK5_5alloc11collections5btree6appendINtNtB5_4node7NodeRefNtNtBV_6marker5OwnedReINtNtB9_6borrow3CoweENtB1f_14LeafOrInternalE9bulk_pushINtNtB5_17dedup_sorted_iter15DedupSortedIterB1x_B1z_INtNtNtB9_3vec9into_iter8IntoIterTB1x_B1z_EEENtNtB9_5alloc6GlobalECs844E4pPEVZX_17influxdb3_catalog.exit, label %.lr.ph.i16.i

bb.m:                                             ; preds = %bb.l
  %narrow.i.i = sub nuw nsw i16 5, %i.ao          ; 2 uses
  %i.ar = zext nneg i16 %narrow.i.i to i64        ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 450 ; 2 uses
  %i.at = load i16, ptr %i.as, align 2, !noalias !73, !noundef !3 ; 2 uses
  %i.au = zext nneg i16 %i.ao to i64              ; 3 uses
  %.not.i.i.i = icmp ugt i16 %narrow.i.i, %i.at
  br i1 %.not.i.i.i, label %.noexc18.i, label %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node13move_to_sliceINtNtB8_6borrow3CoweEECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i, !prof !68

.noexc18.i:                                       ; preds = %bb.m
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @105, i64 noundef 39, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106) #27
  unreachable

_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node13move_to_sliceINtNtB8_6borrow3CoweEECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i: ; preds = %bb.m
end_hunk_0
begin_hunk_1_@_RNvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format9record_id8RecordIdRNtNtB1a_8registry16RegisteredRecordE6insertB1c_:bb.a
.lr.ph.i.i13.i.i.i.preheader:                     ; preds = %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node12slice_insertINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format9record_id8RecordIdRNtNtB27_8registry16RegisteredRecordEEEB29_.exit.i12.i.i.i
  %i.ht = add nuw nsw i64 %i.gx, 1
  %i.hu = sub nsw i64 %i.ht, %.sroa.5.0.i.i.i
  %i.hv = sub nsw i64 %i.gx, %.sroa.5.0.i.i.i
  %xtraiter = and i64 %i.hu, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i13.i.i.i.prol.loopexit, label %.lr.ph.i.i13.i.i.i.prol

.lr.ph.i.i13.i.i.i.prol:                          ; preds = %.lr.ph.i.i13.i.i.i.preheader, %.lr.ph.i.i13.i.i.i.prol
  %.sroa.0.06.i.i14.i.i.i.prol = phi i64 [ %i.hw, %.lr.ph.i.i13.i.i.i.prol ], [ %i.ha, %.lr.ph.i.i13.i.i.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i13.i.i.i.prol ], [ 0, %.lr.ph.i.i13.i.i.i.preheader ]
  %i.hw = add nuw nsw i64 %.sroa.0.06.i.i14.i.i.i.prol, 1 ; 2 uses
  %i.hx = icmp samesign ult i64 %.sroa.0.06.i.i14.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.hx)
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %.sroa.0.06.i.i14.i.i.i.prol
  %i.hz = load ptr, ptr %i.hy, align 8, !noalias !3281, !nonnull !3, !noundef !3 ; 2 uses
  store ptr %spec.select.i46.i.i, ptr %i.hz, align 8, !noalias !3281
  %i.ia = trunc nuw nsw i64 %.sroa.0.06.i.i14.i.i.i.prol to i16
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hz, i64 96
  store i16 %i.ia, ptr %i.ib, align 8, !noalias !3281
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i13.i.i.i.prol.loopexit, label %.lr.ph.i.i13.i.i.i.prol, !llvm.loop !3282

.lr.ph.i.i13.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i13.i.i.i.prol, %.lr.ph.i.i13.i.i.i.preheader
  %.sroa.0.06.i.i14.i.i.i.unr = phi i64 [ %i.ha, %.lr.ph.i.i13.i.i.i.preheader ], [ %i.hw, %.lr.ph.i.i13.i.i.i.prol ]
  %i.ic = icmp ult i64 %i.hv, 3
  br i1 %i.ic, label %_RINvMsM_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format9record_id8RecordIdRNtNtB1G_8registry16RegisteredRecordNtB1m_8InternalENtB1m_4EdgeE6insertNtNtBc_5alloc6GlobalEB1I_.exit.i.i, label %.lr.ph.i.i13.i.i.i

.lr.ph.i.i13.i.i.i:                               ; preds = %.lr.ph.i.i13.i.i.i.prol.loopexit, %.lr.ph.i.i13.i.i.i
  %.sroa.0.06.i.i14.i.i.i = phi i64 [ %i.is, %.lr.ph.i.i13.i.i.i ], [ %.sroa.0.06.i.i14.i.i.i.unr, %.lr.ph.i.i13.i.i.i.prol.loopexit ] ; 7 uses
  %i.id = add nuw nsw i64 %.sroa.0.06.i.i14.i.i.i, 1 ; 2 uses
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %.sroa.0.06.i.i14.i.i.i
  %i.if = load ptr, ptr %i.ie, align 8, !noalias !3281, !nonnull !3, !noundef !3 ; 2 uses
  store ptr %spec.select.i46.i.i, ptr %i.if, align 8, !noalias !3281
  %i.ig = trunc nuw nsw i64 %.sroa.0.06.i.i14.i.i.i to i16
  %i.ih = getelementptr inbounds nuw i8, ptr %i.if, i64 96
  store i16 %i.ig, ptr %i.ih, align 8, !noalias !3281
  %i.ii = add nuw nsw i64 %.sroa.0.06.i.i14.i.i.i, 2 ; 2 uses
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %i.id
  %i.ik = load ptr, ptr %i.ij, align 8, !noalias !3281, !nonnull !3, !noundef !3 ; 2 uses
  store ptr %spec.select.i46.i.i, ptr %i.ik, align 8, !noalias !3281
  %i.il = trunc nuw nsw i64 %i.id to i16
  %i.im = getelementptr inbounds nuw i8, ptr %i.ik, i64 96
  store i16 %i.il, ptr %i.im, align 8, !noalias !3281
  %i.in = add nuw nsw i64 %.sroa.0.06.i.i14.i.i.i, 3 ; 2 uses
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %i.ii
  %i.ip = load ptr, ptr %i.io, align 8, !noalias !3281, !nonnull !3, !noundef !3 ; 2 uses
  store ptr %spec.select.i46.i.i, ptr %i.ip, align 8, !noalias !3281
  %i.iq = trunc nuw nsw i64 %i.ii to i16
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ip, i64 96
  store i16 %i.iq, ptr %i.ir, align 8, !noalias !3281
  %i.is = add nuw nsw i64 %.sroa.0.06.i.i14.i.i.i, 4 ; 2 uses
  %i.it = icmp ult i64 %.sroa.0.06.i.i14.i.i.i, 9
  tail call void @llvm.assume(i1 %i.it)
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %i.in
  %i.iv = load ptr, ptr %i.iu, align 8, !noalias !3281, !nonnull !3, !noundef !3 ; 2 uses
  store ptr %spec.select.i46.i.i, ptr %i.iv, align 8, !noalias !3281
  %i.iw = trunc nuw nsw i64 %i.in to i16
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iv, i64 96
  store i16 %i.iw, ptr %i.ix, align 8, !noalias !3281
  %exitcond.not.i.i15.i.i.i.3 = icmp eq i64 %i.is, %i.hq
  br i1 %exitcond.not.i.i15.i.i.i.3, label %_RINvMsM_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format9record_id8RecordIdRNtNtB1G_8registry16RegisteredRecordNtB1m_8InternalENtB1m_4EdgeE6insertNtNtBc_5alloc6GlobalEB1I_.exit.i.i, label %.lr.ph.i.i13.i.i.i

_RINvMsM_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format9record_id8RecordIdRNtNtB1G_8registry16RegisteredRecordNtB1m_8InternalENtB1m_4EdgeE6insertNtNtBc_5alloc6GlobalEB1I_.exit.i.i: ; preds = %.lr.ph.i.i13.i.i.i.prol.loopexit, %.lr.ph.i.i13.i.i.i, %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node12slice_insertINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format9record_id8RecordIdRNtNtB27_8registry16RegisteredRecordEEEB29_.exit.i12.i.i.i
  %i.iy = load ptr, ptr %i.ct, align 8, !noalias !3197, !noundef !3 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.iy, null
  br i1 %.not.i.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.thread:                                          ; preds = %bb.a
  %i.iz = tail call noundef nonnull align 8 ptr @_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format9record_id8RecordIdRNtNtB1s_8registry16RegisteredRecordEE13new_uninit_inB1u_(), !noalias !3283 ; 5 uses
  store ptr null, ptr %i.iz, align 8, !noalias !3283
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 98
  store ptr %i.iz, ptr %0, align 8, !noalias !3283
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.jb, align 8, !noalias !3283
  store i16 1, ptr %i.ja, align 2, !noalias !3284
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iz, i64 100
  store i16 %1, ptr %i.jc, align 4, !noalias !3284
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  store ptr %2, ptr %i.jd, align 8, !noalias !3284
  br label %_RNvMs4_NtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format9record_id8RecordIdRNtNtB1m_8registry16RegisteredRecordE12insert_entryB1o_.exit

_RNvMs4_NtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format9record_id8RecordIdRNtNtB1m_8registry16RegisteredRecordE12insert_entryB1o_.exit: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %bb.s, %_RNCNvMs4_NtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map5entryINtB7_11VacantEntryNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format9record_id8RecordIdRNtNtB1o_8registry16RegisteredRecordE12insert_entry0B1q_.exit.i.i, %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node12slice_insertINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format9record_id8RecordIdRNtNtB27_8registry16RegisteredRecordEEEB29_.exit.i.i.i.i, %.thread
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.jf = load i64, ptr %i.je, align 8, !noalias !3283, !noundef !3
  %i.jg = add i64 %i.jf, 1
  store i64 %i.jg, ptr %i.je, align 8, !noalias !3283
  br label %bb.at

bb.at:                                            ; preds = %_RNvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format9record_id8RecordIdRNtNtB1a_8registry16RegisteredRecordE5entryB1c_.exit, %_RNvMs4_NtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format9record_id8RecordIdRNtNtB1m_8registry16RegisteredRecordE12insert_entryB1o_.exit
  %.sroa.0.0 = phi ptr [ %i.v, %_RNvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format9record_id8RecordIdRNtNtB1a_8registry16RegisteredRecordE5entryB1c_.exit ], [ null, %_RNvMs4_NtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format9record_id8RecordIdRNtNtB1m_8registry16RegisteredRecordE12insert_entryB1o_.exit ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format9record_id8RecordIdyE5entryB1c_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i16 noundef %2) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !noundef !3   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !3
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  %.sroa.3.0.i = phi i64 [ %i.c, %bb.b ], [ %i.s, %bb.f ] ; 3 uses
  %.sroa.0.0.i = phi ptr [ %i.a, %bb.b ], [ %i.r, %bb.f ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 100 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 98
  %i.f = load i16, ptr %i.e, align 2, !noalias !3288, !noundef !3 ; 2 uses
  %i.g = zext i16 %i.f to i64                     ; 3 uses
  %.idx = shl nuw nsw i64 %i.g, 1
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %i.i = icmp eq i16 %i.f, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i56, i64 2 ; 2 uses
  %i.k = add nuw nsw i64 %.sroa.8.0.i.i55, 1
  %i.l = icmp eq ptr %i.j, %i.h
  br i1 %i.l, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.sroa.0.03.i.i56 = phi ptr [ %i.j, %bb.d ], [ %i.d, %bb.c ] ; 2 uses
  %.sroa.8.0.i.i55 = phi i64 [ %i.k, %bb.d ], [ 0, %bb.c ] ; 3 uses
  %.val6.i.i = load i16, ptr %.sroa.0.03.i.i56, align 2, !noalias !3288, !noundef !3
  %i.m = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i16(i16 %2, i16 %.val6.i.i)
  switch i8 %i.m, label %bb.e [
    i8 -1, label %._crit_edge
    i8 0, label %_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker3MutNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format9record_id8RecordIdyNtB1h_14LeafOrInternalE11search_treeB1x_EB1D_.exit
    i8 1, label %bb.d
  ]

bb.e:                                             ; preds = %.lr.ph
  unreachable

._crit_edge:                                      ; preds = %bb.d, %.lr.ph, %bb.c
  %.sroa.4.0.i.ph.i = phi i64 [ %i.g, %bb.c ], [ %i.g, %bb.d ], [ %.sroa.8.0.i.i55, %.lr.ph ] ; 3 uses
  %i.n = icmp eq i64 %.sroa.3.0.i, 0
  br i1 %i.n, label %bb.h, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 128
  %i.p = icmp samesign ult i64 %.sroa.4.0.i.ph.i, 12
  tail call void @llvm.assume(i1 %i.p)
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.4.0.i.ph.i
  %i.r = load ptr, ptr %i.q, align 8, !noalias !3288, !nonnull !3, !noundef !3
  %i.s = add i64 %.sroa.3.0.i, -1
  br label %bb.c

bb.g:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i16 %2, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge
  store ptr %1, ptr %0, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.i, ptr %.sroa.46.0..sroa_idx, align 8
  %.sroa.46.sroa.4.0..sroa.46.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.46.sroa.4.0..sroa.46.0..sroa_idx.sroa_idx, align 8
  %.sroa.46.sroa.5.0..sroa.46.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.4.0.i.ph.i, ptr %.sroa.46.sroa.5.0..sroa.46.0..sroa_idx.sroa_idx, align 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i16 %2, ptr %.sroa.57.0..sroa_idx, align 8
  br label %bb.i

_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker3MutNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format9record_id8RecordIdyNtB1h_14LeafOrInternalE11search_treeB1x_EB1D_.exit: ; preds = %.lr.ph
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.i, ptr %i.t, align 8
  %.sroa.03.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.3.0.i, ptr %.sroa.03.sroa.4.0..sroa_idx, align 8
  %.sroa.03.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.8.0.i.i55, ptr %.sroa.03.sroa.5.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %1, ptr %.sroa.4.0..sroa_idx4, align 8
  store ptr null, ptr %0, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker3MutNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format9record_id8RecordIdyNtB1h_14LeafOrInternalE11search_treeB1x_EB1D_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v38NodeModeNtNtB7_7set_val9SetValZSTE6insertB1e_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i8 noundef range(i8 0, 6) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3291)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !3291, !noalias !3294, !noundef !3 ; 5 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !3291, !noalias !3294, !noundef !3 ; 3 uses
  %2 = zext nneg i8 %1 to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  %.sroa.3.0.i.i = phi i64 [ %i.c, %bb.b ], [ %i.s, %bb.f ] ; 2 uses
  %.sroa.0.0.i.i = phi ptr [ %i.a, %bb.b ], [ %i.r, %bb.f ] ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 12 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 10
  %i.f = load i16, ptr %i.e, align 2, !noalias !3296, !noundef !3 ; 4 uses
  %i.g = zext i16 %i.f to i64                     ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.g
  %i.i = icmp eq i16 %i.f, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i293, i64 1 ; 2 uses
  %i.k = add nuw nsw i64 %.sroa.8.0.i.i.i292, 1
  %i.l = icmp eq ptr %i.j, %i.h
  br i1 %i.l, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.sroa.0.03.i.i.i293 = phi ptr [ %i.j, %bb.d ], [ %i.d, %bb.c ] ; 2 uses
  %.sroa.8.0.i.i.i292 = phi i64 [ %i.k, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %.val6.i.i.i = load i8, ptr %.sroa.0.03.i.i.i293, align 1, !range !46, !noalias !3296, !noundef !3
  %3 = zext nneg i8 %.val6.i.i.i to i64
  %i.m = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %2, i64 %3)
  switch i8 %i.m, label %bb.e [
    i8 -1, label %._crit_edge
    i8 0, label %.loopexit
    i8 1, label %bb.d
  ]

bb.e:                                             ; preds = %.lr.ph
  unreachable

._crit_edge:                                      ; preds = %bb.d, %.lr.ph, %bb.c
  %.sroa.4.0.i.ph.i.i = phi i64 [ %i.g, %bb.c ], [ %i.g, %bb.d ], [ %.sroa.8.0.i.i.i292, %.lr.ph ] ; 12 uses
  %i.n = icmp eq i64 %.sroa.3.0.i.i, 0
  br i1 %i.n, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 24
  %i.p = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i, 12
  tail call void @llvm.assume(i1 %i.p)
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.4.0.i.ph.i.i
  %i.r = load ptr, ptr %i.q, align 8, !noalias !3296, !nonnull !3, !noundef !3
  %i.s = add i64 %.sroa.3.0.i.i, -1
  br label %bb.c

bb.g:                                             ; preds = %._crit_edge
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 10 ; 3 uses
  %i.u = icmp ult i16 %i.f, 11
  br i1 %i.u, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i, 5
  br i1 %i.v, label %bb.n, label %bb.k

bb.i:                                             ; preds = %bb.g
  %.not.i.i.i.i.not = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i, %i.g
  br i1 %.not.i.i.i.i.not, label %bb.j, label %bb.s

bb.j:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.4.0.i.ph.i.i ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %i.y = sub nuw nsw i64 %i.g, %.sroa.4.0.i.ph.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.x, ptr nonnull align 1 %i.w, i64 %i.y, i1 false), !alias.scope !3299, !noalias !3302
  br label %bb.s

bb.k:                                             ; preds = %bb.h
  switch i64 %.sroa.4.0.i.ph.i.i, label %bb.l [
    i64 5, label %bb.n
    i64 6, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  %i.z = add nsw i64 %.sroa.4.0.i.ph.i.i, -7
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.h
  %.sroa.09.0.i.i.i = phi i1 [ true, %bb.m ], [ true, %bb.l ], [ false, %bb.h ], [ false, %bb.k ]
  %.sroa.510.0.i.i.i = phi i64 [ 0, %bb.m ], [ %i.z, %bb.l ], [ %.sroa.4.0.i.ph.i.i, %bb.h ], [ %.sroa.4.0.i.ph.i.i, %bb.k ] ; 4 uses
  %.sroa.013.0.i.i.i = phi i64 [ 5, %bb.m ], [ 6, %bb.l ], [ 4, %bb.h ], [ %.sroa.4.0.i.ph.i.i, %bb.k ] ; 3 uses
  %i.aa = tail call noundef nonnull align 8 ptr @_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v38NodeModeNtNtBK_7set_val9SetValZSTEE13new_uninit_inB1w_(), !noalias !3315 ; 7 uses
  store ptr null, ptr %i.aa, align 8, !noalias !3315
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 10 ; 2 uses
  store i16 0, ptr %i.ab, align 2, !noalias !3315
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3319)
  %i.ac = load i16, ptr %i.t, align 2, !noalias !3322, !noundef !3
  %i.ad = zext i16 %i.ac to i64
  %i.ae = xor i64 %.sroa.013.0.i.i.i, -1
  %i.af = add nsw i64 %i.ad, %i.ae                ; 4 uses
  %i.ag = trunc i64 %i.af to i16
  store i16 %i.ag, ptr %i.ab, align 2, !alias.scope !3319, !noalias !3315
  %i.ah = icmp ult i64 %i.af, 12
  br i1 %i.ah, label %_RINvMsV_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v38NodeModeNtNtB8_7set_val9SetValZSTNtB1m_4LeafENtB1m_2KVE5splitNtNtBc_5alloc6GlobalEB1K_.exit.i.i.i, label %bb.o, !prof !1723

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.af, i64 noundef 11, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @107) #27
          to label %.noexc.i.i.i.i unwind label %bb.p, !noalias !3315

.noexc.i.i.i.i:                                   ; preds = %bb.o
  unreachable

common.resume.i.i:                                ; preds = %bb.ar, %bb.p
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.ai, %bb.p ], [ %.pn.i.i.i.i, %bb.ar ]
  resume { ptr, i32 } %common.resume.op.i.i

bb.p:                                             ; preds = %bb.o
  %i.ai = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aa, i64 noundef 24, i64 noundef 8) #28, !noalias !3315
  br label %common.resume.i.i

_RINvMsV_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v38NodeModeNtNtB8_7set_val9SetValZSTNtB1m_4LeafENtB1m_2KVE5splitNtNtBc_5alloc6GlobalEB1K_.exit.i.i.i: ; preds = %bb.n
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.013.0.i.i.i ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !range !46, !noalias !3322, !noundef !3 ; 2 uses
  %i.al = getelementptr i8, ptr %i.aj, i64 1
  %i.am = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.am, ptr nonnull readonly align 1 %i.al, i64 range(i64 0, 65536) %i.af, i1 false), !alias.scope !3323, !noalias !3315
  %i.an = trunc nuw nsw i64 %.sroa.013.0.i.i.i to i16
  store i16 %i.an, ptr %i.t, align 2, !noalias !3322
  %spec.select39.i.i.i = select i1 %.sroa.09.0.i.i.i, ptr %i.aa, ptr %.sroa.0.0.i.i ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %spec.select39.i.i.i, i64 10 ; 2 uses
  %i.ap = load i16, ptr %i.ao, align 2, !noalias !3327, !noundef !3 ; 2 uses
  %i.aq = zext i16 %i.ap to i64                   ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %spec.select39.i.i.i, i64 12 ; 2 uses
  %.not.i16.not.i.i.i = icmp ult i64 %.sroa.510.0.i.i.i, %i.aq
  br i1 %.not.i16.not.i.i.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_RINvMsV_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v38NodeModeNtNtB8_7set_val9SetValZSTNtB1m_4LeafENtB1m_2KVE5splitNtNtBc_5alloc6GlobalEB1K_.exit.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sroa.510.0.i.i.i ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  %i.au = sub nuw nsw i64 %i.aq, %.sroa.510.0.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.at, ptr nonnull align 1 %i.as, i64 %i.au, i1 false), !alias.scope !3331, !noalias !3327
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_RINvMsV_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v38NodeModeNtNtB8_7set_val9SetValZSTNtB1m_4LeafENtB1m_2KVE5splitNtNtBc_5alloc6GlobalEB1K_.exit.i.i.i
  %i.av = add i16 %i.ap, 1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sroa.510.0.i.i.i
  store i8 %1, ptr %i.aw, align 1, !alias.scope !3331, !noalias !3327
  store i16 %i.av, ptr %i.ao, align 2, !noalias !3327
  %i.ax = load ptr, ptr %.sroa.0.0.i.i, align 8, !noalias !3334, !noundef !3 ; 2 uses
  %.not.i85.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i85.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.s:                                             ; preds = %bb.j, %bb.i
  %i.ay = add nuw nsw i16 %i.f, 1
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.4.0.i.ph.i.i
  store i8 %1, ptr %i.az, align 1, !alias.scope !3299, !noalias !3302
  store i16 %i.ay, ptr %i.t, align 2, !noalias !3302
  br label %_RNvMs4_NtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v38NodeModeNtNtB9_7set_val9SetValZSTE12insert_entryB1q_.exit

._crit_edge.i.i:                                  ; preds = %_RINvMsM_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v38NodeModeNtNtB8_7set_val9SetValZSTNtB1m_8InternalENtB1m_4EdgeE6insertNtNtBc_5alloc6GlobalEB1K_.exit.i.i, %bb.r
  %.sroa.11.0.lcssa.i.i = phi i8 [ %i.ak, %bb.r ], [ %i.ei, %_RINvMsM_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v38NodeModeNtNtB8_7set_val9SetValZSTNtB1m_8InternalENtB1m_4EdgeE6insertNtNtBc_5alloc6GlobalEB1K_.exit.i.i ]
  %.sroa.9.0.lcssa.i.i = phi i64 [ 0, %bb.r ], [ %i.bt, %_RINvMsM_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v38NodeModeNtNtB8_7set_val9SetValZSTNtB1m_8InternalENtB1m_4EdgeE6insertNtNtBc_5alloc6GlobalEB1K_.exit.i.i ]
  %.sroa.7.0.lcssa.i.i = phi ptr [ %i.aa, %bb.r ], [ %i.dx, %_RINvMsM_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v38NodeModeNtNtB8_7set_val9SetValZSTNtB1m_8InternalENtB1m_4EdgeE6insertNtNtBc_5alloc6GlobalEB1K_.exit.i.i ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3337)
  %i.ba = invoke noundef nonnull align 8 ptr @_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v38NodeModeNtNtBK_7set_val9SetValZSTEE13new_uninit_inB1B_()
          to label %.noexc.i.i38.i.i unwind label %bb.w, !noalias !3340 ; 8 uses

.noexc.i.i38.i.i:                                 ; preds = %._crit_edge.i.i
  store ptr null, ptr %i.ba, align 8, !noalias !3340
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 10 ; 3 uses
  store i16 0, ptr %i.bb, align 2, !noalias !3340
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 24 ; 2 uses
  store ptr %i.a, ptr %i.bc, align 8, !noalias !3340
  %i.bd = add i64 %i.c, 1                         ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.bd, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.t, label %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtBZ_6marker5OwnedNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v38NodeModeNtNtB4_7set_val9SetValZSTNtB1j_14LeafOrInternalEuNCINvB2_8take_mutBW_NCINvMss_BZ_BW_19push_internal_levelNtNtB8_5alloc6GlobalE0E0EB1J_.exit.i.i.i, !prof !68

bb.t:                                             ; preds = %.noexc.i.i38.i.i
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84) #27
          to label %bb.u unwind label %bb.v, !noalias !3340

bb.u:                                             ; preds = %bb.t
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ba, i64 noundef 120, i64 noundef 8) #28, !noalias !3340
  br label %.body.i.i.i.i

bb.w:                                             ; preds = %._crit_edge.i.i
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.w, %bb.v
  tail call void @llvm.trap()
  unreachable

_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtBZ_6marker5OwnedNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v38NodeModeNtNtB4_7set_val9SetValZSTNtB1j_14LeafOrInternalEuNCINvB2_8take_mutBW_NCINvMss_BZ_BW_19push_internal_levelNtNtB8_5alloc6GlobalE0E0EB1J_.exit.i.i.i: ; preds = %.noexc.i.i38.i.i
  store ptr %i.ba, ptr %i.a, align 8, !noalias !3343
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i16 0, ptr %i.bg, align 8, !noalias !3348
  store ptr %i.ba, ptr %0, align 8, !alias.scope !3337, !noalias !3349
  store i64 %i.bd, ptr %i.b, align 8, !alias.scope !3337, !noalias !3349
  %i.bh = icmp eq i64 %.sroa.9.0.lcssa.i.i, %i.c
  br i1 %i.bh, label %bb.y, label %bb.x, !prof !119

bb.x:                                             ; preds = %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtBZ_6marker5OwnedNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v38NodeModeNtNtB4_7set_val9SetValZSTNtB1j_14LeafOrInternalEuNCINvB2_8take_mutBW_NCINvMss_BZ_BW_19push_internal_levelNtNtB8_5alloc6GlobalE0E0EB1J_.exit.i.i.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @110, i64 noundef 48, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @111) #27, !noalias !3349
  unreachable

bb.y:                                             ; preds = %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtBZ_6marker5OwnedNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v38NodeModeNtNtB4_7set_val9SetValZSTNtB1j_14LeafOrInternalEuNCINvB2_8take_mutBW_NCINvMss_BZ_BW_19push_internal_levelNtNtB8_5alloc6GlobalE0E0EB1J_.exit.i.i.i
  %i.bi = load i16, ptr %i.bb, align 2, !noalias !3349, !noundef !3 ; 3 uses
  %i.bj = icmp ult i16 %i.bi, 11
  br i1 %i.bj, label %_RNCNvMs4_NtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map5entryINtB7_11VacantEntryNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v38NodeModeNtNtBb_7set_val9SetValZSTE12insert_entry0B1s_.exit.i.i, label %bb.z, !prof !119

bb.z:                                             ; preds = %bb.y
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @108, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @112) #27, !noalias !3349
  unreachable

_RNCNvMs4_NtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map5entryINtB7_11VacantEntryNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v38NodeModeNtNtBb_7set_val9SetValZSTE12insert_entry0B1s_.exit.i.i: ; preds = %bb.y
  %i.bk = zext nneg i16 %i.bi to i64              ; 2 uses
  %i.bl = add nuw nsw i16 %i.bi, 1
  store i16 %i.bl, ptr %i.bb, align 2, !noalias !3349
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bk
  store i8 %.sroa.11.0.lcssa.i.i, ptr %i.bn, align 1, !noalias !3349
  %i.bo = add nuw nsw i64 %i.bk, 1                ; 2 uses
end_hunk_1
begin_hunk_2_@_RNvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v38NodeModeNtNtB7_7set_val9SetValZSTE6insertB1e_:bb.a
  %i.ep = icmp ult i16 %i.em, 12
  br i1 %i.ep, label %bb.ak, label %bb.am, !prof !1723

bb.ak:                                            ; preds = %bb.aj
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dx, i64 24 ; 2 uses
  %i.er = zext i16 %i.by to i64
  %i.es = sub nuw nsw i64 %i.er, %.sroa.06.0.i.i.i
  %i.et = icmp eq i64 %i.es, %i.eo
  br i1 %i.et, label %bb.ao, label %bb.al, !prof !119

bb.al:                                            ; preds = %bb.ak
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @94, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @95) #27
          to label %.noexc7.i.i.i.i unwind label %bb.an, !noalias !3364

.noexc7.i.i.i.i:                                  ; preds = %bb.al
  unreachable

bb.am:                                            ; preds = %bb.aj
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.eo, i64 noundef 12, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @87) #27
          to label %bb.aq unwind label %bb.an, !noalias !3364

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.ao:                                            ; preds = %bb.ak
  %i.ev = getelementptr i8, ptr %i.bs, i64 32
  %i.ew = getelementptr [8 x i8], ptr %i.ev, i64 %.sroa.06.0.i.i.i
  %i.ex = shl nuw nsw i64 %i.eo, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.eq, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.ew, i64 %i.ex, i1 false), !alias.scope !3376, !noalias !3364
  %i.ey = icmp ne i64 %i.bt, 0
  tail call void @llvm.assume(i1 %i.ey)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3380)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ap, %bb.ao
  %.sroa.0.013.i.i.i.i.i.i = phi i64 [ 0, %bb.ao ], [ %spec.select10.i.i.i.i.i.i, %bb.ap ] ; 5 uses
  %i.ez = icmp samesign uge i64 %.sroa.0.013.i.i.i.i.i.i, %i.en ; 2 uses
  %not..i.i.i.i.i.i = xor i1 %i.ez, true
  %i.fa = zext i1 %not..i.i.i.i.i.i to i64
  %spec.select10.i.i.i.i.i.i = add nuw nsw i64 %.sroa.0.013.i.i.i.i.i.i, %i.fa ; 2 uses
  %i.fb = icmp samesign ult i64 %.sroa.0.013.i.i.i.i.i.i, 12
  tail call void @llvm.assume(i1 %i.fb)
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %.sroa.0.013.i.i.i.i.i.i
  %i.fd = load ptr, ptr %i.fc, align 8, !alias.scope !3380, !noalias !3383, !nonnull !3, !noundef !3 ; 2 uses
  store ptr %i.dx, ptr %i.fd, align 8, !noalias !3386
  %i.fe = trunc nuw nsw i64 %.sroa.0.013.i.i.i.i.i.i to i16
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  store i16 %i.fe, ptr %i.ff, align 8, !noalias !3383
  %.not.i.i.i.i.i.i.i.i = icmp samesign ugt i64 %spec.select10.i.i.i.i.i.i, %i.en
  %or.cond.i.i.i.i.i.i = select i1 %i.ez, i1 true, i1 %.not.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %_RINvMsW_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v38NodeModeNtNtB8_7set_val9SetValZSTNtB1m_8InternalENtB1m_2KVE5splitNtNtBc_5alloc6GlobalEB1K_.exit.i.i.i, label %bb.ap

bb.aq:                                            ; preds = %bb.am
  unreachable

bb.ar:                                            ; preds = %bb.an, %bb.ai
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.eu, %bb.an ], [ %i.ef, %bb.ai ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dx, i64 noundef 120, i64 noundef 8) #28, !noalias !3364
  br label %common.resume.i.i

_RINvMsW_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v38NodeModeNtNtB8_7set_val9SetValZSTNtB1m_8InternalENtB1m_2KVE5splitNtNtBc_5alloc6GlobalEB1K_.exit.i.i.i: ; preds = %bb.ap
  %spec.select.i40.i.i = select i1 %.sroa.03.0.i.i.i, ptr %i.dx, ptr %i.bs ; 9 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %spec.select.i40.i.i, i64 10 ; 2 uses
  %i.fh = load i16, ptr %i.fg, align 2, !noalias !3387, !noundef !3 ; 2 uses
  %i.fi = zext i16 %i.fh to i64                   ; 5 uses
  %i.fj = add i16 %i.fh, 1
  %i.fk = getelementptr inbounds nuw i8, ptr %spec.select.i40.i.i, i64 12 ; 2 uses
  %i.fl = add nuw nsw i64 %.sroa.5.0.i.i.i, 1     ; 6 uses
  %.not.i10.not.i.i.i = icmp samesign ult i64 %.sroa.5.0.i.i.i, %i.fi
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fk, i64 %.sroa.5.0.i.i.i ; 2 uses
  br i1 %.not.i10.not.i.i.i, label %bb.as, label %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node12slice_insertINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v38NodeModeNtNtB4_7set_val9SetValZSTEEEB2b_.exit.i12.i.i.i

bb.as:                                            ; preds = %_RINvMsW_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v38NodeModeNtNtB8_7set_val9SetValZSTNtB1m_8InternalENtB1m_2KVE5splitNtNtBc_5alloc6GlobalEB1K_.exit.i.i.i
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.fl
  %i.fo = sub nuw nsw i64 %i.fi, %.sroa.5.0.i.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.fn, ptr nonnull align 1 %i.fm, i64 %i.fo, i1 false), !alias.scope !3390, !noalias !3387
  %i.fp = getelementptr inbounds nuw i8, ptr %spec.select.i40.i.i, i64 24 ; 2 uses
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %i.fl
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %.sroa.5.0.i.i.i
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  %i.ft = shl nuw nsw i64 %i.fo, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fs, ptr nonnull align 8 %i.fq, i64 %i.ft, i1 false), !alias.scope !3393, !noalias !3387
  br label %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node12slice_insertINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v38NodeModeNtNtB4_7set_val9SetValZSTEEEB2b_.exit.i12.i.i.i

_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node12slice_insertINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v38NodeModeNtNtB4_7set_val9SetValZSTEEEB2b_.exit.i12.i.i.i: ; preds = %bb.as, %_RINvMsW_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v38NodeModeNtNtB8_7set_val9SetValZSTNtB1m_8InternalENtB1m_2KVE5splitNtNtBc_5alloc6GlobalEB1K_.exit.i.i.i
  store i8 %.sroa.11.086.i.i, ptr %i.fm, align 1, !alias.scope !3390, !noalias !3387
  %i.fu = getelementptr inbounds nuw i8, ptr %spec.select.i40.i.i, i64 24 ; 6 uses
  %i.fv = add nuw nsw i64 %i.fi, 2                ; 2 uses
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %i.fl
  store ptr %.sroa.7.088.i.i, ptr %i.fw, align 8, !alias.scope !3393, !noalias !3387
  store i16 %i.fj, ptr %i.fg, align 2, !noalias !3387
  %i.fx = icmp samesign ult i64 %i.fl, %i.fv
  br i1 %i.fx, label %.lr.ph.i.i13.i.i.i.preheader, label %_RINvMsM_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v38NodeModeNtNtB8_7set_val9SetValZSTNtB1m_8InternalENtB1m_4EdgeE6insertNtNtBc_5alloc6GlobalEB1K_.exit.i.i

.lr.ph.i.i13.i.i.i.preheader:                     ; preds = %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node12slice_insertINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v38NodeModeNtNtB4_7set_val9SetValZSTEEEB2b_.exit.i12.i.i.i
  %i.fy = add nuw nsw i64 %i.fi, 1
  %i.fz = sub nsw i64 %i.fy, %.sroa.5.0.i.i.i
  %i.ga = sub nsw i64 %i.fi, %.sroa.5.0.i.i.i
  %xtraiter = and i64 %i.fz, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i13.i.i.i.prol.loopexit, label %.lr.ph.i.i13.i.i.i.prol

.lr.ph.i.i13.i.i.i.prol:                          ; preds = %.lr.ph.i.i13.i.i.i.preheader, %.lr.ph.i.i13.i.i.i.prol
  %.sroa.0.06.i.i14.i.i.i.prol = phi i64 [ %i.gb, %.lr.ph.i.i13.i.i.i.prol ], [ %i.fl, %.lr.ph.i.i13.i.i.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i13.i.i.i.prol ], [ 0, %.lr.ph.i.i13.i.i.i.preheader ]
  %i.gb = add nuw nsw i64 %.sroa.0.06.i.i14.i.i.i.prol, 1 ; 2 uses
  %i.gc = icmp samesign ult i64 %.sroa.0.06.i.i14.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.gc)
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %.sroa.0.06.i.i14.i.i.i.prol
  %i.ge = load ptr, ptr %i.gd, align 8, !noalias !3387, !nonnull !3, !noundef !3 ; 2 uses
  store ptr %spec.select.i40.i.i, ptr %i.ge, align 8, !noalias !3387
  %i.gf = trunc nuw nsw i64 %.sroa.0.06.i.i14.i.i.i.prol to i16
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  store i16 %i.gf, ptr %i.gg, align 8, !noalias !3387
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i13.i.i.i.prol.loopexit, label %.lr.ph.i.i13.i.i.i.prol, !llvm.loop !3396

.lr.ph.i.i13.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i13.i.i.i.prol, %.lr.ph.i.i13.i.i.i.preheader
  %.sroa.0.06.i.i14.i.i.i.unr = phi i64 [ %i.fl, %.lr.ph.i.i13.i.i.i.preheader ], [ %i.gb, %.lr.ph.i.i13.i.i.i.prol ]
  %i.gh = icmp ult i64 %i.ga, 3
  br i1 %i.gh, label %_RINvMsM_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v38NodeModeNtNtB8_7set_val9SetValZSTNtB1m_8InternalENtB1m_4EdgeE6insertNtNtBc_5alloc6GlobalEB1K_.exit.i.i, label %.lr.ph.i.i13.i.i.i

.lr.ph.i.i13.i.i.i:                               ; preds = %.lr.ph.i.i13.i.i.i.prol.loopexit, %.lr.ph.i.i13.i.i.i
  %.sroa.0.06.i.i14.i.i.i = phi i64 [ %i.gx, %.lr.ph.i.i13.i.i.i ], [ %.sroa.0.06.i.i14.i.i.i.unr, %.lr.ph.i.i13.i.i.i.prol.loopexit ] ; 7 uses
  %i.gi = add nuw nsw i64 %.sroa.0.06.i.i14.i.i.i, 1 ; 2 uses
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %.sroa.0.06.i.i14.i.i.i
  %i.gk = load ptr, ptr %i.gj, align 8, !noalias !3387, !nonnull !3, !noundef !3 ; 2 uses
  store ptr %spec.select.i40.i.i, ptr %i.gk, align 8, !noalias !3387
  %i.gl = trunc nuw nsw i64 %.sroa.0.06.i.i14.i.i.i to i16
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  store i16 %i.gl, ptr %i.gm, align 8, !noalias !3387
  %i.gn = add nuw nsw i64 %.sroa.0.06.i.i14.i.i.i, 2 ; 2 uses
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %i.gi
  %i.gp = load ptr, ptr %i.go, align 8, !noalias !3387, !nonnull !3, !noundef !3 ; 2 uses
  store ptr %spec.select.i40.i.i, ptr %i.gp, align 8, !noalias !3387
  %i.gq = trunc nuw nsw i64 %i.gi to i16
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  store i16 %i.gq, ptr %i.gr, align 8, !noalias !3387
  %i.gs = add nuw nsw i64 %.sroa.0.06.i.i14.i.i.i, 3 ; 2 uses
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %i.gn
  %i.gu = load ptr, ptr %i.gt, align 8, !noalias !3387, !nonnull !3, !noundef !3 ; 2 uses
  store ptr %spec.select.i40.i.i, ptr %i.gu, align 8, !noalias !3387
  %i.gv = trunc nuw nsw i64 %i.gn to i16
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  store i16 %i.gv, ptr %i.gw, align 8, !noalias !3387
  %i.gx = add nuw nsw i64 %.sroa.0.06.i.i14.i.i.i, 4 ; 2 uses
  %i.gy = icmp ult i64 %.sroa.0.06.i.i14.i.i.i, 9
  tail call void @llvm.assume(i1 %i.gy)
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %i.gs
  %i.ha = load ptr, ptr %i.gz, align 8, !noalias !3387, !nonnull !3, !noundef !3 ; 2 uses
  store ptr %spec.select.i40.i.i, ptr %i.ha, align 8, !noalias !3387
  %i.hb = trunc nuw nsw i64 %i.gs to i16
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  store i16 %i.hb, ptr %i.hc, align 8, !noalias !3387
  %exitcond.not.i.i15.i.i.i.3 = icmp eq i64 %i.gx, %i.fv
  br i1 %exitcond.not.i.i15.i.i.i.3, label %_RINvMsM_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v38NodeModeNtNtB8_7set_val9SetValZSTNtB1m_8InternalENtB1m_4EdgeE6insertNtNtBc_5alloc6GlobalEB1K_.exit.i.i, label %.lr.ph.i.i13.i.i.i

_RINvMsM_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v38NodeModeNtNtB8_7set_val9SetValZSTNtB1m_8InternalENtB1m_4EdgeE6insertNtNtBc_5alloc6GlobalEB1K_.exit.i.i: ; preds = %.lr.ph.i.i13.i.i.i.prol.loopexit, %.lr.ph.i.i13.i.i.i, %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node12slice_insertINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v38NodeModeNtNtB4_7set_val9SetValZSTEEEB2b_.exit.i12.i.i.i
  %i.hd = load ptr, ptr %i.bs, align 8, !noalias !3334, !noundef !3 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.hd, null
  br i1 %.not.i.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.thread:                                          ; preds = %bb.a
  %i.he = tail call noundef nonnull align 8 ptr @_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v38NodeModeNtNtBK_7set_val9SetValZSTEE13new_uninit_inB1w_(), !noalias !3397 ; 4 uses
  store ptr null, ptr %i.he, align 8, !noalias !3397
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 10
  store ptr %i.he, ptr %0, align 8, !noalias !3397
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.hg, align 8, !noalias !3397
  store i16 1, ptr %i.hf, align 2, !noalias !3398
  %i.hh = getelementptr inbounds nuw i8, ptr %i.he, i64 12
  store i8 %1, ptr %i.hh, align 4, !noalias !3398
  br label %_RNvMs4_NtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v38NodeModeNtNtB9_7set_val9SetValZSTE12insert_entryB1q_.exit

_RNvMs4_NtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v38NodeModeNtNtB9_7set_val9SetValZSTE12insert_entryB1q_.exit: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %bb.s, %_RNCNvMs4_NtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map5entryINtB7_11VacantEntryNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v38NodeModeNtNtBb_7set_val9SetValZSTE12insert_entry0B1s_.exit.i.i, %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node12slice_insertINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v38NodeModeNtNtB4_7set_val9SetValZSTEEEB2b_.exit.i.i.i.i, %.thread
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.hj = load i64, ptr %i.hi, align 8, !noalias !3397, !noundef !3
  %i.hk = add i64 %i.hj, 1
  store i64 %i.hk, ptr %i.hi, align 8, !noalias !3397
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %_RNvMs4_NtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v38NodeModeNtNtB9_7set_val9SetValZSTE12insert_entryB1q_.exit
  %i.hl = phi i1 [ false, %_RNvMs4_NtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v38NodeModeNtNtB9_7set_val9SetValZSTE12insert_entryB1q_.exit ], [ true, %.lr.ph ]
  ret i1 %i.hl
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v48NodeModeNtNtB7_7set_val9SetValZSTE6insertB1e_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i8 noundef range(i8 0, 6) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3401)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !3401, !noalias !3404, !noundef !3 ; 5 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !3401, !noalias !3404, !noundef !3 ; 3 uses
  %2 = zext nneg i8 %1 to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  %.sroa.3.0.i.i = phi i64 [ %i.c, %bb.b ], [ %i.s, %bb.f ] ; 2 uses
  %.sroa.0.0.i.i = phi ptr [ %i.a, %bb.b ], [ %i.r, %bb.f ] ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 12 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 10
  %i.f = load i16, ptr %i.e, align 2, !noalias !3406, !noundef !3 ; 4 uses
  %i.g = zext i16 %i.f to i64                     ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.g
  %i.i = icmp eq i16 %i.f, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i293, i64 1 ; 2 uses
  %i.k = add nuw nsw i64 %.sroa.8.0.i.i.i292, 1
  %i.l = icmp eq ptr %i.j, %i.h
  br i1 %i.l, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.sroa.0.03.i.i.i293 = phi ptr [ %i.j, %bb.d ], [ %i.d, %bb.c ] ; 2 uses
  %.sroa.8.0.i.i.i292 = phi i64 [ %i.k, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %.val6.i.i.i = load i8, ptr %.sroa.0.03.i.i.i293, align 1, !range !46, !noalias !3406, !noundef !3
  %3 = zext nneg i8 %.val6.i.i.i to i64
  %i.m = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %2, i64 %3)
  switch i8 %i.m, label %bb.e [
    i8 -1, label %._crit_edge
    i8 0, label %.loopexit
    i8 1, label %bb.d
  ]

bb.e:                                             ; preds = %.lr.ph
  unreachable

._crit_edge:                                      ; preds = %bb.d, %.lr.ph, %bb.c
  %.sroa.4.0.i.ph.i.i = phi i64 [ %i.g, %bb.c ], [ %i.g, %bb.d ], [ %.sroa.8.0.i.i.i292, %.lr.ph ] ; 12 uses
  %i.n = icmp eq i64 %.sroa.3.0.i.i, 0
  br i1 %i.n, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 24
  %i.p = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i, 12
  tail call void @llvm.assume(i1 %i.p)
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.4.0.i.ph.i.i
  %i.r = load ptr, ptr %i.q, align 8, !noalias !3406, !nonnull !3, !noundef !3
  %i.s = add i64 %.sroa.3.0.i.i, -1
  br label %bb.c

bb.g:                                             ; preds = %._crit_edge
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 10 ; 3 uses
  %i.u = icmp ult i16 %i.f, 11
  br i1 %i.u, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i, 5
  br i1 %i.v, label %bb.n, label %bb.k

bb.i:                                             ; preds = %bb.g
  %.not.i.i.i.i.not = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i, %i.g
  br i1 %.not.i.i.i.i.not, label %bb.j, label %bb.s

bb.j:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.4.0.i.ph.i.i ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %i.y = sub nuw nsw i64 %i.g, %.sroa.4.0.i.ph.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.x, ptr nonnull align 1 %i.w, i64 %i.y, i1 false), !alias.scope !3409, !noalias !3412
  br label %bb.s

bb.k:                                             ; preds = %bb.h
  switch i64 %.sroa.4.0.i.ph.i.i, label %bb.l [
    i64 5, label %bb.n
    i64 6, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  %i.z = add nsw i64 %.sroa.4.0.i.ph.i.i, -7
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.h
  %.sroa.09.0.i.i.i = phi i1 [ true, %bb.m ], [ true, %bb.l ], [ false, %bb.h ], [ false, %bb.k ]
  %.sroa.510.0.i.i.i = phi i64 [ 0, %bb.m ], [ %i.z, %bb.l ], [ %.sroa.4.0.i.ph.i.i, %bb.h ], [ %.sroa.4.0.i.ph.i.i, %bb.k ] ; 4 uses
  %.sroa.013.0.i.i.i = phi i64 [ 5, %bb.m ], [ 6, %bb.l ], [ 4, %bb.h ], [ %.sroa.4.0.i.ph.i.i, %bb.k ] ; 3 uses
  %i.aa = tail call noundef nonnull align 8 ptr @_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v48NodeModeNtNtBK_7set_val9SetValZSTEE13new_uninit_inB1w_(), !noalias !3425 ; 7 uses
  store ptr null, ptr %i.aa, align 8, !noalias !3425
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 10 ; 2 uses
  store i16 0, ptr %i.ab, align 2, !noalias !3425
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3429)
  %i.ac = load i16, ptr %i.t, align 2, !noalias !3432, !noundef !3
  %i.ad = zext i16 %i.ac to i64
  %i.ae = xor i64 %.sroa.013.0.i.i.i, -1
  %i.af = add nsw i64 %i.ad, %i.ae                ; 4 uses
  %i.ag = trunc i64 %i.af to i16
  store i16 %i.ag, ptr %i.ab, align 2, !alias.scope !3429, !noalias !3425
  %i.ah = icmp ult i64 %i.af, 12
  br i1 %i.ah, label %_RINvMsV_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v48NodeModeNtNtB8_7set_val9SetValZSTNtB1m_4LeafENtB1m_2KVE5splitNtNtBc_5alloc6GlobalEB1K_.exit.i.i.i, label %bb.o, !prof !1723

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.af, i64 noundef 11, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @107) #27
          to label %.noexc.i.i.i.i unwind label %bb.p, !noalias !3425

.noexc.i.i.i.i:                                   ; preds = %bb.o
  unreachable

common.resume.i.i:                                ; preds = %bb.ar, %bb.p
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.ai, %bb.p ], [ %.pn.i.i.i.i, %bb.ar ]
  resume { ptr, i32 } %common.resume.op.i.i

bb.p:                                             ; preds = %bb.o
  %i.ai = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aa, i64 noundef 24, i64 noundef 8) #28, !noalias !3425
  br label %common.resume.i.i

_RINvMsV_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v48NodeModeNtNtB8_7set_val9SetValZSTNtB1m_4LeafENtB1m_2KVE5splitNtNtBc_5alloc6GlobalEB1K_.exit.i.i.i: ; preds = %bb.n
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.013.0.i.i.i ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !range !46, !noalias !3432, !noundef !3 ; 2 uses
  %i.al = getelementptr i8, ptr %i.aj, i64 1
  %i.am = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.am, ptr nonnull readonly align 1 %i.al, i64 range(i64 0, 65536) %i.af, i1 false), !alias.scope !3433, !noalias !3425
  %i.an = trunc nuw nsw i64 %.sroa.013.0.i.i.i to i16
  store i16 %i.an, ptr %i.t, align 2, !noalias !3432
  %spec.select39.i.i.i = select i1 %.sroa.09.0.i.i.i, ptr %i.aa, ptr %.sroa.0.0.i.i ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %spec.select39.i.i.i, i64 10 ; 2 uses
  %i.ap = load i16, ptr %i.ao, align 2, !noalias !3437, !noundef !3 ; 2 uses
  %i.aq = zext i16 %i.ap to i64                   ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %spec.select39.i.i.i, i64 12 ; 2 uses
  %.not.i16.not.i.i.i = icmp ult i64 %.sroa.510.0.i.i.i, %i.aq
  br i1 %.not.i16.not.i.i.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_RINvMsV_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v48NodeModeNtNtB8_7set_val9SetValZSTNtB1m_4LeafENtB1m_2KVE5splitNtNtBc_5alloc6GlobalEB1K_.exit.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sroa.510.0.i.i.i ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  %i.au = sub nuw nsw i64 %i.aq, %.sroa.510.0.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.at, ptr nonnull align 1 %i.as, i64 %i.au, i1 false), !alias.scope !3441, !noalias !3437
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_RINvMsV_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v48NodeModeNtNtB8_7set_val9SetValZSTNtB1m_4LeafENtB1m_2KVE5splitNtNtBc_5alloc6GlobalEB1K_.exit.i.i.i
  %i.av = add i16 %i.ap, 1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sroa.510.0.i.i.i
  store i8 %1, ptr %i.aw, align 1, !alias.scope !3441, !noalias !3437
  store i16 %i.av, ptr %i.ao, align 2, !noalias !3437
  %i.ax = load ptr, ptr %.sroa.0.0.i.i, align 8, !noalias !3444, !noundef !3 ; 2 uses
  %.not.i85.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i85.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.s:                                             ; preds = %bb.j, %bb.i
  %i.ay = add nuw nsw i16 %i.f, 1
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.4.0.i.ph.i.i
  store i8 %1, ptr %i.az, align 1, !alias.scope !3409, !noalias !3412
  store i16 %i.ay, ptr %i.t, align 2, !noalias !3412
  br label %_RNvMs4_NtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v48NodeModeNtNtB9_7set_val9SetValZSTE12insert_entryB1q_.exit

._crit_edge.i.i:                                  ; preds = %_RINvMsM_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v48NodeModeNtNtB8_7set_val9SetValZSTNtB1m_8InternalENtB1m_4EdgeE6insertNtNtBc_5alloc6GlobalEB1K_.exit.i.i, %bb.r
  %.sroa.11.0.lcssa.i.i = phi i8 [ %i.ak, %bb.r ], [ %i.ei, %_RINvMsM_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v48NodeModeNtNtB8_7set_val9SetValZSTNtB1m_8InternalENtB1m_4EdgeE6insertNtNtBc_5alloc6GlobalEB1K_.exit.i.i ]
  %.sroa.9.0.lcssa.i.i = phi i64 [ 0, %bb.r ], [ %i.bt, %_RINvMsM_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v48NodeModeNtNtB8_7set_val9SetValZSTNtB1m_8InternalENtB1m_4EdgeE6insertNtNtBc_5alloc6GlobalEB1K_.exit.i.i ]
  %.sroa.7.0.lcssa.i.i = phi ptr [ %i.aa, %bb.r ], [ %i.dx, %_RINvMsM_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v48NodeModeNtNtB8_7set_val9SetValZSTNtB1m_8InternalENtB1m_4EdgeE6insertNtNtBc_5alloc6GlobalEB1K_.exit.i.i ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3447)
  %i.ba = invoke noundef nonnull align 8 ptr @_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v48NodeModeNtNtBK_7set_val9SetValZSTEE13new_uninit_inB1B_()
          to label %.noexc.i.i38.i.i unwind label %bb.w, !noalias !3450 ; 8 uses

.noexc.i.i38.i.i:                                 ; preds = %._crit_edge.i.i
  store ptr null, ptr %i.ba, align 8, !noalias !3450
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 10 ; 3 uses
  store i16 0, ptr %i.bb, align 2, !noalias !3450
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 24 ; 2 uses
  store ptr %i.a, ptr %i.bc, align 8, !noalias !3450
  %i.bd = add i64 %i.c, 1                         ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.bd, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.t, label %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtBZ_6marker5OwnedNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v48NodeModeNtNtB4_7set_val9SetValZSTNtB1j_14LeafOrInternalEuNCINvB2_8take_mutBW_NCINvMss_BZ_BW_19push_internal_levelNtNtB8_5alloc6GlobalE0E0EB1J_.exit.i.i.i, !prof !68

bb.t:                                             ; preds = %.noexc.i.i38.i.i
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84) #27
          to label %bb.u unwind label %bb.v, !noalias !3450

bb.u:                                             ; preds = %bb.t
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ba, i64 noundef 120, i64 noundef 8) #28, !noalias !3450
  br label %.body.i.i.i.i

bb.w:                                             ; preds = %._crit_edge.i.i
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.w, %bb.v
  tail call void @llvm.trap()
  unreachable

_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtBZ_6marker5OwnedNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v48NodeModeNtNtB4_7set_val9SetValZSTNtB1j_14LeafOrInternalEuNCINvB2_8take_mutBW_NCINvMss_BZ_BW_19push_internal_levelNtNtB8_5alloc6GlobalE0E0EB1J_.exit.i.i.i: ; preds = %.noexc.i.i38.i.i
  store ptr %i.ba, ptr %i.a, align 8, !noalias !3453
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i16 0, ptr %i.bg, align 8, !noalias !3458
  store ptr %i.ba, ptr %0, align 8, !alias.scope !3447, !noalias !3459
  store i64 %i.bd, ptr %i.b, align 8, !alias.scope !3447, !noalias !3459
  %i.bh = icmp eq i64 %.sroa.9.0.lcssa.i.i, %i.c
  br i1 %i.bh, label %bb.y, label %bb.x, !prof !119

bb.x:                                             ; preds = %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtBZ_6marker5OwnedNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v48NodeModeNtNtB4_7set_val9SetValZSTNtB1j_14LeafOrInternalEuNCINvB2_8take_mutBW_NCINvMss_BZ_BW_19push_internal_levelNtNtB8_5alloc6GlobalE0E0EB1J_.exit.i.i.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @110, i64 noundef 48, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @111) #27, !noalias !3459
  unreachable

bb.y:                                             ; preds = %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtBZ_6marker5OwnedNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v48NodeModeNtNtB4_7set_val9SetValZSTNtB1j_14LeafOrInternalEuNCINvB2_8take_mutBW_NCINvMss_BZ_BW_19push_internal_levelNtNtB8_5alloc6GlobalE0E0EB1J_.exit.i.i.i
  %i.bi = load i16, ptr %i.bb, align 2, !noalias !3459, !noundef !3 ; 3 uses
  %i.bj = icmp ult i16 %i.bi, 11
  br i1 %i.bj, label %_RNCNvMs4_NtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map5entryINtB7_11VacantEntryNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v48NodeModeNtNtBb_7set_val9SetValZSTE12insert_entry0B1s_.exit.i.i, label %bb.z, !prof !119

bb.z:                                             ; preds = %bb.y
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @108, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @112) #27, !noalias !3459
  unreachable

_RNCNvMs4_NtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map5entryINtB7_11VacantEntryNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v48NodeModeNtNtBb_7set_val9SetValZSTE12insert_entry0B1s_.exit.i.i: ; preds = %bb.y
  %i.bk = zext nneg i16 %i.bi to i64              ; 2 uses
  %i.bl = add nuw nsw i16 %i.bi, 1
  store i16 %i.bl, ptr %i.bb, align 2, !noalias !3459
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bk
  store i8 %.sroa.11.0.lcssa.i.i, ptr %i.bn, align 1, !noalias !3459
  %i.bo = add nuw nsw i64 %i.bk, 1                ; 2 uses
end_hunk_2
begin_hunk_3_@_RNvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v48NodeModeNtNtB7_7set_val9SetValZSTE6insertB1e_:bb.a
  %i.ep = icmp ult i16 %i.em, 12
  br i1 %i.ep, label %bb.ak, label %bb.am, !prof !1723

bb.ak:                                            ; preds = %bb.aj
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dx, i64 24 ; 2 uses
  %i.er = zext i16 %i.by to i64
  %i.es = sub nuw nsw i64 %i.er, %.sroa.06.0.i.i.i
  %i.et = icmp eq i64 %i.es, %i.eo
  br i1 %i.et, label %bb.ao, label %bb.al, !prof !119

bb.al:                                            ; preds = %bb.ak
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @94, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @95) #27
          to label %.noexc7.i.i.i.i unwind label %bb.an, !noalias !3474

.noexc7.i.i.i.i:                                  ; preds = %bb.al
  unreachable

bb.am:                                            ; preds = %bb.aj
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.eo, i64 noundef 12, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @87) #27
          to label %bb.aq unwind label %bb.an, !noalias !3474

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.ao:                                            ; preds = %bb.ak
  %i.ev = getelementptr i8, ptr %i.bs, i64 32
  %i.ew = getelementptr [8 x i8], ptr %i.ev, i64 %.sroa.06.0.i.i.i
  %i.ex = shl nuw nsw i64 %i.eo, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.eq, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.ew, i64 %i.ex, i1 false), !alias.scope !3486, !noalias !3474
  %i.ey = icmp ne i64 %i.bt, 0
  tail call void @llvm.assume(i1 %i.ey)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3490)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ap, %bb.ao
  %.sroa.0.013.i.i.i.i.i.i = phi i64 [ 0, %bb.ao ], [ %spec.select10.i.i.i.i.i.i, %bb.ap ] ; 5 uses
  %i.ez = icmp samesign uge i64 %.sroa.0.013.i.i.i.i.i.i, %i.en ; 2 uses
  %not..i.i.i.i.i.i = xor i1 %i.ez, true
  %i.fa = zext i1 %not..i.i.i.i.i.i to i64
  %spec.select10.i.i.i.i.i.i = add nuw nsw i64 %.sroa.0.013.i.i.i.i.i.i, %i.fa ; 2 uses
  %i.fb = icmp samesign ult i64 %.sroa.0.013.i.i.i.i.i.i, 12
  tail call void @llvm.assume(i1 %i.fb)
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %.sroa.0.013.i.i.i.i.i.i
  %i.fd = load ptr, ptr %i.fc, align 8, !alias.scope !3490, !noalias !3493, !nonnull !3, !noundef !3 ; 2 uses
  store ptr %i.dx, ptr %i.fd, align 8, !noalias !3496
  %i.fe = trunc nuw nsw i64 %.sroa.0.013.i.i.i.i.i.i to i16
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  store i16 %i.fe, ptr %i.ff, align 8, !noalias !3493
  %.not.i.i.i.i.i.i.i.i = icmp samesign ugt i64 %spec.select10.i.i.i.i.i.i, %i.en
  %or.cond.i.i.i.i.i.i = select i1 %i.ez, i1 true, i1 %.not.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %_RINvMsW_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v48NodeModeNtNtB8_7set_val9SetValZSTNtB1m_8InternalENtB1m_2KVE5splitNtNtBc_5alloc6GlobalEB1K_.exit.i.i.i, label %bb.ap

bb.aq:                                            ; preds = %bb.am
  unreachable

bb.ar:                                            ; preds = %bb.an, %bb.ai
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.eu, %bb.an ], [ %i.ef, %bb.ai ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dx, i64 noundef 120, i64 noundef 8) #28, !noalias !3474
  br label %common.resume.i.i

_RINvMsW_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v48NodeModeNtNtB8_7set_val9SetValZSTNtB1m_8InternalENtB1m_2KVE5splitNtNtBc_5alloc6GlobalEB1K_.exit.i.i.i: ; preds = %bb.ap
  %spec.select.i40.i.i = select i1 %.sroa.03.0.i.i.i, ptr %i.dx, ptr %i.bs ; 9 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %spec.select.i40.i.i, i64 10 ; 2 uses
  %i.fh = load i16, ptr %i.fg, align 2, !noalias !3497, !noundef !3 ; 2 uses
  %i.fi = zext i16 %i.fh to i64                   ; 5 uses
  %i.fj = add i16 %i.fh, 1
  %i.fk = getelementptr inbounds nuw i8, ptr %spec.select.i40.i.i, i64 12 ; 2 uses
  %i.fl = add nuw nsw i64 %.sroa.5.0.i.i.i, 1     ; 6 uses
  %.not.i10.not.i.i.i = icmp samesign ult i64 %.sroa.5.0.i.i.i, %i.fi
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fk, i64 %.sroa.5.0.i.i.i ; 2 uses
  br i1 %.not.i10.not.i.i.i, label %bb.as, label %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node12slice_insertINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v48NodeModeNtNtB4_7set_val9SetValZSTEEEB2b_.exit.i12.i.i.i

bb.as:                                            ; preds = %_RINvMsW_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v48NodeModeNtNtB8_7set_val9SetValZSTNtB1m_8InternalENtB1m_2KVE5splitNtNtBc_5alloc6GlobalEB1K_.exit.i.i.i
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.fl
  %i.fo = sub nuw nsw i64 %i.fi, %.sroa.5.0.i.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.fn, ptr nonnull align 1 %i.fm, i64 %i.fo, i1 false), !alias.scope !3500, !noalias !3497
  %i.fp = getelementptr inbounds nuw i8, ptr %spec.select.i40.i.i, i64 24 ; 2 uses
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %i.fl
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %.sroa.5.0.i.i.i
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  %i.ft = shl nuw nsw i64 %i.fo, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fs, ptr nonnull align 8 %i.fq, i64 %i.ft, i1 false), !alias.scope !3503, !noalias !3497
  br label %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node12slice_insertINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v48NodeModeNtNtB4_7set_val9SetValZSTEEEB2b_.exit.i12.i.i.i

_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node12slice_insertINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v48NodeModeNtNtB4_7set_val9SetValZSTEEEB2b_.exit.i12.i.i.i: ; preds = %bb.as, %_RINvMsW_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v48NodeModeNtNtB8_7set_val9SetValZSTNtB1m_8InternalENtB1m_2KVE5splitNtNtBc_5alloc6GlobalEB1K_.exit.i.i.i
  store i8 %.sroa.11.086.i.i, ptr %i.fm, align 1, !alias.scope !3500, !noalias !3497
  %i.fu = getelementptr inbounds nuw i8, ptr %spec.select.i40.i.i, i64 24 ; 6 uses
  %i.fv = add nuw nsw i64 %i.fi, 2                ; 2 uses
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %i.fl
  store ptr %.sroa.7.088.i.i, ptr %i.fw, align 8, !alias.scope !3503, !noalias !3497
  store i16 %i.fj, ptr %i.fg, align 2, !noalias !3497
  %i.fx = icmp samesign ult i64 %i.fl, %i.fv
  br i1 %i.fx, label %.lr.ph.i.i13.i.i.i.preheader, label %_RINvMsM_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v48NodeModeNtNtB8_7set_val9SetValZSTNtB1m_8InternalENtB1m_4EdgeE6insertNtNtBc_5alloc6GlobalEB1K_.exit.i.i

.lr.ph.i.i13.i.i.i.preheader:                     ; preds = %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node12slice_insertINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v48NodeModeNtNtB4_7set_val9SetValZSTEEEB2b_.exit.i12.i.i.i
  %i.fy = add nuw nsw i64 %i.fi, 1
  %i.fz = sub nsw i64 %i.fy, %.sroa.5.0.i.i.i
  %i.ga = sub nsw i64 %i.fi, %.sroa.5.0.i.i.i
  %xtraiter = and i64 %i.fz, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i13.i.i.i.prol.loopexit, label %.lr.ph.i.i13.i.i.i.prol

.lr.ph.i.i13.i.i.i.prol:                          ; preds = %.lr.ph.i.i13.i.i.i.preheader, %.lr.ph.i.i13.i.i.i.prol
  %.sroa.0.06.i.i14.i.i.i.prol = phi i64 [ %i.gb, %.lr.ph.i.i13.i.i.i.prol ], [ %i.fl, %.lr.ph.i.i13.i.i.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i13.i.i.i.prol ], [ 0, %.lr.ph.i.i13.i.i.i.preheader ]
  %i.gb = add nuw nsw i64 %.sroa.0.06.i.i14.i.i.i.prol, 1 ; 2 uses
  %i.gc = icmp samesign ult i64 %.sroa.0.06.i.i14.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.gc)
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %.sroa.0.06.i.i14.i.i.i.prol
  %i.ge = load ptr, ptr %i.gd, align 8, !noalias !3497, !nonnull !3, !noundef !3 ; 2 uses
  store ptr %spec.select.i40.i.i, ptr %i.ge, align 8, !noalias !3497
  %i.gf = trunc nuw nsw i64 %.sroa.0.06.i.i14.i.i.i.prol to i16
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  store i16 %i.gf, ptr %i.gg, align 8, !noalias !3497
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i13.i.i.i.prol.loopexit, label %.lr.ph.i.i13.i.i.i.prol, !llvm.loop !3506

.lr.ph.i.i13.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i13.i.i.i.prol, %.lr.ph.i.i13.i.i.i.preheader
  %.sroa.0.06.i.i14.i.i.i.unr = phi i64 [ %i.fl, %.lr.ph.i.i13.i.i.i.preheader ], [ %i.gb, %.lr.ph.i.i13.i.i.i.prol ]
  %i.gh = icmp ult i64 %i.ga, 3
  br i1 %i.gh, label %_RINvMsM_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v48NodeModeNtNtB8_7set_val9SetValZSTNtB1m_8InternalENtB1m_4EdgeE6insertNtNtBc_5alloc6GlobalEB1K_.exit.i.i, label %.lr.ph.i.i13.i.i.i

.lr.ph.i.i13.i.i.i:                               ; preds = %.lr.ph.i.i13.i.i.i.prol.loopexit, %.lr.ph.i.i13.i.i.i
  %.sroa.0.06.i.i14.i.i.i = phi i64 [ %i.gx, %.lr.ph.i.i13.i.i.i ], [ %.sroa.0.06.i.i14.i.i.i.unr, %.lr.ph.i.i13.i.i.i.prol.loopexit ] ; 7 uses
  %i.gi = add nuw nsw i64 %.sroa.0.06.i.i14.i.i.i, 1 ; 2 uses
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %.sroa.0.06.i.i14.i.i.i
  %i.gk = load ptr, ptr %i.gj, align 8, !noalias !3497, !nonnull !3, !noundef !3 ; 2 uses
  store ptr %spec.select.i40.i.i, ptr %i.gk, align 8, !noalias !3497
  %i.gl = trunc nuw nsw i64 %.sroa.0.06.i.i14.i.i.i to i16
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  store i16 %i.gl, ptr %i.gm, align 8, !noalias !3497
  %i.gn = add nuw nsw i64 %.sroa.0.06.i.i14.i.i.i, 2 ; 2 uses
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %i.gi
  %i.gp = load ptr, ptr %i.go, align 8, !noalias !3497, !nonnull !3, !noundef !3 ; 2 uses
  store ptr %spec.select.i40.i.i, ptr %i.gp, align 8, !noalias !3497
  %i.gq = trunc nuw nsw i64 %i.gi to i16
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  store i16 %i.gq, ptr %i.gr, align 8, !noalias !3497
  %i.gs = add nuw nsw i64 %.sroa.0.06.i.i14.i.i.i, 3 ; 2 uses
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %i.gn
  %i.gu = load ptr, ptr %i.gt, align 8, !noalias !3497, !nonnull !3, !noundef !3 ; 2 uses
  store ptr %spec.select.i40.i.i, ptr %i.gu, align 8, !noalias !3497
  %i.gv = trunc nuw nsw i64 %i.gn to i16
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  store i16 %i.gv, ptr %i.gw, align 8, !noalias !3497
  %i.gx = add nuw nsw i64 %.sroa.0.06.i.i14.i.i.i, 4 ; 2 uses
  %i.gy = icmp ult i64 %.sroa.0.06.i.i14.i.i.i, 9
  tail call void @llvm.assume(i1 %i.gy)
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %i.gs
  %i.ha = load ptr, ptr %i.gz, align 8, !noalias !3497, !nonnull !3, !noundef !3 ; 2 uses
  store ptr %spec.select.i40.i.i, ptr %i.ha, align 8, !noalias !3497
  %i.hb = trunc nuw nsw i64 %i.gs to i16
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  store i16 %i.hb, ptr %i.hc, align 8, !noalias !3497
  %exitcond.not.i.i15.i.i.i.3 = icmp eq i64 %i.gx, %i.fv
  br i1 %exitcond.not.i.i15.i.i.i.3, label %_RINvMsM_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v48NodeModeNtNtB8_7set_val9SetValZSTNtB1m_8InternalENtB1m_4EdgeE6insertNtNtBc_5alloc6GlobalEB1K_.exit.i.i, label %.lr.ph.i.i13.i.i.i

_RINvMsM_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v48NodeModeNtNtB8_7set_val9SetValZSTNtB1m_8InternalENtB1m_4EdgeE6insertNtNtBc_5alloc6GlobalEB1K_.exit.i.i: ; preds = %.lr.ph.i.i13.i.i.i.prol.loopexit, %.lr.ph.i.i13.i.i.i, %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node12slice_insertINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v48NodeModeNtNtB4_7set_val9SetValZSTEEEB2b_.exit.i12.i.i.i
  %i.hd = load ptr, ptr %i.bs, align 8, !noalias !3444, !noundef !3 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.hd, null
  br i1 %.not.i.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.thread:                                          ; preds = %bb.a
  %i.he = tail call noundef nonnull align 8 ptr @_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v48NodeModeNtNtBK_7set_val9SetValZSTEE13new_uninit_inB1w_(), !noalias !3507 ; 4 uses
  store ptr null, ptr %i.he, align 8, !noalias !3507
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 10
  store ptr %i.he, ptr %0, align 8, !noalias !3507
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.hg, align 8, !noalias !3507
  store i16 1, ptr %i.hf, align 2, !noalias !3508
  %i.hh = getelementptr inbounds nuw i8, ptr %i.he, i64 12
  store i8 %1, ptr %i.hh, align 4, !noalias !3508
  br label %_RNvMs4_NtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v48NodeModeNtNtB9_7set_val9SetValZSTE12insert_entryB1q_.exit

_RNvMs4_NtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v48NodeModeNtNtB9_7set_val9SetValZSTE12insert_entryB1q_.exit: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %bb.s, %_RNCNvMs4_NtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map5entryINtB7_11VacantEntryNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v48NodeModeNtNtBb_7set_val9SetValZSTE12insert_entry0B1s_.exit.i.i, %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node12slice_insertINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v48NodeModeNtNtB4_7set_val9SetValZSTEEEB2b_.exit.i.i.i.i, %.thread
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.hj = load i64, ptr %i.hi, align 8, !noalias !3507, !noundef !3
  %i.hk = add i64 %i.hj, 1
  store i64 %i.hk, ptr %i.hi, align 8, !noalias !3507
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %_RNvMs4_NtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v48NodeModeNtNtB9_7set_val9SetValZSTE12insert_entryB1q_.exit
  %i.hl = phi i1 [ false, %_RNvMs4_NtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v48NodeModeNtNtB9_7set_val9SetValZSTE12insert_entryB1q_.exit ], [ true, %.lr.ph ]
  ret i1 %i.hl
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4node8NodeModeNtNtB7_7set_val9SetValZSTE6insertB1i_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i8 noundef range(i8 0, 6) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3511)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !3511, !noalias !3514, !noundef !3 ; 5 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !3511, !noalias !3514, !noundef !3 ; 3 uses
  %2 = zext nneg i8 %1 to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  %.sroa.3.0.i.i = phi i64 [ %i.c, %bb.b ], [ %i.s, %bb.f ] ; 2 uses
  %.sroa.0.0.i.i = phi ptr [ %i.a, %bb.b ], [ %i.r, %bb.f ] ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 12 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 10
  %i.f = load i16, ptr %i.e, align 2, !noalias !3516, !noundef !3 ; 4 uses
  %i.g = zext i16 %i.f to i64                     ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.g
  %i.i = icmp eq i16 %i.f, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i293, i64 1 ; 2 uses
  %i.k = add nuw nsw i64 %.sroa.8.0.i.i.i292, 1
  %i.l = icmp eq ptr %i.j, %i.h
  br i1 %i.l, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.sroa.0.03.i.i.i293 = phi ptr [ %i.j, %bb.d ], [ %i.d, %bb.c ] ; 2 uses
  %.sroa.8.0.i.i.i292 = phi i64 [ %i.k, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %.val6.i.i.i = load i8, ptr %.sroa.0.03.i.i.i293, align 1, !range !46, !noalias !3516, !noundef !3
  %3 = zext nneg i8 %.val6.i.i.i to i64
  %i.m = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %2, i64 %3)
  switch i8 %i.m, label %bb.e [
    i8 -1, label %._crit_edge
    i8 0, label %.loopexit
    i8 1, label %bb.d
  ]

bb.e:                                             ; preds = %.lr.ph
  unreachable

._crit_edge:                                      ; preds = %bb.d, %.lr.ph, %bb.c
  %.sroa.4.0.i.ph.i.i = phi i64 [ %i.g, %bb.c ], [ %i.g, %bb.d ], [ %.sroa.8.0.i.i.i292, %.lr.ph ] ; 12 uses
  %i.n = icmp eq i64 %.sroa.3.0.i.i, 0
  br i1 %i.n, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 24
  %i.p = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i, 12
  tail call void @llvm.assume(i1 %i.p)
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.4.0.i.ph.i.i
  %i.r = load ptr, ptr %i.q, align 8, !noalias !3516, !nonnull !3, !noundef !3
  %i.s = add i64 %.sroa.3.0.i.i, -1
  br label %bb.c

bb.g:                                             ; preds = %._crit_edge
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 10 ; 3 uses
  %i.u = icmp ult i16 %i.f, 11
  br i1 %i.u, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i, 5
  br i1 %i.v, label %bb.n, label %bb.k

bb.i:                                             ; preds = %bb.g
  %.not.i.i.i.i.not = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i, %i.g
  br i1 %.not.i.i.i.i.not, label %bb.j, label %bb.s

bb.j:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.4.0.i.ph.i.i ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %i.y = sub nuw nsw i64 %i.g, %.sroa.4.0.i.ph.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.x, ptr nonnull align 1 %i.w, i64 %i.y, i1 false), !alias.scope !3519, !noalias !3522
  br label %bb.s

bb.k:                                             ; preds = %bb.h
  switch i64 %.sroa.4.0.i.ph.i.i, label %bb.l [
    i64 5, label %bb.n
    i64 6, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  %i.z = add nsw i64 %.sroa.4.0.i.ph.i.i, -7
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.h
  %.sroa.09.0.i.i.i = phi i1 [ true, %bb.m ], [ true, %bb.l ], [ false, %bb.h ], [ false, %bb.k ]
  %.sroa.510.0.i.i.i = phi i64 [ 0, %bb.m ], [ %i.z, %bb.l ], [ %.sroa.4.0.i.ph.i.i, %bb.h ], [ %.sroa.4.0.i.ph.i.i, %bb.k ] ; 4 uses
  %.sroa.013.0.i.i.i = phi i64 [ 5, %bb.m ], [ 6, %bb.l ], [ 4, %bb.h ], [ %.sroa.4.0.i.ph.i.i, %bb.k ] ; 3 uses
  %i.aa = tail call noundef nonnull align 8 ptr @_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4node8NodeModeNtNtBK_7set_val9SetValZSTEE13new_uninit_inB1A_(), !noalias !3535 ; 7 uses
  store ptr null, ptr %i.aa, align 8, !noalias !3535
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 10 ; 2 uses
  store i16 0, ptr %i.ab, align 2, !noalias !3535
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3539)
  %i.ac = load i16, ptr %i.t, align 2, !noalias !3542, !noundef !3
  %i.ad = zext i16 %i.ac to i64
  %i.ae = xor i64 %.sroa.013.0.i.i.i, -1
  %i.af = add nsw i64 %i.ad, %i.ae                ; 4 uses
  %i.ag = trunc i64 %i.af to i16
  store i16 %i.ag, ptr %i.ab, align 2, !alias.scope !3539, !noalias !3535
  %i.ah = icmp ult i64 %i.af, 12
  br i1 %i.ah, label %_RINvMsV_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4node8NodeModeNtNtB8_7set_val9SetValZSTNtB1m_4LeafENtB1m_2KVE5splitNtNtBc_5alloc6GlobalEB1O_.exit.i.i.i, label %bb.o, !prof !1723

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.af, i64 noundef 11, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @107) #27
          to label %.noexc.i.i.i.i unwind label %bb.p, !noalias !3535

.noexc.i.i.i.i:                                   ; preds = %bb.o
  unreachable

common.resume.i.i:                                ; preds = %bb.ar, %bb.p
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.ai, %bb.p ], [ %.pn.i.i.i.i, %bb.ar ]
  resume { ptr, i32 } %common.resume.op.i.i

bb.p:                                             ; preds = %bb.o
  %i.ai = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aa, i64 noundef 24, i64 noundef 8) #28, !noalias !3535
  br label %common.resume.i.i

_RINvMsV_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4node8NodeModeNtNtB8_7set_val9SetValZSTNtB1m_4LeafENtB1m_2KVE5splitNtNtBc_5alloc6GlobalEB1O_.exit.i.i.i: ; preds = %bb.n
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.013.0.i.i.i ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !range !46, !noalias !3542, !noundef !3 ; 2 uses
  %i.al = getelementptr i8, ptr %i.aj, i64 1
  %i.am = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.am, ptr nonnull readonly align 1 %i.al, i64 range(i64 0, 65536) %i.af, i1 false), !alias.scope !3543, !noalias !3535
  %i.an = trunc nuw nsw i64 %.sroa.013.0.i.i.i to i16
  store i16 %i.an, ptr %i.t, align 2, !noalias !3542
  %spec.select39.i.i.i = select i1 %.sroa.09.0.i.i.i, ptr %i.aa, ptr %.sroa.0.0.i.i ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %spec.select39.i.i.i, i64 10 ; 2 uses
  %i.ap = load i16, ptr %i.ao, align 2, !noalias !3547, !noundef !3 ; 2 uses
  %i.aq = zext i16 %i.ap to i64                   ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %spec.select39.i.i.i, i64 12 ; 2 uses
  %.not.i16.not.i.i.i = icmp ult i64 %.sroa.510.0.i.i.i, %i.aq
  br i1 %.not.i16.not.i.i.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_RINvMsV_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4node8NodeModeNtNtB8_7set_val9SetValZSTNtB1m_4LeafENtB1m_2KVE5splitNtNtBc_5alloc6GlobalEB1O_.exit.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sroa.510.0.i.i.i ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  %i.au = sub nuw nsw i64 %i.aq, %.sroa.510.0.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.at, ptr nonnull align 1 %i.as, i64 %i.au, i1 false), !alias.scope !3551, !noalias !3547
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_RINvMsV_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4node8NodeModeNtNtB8_7set_val9SetValZSTNtB1m_4LeafENtB1m_2KVE5splitNtNtBc_5alloc6GlobalEB1O_.exit.i.i.i
  %i.av = add i16 %i.ap, 1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sroa.510.0.i.i.i
  store i8 %1, ptr %i.aw, align 1, !alias.scope !3551, !noalias !3547
  store i16 %i.av, ptr %i.ao, align 2, !noalias !3547
  %i.ax = load ptr, ptr %.sroa.0.0.i.i, align 8, !noalias !3554, !noundef !3 ; 2 uses
  %.not.i85.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i85.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.s:                                             ; preds = %bb.j, %bb.i
  %i.ay = add nuw nsw i16 %i.f, 1
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.4.0.i.ph.i.i
  store i8 %1, ptr %i.az, align 1, !alias.scope !3519, !noalias !3522
  store i16 %i.ay, ptr %i.t, align 2, !noalias !3522
  br label %_RNvMs4_NtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4node8NodeModeNtNtB9_7set_val9SetValZSTE12insert_entryB1u_.exit

._crit_edge.i.i:                                  ; preds = %_RINvMsM_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4node8NodeModeNtNtB8_7set_val9SetValZSTNtB1m_8InternalENtB1m_4EdgeE6insertNtNtBc_5alloc6GlobalEB1O_.exit.i.i, %bb.r
  %.sroa.11.0.lcssa.i.i = phi i8 [ %i.ak, %bb.r ], [ %i.ei, %_RINvMsM_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4node8NodeModeNtNtB8_7set_val9SetValZSTNtB1m_8InternalENtB1m_4EdgeE6insertNtNtBc_5alloc6GlobalEB1O_.exit.i.i ]
  %.sroa.9.0.lcssa.i.i = phi i64 [ 0, %bb.r ], [ %i.bt, %_RINvMsM_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4node8NodeModeNtNtB8_7set_val9SetValZSTNtB1m_8InternalENtB1m_4EdgeE6insertNtNtBc_5alloc6GlobalEB1O_.exit.i.i ]
  %.sroa.7.0.lcssa.i.i = phi ptr [ %i.aa, %bb.r ], [ %i.dx, %_RINvMsM_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4node8NodeModeNtNtB8_7set_val9SetValZSTNtB1m_8InternalENtB1m_4EdgeE6insertNtNtBc_5alloc6GlobalEB1O_.exit.i.i ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3557)
  %i.ba = invoke noundef nonnull align 8 ptr @_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4node8NodeModeNtNtBK_7set_val9SetValZSTEE13new_uninit_inB1F_()
          to label %.noexc.i.i38.i.i unwind label %bb.w, !noalias !3560 ; 8 uses

.noexc.i.i38.i.i:                                 ; preds = %._crit_edge.i.i
  store ptr null, ptr %i.ba, align 8, !noalias !3560
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 10 ; 3 uses
  store i16 0, ptr %i.bb, align 2, !noalias !3560
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 24 ; 2 uses
  store ptr %i.a, ptr %i.bc, align 8, !noalias !3560
  %i.bd = add i64 %i.c, 1                         ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.bd, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.t, label %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtBZ_6marker5OwnedNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4node8NodeModeNtNtB4_7set_val9SetValZSTNtB1j_14LeafOrInternalEuNCINvB2_8take_mutBW_NCINvMss_BZ_BW_19push_internal_levelNtNtB8_5alloc6GlobalE0E0EB1N_.exit.i.i.i, !prof !68

bb.t:                                             ; preds = %.noexc.i.i38.i.i
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84) #27
          to label %bb.u unwind label %bb.v, !noalias !3560

bb.u:                                             ; preds = %bb.t
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ba, i64 noundef 120, i64 noundef 8) #28, !noalias !3560
  br label %.body.i.i.i.i

bb.w:                                             ; preds = %._crit_edge.i.i
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.w, %bb.v
  tail call void @llvm.trap()
  unreachable

_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtBZ_6marker5OwnedNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4node8NodeModeNtNtB4_7set_val9SetValZSTNtB1j_14LeafOrInternalEuNCINvB2_8take_mutBW_NCINvMss_BZ_BW_19push_internal_levelNtNtB8_5alloc6GlobalE0E0EB1N_.exit.i.i.i: ; preds = %.noexc.i.i38.i.i
  store ptr %i.ba, ptr %i.a, align 8, !noalias !3563
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i16 0, ptr %i.bg, align 8, !noalias !3568
  store ptr %i.ba, ptr %0, align 8, !alias.scope !3557, !noalias !3569
  store i64 %i.bd, ptr %i.b, align 8, !alias.scope !3557, !noalias !3569
  %i.bh = icmp eq i64 %.sroa.9.0.lcssa.i.i, %i.c
  br i1 %i.bh, label %bb.y, label %bb.x, !prof !119

bb.x:                                             ; preds = %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtBZ_6marker5OwnedNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4node8NodeModeNtNtB4_7set_val9SetValZSTNtB1j_14LeafOrInternalEuNCINvB2_8take_mutBW_NCINvMss_BZ_BW_19push_internal_levelNtNtB8_5alloc6GlobalE0E0EB1N_.exit.i.i.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @110, i64 noundef 48, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @111) #27, !noalias !3569
  unreachable

bb.y:                                             ; preds = %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtBZ_6marker5OwnedNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4node8NodeModeNtNtB4_7set_val9SetValZSTNtB1j_14LeafOrInternalEuNCINvB2_8take_mutBW_NCINvMss_BZ_BW_19push_internal_levelNtNtB8_5alloc6GlobalE0E0EB1N_.exit.i.i.i
  %i.bi = load i16, ptr %i.bb, align 2, !noalias !3569, !noundef !3 ; 3 uses
  %i.bj = icmp ult i16 %i.bi, 11
  br i1 %i.bj, label %_RNCNvMs4_NtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map5entryINtB7_11VacantEntryNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4node8NodeModeNtNtBb_7set_val9SetValZSTE12insert_entry0B1w_.exit.i.i, label %bb.z, !prof !119

bb.z:                                             ; preds = %bb.y
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @108, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @112) #27, !noalias !3569
  unreachable

_RNCNvMs4_NtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map5entryINtB7_11VacantEntryNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4node8NodeModeNtNtBb_7set_val9SetValZSTE12insert_entry0B1w_.exit.i.i: ; preds = %bb.y
  %i.bk = zext nneg i16 %i.bi to i64              ; 2 uses
  %i.bl = add nuw nsw i16 %i.bi, 1
  store i16 %i.bl, ptr %i.bb, align 2, !noalias !3569
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bk
  store i8 %.sroa.11.0.lcssa.i.i, ptr %i.bn, align 1, !noalias !3569
  %i.bo = add nuw nsw i64 %i.bk, 1                ; 2 uses
end_hunk_3
