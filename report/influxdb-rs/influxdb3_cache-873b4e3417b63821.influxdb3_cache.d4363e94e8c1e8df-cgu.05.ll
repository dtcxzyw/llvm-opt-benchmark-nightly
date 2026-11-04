Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_cache-873b4e3417b63821.influxdb3_cache.d4363e94e8c1e8df-cgu.05?download=true
inline.NumInlined: 772
inline.NumDeleted: 421
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvMs4_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_8DebugSet7entriesINtNvXs2_NtCsaaj5M71uUq9_5bimap4hashINtB1b_9BiHashMapppppENtB8_5Debug3fmt13EntryDebuggerINtNtB1d_3mem3RefNtCsbFlE7Gjht9i_12influxdb3_id7TableIdEIB2t_INtNtCscdodAO9FK5_5alloc4sync3ArceEEEINtNtNtNtBa_4iter8adapters3map3MapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map4IterB2s_B3m_ENCNvXs2_B1b_IB1D_B2J_B3r_NtNtCs3L39Jvi82fL_5ahash12random_state11RandomStateB60_EB1Y_3fmt0EECsidB8gjke19X_15influxdb3_cache:bb.a
; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs4_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_8DebugSet7entriesINtNvXs2_NtCsaaj5M71uUq9_5bimap4hashINtB1b_9BiHashMapppppENtB8_5Debug3fmt13EntryDebuggerINtNtB1d_3mem3RefNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdEIB2t_INtNtCscdodAO9FK5_5alloc4sync3ArceEEEINtNtNtNtBa_4iter8adapters3map3MapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map4IterB2s_B3o_ENCNvXs2_B1b_IB1D_B2J_B3t_NtNtCs3L39Jvi82fL_5ahash12random_state11RandomStateB62_EB1Y_3fmt0EECsidB8gjke19X_15influxdb3_cache(ptr noalias noundef returned align 8 dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [40 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !167, !noundef !3
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %i.g = call noundef ptr @_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTINtNtCsaaj5M71uUq9_5bimap3mem3RefNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdEIBW_INtNtCscdodAO9FK5_5alloc4sync3ArceEEEE9next_implKb0_ECsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b) ; 3 uses
  %i.h = load i64, ptr %i.c, align 8, !alias.scope !167, !noundef !3
  %i.i = add i64 %i.h, -1
  store i64 %i.i, ptr %i.c, align 8, !alias.scope !167
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds i8, ptr %i.g, i64 -16
  %i.k = getelementptr inbounds i8, ptr %i.g, i64 -8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.j, ptr %i.a, align 8
  store ptr %i.k, ptr %i.f, align 8
  %i.l = call noundef nonnull align 8 ptr @_RNvMs4_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_8DebugSet5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @8) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.m = load i64, ptr %i.c, align 8, !alias.scope !167, !noundef !3
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.c, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs4_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_8DebugSet7entriesRINtNtCscdodAO9FK5_5alloc4sync3ArcDNtNtCs3bxdDoT6cu5_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EINtNtCsc96bKABWO34_9hashbrown3set4IterB13_EECsidB8gjke19X_15influxdb3_cache(ptr noalias noundef returned align 8 dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %.sroa.88.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.88.0.copyload = load i64, ptr %.sroa.88.0..sroa_idx, align 8, !alias.scope !177 ; 2 uses
  %i.b = icmp eq i64 %.sroa.88.0.copyload, 0
  br i1 %i.b, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.67.0.copyload = load i16, ptr %.sroa.67.0..sroa_idx, align 8, !alias.scope !177
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !177
  %.sroa.06.0.copyload = load ptr, ptr %1, align 8, !alias.scope !177
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.loopexit
  %.sroa.0.019 = phi ptr [ %.sroa.0.1, %.loopexit ], [ %.sroa.06.0.copyload, %.lr.ph.preheader ] ; 2 uses
  %.sroa.6.018 = phi ptr [ %.sroa.6.1, %.loopexit ], [ %.sroa.4.0.copyload, %.lr.ph.preheader ] ; 2 uses
  %.sroa.84.017 = phi i16 [ %i.k, %.loopexit ], [ %.sroa.67.0.copyload, %.lr.ph.preheader ] ; 2 uses
  %.sroa.105.016 = phi i64 [ %i.n, %.loopexit ], [ %.sroa.88.0.copyload, %.lr.ph.preheader ]
  %.not11.i.i.i = icmp eq i16 %.sroa.84.017, 0
  br i1 %.not11.i.i.i, label %.lr.ph.i.i.i, label %.loopexit

.lr.ph.i.i.i:                                     ; preds = %.lr.ph, %.lr.ph.i.i.i
  %i.c = phi ptr [ %i.g, %.lr.ph.i.i.i ], [ %.sroa.6.018, %.lr.ph ] ; 2 uses
  %i.d = phi ptr [ %i.f, %.lr.ph.i.i.i ], [ %.sroa.0.019, %.lr.ph ]
  %.val79.i.i.i = load <16 x i8>, ptr %i.c, align 16, !noalias !178
  %i.e = icmp sgt <16 x i8> %.val79.i.i.i, splat (i8 -1)
  %i.f = getelementptr inbounds i8, ptr %i.d, i64 -256 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.e to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.i.i, %.lr.ph
  %.sroa.6.1 = phi ptr [ %.sroa.6.018, %.lr.ph ], [ %i.g, %.lr.ph.i.i.i ]
  %.sroa.0.1 = phi ptr [ %.sroa.0.019, %.lr.ph ], [ %i.f, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.84.017, %.lr.ph ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.h = add i16 %.lcssa.i.i.i, -1
  %i.i = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.j = zext nneg i16 %i.i to i64
  %i.k = and i16 %i.h, %.lcssa.i.i.i
  %i.l = sub nsw i64 0, %i.j
  %i.m = getelementptr inbounds [16 x i8], ptr %.sroa.0.1, i64 %i.l
  %i.n = add i64 %.sroa.105.016, -1               ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 -16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.o, ptr %i.a, align 8
  %i.p = call noundef nonnull align 8 ptr @_RNvMs4_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_8DebugSet5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @9) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.q = icmp eq i64 %i.n, 0
  br i1 %i.q, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs4_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_8DebugSet7entriesRINtNtCscdodAO9FK5_5alloc4sync3ArcDNtNtCs3bxdDoT6cu5_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EINtNtNtCs96Uix8yqi9Q_8indexmap3set4iter4IterB13_EECsidB8gjke19X_15influxdb3_cache(ptr noalias noundef returned align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.07 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.07, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.07, ptr %i.a, align 8
  %i.d = call noundef nonnull align 8 ptr @_RNvMs4_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_8DebugSet5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @9) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs4_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_8DebugSet7entriesRNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3set4IterB13_EEB19_(ptr noalias noundef returned align 8 dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  %i.c = call noundef align 8 ptr @_RNvXsu_NtNtNtCscdodAO9FK5_5alloc11collections5btree3setINtB5_4IterNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB18_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b) ; 2 uses
  %.not4 = icmp eq ptr %i.c, null
  br i1 %.not4, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.d = phi ptr [ %i.f, %.lr.ph ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.e = call noundef nonnull align 8 ptr @_RNvMs4_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_8DebugSet5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @10) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.f = call noundef align 8 ptr @_RNvXsu_NtNtNtCscdodAO9FK5_5alloc11collections5btree3setINtB5_4IterNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB18_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b) ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs4_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_8DebugSet7entriesRNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5ValueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3set4IterB13_EEB19_(ptr noalias noundef returned align 8 dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  %i.c = call noundef align 8 ptr @_RNvXsu_NtNtNtCscdodAO9FK5_5alloc11collections5btree3setINtB5_4IterNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5ValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB18_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b) ; 2 uses
  %.not4 = icmp eq ptr %i.c, null
  br i1 %.not4, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.d = phi ptr [ %i.f, %.lr.ph ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.e = call noundef nonnull align 8 ptr @_RNvMs4_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_8DebugSet5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @11) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.f = call noundef align 8 ptr @_RNvXsu_NtNtNtCscdodAO9FK5_5alloc11collections5btree3setINtB5_4IterNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5ValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB18_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b) ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRINtCsamjPIc071P4_6metric17ObservationBucketyEINtNtNtBa_5slice4iter4IterB14_EECsidB8gjke19X_15influxdb3_cache(ptr noalias noundef returned align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %i.d = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @12) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRINtNtBa_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEINtNtNtNtB1u_11collections9vec_deque4iter4IterB14_EECsidB8gjke19X_15influxdb3_cache(ptr noalias noundef returned align 8 dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %.sroa.07.0.copyload = load i64, ptr %1, align 8, !alias.scope !182
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !182
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !182
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !182
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.sroa.12.0 = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %.sroa.12.1, %bb.d ] ; 3 uses
  %.sroa.10.0 = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %.sroa.10.1, %bb.d ] ; 3 uses
  %.sroa.7.0 = phi i64 [ %.sroa.4.0.copyload, %bb.a ], [ %.sroa.7.1, %bb.d ] ; 4 uses
  %.sroa.0.0 = phi i64 [ %.sroa.07.0.copyload, %bb.a ], [ %2, %bb.d ] ; 2 uses
  %i.b = icmp eq i64 %.sroa.0.0, %.sroa.7.0
  br i1 %i.b, label %bb.c, label %_RNvXs2_NtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iterINtB5_4IterINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtBb_6string6StringEENtNtNtNtB1c_4iter6traits8iterator8Iterator4nextCsidB8gjke19X_15influxdb3_cache.exit

