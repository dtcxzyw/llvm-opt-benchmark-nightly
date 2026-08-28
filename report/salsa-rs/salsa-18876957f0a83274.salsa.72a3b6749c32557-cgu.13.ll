Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/salsa-rs/original/salsa-18876957f0a83274.salsa.72a3b6749c32557-cgu.13?download=true
begin_hunk_0_@_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeNtB15_13QueryEdgeIterEB17_:bb.a
  %.sroa.11.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.c = icmp eq ptr %.sroa.43.0.copyload, %.sroa.5.0.copyload ; 2 uses
  br i1 %i.b, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.a
  br i1 %i.c, label %_RNvXsn_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_13QueryEdgeIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit, label %.lr.ph20

.lr.ph20:                                         ; preds = %.split.us, %.lr.ph20
  %.sroa.4.0.us19 = phi ptr [ %i.d, %.lr.ph20 ], [ %.sroa.43.0.copyload, %.split.us ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.4.0.us19, i64 12 ; 2 uses
  %.sroa.11.4..sroa.4.8..sroa_idx.us = getelementptr inbounds nuw i8, ptr %.sroa.4.0.us19, i64 8
  %.sroa.11.4.copyload8.us = load i32, ptr %.sroa.11.4..sroa.4.8..sroa_idx.us, align 4, !noalias !8
  %i.e = load <2 x i32>, ptr %.sroa.4.0.us19, align 4, !noalias !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store <2 x i32> %i.e, ptr %i.a, align 8
  store i32 %.sroa.11.4.copyload8.us, ptr %.sroa.11.4..sroa_idx, align 8
  %i.f = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.g = icmp eq ptr %i.d, %.sroa.5.0.copyload
  br i1 %i.g, label %_RNvXsn_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_13QueryEdgeIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit, label %.lr.ph20

.split:                                           ; preds = %bb.a
  br i1 %i.c, label %_RNvXsn_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_13QueryEdgeIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.split, %.lr.ph
  %.sroa.4.018 = phi ptr [ %i.h, %.lr.ph ], [ %.sroa.43.0.copyload, %.split ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.4.018, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.018, i64 4
  %i.j = load i32, ptr %i.i, align 4, !noalias !11, !noundef !3
  %i.k = load <2 x i32>, ptr %.sroa.4.018, align 4, !noalias !8
  %i.l = lshr i32 %i.j, 20
  %i.m = and <2 x i32> %i.k, <i32 -1, i32 1048575>
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store <2 x i32> %i.m, ptr %i.a, align 8
  store i32 %i.l, ptr %.sroa.11.4..sroa_idx, align 8
  %i.n = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.o = icmp eq ptr %i.h, %.sroa.5.0.copyload
  br i1 %i.o, label %_RNvXsn_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_13QueryEdgeIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit, label %.lr.ph

_RNvXsn_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_13QueryEdgeIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit: ; preds = %.lr.ph, %.lr.ph20, %.split, %.split.us
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_5slice4iter4IterNtNtB17_12active_query11ActiveQueryENCNvXs1_B2M_NtB2M_10QueryStackNtB8_5Debug3fmt0EEB17_(ptr noalias noundef returned align 8 dereferenceable(16) %0, ptr nofree noundef nonnull readonly captures(address) %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa12active_query11ActiveQueryENCNvXs1_B1o_NtB1o_10QueryStackNtNtBb_3fmt5Debug3fmt0ENtNtNtB9_6traits8iterator8Iterator4nextB1q_.exit.thread, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa12active_query11ActiveQueryENCNvXs1_B1o_NtB1o_10QueryStackNtNtBb_3fmt5Debug3fmt0ENtNtNtB9_6traits8iterator8Iterator4nextB1q_.exit.lr.ph

_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa12active_query11ActiveQueryENCNvXs1_B1o_NtB1o_10QueryStackNtNtBb_3fmt5Debug3fmt0ENtNtNtB9_6traits8iterator8Iterator4nextB1q_.exit.lr.ph: ; preds = %bb.a
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  br label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa12active_query11ActiveQueryENCNvXs1_B1o_NtB1o_10QueryStackNtNtBb_3fmt5Debug3fmt0ENtNtNtB9_6traits8iterator8Iterator4nextB1q_.exit

_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa12active_query11ActiveQueryENCNvXs1_B1o_NtB1o_10QueryStackNtNtBb_3fmt5Debug3fmt0ENtNtNtB9_6traits8iterator8Iterator4nextB1q_.exit: ; preds = %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa12active_query11ActiveQueryENCNvXs1_B1o_NtB1o_10QueryStackNtNtBb_3fmt5Debug3fmt0ENtNtNtB9_6traits8iterator8Iterator4nextB1q_.exit.lr.ph, %bb.b
  %.sroa.0.010 = phi ptr [ %1, %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa12active_query11ActiveQueryENCNvXs1_B1o_NtB1o_10QueryStackNtNtBb_3fmt5Debug3fmt0ENtNtNtB9_6traits8iterator8Iterator4nextB1q_.exit.lr.ph ], [ %i.d, %bb.b ] ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.010, i64 168
  %.sroa.02.0.copyload3 = load i32, ptr %i.c, align 8, !noalias !13 ; 2 uses
  %.not = icmp eq i32 %.sroa.02.0.copyload3, 0
  br i1 %.not, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa12active_query11ActiveQueryENCNvXs1_B1o_NtB1o_10QueryStackNtNtBb_3fmt5Debug3fmt0ENtNtNtB9_6traits8iterator8Iterator4nextB1q_.exit.thread, label %bb.b

bb.b:                                             ; preds = %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa12active_query11ActiveQueryENCNvXs1_B1o_NtB1o_10QueryStackNtNtBb_3fmt5Debug3fmt0ENtNtNtB9_6traits8iterator8Iterator4nextB1q_.exit
  %.sroa.7.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %.sroa.0.010, i64 172
  %.sroa.7.0.copyload5 = load i64, ptr %.sroa.7.0..sroa_idx4, align 4, !noalias !13
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.010, i64 184 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %.sroa.02.0.copyload3, ptr %i.a, align 4
  store i64 %.sroa.7.0.copyload5, ptr %.sroa.7.0..sroa_idx, align 4
  %i.e = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.f = icmp eq ptr %i.d, %2
  br i1 %i.f, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa12active_query11ActiveQueryENCNvXs1_B1o_NtB1o_10QueryStackNtNtBb_3fmt5Debug3fmt0ENtNtNtB9_6traits8iterator8Iterator4nextB1q_.exit.thread, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa12active_query11ActiveQueryENCNvXs1_B1o_NtB1o_10QueryStackNtNtBb_3fmt5Debug3fmt0ENtNtNtB9_6traits8iterator8Iterator4nextB1q_.exit

_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa12active_query11ActiveQueryENCNvXs1_B1o_NtB1o_10QueryStackNtNtBb_3fmt5Debug3fmt0ENtNtNtB9_6traits8iterator8Iterator4nextB1q_.exit.thread: ; preds = %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa12active_query11ActiveQueryENCNvXs1_B1o_NtB1o_10QueryStackNtNtBb_3fmt5Debug3fmt0ENtNtNtB9_6traits8iterator8Iterator4nextB1q_.exit, %bb.b, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCsC8CapfvpQ1_5salsa12active_query11ActiveQueryINtNtNtBa_5slice4iter4IterB14_EEB18_(ptr noalias noundef returned align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.07 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.07, i64 184 ; 2 uses
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
  %i.g = load i64, ptr %i.e, align 8, !alias.scope !16, !noundef !3
  %i.h = call i64 @llvm.usub.sat.i64(i64 %i.g, i64 1)
  store i64 %i.h, ptr %i.e, align 8, !alias.scope !16
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
  %.sroa.88.0.copyload = load i64, ptr %.sroa.88.0..sroa_idx, align 8, !alias.scope !21 ; 2 uses
  %i.b = icmp eq i64 %.sroa.88.0.copyload, 0
  br i1 %i.b, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.67.0.copyload = load i16, ptr %.sroa.67.0..sroa_idx, align 8, !alias.scope !21
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !21
  %.sroa.06.0.copyload = load ptr, ptr %1, align 8, !alias.scope !21
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.loopexit
  %.sroa.0.019 = phi ptr [ %.sroa.0.1, %.loopexit ], [ %.sroa.06.0.copyload, %.lr.ph.preheader ] ; 2 uses
  %.sroa.6.018 = phi ptr [ %.sroa.6.1, %.loopexit ], [ %.sroa.4.0.copyload, %.lr.ph.preheader ] ; 2 uses
  %.sroa.105.017 = phi i64 [ %i.n, %.loopexit ], [ %.sroa.88.0.copyload, %.lr.ph.preheader ]
  %.sroa.84.016 = phi i16 [ %i.k, %.loopexit ], [ %.sroa.67.0.copyload, %.lr.ph.preheader ] ; 2 uses
  %.not11.i.i = icmp eq i16 %.sroa.84.016, 0
  br i1 %.not11.i.i, label %.lr.ph.i.i, label %.loopexit

.lr.ph.i.i:                                       ; preds = %.lr.ph, %.lr.ph.i.i
  %i.c = phi ptr [ %i.g, %.lr.ph.i.i ], [ %.sroa.6.018, %.lr.ph ] ; 2 uses
  %i.d = phi ptr [ %i.f, %.lr.ph.i.i ], [ %.sroa.0.019, %.lr.ph ]
  %.val79.i.i = load <16 x i8>, ptr %i.c, align 16, !noalias !25
  %i.e = icmp sgt <16 x i8> %.val79.i.i, splat (i8 -1)
  %i.f = getelementptr inbounds i8, ptr %i.d, i64 -384 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.cast.i.i = bitcast <16 x i1> %i.e to i16      ; 2 uses
  %.not.i.i = icmp eq i16 %.cast.i.i, 0
  br i1 %.not.i.i, label %.lr.ph.i.i, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.i, %.lr.ph
  %.sroa.6.1 = phi ptr [ %.sroa.6.018, %.lr.ph ], [ %i.g, %.lr.ph.i.i ]
  %.sroa.0.1 = phi ptr [ %.sroa.0.019, %.lr.ph ], [ %i.f, %.lr.ph.i.i ] ; 2 uses
  %.lcssa.i.i = phi i16 [ %.sroa.84.016, %.lr.ph ], [ %.cast.i.i, %.lr.ph.i.i ] ; 3 uses
  %i.h = add i16 %.lcssa.i.i, -1
  %i.i = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.j = zext nneg i16 %i.i to i64
  %i.k = and i16 %i.h, %.lcssa.i.i
  %i.l = sub nsw i64 0, %i.j
  %i.m = getelementptr inbounds [24 x i8], ptr %.sroa.0.1, i64 %i.l
  %i.n = add i64 %.sroa.105.017, -1               ; 2 uses
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
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.c) ]
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
  %.sroa.810.0.copyload = load i64, ptr %.sroa.810.0..sroa_idx, align 8, !alias.scope !30 ; 2 uses
  %i.c = icmp eq i64 %.sroa.810.0.copyload, 0
  br i1 %i.c, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %.sroa.69.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.69.0.copyload = load i16, ptr %.sroa.69.0..sroa_idx, align 8, !alias.scope !30
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !30
  %.sroa.08.0.copyload = load ptr, ptr %1, align 8, !alias.scope !30
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.loopexit
  %.sroa.0.022 = phi ptr [ %.sroa.0.1, %.loopexit ], [ %.sroa.08.0.copyload, %.lr.ph.preheader ] ; 2 uses
  %.sroa.6.021 = phi ptr [ %.sroa.6.1, %.loopexit ], [ %.sroa.4.0.copyload, %.lr.ph.preheader ] ; 2 uses
  %.sroa.107.020 = phi i64 [ %i.o, %.loopexit ], [ %.sroa.810.0.copyload, %.lr.ph.preheader ]
  %.sroa.86.019 = phi i16 [ %i.l, %.loopexit ], [ %.sroa.69.0.copyload, %.lr.ph.preheader ] ; 2 uses
  %.not11.i.i = icmp eq i16 %.sroa.86.019, 0
  br i1 %.not11.i.i, label %.lr.ph.i.i, label %.loopexit

.lr.ph.i.i:                                       ; preds = %.lr.ph, %.lr.ph.i.i
  %i.d = phi ptr [ %i.h, %.lr.ph.i.i ], [ %.sroa.6.021, %.lr.ph ] ; 2 uses
  %i.e = phi ptr [ %i.g, %.lr.ph.i.i ], [ %.sroa.0.022, %.lr.ph ]
  %.val79.i.i = load <16 x i8>, ptr %i.d, align 16, !noalias !34
  %i.f = icmp sgt <16 x i8> %.val79.i.i, splat (i8 -1)
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 -384 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %.cast.i.i = bitcast <16 x i1> %i.f to i16      ; 2 uses
  %.not.i.i = icmp eq i16 %.cast.i.i, 0
  br i1 %.not.i.i, label %.lr.ph.i.i, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.i, %.lr.ph
  %.sroa.6.1 = phi ptr [ %.sroa.6.021, %.lr.ph ], [ %i.h, %.lr.ph.i.i ]
  %.sroa.0.1 = phi ptr [ %.sroa.0.022, %.lr.ph ], [ %i.g, %.lr.ph.i.i ] ; 2 uses
  %.lcssa.i.i = phi i16 [ %.sroa.86.019, %.lr.ph ], [ %.cast.i.i, %.lr.ph.i.i ] ; 3 uses
  %i.i = add i16 %.lcssa.i.i, -1
  %i.j = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.k = zext nneg i16 %i.j to i64
  %i.l = and i16 %i.i, %.lcssa.i.i
  %i.m = sub nsw i64 0, %i.k
  %i.n = getelementptr inbounds [24 x i8], ptr %.sroa.0.1, i64 %i.m ; 2 uses
  %i.o = add i64 %.sroa.107.020, -1               ; 2 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.f, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.f, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.f, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.f, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.f, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
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
end_hunk_0
begin_hunk_1_@_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown5table5DrainNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryEEB1k_:bb.a
  %i.k = phi i64 [ %spec.select.i.i, %bb.b ], [ 0, %bb.a ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 0, ptr %i.l, align 8, !alias.scope !39
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.k, ptr %i.m, align 8, !alias.scope !39
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !39, !nonnull !3, !noundef !3
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44)
  %i.k = tail call noundef i64 @_RNvNtCs6UEBZ98iBCt_8foldhash4seed19gen_per_hasher_seed(), !noalias !44
  %i.l = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs6UEBZ98iBCt_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 48) acquire, align 8, !noalias !44
  %i.m = icmp eq i8 %i.l, 2
  br i1 %i.m, label %_RNvXs7_NtCsgMW4BsFgQdt_9hashbrown3mapINtB5_7HashMapReNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoENtNtCs4NRVxsYgnAr_4core7default7Default7defaultBV_.exit, label %bb.b, !prof !47

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtNtCs6UEBZ98iBCt_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow(), !noalias !44
  br label %_RNvXs7_NtCsgMW4BsFgQdt_9hashbrown3mapINtB5_7HashMapReNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoENtNtCs4NRVxsYgnAr_4core7default7Default7defaultBV_.exit

_RNvXs7_NtCsgMW4BsFgQdt_9hashbrown3mapINtB5_7HashMapReNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoENtNtCs4NRVxsYgnAr_4core7default7Default7defaultBV_.exit: ; preds = %bb.a, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 4 uses
  store i64 %i.k, ptr %i.n, align 8, !alias.scope !44
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

bb.g:                                             ; preds = %.lr.ph, %.backedge
  %.sroa.0.0182 = phi ptr [ %i.x, %.lr.ph ], [ %i.ao, %.backedge ] ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0182, i64 16 ; 2 uses
  %i.ap = load ptr, ptr %.sroa.0.0182, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.0182, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !3, !align !48, !noundef !3 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 176
  %i.at = load ptr, ptr %i.as, align 8, !invariant.load !3, !nonnull !3
  invoke void %i.at(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noundef nonnull %i.ap, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %2)
          to label %bb.h unwind label %.loopexit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexNtNtNtB1A_8database12memory_usage8PageInfoNtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherEEB1A_.exit61: ; preds = %.backedge, %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.au, ptr noundef nonnull align 8 dereferenceable(40) %i.j, i64 40, i1 false)
  call void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexNtNtNtBT_8database12memory_usage8PageInfoEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBT_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void

