Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/salsa-rs/original/salsa-18876957f0a83274.salsa.72a3b6749c32557-cgu.05?download=true
begin_hunk_0_@_RNvMNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graphNtB2_15DependencyGraph10depends_on:bb.a

.split.i:                                         ; preds = %bb.a, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph4edge4EdgeNtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE3getBO_EB1D_.exit.i
  %storemerge.i = phi i64 [ %i.ag, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph4edge4EdgeNtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE3getBO_EB1D_.exit.i ], [ %1, %bb.a ] ; 2 uses
  store i64 %storemerge.i, ptr %i.a, align 8, !noalias !84
  %i.i = call noundef i64 @_RINvYNtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdECsC8CapfvpQ1_5salsa(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a) ; 2 uses
  %i.j = lshr i64 %i.i, 57
  %i.k = trunc nuw nsw i64 %i.j to i8
  %i.l = insertelement <16 x i8> poison, i8 %i.k, i64 0
  %i.m = shufflevector <16 x i8> %i.l, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.split.i
  %.sroa.9.0.i.i.i.i = phi i64 [ 0, %.split.i ], [ %i.ad, %bb.d ]
  %.pn.i.i.i.i = phi i64 [ %i.i, %.split.i ], [ %i.ae, %bb.d ]
  %.sroa.01.0.i.i.i.i = and i64 %.pn.i.i.i.i, %i.g ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i = load <16 x i8>, ptr %i.n, align 1, !noalias !92 ; 2 uses
  %i.o = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i, %i.m
  %i.p = bitcast <16 x i1> %i.o to i16            ; 2 uses
  %.not.i.not32.i.i.i = icmp eq i16 %i.p, 0
  br i1 %.not.i.not32.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %bb.c
  %.sroa.06.0.i33.i.i.i = phi i16 [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 3 uses
  %i.q = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = add i64 %.sroa.01.0.i.i.i.i, %i.r
  %i.t = and i64 %i.s, %i.g
  %i.u = sub nsw i64 0, %i.t
  %i.v = getelementptr inbounds [24 x i8], ptr %i.h, i64 %i.u ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -24
  %i.x = call noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrownNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdINtB2_10EquivalentBq_E10equivalentCsC8CapfvpQ1_5salsa(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.w), !noalias !100
  br i1 %i.x, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph4edge4EdgeNtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE3getBO_EB1D_.exit.i, label %bb.c, !prof !21

._crit_edge.i.i.i:                                ; preds = %bb.c, %bb.b
  %i.y = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i, splat (i8 -1)
  %i.z = bitcast <16 x i1> %i.y to i16
  %i.aa = icmp eq i16 %i.z, 0
  br i1 %i.aa, label %bb.d, label %select.unfold.i, !prof !7

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.ab = add i16 %.sroa.06.0.i33.i.i.i, -1
  %i.ac = and i16 %i.ab, %.sroa.06.0.i33.i.i.i    ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.ac, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.ad = add i64 %.sroa.9.0.i.i.i.i, 16          ; 2 uses
  %i.ae = add i64 %.sroa.01.0.i.i.i.i, %i.ad
  br label %bb.b

_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph4edge4EdgeNtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE3getBO_EB1D_.exit.i: ; preds = %.lr.ph.i.i.i
  %i.af = getelementptr inbounds i8, ptr %i.v, i64 -16
  %i.ag = load i64, ptr %i.af, align 8, !range !103, !noundef !8 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, %2
  br i1 %i.ah, label %_RNvMs_NtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graphNtB4_5Edges10depends_on.exit, label %.split.i

select.unfold.i:                                  ; preds = %._crit_edge.i.i.i, %bb.a
  %storemerge11.i = phi i64 [ %1, %bb.a ], [ %storemerge.i, %._crit_edge.i.i.i ]
  %i.ai = icmp eq i64 %storemerge11.i, %2
  br label %_RNvMs_NtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graphNtB4_5Edges10depends_on.exit

_RNvMs_NtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graphNtB4_5Edges10depends_on.exit: ; preds = %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph4edge4EdgeNtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE3getBO_EB1D_.exit.i, %select.unfold.i
  %.sroa.0.0.i = phi i1 [ %i.ai, %select.unfold.i ], [ true, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph4edge4EdgeNtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE3getBO_EB1D_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !84
  ret i1 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graphNtB2_15DependencyGraph13transfer_lock(ptr noundef nonnull align 8 %0, ptr noalias noundef readonly align 4 captures(address) dead_on_return dereferenceable(12) %1, i64 noundef range(i64 1, 0) %2, ptr noalias nofree noundef readonly align 4 captures(address) dead_on_return dereferenceable(12) %3, i64 noundef %4, ptr noundef nonnull align 8 %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 5 uses
  %i.d = alloca [12 x i8], align 4                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [80 x i8], align 8                ; 7 uses
  %i.g = alloca [12 x i8], align 4                ; 4 uses
  %i.h = alloca [12 x i8], align 4                ; 4 uses
  %i.i = alloca [12 x i8], align 4                ; 4 uses
  %i.j = alloca [12 x i8], align 4                ; 3 uses
  %i.k = alloca [12 x i8], align 4                ; 4 uses
  %i.l = alloca [12 x i8], align 4                ; 4 uses
  %i.m = alloca [12 x i8], align 4                ; 4 uses
  %i.n = alloca [32 x i8], align 8                ; 8 uses
  %i.o = alloca [32 x i8], align 8                ; 6 uses
  %i.p = alloca [48 x i8], align 8                ; 3 uses
  %i.q = alloca [32 x i8], align 8                ; 6 uses
  %i.r = alloca [40 x i8], align 8                ; 7 uses
  %i.s = alloca [32 x i8], align 8                ; 8 uses
  %.sroa.428 = alloca [12 x i8], align 8          ; 4 uses
  %i.t = alloca [12 x i8], align 8                ; 7 uses
  %i.u = alloca [12 x i8], align 4                ; 9 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.w = icmp eq i64 %4, 0
  br i1 %i.w, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.m, ptr noundef nonnull align 4 dereferenceable(12) %3, i64 12, i1 false)
  %i.x = invoke noundef i64 @_RNvMNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graphNtB2_15DependencyGraph30thread_id_of_transferred_query(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.v, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.m, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.c:                                             ; preds = %bb.d, %bb.a
  %.sroa.05.0 = phi i64 [ %4, %bb.a ], [ %i.x, %bb.d ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.l, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false)
  invoke void @_RNvMNtCsgQfI1edjipl_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBZ_ENtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE11rustc_entryB13_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.s, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.y, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.l)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %.not = icmp eq i64 %i.x, 0
  br i1 %.not, label %.invoke, label %bb.c, !prof !7

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.z = load ptr, ptr %i.s, align 8, !noundef !8 ; 2 uses
  %.not72 = icmp eq ptr %i.z, null
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  br i1 %.not72, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.448.0.copyload = load i64, ptr %i.aa, align 8
  %.sroa.549.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.549.0.copyload = load ptr, ptr %.sroa.549.0..sroa_idx, align 8
  %.sroa.650.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %.sroa.650.0.copyload = load i64, ptr %.sroa.650.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %.sroa.12.16.extract.trunc = trunc i64 %.sroa.650.0.copyload to i32
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %3, i64 12, i1 false)
  store ptr %.sroa.549.0.copyload, ptr %i.r, align 8
  %.sroa.468.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i32 %.sroa.12.16.extract.trunc, ptr %.sroa.468.0..sroa_idx, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 %.sroa.05.0, ptr %i.ab, align 8
  %i.ac = invoke noundef nonnull ptr @_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBP_EEE14insert_no_growBT_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z, i64 noundef %.sroa.448.0.copyload, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.r)
          to label %bb.am unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.g:                                             ; preds = %bb.e
  %i.ad = load ptr, ptr %i.aa, align 8, !nonnull !8, !noundef !8 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.ae = load i32, ptr %3, align 4, !range !104, !noundef !8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !noundef !8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ai = load i32, ptr %i.ah, align 4, !noundef !8 ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %i.ad, i64 -24 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !range !103, !noundef !8 ; 2 uses
  %i.al = icmp eq i64 %i.ak, %.sroa.05.0
  br i1 %i.al, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds i8, ptr %i.ad, i64 -12
  %i.an = load i32, ptr %i.am, align 4, !noundef !8
  %i.ao = icmp eq i32 %i.an, %i.ag
  br i1 %i.ao, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds i8, ptr %i.ad, i64 -16
  %i.aq = load i32, ptr %i.ap, align 8, !range !104, !noundef !8
  %i.ar = icmp eq i32 %i.aq, %i.ae
  br i1 %i.ar, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.as = getelementptr inbounds i8, ptr %i.ad, i64 -8
  %i.at = load i32, ptr %i.as, align 8, !noundef !8
  %i.au = icmp eq i32 %i.at, %i.ai
  br i1 %i.au, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.av = getelementptr inbounds i8, ptr %i.ad, i64 -16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.u, ptr noundef nonnull align 8 dereferenceable(12) %i.av, i64 12, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.ax = invoke noundef align 8 ptr @_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtNtNtBS_7runtime16dependency_graph8SmallSetBO_Kj4_ENtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE7get_mutBO_EBS_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.aw, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.u)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.l:                                             ; preds = %bb.j
  %i.ay = cmpxchg ptr %5, i8 1, i8 0 release monotonic, align 1
  %i.az = extractvalue { i8, i1 } %i.ay, 1
  br i1 %i.az, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsUsIPftNhTL_8lock_api5mutex10MutexGuardNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCsC8CapfvpQ1_5salsa2id2IdNtNtNtB37_8function4sync9SyncStateNtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherEEEB37_.exit, label %bb.m, !prof !21

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvMs1_NtCscHkFMvyoPQb_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %5, i1 noundef zeroext false)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsUsIPftNhTL_8lock_api5mutex10MutexGuardNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCsC8CapfvpQ1_5salsa2id2IdNtNtNtB37_8function4sync9SyncStateNtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherEEEB37_.exit unwind label %bb.ak