bb.c:                                             ; preds = %bb.b
  %i.c = icmp eq i64 %.sroa.10.0, %.sroa.12.0
  br i1 %i.c, label %_RNvXs2_NtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iterINtB5_4IterINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtBb_6string6StringEENtNtNtNtB1c_4iter6traits8iterator8Iterator4nextCsidB8gjke19X_15influxdb3_cache.exit.thread, label %_RNvXs2_NtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iterINtB5_4IterINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtBb_6string6StringEENtNtNtNtB1c_4iter6traits8iterator8Iterator4nextCsidB8gjke19X_15influxdb3_cache.exit

_RNvXs2_NtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iterINtB5_4IterINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtBb_6string6StringEENtNtNtNtB1c_4iter6traits8iterator8Iterator4nextCsidB8gjke19X_15influxdb3_cache.exit: ; preds = %bb.b, %bb.c
  %.sroa.12.1 = phi i64 [ %.sroa.7.0, %bb.c ], [ %.sroa.12.0, %bb.b ]
  %.sroa.10.1 = phi i64 [ %.sroa.7.0, %bb.c ], [ %.sroa.10.0, %bb.b ]
  %.sroa.7.1 = phi i64 [ %.sroa.12.0, %bb.c ], [ %.sroa.7.0, %bb.b ]
  %.sink6.i.in = phi i64 [ %.sroa.10.0, %bb.c ], [ %.sroa.0.0, %bb.b ] ; 2 uses
  %.not = icmp eq i64 %.sink6.i.in, 0
  br i1 %.not, label %_RNvXs2_NtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iterINtB5_4IterINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtBb_6string6StringEENtNtNtNtB1c_4iter6traits8iterator8Iterator4nextCsidB8gjke19X_15influxdb3_cache.exit.thread, label %bb.d