bb.h:                                             ; preds = %bb.g
  %i.av = load i64, ptr %i.g, align 8, !range !49, !noundef !3 ; 2 uses
  %.not = icmp eq i64 %i.av, -1
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !3, !noundef !3 ; 4 uses
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.aw = icmp ult i64 %.sroa.5.0.copyload, 128102389400760776
  call void @llvm.assume(i1 %i.aw)
  %.idx183 = mul nuw nsw i64 %.sroa.5.0.copyload, 72
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 %.idx183
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %.sroa.4.0.copyload, ptr %i.f, align 8
  store ptr %.sroa.4.0.copyload, ptr %.sroa.410.0..sroa_idx, align 8
  store i64 %i.av, ptr %.sroa.511.0..sroa_idx, align 8
  store ptr %i.ax, ptr %.sroa.612.0..sroa_idx, align 8
  %i.ay = icmp eq i64 %.sroa.5.0.copyload, 0
  br i1 %i.ay, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8SlotInfoENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB11_.exit.thread, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8SlotInfoENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB11_.exit

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %.backedge

.backedge:                                        ; preds = %bb.j, %bb.s
  %i.az = icmp eq ptr %i.ao, %i.aa
  br i1 %i.az, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexNtNtNtB1A_8database12memory_usage8PageInfoNtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherEEB1A_.exit61, label %bb.g

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8MemoInfoEEB1u_.exit: ; preds = %.body73, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %i.ba, %bb.k ], [ %.pn, %.body73 ]
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8SlotInfoENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB11_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8SlotInfoEEB1u_.exit unwind label %bb.ak