bb.n:                                             ; preds = %bb.k
  %.not73 = icmp eq ptr %i.ax, null
  br i1 %.not73, label %.invoke226, label %bb.o, !prof !7

bb.o:                                             ; preds = %bb.n
  invoke fastcc void @_RNvMs0_NtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graphINtB5_8SmallSetNtNtB9_3key16DatabaseKeyIndexKj4_E6removeB9_(ptr noalias noundef align 8 dereferenceable(64) %i.ax, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(12) %1)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %bb.o
  store i64 %.sroa.05.0, ptr %i.aj, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.av, ptr noundef nonnull align 4 dereferenceable(12) %3, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.k, ptr noundef nonnull align 4 dereferenceable(12) %3, i64 12, i1 false)
  invoke void @_RNvMNtCsgQfI1edjipl_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBZ_ENtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE11rustc_entryB13_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.q, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.y, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.k)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.ba = load ptr, ptr %i.q, align 8, !noundef !8
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.456.0.copyload = load ptr, ptr %.sroa.456.0..sroa_idx, align 8
  %.sroa.557.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.557.0.copyload = load ptr, ptr %.sroa.557.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %.not75172 = icmp eq ptr %i.ba, null
  br i1 %.not75172, label %.lr.ph, label %.loopexit157

.lr.ph:                                           ; preds = %bb.q
  %i.bb = load <2 x i32>, ptr %1, align 4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.be = load i32, ptr %i.bd, align 4
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.565.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  br label %bb.r

