Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/salsa-rs/original/salsa-18876957f0a83274.salsa.72a3b6749c32557-cgu.13?download=true
inline.NumInlined: 216
inline.NumDeleted: 148
begin_hunk_0_@_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCsC8CapfvpQ1_5salsa12active_query11ActiveQueryINtNtNtBa_5slice4iter4IterB14_EEB18_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.07, ptr %i.a, align 8
  %i.d = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtNtNtBa_5slice4iter4IterB14_EEB18_(ptr noalias noundef returned align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.07 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.07, i64 12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.07, ptr %i.a, align 8
  %i.d = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCsC8CapfvpQ1_5salsa5cycle9CycleHeadINtNtNtBa_5slice4iter4IterB14_EEB18_(ptr noalias noundef returned align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %i.d = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @6) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterINtNtNtNtBa_4iter8adapters3map3MapINtNtCs36qfJazsBC0_6boxcar3vec4IterB14_ENCNvXsd_B2k_INtB2k_3VecB14_ENtB8_5Debug3fmt0EEB18_(ptr noalias noundef returned align 8 dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  %i.c = call { i64, ptr } @_RNvXs8_NtNtCs36qfJazsBC0_6boxcar3vec3rawINtB5_4IterNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBR_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.b)
  %i.d = extractvalue { i64, ptr } %i.c, 1        ; 2 uses
  %.not.i.i4 = icmp eq ptr %i.d, null
  br i1 %.not.i.i4, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.f = phi ptr [ %i.d, %.lr.ph ], [ %i.k, %bb.b ]
  %i.g = load i64, ptr %i.e, align 8, !alias.scope !30, !noundef !3
  %i.h = call i64 @llvm.usub.sat.i64(i64 %i.g, i64 1)
  store i64 %i.h, ptr %i.e, align 8, !alias.scope !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.f, ptr %i.a, align 8
  %i.i = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @7) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.j = call { i64, ptr } @_RNvXs8_NtNtCs36qfJazsBC0_6boxcar3vec3rawINtB5_4IterNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBR_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.b)
  %i.k = extractvalue { i64, ptr } %i.j, 1        ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCsgMW4BsFgQdt_9hashbrown3map4KeysB14_INtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB18_11accumulator11accumulated14AnyAccumulatedEL_EEEB18_(ptr noalias noundef returned align 8 dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %.sroa.88.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.88.0.copyload = load i64, ptr %.sroa.88.0..sroa_idx, align 8, !alias.scope !38 ; 2 uses
  %i.b = icmp eq i64 %.sroa.88.0.copyload, 0
  br i1 %i.b, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.67.0.copyload = load i16, ptr %.sroa.67.0..sroa_idx, align 8, !alias.scope !38
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !38
  %.sroa.06.0.copyload = load ptr, ptr %1, align 8, !alias.scope !38
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.loopexit
  %.sroa.0.019 = phi ptr [ %.sroa.0.1, %.loopexit ], [ %.sroa.06.0.copyload, %.lr.ph.preheader ] ; 2 uses
  %.sroa.6.018 = phi ptr [ %.sroa.6.1, %.loopexit ], [ %.sroa.4.0.copyload, %.lr.ph.preheader ] ; 2 uses
  %.sroa.84.017 = phi i16 [ %i.k, %.loopexit ], [ %.sroa.67.0.copyload, %.lr.ph.preheader ] ; 2 uses
  %.sroa.105.016 = phi i64 [ %i.n, %.loopexit ], [ %.sroa.88.0.copyload, %.lr.ph.preheader ]
  %.not11.i.i = icmp eq i16 %.sroa.84.017, 0
  br i1 %.not11.i.i, label %.lr.ph.i.i, label %.loopexit

.lr.ph.i.i:                                       ; preds = %.lr.ph, %.lr.ph.i.i
  %i.c = phi ptr [ %i.g, %.lr.ph.i.i ], [ %.sroa.6.018, %.lr.ph ] ; 2 uses
  %i.d = phi ptr [ %i.f, %.lr.ph.i.i ], [ %.sroa.0.019, %.lr.ph ]
  %.val79.i.i = load <16 x i8>, ptr %i.c, align 16, !noalias !39
  %i.e = icmp sgt <16 x i8> %.val79.i.i, splat (i8 -1)
  %i.f = getelementptr inbounds i8, ptr %i.d, i64 -384 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.cast.i.i = bitcast <16 x i1> %i.e to i16      ; 2 uses
  %.not.i.i = icmp eq i16 %.cast.i.i, 0
  br i1 %.not.i.i, label %.lr.ph.i.i, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.i, %.lr.ph
  %.sroa.6.1 = phi ptr [ %.sroa.6.018, %.lr.ph ], [ %i.g, %.lr.ph.i.i ]
  %.sroa.0.1 = phi ptr [ %.sroa.0.019, %.lr.ph ], [ %i.f, %.lr.ph.i.i ] ; 2 uses
  %.lcssa.i.i = phi i16 [ %.sroa.84.017, %.lr.ph ], [ %.cast.i.i, %.lr.ph.i.i ] ; 3 uses
  %i.h = add i16 %.lcssa.i.i, -1
  %i.i = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.j = zext nneg i16 %i.i to i64
  %i.k = and i16 %i.h, %.lcssa.i.i
  %i.l = sub nsw i64 0, %i.j
  %i.m = getelementptr inbounds [24 x i8], ptr %.sroa.0.1, i64 %i.l
  %i.n = add i64 %.sroa.105.016, -1               ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 -24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.o, ptr %i.a, align 8
  %i.p = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @8) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.q = icmp eq i64 %i.n, 0
  br i1 %i.q, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCsC8CapfvpQ1_5salsa8revision8RevisionINtNtNtBa_5slice4iter4IterB14_EEB18_(ptr noalias noundef returned align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %i.d = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @9) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdINtNtNtBa_5slice4iter4IterB14_EECsC8CapfvpQ1_5salsa(ptr noalias noundef returned align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %i.d = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @10) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB19_2id2IdERINtCsa3bo7ChGFM8_8thin_vec7ThinVecB14_EEB19_(ptr noalias noundef returned align 8 dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = tail call { ptr, ptr } @_RNvXsn_Csa3bo7ChGFM8_8thin_vecRINtB5_7ThinVecTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBM_2id2IdEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iterBM_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) ; 2 uses
  %i.c = extractvalue { ptr, ptr } %i.b, 0        ; 3 uses
  %i.d = extractvalue { ptr, ptr } %i.b, 1        ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.c), "nonnull"(ptr %i.d) ]
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.07 = phi ptr [ %i.f, %.lr.ph ], [ %i.c, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.07, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.07, ptr %i.a, align 8
  %i.g = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @11) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.h = icmp eq ptr %i.f, %i.d
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB19_2id2IdERSB14_EB19_(ptr noalias noundef returned align 8 dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 384307168202282326) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %.idx = mul nuw nsw i64 %2, 24
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.c = icmp eq i64 %2, 0
  br i1 %i.c, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.07, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.07, ptr %i.a, align 8
  %i.e = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @11) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.f = icmp eq ptr %i.d, %i.b
  br i1 %i.f, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_8DebugMap7entriesRNtNtCsC8CapfvpQ1_5salsa14tracked_struct12IdentityHashRNtB15_13DisambiguatorINtNtCsgMW4BsFgQdt_9hashbrown3map4IterB13_B1V_EEB17_(ptr noalias noundef returned align 8 dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %.sroa.810.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.810.0.copyload = load i64, ptr %.sroa.810.0..sroa_idx, align 8, !alias.scope !47 ; 2 uses
  %i.c = icmp eq i64 %.sroa.810.0.copyload, 0
  br i1 %i.c, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %.sroa.69.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.69.0.copyload = load i16, ptr %.sroa.69.0..sroa_idx, align 8, !alias.scope !47
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !47
  %.sroa.08.0.copyload = load ptr, ptr %1, align 8, !alias.scope !47
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
  %.val79.i.i = load <16 x i8>, ptr %i.d, align 16, !noalias !48
  %i.f = icmp sgt <16 x i8> %.val79.i.i, splat (i8 -1)
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 -384 ; 2 uses
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
  %i.n = getelementptr inbounds [24 x i8], ptr %.sroa.0.1, i64 %i.m ; 2 uses
  %i.o = add i64 %.sroa.107.019, -1               ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %i.n, i64 -24
  %i.q = getelementptr inbounds i8, ptr %i.n, i64 -8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.p, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.q, ptr %i.a, align 8
  %i.r = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_8DebugMap5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @12, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @13) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.s = icmp eq i64 %i.o, 0
  br i1 %i.s, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_8DebugMap7entriesRNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexRINtCsi1wr4QBDb3z_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_EINtNtNtNtB2t_11collections4hash3map4IterB13_B1N_EEB17_(ptr noalias noundef returned align 8 dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  %i.d = call { ptr, ptr } @_RNvXsG_NtCsgQfI1edjipl_9hashbrown3mapINtB5_4IterNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtCsi1wr4QBDb3z_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_EENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c) ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.d, 0        ; 2 uses
  %.not6 = icmp eq ptr %i.e, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.f = phi ptr [ %i.k, %.lr.ph ], [ %i.e, %bb.a ]
  %i.g = phi { ptr, ptr } [ %i.j, %.lr.ph ], [ %i.d, %bb.a ]
  %i.h = extractvalue { ptr, ptr } %i.g, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.f, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.h, ptr %i.a, align 8
  %i.i = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_8DebugMap5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @14) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.j = call { ptr, ptr } @_RNvXsG_NtCsgQfI1edjipl_9hashbrown3mapINtB5_4IterNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtCsi1wr4QBDb3z_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_EENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c) ; 2 uses
  %i.k = extractvalue { ptr, ptr } %i.j, 0        ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_8DebugMap7entriesRNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexRINtNtNtB17_7runtime16dependency_graph8SmallSetB13_Kj4_EINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map4IterB13_B1N_EEB17_(ptr noalias noundef returned align 8 dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  %i.d = call { ptr, ptr } @_RNvXsG_NtCsgQfI1edjipl_9hashbrown3mapINtB5_4IterNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtNtNtBO_7runtime16dependency_graph8SmallSetBK_Kj4_EENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c) ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.d, 0        ; 2 uses
  %.not6 = icmp eq ptr %i.e, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.f = phi ptr [ %i.k, %.lr.ph ], [ %i.e, %bb.a ]
  %i.g = phi { ptr, ptr } [ %i.j, %.lr.ph ], [ %i.d, %bb.a ]
  %i.h = extractvalue { ptr, ptr } %i.g, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.f, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.h, ptr %i.a, align 8
  %i.i = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_8DebugMap5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @15) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.j = call { ptr, ptr } @_RNvXsG_NtCsgQfI1edjipl_9hashbrown3mapINtB5_4IterNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtNtNtBO_7runtime16dependency_graph8SmallSetBK_Kj4_EENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c) ; 2 uses
  %i.k = extractvalue { ptr, ptr } %i.j, 0        ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_8DebugMap7entriesRNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexRTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdB13_EINtNtNtNtB1U_11collections4hash3map4IterB13_B1N_EEB17_(ptr noalias noundef returned align 8 dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  %i.d = call { ptr, ptr } @_RNvXsG_NtCsgQfI1edjipl_9hashbrown3mapINtB5_4IterNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBK_EENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c) ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.d, 0        ; 2 uses
  %.not6 = icmp eq ptr %i.e, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.f = phi ptr [ %i.k, %.lr.ph ], [ %i.e, %bb.a ]
  %i.g = phi { ptr, ptr } [ %i.j, %.lr.ph ], [ %i.d, %bb.a ]
  %i.h = extractvalue { ptr, ptr } %i.g, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.f, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.h, ptr %i.a, align 8
  %i.i = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_8DebugMap5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @16) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.j = call { ptr, ptr } @_RNvXsG_NtCsgQfI1edjipl_9hashbrown3mapINtB5_4IterNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBK_EENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c) ; 2 uses
  %i.k = extractvalue { ptr, ptr } %i.j, 0        ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_8DebugMap7entriesRNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdRNtNtCsC8CapfvpQ1_5salsa7runtime10WaitResultINtNtNtNtB19_11collections4hash3map4IterB13_B1L_EEB1P_(ptr noalias noundef returned align 8 dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  %i.d = call { ptr, ptr } @_RNvXsG_NtCsgQfI1edjipl_9hashbrown3mapINtB5_4IterNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtCsC8CapfvpQ1_5salsa7runtime10WaitResultENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1v_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c) ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.d, 0        ; 2 uses
  %.not6 = icmp eq ptr %i.e, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.f = phi ptr [ %i.k, %.lr.ph ], [ %i.e, %bb.a ]
  %i.g = phi { ptr, ptr } [ %i.j, %.lr.ph ], [ %i.d, %bb.a ]
  %i.h = extractvalue { ptr, ptr } %i.g, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.f, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.h, ptr %i.a, align 8
  %i.i = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_8DebugMap5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @10, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @17) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.j = call { ptr, ptr } @_RNvXsG_NtCsgQfI1edjipl_9hashbrown3mapINtB5_4IterNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtCsC8CapfvpQ1_5salsa7runtime10WaitResultENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1v_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c) ; 2 uses
  %i.k = extractvalue { ptr, ptr } %i.j, 0        ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_8DebugMap7entriesRNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdRNtNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph4edge4EdgeINtNtNtNtB19_11collections4hash3map4IterB13_B1L_EEB1T_(ptr noalias noundef returned align 8 dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  %i.d = call { ptr, ptr } @_RNvXsG_NtCsgQfI1edjipl_9hashbrown3mapINtB5_4IterNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph4edge4EdgeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1z_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c) ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.d, 0        ; 2 uses
  %.not6 = icmp eq ptr %i.e, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.f = phi ptr [ %i.k, %.lr.ph ], [ %i.e, %bb.a ]
  %i.g = phi { ptr, ptr } [ %i.j, %.lr.ph ], [ %i.d, %bb.a ]
  %i.h = extractvalue { ptr, ptr } %i.g, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.f, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.h, ptr %i.a, align 8
  %i.i = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_8DebugMap5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @10, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @18) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.j = call { ptr, ptr } @_RNvXsG_NtCsgQfI1edjipl_9hashbrown3mapINtB5_4IterNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph4edge4EdgeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1z_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c) ; 2 uses
  %i.k = extractvalue { ptr, ptr } %i.j, 0        ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1c_2id2IdEEEB1c_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBJ_2id2IdEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBJ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBQ_2id2IdEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBQ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1j_2id2IdEEEB1j_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBQ_2id2IdEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBQ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1j_2id2IdEEEB1j_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown5table5DrainNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryEEB1k_(ptr noalias noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMsn_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_7RawIterNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE13drop_elementsBR_(ptr noalias noundef nonnull align 8 dereferenceable(80) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !53, !noundef !3 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown3raw8RawDrainNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryEEB1l_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !alias.scope !53, !nonnull !3, !noundef !3
  %i.f = add i64 %i.c, 17
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.e, i8 -1, i64 %i.f, i1 false)
  %.pre.i.i = load i64, ptr %i.b, align 8, !alias.scope !53
  %.pre.fr.i.i = freeze i64 %.pre.i.i             ; 3 uses
  %i.g = icmp ult i64 %.pre.fr.i.i, 8
  %i.h = add i64 %.pre.fr.i.i, 1
  %i.i = lshr i64 %i.h, 3
  %i.j = mul nuw i64 %i.i, 7
  %spec.select.i.i = select i1 %i.g, i64 %.pre.fr.i.i, i64 %i.j
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown3raw8RawDrainNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryEEB1l_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown3raw8RawDrainNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryEEB1l_.exit: ; preds = %bb.a, %bb.b
  %i.k = phi i64 [ %spec.select.i.i, %bb.b ], [ 0, %bb.a ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 0, ptr %i.l, align 8, !alias.scope !53
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.k, ptr %i.m, align 8, !alias.scope !53
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !53, !nonnull !3, !noundef !3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBz_2id2IdE14swap_uncheckedBz_(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 0, 384307168202282326) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %4) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %2 ; 2 uses
  %i.c = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCsC8CapfvpQ1_5salsa8database12memory_usageDNtB4_8DatabaseEL_12memory_usage(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(136) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [72 x i8], align 8                ; 8 uses
  %i.d = alloca [88 x i8], align 8                ; 12 uses
  %.sroa.791 = alloca [80 x i8], align 8          ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 8 uses
  %i.f = alloca [32 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [32 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 11 uses
  %i.j = alloca [40 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96)
  %i.k = tail call noundef i64 @_RNvNtCs6UEBZ98iBCt_8foldhash4seed19gen_per_hasher_seed(), !noalias !96
  %i.l = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs6UEBZ98iBCt_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 48) acquire, align 8, !noalias !96
  %i.m = icmp eq i8 %i.l, 2
  br i1 %i.m, label %_RNvXs7_NtCsgMW4BsFgQdt_9hashbrown3mapINtB5_7HashMapReNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoENtNtCs4NRVxsYgnAr_4core7default7Default7defaultBV_.exit, label %bb.b, !prof !4

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtNtCs6UEBZ98iBCt_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow(), !noalias !96
  br label %_RNvXs7_NtCsgMW4BsFgQdt_9hashbrown3mapINtB5_7HashMapReNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoENtNtCs4NRVxsYgnAr_4core7default7Default7defaultBV_.exit

_RNvXs7_NtCsgMW4BsFgQdt_9hashbrown3mapINtB5_7HashMapReNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoENtNtCs4NRVxsYgnAr_4core7default7Default7defaultBV_.exit: ; preds = %bb.a, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 4 uses
  store i64 %i.k, ptr %i.n, align 8, !alias.scope !96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 8 dereferenceable(32) @20, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 0, ptr %i.i, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  store i64 0, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !invariant.load !3, !nonnull !3 ; 3 uses
  %i.s = invoke noundef nonnull align 8 ptr %i.r(ptr noundef nonnull %1)
          to label %bb.c unwind label %.thread120

.thread120:                                       ; preds = %bb.c, %_RNvXs7_NtCsgMW4BsFgQdt_9hashbrown3mapINtB5_7HashMapReNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoENtNtCs4NRVxsYgnAr_4core7default7Default7defaultBV_.exit
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.c:                                             ; preds = %_RNvXs7_NtCsgMW4BsFgQdt_9hashbrown3mapINtB5_7HashMapReNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoENtNtCs4NRVxsYgnAr_4core7default7Default7defaultBV_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 328
  invoke void @_RNvMs4_NtCsC8CapfvpQ1_5salsa5tableNtB5_5Table10page_infos(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.h, ptr noundef nonnull align 8 %i.t)
          to label %bb.d unwind label %.thread120

bb.d:                                             ; preds = %bb.c
  %i.u = invoke noundef nonnull align 8 ptr %i.r(ptr noundef nonnull %1)
          to label %bb.e unwind label %.loopexit.split-lp ; 0 uses

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8SlotInfoEEB1u_.exit: ; preds = %.loopexit, %.loopexit.split-lp, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8MemoInfoEEB1u_.exit
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8MemoInfoEEB1u_.exit ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexNtNtNtBT_8database12memory_usage8PageInfoEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBT_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %.thread unwind label %bb.ak

.loopexit:                                        ; preds = %bb.g, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8SlotInfoEEB1u_.exit62, %bb.m, %bb.n, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8SlotInfoENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB11_.exit.thread, %bb.r
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8SlotInfoEEB1u_.exit

.loopexit.split-lp:                               ; preds = %bb.d, %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8SlotInfoEEB1u_.exit

bb.e:                                             ; preds = %bb.d
  %i.v = invoke noundef nonnull align 8 ptr %i.r(ptr noundef nonnull %1)
          to label %bb.f unwind label %.loopexit.split-lp ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.z = load i64, ptr %i.y, align 8, !noundef !3 ; 2 uses
  %.idx = shl nuw nsw i64 %i.z, 4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx
  %i.ab = icmp eq i64 %i.z, 0
  br i1 %i.ab, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexNtNtNtB1A_8database12memory_usage8PageInfoNtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherEEB1A_.exit61, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.627.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %.sroa.791.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.ai = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.842.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.1046.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  br label %bb.g

end_hunk_0
begin_hunk_1_@_RNvMs_NtNtCsC8CapfvpQ1_5salsa11accumulator15accumulated_mapNtB4_14AccumulatedMap15allocation_size:bb.a
  %.sroa.0.0 = phi i64 [ %i.h, %_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit ], [ 0, %bb.a ]
  ret i64 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtCsC8CapfvpQ1_5salsa11accumulator15accumulated_mapNtB4_14AccumulatedMap5clear(ptr noalias noundef align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !263, !noundef !3
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtBT_11accumulator11accumulated14AnyAccumulatedEL_EEE5clearBT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB1e_11accumulator11accumulated14AnyAccumulatedEL_EEEB1e_(ptr noalias noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !263, !noundef !3 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %0, align 8, !alias.scope !263, !nonnull !3, !noundef !3
  %i.i = add i64 %i.f, 17
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.h, i8 -1, i64 %i.i, i1 false)
  %.pre.i.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !263
  %.pre.fr.i.i.i.i = freeze i64 %.pre.i.i.i.i     ; 3 uses
  %i.j = icmp ult i64 %.pre.fr.i.i.i.i, 8
  %i.k = add i64 %.pre.fr.i.i.i.i, 1
  %i.l = lshr i64 %i.k, 3
  %i.m = mul nuw i64 %i.l, 7
  %spec.select.i.i.i.i = select i1 %i.j, i64 %.pre.fr.i.i.i.i, i64 %i.m
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !263, !noundef !3 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardQINtNtBG_3raw8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB1T_11accumulator11accumulated14AnyAccumulatedEL_EEENCNvMs6_B1w_B1t_5clear0EEB1T_.exit5.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = load ptr, ptr %0, align 8, !alias.scope !263, !nonnull !3, !noundef !3
  %i.r = add i64 %i.o, 17
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.q, i8 -1, i64 %i.r, i1 false)
  %.pre.i.i.i2.i = load i64, ptr %i.n, align 8, !alias.scope !263
  %.pre.fr.i.i.i3.i = freeze i64 %.pre.i.i.i2.i   ; 3 uses
  %i.s = icmp ult i64 %.pre.fr.i.i.i3.i, 8
  %i.t = add i64 %.pre.fr.i.i.i3.i, 1
  %i.u = lshr i64 %i.t, 3
  %i.v = mul nuw i64 %i.u, 7
  %spec.select.i.i.i4.i = select i1 %i.s, i64 %.pre.fr.i.i.i3.i, i64 %i.v
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardQINtNtBG_3raw8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB1T_11accumulator11accumulated14AnyAccumulatedEL_EEENCNvMs6_B1w_B1t_5clear0EEB1T_.exit5.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardQINtNtBG_3raw8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB1T_11accumulator11accumulated14AnyAccumulatedEL_EEENCNvMs6_B1w_B1t_5clear0EEB1T_.exit5.i: ; preds = %bb.f, %bb.e
  %i.w = phi i64 [ %spec.select.i.i.i4.i, %bb.f ], [ 0, %bb.e ]
  store i64 0, ptr %i.a, align 8, !alias.scope !263
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.w, ptr %i.x, align 8, !alias.scope !263
  br label %_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtBT_11accumulator11accumulated14AnyAccumulatedEL_EEE5clearBT_.exit

bb.g:                                             ; preds = %bb.d, %bb.c
  %i.y = phi i64 [ %spec.select.i.i.i.i, %bb.d ], [ 0, %bb.c ]
  store i64 0, ptr %i.a, align 8, !alias.scope !263
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.y, ptr %i.z, align 8, !alias.scope !263
  resume { ptr, i32 } %i.d

_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtBT_11accumulator11accumulated14AnyAccumulatedEL_EEE5clearBT_.exit: ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardQINtNtBG_3raw8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB1T_11accumulator11accumulated14AnyAccumulatedEL_EEENCNvMs6_B1w_B1t_5clear0EEB1T_.exit5.i
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define internal fastcc noundef i64 @_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index(ptr nofree readonly captures(none) %.0.val, i64 %.8.val, i64 noundef %0) unnamed_addr #5 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.sroa.0.07 = and i64 %0, %.8.val               ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 %.sroa.0.07
  %.sroa.0.0.copyload.i68 = load <16 x i8>, ptr %i.a, align 1, !noalias !266
  %i.b = icmp slt <16 x i8> %.sroa.0.0.copyload.i68, zeroinitializer
  %i.c = bitcast <16 x i1> %i.b to i16            ; 2 uses
  %.not.i9 = icmp eq i16 %i.c, 0
  br i1 %.not.i9, label %.lr.ph, label %._crit_edge, !prof !10

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.sroa.0.0.lcssa = phi i64 [ %.sroa.0.07, %bb.a ], [ %.sroa.0.0, %.lr.ph ]
  %.lcssa = phi i16 [ %i.c, %bb.a ], [ %i.t, %.lr.ph ]
  %i.d = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa, i1 true)
  %i.e = zext nneg i16 %i.d to i64
  %i.f = add i64 %.sroa.0.0.lcssa, %i.e
  %i.g = and i64 %i.f, %.8.val                    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !noundef !3
  %i.j = icmp sgt i8 %i.i, -1
  br i1 %i.j, label %bb.b, label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner16fix_insert_index.exit, !prof !9

bb.b:                                             ; preds = %._crit_edge
  %.val72.i = load <16 x i8>, ptr %.0.val, align 16
  %i.k = icmp slt <16 x i8> %.val72.i, zeroinitializer
  %i.l = bitcast <16 x i1> %i.k to i16            ; 2 uses
  %.not.i6 = icmp ne i16 %i.l, 0
  %i.m = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.l, i1 true)
  %i.n = zext nneg i16 %i.m to i64
  tail call void @llvm.assume(i1 %.not.i6)
  br label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner16fix_insert_index.exit

_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner16fix_insert_index.exit: ; preds = %._crit_edge, %bb.b
  %.sroa.0.0.i5 = phi i64 [ %i.n, %bb.b ], [ %i.g, %._crit_edge ]
  ret i64 %.sroa.0.0.i5

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.010 = phi i64 [ %.sroa.0.0, %.lr.ph ], [ %.sroa.0.07, %bb.a ]
  %i.o = phi i64 [ %i.p, %.lr.ph ], [ 0, %bb.a ]
  %i.p = add i64 %i.o, 16                         ; 2 uses
  %i.q = add i64 %i.p, %.sroa.0.010
  %.sroa.0.0 = and i64 %i.q, %.8.val              ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0.val, i64 %.sroa.0.0
  %.sroa.0.0.copyload.i6 = load <16 x i8>, ptr %i.r, align 1, !noalias !266
  %i.s = icmp slt <16 x i8> %.sroa.0.0.copyload.i6, zeroinitializer
  %i.t = bitcast <16 x i1> %i.s to i16            ; 2 uses
  %.not.i = icmp eq i16 %i.t, 0
  br i1 %.not.i, label %.lr.ph, label %._crit_edge, !prof !11
}