bb.d:                                             ; preds = %_RNvXs2_NtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iterINtB5_4IterINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtBb_6string6StringEENtNtNtNtB1c_4iter6traits8iterator8Iterator4nextCsidB8gjke19X_15influxdb3_cache.exit
  %.sink6.i = inttoptr i64 %.sink6.i.in to ptr    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sink6.i, i64 24
  %2 = ptrtoint ptr %i.d to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sink6.i, ptr %i.a, align 8
  %i.e = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @13) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b

_RNvXs2_NtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iterINtB5_4IterINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtBb_6string6StringEENtNtNtNtB1c_4iter6traits8iterator8Iterator4nextCsidB8gjke19X_15influxdb3_cache.exit.thread: ; preds = %bb.c, %_RNvXs2_NtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iterINtB5_4IterINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtBb_6string6StringEENtNtNtNtB1c_4iter6traits8iterator8Iterator4nextCsidB8gjke19X_15influxdb3_cache.exit
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRINtNtBa_6option6OptionbEINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterB14_EECsidB8gjke19X_15influxdb3_cache(ptr noalias noundef returned align 8 dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %.sroa.07.0.copyload = load i64, ptr %1, align 8, !alias.scope !186
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !186
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !186
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !186
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.sroa.12.0 = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %.sroa.12.1, %bb.d ] ; 3 uses
  %.sroa.10.0 = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %.sroa.10.1, %bb.d ] ; 3 uses
  %.sroa.7.0 = phi i64 [ %.sroa.4.0.copyload, %bb.a ], [ %.sroa.7.1, %bb.d ] ; 4 uses
  %.sroa.0.0 = phi i64 [ %.sroa.07.0.copyload, %bb.a ], [ %2, %bb.d ] ; 2 uses
  %i.b = icmp eq i64 %.sroa.0.0, %.sroa.7.0
  br i1 %i.b, label %bb.c, label %_RNvXs2_NtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iterINtB5_4IterINtNtCs4NRVxsYgnAr_4core6option6OptionbEENtNtNtNtB1c_4iter6traits8iterator8Iterator4nextCsidB8gjke19X_15influxdb3_cache.exit

bb.c:                                             ; preds = %bb.b
  %i.c = icmp eq i64 %.sroa.10.0, %.sroa.12.0
  br i1 %i.c, label %_RNvXs2_NtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iterINtB5_4IterINtNtCs4NRVxsYgnAr_4core6option6OptionbEENtNtNtNtB1c_4iter6traits8iterator8Iterator4nextCsidB8gjke19X_15influxdb3_cache.exit.thread, label %_RNvXs2_NtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iterINtB5_4IterINtNtCs4NRVxsYgnAr_4core6option6OptionbEENtNtNtNtB1c_4iter6traits8iterator8Iterator4nextCsidB8gjke19X_15influxdb3_cache.exit

_RNvXs2_NtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iterINtB5_4IterINtNtCs4NRVxsYgnAr_4core6option6OptionbEENtNtNtNtB1c_4iter6traits8iterator8Iterator4nextCsidB8gjke19X_15influxdb3_cache.exit: ; preds = %bb.b, %bb.c
  %.sroa.12.1 = phi i64 [ %.sroa.7.0, %bb.c ], [ %.sroa.12.0, %bb.b ]
  %.sroa.10.1 = phi i64 [ %.sroa.7.0, %bb.c ], [ %.sroa.10.0, %bb.b ]
  %.sroa.7.1 = phi i64 [ %.sroa.12.0, %bb.c ], [ %.sroa.7.0, %bb.b ]
  %.sink6.i.in = phi i64 [ %.sroa.10.0, %bb.c ], [ %.sroa.0.0, %bb.b ] ; 2 uses
  %.not = icmp eq i64 %.sink6.i.in, 0
  br i1 %.not, label %_RNvXs2_NtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iterINtB5_4IterINtNtCs4NRVxsYgnAr_4core6option6OptionbEENtNtNtNtB1c_4iter6traits8iterator8Iterator4nextCsidB8gjke19X_15influxdb3_cache.exit.thread, label %bb.d

