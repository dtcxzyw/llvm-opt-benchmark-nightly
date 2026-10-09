Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/salsa-rs/original/salsa-18876957f0a83274.salsa.72a3b6749c32557-cgu.13?download=true
inline.NumInlined: 216
inline.NumDeleted: 148
begin_hunk_0_@_RINvMs6_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_8DebugMap7entriesRNtNtCsC8CapfvpQ1_5salsa14tracked_struct12IdentityHashRNtB15_13DisambiguatorINtNtCsgMW4BsFgQdt_9hashbrown3map4IterB13_B1V_EEB17_:bb.a
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

bb.g:                                             ; preds = %.lr.ph, %.backedge
  %.sroa.0.0176 = phi ptr [ %i.x, %.lr.ph ], [ %i.ao, %.backedge ] ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0176, i64 16 ; 2 uses
  %i.ap = load ptr, ptr %.sroa.0.0176, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.0176, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !3, !align !5, !noundef !3 ; 3 uses
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
  %i.av = load i64, ptr %i.g, align 8, !range !97, !noundef !3 ; 2 uses
  %.not = icmp eq i64 %i.av, -1
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !3, !noundef !3 ; 4 uses
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.aw = icmp ult i64 %.sroa.5.0.copyload, 128102389400760776
  call void @llvm.assume(i1 %i.aw)
  %.idx177 = mul nuw nsw i64 %.sroa.5.0.copyload, 72
end_hunk_0
begin_hunk_1_@_RNvMNtNtCsC8CapfvpQ1_5salsa8database12memory_usageDNtB4_8DatabaseEL_12memory_usage:bb.a
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
  %i.bx = load i64, ptr %i.c, align 8, !range !100, !noundef !3
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
  %i.ch = load i64, ptr %i.p, align 8, !alias.scope !101, !noalias !102, !noundef !3 ; 3 uses
  %i.ci = load i64, ptr %i.i, align 8, !range !6, !alias.scope !101, !noalias !102, !noundef !3
  %i.cj = icmp eq i64 %i.ch, %i.ci
  br i1 %i.cj, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoE8grow_oneBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.s unwind label %.loopexit

bb.s:                                             ; preds = %bb.q, %bb.r
  %i.ck = load ptr, ptr %i.o, align 8, !alias.scope !101, !noalias !102, !nonnull !3, !noundef !3
  %i.cl = getelementptr inbounds nuw [128 x i8], ptr %i.ck, i64 %i.ch ; 11 uses
  store i64 %.sroa.018.0.lcssa, ptr %i.cl, align 8
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
  store i64 %i.cm, ptr %i.p, align 8, !alias.scope !101, !noalias !102
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
  call void @llvm.experimental.noalias.scope.decl(metadata !103)
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 88
  store ptr %i.cp, ptr %.sroa.425.0..sroa_idx, align 8, !alias.scope !103, !noalias !104
  %.sroa.089.0.copyload90 = load i64, ptr %i.co, align 8, !noalias !103 ; 2 uses
  %.sroa.791.0..sroa_idx92 = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.791, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.791.0..sroa_idx92, i64 80, i1 false), !noalias !103
  %.not55 = icmp eq i64 %.sroa.089.0.copyload90, 2
  br i1 %.not55, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8MemoInfoENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB11_.exit.thread, label %bb.u

bb.u:                                             ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8MemoInfoENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB11_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %.sroa.089.0.copyload90, ptr %i.d, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.791.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.791, i64 80, i1 false)
  %i.cq = load ptr, ptr %i.ac, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.cr = load i64, ptr %i.ad, align 8, !noundef !3 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !105)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.cq, ptr %i.a, align 8, !noalias !106
  store i64 %i.cr, ptr %i.ae, align 8, !noalias !106
  %i.cs = invoke noundef i64 @_RINvYNtNtCsgMW4BsFgQdt_9hashbrown6hasher18DefaultHashBuilderNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRReECsC8CapfvpQ1_5salsa(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
          to label %.noexc64 unwind label %bb.x   ; 4 uses

.noexc64:                                         ; preds = %bb.u
  call void @llvm.experimental.noalias.scope.decl(metadata !107)
  call void @llvm.experimental.noalias.scope.decl(metadata !108)
  %i.ct = lshr i64 %i.cs, 57
  %i.cu = trunc nuw nsw i64 %i.ct to i8           ; 3 uses
  %i.cv = load i64, ptr %i.af, align 8, !alias.scope !109, !noalias !110, !noundef !3 ; 6 uses
  %i.cw = load ptr, ptr %i.j, align 8, !alias.scope !109, !noalias !110, !nonnull !3, !noundef !3 ; 8 uses
  %i.cx = insertelement <16 x i8> poison, i8 %i.cu, i64 0
  %i.cy = shufflevector <16 x i8> %i.cx, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.v

bb.v:                                             ; preds = %bb.w, %.noexc64
  %.sroa.011.0.i.i.i = phi i64 [ 0, %.noexc64 ], [ %i.dr, %bb.w ]
  %.pn.i.i.i = phi i64 [ %i.cs, %.noexc64 ], [ %i.ds, %bb.w ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i.i, %i.cv   ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i27.i.i = load <16 x i8>, ptr %i.cz, align 1, !noalias !111 ; 2 uses
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
  %.val3.i.i.i = load i64, ptr %i.di, align 8, !noalias !112, !noundef !3
  %i.dj = icmp eq i64 %i.cr, %.val3.i.i.i
  br i1 %i.dj, label %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableTReNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoEE4findNCINvNtBa_3map14equivalent_keyBS_BS_BU_E0E0B10_.exit.i.i, label %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableTReNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoEE4findNCINvNtBa_3map14equivalent_keyBS_BS_BU_E0E0B10_.exit.thread.i.i, !prof !7

_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableTReNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoEE4findNCINvNtBa_3map14equivalent_keyBS_BS_BU_E0E0B10_.exit.i.i: ; preds = %.lr.ph.i.i
  %i.dk = getelementptr inbounds i8, ptr %i.dh, i64 -144
  %.val2.i.i.i = load ptr, ptr %i.dk, align 8, !noalias !112, !nonnull !3, !noundef !3
  %bcmp.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %i.cq, ptr nonnull readonly %.val2.i.i.i, i64 %i.cr), !alias.scope !113, !noalias !112
  %i.dl = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.dl, label %bb.ac, label %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableTReNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoEE4findNCINvNtBa_3map14equivalent_keyBS_BS_BU_E0E0B10_.exit.thread.i.i, !prof !8

._crit_edge.i.i:                                  ; preds = %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableTReNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoEE4findNCINvNtBa_3map14equivalent_keyBS_BS_BU_E0E0B10_.exit.thread.i.i, %bb.v
  %i.dm = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, splat (i8 -1)
  %i.dn = bitcast <16 x i1> %i.dm to i16
  %i.do = icmp eq i16 %i.dn, 0
  br i1 %i.do, label %bb.w, label %bb.aa, !prof !9

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
  %i.dt = load ptr, ptr %.sroa.612.0..sroa_idx, align 8, !alias.scope !114, !noalias !99, !nonnull !3, !noundef !3
  %i.du = load ptr, ptr %.sroa.410.0..sroa_idx, align 8, !alias.scope !114, !noalias !99, !nonnull !3, !noundef !3 ; 2 uses
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
  call void @llvm.experimental.noalias.scope.decl(metadata !115)
  %.sroa.0.07.i.i.i = and i64 %i.cv, %i.cs        ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cw, i64 %.sroa.0.07.i.i.i
  %.sroa.0.0.copyload.i68.i.i.i = load <16 x i8>, ptr %i.eb, align 1, !noalias !116
  %i.ec = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i.i, zeroinitializer
  %i.ed = bitcast <16 x i1> %i.ec to i16          ; 2 uses
  %.not.i9.i.i.i = icmp eq i16 %i.ed, 0
  br i1 %.not.i9.i.i.i, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !prof !10

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.aa
  %.sroa.0.0.lcssa.i.i.i = phi i64 [ %.sroa.0.07.i.i.i, %bb.aa ], [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i ]
  %.lcssa.i.i.i = phi i16 [ %i.ed, %bb.aa ], [ %i.eu, %.lr.ph.i.i.i ]
  %i.ee = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.ef = zext nneg i16 %i.ee to i64
  %i.eg = add i64 %.sroa.0.0.lcssa.i.i.i, %i.ef
  %i.eh = and i64 %i.eg, %i.cv                    ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.eh
  %i.ej = load i8, ptr %i.ei, align 1, !noalias !117, !noundef !3 ; 2 uses
  %i.ek = icmp sgt i8 %i.ej, -1
  br i1 %i.ek, label %bb.ab, label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i.i, !prof !9

bb.ab:                                            ; preds = %._crit_edge.i.i.i
  %.val72.i.i.i.i = load <16 x i8>, ptr %i.cw, align 16, !noalias !117
  %i.el = icmp slt <16 x i8> %.val72.i.i.i.i, zeroinitializer
  %i.em = bitcast <16 x i1> %i.el to i16          ; 2 uses
  %.not.i6.i.i.i = icmp ne i16 %i.em, 0
  %i.en = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.em, i1 true)
  %i.eo = zext nneg i16 %i.en to i64              ; 2 uses
  call void @llvm.assume(i1 %.not.i6.i.i.i)
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.eo
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 1, !noalias !117
  br label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.aa, %.lr.ph.i.i.i
  %.sroa.0.010.i.i.i = phi i64 [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.0.07.i.i.i, %bb.aa ]
  %i.ep = phi i64 [ %i.eq, %.lr.ph.i.i.i ], [ 0, %bb.aa ]
  %i.eq = add i64 %i.ep, 16                       ; 2 uses
  %i.er = add i64 %i.eq, %.sroa.0.010.i.i.i
  %.sroa.0.0.i.i.i = and i64 %i.er, %i.cv         ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.cw, i64 %.sroa.0.0.i.i.i
  %.sroa.0.0.copyload.i6.i.i.i = load <16 x i8>, ptr %i.es, align 1, !noalias !116
  %i.et = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i.i, zeroinitializer
  %i.eu = bitcast <16 x i1> %i.et to i16          ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.eu, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !prof !11

_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i.i: ; preds = %bb.ab, %._crit_edge.i.i.i
  %i.ev = phi i8 [ %.pre.i.i, %bb.ab ], [ %i.ej, %._crit_edge.i.i.i ] ; 2 uses
  %.sroa.0.0.i5.i.i.i = phi i64 [ %i.eo, %bb.ab ], [ %i.eh, %._crit_edge.i.i.i ]
  %i.ew = load i64, ptr %i.ai, align 8, !alias.scope !115, !noalias !118, !noundef !3 ; 2 uses
  %i.ex = icmp eq i64 %i.ew, 0
  %i.ey = trunc i8 %i.ev to i1
  %or.cond.i.i = and i1 %i.ex, %i.ey
  br i1 %or.cond.i.i, label %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableTReNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoEE7reserveNCINvNtB8_3map11make_hasherBQ_BS_NtNtB8_6hasher18DefaultHashBuilderE0EBY_.exit.i.i, label %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableTReNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoEE6insertNCINvNtB8_3map11make_hasherBQ_BS_NtNtB8_6hasher18DefaultHashBuilderE0EBY_.exit.i, !prof !12

_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableTReNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoEE7reserveNCINvNtB8_3map11make_hasherBQ_BS_NtNtB8_6hasher18DefaultHashBuilderE0EBY_.exit.i.i: ; preds = %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i.i
  %i.ez = invoke { i64, i64 } @_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableTReNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_BS_NtNtB8_6hasher18DefaultHashBuilderE0EBY_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.j, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n, i1 noundef zeroext true)
          to label %.noexc70 unwind label %bb.x   ; 0 uses