bb.k:                                             ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8MemoInfoENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB11_.exit.thread
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8MemoInfoEEB1u_.exit

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8SlotInfoENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB11_.exit: ; preds = %bb.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8MemoInfoEEB1u_.exit66
  %i.bb = phi ptr [ %i.du, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8MemoInfoEEB1u_.exit66 ], [ %.sroa.4.0.copyload, %bb.i ] ; 7 uses
  %.sroa.07.0170 = phi i64 [ %i.bf, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8MemoInfoEEB1u_.exit66 ], [ 0, %bb.i ] ; 2 uses
  %.sroa.420.0169 = phi i64 [ %.sroa.420.1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8MemoInfoEEB1u_.exit66 ], [ undef, %bb.i ] ; 3 uses
  %.sroa.018.0168 = phi i64 [ %.sroa.018.1.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8MemoInfoEEB1u_.exit66 ], [ 0, %bb.i ] ; 3 uses
  %i.bc = phi <2 x i64> [ %i.bg, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8MemoInfoEEB1u_.exit66 ], [ zeroinitializer, %bb.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !50)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 72
  store ptr %i.bd, ptr %.sroa.410.0..sroa_idx, align 8, !alias.scope !50, !noalias !53
  %.sroa.0.0.copyload = load i64, ptr %i.bb, align 8, !noalias !50 ; 2 uses
  %.not54 = icmp eq i64 %.sroa.0.0.copyload, 2
  br i1 %.not54, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8SlotInfoENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB11_.exit.thread, label %bb.l