bb.d:                                             ; preds = %_RNvXs2_NtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iterINtB5_4IterINtNtCs4NRVxsYgnAr_4core6option6OptionbEENtNtNtNtB1c_4iter6traits8iterator8Iterator4nextCsidB8gjke19X_15influxdb3_cache.exit
  %.sink6.i = inttoptr i64 %.sink6.i.in to ptr    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sink6.i, i64 1
  %2 = ptrtoint ptr %i.d to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sink6.i, ptr %i.a, align 8
  %i.e = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @14) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b

_RNvXs2_NtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iterINtB5_4IterINtNtCs4NRVxsYgnAr_4core6option6OptionbEENtNtNtNtB1c_4iter6traits8iterator8Iterator4nextCsidB8gjke19X_15influxdb3_cache.exit.thread: ; preds = %bb.c, %_RNvXs2_NtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iterINtB5_4IterINtNtCs4NRVxsYgnAr_4core6option6OptionbEENtNtNtNtB1c_4iter6traits8iterator8Iterator4nextCsidB8gjke19X_15influxdb3_cache.exit
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRINtNtBa_6option6OptiondEINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterB14_EECsidB8gjke19X_15influxdb3_cache(ptr noalias noundef returned align 8 dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %.sroa.07.0.copyload = load i64, ptr %1, align 8, !alias.scope !190
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !190
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !190
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !190
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.sroa.12.0 = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %.sroa.12.1, %bb.d ] ; 3 uses
  %.sroa.10.0 = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %.sroa.10.1, %bb.d ] ; 3 uses
  %.sroa.7.0 = phi i64 [ %.sroa.4.0.copyload, %bb.a ], [ %.sroa.7.1, %bb.d ] ; 4 uses
  %.sroa.0.0 = phi i64 [ %.sroa.07.0.copyload, %bb.a ], [ %2, %bb.d ] ; 2 uses
  %i.b = icmp eq i64 %.sroa.0.0, %.sroa.7.0
  br i1 %i.b, label %bb.c, label %_RNvXs2_NtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iterINtB5_4IterINtNtCs4NRVxsYgnAr_4core6option6OptiondEENtNtNtNtB1c_4iter6traits8iterator8Iterator4nextCsidB8gjke19X_15influxdb3_cache.exit

bb.c:                                             ; preds = %bb.b
  %i.c = icmp eq i64 %.sroa.10.0, %.sroa.12.0
  br i1 %i.c, label %_RNvXs2_NtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iterINtB5_4IterINtNtCs4NRVxsYgnAr_4core6option6OptiondEENtNtNtNtB1c_4iter6traits8iterator8Iterator4nextCsidB8gjke19X_15influxdb3_cache.exit.thread, label %_RNvXs2_NtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iterINtB5_4IterINtNtCs4NRVxsYgnAr_4core6option6OptiondEENtNtNtNtB1c_4iter6traits8iterator8Iterator4nextCsidB8gjke19X_15influxdb3_cache.exit

_RNvXs2_NtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iterINtB5_4IterINtNtCs4NRVxsYgnAr_4core6option6OptiondEENtNtNtNtB1c_4iter6traits8iterator8Iterator4nextCsidB8gjke19X_15influxdb3_cache.exit: ; preds = %bb.b, %bb.c
  %.sroa.12.1 = phi i64 [ %.sroa.7.0, %bb.c ], [ %.sroa.12.0, %bb.b ]
  %.sroa.10.1 = phi i64 [ %.sroa.7.0, %bb.c ], [ %.sroa.10.0, %bb.b ]
  %.sroa.7.1 = phi i64 [ %.sroa.12.0, %bb.c ], [ %.sroa.7.0, %bb.b ]
  %.sink6.i.in = phi i64 [ %.sroa.10.0, %bb.c ], [ %.sroa.0.0, %bb.b ] ; 2 uses
  %.not = icmp eq i64 %.sink6.i.in, 0
  br i1 %.not, label %_RNvXs2_NtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iterINtB5_4IterINtNtCs4NRVxsYgnAr_4core6option6OptiondEENtNtNtNtB1c_4iter6traits8iterator8Iterator4nextCsidB8gjke19X_15influxdb3_cache.exit.thread, label %bb.d

bb.d:                                             ; preds = %_RNvXs2_NtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iterINtB5_4IterINtNtCs4NRVxsYgnAr_4core6option6OptiondEENtNtNtNtB1c_4iter6traits8iterator8Iterator4nextCsidB8gjke19X_15influxdb3_cache.exit
  %.sink6.i = inttoptr i64 %.sink6.i.in to ptr    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sink6.i, i64 16
  %2 = ptrtoint ptr %i.d to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sink6.i, ptr %i.a, align 8
  %i.e = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @15) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b