.noexc70:                                         ; preds = %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableTReNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoEE7reserveNCINvNtB8_3map11make_hasherBQ_BS_NtNtB8_6hasher18DefaultHashBuilderE0EBY_.exit.i.i
  %.val7.i.i = load ptr, ptr %i.j, align 8, !alias.scope !115, !noalias !118 ; 3 uses
  %.val8.i.i = load i64, ptr %i.af, align 8, !alias.scope !115, !noalias !118, !noundef !3 ; 2 uses
  %i.fa = call fastcc noundef i64 @_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index(ptr %.val7.i.i, i64 %.val8.i.i, i64 noundef %i.cs), !noalias !119 ; 2 uses
  %.phi.trans.insert9.i.i = getelementptr inbounds nuw i8, ptr %.val7.i.i, i64 %i.fa
  %.pre10.i.i = load i8, ptr %.phi.trans.insert9.i.i, align 1, !noalias !120
  %.pre11.i.i = load i64, ptr %i.ai, align 8, !alias.scope !121, !noalias !122
  br label %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableTReNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoEE6insertNCINvNtB8_3map11make_hasherBQ_BS_NtNtB8_6hasher18DefaultHashBuilderE0EBY_.exit.i

_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableTReNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoEE6insertNCINvNtB8_3map11make_hasherBQ_BS_NtNtB8_6hasher18DefaultHashBuilderE0EBY_.exit.i: ; preds = %.noexc70, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i.i
  %i.fb = phi i64 [ %.val8.i.i, %.noexc70 ], [ %i.cv, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i.i ]
  %i.fc = phi i64 [ %.pre11.i.i, %.noexc70 ], [ %i.ew, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i.i ]
  %i.fd = phi i8 [ %.pre10.i.i, %.noexc70 ], [ %i.ev, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i.i ]
  %i.fe = phi ptr [ %.val7.i.i, %.noexc70 ], [ %i.cw, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i.i ] ; 3 uses
  %.sroa.0.0.i.i = phi i64 [ %i.fa, %.noexc70 ], [ %.sroa.0.0.i5.i.i.i, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !123)
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 %.sroa.0.0.i.i
  %i.fg = and i8 %i.fd, 1
  %i.fh = zext nneg i8 %i.fg to i64
  %i.fi = sub i64 %i.fc, %i.fh
  store i64 %i.fi, ptr %i.ai, align 8, !alias.scope !121, !noalias !122
  %i.fj = add i64 %.sroa.0.0.i.i, -16
  %i.fk = and i64 %i.fj, %i.fb
  store i8 %i.cu, ptr %i.ff, align 1, !noalias !120
  %i.fl = getelementptr i8, ptr %i.fe, i64 %i.fk
  %i.fm = getelementptr i8, ptr %i.fl, i64 16
  store i8 %i.cu, ptr %i.fm, align 1, !noalias !120
  %i.fn = load i64, ptr %i.aj, align 8, !alias.scope !121, !noalias !122, !noundef !3
  %i.fo = add i64 %i.fn, 1
  store i64 %i.fo, ptr %i.aj, align 8, !alias.scope !121, !noalias !122
  %i.fp = sub nsw i64 0, %.sroa.0.0.i.i
  %i.fq = getelementptr inbounds [144 x i8], ptr %i.fe, i64 %i.fp ; 8 uses
  %i.fr = getelementptr inbounds i8, ptr %i.fq, i64 -144
  store ptr %i.cq, ptr %i.fr, align 8, !noalias !124
  %.sroa.4.0..sroa_idx.i68 = getelementptr inbounds i8, ptr %i.fq, i64 -136
  store i64 %i.cr, ptr %.sroa.4.0..sroa_idx.i68, align 8, !noalias !124
  %.sroa.5.0..sroa_idx.i69 = getelementptr inbounds i8, ptr %i.fq, i64 -128
  store i64 0, ptr %.sroa.5.0..sroa_idx.i69, align 8, !noalias !125
  %.sroa.498.0..sroa.5.0..sroa_idx.i69.sroa_idx = getelementptr inbounds i8, ptr %i.fq, i64 -112
  store i64 0, ptr %.sroa.498.0..sroa.5.0..sroa_idx.i69.sroa_idx, align 8, !noalias !125
  %.sroa.5100.0..sroa.5.0..sroa_idx.i69.sroa_idx = getelementptr inbounds i8, ptr %i.fq, i64 -40
  store ptr %i.dz, ptr %.sroa.5100.0..sroa.5.0..sroa_idx.i69.sroa_idx, align 8, !noalias !125
  %.sroa.6.0..sroa.5.0..sroa_idx.i69.sroa_idx = getelementptr inbounds i8, ptr %i.fq, i64 -32
  store i64 %i.ea, ptr %.sroa.6.0..sroa.5.0..sroa_idx.i69.sroa_idx, align 8, !noalias !125
  %.sroa.7101.0..sroa.5.0..sroa_idx.i69.sroa_idx = getelementptr inbounds i8, ptr %i.fq, i64 -24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7101.0..sroa.5.0..sroa_idx.i69.sroa_idx, i8 0, i64 24, i1 false)
  br label %bb.ad

bb.ac:                                            ; preds = %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableTReNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoEE4findNCINvNtBa_3map14equivalent_keyBS_BS_BU_E0E0B10_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.phi.trans.insert = getelementptr inbounds i8, ptr %i.dh, i64 -24
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert181 = getelementptr inbounds i8, ptr %i.dh, i64 -8
  %.pre182 = load i64, ptr %.phi.trans.insert181, align 8
  %.phi.trans.insert183 = getelementptr inbounds i8, ptr %i.dh, i64 -16
  %.pre184 = load i64, ptr %.phi.trans.insert183, align 8
  %i.fs = add i64 %.pre, 1
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableTReNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoEE6insertNCINvNtB8_3map11make_hasherBQ_BS_NtNtB8_6hasher18DefaultHashBuilderE0EBY_.exit.i
  %i.ft = phi i64 [ 0, %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableTReNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoEE6insertNCINvNtB8_3map11make_hasherBQ_BS_NtNtB8_6hasher18DefaultHashBuilderE0EBY_.exit.i ], [ %.pre184, %bb.ac ]
  %i.fu = phi i64 [ 0, %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableTReNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoEE6insertNCINvNtB8_3map11make_hasherBQ_BS_NtNtB8_6hasher18DefaultHashBuilderE0EBY_.exit.i ], [ %.pre182, %bb.ac ]
  %i.fv = phi i64 [ 1, %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableTReNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoEE6insertNCINvNtB8_3map11make_hasherBQ_BS_NtNtB8_6hasher18DefaultHashBuilderE0EBY_.exit.i ], [ %i.fs, %bb.ac ]
  %.pn.i = phi ptr [ %i.fq, %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableTReNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoEE6insertNCINvNtB8_3map11make_hasherBQ_BS_NtNtB8_6hasher18DefaultHashBuilderE0EBY_.exit.i ], [ %i.dh, %bb.ac ] ; 5 uses
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.pn.i, i64 -128 ; 2 uses
  %i.fw = getelementptr inbounds i8, ptr %.pn.i, i64 -24
  store i64 %i.fv, ptr %i.fw, align 8
  %i.fx = load i64, ptr %i.ak, align 8, !noundef !3
  %i.fy = getelementptr inbounds i8, ptr %.pn.i, i64 -8
  %i.fz = add i64 %i.fu, %i.fx
  store i64 %i.fz, ptr %i.fy, align 8
  %i.ga = load i64, ptr %i.al, align 8, !noundef !3
  %i.gb = getelementptr inbounds i8, ptr %.pn.i, i64 -16
  %i.gc = add i64 %i.ft, %i.ga
  store i64 %i.gc, ptr %i.gb, align 8
  %i.gd = load i64, ptr %i.d, align 8, !range !100, !noundef !3
  %i.ge = trunc nuw i64 %i.gd to i1
  br i1 %i.ge, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.gf = load i64, ptr %.sroa.791.0..sroa_idx, align 8, !noundef !3
  %i.gg = load i64, ptr %.sroa.0.0.i, align 8, !range !100, !noundef !3
  %i.gh = getelementptr inbounds i8, ptr %.pn.i, i64 -120 ; 2 uses
  %i.gi = trunc nuw i64 %i.gg to i1
  br i1 %i.gi, label %bb.ai, label %bb.aj

bb.af:                                            ; preds = %bb.aj, %bb.ad
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8MemoInfoENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8SlotInfoEBH_.exit.i72 unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8MemoInfoENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %.body73 unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8SlotInfoEBH_.exit.i72: ; preds = %bb.af
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8MemoInfoENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8MemoInfoEBH_.exit76 unwind label %bb.t

bb.ai:                                            ; preds = %bb.ae
  %i.gl = load i64, ptr %i.gh, align 8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ae, %bb.ai
  %.sroa.028.0 = phi i64 [ %i.gl, %bb.ai ], [ 0, %bb.ae ]
  %i.gm = add i64 %.sroa.028.0, %i.gf
  store i64 1, ptr %.sroa.0.0.i, align 8
  store i64 %i.gm, ptr %i.gh, align 8
  br label %bb.af

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8MemoInfoEBH_.exit76: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8SlotInfoEBH_.exit.i72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.791)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.791)
  %i.gn = load ptr, ptr %.sroa.627.0..sroa_idx, align 8, !alias.scope !126, !noalias !104, !nonnull !3, !noundef !3
  %i.go = load ptr, ptr %.sroa.425.0..sroa_idx, align 8, !alias.scope !126, !noalias !104, !nonnull !3, !noundef !3 ; 2 uses
  %i.gp = icmp eq ptr %i.go, %i.gn
  br i1 %i.gp, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8MemoInfoENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB11_.exit.thread, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8MemoInfoENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB11_.exit

bb.ak:                                            ; preds = %bb.ao, %bb.am, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8SlotInfoEBH_.exit.i, %.body73, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8MemoInfoEEB1u_.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8SlotInfoEEB1u_.exit
  %i.gq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body

.body:                                            ; preds = %bb.al, %bb.ak, %bb.y
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #24
  unreachable

.thread:                                          ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8SlotInfoEEB1u_.exit, %.thread120
  %.pn59118 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread120 ], [ %.pn.pn.pn, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8SlotInfoEEB1u_.exit ]
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.am unwind label %bb.al

bb.al:                                            ; preds = %.thread
  %i.gr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.body unwind label %bb.an

bb.am:                                            ; preds = %.thread
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.ao unwind label %bb.ak

bb.an:                                            ; preds = %bb.al
  %i.gs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #24
  unreachable

.critedge:                                        ; preds = %bb.ao
  resume { ptr, i32 } %.pn59118