bb.l:                                             ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8SlotInfoENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB11_.exit
  %.sroa.1188.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 56
  %i.be = load <2 x i64>, ptr %.sroa.1188.0..sroa_idx, align 8, !noalias !50
  %.sroa.10.0..sroa_idx85 = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %.sroa.10.0.copyload86 = load i64, ptr %.sroa.10.0..sroa_idx85, align 8, !noalias !50 ; 3 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 8, !noalias !50, !nonnull !3, !noundef !3 ; 4 uses
  %.sroa.8.0..sroa_idx83 = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %.sroa.8.0.copyload84 = load i64, ptr %.sroa.8.0..sroa_idx83, align 8, !noalias !50 ; 2 uses
  %.sroa.7.0..sroa_idx81 = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.sroa.7.0.copyload82 = load i64, ptr %.sroa.7.0..sroa_idx81, align 8, !noalias !50
  %i.bf = add i64 %.sroa.07.0170, 1               ; 2 uses
  %i.bg = add <2 x i64> %i.be, %i.bc              ; 2 uses
  %i.bh = trunc nuw i64 %.sroa.0.0.copyload to i1 ; 2 uses
  %i.bi = trunc nuw i64 %.sroa.018.0168 to i1
  %.sroa.420.0. = select i1 %i.bi, i64 %.sroa.420.0169, i64 0
  %i.bj = add i64 %.sroa.7.0.copyload82, %.sroa.420.0.
  %.sroa.018.1.a = select i1 %i.bh, i64 1, i64 %.sroa.018.0168 ; 2 uses
  %.sroa.420.1 = select i1 %i.bh, i64 %i.bj, i64 %.sroa.420.0169 ; 2 uses
  %i.bk = icmp ult i64 %.sroa.10.0.copyload86, 104811045873349726
  call void @llvm.assume(i1 %i.bk)
  %.idx184 = mul nuw nsw i64 %.sroa.10.0.copyload86, 88
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.9.0.copyload, i64 %.idx184
  %i.bm = icmp sgt i64 %.sroa.8.0.copyload84, -1
  call void @llvm.assume(i1 %i.bm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %.sroa.9.0.copyload, ptr %i.e, align 8
  store ptr %.sroa.9.0.copyload, ptr %.sroa.425.0..sroa_idx, align 8
  store i64 %.sroa.8.0.copyload84, ptr %.sroa.526.0..sroa_idx, align 8
  store ptr %i.bl, ptr %.sroa.627.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.791)
  %i.bn = icmp eq i64 %.sroa.10.0.copyload86, 0
  br i1 %i.bn, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8MemoInfoENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB11_.exit.thread, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8MemoInfoENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB11_.exit

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8SlotInfoENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB11_.exit.thread: ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8SlotInfoENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB11_.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8MemoInfoEEB1u_.exit66, %bb.i
  %.sroa.018.0.lcssa.a = phi i64 [ 0, %bb.i ], [ %.sroa.018.1.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8MemoInfoEEB1u_.exit66 ], [ %.sroa.018.0168, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8SlotInfoENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB11_.exit ]
  %.sroa.420.0.lcssa = phi i64 [ undef, %bb.i ], [ %.sroa.420.1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8MemoInfoEEB1u_.exit66 ], [ %.sroa.420.0169, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8SlotInfoENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB11_.exit ]
  %.sroa.07.0.lcssa = phi i64 [ 0, %bb.i ], [ %i.bf, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8MemoInfoEEB1u_.exit66 ], [ %.sroa.07.0170, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8SlotInfoENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB11_.exit ]
  %i.bo = phi <2 x i64> [ zeroinitializer, %bb.i ], [ %i.bg, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8MemoInfoEEB1u_.exit66 ], [ %i.bc, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8SlotInfoENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB11_.exit ]
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8SlotInfoENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB11_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8SlotInfoEEB1u_.exit62 unwind label %.loopexit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8SlotInfoEEB1u_.exit62: ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8SlotInfoENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB11_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  %i.bq = load ptr, ptr %i.bp, align 8, !invariant.load !3, !nonnull !3
  %i.br = invoke { ptr, i64 } %i.bq(ptr noundef nonnull %i.ap)
          to label %bb.m unwind label %.loopexit  ; 2 uses

