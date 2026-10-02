Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/salsa-c68a43423e9593bc.salsa.9940d987241daddc-cgu.03?download=true
inline.NumInlined: 243
inline.NumDeleted: 134
begin_hunk_0_@_RNvMNtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graphNtB2_15DependencyGraph13transfer_lock
define hidden noundef zeroext i1 @_RNvMNtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graphNtB2_15DependencyGraph13transfer_lock(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef readonly align 4 captures(address) dead_on_return dereferenceable(12) %1, i64 noundef range(i64 1, 0) %2, ptr noalias nofree noundef readonly align 4 captures(address) dead_on_return dereferenceable(12) %3, i64 noundef %4, ptr noundef nonnull align 8 %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 5 uses
  %i.d = alloca [12 x i8], align 4                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [72 x i8], align 8                ; 6 uses
  %i.g = alloca [12 x i8], align 4                ; 4 uses
  %i.h = alloca [12 x i8], align 4                ; 4 uses
  %i.i = alloca [12 x i8], align 4                ; 4 uses
  %i.j = alloca [12 x i8], align 4                ; 4 uses
  %i.k = alloca [12 x i8], align 4                ; 4 uses
  %i.l = alloca [12 x i8], align 4                ; 4 uses
  %i.m = alloca [12 x i8], align 4                ; 4 uses
  %i.n = alloca [12 x i8], align 4                ; 4 uses
  %i.o = alloca [32 x i8], align 8                ; 8 uses
  %i.p = alloca [32 x i8], align 8                ; 6 uses
  %i.q = alloca [48 x i8], align 8                ; 3 uses
  %i.r = alloca [32 x i8], align 8                ; 6 uses
  %i.s = alloca [40 x i8], align 8                ; 7 uses
  %i.t = alloca [32 x i8], align 8                ; 8 uses
  %.sroa.428 = alloca [12 x i8], align 8          ; 4 uses
  %i.u = alloca [12 x i8], align 8                ; 7 uses
  %i.v = alloca [12 x i8], align 4                ; 9 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.x = icmp eq i64 %4, 0
  br i1 %i.x, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.n, ptr noundef nonnull align 4 dereferenceable(12) %3, i64 12, i1 false)
  %i.y = invoke noundef i64 @_RNvMNtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graphNtB2_15DependencyGraph30thread_id_of_transferred_query(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.w, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.n, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.c:                                             ; preds = %bb.d, %bb.a
  %.sroa.05.0 = phi i64 [ %4, %bb.a ], [ %i.y, %bb.d ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.m, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false)
  invoke void @_RNvMNtCsfjX3T6UU9IB_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexTNtNtNtCscAsMj0W7j8b_3std6thread2id8ThreadIdBZ_ENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE11rustc_entryB13_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.t, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.z, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.m)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %.not = icmp eq i64 %i.y, 0
  br i1 %.not, label %bb.e, label %bb.c, !prof !4

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #27
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.aa = load ptr, ptr %i.t, align 8, !noundef !5 ; 2 uses
  %.not72 = icmp eq ptr %i.aa, null
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  br i1 %.not72, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.448.0.copyload = load i64, ptr %i.ab, align 8
  %.sroa.549.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.549.0.copyload = load ptr, ptr %.sroa.549.0..sroa_idx, align 8
  %.sroa.650.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.sroa.650.0.copyload = load i64, ptr %.sroa.650.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %.sroa.12.16.extract.trunc = trunc i64 %.sroa.650.0.copyload to i32
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %3, i64 12, i1 false)
  store ptr %.sroa.549.0.copyload, ptr %i.s, align 8
  %.sroa.468.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i32 %.sroa.12.16.extract.trunc, ptr %.sroa.468.0..sroa_idx, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 %.sroa.05.0, ptr %i.ac, align 8
  %i.ad = invoke noundef nonnull ptr @_RNvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexTNtNtNtCscAsMj0W7j8b_3std6thread2id8ThreadIdBP_EEE14insert_no_growBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.aa, i64 noundef %.sroa.448.0.copyload, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.s)
          to label %bb.an unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.i:                                             ; preds = %bb.g
  %i.ae = load ptr, ptr %i.ab, align 8, !nonnull !5, !noundef !5 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.af = load i32, ptr %3, align 4, !range !9, !noundef !5 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !noundef !5 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aj = load i32, ptr %i.ai, align 4, !noundef !5 ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %i.ae, i64 -24 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !range !10, !noundef !5 ; 2 uses
  %i.am = icmp eq i64 %i.al, %.sroa.05.0
  br i1 %i.am, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds i8, ptr %i.ae, i64 -12
  %i.ao = load i32, ptr %i.an, align 4, !noundef !5
  %i.ap = icmp eq i32 %i.ao, %i.ah
  br i1 %i.ap, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.aq = getelementptr inbounds i8, ptr %i.ae, i64 -16
  %i.ar = load i32, ptr %i.aq, align 8, !range !9, !noundef !5
  %i.as = icmp eq i32 %i.ar, %i.af
  br i1 %i.as, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.at = getelementptr inbounds i8, ptr %i.ae, i64 -8
  %i.au = load i32, ptr %i.at, align 8, !noundef !5
  %i.av = icmp eq i32 %i.au, %i.aj
  br i1 %i.av, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.aw = getelementptr inbounds i8, ptr %i.ae, i64 -16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.v, ptr noundef nonnull align 8 dereferenceable(12) %i.aw, i64 12, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.ay = invoke noundef align 8 ptr @_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexINtNtNtBS_7runtime16dependency_graph8SmallSetBO_Kj4_ENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE7get_mutBO_EBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ax, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.v)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

bb.n:                                             ; preds = %bb.l
  %i.az = cmpxchg ptr %5, i8 1, i8 0 release monotonic, align 1
  %i.ba = extractvalue { i8, i1 } %i.az, 1
  br i1 %i.ba, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs8E1BR24LTvI_8lock_api5mutex10MutexGuardNtNtCsaWIbZW7RmAr_11parking_lot9raw_mutex8RawMutexINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtNtCsd9Lm8bEdjjY_5salsa2id2IdNtNtNtB38_8function4sync9SyncStateNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEEB38_.exit, label %bb.o, !prof !6

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvMs1_NtCsaWIbZW7RmAr_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %5, i1 noundef zeroext false)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs8E1BR24LTvI_8lock_api5mutex10MutexGuardNtNtCsaWIbZW7RmAr_11parking_lot9raw_mutex8RawMutexINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtNtCsd9Lm8bEdjjY_5salsa2id2IdNtNtNtB38_8function4sync9SyncStateNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEEB38_.exit unwind label %bb.al

bb.p:                                             ; preds = %bb.m
  %.not73 = icmp eq ptr %i.ay, null
  br i1 %.not73, label %.invoke262, label %bb.q, !prof !4

bb.q:                                             ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !148)
  call void @llvm.experimental.noalias.scope.decl(metadata !149)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 48 ; 3 uses
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !150, !noalias !151, !noundef !5 ; 2 uses
  %i.bd = icmp ugt i64 %i.bc, 4                   ; 2 uses
  %i.be = load ptr, ptr %i.ay, align 8, !alias.scope !150, !noalias !151, !nonnull !5
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !150, !noalias !151
  %.sink11.i.i = select i1 %i.bd, ptr %i.be, ptr %i.ay ; 4 uses
  %.sink10.i.i = select i1 %i.bd, i64 %i.bg, i64 %i.bc ; 4 uses
  %.idx.i = mul nuw nsw i64 %.sink10.i.i, 12
  %i.bh = getelementptr inbounds nuw i8, ptr %.sink11.i.i, i64 %.idx.i
  %i.bi = icmp eq i64 %.sink10.i.i, 0
  br i1 %i.bi, label %_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graphINtB5_8SmallSetNtNtB9_3key16DatabaseKeyIndexKj4_E6removeB9_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.q
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bk = load i32, ptr %i.bj, align 4, !alias.scope !152, !noalias !153, !noundef !5
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bm = load i32, ptr %1, align 4, !range !9, !alias.scope !149, !noalias !148
  %i.bn = load i32, ptr %i.bl, align 4, !alias.scope !149, !noalias !148
  br label %bb.r

bb.r:                                             ; preds = %_RNCNvMs0_NtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.thread.i.i, %.lr.ph.i.i
  %.sroa.02.08.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.by, %_RNCNvMs0_NtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.thread.i.i ] ; 3 uses
  %i.bo = phi ptr [ %.sink11.i.i, %.lr.ph.i.i ], [ %i.bp, %_RNCNvMs0_NtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.thread.i.i ] ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 12 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !154)
  call void @llvm.experimental.noalias.scope.decl(metadata !155)
  call void @llvm.experimental.noalias.scope.decl(metadata !156)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.br = load i32, ptr %i.bq, align 4, !alias.scope !157, !noalias !158, !noundef !5
  %i.bs = icmp eq i32 %i.br, %i.bk
  br i1 %i.bs, label %bb.s, label %_RNCNvMs0_NtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.thread.i.i

bb.s:                                             ; preds = %bb.r
  %i.bt = load i32, ptr %i.bo, align 4, !range !9, !alias.scope !157, !noalias !158, !noundef !5
  %i.bu = icmp eq i32 %i.bt, %i.bm
  br i1 %i.bu, label %_RNCNvMs0_NtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.i.i, label %_RNCNvMs0_NtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.thread.i.i

_RNCNvMs0_NtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.i.i: ; preds = %bb.s
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bw = load i32, ptr %i.bv, align 4, !alias.scope !157, !noalias !158, !noundef !5
  %i.bx = icmp eq i32 %i.bw, %i.bn
  br i1 %i.bx, label %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexj4_E11swap_removeBM_.exit.i, label %_RNCNvMs0_NtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.thread.i.i

_RNCNvMs0_NtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.thread.i.i: ; preds = %_RNCNvMs0_NtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.i.i, %bb.s, %bb.r
  %i.by = add nuw nsw i64 %.sroa.02.08.i.i, 1
  %i.bz = icmp eq ptr %i.bp, %i.bh
  br i1 %i.bz, label %_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graphINtB5_8SmallSetNtNtB9_3key16DatabaseKeyIndexKj4_E6removeB9_.exit, label %bb.r

_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexj4_E11swap_removeBM_.exit.i: ; preds = %_RNCNvMs0_NtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.i.i
  %i.ca = icmp ult i64 %.sroa.02.08.i.i, %.sink10.i.i
  call void @llvm.assume(i1 %i.ca)
  %i.cb = getelementptr [12 x i8], ptr %.sink11.i.i, i64 %.sink10.i.i
  %i.cc = getelementptr i8, ptr %i.cb, i64 -12    ; 2 uses
  %i.cd = getelementptr inbounds nuw [12 x i8], ptr %.sink11.i.i, i64 %.sroa.02.08.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.h, ptr noundef nonnull align 4 dereferenceable(12) %i.cc, i64 12, i1 false), !noalias !159
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cc, ptr noundef nonnull align 4 dereferenceable(12) %i.cd, i64 12, i1 false), !noalias !159
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cd, ptr noundef nonnull align 4 dereferenceable(12) %i.h, i64 12, i1 false), !noalias !159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.ce = load i64, ptr %i.bb, align 8, !alias.scope !160, !noalias !161, !noundef !5
  %i.cf = icmp ugt i64 %i.ce, 4
  %.sink9.i12.i.i = select i1 %i.cf, ptr %i.bf, ptr %i.bb ; 2 uses
  %i.cg = load i64, ptr %.sink9.i12.i.i, align 8, !alias.scope !162, !noalias !159, !noundef !5 ; 2 uses
  %6 = icmp ne i64 %i.cg, 0
  call void @llvm.assume(i1 %6)
  %i.ch = add i64 %i.cg, -1
  store i64 %i.ch, ptr %.sink9.i12.i.i, align 8, !alias.scope !162, !noalias !159
  br label %_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graphINtB5_8SmallSetNtNtB9_3key16DatabaseKeyIndexKj4_E6removeB9_.exit