bb.ao:                                            ; preds = %bb.am
  invoke void @_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTReNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoENtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalEB1l_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.j, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.n, i64 noundef 144, i64 noundef 16)
          to label %.critedge unwind label %bb.ak
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i32, i32 } @_RNvMs1_NtCsC8CapfvpQ1_5salsa14tracked_structNtB5_11IdentityMap12insert_entry(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(16) %1, i32 noundef range(i32 1, 0) %2, i32 noundef %3, i1 noundef zeroext %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %1, align 8, !noundef !3   ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !143, !noalias !142, !noundef !3
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE7reserveNCNvMs1_BR_NtBR_11IdentityMap12insert_entrys_0EBT_.exit.i, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.e = tail call { i64, i64 } @_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE14reserve_rehashNCNvMs1_BR_NtBR_11IdentityMap12insert_entrys_0EBT_(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 1, i1 noundef zeroext true), !noalias !142 ; 0 uses
  br label %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE7reserveNCNvMs1_BR_NtBR_11IdentityMap12insert_entrys_0EBT_.exit.i

_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE7reserveNCNvMs1_BR_NtBR_11IdentityMap12insert_entrys_0EBT_.exit.i: ; preds = %bb.b, %bb.a
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !141, !noalias !142, !nonnull !3, !noundef !3 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val7.i = load i64, ptr %i.f, align 8, !alias.scope !141, !noalias !142, !noundef !3 ; 4 uses
  %i.g = lshr i64 %i.a, 57
  %i.h = trunc nuw nsw i64 %i.g to i8             ; 3 uses
  %i.i = insertelement <16 x i8> poison, i8 %i.h, i64 0
  %i.j = shufflevector <16 x i8> %i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.m = load i32, ptr %i.k, align 8, !alias.scope !142, !noalias !141
  %i.n = load i32, ptr %i.l, align 4, !alias.scope !142, !noalias !141
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE7reserveNCNvMs1_BR_NtBR_11IdentityMap12insert_entrys_0EBT_.exit.i
  %.pn.i.i = phi i64 [ %i.a, %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE7reserveNCNvMs1_BR_NtBR_11IdentityMap12insert_entrys_0EBT_.exit.i ], [ %i.at, %bb.f ]
  %.sroa.4.0.i.i = phi i64 [ undef, %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE7reserveNCNvMs1_BR_NtBR_11IdentityMap12insert_entrys_0EBT_.exit.i ], [ %.sroa.4.125.i.i, %bb.f ]
  %.sroa.01.0.i.i = phi i64 [ 0, %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE7reserveNCNvMs1_BR_NtBR_11IdentityMap12insert_entrys_0EBT_.exit.i ], [ %.sroa.01.127.i.i, %bb.f ]
  %i.o = phi i64 [ 0, %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE7reserveNCNvMs1_BR_NtBR_11IdentityMap12insert_entrys_0EBT_.exit.i ], [ %i.as, %bb.f ]
  %.sroa.0.021.i.i = and i64 %.pn.i.i, %.val7.i   ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.021.i.i
  %.sroa.0.0.copyload.i32.i.i = load <16 x i8>, ptr %i.p, align 1, !noalias !144 ; 3 uses
  %i.q = icmp eq <16 x i8> %.sroa.0.0.copyload.i32.i.i, %i.j
  %i.r = bitcast <16 x i1> %i.q to i16            ; 2 uses
  %.not33.i.i = icmp eq i16 %i.r, 0
  br i1 %.not33.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE25find_or_find_insert_indexNCNvMs1_BT_NtBT_11IdentityMap12insert_entry0NCB2c_s_0E0BV_.exit.thread.i.i
  %.sroa.05.034.i.i = phi i16 [ %i.ai, %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE25find_or_find_insert_indexNCNvMs1_BT_NtBT_11IdentityMap12insert_entry0NCB2c_s_0E0BV_.exit.thread.i.i ], [ %i.r, %bb.c ] ; 3 uses
  %i.s = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.034.i.i, i1 true)
  %i.t = zext nneg i16 %i.s to i64
  %i.u = add i64 %.sroa.0.021.i.i, %i.t
  %i.v = and i64 %i.u, %.val7.i
  %i.w = sub nsw i64 0, %i.v
  %i.x = getelementptr inbounds [32 x i8], ptr %.val.i, i64 %i.w ; 6 uses
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -24
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !145, !noalias !146, !noundef !3
  %i.aa = icmp eq i64 %i.z, %i.a
  br i1 %i.aa, label %bb.d, label %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE25find_or_find_insert_indexNCNvMs1_BT_NtBT_11IdentityMap12insert_entry0NCB2c_s_0E0BV_.exit.thread.i.i, !prof !7

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.ab = getelementptr inbounds i8, ptr %i.x, i64 -16
  %i.ac = load i32, ptr %i.ab, align 8, !alias.scope !145, !noalias !146, !noundef !3
  %i.ad = icmp eq i32 %i.ac, %i.m
  br i1 %i.ad, label %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE25find_or_find_insert_indexNCNvMs1_BT_NtBT_11IdentityMap12insert_entry0NCB2c_s_0E0BV_.exit.i.i, label %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE25find_or_find_insert_indexNCNvMs1_BT_NtBT_11IdentityMap12insert_entry0NCB2c_s_0E0BV_.exit.thread.i.i, !prof !7

_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE25find_or_find_insert_indexNCNvMs1_BT_NtBT_11IdentityMap12insert_entry0NCB2c_s_0E0BV_.exit.i.i: ; preds = %bb.d
  %i.ae = getelementptr inbounds i8, ptr %i.x, i64 -12
  %i.af = load i32, ptr %i.ae, align 4, !alias.scope !145, !noalias !146, !noundef !3
  %i.ag = icmp eq i32 %i.af, %i.n
  br i1 %i.ag, label %bb.j, label %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE25find_or_find_insert_indexNCNvMs1_BT_NtBT_11IdentityMap12insert_entry0NCB2c_s_0E0BV_.exit.thread.i.i, !prof !8

._crit_edge.i.i:                                  ; preds = %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE25find_or_find_insert_indexNCNvMs1_BT_NtBT_11IdentityMap12insert_entry0NCB2c_s_0E0BV_.exit.thread.i.i, %bb.c
  %.not12.i.i = icmp eq i64 %.sroa.01.0.i.i, 1
  br i1 %.not12.i.i, label %.thread.i.i, label %bb.e, !prof !9

_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE25find_or_find_insert_indexNCNvMs1_BT_NtBT_11IdentityMap12insert_entry0NCB2c_s_0E0BV_.exit.thread.i.i: ; preds = %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE25find_or_find_insert_indexNCNvMs1_BT_NtBT_11IdentityMap12insert_entry0NCB2c_s_0E0BV_.exit.i.i, %bb.d, %.lr.ph.i.i
  %i.ah = add i16 %.sroa.05.034.i.i, -1
  %i.ai = and i16 %i.ah, %.sroa.05.034.i.i        ; 2 uses
  %.not.i.i = icmp eq i16 %i.ai, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.aj = icmp slt <16 x i8> %.sroa.0.0.copyload.i32.i.i, zeroinitializer
  %i.ak = bitcast <16 x i1> %i.aj to i16          ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.ak, 0
  br i1 %.not.i.i.i, label %bb.f, label %.thread29.i.i, !prof !9

.thread29.i.i:                                    ; preds = %bb.e
  %i.al = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ak, i1 true)
  %i.am = zext nneg i16 %i.al to i64
  %i.an = add i64 %.sroa.0.021.i.i, %i.am
  %i.ao = and i64 %i.an, %.val7.i
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %.thread29.i.i, %._crit_edge.i.i
  %.sroa.4.126.i.i = phi i64 [ %i.ao, %.thread29.i.i ], [ %.sroa.4.0.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.ap = icmp eq <16 x i8> %.sroa.0.0.copyload.i32.i.i, splat (i8 -1)
  %i.aq = bitcast <16 x i1> %i.ap to i16
  %i.ar = icmp eq i16 %i.aq, 0
  br i1 %i.ar, label %bb.f, label %bb.g, !prof !9

bb.f:                                             ; preds = %.thread.i.i, %bb.e
  %.sroa.01.127.i.i = phi i64 [ 1, %.thread.i.i ], [ 0, %bb.e ]
  %.sroa.4.125.i.i = phi i64 [ %.sroa.4.126.i.i, %.thread.i.i ], [ undef, %bb.e ]
  %i.as = add i64 %i.o, 16                        ; 2 uses
  %i.at = add i64 %i.as, %.sroa.0.021.i.i
  br label %bb.c

bb.g:                                             ; preds = %.thread.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.4.126.i.i
  %i.av = load i8, ptr %i.au, align 1, !noalias !142, !noundef !3 ; 2 uses
  %i.aw = icmp sgt i8 %i.av, -1
  br i1 %i.aw, label %bb.h, label %bb.i, !prof !9

bb.h:                                             ; preds = %bb.g
  %.val72.i.i.i = load <16 x i8>, ptr %.val.i, align 16, !noalias !142
  %i.ax = icmp slt <16 x i8> %.val72.i.i.i, zeroinitializer
  %i.ay = bitcast <16 x i1> %i.ax to i16          ; 2 uses
  %.not.i23.i.i = icmp ne i16 %i.ay, 0
  %i.az = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ay, i1 true)
  %i.ba = zext nneg i16 %i.az to i64              ; 2 uses
  tail call void @llvm.assume(i1 %.not.i23.i.i)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.ba
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !noalias !147
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.bb = phi i8 [ %.pre, %bb.h ], [ %i.av, %bb.g ]
  %.sroa.3.0.i.ph.i = phi i64 [ %i.ba, %bb.h ], [ %.sroa.4.126.i.i, %bb.g ] ; 3 uses
  %i.bc = zext i1 %4 to i8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148)
  %i.bd = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.3.0.i.ph.i
  %i.be = and i8 %i.bb, 1
  %i.bf = zext nneg i8 %i.be to i64
  %i.bg = add i64 %.sroa.3.0.i.ph.i, -16
  %i.bh = and i64 %i.bg, %.val7.i
  store i8 %i.h, ptr %i.bd, align 1, !noalias !147
  %i.bi = getelementptr i8, ptr %.val.i, i64 %i.bh
  %i.bj = getelementptr i8, ptr %i.bi, i64 16
  store i8 %i.h, ptr %i.bj, align 1, !noalias !147
  %i.bk = load <2 x i64>, ptr %i.b, align 8, !alias.scope !148, !noalias !149
  %i.bl = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.bf, i64 0
  %i.bm = sub <2 x i64> %i.bk, %i.bl
  store <2 x i64> %i.bm, ptr %i.b, align 8, !alias.scope !148, !noalias !149
  %i.bn = sub nsw i64 0, %.sroa.3.0.i.ph.i
  %i.bo = getelementptr inbounds [32 x i8], ptr %.val.i, i64 %i.bn ; 4 uses
  %i.bp = getelementptr inbounds i8, ptr %i.bo, i64 -32
  store i32 %2, ptr %i.bp, align 8, !noalias !148
  %.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %i.bo, i64 -28
  store i32 %3, ptr %.sroa.4.0..sroa_idx, align 4, !noalias !148
  %.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %i.bo, i64 -24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !noalias !148
  %.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %i.bo, i64 -8
  store i8 %i.bc, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !148
  br label %bb.k

bb.j:                                             ; preds = %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE25find_or_find_insert_indexNCNvMs1_BT_NtBT_11IdentityMap12insert_entry0NCB2c_s_0E0BV_.exit.i.i
  %i.bq = getelementptr inbounds i8, ptr %i.x, i64 -32 ; 2 uses
  %i.br = getelementptr inbounds i8, ptr %i.x, i64 -8
  %i.bs = zext i1 %4 to i8
  store i8 %i.bs, ptr %i.br, align 8
  %i.bt = load i32, ptr %i.bq, align 8, !range !13, !noundef !3
  %i.bu = getelementptr inbounds i8, ptr %i.x, i64 -28 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !noundef !3
  store i32 %2, ptr %i.bq, align 8
  store i32 %3, ptr %i.bu, align 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.3.0 = phi i32 [ undef, %bb.i ], [ %i.bv, %bb.j ]
  %.sroa.0.0 = phi i32 [ 0, %bb.i ], [ %i.bt, %bb.j ]
  %i.bw = insertvalue { i32, i32 } poison, i32 %.sroa.0.0, 0
  %i.bx = insertvalue { i32, i32 } %i.bw, i32 %.sroa.3.0, 1
  ret { i32, i32 } %i.bx
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtCsC8CapfvpQ1_5salsa14tracked_structNtB5_11IdentityMap4seed(ptr noalias noundef align 8 dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address) %1, i64 noundef range(i64 0, 384307168202282326) %2) unnamed_addr #0 {
bb.a:
  %.idx = mul nuw nsw i64 %2, 24
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.03 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 16
  %i.e = load i32, ptr %i.d, align 8, !range !13, !noundef !3
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 20
  %i.g = load i32, ptr %i.f, align 4, !noundef !3
  %i.h = tail call fastcc { i32, i32 } @_RNvMs1_NtCsC8CapfvpQ1_5salsa14tracked_structNtB5_11IdentityMap12insert_entry(ptr noalias noundef align 8 dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address) dereferenceable(16) %.sroa.0.03, i32 noundef %i.e, i32 noundef %i.g, i1 noundef zeroext false) ; 0 uses
  %i.i = icmp eq ptr %i.c, %i.a
  br i1 %i.i, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtCsC8CapfvpQ1_5salsa14tracked_structNtB5_11IdentityMap5clear(ptr noalias noundef align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !152, !noundef !3
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE5clearBS_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner13drop_elementsNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryEB1d_(ptr noalias noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !152, !noundef !3 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %0, align 8, !alias.scope !152, !nonnull !3, !noundef !3
  %i.i = add i64 %i.f, 17
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.h, i8 -1, i64 %i.i, i1 false)
  %.pre.i.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !152
  %.pre.fr.i.i.i.i = freeze i64 %.pre.i.i.i.i     ; 3 uses
  %i.j = icmp ult i64 %.pre.fr.i.i.i.i, 8
  %i.k = add i64 %.pre.fr.i.i.i.i, 1
  %i.l = lshr i64 %i.k, 3
  %i.m = mul nuw i64 %i.l, 7
  %spec.select.i.i.i.i = select i1 %i.j, i64 %.pre.fr.i.i.i.i, i64 %i.m
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !152, !noundef !3 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardQINtNtBG_3raw8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryENCNvMs6_B1w_B1t_5clear0EEB1S_.exit5.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = load ptr, ptr %0, align 8, !alias.scope !152, !nonnull !3, !noundef !3
  %i.r = add i64 %i.o, 17
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.q, i8 -1, i64 %i.r, i1 false)
  %.pre.i.i.i2.i = load i64, ptr %i.n, align 8, !alias.scope !152
  %.pre.fr.i.i.i3.i = freeze i64 %.pre.i.i.i2.i   ; 3 uses
  %i.s = icmp ult i64 %.pre.fr.i.i.i3.i, 8
  %i.t = add i64 %.pre.fr.i.i.i3.i, 1
  %i.u = lshr i64 %i.t, 3
  %i.v = mul nuw i64 %i.u, 7
  %spec.select.i.i.i4.i = select i1 %i.s, i64 %.pre.fr.i.i.i3.i, i64 %i.v
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardQINtNtBG_3raw8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryENCNvMs6_B1w_B1t_5clear0EEB1S_.exit5.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardQINtNtBG_3raw8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryENCNvMs6_B1w_B1t_5clear0EEB1S_.exit5.i: ; preds = %bb.f, %bb.e
  %i.w = phi i64 [ %spec.select.i.i.i4.i, %bb.f ], [ 0, %bb.e ]
  store i64 0, ptr %i.a, align 8, !alias.scope !152
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.w, ptr %i.x, align 8, !alias.scope !152
  br label %_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE5clearBS_.exit