bb.m:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8SlotInfoEEB1u_.exit62
  %i.bs = extractvalue { ptr, i64 } %i.br, 0
  %i.bt = extractvalue { ptr, i64 } %i.br, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ar, i64 112
  %i.bv = load ptr, ptr %i.bu, align 8, !invariant.load !3, !nonnull !3
  %i.bw = invoke noundef i32 %i.bv(ptr noundef nonnull %i.ap)
          to label %bb.n unwind label %.loopexit

bb.n:                                             ; preds = %bb.m
  store i32 %i.bw, ptr %i.b, align 4
  invoke void @_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexNtNtNtBS_8database12memory_usage8PageInfoNtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE6removeBO_EBS_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.b)
          to label %bb.o unwind label %.loopexit

bb.o:                                             ; preds = %bb.n
  %i.bx = load i64, ptr %i.c, align 8, !range !55, !noundef !3
  %i.by = trunc nuw i64 %i.bx to i1
  br i1 %i.by, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bz = load <2 x i64>, ptr %i.an, align 8
  %i.ca = load <2 x i64>, ptr %.sroa.638.0..sroa_idx, align 8
  %i.cb = load <2 x i64>, ptr %.sroa.842.0..sroa_idx, align 8
  %i.cc = load <2 x i64>, ptr %.sroa.1046.0..sroa_idx, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.cd = phi <2 x i64> [ %i.bz, %bb.p ], [ <i64 0, i64 128>, %bb.o ]
  %i.ce = phi <2 x i64> [ %i.ca, %bb.p ], [ zeroinitializer, %bb.o ]
  %i.cf = phi <2 x i64> [ %i.cb, %bb.p ], [ zeroinitializer, %bb.o ]
  %i.cg = phi <2 x i64> [ %i.cc, %bb.p ], [ zeroinitializer, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ch = load i64, ptr %i.p, align 8, !alias.scope !56, !noalias !59, !noundef !3 ; 3 uses
  %i.ci = load i64, ptr %i.i, align 8, !range !61, !alias.scope !56, !noalias !59, !noundef !3
  %i.cj = icmp eq i64 %i.ch, %i.ci
  br i1 %i.cj, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoE8grow_oneBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.s unwind label %.loopexit

bb.s:                                             ; preds = %bb.q, %bb.r
  %i.ck = load ptr, ptr %i.o, align 8, !alias.scope !56, !noalias !59, !nonnull !3, !noundef !3
  %i.cl = getelementptr inbounds nuw [128 x i8], ptr %i.ck, i64 %i.ch ; 11 uses
  store i64 %.sroa.018.0.lcssa.a, ptr %i.cl, align 8
  %.sroa.4105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store i64 %.sroa.420.0.lcssa, ptr %.sroa.4105.0..sroa_idx, align 8
  %.sroa.5106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store i64 1, ptr %.sroa.5106.0..sroa_idx, align 8
  %.sroa.6107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  store <2 x i64> %i.cd, ptr %.sroa.6107.0..sroa_idx, align 8
  %.sroa.8109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 40
  store <2 x i64> %i.ce, ptr %.sroa.8109.0..sroa_idx, align 8
  %.sroa.10111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 56
  store <2 x i64> %i.cf, ptr %.sroa.10111.0..sroa_idx, align 8
  %.sroa.12113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 72
  store <2 x i64> %i.cg, ptr %.sroa.12113.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 88
  store ptr %i.bs, ptr %.sroa.14.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 96
  store i64 %i.bt, ptr %.sroa.15.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 104
  store i64 %.sroa.07.0.lcssa, ptr %.sroa.16.0..sroa_idx, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 112
  store <2 x i64> %i.bo, ptr %.sroa.17.0..sroa_idx, align 8
  %i.cm = add i64 %i.ch, 1
  store i64 %i.cm, ptr %i.p, align 8, !alias.scope !56, !noalias !59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.backedge

.body73:                                          ; preds = %bb.ag, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8SlotInfoEBH_.exit.i, %bb.t
  %.pn = phi { ptr, i32 } [ %i.dw, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8SlotInfoEBH_.exit.i ], [ %i.cn, %bb.t ], [ %i.gj, %bb.ag ]
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8MemoInfoENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB11_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8MemoInfoEEB1u_.exit unwind label %bb.ak

bb.t:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8SlotInfoEBH_.exit.i72
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %.body73

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8MemoInfoENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB11_.exit: ; preds = %bb.l, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8MemoInfoEBH_.exit76
  %i.co = phi ptr [ %i.go, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8MemoInfoEBH_.exit76 ], [ %.sroa.9.0.copyload, %bb.l ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !62)
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 88
  store ptr %i.cp, ptr %.sroa.425.0..sroa_idx, align 8, !alias.scope !62, !noalias !65
  %.sroa.089.0.copyload90 = load i64, ptr %i.co, align 8, !noalias !62 ; 2 uses
  %.sroa.791.0..sroa_idx92 = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.791, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.791.0..sroa_idx92, i64 80, i1 false), !noalias !62
  %.not55 = icmp eq i64 %.sroa.089.0.copyload90, 2
  br i1 %.not55, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8MemoInfoENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB11_.exit.thread, label %bb.u