.invoke262:                                       ; preds = %bb.ae, %bb.y, %bb.p
  %i.ci = phi ptr [ @11, %bb.y ], [ @10, %bb.p ], [ @12, %bb.ae ]
  invoke void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ci) #27
          to label %.cont263 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont263:                                         ; preds = %.invoke262
  unreachable

_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graphINtB5_8SmallSetNtNtB9_3key16DatabaseKeyIndexKj4_E6removeB9_.exit: ; preds = %_RNCNvMs0_NtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.thread.i.i, %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexj4_E11swap_removeBM_.exit.i, %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.aw, ptr noundef nonnull align 4 dereferenceable(12) %3, i64 12, i1 false)
  store i64 %.sroa.05.0, ptr %i.ak, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.l, ptr noundef nonnull align 4 dereferenceable(12) %3, i64 12, i1 false)
  invoke void @_RNvMNtCsfjX3T6UU9IB_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexTNtNtNtCscAsMj0W7j8b_3std6thread2id8ThreadIdBZ_ENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE11rustc_entryB13_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.r, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.z, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.l)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graphINtB5_8SmallSetNtNtB9_3key16DatabaseKeyIndexKj4_E6removeB9_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.cj = load ptr, ptr %i.r, align 8, !noundef !5
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.456.0.copyload = load ptr, ptr %.sroa.456.0..sroa_idx, align 8
  %.sroa.557.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.557.0.copyload = load ptr, ptr %.sroa.557.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %.not75199 = icmp eq ptr %i.cj, null
  br i1 %.not75199, label %.lr.ph, label %.loopexit179

.lr.ph:                                           ; preds = %bb.t
  %i.ck = load <2 x i32>, ptr %1, align 4
  %i.cl = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cn = load i32, ptr %i.cm, align 4
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.565.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  br label %bb.u

.loopexit179:                                     ; preds = %bb.x, %bb.t, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.ak

bb.u:                                             ; preds = %.lr.ph, %bb.x
  %.sroa.534.1201 = phi ptr [ %.sroa.456.0.copyload, %.lr.ph ], [ %.sroa.464.0.copyload, %bb.x ] ; 7 uses
  %.sroa.8.1200 = phi ptr [ %.sroa.557.0.copyload, %.lr.ph ], [ %.sroa.565.0.copyload, %bb.x ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.1200) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.534.1201) ]
  %i.co = getelementptr inbounds i8, ptr %.sroa.534.1201, i64 -40
  %.sroa.0137.0.copyload = load i32, ptr %i.co, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %.sroa.534.1201, i64 -36
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 4 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %.sroa.534.1201, i64 -32
  %.sroa.7.0.copyload = load i32, ptr %.sroa.7.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.cp = getelementptr inbounds i8, ptr %.sroa.534.1201, i64 -16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.u, ptr noundef nonnull align 8 dereferenceable(12) %i.cp, i64 12, i1 false)
  %i.cq = load <2 x i32>, ptr %i.u, align 8
  %i.cr = icmp eq <2 x i32> %i.cq, %i.ck          ; 2 uses
  %i.cs = extractelement <2 x i1> %i.cr, i64 0
  %i.ct = extractelement <2 x i1> %i.cr, i64 1
  %or.cond203 = select i1 %i.ct, i1 %i.cs, i1 false
  %i.cu = load i32, ptr %i.cl, align 8
  %i.cv = icmp eq i32 %i.cu, %i.cn
  %or.cond205 = select i1 %or.cond203, i1 %i.cv, i1 false
  br i1 %or.cond205, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  invoke void @_RNvMNtCsfjX3T6UU9IB_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexTNtNtNtCscAsMj0W7j8b_3std6thread2id8ThreadIdBZ_ENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE11rustc_entryB13_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.p, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.z, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.u)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.w:                                             ; preds = %bb.u
  %i.cw = getelementptr inbounds i8, ptr %.sroa.534.1201, i64 -24
  %i.cx = invoke noundef align 8 ptr @_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexINtNtNtBS_7runtime16dependency_graph8SmallSetBO_Kj4_ENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE7get_mutBO_EBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ax, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %1)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

bb.x:                                             ; preds = %bb.v
  %i.cy = load ptr, ptr %i.p, align 8, !noundef !5
  %.sroa.464.0.copyload = load ptr, ptr %.sroa.464.0..sroa_idx, align 8
  %.sroa.565.0.copyload = load ptr, ptr %.sroa.565.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %.not75 = icmp eq ptr %i.cy, null
  br i1 %.not75, label %bb.u, label %.loopexit179

bb.y:                                             ; preds = %bb.w
  %.not77 = icmp eq ptr %i.cx, null
  br i1 %.not77, label %.invoke262, label %bb.z, !prof !4

bb.z:                                             ; preds = %bb.y
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 48 ; 3 uses
  %i.da = load i64, ptr %i.cz, align 8, !alias.scope !163, !noalias !164, !noundef !5 ; 2 uses
  %i.db = icmp ugt i64 %i.da, 4                   ; 2 uses
  %i.dc = load ptr, ptr %i.cx, align 8, !alias.scope !163, !noalias !164, !nonnull !5
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cx, i64 8 ; 2 uses
  %i.de = load i64, ptr %i.dd, align 8, !alias.scope !163, !noalias !164
  %.sink11.i.i87 = select i1 %i.db, ptr %i.dc, ptr %i.cx ; 4 uses
  %.sink10.i.i88 = select i1 %i.db, i64 %i.de, i64 %i.da ; 4 uses
  %.idx.i89 = mul nuw nsw i64 %.sink10.i.i88, 12
  %i.df = getelementptr inbounds nuw i8, ptr %.sink11.i.i87, i64 %.idx.i89
  %i.dg = icmp eq i64 %.sink10.i.i88, 0
  br i1 %i.dg, label %_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graphINtB5_8SmallSetNtNtB9_3key16DatabaseKeyIndexKj4_E6removeB9_.exit98, label %.lr.ph.i.i90

.lr.ph.i.i90:                                     ; preds = %bb.z, %_RNCNvMs0_NtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.thread.i.i92
  %.sroa.02.08.i.i91 = phi i64 [ %i.dr, %_RNCNvMs0_NtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.thread.i.i92 ], [ 0, %bb.z ] ; 3 uses
  %i.dh = phi ptr [ %i.di, %_RNCNvMs0_NtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.thread.i.i92 ], [ %.sink11.i.i87, %bb.z ] ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 12 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  %i.dk = load i32, ptr %i.dj, align 4, !alias.scope !165, !noalias !166, !noundef !5
  %i.dl = icmp eq i32 %i.dk, %.sroa.6.0.copyload
  br i1 %i.dl, label %bb.aa, label %_RNCNvMs0_NtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.thread.i.i92

bb.aa:                                            ; preds = %.lr.ph.i.i90
  %i.dm = load i32, ptr %i.dh, align 4, !range !9, !alias.scope !165, !noalias !166, !noundef !5
  %i.dn = icmp eq i32 %i.dm, %.sroa.0137.0.copyload
  br i1 %i.dn, label %_RNCNvMs0_NtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.i.i93, label %_RNCNvMs0_NtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.thread.i.i92

_RNCNvMs0_NtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.i.i93: ; preds = %bb.aa
  %i.do = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dp = load i32, ptr %i.do, align 4, !alias.scope !165, !noalias !166, !noundef !5
  %i.dq = icmp eq i32 %i.dp, %.sroa.7.0.copyload
  br i1 %i.dq, label %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexj4_E11swap_removeBM_.exit.i94, label %_RNCNvMs0_NtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.thread.i.i92

_RNCNvMs0_NtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.thread.i.i92: ; preds = %_RNCNvMs0_NtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.i.i93, %bb.aa, %.lr.ph.i.i90
  %i.dr = add nuw nsw i64 %.sroa.02.08.i.i91, 1
  %i.ds = icmp eq ptr %i.di, %i.df
  br i1 %i.ds, label %_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graphINtB5_8SmallSetNtNtB9_3key16DatabaseKeyIndexKj4_E6removeB9_.exit98, label %.lr.ph.i.i90

_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexj4_E11swap_removeBM_.exit.i94: ; preds = %_RNCNvMs0_NtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.i.i93
  %i.dt = icmp ult i64 %.sroa.02.08.i.i91, %.sink10.i.i88
  call void @llvm.assume(i1 %i.dt)
  %i.du = getelementptr [12 x i8], ptr %.sink11.i.i87, i64 %.sink10.i.i88
  %i.dv = getelementptr i8, ptr %i.du, i64 -12    ; 2 uses
  %i.dw = getelementptr inbounds nuw [12 x i8], ptr %.sink11.i.i87, i64 %.sroa.02.08.i.i91 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.g, ptr noundef nonnull align 4 dereferenceable(12) %i.dv, i64 12, i1 false), !noalias !167
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.dv, ptr noundef nonnull align 4 dereferenceable(12) %i.dw, i64 12, i1 false), !noalias !167
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.dw, ptr noundef nonnull align 4 dereferenceable(12) %i.g, i64 12, i1 false), !noalias !167
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.dx = load i64, ptr %i.cz, align 8, !alias.scope !168, !noalias !169, !noundef !5
  %i.dy = icmp ugt i64 %i.dx, 4
  %.sink9.i12.i.i95 = select i1 %i.dy, ptr %i.dd, ptr %i.cz ; 2 uses
  %i.dz = load i64, ptr %.sink9.i12.i.i95, align 8, !alias.scope !170, !noalias !167, !noundef !5 ; 2 uses
  %7 = icmp ne i64 %i.dz, 0
  call void @llvm.assume(i1 %7)
  %i.ea = add i64 %i.dz, -1
  store i64 %i.ea, ptr %.sink9.i12.i.i95, align 8, !alias.scope !170, !noalias !167
  br label %_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graphINtB5_8SmallSetNtNtB9_3key16DatabaseKeyIndexKj4_E6removeB9_.exit98