_RNvXs2_NtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iterINtB5_4IterINtNtCs4NRVxsYgnAr_4core6option6OptiondEENtNtNtNtB1c_4iter6traits8iterator8Iterator4nextCsidB8gjke19X_15influxdb3_cache.exit.thread: ; preds = %bb.c, %_RNvXs2_NtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iterINtB5_4IterINtNtCs4NRVxsYgnAr_4core6option6OptiondEENtNtNtNtB1c_4iter6traits8iterator8Iterator4nextCsidB8gjke19X_15influxdb3_cache.exit
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRINtNtBa_6option6OptionxEINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterB14_EECsidB8gjke19X_15influxdb3_cache(ptr noalias noundef returned align 8 dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %.sroa.07.0.copyload = load i64, ptr %1, align 8, !alias.scope !194
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !194
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !194
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !194
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.sroa.12.0 = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %.sroa.12.1, %bb.d ] ; 3 uses
  %.sroa.10.0 = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %.sroa.10.1, %bb.d ] ; 3 uses
  %.sroa.7.0 = phi i64 [ %.sroa.4.0.copyload, %bb.a ], [ %.sroa.7.1, %bb.d ] ; 4 uses
  %.sroa.0.0 = phi i64 [ %.sroa.07.0.copyload, %bb.a ], [ %2, %bb.d ] ; 2 uses
  %i.b = icmp eq i64 %.sroa.0.0, %.sroa.7.0
  br i1 %i.b, label %bb.c, label %_RNvXs2_NtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iterINtB5_4IterINtNtCs4NRVxsYgnAr_4core6option6OptionxEENtNtNtNtB1c_4iter6traits8iterator8Iterator4nextCsidB8gjke19X_15influxdb3_cache.exit

bb.c:                                             ; preds = %bb.b
  %i.c = icmp eq i64 %.sroa.10.0, %.sroa.12.0
  br i1 %i.c, label %_RNvXs2_NtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iterINtB5_4IterINtNtCs4NRVxsYgnAr_4core6option6OptionxEENtNtNtNtB1c_4iter6traits8iterator8Iterator4nextCsidB8gjke19X_15influxdb3_cache.exit.thread, label %_RNvXs2_NtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iterINtB5_4IterINtNtCs4NRVxsYgnAr_4core6option6OptionxEENtNtNtNtB1c_4iter6traits8iterator8Iterator4nextCsidB8gjke19X_15influxdb3_cache.exit

_RNvXs2_NtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iterINtB5_4IterINtNtCs4NRVxsYgnAr_4core6option6OptionxEENtNtNtNtB1c_4iter6traits8iterator8Iterator4nextCsidB8gjke19X_15influxdb3_cache.exit: ; preds = %bb.b, %bb.c
  %.sroa.12.1 = phi i64 [ %.sroa.7.0, %bb.c ], [ %.sroa.12.0, %bb.b ]
  %.sroa.10.1 = phi i64 [ %.sroa.7.0, %bb.c ], [ %.sroa.10.0, %bb.b ]
  %.sroa.7.1 = phi i64 [ %.sroa.12.0, %bb.c ], [ %.sroa.7.0, %bb.b ]
  %.sink6.i.in = phi i64 [ %.sroa.10.0, %bb.c ], [ %.sroa.0.0, %bb.b ] ; 2 uses
  %.not = icmp eq i64 %.sink6.i.in, 0
  br i1 %.not, label %_RNvXs2_NtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iterINtB5_4IterINtNtCs4NRVxsYgnAr_4core6option6OptionxEENtNtNtNtB1c_4iter6traits8iterator8Iterator4nextCsidB8gjke19X_15influxdb3_cache.exit.thread, label %bb.d

bb.d:                                             ; preds = %_RNvXs2_NtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iterINtB5_4IterINtNtCs4NRVxsYgnAr_4core6option6OptionxEENtNtNtNtB1c_4iter6traits8iterator8Iterator4nextCsidB8gjke19X_15influxdb3_cache.exit
  %.sink6.i = inttoptr i64 %.sink6.i.in to ptr    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sink6.i, i64 16
  %2 = ptrtoint ptr %i.d to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sink6.i, ptr %i.a, align 8
  %i.e = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @16) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b

_RNvXs2_NtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iterINtB5_4IterINtNtCs4NRVxsYgnAr_4core6option6OptionxEENtNtNtNtB1c_4iter6traits8iterator8Iterator4nextCsidB8gjke19X_15influxdb3_cache.exit.thread: ; preds = %bb.c, %_RNvXs2_NtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iterINtB5_4IterINtNtCs4NRVxsYgnAr_4core6option6OptionxEENtNtNtNtB1c_4iter6traits8iterator8Iterator4nextCsidB8gjke19X_15influxdb3_cache.exit
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRINtNtBa_6option6OptionyEINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterB14_EECsidB8gjke19X_15influxdb3_cache(ptr noalias noundef returned align 8 dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %.sroa.07.0.copyload = load i64, ptr %1, align 8, !alias.scope !198
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !198
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !198
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !198
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.sroa.12.0 = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %.sroa.12.1, %bb.d ] ; 3 uses
  %.sroa.10.0 = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %.sroa.10.1, %bb.d ] ; 3 uses
  %.sroa.7.0 = phi i64 [ %.sroa.4.0.copyload, %bb.a ], [ %.sroa.7.1, %bb.d ] ; 4 uses
  %.sroa.0.0 = phi i64 [ %.sroa.07.0.copyload, %bb.a ], [ %2, %bb.d ] ; 2 uses
  %i.b = icmp eq i64 %.sroa.0.0, %.sroa.7.0
  br i1 %i.b, label %bb.c, label %_RNvXs2_NtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iterINtB5_4IterINtNtCs4NRVxsYgnAr_4core6option6OptionyEENtNtNtNtB1c_4iter6traits8iterator8Iterator4nextCsidB8gjke19X_15influxdb3_cache.exit