bb.u:                                             ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8MemoInfoENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB11_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %.sroa.089.0.copyload90, ptr %i.d, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.791.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.791, i64 80, i1 false)
  %i.cq = load ptr, ptr %i.ac, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.cr = load i64, ptr %i.ad, align 8, !noundef !3 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !67)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.cq, ptr %i.a, align 8, !noalias !70
  store i64 %i.cr, ptr %i.ae, align 8, !noalias !70
  %i.cs = invoke noundef i64 @_RINvYNtNtCsgMW4BsFgQdt_9hashbrown6hasher18DefaultHashBuilderNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRReECsC8CapfvpQ1_5salsa(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
          to label %.noexc64 unwind label %bb.x   ; 4 uses

.noexc64:                                         ; preds = %bb.u
  call void @llvm.experimental.noalias.scope.decl(metadata !73)
  call void @llvm.experimental.noalias.scope.decl(metadata !76)
  %i.ct = lshr i64 %i.cs, 57
  %i.cu = trunc nuw nsw i64 %i.ct to i8           ; 3 uses
  %i.cv = load i64, ptr %i.af, align 8, !alias.scope !79, !noalias !80, !noundef !3 ; 6 uses
  %i.cw = load ptr, ptr %i.j, align 8, !alias.scope !79, !noalias !80, !nonnull !3, !noundef !3 ; 8 uses
  %i.cx = insertelement <16 x i8> poison, i8 %i.cu, i64 0
  %i.cy = shufflevector <16 x i8> %i.cx, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.v

bb.v:                                             ; preds = %bb.w, %.noexc64
  %.sroa.011.0.i.i.i = phi i64 [ 0, %.noexc64 ], [ %i.dr, %bb.w ]
  %.pn.i.i.i = phi i64 [ %i.cs, %.noexc64 ], [ %i.ds, %bb.w ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i.i, %i.cv   ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i27.i.i = load <16 x i8>, ptr %i.cz, align 1, !noalias !83 ; 2 uses
  %i.da = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, %i.cy
  %i.db = bitcast <16 x i1> %i.da to i16          ; 2 uses
  %.not.i.not33.i.i = icmp eq i16 %i.db, 0
  br i1 %.not.i.not33.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.v, %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableTReNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoEE4findNCINvNtBa_3map14equivalent_keyBS_BS_BU_E0E0B10_.exit.thread.i.i
  %.sroa.05.0.i34.i.i = phi i16 [ %i.dq, %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableTReNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoEE4findNCINvNtBa_3map14equivalent_keyBS_BS_BU_E0E0B10_.exit.thread.i.i ], [ %i.db, %bb.v ] ; 3 uses
  %i.dc = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i34.i.i, i1 true)
  %i.dd = zext nneg i16 %i.dc to i64
  %i.de = add i64 %.sroa.01.0.i.i.i, %i.dd
  %i.df = and i64 %i.de, %i.cv
  %i.dg = sub nsw i64 0, %i.df
  %i.dh = getelementptr inbounds [144 x i8], ptr %i.cw, i64 %i.dg ; 6 uses
  %i.di = getelementptr i8, ptr %i.dh, i64 -136
  %.val3.i.i.i = load i64, ptr %i.di, align 8, !noalias !86, !noundef !3
  %i.dj = icmp eq i64 %i.cr, %.val3.i.i.i
  br i1 %i.dj, label %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableTReNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoEE4findNCINvNtBa_3map14equivalent_keyBS_BS_BU_E0E0B10_.exit.i.i, label %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableTReNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoEE4findNCINvNtBa_3map14equivalent_keyBS_BS_BU_E0E0B10_.exit.thread.i.i, !prof !89

_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableTReNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoEE4findNCINvNtBa_3map14equivalent_keyBS_BS_BU_E0E0B10_.exit.i.i: ; preds = %.lr.ph.i.i
  %i.dk = getelementptr inbounds i8, ptr %i.dh, i64 -144
  %.val2.i.i.i = load ptr, ptr %i.dk, align 8, !noalias !86, !nonnull !3, !noundef !3
  %bcmp.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %i.cq, ptr nonnull readonly %.val2.i.i.i, i64 %i.cr), !alias.scope !90, !noalias !86
  %i.dl = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.dl, label %bb.ac, label %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableTReNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoEE4findNCINvNtBa_3map14equivalent_keyBS_BS_BU_E0E0B10_.exit.thread.i.i, !prof !94