_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graphINtB5_8SmallSetNtNtB9_3key16DatabaseKeyIndexKj4_E6removeB9_.exit98: ; preds = %_RNCNvMs0_NtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.thread.i.i92, %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexj4_E11swap_removeBM_.exit.i94, %bb.z
  %i.eb = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.ec = load i32, ptr %i.eb, align 4, !noundef !5
  %i.ed = icmp eq i32 %i.ec, %i.ah
  br i1 %i.ed, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graphINtB5_8SmallSetNtNtB9_3key16DatabaseKeyIndexKj4_E6removeB9_.exit98
  %i.ee = load i32, ptr %i.v, align 4, !range !9, !noundef !5
  %i.ef = icmp eq i32 %i.ee, %i.af
  %i.eg = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.eh = load i32, ptr %i.eg, align 4
  %i.ei = icmp eq i32 %i.eh, %i.aj
  %or.cond = select i1 %i.ef, i1 %i.ei, i1 false
  br i1 %or.cond, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graphINtB5_8SmallSetNtNtB9_3key16DatabaseKeyIndexKj4_E6removeB9_.exit98
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.428)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.428, ptr noundef nonnull align 4 dereferenceable(12) %i.v, i64 12, i1 false)
  store i64 %i.al, ptr %i.cw, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.cp, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.428, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.428)
  %i.ej = invoke noundef align 8 ptr @_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexINtNtNtBS_7runtime16dependency_graph8SmallSetBO_Kj4_ENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE7get_mutBO_EBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ax, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.v)
          to label %bb.ae unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 7 uses

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  invoke void @_RNvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexTNtNtNtCscAsMj0W7j8b_3std6thread2id8ThreadIdBP_EEE6removeBT_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.sroa.8.1200, ptr noundef nonnull %.sroa.534.1201)
          to label %bb.aj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ae:                                            ; preds = %bb.ac
  %.not78 = icmp eq ptr %i.ej, null
  br i1 %.not78, label %.invoke262, label %bb.af, !prof !4

bb.af:                                            ; preds = %bb.ae
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 48 ; 2 uses
  %i.el = load i64, ptr %i.ek, align 8, !alias.scope !171, !noalias !172, !noundef !5 ; 2 uses
  %i.em = icmp ugt i64 %i.el, 4                   ; 2 uses
  %i.en = load ptr, ptr %i.ej, align 8, !alias.scope !171, !noalias !172, !nonnull !5
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ej, i64 8 ; 3 uses
  %.sink10.i.i99 = select i1 %i.em, ptr %i.en, ptr %i.ej
  %.sink9.i.i = select i1 %i.em, ptr %i.eo, ptr %i.ek ; 2 uses
  %.sink.i.i = call i64 @llvm.umax.i64(i64 %i.el, i64 4)
  %i.ep = load i64, ptr %.sink9.i.i, align 8, !alias.scope !173, !noalias !174, !noundef !5 ; 2 uses
  %i.eq = icmp eq i64 %i.ep, %.sink.i.i
  br i1 %i.eq, label %bb.ag, label %bb.ah, !prof !4

bb.ag:                                            ; preds = %bb.af
  invoke void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexj4_E21reserve_one_uncheckedBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.ej)
          to label %.noexc100 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc100:                                        ; preds = %bb.ag
  %i.er = load ptr, ptr %i.ej, align 8, !alias.scope !173, !noalias !174, !nonnull !5, !noundef !5
  %.pre.i = load i64, ptr %i.eo, align 8, !alias.scope !173, !noalias !174
  br label %bb.ah

bb.ah:                                            ; preds = %.noexc100, %bb.af
  %i.es = phi i64 [ %.pre.i, %.noexc100 ], [ %i.ep, %bb.af ]
  %.sroa.01.0.i = phi ptr [ %i.eo, %.noexc100 ], [ %.sink9.i.i, %bb.af ] ; 2 uses
  %.sroa.0.0.i = phi ptr [ %i.er, %.noexc100 ], [ %.sink10.i.i99, %bb.af ]
  %i.et = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0.0.i, i64 %i.es ; 3 uses
  store i32 %.sroa.0137.0.copyload, ptr %i.et, align 4
  %.sroa.4153.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.et, i64 4
  store i32 %.sroa.6.0.copyload, ptr %.sroa.4153.0..sroa_idx, align 4
  %.sroa.5154.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  store i32 %.sroa.7.0.copyload, ptr %.sroa.5154.0..sroa_idx, align 4
  %i.eu = load i64, ptr %.sroa.01.0.i, align 8, !alias.scope !173, !noalias !174, !noundef !5
  %i.ev = add i64 %i.eu, 1
  store i64 %i.ev, ptr %.sroa.01.0.i, align 8, !alias.scope !173, !noalias !174
  br label %bb.ai

bb.ai:                                            ; preds = %bb.aj, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %.loopexit179

bb.aj:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.ai

bb.ak:                                            ; preds = %bb.an, %.loopexit179
  %.sroa.016.0 = phi i1 [ %i.fa, %bb.an ], [ true, %.loopexit179 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.k, ptr noundef nonnull align 4 dereferenceable(12) %3, i64 12, i1 false)
  invoke void @_RNvMNtCsfjX3T6UU9IB_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexINtNtNtB13_7runtime16dependency_graph8SmallSetBZ_Kj4_ENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE11rustc_entryB13_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.o, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ew, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.k)
          to label %bb.ao unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.al:                                            ; preds = %bb.av, %bb.o
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs8E1BR24LTvI_8lock_api5mutex10MutexGuardNtNtCsaWIbZW7RmAr_11parking_lot9raw_mutex8RawMutexINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtNtCsd9Lm8bEdjjY_5salsa2id2IdNtNtNtB38_8function4sync9SyncStateNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEEB38_.exit: ; preds = %bb.n, %bb.o
  %i.ey = cmpxchg ptr %0, i8 1, i8 0 release monotonic, align 1
  %i.ez = extractvalue { i8, i1 } %i.ey, 1
  br i1 %i.ez, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs8E1BR24LTvI_8lock_api5mutex10MutexGuardNtNtCsaWIbZW7RmAr_11parking_lot9raw_mutex8RawMutexNtNtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graph15DependencyGraphEEB2f_.exit, label %bb.am, !prof !6

bb.am:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs8E1BR24LTvI_8lock_api5mutex10MutexGuardNtNtCsaWIbZW7RmAr_11parking_lot9raw_mutex8RawMutexINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtNtCsd9Lm8bEdjjY_5salsa2id2IdNtNtNtB38_8function4sync9SyncStateNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEEB38_.exit
  call void @_RNvMs1_NtCsaWIbZW7RmAr_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %0, i1 noundef zeroext false)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs8E1BR24LTvI_8lock_api5mutex10MutexGuardNtNtCsaWIbZW7RmAr_11parking_lot9raw_mutex8RawMutexNtNtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graph15DependencyGraphEEB2f_.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs8E1BR24LTvI_8lock_api5mutex10MutexGuardNtNtCsaWIbZW7RmAr_11parking_lot9raw_mutex8RawMutexNtNtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graph15DependencyGraphEEB2f_.exit: ; preds = %bb.bm, %bb.bn, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs8E1BR24LTvI_8lock_api5mutex10MutexGuardNtNtCsaWIbZW7RmAr_11parking_lot9raw_mutex8RawMutexINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtNtCsd9Lm8bEdjjY_5salsa2id2IdNtNtNtB38_8function4sync9SyncStateNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEEB38_.exit112, %bb.am, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs8E1BR24LTvI_8lock_api5mutex10MutexGuardNtNtCsaWIbZW7RmAr_11parking_lot9raw_mutex8RawMutexINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtNtCsd9Lm8bEdjjY_5salsa2id2IdNtNtNtB38_8function4sync9SyncStateNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEEB38_.exit
  %.sroa.04.0 = phi i1 [ false, %bb.am ], [ true, %bb.bm ], [ false, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs8E1BR24LTvI_8lock_api5mutex10MutexGuardNtNtCsaWIbZW7RmAr_11parking_lot9raw_mutex8RawMutexINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtNtCsd9Lm8bEdjjY_5salsa2id2IdNtNtNtB38_8function4sync9SyncStateNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEEB38_.exit ], [ false, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs8E1BR24LTvI_8lock_api5mutex10MutexGuardNtNtCsaWIbZW7RmAr_11parking_lot9raw_mutex8RawMutexINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtNtCsd9Lm8bEdjjY_5salsa2id2IdNtNtNtB38_8function4sync9SyncStateNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEEB38_.exit112 ], [ false, %bb.bn ]
  ret i1 %.sroa.04.0

bb.an:                                            ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.fa = icmp ne i64 %2, %.sroa.05.0
  br label %bb.ak

bb.ao:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.fb = load ptr, ptr %i.o, align 8, !noundef !5 ; 2 uses
  %.not79 = icmp eq ptr %i.fb, null
  %i.fc = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  br i1 %.not79, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %.sroa.4149.0.copyload = load i64, ptr %i.fc, align 8
  %.sroa.5150.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.5150.0.copyload = load ptr, ptr %.sroa.5150.0..sroa_idx, align 8
  %.sroa.6151.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %.sroa.6151.0.copyload = load i64, ptr %.sroa.6151.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !175
  store ptr %.sroa.5150.0.copyload, ptr %i.f, align 8
  %.sroa.10.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.10.16.extract.trunc = trunc i64 %.sroa.6151.0.copyload to i32
  store i32 %.sroa.10.16.extract.trunc, ptr %.sroa.10.16..sroa_idx, align 8
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store i64 0, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !175
  %i.fd = invoke noundef nonnull ptr @_RNvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexINtNtNtBT_7runtime16dependency_graph8SmallSetBP_Kj4_EEE14insert_no_growBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.fb, i64 noundef %.sroa.4149.0.copyload, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.f)
          to label %.noexc102 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc102:                                        ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !175
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  %i.fe = load ptr, ptr %i.fc, align 8, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.noexc102
  %.pn.i = phi ptr [ %i.fd, %.noexc102 ], [ %i.fe, %bb.aq ] ; 3 uses
  %.sroa.0.0.i101 = getelementptr inbounds i8, ptr %.pn.i, i64 -56 ; 4 uses
  %i.ff = getelementptr inbounds i8, ptr %.pn.i, i64 -8 ; 2 uses
  %i.fg = load i64, ptr %i.ff, align 8, !alias.scope !176, !noalias !177, !noundef !5 ; 2 uses
  %i.fh = icmp ugt i64 %i.fg, 4                   ; 2 uses
  %i.fi = load ptr, ptr %.sroa.0.0.i101, align 8, !alias.scope !176, !noalias !177, !nonnull !5
  %i.fj = getelementptr inbounds i8, ptr %.pn.i, i64 -48 ; 3 uses
  %.sink10.i.i103 = select i1 %i.fh, ptr %i.fi, ptr %.sroa.0.0.i101
  %.sink9.i.i104 = select i1 %i.fh, ptr %i.fj, ptr %i.ff ; 2 uses
  %.sink.i.i105 = call i64 @llvm.umax.i64(i64 %i.fg, i64 4)
  %i.fk = load i64, ptr %.sink9.i.i104, align 8, !alias.scope !178, !noalias !179, !noundef !5 ; 2 uses
  %i.fl = icmp eq i64 %i.fk, %.sink.i.i105
  br i1 %i.fl, label %bb.as, label %bb.at, !prof !4

bb.as:                                            ; preds = %bb.ar
  invoke void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexj4_E21reserve_one_uncheckedBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.i101)
          to label %.noexc109 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc109:                                        ; preds = %bb.as
  %i.fm = load ptr, ptr %.sroa.0.0.i101, align 8, !alias.scope !178, !noalias !179, !nonnull !5, !noundef !5
  %.pre.i108 = load i64, ptr %i.fj, align 8, !alias.scope !178, !noalias !179
  br label %bb.at