bb.c:                                             ; preds = %bb.b
  %i.c = icmp eq i64 %.sroa.10.0, %.sroa.12.0
  br i1 %i.c, label %_RNvXs2_NtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iterINtB5_4IterINtNtCs4NRVxsYgnAr_4core6option6OptionyEENtNtNtNtB1c_4iter6traits8iterator8Iterator4nextCsidB8gjke19X_15influxdb3_cache.exit.thread, label %_RNvXs2_NtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iterINtB5_4IterINtNtCs4NRVxsYgnAr_4core6option6OptionyEENtNtNtNtB1c_4iter6traits8iterator8Iterator4nextCsidB8gjke19X_15influxdb3_cache.exit

_RNvXs2_NtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iterINtB5_4IterINtNtCs4NRVxsYgnAr_4core6option6OptionyEENtNtNtNtB1c_4iter6traits8iterator8Iterator4nextCsidB8gjke19X_15influxdb3_cache.exit: ; preds = %bb.b, %bb.c
  %.sroa.12.1 = phi i64 [ %.sroa.7.0, %bb.c ], [ %.sroa.12.0, %bb.b ]
  %.sroa.10.1 = phi i64 [ %.sroa.7.0, %bb.c ], [ %.sroa.10.0, %bb.b ]
  %.sroa.7.1 = phi i64 [ %.sroa.12.0, %bb.c ], [ %.sroa.7.0, %bb.b ]
  %.sink6.i.in = phi i64 [ %.sroa.10.0, %bb.c ], [ %.sroa.0.0, %bb.b ] ; 2 uses
  %.not = icmp eq i64 %.sink6.i.in, 0
  br i1 %.not, label %_RNvXs2_NtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iterINtB5_4IterINtNtCs4NRVxsYgnAr_4core6option6OptionyEENtNtNtNtB1c_4iter6traits8iterator8Iterator4nextCsidB8gjke19X_15influxdb3_cache.exit.thread, label %bb.d

bb.d:                                             ; preds = %_RNvXs2_NtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iterINtB5_4IterINtNtCs4NRVxsYgnAr_4core6option6OptionyEENtNtNtNtB1c_4iter6traits8iterator8Iterator4nextCsidB8gjke19X_15influxdb3_cache.exit
  %.sink6.i = inttoptr i64 %.sink6.i.in to ptr    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sink6.i, i64 16
  %2 = ptrtoint ptr %i.d to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sink6.i, ptr %i.a, align 8
  %i.e = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @17) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b