._crit_edge.i.i:                                  ; preds = %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableTReNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoEE4findNCINvNtBa_3map14equivalent_keyBS_BS_BU_E0E0B10_.exit.thread.i.i, %bb.v
  %i.dm = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, splat (i8 -1)
  %i.dn = bitcast <16 x i1> %i.dm to i16
  %i.do = icmp eq i16 %i.dn, 0
  br i1 %i.do, label %bb.w, label %bb.aa, !prof !95

_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableTReNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoEE4findNCINvNtBa_3map14equivalent_keyBS_BS_BU_E0E0B10_.exit.thread.i.i: ; preds = %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableTReNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoEE4findNCINvNtBa_3map14equivalent_keyBS_BS_BU_E0E0B10_.exit.i.i, %.lr.ph.i.i
  %i.dp = add i16 %.sroa.05.0.i34.i.i, -1
  %i.dq = and i16 %i.dp, %.sroa.05.0.i34.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.dq, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.w:                                             ; preds = %._crit_edge.i.i
  %i.dr = add i64 %.sroa.011.0.i.i.i, 16          ; 2 uses
  %i.ds = add i64 %.sroa.01.0.i.i.i, %i.dr
  br label %bb.v

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8MemoInfoENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB11_.exit.thread: ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8MemoInfoENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB11_.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8MemoInfoEBH_.exit76, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.791)
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8MemoInfoENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB11_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8MemoInfoEEB1u_.exit66 unwind label %bb.k

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8MemoInfoEEB1u_.exit66: ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8MemoInfoENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB11_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.dt = load ptr, ptr %.sroa.612.0..sroa_idx, align 8, !alias.scope !96, !noalias !53, !nonnull !3, !noundef !3
  %i.du = load ptr, ptr %.sroa.410.0..sroa_idx, align 8, !alias.scope !96, !noalias !53, !nonnull !3, !noundef !3 ; 2 uses
  %i.dv = icmp eq ptr %i.du, %i.dt
  br i1 %i.dv, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8SlotInfoENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB11_.exit.thread, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8SlotInfoENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB11_.exit