bb.at:                                            ; preds = %.noexc109, %bb.ar
  %i.fn = phi i64 [ %.pre.i108, %.noexc109 ], [ %i.fk, %bb.ar ]
  %.sroa.01.0.i106 = phi ptr [ %i.fj, %.noexc109 ], [ %.sink9.i.i104, %bb.ar ] ; 2 uses
  %.sroa.0.0.i107 = phi ptr [ %i.fm, %.noexc109 ], [ %.sink10.i.i103, %bb.ar ]
  %i.fo = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0.0.i107, i64 %i.fn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.fo, ptr noundef nonnull readonly align 4 dereferenceable(12) %1, i64 12, i1 false)
  %i.fp = load i64, ptr %.sroa.01.0.i106, align 8, !alias.scope !178, !noalias !179, !noundef !5
  %i.fq = add i64 %i.fp, 1
  store i64 %i.fq, ptr %.sroa.01.0.i106, align 8, !alias.scope !178, !noalias !179
  br i1 %.sroa.016.0, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %.thread173, %.loopexit175, %_RNvMNtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graphNtB2_15DependencyGraph24update_transferred_edges.exit, %bb.at
  %i.fr = cmpxchg ptr %5, i8 1, i8 0 release monotonic, align 1
  %i.fs = extractvalue { i8, i1 } %i.fr, 1
  br i1 %i.fs, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs8E1BR24LTvI_8lock_api5mutex10MutexGuardNtNtCsaWIbZW7RmAr_11parking_lot9raw_mutex8RawMutexINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtNtCsd9Lm8bEdjjY_5salsa2id2IdNtNtNtB38_8function4sync9SyncStateNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEEB38_.exit112, label %bb.av, !prof !6

bb.av:                                            ; preds = %bb.au
  invoke void @_RNvMs1_NtCsaWIbZW7RmAr_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %5, i1 noundef zeroext false)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs8E1BR24LTvI_8lock_api5mutex10MutexGuardNtNtCsaWIbZW7RmAr_11parking_lot9raw_mutex8RawMutexINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtNtCsd9Lm8bEdjjY_5salsa2id2IdNtNtNtB38_8function4sync9SyncStateNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEEB38_.exit112 unwind label %bb.al

bb.aw:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.j, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !180
  invoke void @_RNvNvMNtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graphNtB4_15DependencyGraph23unblock_transfer_target19find_blocked_thread(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.w, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.j, i64 noundef range(i64 1, 0) %.sroa.05.0)
          to label %.noexc116 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc116:                                        ; preds = %bb.aw
  %i.ft = load i32, ptr %i.e, align 8, !noalias !180, !noundef !5
end_hunk_0
begin_hunk_1_@_RNvMNtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graphNtB2_15DependencyGraph13transfer_lock:bb.a
  br i1 %.not.i.not30.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.bj, %bb.bk
  %.sroa.06.0.i31.i.i.i.i = phi i16 [ %i.ih, %bb.bk ], [ %i.hu, %bb.bj ] ; 3 uses
  %i.hv = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i.i, i1 true)
  %i.hw = zext nneg i16 %i.hv to i64
  %i.hx = add i64 %.sroa.01.0.i.i.i.i.i, %i.hw
  %i.hy = and i64 %i.hx, %i.hl
  %i.hz = sub nsw i64 0, %i.hy
  %i.ia = getelementptr inbounds [24 x i8], ptr %i.hm, i64 %i.hz ; 2 uses
  %i.ib = getelementptr inbounds i8, ptr %i.ia, i64 -24
  %i.ic = invoke noundef zeroext i1 @_RNvXCsfjX3T6UU9IB_9hashbrownNtNtNtCscAsMj0W7j8b_3std6thread2id8ThreadIdINtB2_10EquivalentBq_E10equivalentCsd9Lm8bEdjjY_5salsa(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ib)
          to label %.noexc130 unwind label %.loopexit

.noexc130:                                        ; preds = %.lr.ph.i.i.i.i
  br i1 %i.ic, label %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtNtCscAsMj0W7j8b_3std6thread2id8ThreadIdNtNtNtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graph4edge4EdgeNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EB1D_.exit.i.i, label %bb.bk, !prof !6

._crit_edge.i.i.i.i:                              ; preds = %bb.bk, %bb.bj
  %i.id = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i, splat (i8 -1)
  %i.ie = bitcast <16 x i1> %i.id to i16
  %i.if = icmp eq i16 %i.ie, 0
  br i1 %i.if, label %bb.bl, label %.loopexit175, !prof !4

bb.bk:                                            ; preds = %.noexc130
  %i.ig = add i16 %.sroa.06.0.i31.i.i.i.i, -1
  %i.ih = and i16 %i.ig, %.sroa.06.0.i31.i.i.i.i  ; 2 uses
  %.not.i.not.i.i.i.i = icmp eq i16 %i.ih, 0
  br i1 %.not.i.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.bl:                                            ; preds = %._crit_edge.i.i.i.i
  %i.ii = add i64 %.sroa.9.0.i.i.i.i.i, 16        ; 2 uses
  %i.ij = add i64 %.sroa.01.0.i.i.i.i.i, %i.ii
  br label %bb.bj

_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtNtCscAsMj0W7j8b_3std6thread2id8ThreadIdNtNtNtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graph4edge4EdgeNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EB1D_.exit.i.i: ; preds = %.noexc130
  %i.ik = getelementptr inbounds i8, ptr %i.ia, i64 -16
  %i.il = load i64, ptr %i.ik, align 8, !range !10, !noundef !5 ; 2 uses
  %i.im = icmp eq i64 %i.il, %2
  br i1 %i.im, label %.thread173, label %.split.i.i

.thread173:                                       ; preds = %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtNtCscAsMj0W7j8b_3std6thread2id8ThreadIdNtNtNtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graph4edge4EdgeNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EB1D_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !193
  br label %bb.au

.loopexit175:                                     ; preds = %._crit_edge.i.i.i.i
  %i.in = icmp eq i64 %storemerge.i.i, %2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !193
  br i1 %i.in, label %bb.au, label %bb.bm

bb.bm:                                            ; preds = %.loopexit175.thread, %.loopexit175
  %i.io = call noundef i8 @_RINvMNtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graphNtB3_15DependencyGraph8block_onINtNtCs8E1BR24LTvI_8lock_api5mutex10MutexGuardNtNtCsaWIbZW7RmAr_11parking_lot9raw_mutex8RawMutexINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtNtB7_2id2IdNtNtNtB7_8function4sync9SyncStateNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEEB7_(ptr noundef nonnull align 8 %0, i64 noundef %2, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(12) %3, i64 noundef %.sroa.05.0, ptr noundef nonnull align 8 %5) ; 0 uses
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs8E1BR24LTvI_8lock_api5mutex10MutexGuardNtNtCsaWIbZW7RmAr_11parking_lot9raw_mutex8RawMutexNtNtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graph15DependencyGraphEEB2f_.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs8E1BR24LTvI_8lock_api5mutex10MutexGuardNtNtCsaWIbZW7RmAr_11parking_lot9raw_mutex8RawMutexINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtNtCsd9Lm8bEdjjY_5salsa2id2IdNtNtNtB38_8function4sync9SyncStateNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEEB38_.exit112: ; preds = %bb.au, %bb.av
  %i.ip = cmpxchg ptr %0, i8 1, i8 0 release monotonic, align 1
  %i.iq = extractvalue { i8, i1 } %i.ip, 1
  br i1 %i.iq, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs8E1BR24LTvI_8lock_api5mutex10MutexGuardNtNtCsaWIbZW7RmAr_11parking_lot9raw_mutex8RawMutexNtNtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graph15DependencyGraphEEB2f_.exit, label %bb.bn, !prof !6

bb.bn:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs8E1BR24LTvI_8lock_api5mutex10MutexGuardNtNtCsaWIbZW7RmAr_11parking_lot9raw_mutex8RawMutexINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtNtCsd9Lm8bEdjjY_5salsa2id2IdNtNtNtB38_8function4sync9SyncStateNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEEB38_.exit112
  call void @_RNvMs1_NtCsaWIbZW7RmAr_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %0, i1 noundef zeroext false)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs8E1BR24LTvI_8lock_api5mutex10MutexGuardNtNtCsaWIbZW7RmAr_11parking_lot9raw_mutex8RawMutexNtNtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graph15DependencyGraphEEB2f_.exit

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %.split.i.i
  %lpad.loopexit176 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.v
  %lpad.loopexit180 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke262, %.invoke, %_RNvMNtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graphNtB2_15DependencyGraph15unblock_runtime.exit.i, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.ax, %bb.aw, %bb.c, %bb.m, %bb.b, %_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graphINtB5_8SmallSetNtNtB9_3key16DatabaseKeyIndexKj4_E6removeB9_.exit, %bb.w, %bb.e, %bb.ac, %bb.ag, %bb.ad, %bb.h, %bb.ak, %bb.ap, %bb.as, %.noexc125, %bb.bh
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit176, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit180, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.ir = cmpxchg ptr %5, i8 1, i8 0 release monotonic, align 1
  %i.is = extractvalue { i8, i1 } %i.ir, 1
  br i1 %i.is, label %bb.bq, label %bb.bo, !prof !6

bb.bo:                                            ; preds = %.loopexit.split-lp
  invoke void @_RNvMs1_NtCsaWIbZW7RmAr_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %5, i1 noundef zeroext false)
          to label %bb.bq unwind label %bb.bp

bb.bp:                                            ; preds = %bb.br, %bb.bo
  %i.it = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs8E1BR24LTvI_8lock_api5mutex10MutexGuardNtNtCsaWIbZW7RmAr_11parking_lot9raw_mutex8RawMutexNtNtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graph15DependencyGraphEEB2f_.exit135: ; preds = %bb.bq, %bb.br
  resume { ptr, i32 } %.pn.ph

bb.bq:                                            ; preds = %bb.al, %bb.bo, %.loopexit.split-lp
  %.pn.ph = phi { ptr, i32 } [ %i.ex, %bb.al ], [ %lpad.phi, %bb.bo ], [ %lpad.phi, %.loopexit.split-lp ]
  %i.iu = cmpxchg ptr %0, i8 1, i8 0 release monotonic, align 1
  %i.iv = extractvalue { i8, i1 } %i.iu, 1
  br i1 %i.iv, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs8E1BR24LTvI_8lock_api5mutex10MutexGuardNtNtCsaWIbZW7RmAr_11parking_lot9raw_mutex8RawMutexNtNtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graph15DependencyGraphEEB2f_.exit135, label %bb.br, !prof !6

bb.br:                                            ; preds = %bb.bq
  invoke void @_RNvMs1_NtCsaWIbZW7RmAr_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %0, i1 noundef zeroext false)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs8E1BR24LTvI_8lock_api5mutex10MutexGuardNtNtCsaWIbZW7RmAr_11parking_lot9raw_mutex8RawMutexNtNtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graph15DependencyGraphEEB2f_.exit135 unwind label %bb.bp
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graphNtB2_15DependencyGraph18undo_transfer_lock(ptr noalias nofree noundef align 8 dereferenceable(160) %0, ptr noalias nofree noundef readonly align 4 captures(address) dead_on_return dereferenceable(12) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 4 uses
  %i.b = alloca [12 x i8], align 4                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexTNtNtNtCscAsMj0W7j8b_3std6thread2id8ThreadIdBO_ENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE6removeBO_EBS_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %1)
  %i.e = load i64, ptr %i.c, align 8, !noundef !5
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.b, ptr noundef nonnull align 8 dereferenceable(12) %i.f, i64 12, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.h = call noundef align 8 ptr @_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexINtNtNtBS_7runtime16dependency_graph8SmallSetBO_Kj4_ENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE7get_mutBO_EBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.g, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.b) ; 5 uses
  %.not2 = icmp eq ptr %i.h, null
  br i1 %.not2, label %bb.f, label %bb.c, !prof !4