; Function Attrs: cold noreturn nonlazybind uwtable
define void @_RNvXNtCsC8CapfvpQ1_5salsa4hashNtB2_12TypeIdHasherNtNtCs4NRVxsYgnAr_4core4hash6Hasher5write(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #6 {
bb.a:
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @34, ptr noundef nonnull inttoptr (i64 137 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #26
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtNtCsC8CapfvpQ1_5salsa11accumulator15accumulated_mapNtB2_14AccumulatedMapNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @37, i64 noundef 14)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !270)
  %i.c = load ptr, ptr %0, align 8, !alias.scope !270, !noalias !271, !nonnull !3, !noundef !3 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !270, !noalias !271, !noundef !3
  %i.f = getelementptr i8, ptr %i.c, i64 %i.e
  %i.g = getelementptr i8, ptr %i.f, i64 1
  %.val24.i = load <16 x i8>, ptr %i.c, align 16, !noalias !272
  %i.h = icmp sgt <16 x i8> %.val24.i, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !270, !noalias !271, !noundef !3
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.i, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.g, ptr %.sroa.54.0..sroa_idx, align 8
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store <16 x i1> %i.h, ptr %.sroa.65.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.k, ptr %.sroa.8.0..sroa_idx, align 8
  %i.l = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 3, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @38)
  %i.m = call noundef zeroext i1 @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.m
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNvMs3_NtCsC8CapfvpQ1_5salsa14tracked_structINtB8_14IngredientImplpE11clear_memosNtB2_14TableDropGuardNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %.val = load ptr, ptr %0, align 8, !nonnull !3, !align !5, !noundef !3 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !3, !align !5, !noundef !3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !3
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %i.f
  %.val.i = load ptr, ptr %.val1, align 8, !noundef !3 ; 2 uses
  %i.h = getelementptr i8, ptr %.val1, i64 8
  %.val3.i = load i64, ptr %i.h, align 8
  %i.i = icmp eq ptr %.val.i, null                ; 2 uses
  %.sroa.4.0.i.i = select i1 %i.i, i64 0, i64 %.val3.i
  %.sroa.0.0.i.i = select i1 %i.i, ptr inttoptr (i64 8 to ptr), ptr %.val.i ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i, i64 %.sroa.4.0.i.i
  call void @_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zip3zipINtNtNtB8_5slice4iter4IterNtNtNtCsC8CapfvpQ1_5salsa5table4memo13MemoEntryTypeEINtBQ_7IterMutNtB1f_9MemoEntryEEB1j_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a, ptr noundef nonnull %i.d, ptr noundef nonnull %i.g, ptr noundef nonnull %.sroa.0.0.i.i, ptr noundef nonnull %i.j)
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8 ; 2 uses
  %.sroa.41.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.41.0.copyload.i = load ptr, ptr %.sroa.41.0..sroa_idx.i, align 8 ; 2 uses
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.52.0.copyload.i = load i64, ptr %.sroa.52.0..sroa_idx.i, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.7.0.copyload.i = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8 ; 2 uses
  %i.k = icmp ult i64 %.sroa.52.0.copyload.i, %.sroa.7.0.copyload.i
  br i1 %i.k, label %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsC8CapfvpQ1_5salsa5table4memo13MemoEntryTypeEINtBZ_7IterMutNtB1o_9MemoEntryEEINtB5_7ZipImplBW_B2c_E4nextB1s_.exit.lr.ph.i, label %_RNvMs6_NtNtCsC8CapfvpQ1_5salsa5table4memoNtB5_21MemoTableWithTypesMut4drop.exit