.loopexit157:                                     ; preds = %bb.u, %bb.q, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.aj

bb.r:                                             ; preds = %.lr.ph, %bb.u
  %.sroa.8.1174 = phi ptr [ %.sroa.557.0.copyload, %.lr.ph ], [ %.sroa.565.0.copyload, %bb.u ] ; 2 uses
  %.sroa.534.1173 = phi ptr [ %.sroa.456.0.copyload, %.lr.ph ], [ %.sroa.464.0.copyload, %bb.u ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.1174) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.534.1173) ]
  %i.bf = getelementptr inbounds i8, ptr %.sroa.534.1173, i64 -40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.j, ptr noundef nonnull align 8 dereferenceable(12) %i.bf, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.bg = getelementptr inbounds i8, ptr %.sroa.534.1173, i64 -16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.t, ptr noundef nonnull align 8 dereferenceable(12) %i.bg, i64 12, i1 false)
  %i.bh = load <2 x i32>, ptr %i.t, align 8
  %i.bi = icmp eq <2 x i32> %i.bh, %i.bb          ; 2 uses
  %i.bj = extractelement <2 x i1> %i.bi, i64 0
  %i.bk = extractelement <2 x i1> %i.bi, i64 1
  %or.cond176 = select i1 %i.bk, i1 %i.bj, i1 false
  %i.bl = load i32, ptr %i.bc, align 8
  %i.bm = icmp eq i32 %i.bl, %i.be
  %or.cond178 = select i1 %or.cond176, i1 %i.bm, i1 false
  br i1 %or.cond178, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  invoke void @_RNvMNtCsgQfI1edjipl_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBZ_ENtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE11rustc_entryB13_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.o, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.y, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.t)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.t:                                             ; preds = %bb.r
  %i.bn = getelementptr inbounds i8, ptr %.sroa.534.1173, i64 -24
  %i.bo = invoke noundef align 8 ptr @_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtNtNtBS_7runtime16dependency_graph8SmallSetBO_Kj4_ENtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE7get_mutBO_EBS_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.aw, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %1)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.u:                                             ; preds = %bb.s
  %i.bp = load ptr, ptr %i.o, align 8, !noundef !8
  %.sroa.464.0.copyload = load ptr, ptr %.sroa.464.0..sroa_idx, align 8
  %.sroa.565.0.copyload = load ptr, ptr %.sroa.565.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %.not75 = icmp eq ptr %i.bp, null
  br i1 %.not75, label %bb.r, label %.loopexit157