bb.c:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !217)
  call void @llvm.experimental.noalias.scope.decl(metadata !218)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !219, !noalias !220, !noundef !5 ; 2 uses
  %i.k = icmp ugt i64 %i.j, 4                     ; 2 uses
  %i.l = load ptr, ptr %i.h, align 8, !alias.scope !219, !noalias !220, !nonnull !5
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !219, !noalias !220
  %.sink11.i.i = select i1 %i.k, ptr %i.l, ptr %i.h ; 4 uses
  %.sink10.i.i = select i1 %i.k, i64 %i.n, i64 %i.j ; 4 uses
  %.idx.i = mul nuw nsw i64 %.sink10.i.i, 12
  %i.o = getelementptr inbounds nuw i8, ptr %.sink11.i.i, i64 %.idx.i
  %i.p = icmp eq i64 %.sink10.i.i, 0
  br i1 %i.p, label %_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graphINtB5_8SmallSetNtNtB9_3key16DatabaseKeyIndexKj4_E6removeB9_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.r = load i32, ptr %i.q, align 4, !alias.scope !221, !noalias !222, !noundef !5
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load i32, ptr %1, align 4, !range !9, !alias.scope !218, !noalias !217
  %i.u = load i32, ptr %i.s, align 4, !alias.scope !218, !noalias !217
  br label %bb.d

bb.d:                                             ; preds = %_RNCNvMs0_NtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.thread.i.i, %.lr.ph.i.i
  %.sroa.02.08.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.af, %_RNCNvMs0_NtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.thread.i.i ] ; 3 uses
  %i.v = phi ptr [ %.sink11.i.i, %.lr.ph.i.i ], [ %i.w, %_RNCNvMs0_NtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.thread.i.i ] ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 12 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !223)
  call void @llvm.experimental.noalias.scope.decl(metadata !224)
  call void @llvm.experimental.noalias.scope.decl(metadata !225)
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.y = load i32, ptr %i.x, align 4, !alias.scope !226, !noalias !227, !noundef !5
  %i.z = icmp eq i32 %i.y, %i.r
  br i1 %i.z, label %bb.e, label %_RNCNvMs0_NtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.thread.i.i

bb.e:                                             ; preds = %bb.d
  %i.aa = load i32, ptr %i.v, align 4, !range !9, !alias.scope !226, !noalias !227, !noundef !5
  %i.ab = icmp eq i32 %i.aa, %i.t
  br i1 %i.ab, label %_RNCNvMs0_NtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.i.i, label %_RNCNvMs0_NtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.thread.i.i

_RNCNvMs0_NtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.i.i: ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ad = load i32, ptr %i.ac, align 4, !alias.scope !226, !noalias !227, !noundef !5
  %i.ae = icmp eq i32 %i.ad, %i.u
  br i1 %i.ae, label %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexj4_E11swap_removeBM_.exit.i, label %_RNCNvMs0_NtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.thread.i.i

_RNCNvMs0_NtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.thread.i.i: ; preds = %_RNCNvMs0_NtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.i.i, %bb.e, %bb.d
  %i.af = add nuw nsw i64 %.sroa.02.08.i.i, 1
  %i.ag = icmp eq ptr %i.w, %i.o
  br i1 %i.ag, label %_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graphINtB5_8SmallSetNtNtB9_3key16DatabaseKeyIndexKj4_E6removeB9_.exit, label %bb.d

_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexj4_E11swap_removeBM_.exit.i: ; preds = %_RNCNvMs0_NtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.i.i
  %i.ah = icmp ult i64 %.sroa.02.08.i.i, %.sink10.i.i
  call void @llvm.assume(i1 %i.ah)
  %i.ai = getelementptr [12 x i8], ptr %.sink11.i.i, i64 %.sink10.i.i
  %i.aj = getelementptr i8, ptr %i.ai, i64 -12    ; 2 uses
  %i.ak = getelementptr inbounds nuw [12 x i8], ptr %.sink11.i.i, i64 %.sroa.02.08.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %i.aj, i64 12, i1 false), !noalias !228
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.aj, ptr noundef nonnull align 4 dereferenceable(12) %i.ak, i64 12, i1 false), !noalias !228
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ak, ptr noundef nonnull align 4 dereferenceable(12) %i.a, i64 12, i1 false), !noalias !228
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.al = load i64, ptr %i.i, align 8, !alias.scope !229, !noalias !230, !noundef !5
  %i.am = icmp ugt i64 %i.al, 4
  %.sink9.i12.i.i = select i1 %i.am, ptr %i.m, ptr %i.i ; 2 uses
  %i.an = load i64, ptr %.sink9.i12.i.i, align 8, !alias.scope !231, !noalias !228, !noundef !5 ; 2 uses
  %2 = icmp ne i64 %i.an, 0
  call void @llvm.assume(i1 %2)
  %i.ao = add i64 %i.an, -1
  store i64 %i.ao, ptr %.sink9.i12.i.i, align 8, !alias.scope !231, !noalias !228
  br label %_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graphINtB5_8SmallSetNtNtB9_3key16DatabaseKeyIndexKj4_E6removeB9_.exit

_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graphINtB5_8SmallSetNtNtB9_3key16DatabaseKeyIndexKj4_E6removeB9_.exit: ; preds = %_RNCNvMs0_NtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.thread.i.i, %bb.c, %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexj4_E11swap_removeBM_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  call void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #23
  unreachable

bb.g:                                             ; preds = %bb.a, %_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graphINtB5_8SmallSetNtNtB9_3key16DatabaseKeyIndexKj4_E6removeB9_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graphNtB2_15DependencyGraph27unblock_runtimes_blocked_on(ptr noalias nofree noundef align 8 dereferenceable(160) %0, ptr noalias nofree noundef readonly align 4 captures(address) dead_on_return dereferenceable(12) %1, i8 noundef range(i8 0, 3) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 12 uses
  %i.c = alloca [48 x i8], align 8                ; 5 uses
  %i.d = alloca [40 x i8], align 8                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexINtCsjpcu9PwIgok_8smallvec8SmallVecANtNtNtCscAsMj0W7j8b_3std6thread2id8ThreadIdj4_ENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE6removeBO_EBS_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %1)
  %i.f = load i64, ptr %i.c, align 8, !range !11, !noundef !5
  %i.g = trunc nuw i64 %i.f to i1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %i.h, i64 40, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 0, ptr %i.i, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXsM_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtNtCscAsMj0W7j8b_3std6thread2id8ThreadIdj4_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12IntoIterator9into_iterCsd9Lm8bEdjjY_5salsa(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.d)
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.l = load i64, ptr %i.j, align 8, !noundef !5 ; 2 uses
  %i.m = load i64, ptr %i.k, align 8, !noundef !5
  %i.n = icmp eq i64 %i.l, %i.m
  br i1 %i.n, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.h

._crit_edge:                                      ; preds = %_RNvMNtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graphNtB2_15DependencyGraph15unblock_runtime.exit, %bb.d
  invoke void @_RNvXsG_Csjpcu9PwIgok_8smallvecINtB5_8IntoIterANtNtNtCscAsMj0W7j8b_3std6thread2id8ThreadIdj4_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsd9Lm8bEdjjY_5salsa(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.b)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8IntoIterANtNtNtCscAsMj0W7j8b_3std6thread2id8ThreadIdj4_EECsd9Lm8bEdjjY_5salsa.exit unwind label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtNtCscAsMj0W7j8b_3std6thread2id8ThreadIdj4_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsd9Lm8bEdjjY_5salsa(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.b)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24
  unreachable

common.resume:                                    ; preds = %bb.g, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.q, %bb.e ], [ %lpad.phi, %bb.g ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8IntoIterANtNtNtCscAsMj0W7j8b_3std6thread2id8ThreadIdj4_EECsd9Lm8bEdjjY_5salsa.exit: ; preds = %._crit_edge
  call void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtNtCscAsMj0W7j8b_3std6thread2id8ThreadIdj4_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsd9Lm8bEdjjY_5salsa(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

.loopexit:                                        ; preds = %bb.h, %bb.i, %.noexc2
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

.loopexit.split-lp:                               ; preds = %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8IntoIterANtNtNtCscAsMj0W7j8b_3std6thread2id8ThreadIdj4_EECsd9Lm8bEdjjY_5salsa(ptr noalias nofree noundef align 8 dereferenceable(56) %i.b) #25
          to label %common.resume unwind label %bb.k

bb.h:                                             ; preds = %.lr.ph, %_RNvMNtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graphNtB2_15DependencyGraph15unblock_runtime.exit
  %i.s = phi i64 [ %i.l, %.lr.ph ], [ %i.ad, %_RNvMNtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graphNtB2_15DependencyGraph15unblock_runtime.exit ] ; 2 uses
  %i.t = add i64 %i.s, 1
  store i64 %i.t, ptr %i.j, align 8
  %i.u = load i64, ptr %i.o, align 8, !alias.scope !237, !noalias !238, !noundef !5
  %i.v = icmp ugt i64 %i.u, 4
  %i.w = load ptr, ptr %i.b, align 8, !alias.scope !237, !noalias !238, !nonnull !5
  %.sink11.i = select i1 %i.v, ptr %i.w, ptr %i.b
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i, i64 %i.s
  %i.y = load i64, ptr %i.x, align 8, !range !10, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.y, ptr %i.a, align 8, !noalias !239
  %i.z = invoke { i64, ptr } @_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtNtCscAsMj0W7j8b_3std6thread2id8ThreadIdNtNtNtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graph4edge4EdgeNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE6removeBO_EB1D_(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %.noexc unwind label %.loopexit ; 2 uses

.noexc:                                           ; preds = %bb.h
  %i.aa = extractvalue { i64, ptr } %i.z, 0
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %bb.j, label %bb.i, !prof !4

bb.i:                                             ; preds = %.noexc
  %i.ab = invoke noundef i8 @_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapNtNtNtCscAsMj0W7j8b_3std6thread2id8ThreadIdNtNtCsd9Lm8bEdjjY_5salsa7runtime10WaitResultNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE6insertB1y_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.p, i64 noundef range(i64 1, 0) %i.y, i8 noundef range(i8 0, 3) %2)
          to label %.noexc2 unwind label %.loopexit ; 0 uses

.noexc2:                                          ; preds = %bb.i
  %i.ac = extractvalue { i64, ptr } %i.z, 1
  invoke void @_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa4sync4shimNtB5_7Condvar10notify_one(ptr noundef nonnull align 8 %i.ac)
          to label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graphNtB2_15DependencyGraph15unblock_runtime.exit unwind label %.loopexit

bb.j:                                             ; preds = %.noexc
  invoke void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #23
          to label %.noexc4 unwind label %.loopexit.split-lp

.noexc4:                                          ; preds = %bb.j
  unreachable

_RNvMNtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graphNtB2_15DependencyGraph15unblock_runtime.exit: ; preds = %.noexc2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ad = load i64, ptr %i.j, align 8, !noundef !5 ; 2 uses
  %i.ae = load i64, ptr %i.k, align 8, !noundef !5
  %i.af = icmp eq i64 %i.ad, %i.ae
  br i1 %i.af, label %._crit_edge, label %bb.h

bb.k:                                             ; preds = %bb.g
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvMNtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graphNtB2_15DependencyGraph30thread_id_of_transferred_query(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(160) %0, ptr noalias nofree noundef readonly align 4 captures(address) dead_on_return dereferenceable(12) %1, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !279)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !280)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !279, !noalias !280, !noundef !5
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexTNtNtNtCscAsMj0W7j8b_3std6thread2id8ThreadIdBO_ENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EBS_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.g = tail call noundef i64 @_RINvYNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherNtNtCshzWfHUSfYae_4core4hash11BuildHasher8hash_oneRNtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexEB1D_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %1) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !281)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !282)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !283)
  %i.h = lshr i64 %i.g, 57
  %i.i = trunc nuw nsw i64 %i.h to i8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !284, !noalias !285, !noundef !5 ; 4 uses
  %i.l = load ptr, ptr %i.e, align 8, !alias.scope !284, !noalias !285, !nonnull !5, !noundef !5 ; 4 uses
  %i.m = insertelement <16 x i8> poison, i8 %i.i, i64 0
  %i.n = shufflevector <16 x i8> %i.m, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.p = load i32, ptr %i.o, align 4, !alias.scope !286, !noalias !287
  %i.q = load i32, ptr %1, align 4, !range !9, !alias.scope !286, !noalias !287
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load i32, ptr %i.r, align 4, !alias.scope !286, !noalias !287
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.b ], [ %i.aq, %bb.e ]
  %.pn.i.i = phi i64 [ %i.g, %bb.b ], [ %i.ar, %bb.e ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i, %i.k      ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i25.i.i = load <16 x i8>, ptr %i.t, align 1, !noalias !288 ; 2 uses
  %i.u = icmp eq <16 x i8> %.sroa.0.0.copyload.i25.i.i, %i.n
  %i.v = bitcast <16 x i1> %i.u to i16            ; 2 uses
  %.not.i.not31.i.i = icmp eq i16 %i.v, 0
  br i1 %.not.i.not31.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexTNtNtNtCscAsMj0W7j8b_3std6thread2id8ThreadIdBS_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.thread.i.i
  %.sroa.06.0.i32.i.i = phi i16 [ %i.ap, %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexTNtNtNtCscAsMj0W7j8b_3std6thread2id8ThreadIdBS_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.thread.i.i ], [ %i.v, %bb.c ] ; 3 uses
  %i.w = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i32.i.i, i1 true)
  %i.x = zext nneg i16 %i.w to i64
  %i.y = add i64 %.sroa.01.0.i.i.i, %i.x
  %i.z = and i64 %i.y, %i.k
  %i.aa = sub nsw i64 0, %i.z
  %i.ab = getelementptr inbounds [40 x i8], ptr %i.l, i64 %i.aa ; 5 uses
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -36
  %i.ad = load i32, ptr %i.ac, align 4, !alias.scope !289, !noalias !290, !noundef !5