_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsC8CapfvpQ1_5salsa5table4memo13MemoEntryTypeEINtBZ_7IterMutNtB1o_9MemoEntryEEINtB5_7ZipImplBW_B2c_E4nextB1s_.exit.lr.ph.i: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i), "nonnull"(ptr %.sroa.41.0.copyload.i) ]
  br label %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsC8CapfvpQ1_5salsa5table4memo13MemoEntryTypeEINtBZ_7IterMutNtB1o_9MemoEntryEEINtB5_7ZipImplBW_B2c_E4nextB1s_.exit.i

_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsC8CapfvpQ1_5salsa5table4memo13MemoEntryTypeEINtBZ_7IterMutNtB1o_9MemoEntryEEINtB5_7ZipImplBW_B2c_E4nextB1s_.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtCsC8CapfvpQ1_5salsa5table4memo4MemoEL_EEEB1C_.exit.i, %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsC8CapfvpQ1_5salsa5table4memo13MemoEntryTypeEINtBZ_7IterMutNtB1o_9MemoEntryEEINtB5_7ZipImplBW_B2c_E4nextB1s_.exit.lr.ph.i
  %.sroa.52.012.i = phi i64 [ %.sroa.52.0.copyload.i, %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsC8CapfvpQ1_5salsa5table4memo13MemoEntryTypeEINtBZ_7IterMutNtB1o_9MemoEntryEEINtB5_7ZipImplBW_B2c_E4nextB1s_.exit.lr.ph.i ], [ %i.l, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtCsC8CapfvpQ1_5salsa5table4memo4MemoEL_EEEB1C_.exit.i ] ; 3 uses
  %i.l = add i64 %.sroa.52.012.i, 1               ; 2 uses
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i, i64 %.sroa.52.012.i
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.sroa.41.0.copyload.i, i64 %.sroa.52.012.i ; 2 uses
  %.val4.i = load ptr, ptr %i.m, align 8          ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !276)
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !276, !noundef !3 ; 2 uses
  store ptr null, ptr %i.n, align 8, !alias.scope !276
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtCsC8CapfvpQ1_5salsa5table4memo4MemoEL_EEEB1C_.exit.i, label %bb.b