_RNvXs2_NtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iterINtB5_4IterINtNtCs4NRVxsYgnAr_4core6option6OptionyEENtNtNtNtB1c_4iter6traits8iterator8Iterator4nextCsidB8gjke19X_15influxdb3_cache.exit.thread: ; preds = %bb.c, %_RNvXs2_NtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iterINtB5_4IterINtNtCs4NRVxsYgnAr_4core6option6OptionyEENtNtNtNtB1c_4iter6traits8iterator8Iterator4nextCsidB8gjke19X_15influxdb3_cache.exit
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchEINtNtNtBa_5slice4iter4IterB14_EECsidB8gjke19X_15influxdb3_cache(ptr noalias noundef returned align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.07 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.07, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.07, ptr %i.a, align 8
  %i.d = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @18) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRINtNtCscdodAO9FK5_5alloc4sync3ArcDNtNtCs3bxdDoT6cu5_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EINtNtNtBa_5slice4iter4IterB14_EECsidB8gjke19X_15influxdb3_cache(ptr noalias noundef returned align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %i.d = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @9) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRINtNtCscdodAO9FK5_5alloc4sync3ArcDNtNtCs6ePPILGZvJ2_11arrow_array5array5ArrayEL_EINtNtNtBa_5slice4iter4IterB14_EECsidB8gjke19X_15influxdb3_cache(ptr noalias noundef returned align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %i.d = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @19) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRINtNtCscdodAO9FK5_5alloc4sync3ArceEINtNtNtBa_5slice4iter4IterB14_EECsidB8gjke19X_15influxdb3_cache(ptr noalias noundef returned align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %i.d = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @20) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierINtNtNtBa_5slice4iter4IterB14_EECsidB8gjke19X_15influxdb3_cache(ptr noalias noundef returned align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.07 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.07, i64 6 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.07, ptr %i.a, align 8
  %i.d = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @21) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRNtCsbFlE7Gjht9i_12influxdb3_id5TagIdINtNtNtBa_5slice4iter4IterB14_EECsidB8gjke19X_15influxdb3_cache(ptr noalias noundef returned align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.07 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.07, i64 2 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.07, ptr %i.a, align 8
  %i.d = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @22) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdINtNtNtBa_5slice4iter4IterB14_EECsidB8gjke19X_15influxdb3_cache(ptr noalias noundef returned align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.07 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.07, i64 4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.07, ptr %i.a, align 8
  %i.d = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdINtNtNtBa_5slice4iter4IterB14_EECsidB8gjke19X_15influxdb3_cache(ptr noalias noundef returned align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.07 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.07, i64 2 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.07, ptr %i.a, align 8
  %i.d = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @24) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtBa_4time8DurationINtNtNtBa_5slice4iter4IterB14_EECsidB8gjke19X_15influxdb3_cache(ptr noalias noundef returned align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %i.d = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @25) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCs3bxdDoT6cu5_31datafusion_physical_expr_common9sort_expr11LexOrderingINtNtNtBa_5slice4iter4IterB14_EECsidB8gjke19X_15influxdb3_cache(ptr noalias noundef returned align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.07 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.07, i64 56 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.07, ptr %i.a, align 8
  %i.d = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @26) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCs3bxdDoT6cu5_31datafusion_physical_expr_common9sort_expr16PhysicalSortExprINtNtNtBa_5slice4iter4IterB14_EECsidB8gjke19X_15influxdb3_cache(ptr noalias noundef returned align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.07 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.07, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.07, ptr %i.a, align 8
  %i.d = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @27) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchINtNtNtBa_5slice4iter4IterB14_EECsidB8gjke19X_15influxdb3_cache(ptr noalias noundef returned align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.07 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.07, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.07, ptr %i.a, align 8
  %i.d = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @28) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCslWccy9wMl4f_17datafusion_common23functional_dependencies10ConstraintINtNtNtBa_5slice4iter4IterB14_EECsidB8gjke19X_15influxdb3_cache(ptr noalias noundef returned align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.07 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.07, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.07, ptr %i.a, align 8
  %i.d = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @29) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCsbmokjIbagls_24datafusion_physical_expr11equivalence5class16EquivalenceClassINtNtNtBa_5slice4iter4IterB14_EECsidB8gjke19X_15influxdb3_cache(ptr noalias noundef returned align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.07 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.07, i64 144 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.07, ptr %i.a, align 8
  %i.d = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @30) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRjINtNtNtBa_5slice4iter4IterjEECsidB8gjke19X_15influxdb3_cache(ptr noalias noundef returned align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.07 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.07, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.07, ptr %i.a, align 8
  %i.d = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @31) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRxINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterxEECsidB8gjke19X_15influxdb3_cache(ptr noalias noundef returned align 8 dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %.sroa.07.0.copyload = load i64, ptr %1, align 8, !alias.scope !202
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !202
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !202
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !202
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.sroa.12.0 = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %.sroa.12.1, %bb.d ] ; 3 uses
  %.sroa.10.0 = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %.sroa.10.1, %bb.d ] ; 3 uses
  %.sroa.7.0 = phi i64 [ %.sroa.4.0.copyload, %bb.a ], [ %.sroa.7.1, %bb.d ] ; 4 uses
  %.sroa.0.0 = phi i64 [ %.sroa.07.0.copyload, %bb.a ], [ %2, %bb.d ] ; 2 uses
  %i.b = icmp eq i64 %.sroa.0.0, %.sroa.7.0
  br i1 %i.b, label %bb.c, label %_RNvXs2_NtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iterINtB5_4IterxENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsidB8gjke19X_15influxdb3_cache.exit

bb.c:                                             ; preds = %bb.b
  %i.c = icmp eq i64 %.sroa.10.0, %.sroa.12.0
  br i1 %i.c, label %_RNvXs2_NtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iterINtB5_4IterxENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsidB8gjke19X_15influxdb3_cache.exit.thread, label %_RNvXs2_NtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iterINtB5_4IterxENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsidB8gjke19X_15influxdb3_cache.exit

_RNvXs2_NtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iterINtB5_4IterxENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsidB8gjke19X_15influxdb3_cache.exit: ; preds = %bb.b, %bb.c
  %.sroa.12.1 = phi i64 [ %.sroa.7.0, %bb.c ], [ %.sroa.12.0, %bb.b ]
  %.sroa.10.1 = phi i64 [ %.sroa.7.0, %bb.c ], [ %.sroa.10.0, %bb.b ]
  %.sroa.7.1 = phi i64 [ %.sroa.12.0, %bb.c ], [ %.sroa.7.0, %bb.b ]
  %.sink6.i.in = phi i64 [ %.sroa.10.0, %bb.c ], [ %.sroa.0.0, %bb.b ] ; 2 uses
  %.not = icmp eq i64 %.sink6.i.in, 0
  br i1 %.not, label %_RNvXs2_NtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iterINtB5_4IterxENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsidB8gjke19X_15influxdb3_cache.exit.thread, label %bb.d