bb.g:                                             ; preds = %bb.d, %bb.c
  %i.y = phi i64 [ %spec.select.i.i.i.i, %bb.d ], [ 0, %bb.c ]
  store i64 0, ptr %i.a, align 8, !alias.scope !152
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.y, ptr %i.z, align 8, !alias.scope !152
  resume { ptr, i32 } %i.d

_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE5clearBS_.exit: ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardQINtNtBG_3raw8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryENCNvMs6_B1w_B1t_5clear0EEB1S_.exit5.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtCsC8CapfvpQ1_5salsa14tracked_structNtB5_11IdentityMap5drain(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [80 x i8], align 8                ; 15 uses
  %i.f = alloca [8 x i8], align 8                 ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load i64, ptr %i.h, align 8, !noundef !3 ; 3 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = tail call noundef i64 @_RNvMs3_Csa3bo7ChGFM8_8thin_vecINtB5_7ThinVecTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBL_2id2IdEE13with_capacityBL_(i64 noundef 0)
  store i64 %i.k, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.l, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 0, ptr %i.g, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 4 uses
  store i64 0, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.o = invoke noundef i64 @_RNvMs3_Csa3bo7ChGFM8_8thin_vecINtB5_7ThinVecTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBL_2id2IdEE13with_capacityBL_(i64 noundef %i.i)
          to label %bb.i unwind label %bb.e

bb.d:                                             ; preds = %bb.t, %bb.b
  ret void

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsa3bo7ChGFM8_8thin_vec7ThinVecTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1e_2id2IdEEEB1e_.exit: ; preds = %bb.f, %bb.g, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %i.p, %bb.e ], [ %.pn, %bb.g ], [ %.pn, %bb.f ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1c_2id2IdEEEB1c_(ptr noalias noundef align 8 dereferenceable(24) %i.g) #25
          to label %bb.aa unwind label %bb.z

bb.e:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsa3bo7ChGFM8_8thin_vec7ThinVecTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1e_2id2IdEEEB1e_.exit

bb.f:                                             ; preds = %bb.k, %bb.h
  %.pn = phi { ptr, i32 } [ %i.af, %bb.k ], [ %i.s, %bb.h ] ; 2 uses
  %i.q = load ptr, ptr %i.f, align 8, !alias.scope !171, !nonnull !3, !noundef !3
  %i.r = icmp eq ptr %i.q, @_RNvCsa3bo7ChGFM8_8thin_vec12EMPTY_HEADER
  br i1 %i.r, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsa3bo7ChGFM8_8thin_vec7ThinVecTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1e_2id2IdEEEB1e_.exit, label %bb.g, !prof !4

bb.g:                                             ; preds = %bb.f
  invoke void @_RINvCsa3bo7ChGFM8_8thin_vec18drop_non_singletonTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBO_2id2IdEEBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsa3bo7ChGFM8_8thin_vec7ThinVecTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1e_2id2IdEEEB1e_.exit unwind label %bb.z

bb.h:                                             ; preds = %bb.s, %bb.r, %bb.n
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.i:                                             ; preds = %bb.c
  store i64 %i.o, ptr %i.f, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !172)
  %i.t = load ptr, ptr %1, align 8, !alias.scope !172, !noalias !173, !nonnull !3, !noundef !3 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !172, !noalias !173, !noundef !3
  %i.w = getelementptr i8, ptr %i.t, i64 %i.v
  %i.x = getelementptr i8, ptr %i.w, i64 1
  %.val24.i = load <16 x i8>, ptr %i.t, align 16, !noalias !174
  %i.y = icmp sgt <16 x i8> %.val24.i, splat (i8 -1)
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.07.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.07.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) @20, i64 32, i1 false)
  store ptr %i.t, ptr %i.e, align 8
  %.sroa.07.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.z, ptr %.sroa.07.sroa.2.0..sroa_idx, align 8
  %.sroa.07.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.x, ptr %.sroa.07.sroa.3.0..sroa_idx, align 8
  %.sroa.07.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store <16 x i1> %i.y, ptr %.sroa.07.sroa.4.0..sroa_idx, align 8
  %.sroa.07.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 %i.i, ptr %.sroa.07.sroa.6.0..sroa_idx, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 72 ; 2 uses
  store ptr %1, ptr %.sroa.2.0..sroa_idx, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  br label %bb.j

bb.j:                                             ; preds = %.backedge, %bb.i
  invoke void @_RNvXsZ_NtCsgMW4BsFgQdt_9hashbrown5tableINtB5_5DrainNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBR_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.e)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.v, %bb.w, %bb.j
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown5table5DrainNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryEEB1k_(ptr noalias noundef align 8 dereferenceable(80) %i.e) #25
          to label %bb.f unwind label %bb.z

bb.l:                                             ; preds = %bb.j
  %i.ag = load i8, ptr %i.aa, align 8, !range !175, !noundef !3 ; 2 uses
  %.not = icmp eq i8 %i.ag, 2
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = load i32, ptr %i.c, align 8, !range !13, !noundef !3 ; 2 uses
  %i.ai = load i32, ptr %i.ac, align 4, !noundef !3 ; 2 uses
  %i.aj = trunc nuw i8 %i.ag to i1
  br i1 %i.aj, label %bb.w, label %bb.u

bb.n:                                             ; preds = %bb.l
  invoke void @_RNvMsn_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_7RawIterNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE13drop_elementsBR_(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.e)
          to label %.noexc13 unwind label %bb.h

.noexc13:                                         ; preds = %bb.n
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !176, !noundef !3 ; 2 uses
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.noexc13
  %i.an = load ptr, ptr %.sroa.07.sroa.7.0..sroa_idx, align 8, !alias.scope !176, !nonnull !3, !noundef !3
  %i.ao = add i64 %i.al, 17
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.an, i8 -1, i64 %i.ao, i1 false)
  %.pre.i.i.i = load i64, ptr %i.ak, align 8, !alias.scope !176
  %.pre.fr.i.i.i = freeze i64 %.pre.i.i.i         ; 3 uses
  %i.ap = icmp ult i64 %.pre.fr.i.i.i, 8
  %i.aq = add i64 %.pre.fr.i.i.i, 1
  %i.ar = lshr i64 %i.aq, 3
  %i.as = mul nuw i64 %i.ar, 7
  %spec.select.i.i.i = select i1 %i.ap, i64 %.pre.fr.i.i.i, i64 %i.as
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.noexc13
  %i.at = phi i64 [ %spec.select.i.i.i, %bb.o ], [ 0, %.noexc13 ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store i64 0, ptr %i.au, align 8, !alias.scope !176
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store i64 %i.at, ptr %i.av, align 8, !alias.scope !176
  %i.aw = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !176, !nonnull !3, !noundef !3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aw, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.07.sroa.7.0..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ax = load ptr, ptr %i.m, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.ay = load i64, ptr %i.n, align 8, !noundef !3 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !177
  store ptr %i.a, ptr %i.b, align 8, !noalias !177
  %i.az = icmp samesign ult i64 %i.ay, 2
  br i1 %i.az, label %bb.t, label %bb.q, !prof !4

bb.q:                                             ; preds = %bb.p
  %i.ba = icmp samesign ult i64 %i.ay, 21
  br i1 %i.ba, label %bb.s, label %bb.r, !prof !4

bb.r:                                             ; preds = %bb.q
  invoke void @_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable7ipnsortTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBY_2id2IdENCINvMB6_SBT_16sort_unstable_byNCNvMs1_BW_NtBW_11IdentityMap5drain0E0EBY_(ptr noalias noundef nonnull align 8 %i.ax, i64 noundef range(i64 0, 384307168202282326) %i.ay, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.t unwind label %bb.h

bb.s:                                             ; preds = %bb.q
  invoke void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1r_2id2IdENCINvMB8_SB1m_16sort_unstable_byNCNvMs1_B1p_NtB1p_11IdentityMap5drain0E0EB1r_(ptr noalias noundef nonnull align 8 %i.ax, i64 noundef range(i64 0, 384307168202282326) %i.ay, i64 noundef 1, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.t unwind label %bb.h

bb.t:                                             ; preds = %bb.p, %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !177
  %.sroa.03.0.copyload = load i64, ptr %i.f, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  store i64 %.sroa.03.0.copyload, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.d

bb.u:                                             ; preds = %bb.m
  %i.bc = load i64, ptr %i.n, align 8, !alias.scope !178, !noalias !179, !noundef !3 ; 3 uses
  %i.bd = load i64, ptr %i.g, align 8, !range !6, !alias.scope !178, !noalias !179, !noundef !3
  %i.be = icmp eq i64 %i.bc, %i.bd
  br i1 %i.be, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBQ_2id2IdEE8grow_oneBQ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.x unwind label %bb.k

bb.w:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i64 16, i1 false)
  store i32 %i.ah, ptr %i.ad, align 8
  store i32 %i.ai, ptr %i.ae, align 4
  invoke void @_RNvMs3_Csa3bo7ChGFM8_8thin_vecINtB5_7ThinVecTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBL_2id2IdEE4pushBL_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d)
          to label %bb.y unwind label %bb.k

bb.x:                                             ; preds = %bb.u, %bb.v
  %i.bf = load ptr, ptr %i.m, align 8, !alias.scope !178, !noalias !179, !nonnull !3, !noundef !3
  %i.bg = getelementptr inbounds nuw [24 x i8], ptr %i.bf, i64 %i.bc ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i64 16, i1 false)
  %.sroa.4.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store i32 %i.ah, ptr %.sroa.4.0..sroa_idx17, align 8
  %.sroa.5.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %i.bg, i64 20
  store i32 %i.ai, ptr %.sroa.5.0..sroa_idx18, align 4
  %i.bh = add i64 %i.bc, 1
  store i64 %i.bh, ptr %i.n, align 8, !alias.scope !178, !noalias !179
  br label %.backedge

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.backedge

.backedge:                                        ; preds = %bb.y, %bb.x
  br label %bb.j