bb.x:                                             ; preds = %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableTReNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoEE7reserveNCINvNtB8_3map11make_hasherBQ_BS_NtNtB8_6hasher18DefaultHashBuilderE0EBY_.exit.i.i, %bb.u
  %i.dw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8MemoInfoENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8SlotInfoEBH_.exit.i unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8MemoInfoENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %.body unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8SlotInfoEBH_.exit.i: ; preds = %bb.x
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8MemoInfoENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %.body73 unwind label %bb.ak

bb.aa:                                            ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.dz = load ptr, ptr %i.ag, align 8, !nonnull !3, !noundef !3
  %i.ea = load i64, ptr %i.ah, align 8, !noundef !3
  call void @llvm.experimental.noalias.scope.decl(metadata !98)
  %.sroa.0.07.i.i.i = and i64 %i.cv, %i.cs        ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cw, i64 %.sroa.0.07.i.i.i
  %.sroa.0.0.copyload.i68.i.i.i = load <16 x i8>, ptr %i.eb, align 1, !noalias !101
  %i.ec = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i.i, zeroinitializer
  %i.ed = bitcast <16 x i1> %i.ec to i16          ; 2 uses
  %.not.i9.i.i.i = icmp eq i16 %i.ed, 0
  br i1 %.not.i9.i.i.i, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !prof !109

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.aa
  %.sroa.0.0.lcssa.i.i.i = phi i64 [ %.sroa.0.07.i.i.i, %bb.aa ], [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i ]
  %.lcssa.i.i.i = phi i16 [ %i.ed, %bb.aa ], [ %i.eu, %.lr.ph.i.i.i ]
  %i.ee = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.ef = zext nneg i16 %i.ee to i64
  %i.eg = add i64 %.sroa.0.0.lcssa.i.i.i, %i.ef
  %i.eh = and i64 %i.eg, %i.cv                    ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.eh
  %i.ej = load i8, ptr %i.ei, align 1, !noalias !110, !noundef !3 ; 2 uses
  %i.ek = icmp sgt i8 %i.ej, -1
  br i1 %i.ek, label %bb.ab, label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i.i, !prof !95

bb.ab:                                            ; preds = %._crit_edge.i.i.i
  %.val72.i.i.i.i = load <16 x i8>, ptr %i.cw, align 16, !noalias !110
  %i.el = icmp slt <16 x i8> %.val72.i.i.i.i, zeroinitializer
  %i.em = bitcast <16 x i1> %i.el to i16          ; 2 uses
  %.not.i6.i.i.i = icmp ne i16 %i.em, 0
  %i.en = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.em, i1 true)
  %i.eo = zext nneg i16 %i.en to i64              ; 2 uses
  call void @llvm.assume(i1 %.not.i6.i.i.i)
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.eo
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 1, !noalias !110
  br label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.aa, %.lr.ph.i.i.i
  %.sroa.0.010.i.i.i = phi i64 [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.0.07.i.i.i, %bb.aa ]
  %i.ep = phi i64 [ %i.eq, %.lr.ph.i.i.i ], [ 0, %bb.aa ]
  %i.eq = add i64 %i.ep, 16                       ; 2 uses
  %i.er = add i64 %i.eq, %.sroa.0.010.i.i.i
  %.sroa.0.0.i.i.i = and i64 %i.er, %i.cv         ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.cw, i64 %.sroa.0.0.i.i.i
  %.sroa.0.0.copyload.i6.i.i.i = load <16 x i8>, ptr %i.es, align 1, !noalias !101
  %i.et = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i.i, zeroinitializer
  %i.eu = bitcast <16 x i1> %i.et to i16          ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.eu, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !prof !111

end_hunk_1