bb.d:                                             ; preds = %_RNvXs2_NtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iterINtB5_4IterxENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsidB8gjke19X_15influxdb3_cache.exit
  %.sink6.i = inttoptr i64 %.sink6.i.in to ptr    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sink6.i, i64 8
  %2 = ptrtoint ptr %i.d to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sink6.i, ptr %i.a, align 8
  %i.e = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @32) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b

_RNvXs2_NtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iterINtB5_4IterxENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsidB8gjke19X_15influxdb3_cache.exit.thread: ; preds = %bb.c, %_RNvXs2_NtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iterINtB5_4IterxENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsidB8gjke19X_15influxdb3_cache.exit
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_8DebugMap7entriesRINtNtBa_6option6OptionNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5ValueERTxIB14_NtB1r_4NodeEEINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4IterB13_B2u_EEB1v_(ptr noalias noundef returned align 8 dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [72 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  %i.d = call { ptr, ptr } @_RNvXsk_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_4IterINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5ValueETxIB13_NtB1G_4NodeEEENtNtNtNtB17_4iter6traits8iterator8Iterator4nextB1K_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c) ; 2 uses
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
  %i.i = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_8DebugMap5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @33, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @34) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.j = call { ptr, ptr } @_RNvXsk_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_4IterINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5ValueETxIB13_NtB1G_4NodeEEENtNtNtNtB17_4iter6traits8iterator8Iterator4nextB1K_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c) ; 2 uses
  %i.k = extractvalue { ptr, ptr } %i.j, 0        ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_8DebugMap7entriesRINtNtCscdodAO9FK5_5alloc4sync3ArceERNtCsj9JzdWj4GcM_12arrow_schema11SortOptionsINtNtNtCs96Uix8yqi9Q_8indexmap3map4iter4IterB13_B1D_EECsidB8gjke19X_15influxdb3_cache(ptr noalias noundef returned align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.c = icmp eq ptr %1, %2
  br i1 %i.c, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.010 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.010, i64 32 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.010, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %.sroa.0.010, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.e, ptr %i.a, align 8
  %i.f = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_8DebugMap5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @20, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @36) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.g = icmp eq ptr %i.d, %2
  br i1 %i.g, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_8DebugMap7entriesRNtCsamjPIc071P4_6metric10AttributesRNtNtB15_5gauge8U64GaugeINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4IterB13_B1D_EECsidB8gjke19X_15influxdb3_cache(ptr noalias noundef returned align 8 dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [72 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  %i.d = call { ptr, ptr } @_RNvXsk_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_4IterNtCsamjPIc071P4_6metric10AttributesNtNtB14_5gauge8U64GaugeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c) ; 2 uses
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
  %i.i = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_8DebugMap5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @37, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @38) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.j = call { ptr, ptr } @_RNvXsk_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_4IterNtCsamjPIc071P4_6metric10AttributesNtNtB14_5gauge8U64GaugeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c) ; 2 uses
  %i.k = extractvalue { ptr, ptr } %i.j, 0        ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_8DebugMap7entriesRNtCsamjPIc071P4_6metric10AttributesRNtNtB15_7counter10U64CounterINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4IterB13_B1D_EECsidB8gjke19X_15influxdb3_cache(ptr noalias noundef returned align 8 dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [72 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  %i.d = call { ptr, ptr } @_RNvXsk_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_4IterNtCsamjPIc071P4_6metric10AttributesNtNtB14_7counter10U64CounterENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c) ; 2 uses
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
  %i.i = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_8DebugMap5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @37, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @39) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.j = call { ptr, ptr } @_RNvXsk_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_4IterNtCsamjPIc071P4_6metric10AttributesNtNtB14_7counter10U64CounterENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c) ; 2 uses
  %i.k = extractvalue { ptr, ptr } %i.j, 0        ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_8DebugMap7entriesRNtCsamjPIc071P4_6metric10AttributesRNtNtB15_8duration17DurationHistogramINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4IterB13_B1D_EECsidB8gjke19X_15influxdb3_cache(ptr noalias noundef returned align 8 dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [72 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  %i.d = call { ptr, ptr } @_RNvXsk_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_4IterNtCsamjPIc071P4_6metric10AttributesNtNtB14_8duration17DurationHistogramENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c) ; 2 uses
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
  %i.i = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_8DebugMap5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @37, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @40) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.j = call { ptr, ptr } @_RNvXsk_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_4IterNtCsamjPIc071P4_6metric10AttributesNtNtB14_8duration17DurationHistogramENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c) ; 2 uses
  %i.k = extractvalue { ptr, ptr } %i.j, 0        ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_8DebugMap7entriesRNtCsbFlE7Gjht9i_12influxdb3_id11LastCacheIdRINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5cache19LastCacheDefinitionEINtNtNtCs96Uix8yqi9Q_8indexmap3map4iter4IterB13_B1L_EECsidB8gjke19X_15influxdb3_cache(ptr noalias noundef returned align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.c = icmp eq ptr %1, %2
  br i1 %i.c, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.09 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.09, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.09, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.e, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.09, ptr %i.a, align 8
  %i.f = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_8DebugMap5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @41, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @42) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.g = icmp eq ptr %i.d, %2
  br i1 %i.g, label %._crit_edge, label %.lr.ph

end_hunk_0