bb.v:                                             ; preds = %bb.t
  %.not77 = icmp eq ptr %i.bo, null
  br i1 %.not77, label %.invoke226, label %bb.w, !prof !7

bb.w:                                             ; preds = %bb.v
  invoke fastcc void @_RNvMs0_NtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graphINtB5_8SmallSetNtNtB9_3key16DatabaseKeyIndexKj4_E6removeB9_(ptr noalias noundef align 8 dereferenceable(64) %i.bo, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.j)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.x:                                             ; preds = %bb.w
  %i.bq = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.br = load i32, ptr %i.bq, align 4, !noundef !8
  %i.bs = icmp eq i32 %i.br, %i.ag
  br i1 %i.bs, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.bt = load i32, ptr %i.u, align 4, !range !104, !noundef !8
  %i.bu = icmp eq i32 %i.bt, %i.ae
  %i.bv = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.bw = load i32, ptr %i.bv, align 4
  %i.bx = icmp eq i32 %i.bw, %i.ai
  %or.cond = select i1 %i.bu, i1 %i.bx, i1 false
  br i1 %or.cond, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.428)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.428, ptr noundef nonnull align 4 dereferenceable(12) %i.u, i64 12, i1 false)
  store i64 %i.ak, ptr %i.bn, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.bg, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.428, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.428)
  %i.by = invoke noundef align 8 ptr @_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtNtNtBS_7runtime16dependency_graph8SmallSetBO_Kj4_ENtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE7get_mutBO_EBS_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.aw, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.u)
          to label %bb.ab unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 8 uses

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  invoke void @_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBP_EEE6removeBT_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.p, ptr noalias noundef nonnull align 8 dereferenceable(32) %.sroa.8.1174, ptr noundef nonnull %.sroa.534.1173)
          to label %bb.ai unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ab:                                            ; preds = %bb.z
  %.not78 = icmp eq ptr %i.by, null
  br i1 %.not78, label %.invoke226, label %bb.ac, !prof !7

bb.ac:                                            ; preds = %bb.ab
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 56 ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !alias.scope !105, !noalias !110, !noundef !8 ; 3 uses
  %i.cb = icmp ugt i64 %i.ca, 4
  br i1 %i.cb, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !alias.scope !105, !noalias !110, !nonnull !8, !noundef !8
  %.pre = load i64, ptr %i.cc, align 8, !alias.scope !113, !noalias !114
  br label %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexj4_E10triple_mutBM_.exit.i

bb.ae:                                            ; preds = %bb.ac
  %i.cf = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  br label %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexj4_E10triple_mutBM_.exit.i