end_hunk_1
begin_hunk_2_@_RNvMNtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graphNtB2_15DependencyGraph30thread_id_of_transferred_query:bb.a
  %.promoted52 = load i32, ptr %i.aw, align 4
  br label %.outer

.outer.loopexit:                                  ; preds = %bb.j, %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexTNtNtNtCscAsMj0W7j8b_3std6thread2id8ThreadIdBO_ENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EBS_.exit35
  %.promoted4751.ph = phi i32 [ %.sroa.6.0.copyload, %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexTNtNtNtCscAsMj0W7j8b_3std6thread2id8ThreadIdBO_ENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EBS_.exit35 ], [ %i.az, %bb.j ]
  br label %.outer

.outer:                                           ; preds = %.outer.loopexit, %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexTNtNtNtCscAsMj0W7j8b_3std6thread2id8ThreadIdBO_ENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EBS_.exit
  %.promoted4853 = phi i32 [ %.promoted52, %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexTNtNtNtCscAsMj0W7j8b_3std6thread2id8ThreadIdBO_ENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EBS_.exit ], [ %.sroa.7.0.copyload, %.outer.loopexit ]
  %.promoted4751 = phi i32 [ %.promoted, %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexTNtNtNtCscAsMj0W7j8b_3std6thread2id8ThreadIdBO_ENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EBS_.exit ], [ %.promoted4751.ph, %.outer.loopexit ]
  %.promoted50 = phi i32 [ %.promoted49, %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexTNtNtNtCscAsMj0W7j8b_3std6thread2id8ThreadIdBO_ENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EBS_.exit ], [ %.sroa.07.0.copyload, %.outer.loopexit ]
  %.sroa.01.0.ph = phi i64 [ %i.at, %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexTNtNtNtCscAsMj0W7j8b_3std6thread2id8ThreadIdBO_ENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EBS_.exit ], [ %i.ck, %.outer.loopexit ]
  br label %bb.f

_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexTNtNtNtCscAsMj0W7j8b_3std6thread2id8ThreadIdBO_ENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EBS_.exit.thread: ; preds = %._crit_edge.i.i, %bb.a, %select.unfold38
  %.sroa.0.0 = phi i64 [ %.sroa.01.0.ph, %select.unfold38 ], [ 0, %bb.a ], [ 0, %._crit_edge.i.i ]
  ret i64 %.sroa.0.0

bb.f:                                             ; preds = %.outer, %bb.j
  %i.bc = phi i32 [ %.promoted4853, %.outer ], [ %i.bb, %bb.j ]
  %i.bd = phi i32 [ %.promoted4751, %.outer ], [ %i.az, %bb.j ]
  %i.be = phi i32 [ %.promoted50, %.outer ], [ %i.ax, %bb.j ]
  %i.bf = call noundef i64 @_RINvYNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherNtNtCshzWfHUSfYae_4core4hash11BuildHasher8hash_oneRNtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexEB1D_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.a) ; 2 uses
  %i.bg = lshr i64 %i.bf, 57
  %i.bh = trunc nuw nsw i64 %i.bg to i8
  %i.bi = insertelement <16 x i8> poison, i8 %i.bh, i64 0
  %i.bj = shufflevector <16 x i8> %i.bi, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %bb.f
  %.sroa.9.0.i.i.i20 = phi i64 [ 0, %bb.f ], [ %i.ch, %bb.i ]
  %.pn.i.i21 = phi i64 [ %i.bf, %bb.f ], [ %i.ci, %bb.i ]
  %.sroa.01.0.i.i.i22 = and i64 %.pn.i.i21, %i.k  ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sroa.01.0.i.i.i22
  %.sroa.0.0.copyload.i25.i.i23 = load <16 x i8>, ptr %i.bk, align 1, !noalias !291 ; 2 uses
  %i.bl = icmp eq <16 x i8> %.sroa.0.0.copyload.i25.i.i23, %i.bj
  %i.bm = bitcast <16 x i1> %i.bl to i16          ; 2 uses
  %.not.i.not31.i.i24 = icmp eq i16 %i.bm, 0
  br i1 %.not.i.not31.i.i24, label %._crit_edge.i.i29, label %.lr.ph.i.i25

.lr.ph.i.i25:                                     ; preds = %bb.g, %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexTNtNtNtCscAsMj0W7j8b_3std6thread2id8ThreadIdBS_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.thread.i.i27
  %.sroa.06.0.i32.i.i26 = phi i16 [ %i.cg, %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexTNtNtNtCscAsMj0W7j8b_3std6thread2id8ThreadIdBS_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.thread.i.i27 ], [ %i.bm, %bb.g ] ; 3 uses
  %i.bn = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i32.i.i26, i1 true)
  %i.bo = zext nneg i16 %i.bn to i64
  %i.bp = add i64 %.sroa.01.0.i.i.i22, %i.bo
  %i.bq = and i64 %i.bp, %i.k
  %i.br = sub nsw i64 0, %i.bq
  %i.bs = getelementptr inbounds [40 x i8], ptr %i.l, i64 %i.br ; 7 uses
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 -36
  %i.bu = load i32, ptr %i.bt, align 4, !alias.scope !292, !noalias !293, !noundef !5
  %i.bv = icmp eq i32 %i.bd, %i.bu
  br i1 %i.bv, label %bb.h, label %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexTNtNtNtCscAsMj0W7j8b_3std6thread2id8ThreadIdBS_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.thread.i.i27, !prof !12

bb.h:                                             ; preds = %.lr.ph.i.i25
  %i.bw = getelementptr inbounds i8, ptr %i.bs, i64 -40
  %i.bx = load i32, ptr %i.bw, align 4, !range !9, !alias.scope !292, !noalias !293, !noundef !5
  %i.by = icmp eq i32 %i.be, %i.bx
  br i1 %i.by, label %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexTNtNtNtCscAsMj0W7j8b_3std6thread2id8ThreadIdBS_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.i.i34, label %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexTNtNtNtCscAsMj0W7j8b_3std6thread2id8ThreadIdBS_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.thread.i.i27, !prof !12

_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexTNtNtNtCscAsMj0W7j8b_3std6thread2id8ThreadIdBS_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.i.i34: ; preds = %bb.h
  %i.bz = getelementptr inbounds i8, ptr %i.bs, i64 -32
  %i.ca = load i32, ptr %i.bz, align 4, !alias.scope !292, !noalias !293, !noundef !5
  %i.cb = icmp eq i32 %i.bc, %i.ca
  br i1 %i.cb, label %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexTNtNtNtCscAsMj0W7j8b_3std6thread2id8ThreadIdBO_ENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EBS_.exit35, label %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexTNtNtNtCscAsMj0W7j8b_3std6thread2id8ThreadIdBS_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.thread.i.i27, !prof !13

._crit_edge.i.i29:                                ; preds = %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexTNtNtNtCscAsMj0W7j8b_3std6thread2id8ThreadIdBS_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.thread.i.i27, %bb.g
  %i.cc = icmp eq <16 x i8> %.sroa.0.0.copyload.i25.i.i23, splat (i8 -1)
  %i.cd = bitcast <16 x i1> %i.cc to i16
  %i.ce = icmp eq i16 %i.cd, 0
  br i1 %i.ce, label %bb.i, label %select.unfold38, !prof !4

_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexTNtNtNtCscAsMj0W7j8b_3std6thread2id8ThreadIdBS_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.thread.i.i27: ; preds = %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexTNtNtNtCscAsMj0W7j8b_3std6thread2id8ThreadIdBS_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.i.i34, %bb.h, %.lr.ph.i.i25
  %i.cf = add i16 %.sroa.06.0.i32.i.i26, -1
  %i.cg = and i16 %i.cf, %.sroa.06.0.i32.i.i26    ; 2 uses
  %.not.i.not.i.i28 = icmp eq i16 %i.cg, 0
  br i1 %.not.i.not.i.i28, label %._crit_edge.i.i29, label %.lr.ph.i.i25

bb.i:                                             ; preds = %._crit_edge.i.i29
  %i.ch = add i64 %.sroa.9.0.i.i.i20, 16          ; 2 uses
  %i.ci = add i64 %.sroa.01.0.i.i.i22, %i.ch
  br label %bb.g