bb.z:                                             ; preds = %bb.g, %bb.k, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsa3bo7ChGFM8_8thin_vec7ThinVecTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1e_2id2IdEEEB1e_.exit
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.aa:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsa3bo7ChGFM8_8thin_vec7ThinVecTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1e_2id2IdEEEB1e_.exit
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden { i32, i32 } @_RNvMs1_NtCsC8CapfvpQ1_5salsa14tracked_structNtB5_11IdentityMap5reuse(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %1, align 8, !noundef !3   ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !192)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !193)
  %i.b = lshr i64 %i.a, 57
  %i.c = trunc nuw nsw i64 %i.b to i8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !194, !noalias !195, !noundef !3 ; 2 uses
  %i.f = load ptr, ptr %0, align 8, !alias.scope !194, !noalias !195, !nonnull !3, !noundef !3 ; 2 uses
  %i.g = insertelement <16 x i8> poison, i8 %i.c, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.k = load i32, ptr %i.i, align 8
  %i.l = load i32, ptr %i.j, align 4
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.sroa.011.0.i.i = phi i64 [ 0, %bb.a ], [ %i.aj, %bb.d ]
  %.pn.i.i = phi i64 [ %i.a, %bb.a ], [ %i.ak, %bb.d ]
  %.sroa.01.0.i.i = and i64 %.pn.i.i, %i.e        ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.01.0.i.i
  %.sroa.0.0.copyload.i27.i = load <16 x i8>, ptr %i.m, align 1, !noalias !196 ; 2 uses
  %i.n = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i, %i.h
  %i.o = bitcast <16 x i1> %i.n to i16            ; 2 uses
  %.not.i.not33.i = icmp eq i16 %i.o, 0
  br i1 %.not.i.not33.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE4findNCNvMs1_BT_NtBT_11IdentityMap5reuse0E0BV_.exit.thread.i
  %.sroa.05.0.i34.i = phi i16 [ %i.ai, %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE4findNCNvMs1_BT_NtBT_11IdentityMap5reuse0E0BV_.exit.thread.i ], [ %i.o, %bb.b ] ; 3 uses
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i34.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = add i64 %.sroa.01.0.i.i, %i.q
  %i.s = and i64 %i.r, %i.e
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr inbounds [32 x i8], ptr %i.f, i64 %i.t ; 6 uses
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -24
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !197, !noalias !198, !noundef !3
  %i.x = icmp eq i64 %i.a, %i.w
  br i1 %i.x, label %bb.c, label %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE4findNCNvMs1_BT_NtBT_11IdentityMap5reuse0E0BV_.exit.thread.i, !prof !7

bb.c:                                             ; preds = %.lr.ph.i
  %i.y = getelementptr inbounds i8, ptr %i.u, i64 -16
  %i.z = load i32, ptr %i.y, align 8, !alias.scope !197, !noalias !198, !noundef !3
  %i.aa = icmp eq i32 %i.k, %i.z
  br i1 %i.aa, label %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE4findNCNvMs1_BT_NtBT_11IdentityMap5reuse0E0BV_.exit.i, label %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE4findNCNvMs1_BT_NtBT_11IdentityMap5reuse0E0BV_.exit.thread.i, !prof !7

_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE4findNCNvMs1_BT_NtBT_11IdentityMap5reuse0E0BV_.exit.i: ; preds = %bb.c
  %i.ab = getelementptr inbounds i8, ptr %i.u, i64 -12
  %i.ac = load i32, ptr %i.ab, align 4, !alias.scope !197, !noalias !198, !noundef !3
  %i.ad = icmp eq i32 %i.l, %i.ac
  br i1 %i.ad, label %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE4findNCNvMs1_BR_NtBR_11IdentityMap5reuse0EBT_.exit, label %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE4findNCNvMs1_BT_NtBT_11IdentityMap5reuse0E0BV_.exit.thread.i, !prof !8

._crit_edge.i:                                    ; preds = %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE4findNCNvMs1_BT_NtBT_11IdentityMap5reuse0E0BV_.exit.thread.i, %bb.b
  %i.ae = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i, splat (i8 -1)
  %i.af = bitcast <16 x i1> %i.ae to i16
  %i.ag = icmp eq i16 %i.af, 0
  br i1 %i.ag, label %bb.d, label %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE4findNCNvMs1_BR_NtBR_11IdentityMap5reuse0EBT_.exit.thread, !prof !9

_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE4findNCNvMs1_BT_NtBT_11IdentityMap5reuse0E0BV_.exit.thread.i: ; preds = %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE4findNCNvMs1_BT_NtBT_11IdentityMap5reuse0E0BV_.exit.i, %bb.c, %.lr.ph.i
  %i.ah = add i16 %.sroa.05.0.i34.i, -1
  %i.ai = and i16 %i.ah, %.sroa.05.0.i34.i        ; 2 uses
  %.not.i.not.i = icmp eq i16 %i.ai, 0
  br i1 %.not.i.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.d:                                             ; preds = %._crit_edge.i
  %i.aj = add i64 %.sroa.011.0.i.i, 16            ; 2 uses
  %i.ak = add i64 %.sroa.01.0.i.i, %i.aj
  br label %bb.b

_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE4findNCNvMs1_BR_NtBR_11IdentityMap5reuse0EBT_.exit: ; preds = %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE4findNCNvMs1_BT_NtBT_11IdentityMap5reuse0E0BV_.exit.i
  %i.al = getelementptr inbounds i8, ptr %i.u, i64 -32
  %i.am = getelementptr inbounds i8, ptr %i.u, i64 -8
  store i8 1, ptr %i.am, align 8
  %i.an = load i32, ptr %i.al, align 8, !range !13, !noundef !3
  %i.ao = getelementptr inbounds i8, ptr %i.u, i64 -28
  %i.ap = load i32, ptr %i.ao, align 4, !noundef !3
  br label %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE4findNCNvMs1_BR_NtBR_11IdentityMap5reuse0EBT_.exit.thread

_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE4findNCNvMs1_BR_NtBR_11IdentityMap5reuse0EBT_.exit.thread: ; preds = %._crit_edge.i, %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE4findNCNvMs1_BR_NtBR_11IdentityMap5reuse0EBT_.exit
  %.sroa.3.0 = phi i32 [ %i.ap, %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE4findNCNvMs1_BR_NtBR_11IdentityMap5reuse0EBT_.exit ], [ undef, %._crit_edge.i ]
  %.sroa.0.0 = phi i32 [ %i.an, %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE4findNCNvMs1_BR_NtBR_11IdentityMap5reuse0EBT_.exit ], [ 0, %._crit_edge.i ]
  %i.aq = insertvalue { i32, i32 } poison, i32 %.sroa.0.0, 0
  %i.ar = insertvalue { i32, i32 } %i.aq, i32 %.sroa.3.0, 1
  ret { i32, i32 } %i.ar
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RNvMs1_NtCsC8CapfvpQ1_5salsa14tracked_structNtB5_11IdentityMap6insert(ptr noalias noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1, i32 noundef range(i32 1, 0) %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc { i32, i32 } @_RNvMs1_NtCsC8CapfvpQ1_5salsa14tracked_structNtB5_11IdentityMap12insert_entry(ptr noalias noundef align 8 dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address) dereferenceable(16) %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext true)
  ret { i32, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs1_NtCsC8CapfvpQ1_5salsa14tracked_structNtB5_11IdentityMap9is_active(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !207)
  %i.b = load ptr, ptr %0, align 8, !alias.scope !207, !noalias !208, !nonnull !3, !noundef !3 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !207, !noalias !208, !noundef !3
  %i.e = getelementptr i8, ptr %i.b, i64 %i.d
  %i.f = getelementptr i8, ptr %i.e, i64 1
  %.val24.i = load <16 x i8>, ptr %i.b, align 16, !noalias !209
  %i.g = icmp sgt <16 x i8> %.val24.i, splat (i8 -1)
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !207, !noalias !208, !noundef !3
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.f, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store <16 x i1> %i.g, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.74.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.j, ptr %.sroa.74.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !210)
  %i.k = call noundef align 8 ptr @_RNvXsh_NtCsgMW4BsFgQdt_9hashbrown5tableINtB5_4IterNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBQ_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a), !noalias !210 ; 2 uses
  %.not9.i = icmp eq ptr %i.k, null
  br i1 %.not9.i, label %_RINvYINtNtCsgMW4BsFgQdt_9hashbrown5table4IterNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1z_4find5checkRBH_NCNvMs1_BJ_NtBJ_11IdentityMap9is_active0E0INtNtNtB1H_3ops12control_flow11ControlFlowB30_EEBL_.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.m = load i32, ptr %i.l, align 4, !alias.scope !210, !noalias !211, !noundef !3
  %i.n = load i32, ptr %1, align 4, !range !13, !alias.scope !210, !noalias !212
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load i32, ptr %i.o, align 4, !alias.scope !210, !noalias !212
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkRNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryNCNvMs1_B1f_NtB1f_11IdentityMap9is_active0E0B1h_.exit.i, %.lr.ph.i
  %i.q = phi ptr [ %i.k, %.lr.ph.i ], [ %i.z, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkRNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryNCNvMs1_B1f_NtB1f_11IdentityMap9is_active0E0B1h_.exit.i ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !213)
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.s = load i32, ptr %i.r, align 4, !alias.scope !213, !noalias !210, !noundef !3
  %i.t = icmp eq i32 %i.s, %i.m
  br i1 %i.t, label %bb.c, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkRNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryNCNvMs1_B1f_NtB1f_11IdentityMap9is_active0E0B1h_.exit.i

bb.c:                                             ; preds = %bb.b
  %i.u = load i32, ptr %i.q, align 8, !range !13, !alias.scope !213, !noalias !210, !noundef !3
  %i.v = icmp eq i32 %i.u, %i.n
  br i1 %i.v, label %_RNCNvMs1_NtCsC8CapfvpQ1_5salsa14tracked_structNtB7_11IdentityMap9is_active0B9_.exit.i.i, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkRNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryNCNvMs1_B1f_NtB1f_11IdentityMap9is_active0E0B1h_.exit.i

_RNCNvMs1_NtCsC8CapfvpQ1_5salsa14tracked_structNtB7_11IdentityMap9is_active0B9_.exit.i.i: ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.x = load i32, ptr %i.w, align 8, !alias.scope !213, !noalias !210, !noundef !3
  %i.y = icmp eq i32 %i.x, %i.p
  br i1 %i.y, label %_RINvYINtNtCsgMW4BsFgQdt_9hashbrown5table4IterNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1z_4find5checkRBH_NCNvMs1_BJ_NtBJ_11IdentityMap9is_active0E0INtNtNtB1H_3ops12control_flow11ControlFlowB30_EEBL_.exit, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkRNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryNCNvMs1_B1f_NtB1f_11IdentityMap9is_active0E0B1h_.exit.i

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkRNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryNCNvMs1_B1f_NtB1f_11IdentityMap9is_active0E0B1h_.exit.i: ; preds = %_RNCNvMs1_NtCsC8CapfvpQ1_5salsa14tracked_structNtB7_11IdentityMap9is_active0B9_.exit.i.i, %bb.c, %bb.b
  %i.z = call noundef align 8 ptr @_RNvXsh_NtCsgMW4BsFgQdt_9hashbrown5tableINtB5_4IterNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBQ_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a), !noalias !210 ; 2 uses
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %_RINvYINtNtCsgMW4BsFgQdt_9hashbrown5table4IterNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1z_4find5checkRBH_NCNvMs1_BJ_NtBJ_11IdentityMap9is_active0E0INtNtNtB1H_3ops12control_flow11ControlFlowB30_EEBL_.exit.thread, label %bb.b

_RINvYINtNtCsgMW4BsFgQdt_9hashbrown5table4IterNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1z_4find5checkRBH_NCNvMs1_BJ_NtBJ_11IdentityMap9is_active0E0INtNtNtB1H_3ops12control_flow11ControlFlowB30_EEBL_.exit: ; preds = %_RNCNvMs1_NtCsC8CapfvpQ1_5salsa14tracked_structNtB7_11IdentityMap9is_active0B9_.exit.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.ab = load i8, ptr %i.aa, align 8, !range !214, !noundef !3
  %i.ac = trunc nuw i8 %i.ab to i1
  br label %_RINvYINtNtCsgMW4BsFgQdt_9hashbrown5table4IterNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1z_4find5checkRBH_NCNvMs1_BJ_NtBJ_11IdentityMap9is_active0E0INtNtNtB1H_3ops12control_flow11ControlFlowB30_EEBL_.exit.thread