_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexj4_E10triple_mutBM_.exit.i: ; preds = %bb.ae, %bb.ad
  %i.cg = phi i64 [ %.pre, %bb.ad ], [ %i.ca, %bb.ae ] ; 2 uses
  %.sink11.i.i = phi ptr [ %i.ce, %bb.ad ], [ %i.cf, %bb.ae ]
  %.sink10.i.i = phi ptr [ %i.cc, %bb.ad ], [ %i.bz, %bb.ae ]
  %.sink.i.i = phi i64 [ %i.ca, %bb.ad ], [ 4, %bb.ae ]
  %i.ch = icmp eq i64 %i.cg, %.sink.i.i
  br i1 %i.ch, label %bb.af, label %bb.ag, !prof !7

bb.af:                                            ; preds = %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexj4_E10triple_mutBM_.exit.i
  invoke void @_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexj4_E21reserve_one_uncheckedBM_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.by)
          to label %.noexc87 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc87:                                         ; preds = %bb.af
  %i.ci = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8, !alias.scope !113, !noalias !114, !nonnull !8, !noundef !8
  %.pre.i = load i64, ptr %i.ci, align 8, !alias.scope !113, !noalias !114
  br label %bb.ag

bb.ag:                                            ; preds = %.noexc87, %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexj4_E10triple_mutBM_.exit.i
  %i.cl = phi i64 [ %.pre.i, %.noexc87 ], [ %i.cg, %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexj4_E10triple_mutBM_.exit.i ]
  %.sroa.04.0.i = phi ptr [ %i.ck, %.noexc87 ], [ %.sink11.i.i, %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexj4_E10triple_mutBM_.exit.i ]
  %.sroa.0.0.i = phi ptr [ %i.ci, %.noexc87 ], [ %.sink10.i.i, %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexj4_E10triple_mutBM_.exit.i ] ; 2 uses
  %i.cm = getelementptr inbounds nuw [12 x i8], ptr %.sroa.04.0.i, i64 %i.cl
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cm, ptr noundef nonnull align 4 dereferenceable(12) %i.j, i64 12, i1 false)
  %i.cn = load i64, ptr %.sroa.0.0.i, align 8, !alias.scope !113, !noalias !114, !noundef !8
  %i.co = add i64 %i.cn, 1
  store i64 %i.co, ptr %.sroa.0.0.i, align 8, !alias.scope !113, !noalias !114
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ai, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %.loopexit157

bb.ai:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.ah

bb.aj:                                            ; preds = %bb.am, %.loopexit157
  %.sroa.016.0 = phi i1 [ %i.ct, %bb.am ], [ true, %.loopexit157 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.i, ptr noundef nonnull align 4 dereferenceable(12) %3, i64 12, i1 false)
  invoke void @_RNvMNtCsgQfI1edjipl_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtNtNtB13_7runtime16dependency_graph8SmallSetBZ_Kj4_ENtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE11rustc_entryB13_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.n, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.cp, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.i)
          to label %bb.an unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ak:                                            ; preds = %bb.aw, %bb.m
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsUsIPftNhTL_8lock_api5mutex10MutexGuardNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCsC8CapfvpQ1_5salsa2id2IdNtNtNtB37_8function4sync9SyncStateNtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherEEEB37_.exit: ; preds = %bb.l, %bb.m
  %i.cr = cmpxchg ptr %0, i8 1, i8 0 release monotonic, align 1
  %i.cs = extractvalue { i8, i1 } %i.cr, 1
  br i1 %i.cs, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsUsIPftNhTL_8lock_api5mutex10MutexGuardNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph15DependencyGraphEEB2e_.exit, label %bb.al, !prof !21