_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexTNtNtNtCscAsMj0W7j8b_3std6thread2id8ThreadIdBO_ENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EBS_.exit35: ; preds = %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexTNtNtNtCscAsMj0W7j8b_3std6thread2id8ThreadIdBS_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.i.i34
  %i.cj = getelementptr inbounds i8, ptr %i.bs, i64 -24
  %i.ck = load i64, ptr %i.cj, align 8, !range !10, !noundef !5
  %i.cl = getelementptr inbounds i8, ptr %i.bs, i64 -16
  %.sroa.07.0.copyload = load i32, ptr %i.cl, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %i.bs, i64 -12
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 4 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %i.bs, i64 -8
  %.sroa.7.0.copyload = load i32, ptr %.sroa.7.0..sroa_idx, align 8 ; 3 uses
  store i32 %.sroa.07.0.copyload, ptr %i.a, align 4
  store i32 %.sroa.6.0.copyload, ptr %i.av, align 4
  store i32 %.sroa.7.0.copyload, ptr %i.aw, align 4
  %i.cm = icmp eq i32 %.sroa.6.0.copyload, %i.az
  %or.cond = select i1 %.not14, i1 %i.cm, i1 false
  br i1 %or.cond, label %bb.j, label %.outer.loopexit

select.unfold38:                                  ; preds = %._crit_edge.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexTNtNtNtCscAsMj0W7j8b_3std6thread2id8ThreadIdBO_ENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EBS_.exit.thread

bb.j:                                             ; preds = %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexTNtNtNtCscAsMj0W7j8b_3std6thread2id8ThreadIdBO_ENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EBS_.exit35
  %i.cn = icmp ne i32 %.sroa.07.0.copyload, 0
  call void @llvm.assume(i1 %i.cn)
  %i.co = icmp eq i32 %.sroa.07.0.copyload, %i.ax
  %i.cp = icmp eq i32 %.sroa.7.0.copyload, %i.bb
  %or.cond19 = select i1 %i.co, i1 %i.cp, i1 false
  br i1 %or.cond19, label %bb.f, label %.outer.loopexit
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graphNtB2_15DependencyGraph56unblock_runtimes_blocked_on_transferred_queries_owned_by(ptr noalias nofree noundef align 8 dereferenceable(160) %0, ptr noalias nofree noundef readonly align 4 captures(address) dead_on_return dereferenceable(12) %1, i8 noundef range(i8 0, 3) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 4 uses
  %i.b = alloca [12 x i8], align 4                ; 4 uses
  %i.c = alloca [12 x i8], align 4                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexTNtNtNtCscAsMj0W7j8b_3std6thread2id8ThreadIdBO_ENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE6removeBO_EBS_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %1)
  %i.f = load i64, ptr %i.d, align 8, !noundef !5
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, ptr noundef nonnull align 8 dereferenceable(12) %i.g, i64 12, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.i = call noundef align 8 ptr @_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexINtNtNtBS_7runtime16dependency_graph8SmallSetBO_Kj4_ENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE7get_mutBO_EBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.h, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.c) ; 5 uses
  %.not2 = icmp eq ptr %i.i, null
  br i1 %.not2, label %bb.f, label %bb.c, !prof !4

bb.c:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !314)
  call void @llvm.experimental.noalias.scope.decl(metadata !315)
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !316, !noalias !317, !noundef !5 ; 2 uses
  %i.l = icmp ugt i64 %i.k, 4                     ; 2 uses
  %i.m = load ptr, ptr %i.i, align 8, !alias.scope !316, !noalias !317, !nonnull !5
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !316, !noalias !317
  %.sink11.i.i = select i1 %i.l, ptr %i.m, ptr %i.i ; 4 uses
  %.sink10.i.i = select i1 %i.l, i64 %i.o, i64 %i.k ; 4 uses
  %.idx.i = mul nuw nsw i64 %.sink10.i.i, 12
  %i.p = getelementptr inbounds nuw i8, ptr %.sink11.i.i, i64 %.idx.i
  %i.q = icmp eq i64 %.sink10.i.i, 0
  br i1 %i.q, label %_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graphINtB5_8SmallSetNtNtB9_3key16DatabaseKeyIndexKj4_E6removeB9_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.s = load i32, ptr %i.r, align 4, !alias.scope !318, !noalias !319, !noundef !5
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i32, ptr %1, align 4, !range !9, !alias.scope !315, !noalias !314
  %i.v = load i32, ptr %i.t, align 4, !alias.scope !315, !noalias !314
  br label %bb.d

bb.d:                                             ; preds = %_RNCNvMs0_NtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.thread.i.i, %.lr.ph.i.i
  %.sroa.02.08.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ag, %_RNCNvMs0_NtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.thread.i.i ] ; 3 uses
  %i.w = phi ptr [ %.sink11.i.i, %.lr.ph.i.i ], [ %i.x, %_RNCNvMs0_NtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.thread.i.i ] ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 12 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !320)
  call void @llvm.experimental.noalias.scope.decl(metadata !321)
  call void @llvm.experimental.noalias.scope.decl(metadata !322)
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.z = load i32, ptr %i.y, align 4, !alias.scope !323, !noalias !324, !noundef !5
  %i.aa = icmp eq i32 %i.z, %i.s
  br i1 %i.aa, label %bb.e, label %_RNCNvMs0_NtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.thread.i.i

bb.e:                                             ; preds = %bb.d
  %i.ab = load i32, ptr %i.w, align 4, !range !9, !alias.scope !323, !noalias !324, !noundef !5
  %i.ac = icmp eq i32 %i.ab, %i.u
  br i1 %i.ac, label %_RNCNvMs0_NtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.i.i, label %_RNCNvMs0_NtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.thread.i.i

_RNCNvMs0_NtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.i.i: ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ae = load i32, ptr %i.ad, align 4, !alias.scope !323, !noalias !324, !noundef !5
  %i.af = icmp eq i32 %i.ae, %i.v
  br i1 %i.af, label %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexj4_E11swap_removeBM_.exit.i, label %_RNCNvMs0_NtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.thread.i.i

_RNCNvMs0_NtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.thread.i.i: ; preds = %_RNCNvMs0_NtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.i.i, %bb.e, %bb.d
  %i.ag = add nuw nsw i64 %.sroa.02.08.i.i, 1
  %i.ah = icmp eq ptr %i.x, %i.p
  br i1 %i.ah, label %_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graphINtB5_8SmallSetNtNtB9_3key16DatabaseKeyIndexKj4_E6removeB9_.exit, label %bb.d

_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexj4_E11swap_removeBM_.exit.i: ; preds = %_RNCNvMs0_NtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.i.i
  %i.ai = icmp ult i64 %.sroa.02.08.i.i, %.sink10.i.i
  call void @llvm.assume(i1 %i.ai)
  %i.aj = getelementptr [12 x i8], ptr %.sink11.i.i, i64 %.sink10.i.i
  %i.ak = getelementptr i8, ptr %i.aj, i64 -12    ; 2 uses
  %i.al = getelementptr inbounds nuw [12 x i8], ptr %.sink11.i.i, i64 %.sroa.02.08.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %i.ak, i64 12, i1 false), !noalias !325
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ak, ptr noundef nonnull align 4 dereferenceable(12) %i.al, i64 12, i1 false), !noalias !325
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.al, ptr noundef nonnull align 4 dereferenceable(12) %i.a, i64 12, i1 false), !noalias !325
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.am = load i64, ptr %i.j, align 8, !alias.scope !326, !noalias !327, !noundef !5
  %i.an = icmp ugt i64 %i.am, 4
  %.sink9.i12.i.i = select i1 %i.an, ptr %i.n, ptr %i.j ; 2 uses
  %i.ao = load i64, ptr %.sink9.i12.i.i, align 8, !alias.scope !328, !noalias !325, !noundef !5 ; 2 uses
  %3 = icmp ne i64 %i.ao, 0
  call void @llvm.assume(i1 %3)
  %i.ap = add i64 %i.ao, -1
  store i64 %i.ap, ptr %.sink9.i12.i.i, align 8, !alias.scope !328, !noalias !325
  br label %_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graphINtB5_8SmallSetNtNtB9_3key16DatabaseKeyIndexKj4_E6removeB9_.exit

_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graphINtB5_8SmallSetNtNtB9_3key16DatabaseKeyIndexKj4_E6removeB9_.exit: ; preds = %_RNCNvMs0_NtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.thread.i.i, %bb.c, %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexj4_E11swap_removeBM_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  call void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #23
  unreachable

bb.g:                                             ; preds = %bb.a, %_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graphINtB5_8SmallSetNtNtB9_3key16DatabaseKeyIndexKj4_E6removeB9_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.b, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false)
  call fastcc void @_RNvNvMNtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graphNtB4_15DependencyGraph56unblock_runtimes_blocked_on_transferred_queries_owned_by17unblock_recursive(ptr noalias nofree noundef align 8 dereferenceable(160) %0, ptr noalias nofree noundef readonly align 4 captures(address) dereferenceable(12) %i.b, i8 noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCsd9Lm8bEdjjY_5salsa13database_implNtB4_12DatabaseImpl3new(ptr dead_on_unwind noalias nofree noundef writable sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs4_NtCsd9Lm8bEdjjY_5salsa7storageINtB5_7StorageNtNtB7_13database_impl12DatabaseImplE3newB7_(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noundef null, ptr undef)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNvMNtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graphNtB4_15DependencyGraph23unblock_transfer_target19find_blocked_thread(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(160) %1, ptr noalias nofree noundef readonly align 4 captures(address) dead_on_return dereferenceable(12) %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 7 uses
  %.sroa.8 = alloca [20 x i8], align 4            ; 3 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [48 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 8 uses
  %i.i = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %3, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !413)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !414)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !413, !noalias !414, !noundef !5
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexINtCsjpcu9PwIgok_8smallvec8SmallVecANtNtNtCscAsMj0W7j8b_3std6thread2id8ThreadIdj4_ENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EBS_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.o = tail call noundef i64 @_RINvYNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherNtNtCshzWfHUSfYae_4core4hash11BuildHasher8hash_oneRNtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexEB1D_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.n, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %2) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !415)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !416)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !417)
  %i.p = lshr i64 %i.o, 57
  %i.q = trunc nuw nsw i64 %i.p to i8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !418, !noalias !419, !noundef !5 ; 2 uses
  %i.t = load ptr, ptr %i.j, align 8, !alias.scope !418, !noalias !419, !nonnull !5, !noundef !5 ; 2 uses
  %i.u = insertelement <16 x i8> poison, i8 %i.q, i64 0
  %i.v = shufflevector <16 x i8> %i.u, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.x = load i32, ptr %i.w, align 4, !alias.scope !420, !noalias !421
  %i.y = load i32, ptr %2, align 4, !range !9, !alias.scope !420, !noalias !421
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aa = load i32, ptr %i.z, align 4, !alias.scope !420, !noalias !421
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.b ], [ %i.ay, %bb.e ]
  %.pn.i.i = phi i64 [ %i.o, %bb.b ], [ %i.az, %bb.e ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i, %i.s      ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i25.i.i = load <16 x i8>, ptr %i.ab, align 1, !noalias !422 ; 2 uses
  %i.ac = icmp eq <16 x i8> %.sroa.0.0.copyload.i25.i.i, %i.v
  %i.ad = bitcast <16 x i1> %i.ac to i16          ; 2 uses
  %.not.i.not31.i.i = icmp eq i16 %i.ad, 0
  br i1 %.not.i.not31.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexINtCsjpcu9PwIgok_8smallvec8SmallVecANtNtNtCscAsMj0W7j8b_3std6thread2id8ThreadIdj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.thread.i.i
  %.sroa.06.0.i32.i.i = phi i16 [ %i.ax, %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexINtCsjpcu9PwIgok_8smallvec8SmallVecANtNtNtCscAsMj0W7j8b_3std6thread2id8ThreadIdj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.thread.i.i ], [ %i.ad, %bb.c ] ; 3 uses
  %i.ae = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i32.i.i, i1 true)
  %i.af = zext nneg i16 %i.ae to i64
  %i.ag = add i64 %.sroa.01.0.i.i.i, %i.af
  %i.ah = and i64 %i.ag, %i.s
  %i.ai = sub nsw i64 0, %i.ah
  %i.aj = getelementptr inbounds [56 x i8], ptr %i.t, i64 %i.ai ; 6 uses
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -52
  %i.al = load i32, ptr %i.ak, align 4, !alias.scope !423, !noalias !424, !noundef !5
  %i.am = icmp eq i32 %i.x, %i.al
  br i1 %i.am, label %bb.d, label %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexINtCsjpcu9PwIgok_8smallvec8SmallVecANtNtNtCscAsMj0W7j8b_3std6thread2id8ThreadIdj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.thread.i.i, !prof !12

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.an = getelementptr inbounds i8, ptr %i.aj, i64 -56
  %i.ao = load i32, ptr %i.an, align 4, !range !9, !alias.scope !423, !noalias !424, !noundef !5
  %i.ap = icmp eq i32 %i.y, %i.ao
  br i1 %i.ap, label %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexINtCsjpcu9PwIgok_8smallvec8SmallVecANtNtNtCscAsMj0W7j8b_3std6thread2id8ThreadIdj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.i.i, label %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexINtCsjpcu9PwIgok_8smallvec8SmallVecANtNtNtCscAsMj0W7j8b_3std6thread2id8ThreadIdj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.thread.i.i, !prof !12