bb.b:                                             ; preds = %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsC8CapfvpQ1_5salsa5table4memo13MemoEntryTypeEINtBZ_7IterMutNtB1o_9MemoEntryEEINtB5_7ZipImplBW_B2c_E4nextB1s_.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4.i) ]
  %i.q = call { ptr, ptr } %.val4.i(ptr noundef nonnull %i.o), !noalias !276, !inline_history !275 ; 2 uses
  %i.r = extractvalue { ptr, ptr } %i.q, 0        ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ]
  %1 = extractvalue { ptr, ptr } %i.q, 1          ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.s = load ptr, ptr %1, align 8, !invariant.load !3 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.s(ptr noundef nonnull %i.r)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !6, !invariant.load !3 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtCsC8CapfvpQ1_5salsa5table4memo4MemoEL_EEEB1C_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !277, !invariant.load !3
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.r, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #27
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtCsC8CapfvpQ1_5salsa5table4memo4MemoEL_EEEB1C_.exit.i

bb.f:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !range !6, !invariant.load !3 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtNtCsC8CapfvpQ1_5salsa5table4memo4MemoEL_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBN_.exit4.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !range !277, !invariant.load !3
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.r, i64 noundef range(i64 1, -9223372036854775808) %i.aa, i64 noundef range(i64 1, 536870913) %i.ad) #27
  br label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtNtCsC8CapfvpQ1_5salsa5table4memo4MemoEL_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBN_.exit4.i.i.i