bb.al:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsUsIPftNhTL_8lock_api5mutex10MutexGuardNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCsC8CapfvpQ1_5salsa2id2IdNtNtNtB37_8function4sync9SyncStateNtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherEEEB37_.exit
  call void @_RNvMs1_NtCscHkFMvyoPQb_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %0, i1 noundef zeroext false)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsUsIPftNhTL_8lock_api5mutex10MutexGuardNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph15DependencyGraphEEB2e_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsUsIPftNhTL_8lock_api5mutex10MutexGuardNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph15DependencyGraphEEB2e_.exit: ; preds = %bb.bo, %bb.bp, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsUsIPftNhTL_8lock_api5mutex10MutexGuardNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCsC8CapfvpQ1_5salsa2id2IdNtNtNtB37_8function4sync9SyncStateNtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherEEEB37_.exit100, %bb.al, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsUsIPftNhTL_8lock_api5mutex10MutexGuardNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCsC8CapfvpQ1_5salsa2id2IdNtNtNtB37_8function4sync9SyncStateNtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherEEEB37_.exit
  %.sroa.04.0 = phi i1 [ false, %bb.al ], [ true, %bb.bo ], [ false, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsUsIPftNhTL_8lock_api5mutex10MutexGuardNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCsC8CapfvpQ1_5salsa2id2IdNtNtNtB37_8function4sync9SyncStateNtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherEEEB37_.exit ], [ false, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsUsIPftNhTL_8lock_api5mutex10MutexGuardNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCsC8CapfvpQ1_5salsa2id2IdNtNtNtB37_8function4sync9SyncStateNtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherEEEB37_.exit100 ], [ false, %bb.bp ]
  ret i1 %.sroa.04.0

bb.am:                                            ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.ct = icmp ne i64 %2, %.sroa.05.0
  br label %bb.aj

bb.an:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.cu = load ptr, ptr %i.n, align 8, !noundef !8 ; 2 uses
  %.not79 = icmp eq ptr %i.cu, null
  %i.cv = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  br i1 %.not79, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %.sroa.4130.0.copyload = load i64, ptr %i.cv, align 8
  %.sroa.5131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.5131.0.copyload = load ptr, ptr %.sroa.5131.0..sroa_idx, align 8
  %.sroa.6132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.sroa.6132.0.copyload = load i64, ptr %.sroa.6132.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !115
  store ptr %.sroa.5131.0.copyload, ptr %i.f, align 8
  %.sroa.10.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.10.16.extract.trunc = trunc i64 %.sroa.6132.0.copyload to i32
  store i32 %.sroa.10.16.extract.trunc, ptr %.sroa.10.16..sroa_idx, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i32 0, ptr %i.cw, align 8, !noalias !115
  %.sroa.412.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  store i64 0, ptr %.sroa.412.0..sroa_idx.i, align 8, !noalias !115
  %i.cx = invoke noundef nonnull ptr @_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtNtNtBT_7runtime16dependency_graph8SmallSetBP_Kj4_EEE14insert_no_growBT_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.cu, i64 noundef %.sroa.4130.0.copyload, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.f)
          to label %.noexc89 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc89:                                         ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !115
  br label %bb.aq

bb.ap:                                            ; preds = %bb.an
  %i.cy = load ptr, ptr %i.cv, align 8, !nonnull !8, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %.noexc89
  %.pn.i = phi ptr [ %i.cx, %.noexc89 ], [ %i.cy, %bb.ap ] ; 7 uses
  %.sroa.0.0.i88 = getelementptr inbounds i8, ptr %.pn.i, i64 -64
  %i.cz = getelementptr inbounds i8, ptr %.pn.i, i64 -8 ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !alias.scope !118, !noalias !123, !noundef !8 ; 3 uses
  %i.db = icmp ugt i64 %i.da, 4
  br i1 %i.db, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.dc = getelementptr inbounds i8, ptr %.pn.i, i64 -56 ; 2 uses
  %i.dd = getelementptr inbounds i8, ptr %.pn.i, i64 -48
  %i.de = load ptr, ptr %i.dd, align 8, !alias.scope !118, !noalias !123, !nonnull !8, !noundef !8
  %.pre190 = load i64, ptr %i.dc, align 8, !alias.scope !126, !noalias !127
  br label %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexj4_E10triple_mutBM_.exit.i90

bb.as:                                            ; preds = %bb.aq
  %i.df = getelementptr inbounds i8, ptr %.pn.i, i64 -60
  br label %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexj4_E10triple_mutBM_.exit.i90