_RINvYINtNtCsgMW4BsFgQdt_9hashbrown5table4IterNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1z_4find5checkRBH_NCNvMs1_BJ_NtBJ_11IdentityMap9is_active0E0INtNtNtB1H_3ops12control_flow11ControlFlowB30_EEBL_.exit.thread: ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkRNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryNCNvMs1_B1f_NtB1f_11IdentityMap9is_active0E0B1h_.exit.i, %bb.a, %_RINvYINtNtCsgMW4BsFgQdt_9hashbrown5table4IterNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1z_4find5checkRBH_NCNvMs1_BJ_NtBJ_11IdentityMap9is_active0E0INtNtNtB1H_3ops12control_flow11ControlFlowB30_EEBL_.exit
  %.sroa.0.0 = phi i1 [ %i.ac, %_RINvYINtNtCsgMW4BsFgQdt_9hashbrown5table4IterNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1z_4find5checkRBH_NCNvMs1_BJ_NtBJ_11IdentityMap9is_active0E0INtNtNtB1H_3ops12control_flow11ControlFlowB30_EEBL_.exit ], [ false, %bb.a ], [ false, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkRNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryNCNvMs1_B1f_NtB1f_11IdentityMap9is_active0E0B1h_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RNvMs2_NtCsC8CapfvpQ1_5salsa14tracked_structNtB5_16DisambiguatorMap12disambiguate(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, i32 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !240)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242)
  %i.b = lshr i64 %1, 57
  %i.c = trunc nuw nsw i64 %i.b to i8             ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !243, !noalias !244, !noundef !3 ; 6 uses
  %i.f = load ptr, ptr %0, align 8, !alias.scope !243, !noalias !244, !nonnull !3, !noundef !3 ; 8 uses
  %i.g = insertelement <16 x i8> poison, i8 %i.c, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.sroa.011.0.i.i.i = phi i64 [ 0, %bb.a ], [ %i.aa, %bb.c ]
  %.pn.i.i.i = phi i64 [ %1, %bb.a ], [ %i.ab, %bb.c ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i.i, %i.e    ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i27.i.i = load <16 x i8>, ptr %i.i, align 1, !noalias !245 ; 2 uses
  %i.j = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, %i.h
  %i.k = bitcast <16 x i1> %i.j to i16            ; 2 uses
end_hunk_1
begin_hunk_2_@_RNvMs2_NtCsC8CapfvpQ1_5salsa14tracked_structNtB5_16DisambiguatorMap5clear:bb.a
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardQINtNtBG_3raw8RawTableTNtNtCsC8CapfvpQ1_5salsa14tracked_struct12IdentityHashNtB1R_13DisambiguatorEENCNvMs6_B1w_B1t_5clear0EEB1T_.exit5.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = load ptr, ptr %0, align 8, !alias.scope !260, !nonnull !3, !noundef !3
  %i.r = add i64 %i.o, 17
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.q, i8 -1, i64 %i.r, i1 false)
  %.pre.i.i.i2.i = load i64, ptr %i.n, align 8, !alias.scope !260
  %.pre.fr.i.i.i3.i = freeze i64 %.pre.i.i.i2.i   ; 3 uses
  %i.s = icmp ult i64 %.pre.fr.i.i.i3.i, 8
  %i.t = add i64 %.pre.fr.i.i.i3.i, 1
  %i.u = lshr i64 %i.t, 3
  %i.v = mul nuw i64 %i.u, 7
  %spec.select.i.i.i4.i = select i1 %i.s, i64 %.pre.fr.i.i.i3.i, i64 %i.v
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardQINtNtBG_3raw8RawTableTNtNtCsC8CapfvpQ1_5salsa14tracked_struct12IdentityHashNtB1R_13DisambiguatorEENCNvMs6_B1w_B1t_5clear0EEB1T_.exit5.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardQINtNtBG_3raw8RawTableTNtNtCsC8CapfvpQ1_5salsa14tracked_struct12IdentityHashNtB1R_13DisambiguatorEENCNvMs6_B1w_B1t_5clear0EEB1T_.exit5.i: ; preds = %bb.f, %bb.e
  %i.w = phi i64 [ %spec.select.i.i.i4.i, %bb.f ], [ 0, %bb.e ]
  store i64 0, ptr %i.a, align 8, !alias.scope !260
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.w, ptr %i.x, align 8, !alias.scope !260
  br label %_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTableTNtNtCsC8CapfvpQ1_5salsa14tracked_struct12IdentityHashNtBR_13DisambiguatorEE5clearBT_.exit

bb.g:                                             ; preds = %bb.d, %bb.c
  %i.y = phi i64 [ %spec.select.i.i.i.i, %bb.d ], [ 0, %bb.c ]
  store i64 0, ptr %i.a, align 8, !alias.scope !260
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.y, ptr %i.z, align 8, !alias.scope !260
  resume { ptr, i32 } %i.d

_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTableTNtNtCsC8CapfvpQ1_5salsa14tracked_struct12IdentityHashNtBR_13DisambiguatorEE5clearBT_.exit: ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardQINtNtBG_3raw8RawTableTNtNtCsC8CapfvpQ1_5salsa14tracked_struct12IdentityHashNtB1R_13DisambiguatorEENCNvMs6_B1w_B1t_5clear0EEB1T_.exit5.i
  ret void
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define noundef zeroext i1 @_RNvMs4_NtNtCsC8CapfvpQ1_5salsa11accumulator15accumulated_mapNtB5_28AtomicInputAccumulatedValues4load(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #3 {
bb.a:
  %i.a = load atomic i8, ptr %0 acquire, align 1
  %i.b = icmp ne i8 %i.a, 0
  ret i1 %i.b
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define hidden void @_RNvMs4_NtNtCsC8CapfvpQ1_5salsa11accumulator15accumulated_mapNtB5_28AtomicInputAccumulatedValues5store(ptr nofree noundef nonnull captures(none) %0, i1 noundef zeroext %1) unnamed_addr #3 {
bb.a:
  %i.a = zext i1 %1 to i8
  store atomic i8 %i.a, ptr %0 release, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define noundef range(i64 0, 9223372036854775793) i64 @_RNvMs_NtNtCsC8CapfvpQ1_5salsa11accumulator15accumulated_mapNtB4_14AccumulatedMap15allocation_size(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit

_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit: ; preds = %bb.a
  %i.d = mul i64 %i.b, 24
  %i.e = and i64 %i.d, -16
  %i.f = add i64 %i.e, 32                         ; 2 uses
  %i.g = add i64 %i.b, 17
  %i.h = add i64 %i.g, %i.f                       ; 3 uses
  %i.i = icmp uge i64 %i.h, %i.f
  tail call void @llvm.assume(i1 %i.i)
  %i.j = icmp ult i64 %i.h, 9223372036854775793
  tail call void @llvm.assume(i1 %i.j)
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit
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
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.41.0.copyload.i) ]
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
  %i.s = extractvalue { ptr, ptr } %i.q, 1        ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.s) ]
  %i.t = load ptr, ptr %i.s, align 8, !invariant.load !3 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.t(ptr noundef nonnull %i.r)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.v = load i64, ptr %i.u, align 8, !range !6, !invariant.load !3 ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtCsC8CapfvpQ1_5salsa5table4memo4MemoEL_EEEB1C_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.y = load i64, ptr %i.x, align 8, !range !277, !invariant.load !3
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.r, i64 noundef range(i64 1, -9223372036854775808) %i.v, i64 noundef range(i64 1, 536870913) %i.y) #27
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtCsC8CapfvpQ1_5salsa5table4memo4MemoEL_EEEB1C_.exit.i

bb.f:                                             ; preds = %bb.c
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !range !6, !invariant.load !3 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtNtCsC8CapfvpQ1_5salsa5table4memo4MemoEL_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBN_.exit4.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !range !277, !invariant.load !3
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.r, i64 noundef range(i64 1, -9223372036854775808) %i.ab, i64 noundef range(i64 1, 536870913) %i.ae) #27
  br label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtNtCsC8CapfvpQ1_5salsa5table4memo4MemoEL_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBN_.exit4.i.i.i