_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtNtCsC8CapfvpQ1_5salsa5table4memo4MemoEL_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBN_.exit4.i.i.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.y

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtCsC8CapfvpQ1_5salsa5table4memo4MemoEL_EEEB1C_.exit.i: ; preds = %bb.e, %bb.d, %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsC8CapfvpQ1_5salsa5table4memo13MemoEntryTypeEINtBZ_7IterMutNtB1o_9MemoEntryEEINtB5_7ZipImplBW_B2c_E4nextB1s_.exit.i
  %exitcond.not.i = icmp eq i64 %i.l, %.sroa.7.0.copyload.i
  br i1 %exitcond.not.i, label %_RNvMs6_NtNtCsC8CapfvpQ1_5salsa5table4memoNtB5_21MemoTableWithTypesMut4drop.exit, label %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsC8CapfvpQ1_5salsa5table4memo13MemoEntryTypeEINtBZ_7IterMutNtB1o_9MemoEntryEEINtB5_7ZipImplBW_B2c_E4nextB1s_.exit.i

_RNvMs6_NtNtCsC8CapfvpQ1_5salsa5table4memoNtB5_21MemoTableWithTypesMut4drop.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtCsC8CapfvpQ1_5salsa5table4memo4MemoEL_EEEB1C_.exit.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCsC8CapfvpQ1_5salsa14tracked_struct12IdentityHashNtB6_5Debug3fmtBA_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !3, !align !5, !noundef !3 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !281
  store ptr %i.b, ptr %i.a, align 8, !noalias !281
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef 12, ptr noalias noundef nonnull readonly captures(address, read_provenance) @45, i64 noundef 16, ptr noundef nonnull readonly %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @42, ptr noalias noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @50)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !281
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryNtB6_5Debug3fmtBA_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !3, !align !5, !noundef !3 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !285
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.d, ptr %i.a, align 8, !noalias !285
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @55, i64 noundef 12, ptr noalias noundef nonnull readonly captures(address, read_provenance) @56, i64 noundef 8, ptr noundef nonnull readonly %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @52, ptr noalias noundef nonnull readonly captures(address, read_provenance) @57, i64 noundef 2, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @53, ptr noalias noundef nonnull readonly captures(address, read_provenance) @58, i64 noundef 6, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @54)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !285
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCsC8CapfvpQ1_5salsa14tracked_struct13DisambiguatorNtB6_5Debug3fmtBA_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !3, !align !289, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !290
  store ptr %i.b, ptr %i.a, align 8, !noalias !290
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @59, i64 noundef 13, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @48)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !290
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtB6_5Debug3fmtBA_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !3, !align !5, !noundef !3 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !294
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store ptr %i.d, ptr %i.a, align 8, !noalias !294
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @44, i64 noundef 8, ptr noalias noundef nonnull readonly captures(address, read_provenance) @45, i64 noundef 16, ptr noundef nonnull readonly %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @42, ptr noalias noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 4, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @43, ptr noalias noundef nonnull readonly captures(address, read_provenance) @47, i64 noundef 13, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @13)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !294
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBB_2id2IdENtB6_5Debug3fmtBB_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !3, !align !5, !noundef !3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !298
  call void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter11debug_tuple(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0), !noalias !299
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !298
  store ptr %i.d, ptr %i.b, align 8, !noalias !298
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !298
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.e, ptr %i.a, align 8, !noalias !298
  %i.f = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @40) ; 0 uses
  %i.g = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @41) ; 0 uses
  %i.h = call noundef zeroext i1 @_RNvMs2_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_10DebugTuple6finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !298
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !298
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !298
  ret i1 %i.h
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define noundef range(i8 0, 2) i8 @_RNvXs3_NtNtCsC8CapfvpQ1_5salsa11accumulator15accumulated_mapNtB5_28AtomicInputAccumulatedValuesNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #7 {
bb.a:
  %i.a = load atomic i8, ptr %0 monotonic, align 1
  %i.b = icmp ne i8 %i.a, 0
  %i.c = zext i1 %i.b to i8
  ret i8 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsX_NtNtCs4NRVxsYgnAr_4core3fmt3numyNtB7_5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !3 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.b, 67108864
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvXsC_NtNtCs4NRVxsYgnAr_4core3fmt3numyNtB7_8LowerHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXsd_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impyNtB9_7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_RNvXsE_NtNtCs4NRVxsYgnAr_4core3fmt3numyNtB7_8UpperHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs_NtCsjvLTWb8VeNU_12tracing_core8callsiteNtB4_15DefaultCallsiteNtB4_8Callsite8metadata(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !align !5, !noundef !3
  ret ptr %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsa_NtCsC8CapfvpQ1_5salsa14tracked_structNtB5_8IdentityNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #8 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  store ptr %i.c, ptr %i.a, align 8
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @44, i64 noundef 8, ptr noalias noundef nonnull readonly captures(address, read_provenance) @45, i64 noundef 16, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @42, ptr noalias noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 4, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @43, ptr noalias noundef nonnull readonly captures(address, read_provenance) @47, i64 noundef 13, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @13)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsd_NtCsC8CapfvpQ1_5salsa5zalsaNtB5_15IngredientIndexNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #8 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 15, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @48)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCsjvLTWb8VeNU_12tracing_core8callsite15DefaultCallsiteNtB4_8Callsite15private_type_idCsC8CapfvpQ1_5salsa(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @60, i64 16, i1 false)
  ret void
}
end_hunk_1