_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexINtCsjpcu9PwIgok_8smallvec8SmallVecANtNtNtCscAsMj0W7j8b_3std6thread2id8ThreadIdj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.i.i: ; preds = %bb.d
  %i.aq = getelementptr inbounds i8, ptr %i.aj, i64 -48
  %i.ar = load i32, ptr %i.aq, align 4, !alias.scope !423, !noalias !424, !noundef !5
  %i.as = icmp eq i32 %i.aa, %i.ar
  br i1 %i.as, label %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexINtCsjpcu9PwIgok_8smallvec8SmallVecANtNtNtCscAsMj0W7j8b_3std6thread2id8ThreadIdj4_ENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EBS_.exit, label %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexINtCsjpcu9PwIgok_8smallvec8SmallVecANtNtNtCscAsMj0W7j8b_3std6thread2id8ThreadIdj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.thread.i.i, !prof !13

._crit_edge.i.i:                                  ; preds = %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexINtCsjpcu9PwIgok_8smallvec8SmallVecANtNtNtCscAsMj0W7j8b_3std6thread2id8ThreadIdj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.thread.i.i, %bb.c
  %i.at = icmp eq <16 x i8> %.sroa.0.0.copyload.i25.i.i, splat (i8 -1)
  %i.au = bitcast <16 x i1> %i.at to i16
  %i.av = icmp eq i16 %i.au, 0
  br i1 %i.av, label %bb.e, label %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexINtCsjpcu9PwIgok_8smallvec8SmallVecANtNtNtCscAsMj0W7j8b_3std6thread2id8ThreadIdj4_ENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EBS_.exit.thread, !prof !4

_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexINtCsjpcu9PwIgok_8smallvec8SmallVecANtNtNtCscAsMj0W7j8b_3std6thread2id8ThreadIdj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.thread.i.i: ; preds = %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexINtCsjpcu9PwIgok_8smallvec8SmallVecANtNtNtCscAsMj0W7j8b_3std6thread2id8ThreadIdj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.i.i, %bb.d, %.lr.ph.i.i
  %i.aw = add i16 %.sroa.06.0.i32.i.i, -1
  %i.ax = and i16 %i.aw, %.sroa.06.0.i32.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.ax, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ay = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.az = add i64 %.sroa.01.0.i.i.i, %i.ay
  br label %bb.c

_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexINtCsjpcu9PwIgok_8smallvec8SmallVecANtNtNtCscAsMj0W7j8b_3std6thread2id8ThreadIdj4_ENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EBS_.exit: ; preds = %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexINtCsjpcu9PwIgok_8smallvec8SmallVecANtNtNtCscAsMj0W7j8b_3std6thread2id8ThreadIdj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.i.i
  %i.ba = getelementptr inbounds i8, ptr %i.aj, i64 -40 ; 2 uses
  %i.bb = getelementptr inbounds i8, ptr %i.aj, i64 -8
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !425, !noalias !426, !noundef !5 ; 2 uses
  %i.bd = icmp ugt i64 %i.bc, 4                   ; 2 uses
  %i.be = load ptr, ptr %i.ba, align 8, !alias.scope !425, !noalias !426, !nonnull !5
  %i.bf = getelementptr inbounds i8, ptr %i.aj, i64 -32
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !425, !noalias !426
  %.sink11.i = select i1 %i.bd, ptr %i.be, ptr %i.ba ; 2 uses
  %.sink10.i = select i1 %i.bd, i64 %i.bg, i64 %i.bc
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i, i64 %.sink10.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %.sink11.i, ptr %i.h, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.bh, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 5 uses
  store i64 0, ptr %.sroa.3.0..sroa_idx, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bj = load i64, ptr %i.bi, align 8
  %.fr56 = freeze i64 %i.bj
  %i.bk = icmp eq i64 %.fr56, 0
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bm = load i64, ptr %i.bl, align 8            ; 2 uses
  %i.bn = load ptr, ptr %1, align 8, !nonnull !5  ; 2 uses
  br i1 %i.bk, label %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexINtCsjpcu9PwIgok_8smallvec8SmallVecANtNtNtCscAsMj0W7j8b_3std6thread2id8ThreadIdj4_ENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EBS_.exit.split.us, label %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexINtCsjpcu9PwIgok_8smallvec8SmallVecANtNtNtCscAsMj0W7j8b_3std6thread2id8ThreadIdj4_ENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EBS_.exit.split

_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexINtCsjpcu9PwIgok_8smallvec8SmallVecANtNtNtCscAsMj0W7j8b_3std6thread2id8ThreadIdj4_ENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EBS_.exit.split.us: ; preds = %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexINtCsjpcu9PwIgok_8smallvec8SmallVecANtNtNtCscAsMj0W7j8b_3std6thread2id8ThreadIdj4_ENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EBS_.exit, %bb.f
  %i.bo = call noundef i64 @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtNtCscAsMj0W7j8b_3std6thread2id8ThreadIdEENtNtNtB8_6traits8iterator8Iterator4nextCsd9Lm8bEdjjY_5salsa(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) ; 2 uses
  %.not.i15.us = icmp eq i64 %i.bo, 0
  br i1 %.not.i15.us, label %.split.us, label %bb.f

bb.f:                                             ; preds = %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexINtCsjpcu9PwIgok_8smallvec8SmallVecANtNtNtCscAsMj0W7j8b_3std6thread2id8ThreadIdj4_ENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EBS_.exit.split.us
  %i.bp = load i64, ptr %.sroa.3.0..sroa_idx, align 8, !alias.scope !427, !noundef !5 ; 2 uses
  %i.bq = add i64 %i.bp, 1
  store i64 %i.bq, ptr %.sroa.3.0..sroa_idx, align 8, !alias.scope !427
  %i.br = icmp eq i64 %i.bo, %3
  br i1 %i.br, label %.loopexit, label %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexINtCsjpcu9PwIgok_8smallvec8SmallVecANtNtNtCscAsMj0W7j8b_3std6thread2id8ThreadIdj4_ENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EBS_.exit.split.us

_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexINtCsjpcu9PwIgok_8smallvec8SmallVecANtNtNtCscAsMj0W7j8b_3std6thread2id8ThreadIdj4_ENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EBS_.exit.split: ; preds = %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexINtCsjpcu9PwIgok_8smallvec8SmallVecANtNtNtCscAsMj0W7j8b_3std6thread2id8ThreadIdj4_ENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EBS_.exit, %_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graphNtB4_5Edges10depends_on.exit.loopexit
  %i.bs = call noundef i64 @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtNtCscAsMj0W7j8b_3std6thread2id8ThreadIdEENtNtNtB8_6traits8iterator8Iterator4nextCsd9Lm8bEdjjY_5salsa(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) ; 4 uses
  %.not.i15 = icmp eq i64 %i.bs, 0
  br i1 %.not.i15, label %.split.us, label %bb.g

bb.g:                                             ; preds = %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexINtCsjpcu9PwIgok_8smallvec8SmallVecANtNtNtCscAsMj0W7j8b_3std6thread2id8ThreadIdj4_ENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EBS_.exit.split
  %i.bt = load i64, ptr %.sroa.3.0..sroa_idx, align 8, !alias.scope !427, !noundef !5 ; 4 uses
  %i.bu = add i64 %i.bt, 1
  store i64 %i.bu, ptr %.sroa.3.0..sroa_idx, align 8, !alias.scope !427
  %i.bv = icmp eq i64 %i.bs, %3
  br i1 %i.bv, label %.loopexit, label %.split.i.preheader

.split.us:                                        ; preds = %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexINtCsjpcu9PwIgok_8smallvec8SmallVecANtNtNtCscAsMj0W7j8b_3std6thread2id8ThreadIdj4_ENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EBS_.exit.split, %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexINtCsjpcu9PwIgok_8smallvec8SmallVecANtNtNtCscAsMj0W7j8b_3std6thread2id8ThreadIdj4_ENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EBS_.exit.split.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexINtCsjpcu9PwIgok_8smallvec8SmallVecANtNtNtCscAsMj0W7j8b_3std6thread2id8ThreadIdj4_ENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EBS_.exit.thread

_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexINtCsjpcu9PwIgok_8smallvec8SmallVecANtNtNtCscAsMj0W7j8b_3std6thread2id8ThreadIdj4_ENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EBS_.exit.thread: ; preds = %._crit_edge.i.i, %bb.a, %.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.experimental.noalias.scope.decl(metadata !428)
  call void @llvm.experimental.noalias.scope.decl(metadata !429)
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.bx = load i64, ptr %i.bw, align 8, !alias.scope !428, !noalias !429, !noundef !5
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %bb.l, label %bb.h

bb.h:                                             ; preds = %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexINtCsjpcu9PwIgok_8smallvec8SmallVecANtNtNtCscAsMj0W7j8b_3std6thread2id8ThreadIdj4_ENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EBS_.exit.thread
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.cb = call noundef i64 @_RINvYNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherNtNtCshzWfHUSfYae_4core4hash11BuildHasher8hash_oneRNtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexEB1D_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ca, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %2) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !430)
  call void @llvm.experimental.noalias.scope.decl(metadata !431)
  call void @llvm.experimental.noalias.scope.decl(metadata !432)
  %i.cc = lshr i64 %i.cb, 57
  %i.cd = trunc nuw nsw i64 %i.cc to i8
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.cf = load i64, ptr %i.ce, align 8, !alias.scope !433, !noalias !434, !noundef !5 ; 2 uses
  %i.cg = load ptr, ptr %i.bz, align 8, !alias.scope !433, !noalias !434, !nonnull !5, !noundef !5 ; 2 uses
  %i.ch = insertelement <16 x i8> poison, i8 %i.cd, i64 0
end_hunk_2