_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtNtCsC8CapfvpQ1_5salsa5table4memo4MemoEL_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBN_.exit4.i.i.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.z

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

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #12

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable7ipnsortTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBY_2id2IdENCINvMB6_SBT_16sort_unstable_byNCNvMs1_BW_NtBW_11IdentityMap5drain0E0EBY_(ptr noalias noundef nonnull align 8, i64 noundef range(i64 0, 384307168202282326), ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1r_2id2IdENCINvMB8_SB1m_16sort_unstable_byNCNvMs1_B1p_NtB1p_11IdentityMap5drain0E0EB1r_(ptr noalias noundef nonnull align 8, i64 noundef range(i64 0, 384307168202282326), i64 noundef, ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #12

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1w_2id2IdEEENtNtNtB8_6traits8iterator8Iterator4nextB1w_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #12

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeNtB6_5Debug3fmtBA_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs4_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_8DebugSet5entry(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvXsh_NtCsgMW4BsFgQdt_9hashbrown5tableINtB5_4IterNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBQ_(ptr noalias noundef align 8 dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsk_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_9QueryEdgeNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(12), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtCsC8CapfvpQ1_5salsa3keyNtB4_16DatabaseKeyIndexNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(12), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCsC8CapfvpQ1_5salsa12active_query11ActiveQueryNtB6_5Debug3fmtBA_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexNtB6_5Debug3fmtBA_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCsC8CapfvpQ1_5salsa5cycle9CycleHeadNtB6_5Debug3fmtBA_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterNtB6_5Debug3fmtBA_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexNtB6_5Debug3fmtBA_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCsC8CapfvpQ1_5salsa8revision8RevisionNtB6_5Debug3fmtBA_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtB6_5Debug3fmtCsC8CapfvpQ1_5salsa(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXsn_Csa3bo7ChGFM8_8thin_vecRINtB5_7ThinVecTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBM_2id2IdEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iterBM_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE14reserve_rehashNCNvMs1_BR_NtBR_11IdentityMap12insert_entrys_0EBT_(ptr noalias noundef align 8 dereferenceable(32), i64 noundef, i1 noundef zeroext) unnamed_addr #15

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableTNtNtCsC8CapfvpQ1_5salsa14tracked_struct12IdentityHashNtBS_13DisambiguatorEE14reserve_rehashNCINvMs6_NtB8_9raw_entryINtB2s_17RawVacantEntryMutBQ_B1H_uE18insert_with_hasherNCNvMs2_BS_NtBS_16DisambiguatorMap12disambiguates_0E0EBU_(ptr noalias noundef align 8 dereferenceable(32), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i1 noundef zeroext) unnamed_addr #15

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableTReNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_BS_NtNtB8_6hasher18DefaultHashBuilderE0EBY_(ptr noalias noundef align 8 dereferenceable(32), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i1 noundef zeroext) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs6_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_8DebugMap5entry(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtCsi1wr4QBDb3z_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_ENtB6_5Debug3fmtCsC8CapfvpQ1_5salsa(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph8SmallSetNtNtBD_3key16DatabaseKeyIndexKj4_ENtB6_5Debug3fmtBD_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexENtB6_5Debug3fmtB1i_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCsC8CapfvpQ1_5salsa7runtime10WaitResultNtB6_5Debug3fmtBA_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph4edge4EdgeNtB6_5Debug3fmtBE_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #12

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() unnamed_addr #17

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8MemoInfoENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBJ_2id2IdEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBJ_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8MemoInfoENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBQ_2id2IdEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBQ_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexNtNtNtBT_8database12memory_usage8PageInfoEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBT_(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8MemoInfoENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB11_(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8SlotInfoENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB11_(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #19

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs4_NtCsC8CapfvpQ1_5salsa5tableNtB5_5Table10page_infos(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexNtNtNtBS_8database12memory_usage8PageInfoNtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE6removeBO_EBS_(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvMs3_Csa3bo7ChGFM8_8thin_vecINtB5_7ThinVecTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBL_2id2IdEE13with_capacityBL_(i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsZ_NtCsgMW4BsFgQdt_9hashbrown5tableINtB5_5DrainNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBR_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef align 8 dereferenceable(80)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs3_Csa3bo7ChGFM8_8thin_vecINtB5_7ThinVecTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBL_2id2IdEE4pushBL_(ptr noalias noundef align 8 dereferenceable(8), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtCsgMW4BsFgQdt_9hashbrown6hasher18DefaultHashBuilderNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRReECsC8CapfvpQ1_5salsa(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner13drop_elementsNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryEB1d_(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsC8CapfvpQ1_5salsa14tracked_struct12IdentityHashNtB1c_13DisambiguatorEEB1e_(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB1e_11accumulator11accumulated14AnyAccumulatedEL_EEEB1e_(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zip3zipINtNtNtB8_5slice4iter4IterNtNtNtCsC8CapfvpQ1_5salsa5table4memo13MemoEntryTypeEINtBQ_7IterMutNtB1f_9MemoEntryEEB1j_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48), ptr noundef nonnull, ptr noundef, ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoE8grow_oneBR_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #13

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBQ_2id2IdEE8grow_oneBQ_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtCsjvLTWb8VeNU_12tracing_core8callsiteNtB4_15DefaultCallsiteNtB4_8Callsite12set_interest(ptr noundef nonnull align 8, i8 noundef range(i8 0, 3)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter12debug_struct(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsq_NtCsgMW4BsFgQdt_9hashbrown3mapINtB5_4KeysNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtBO_11accumulator11accumulated14AnyAccumulatedEL_EENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtBO_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef align 8 dereferenceable(16), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvNtCs6UEBZ98iBCt_8foldhash4seed19gen_per_hasher_seed() unnamed_addr #0

; Function Attrs: cold noinline nonlazybind uwtable
declare void @_RNvMs_NtNtCs6UEBZ98iBCt_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow() unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter11debug_tuple(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs2_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias noundef align 8 dereferenceable(24), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCsC8CapfvpQ1_5salsa2id2IdNtB6_5Debug3fmtBA_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs2_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_10DebugTuple6finish(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline nonlazybind uwtable
declare void @_RINvCsa3bo7ChGFM8_8thin_vec18drop_non_singletonTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBO_2id2IdEEBO_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvXs8_NtNtCs36qfJazsBC0_6boxcar3vec3rawINtB5_4IterNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBR_(ptr noalias noundef align 8 dereferenceable(48)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #20

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsn_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_7RawIterNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE13drop_elementsBR_(ptr noalias noundef align 8 dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsd_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impyNtB9_7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsE_NtNtCs4NRVxsYgnAr_4core3fmt3numyNtB7_8UpperHex3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsC_NtNtCs4NRVxsYgnAr_4core3fmt3numyNtB7_8LowerHex3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #21

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRmNtB6_5Debug3fmtCsC8CapfvpQ1_5salsa(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTReNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoENtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalEB1l_(ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRyNtB6_5Debug3fmtCsC8CapfvpQ1_5salsa(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NtCsC8CapfvpQ1_5salsa2idNtB5_2IdNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRbNtB6_5Debug3fmtCsC8CapfvpQ1_5salsa(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXsG_NtCsgQfI1edjipl_9hashbrown3mapINtB5_4IterNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtCsi1wr4QBDb3z_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_EENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_(ptr noalias noundef align 8 dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXsG_NtCsgQfI1edjipl_9hashbrown3mapINtB5_4IterNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtNtNtBO_7runtime16dependency_graph8SmallSetBK_Kj4_EENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_(ptr noalias noundef align 8 dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXsG_NtCsgQfI1edjipl_9hashbrown3mapINtB5_4IterNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBK_EENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_(ptr noalias noundef align 8 dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXsG_NtCsgQfI1edjipl_9hashbrown3mapINtB5_4IterNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtCsC8CapfvpQ1_5salsa7runtime10WaitResultENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1v_(ptr noalias noundef align 8 dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXsG_NtCsgQfI1edjipl_9hashbrown3mapINtB5_4IterNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph4edge4EdgeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1z_(ptr noalias noundef align 8 dereferenceable(40)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress norecurse nounwind nonlazybind willreturn uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { mustprogress norecurse nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { cold noreturn nounwind }
attributes #25 = { cold }
attributes #26 = { noreturn }
attributes #27 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.97.1 (8bab26f4f 2026-07-14)"}
!3 = !{}
!4 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!5 = !{i64 8}
!6 = !{i64 0, i64 -9223372036854775808}
!7 = !{!"branch_weights", i32 2146410443, i32 1073205}
!8 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!9 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!10 = !{!"branch_weights", i32 1, i32 1999}
!11 = !{!"branch_weights", i32 0, i32 1}
!12 = !{!"branch_weights", i32 1, i32 4001}
!13 = !{i32 1, i32 0}
!14 = distinct !{!14, i1 false, !"_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collectNtNtCsC8CapfvpQ1_5salsa11zalsa_local13QueryEdgeIterNtB2_12IntoIterator9into_iterBP_"}
!15 = distinct !{!15, !14, !"_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collectNtNtCsC8CapfvpQ1_5salsa11zalsa_local13QueryEdgeIterNtB2_12IntoIterator9into_iterBP_: argument 1"}
!16 = distinct !{!16, !14, !"_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collectNtNtCsC8CapfvpQ1_5salsa11zalsa_local13QueryEdgeIterNtB2_12IntoIterator9into_iterBP_: argument 0"}
!17 = distinct !{!17, i1 false, !"_RNvXsn_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_13QueryEdgeIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next"}
!18 = distinct !{!18, !17, !"_RNvXsn_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_13QueryEdgeIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next: argument 1"}
!19 = distinct !{!19, !17, !"_RNvXsn_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_13QueryEdgeIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next: argument 0"}
!20 = !{!16, !15}
!21 = !{!18}
!22 = !{!19, !18}
!23 = distinct !{!23, i1 false, !"_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa12active_query11ActiveQueryENCNvXs1_B1o_NtB1o_10QueryStackNtNtBb_3fmt5Debug3fmt0ENtNtNtB9_6traits8iterator8Iterator4nextB1q_"}
!24 = distinct !{!24, !23, !"_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa12active_query11ActiveQueryENCNvXs1_B1o_NtB1o_10QueryStackNtNtBb_3fmt5Debug3fmt0ENtNtNtB9_6traits8iterator8Iterator4nextB1q_: argument 1"}
!25 = !{!24}
!26 = distinct !{!26, i1 false, !"_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtCs36qfJazsBC0_6boxcar3vec4IterNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterENCNvXsd_BZ_INtBZ_3VecB1v_ENtNtBb_3fmt5Debug3fmt0ENtNtNtB9_6traits8iterator8Iterator4nextB1z_"}
!27 = distinct !{!27, !26, !"_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtCs36qfJazsBC0_6boxcar3vec4IterNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterENCNvXsd_BZ_INtBZ_3VecB1v_ENtNtBb_3fmt5Debug3fmt0ENtNtNtB9_6traits8iterator8Iterator4nextB1z_: argument 0"}
!28 = distinct !{!28, i1 false, !"_RNvXs8_NtCs36qfJazsBC0_6boxcar3vecINtB5_4IterNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBL_"}
!29 = distinct !{!29, !28, !"_RNvXs8_NtCs36qfJazsBC0_6boxcar3vecINtB5_4IterNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBL_: argument 0"}
!30 = !{!29, !27}
!31 = distinct !{!31, i1 false, !"_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collectINtNtCsgMW4BsFgQdt_9hashbrown3map4KeysNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB1r_11accumulator11accumulated14AnyAccumulatedEL_EENtB2_12IntoIterator9into_iterB1r_"}
!32 = distinct !{!32, !31, !"_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collectINtNtCsgMW4BsFgQdt_9hashbrown3map4KeysNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB1r_11accumulator11accumulated14AnyAccumulatedEL_EENtB2_12IntoIterator9into_iterB1r_: argument 1"}
!33 = distinct !{!33, !31, !"_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collectINtNtCsgMW4BsFgQdt_9hashbrown3map4KeysNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB1r_11accumulator11accumulated14AnyAccumulatedEL_EENtB2_12IntoIterator9into_iterB1r_: argument 0"}
!34 = distinct !{!34, i1 false, !"_RNvXsX_NtCsgMW4BsFgQdt_9hashbrown3mapINtB5_4KeysNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtBO_11accumulator11accumulated14AnyAccumulatedEL_EENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_"}
!35 = distinct !{!35, !34, !"_RNvXsX_NtCsgMW4BsFgQdt_9hashbrown3mapINtB5_4KeysNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtBO_11accumulator11accumulated14AnyAccumulatedEL_EENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_: argument 0"}
!36 = distinct !{!36, i1 false, !"_RINvMsh_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtBZ_11accumulator11accumulated14AnyAccumulatedEL_EEE9next_implKb0_EBZ_"}
!37 = distinct !{!37, !36, !"_RINvMsh_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtBZ_11accumulator11accumulated14AnyAccumulatedEL_EEE9next_implKb0_EBZ_: argument 0"}
!38 = !{!33, !32}
!39 = !{!37, !35}
!40 = distinct !{!40, i1 false, !"_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collectINtNtCsgMW4BsFgQdt_9hashbrown3map4IterNtNtCsC8CapfvpQ1_5salsa14tracked_struct12IdentityHashNtB1p_13DisambiguatorENtB2_12IntoIterator9into_iterB1r_"}
!41 = distinct !{!41, !40, !"_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collectINtNtCsgMW4BsFgQdt_9hashbrown3map4IterNtNtCsC8CapfvpQ1_5salsa14tracked_struct12IdentityHashNtB1p_13DisambiguatorENtB2_12IntoIterator9into_iterB1r_: argument 1"}
!42 = distinct !{!42, !40, !"_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collectINtNtCsgMW4BsFgQdt_9hashbrown3map4IterNtNtCsC8CapfvpQ1_5salsa14tracked_struct12IdentityHashNtB1p_13DisambiguatorENtB2_12IntoIterator9into_iterB1r_: argument 0"}
!43 = distinct !{!43, i1 false, !"_RNvXsJ_NtCsgMW4BsFgQdt_9hashbrown3mapINtB5_4IterNtNtCsC8CapfvpQ1_5salsa14tracked_struct12IdentityHashNtBM_13DisambiguatorENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_"}
!44 = distinct !{!44, !43, !"_RNvXsJ_NtCsgMW4BsFgQdt_9hashbrown3mapINtB5_4IterNtNtCsC8CapfvpQ1_5salsa14tracked_struct12IdentityHashNtBM_13DisambiguatorENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBO_: argument 0"}
!45 = distinct !{!45, i1 false, !"_RINvMsh_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsC8CapfvpQ1_5salsa14tracked_struct12IdentityHashNtBX_13DisambiguatorEE9next_implKb0_EBZ_"}
!46 = distinct !{!46, !45, !"_RINvMsh_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsC8CapfvpQ1_5salsa14tracked_struct12IdentityHashNtBX_13DisambiguatorEE9next_implKb0_EBZ_: argument 0"}
!47 = !{!42, !41}
!48 = !{!46, !44}
!49 = distinct !{!49, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown3raw8RawDrainNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryEEB1l_"}
!50 = distinct !{!50, !49, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown3raw8RawDrainNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryEEB1l_: argument 0"}
!51 = distinct !{!51, i1 false, !"_RNvXsJ_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawDrainNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBS_"}
!52 = distinct !{!52, !51, !"_RNvXsJ_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawDrainNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBS_: argument 0"}
!53 = !{!52, !50}
!54 = distinct !{!54, i1 false, !"_RNvXs7_NtCsgMW4BsFgQdt_9hashbrown3mapINtB5_7HashMapReNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoENtNtCs4NRVxsYgnAr_4core7default7Default7defaultBV_"}
!55 = distinct !{!55, !54, !"_RNvXs7_NtCsgMW4BsFgQdt_9hashbrown3mapINtB5_7HashMapReNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoENtNtCs4NRVxsYgnAr_4core7default7Default7defaultBV_: argument 0"}
!56 = distinct !{!56, i1 false, !"_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8SlotInfoENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB11_"}
!57 = distinct !{!57, !56, !"_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8SlotInfoENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB11_: argument 1"}
!58 = distinct !{!58, !56, !"_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8SlotInfoENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB11_: argument 0"}
!59 = distinct !{!59, i1 false, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoE8push_mutBK_"}
!60 = distinct !{!60, !59, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoE8push_mutBK_: argument 0"}
!61 = distinct !{!61, !59, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoE8push_mutBK_: argument 1"}
!62 = distinct !{!62, i1 false, !"_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8MemoInfoENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB11_"}
!63 = distinct !{!63, !62, !"_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8MemoInfoENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB11_: argument 1"}
!64 = distinct !{!64, !62, !"_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8MemoInfoENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB11_: argument 0"}
!65 = distinct !{!65, i1 false, !"_RNvMs3_NtCsgMW4BsFgQdt_9hashbrown3mapINtB5_7HashMapReNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoE5entryBV_"}
!66 = distinct !{!66, !65, !"_RNvMs3_NtCsgMW4BsFgQdt_9hashbrown3mapINtB5_7HashMapReNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoE5entryBV_: argument 1"}
!67 = distinct !{!67, !65, !"_RNvMs3_NtCsgMW4BsFgQdt_9hashbrown3mapINtB5_7HashMapReNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoE5entryBV_: argument 2"}
!68 = distinct !{!68, !65, !"_RNvMs3_NtCsgMW4BsFgQdt_9hashbrown3mapINtB5_7HashMapReNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoE5entryBV_: argument 0"}
!69 = distinct !{!69, i1 false, !"_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableTReNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_BS_E0EBY_"}
!70 = distinct !{!70, !69, !"_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableTReNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_BS_E0EBY_: argument 0"}
!71 = distinct !{!71, i1 false, !"_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!72 = distinct !{!72, !71, !"_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!73 = distinct !{!73, !69, !"_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableTReNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_BS_E0EBY_: argument 1"}
!74 = distinct !{!74, !71, !"_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 1"}
!75 = distinct !{!75, i1 false, !"_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse215__mm_loadu_si128"}
!76 = distinct !{!76, !75, !"_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!77 = distinct !{!77, i1 false, !"_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableTReNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoEE4findNCINvNtBa_3map14equivalent_keyBS_BS_BU_E0E0B10_"}
!78 = distinct !{!78, !77, !"_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableTReNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoEE4findNCINvNtBa_3map14equivalent_keyBS_BS_BU_E0E0B10_: argument 0"}
!79 = distinct !{!79, i1 false, !"_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq"}
!80 = distinct !{!80, !79, !"_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq: argument 1"}
!81 = distinct !{!81, !79, !"_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq: argument 0"}
!82 = distinct !{!82, !56, !"_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8SlotInfoENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB11_: argument 1:h.rot"}
!83 = distinct !{!83, i1 false, !"_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableTReNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoEE6insertNCINvNtB8_3map11make_hasherBQ_BS_NtNtB8_6hasher18DefaultHashBuilderE0EBY_"}
!84 = distinct !{!84, !83, !"_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableTReNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoEE6insertNCINvNtB8_3map11make_hasherBQ_BS_NtNtB8_6hasher18DefaultHashBuilderE0EBY_: argument 0"}
!85 = distinct !{!85, i1 false, !"_RNvMs1d_NtCsgMW4BsFgQdt_9hashbrown3mapINtB6_5EntryReNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoNtNtB8_6hasher18DefaultHashBuilderE9or_insertBU_"}
!86 = distinct !{!86, !85, !"_RNvMs1d_NtCsgMW4BsFgQdt_9hashbrown3mapINtB6_5EntryReNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoNtNtB8_6hasher18DefaultHashBuilderE9or_insertBU_: argument 1"}
!87 = distinct !{!87, !85, !"_RNvMs1d_NtCsgMW4BsFgQdt_9hashbrown3mapINtB6_5EntryReNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoNtNtB8_6hasher18DefaultHashBuilderE9or_insertBU_: argument 0"}
!88 = distinct !{!88, !83, !"_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableTReNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoEE6insertNCINvNtB8_3map11make_hasherBQ_BS_NtNtB8_6hasher18DefaultHashBuilderE0EBY_: argument 2"}
!89 = distinct !{!89, !83, !"_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableTReNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoEE6insertNCINvNtB8_3map11make_hasherBQ_BS_NtNtB8_6hasher18DefaultHashBuilderE0EBY_: argument 1"}
!90 = distinct !{!90, i1 false, !"_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse215__mm_loadu_si128"}
!91 = distinct !{!91, !90, !"_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!92 = distinct !{!92, i1 false, !"_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTableTReNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoEE22insert_tagged_at_indexBX_"}
!93 = distinct !{!93, !92, !"_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTableTReNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoEE22insert_tagged_at_indexBX_: argument 1"}
!94 = distinct !{!94, !92, !"_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTableTReNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoEE22insert_tagged_at_indexBX_: argument 0"}
!95 = distinct !{!95, !62, !"_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8MemoInfoENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB11_: argument 1:h.rot"}
!96 = !{!55}
!97 = !{i64 -1, i64 -9223372036854775808}
!98 = !{!57}
!99 = !{!58}
!100 = !{i64 0, i64 2}
!101 = !{!60}
!102 = !{!61}
!103 = !{!63}
!104 = !{!64}
!105 = !{!66}
!106 = !{!68, !66, !67}
!107 = !{!70}
!108 = !{!72}
!109 = !{!72, !70, !66}
!110 = !{!74, !73, !68, !67}
!111 = !{!76, !72, !74, !70, !73, !68}
!112 = !{!78, !72, !74, !70, !73, !68}
!113 = !{!81, !80}
!114 = !{!82}
!115 = !{!84}
!116 = !{!91, !84, !89, !88, !87, !86}
!117 = !{!84, !89, !88, !87, !86}
!118 = !{!89, !88, !87, !86}
!119 = !{!89, !87, !86}
!120 = !{!94, !93, !89, !87, !86}
!121 = !{!94, !84}
!122 = !{!93, !89, !88, !87, !86}
!123 = !{!94}
!124 = !{!94, !87, !86}
!125 = !{!94, !87}
!126 = !{!95}
!127 = distinct !{!127, i1 false, !"_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE25find_or_find_insert_indexNCNvMs1_BR_NtBR_11IdentityMap12insert_entry0NCB2a_s_0EBT_"}
!128 = distinct !{!128, !127, !"_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE25find_or_find_insert_indexNCNvMs1_BR_NtBR_11IdentityMap12insert_entry0NCB2a_s_0EBT_: argument 0"}
!129 = distinct !{!129, !127, !"_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE25find_or_find_insert_indexNCNvMs1_BR_NtBR_11IdentityMap12insert_entry0NCB2a_s_0EBT_: argument 1"}
!130 = distinct !{!130, i1 false, !"_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE7reserveNCNvMs1_BR_NtBR_11IdentityMap12insert_entrys_0EBT_"}
!131 = distinct !{!131, !130, !"_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE7reserveNCNvMs1_BR_NtBR_11IdentityMap12insert_entrys_0EBT_: argument 0"}
!132 = distinct !{!132, i1 false, !"_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse215__mm_loadu_si128"}
!133 = distinct !{!133, !132, !"_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!134 = distinct !{!134, i1 false, !"_RNCNvMs1_NtCsC8CapfvpQ1_5salsa14tracked_structNtB7_11IdentityMap12insert_entry0B9_"}
!135 = distinct !{!135, !134, !"_RNCNvMs1_NtCsC8CapfvpQ1_5salsa14tracked_structNtB7_11IdentityMap12insert_entry0B9_: argument 0"}
!136 = distinct !{!136, i1 false, !"_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE25find_or_find_insert_indexNCNvMs1_BT_NtBT_11IdentityMap12insert_entry0NCB2c_s_0E0BV_"}
!137 = distinct !{!137, !136, !"_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE25find_or_find_insert_indexNCNvMs1_BT_NtBT_11IdentityMap12insert_entry0NCB2c_s_0E0BV_: argument 0"}
!138 = distinct !{!138, i1 false, !"_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE22insert_tagged_at_indexBS_"}
!139 = distinct !{!139, !138, !"_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE22insert_tagged_at_indexBS_: argument 1"}
!140 = distinct !{!140, !138, !"_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE22insert_tagged_at_indexBS_: argument 0"}
!141 = !{!128}
!142 = !{!129}
!143 = !{!131, !128}
!144 = !{!133, !129}
!145 = !{!135}
!146 = !{!137, !129}
!147 = !{!140, !139}
!148 = !{!140}
!149 = !{!139}
!150 = distinct !{!150, i1 false, !"_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE5clearBS_"}
!151 = distinct !{!151, !150, !"_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE5clearBS_: argument 0"}
!152 = !{!151}
!153 = distinct !{!153, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsa3bo7ChGFM8_8thin_vec7ThinVecTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1e_2id2IdEEEB1e_"}
!154 = distinct !{!154, !153, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsa3bo7ChGFM8_8thin_vec7ThinVecTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1e_2id2IdEEEB1e_: argument 0"}
!155 = distinct !{!155, i1 false, !"_RNvXs6_Csa3bo7ChGFM8_8thin_vecINtB5_7ThinVecTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBL_2id2IdEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBL_"}
!156 = distinct !{!156, !155, !"_RNvXs6_Csa3bo7ChGFM8_8thin_vecINtB5_7ThinVecTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBL_2id2IdEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBL_: argument 0"}
!157 = distinct !{!157, i1 false, !"_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner4iterNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryEB13_"}
!158 = distinct !{!158, !157, !"_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner4iterNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryEB13_: argument 1"}
!159 = distinct !{!159, !157, !"_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner4iterNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryEB13_: argument 0"}
!160 = distinct !{!160, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown5table5DrainNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryEEB1k_"}
!161 = distinct !{!161, !160, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown5table5DrainNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryEEB1k_: argument 0"}
!162 = distinct !{!162, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown3raw8RawDrainNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryEEB1l_"}
!163 = distinct !{!163, !162, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown3raw8RawDrainNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryEEB1l_: argument 0"}
!164 = distinct !{!164, i1 false, !"_RNvXsJ_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawDrainNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBS_"}
!165 = distinct !{!165, !164, !"_RNvXsJ_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawDrainNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBS_: argument 0"}
!166 = distinct !{!166, i1 false, !"_RINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBA_2id2IdE16sort_unstable_byNCNvMs1_By_NtBy_11IdentityMap5drain0EBA_"}
!167 = distinct !{!167, !166, !"_RINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBA_2id2IdE16sort_unstable_byNCNvMs1_By_NtBy_11IdentityMap5drain0EBA_: argument 0"}
!168 = distinct !{!168, i1 false, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBJ_2id2IdEE8push_mutBJ_"}
!169 = distinct !{!169, !168, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBJ_2id2IdEE8push_mutBJ_: argument 0"}
!170 = distinct !{!170, !168, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBJ_2id2IdEE8push_mutBJ_: argument 1"}
!171 = !{!156, !154}
!172 = !{!158}
!173 = !{!159}
!174 = !{!159, !158}
!175 = !{i8 0, i8 3}
!176 = !{!165, !163, !161}
!177 = !{!167}
!178 = !{!169}
!179 = !{!170}
!180 = distinct !{!180, i1 false, !"_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE4findNCNvMs1_BR_NtBR_11IdentityMap5reuse0EBT_"}
!181 = distinct !{!181, !180, !"_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE4findNCNvMs1_BR_NtBR_11IdentityMap5reuse0EBT_: argument 0"}
!182 = distinct !{!182, i1 false, !"_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!183 = distinct !{!183, !182, !"_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!184 = distinct !{!184, !180, !"_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE4findNCNvMs1_BR_NtBR_11IdentityMap5reuse0EBT_: argument 1"}
!185 = distinct !{!185, !182, !"_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 1"}
!186 = distinct !{!186, i1 false, !"_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse215__mm_loadu_si128"}
!187 = distinct !{!187, !186, !"_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!188 = distinct !{!188, i1 false, !"_RNCNvMs1_NtCsC8CapfvpQ1_5salsa14tracked_structNtB7_11IdentityMap5reuse0B9_"}
!189 = distinct !{!189, !188, !"_RNCNvMs1_NtCsC8CapfvpQ1_5salsa14tracked_structNtB7_11IdentityMap5reuse0B9_: argument 0"}
!190 = distinct !{!190, i1 false, !"_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE4findNCNvMs1_BT_NtBT_11IdentityMap5reuse0E0BV_"}
!191 = distinct !{!191, !190, !"_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE4findNCNvMs1_BT_NtBT_11IdentityMap5reuse0E0BV_: argument 0"}
!192 = !{!181}
!193 = !{!183}
!194 = !{!183, !181}
!195 = !{!185, !184}
end_hunk_2