_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexj4_E10triple_mutBM_.exit.i90: ; preds = %bb.as, %bb.ar
  %i.dg = phi i64 [ %.pre190, %bb.ar ], [ %i.da, %bb.as ] ; 2 uses
  %.sink11.i.i91 = phi ptr [ %i.de, %bb.ar ], [ %i.df, %bb.as ]
  %.sink10.i.i92 = phi ptr [ %i.dc, %bb.ar ], [ %i.cz, %bb.as ]
  %.sink.i.i93 = phi i64 [ %i.da, %bb.ar ], [ 4, %bb.as ]
  %i.dh = icmp eq i64 %i.dg, %.sink.i.i93
  br i1 %i.dh, label %bb.at, label %bb.au, !prof !7

bb.at:                                            ; preds = %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexj4_E10triple_mutBM_.exit.i90
  invoke void @_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexj4_E21reserve_one_uncheckedBM_(ptr noalias noundef nonnull align 8 dereferenceable(64) %.sroa.0.0.i88)
          to label %.noexc97 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc97:                                         ; preds = %bb.at
  %i.di = getelementptr inbounds i8, ptr %.pn.i, i64 -56 ; 2 uses
  %i.dj = getelementptr inbounds i8, ptr %.pn.i, i64 -48
  %i.dk = load ptr, ptr %i.dj, align 8, !alias.scope !126, !noalias !127, !nonnull !8, !noundef !8
  %.pre.i96 = load i64, ptr %i.di, align 8, !alias.scope !126, !noalias !127
  br label %bb.au

bb.au:                                            ; preds = %.noexc97, %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexj4_E10triple_mutBM_.exit.i90
  %i.dl = phi i64 [ %.pre.i96, %.noexc97 ], [ %i.dg, %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexj4_E10triple_mutBM_.exit.i90 ]
  %.sroa.04.0.i94 = phi ptr [ %i.dk, %.noexc97 ], [ %.sink11.i.i91, %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexj4_E10triple_mutBM_.exit.i90 ]
  %.sroa.0.0.i95 = phi ptr [ %i.di, %.noexc97 ], [ %.sink10.i.i92, %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexj4_E10triple_mutBM_.exit.i90 ] ; 2 uses
  %i.dm = getelementptr inbounds nuw [12 x i8], ptr %.sroa.04.0.i94, i64 %i.dl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.dm, ptr noundef nonnull readonly align 4 dereferenceable(12) %1, i64 12, i1 false)
  %i.dn = load i64, ptr %.sroa.0.0.i95, align 8, !alias.scope !126, !noalias !127, !noundef !8
  %i.do = add i64 %i.dn, 1
  store i64 %i.do, ptr %.sroa.0.0.i95, align 8, !alias.scope !126, !noalias !127
  br i1 %.sroa.016.0, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %.thread151, %.loopexit153, %_RNvMNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graphNtB2_15DependencyGraph24update_transferred_edges.exit, %bb.au
  %i.dp = cmpxchg ptr %5, i8 1, i8 0 release monotonic, align 1
  %i.dq = extractvalue { i8, i1 } %i.dp, 1
  br i1 %i.dq, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsUsIPftNhTL_8lock_api5mutex10MutexGuardNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCsC8CapfvpQ1_5salsa2id2IdNtNtNtB37_8function4sync9SyncStateNtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherEEEB37_.exit100, label %bb.aw, !prof !21

bb.aw:                                            ; preds = %bb.av
  invoke void @_RNvMs1_NtCscHkFMvyoPQb_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %5, i1 noundef zeroext false)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsUsIPftNhTL_8lock_api5mutex10MutexGuardNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCsC8CapfvpQ1_5salsa2id2IdNtNtNtB37_8function4sync9SyncStateNtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherEEEB37_.exit100 unwind label %bb.ak

bb.ax:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.h, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !128
  invoke void @_RNvNvMNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graphNtB4_15DependencyGraph23unblock_transfer_target19find_blocked_thread(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.v, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.h, i64 noundef range(i64 1, 0) %.sroa.05.0)
          to label %.noexc104 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc104:                                        ; preds = %bb.ax
  %i.dr = load i32, ptr %i.e, align 8, !noalias !128, !noundef !8
  %.not.i101 = icmp eq i32 %i.dr, 0
  br i1 %.not.i101, label %bb.bj, label %bb.ay

bb.ay:                                            ; preds = %.noexc104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !128
end_hunk_0
