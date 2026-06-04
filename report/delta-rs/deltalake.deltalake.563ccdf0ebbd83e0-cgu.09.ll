inline.NumInlined: 7581
inline.NumDeleted: 2927
begin_hunk_0_@_RNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_0Cs7p2uQeJxui2_9deltalake:bb.a
bb.k:                                             ; preds = %bb.j
  %i.bb = icmp eq i64 %i.au, 0
  br i1 %i.bb, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not5.i.i = icmp ult i64 %i.au, %i.ax
  br i1 %.not5.i.i, label %bb.o, label %bb.n

bb.m:                                             ; preds = %bb.o, %bb.n, %bb.k
  %i.bc = icmp eq i64 %i.av, 0
  br i1 %i.bc, label %bb.s, label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.bd = icmp eq i64 %i.au, %i.ax
  br i1 %i.bd, label %bb.m, label %bb.ag

bb.o:                                             ; preds = %bb.l
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.au
  %i.bf = load i8, ptr %i.be, align 1, !alias.scope !8215, !noalias !8218, !noundef !4
  %i.bg = icmp sgt i8 %i.bf, -65
  br i1 %i.bg, label %bb.m, label %bb.ag

bb.p:                                             ; preds = %bb.m
  %.not6.i.i = icmp ult i64 %i.av, %i.ax
  br i1 %.not6.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bh = icmp eq i64 %i.av, %i.ax
  br i1 %i.bh, label %bb.s, label %bb.ag

bb.r:                                             ; preds = %bb.p
  %i.bi = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.av
  %i.bj = load i8, ptr %i.bi, align 1, !alias.scope !8215, !noalias !8218, !noundef !4
  %i.bk = icmp sgt i8 %i.bj, -65
  br i1 %i.bk, label %bb.s, label %bb.ag

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.m
  %i.bl = sub i64 %i.as, %i.ap                    ; 6 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.au ; 3 uses
  switch i64 %i.bl, label %thread-pre-split.i.i [
    i64 0, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_0s_0Cs7p2uQeJxui2_9deltalake.exit
    i64 1, label %bb.t
  ]

bb.t:                                             ; preds = %bb.s
  %i.bn = load i8, ptr %i.bm, align 1, !alias.scope !8221, !noalias !8224, !noundef !4 ; 2 uses
  switch i8 %i.bn, label %bb.u [
    i8 43, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_0s_0Cs7p2uQeJxui2_9deltalake.exit
    i8 45, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_0s_0Cs7p2uQeJxui2_9deltalake.exit
  ]

thread-pre-split.i.i:                             ; preds = %bb.s
  %.pr.i.i = load i8, ptr %i.bm, align 1, !alias.scope !8221, !noalias !8224
  br label %bb.u

bb.u:                                             ; preds = %thread-pre-split.i.i, %bb.t
  %i.bo = phi i8 [ %.pr.i.i, %thread-pre-split.i.i ], [ %i.bn, %bb.t ]
  switch i8 %i.bo, label %bb.ab [
    i8 43, label %bb.v
    i8 45, label %bb.w
  ]

bb.v:                                             ; preds = %bb.u
  %i.bp = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ap
  %i.bq = add nsw i64 %i.bl, -1
  br label %bb.ab

bb.w:                                             ; preds = %bb.u
  %i.br = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ap ; 2 uses
  %i.bs = add nsw i64 %i.bl, -1                   ; 3 uses
  %i.bt = icmp samesign ult i64 %i.bl, 17
  br i1 %i.bt, label %.preheader114.i.i, label %.lr.ph.i.i

.preheader114.i.i:                                ; preds = %bb.w
  %.not103137.i.i = icmp eq i64 %i.bs, 0
  br i1 %.not103137.i.i, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_0s_0Cs7p2uQeJxui2_9deltalake.exit, label %.lr.ph141.i.i

.lr.ph.i.i:                                       ; preds = %bb.w, %bb.z
  %.sroa.0.1136.i.i = phi ptr [ %i.bu, %bb.z ], [ %i.br, %bb.w ] ; 2 uses
  %.sroa.26.1135.i.i = phi i64 [ %i.bv, %bb.z ], [ %i.bs, %bb.w ]
  %.sroa.084.0134.i.i = phi i64 [ %i.cg, %bb.z ], [ 0, %bb.w ]
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i.i, i64 1
  %i.bv = add nsw i64 %.sroa.26.1135.i.i, -1      ; 2 uses
  %i.bw = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i.i, i64 10) ; 2 uses
  %i.bx = extractvalue { i64, i1 } %i.bw, 0
  %i.by = extractvalue { i64, i1 } %i.bw, 1
  br i1 %i.by, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_0s_0Cs7p2uQeJxui2_9deltalake.exit, label %bb.x, !prof !64

bb.x:                                             ; preds = %.lr.ph.i.i
  %i.bz = load i8, ptr %.sroa.0.1136.i.i, align 1, !alias.scope !8221, !noalias !8224, !noundef !4
  %i.ca = zext i8 %i.bz to i32
  %i.cb = add nsw i32 %i.ca, -48                  ; 2 uses
  %i.cc = icmp ult i32 %i.cb, 10
  br i1 %i.cc, label %bb.y, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_0s_0Cs7p2uQeJxui2_9deltalake.exit

bb.y:                                             ; preds = %bb.x
  %i.cd = zext nneg i32 %i.cb to i64
  %i.ce = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.bx, i64 %i.cd) ; 2 uses
  %i.cf = extractvalue { i64, i1 } %i.ce, 1
  br i1 %i.cf, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_0s_0Cs7p2uQeJxui2_9deltalake.exit, label %bb.z, !prof !64

bb.z:                                             ; preds = %bb.y
  %i.cg = extractvalue { i64, i1 } %i.ce, 0       ; 2 uses
  %.not102.i.i = icmp eq i64 %i.bv, 0
  br i1 %.not102.i.i, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_0s_0Cs7p2uQeJxui2_9deltalake.exit, label %.lr.ph.i.i

.lr.ph141.i.i:                                    ; preds = %.preheader114.i.i, %bb.aa
  %.sroa.0.2140.i.i = phi ptr [ %i.cn, %bb.aa ], [ %i.br, %.preheader114.i.i ] ; 2 uses
  %.sroa.26.2139.i.i = phi i64 [ %i.cm, %bb.aa ], [ %i.bs, %.preheader114.i.i ]
  %.sroa.084.2138.i.i = phi i64 [ %i.cp, %bb.aa ], [ 0, %.preheader114.i.i ]
  %i.ch = load i8, ptr %.sroa.0.2140.i.i, align 1, !alias.scope !8221, !noalias !8224, !noundef !4
  %i.ci = zext i8 %i.ch to i32
  %i.cj = add nsw i32 %i.ci, -48                  ; 2 uses
  %i.ck = icmp ugt i32 %i.cj, 9
  br i1 %i.ck, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_0s_0Cs7p2uQeJxui2_9deltalake.exit, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph141.i.i
  %i.cl = mul i64 %.sroa.084.2138.i.i, 10
  %i.cm = add nsw i64 %.sroa.26.2139.i.i, -1      ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i.i, i64 1
  %i.co = zext nneg i32 %i.cj to i64
  %i.cp = sub i64 %i.cl, %i.co                    ; 2 uses
  %.not103.i.i = icmp eq i64 %i.cm, 0
  br i1 %.not103.i.i, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_0s_0Cs7p2uQeJxui2_9deltalake.exit, label %.lr.ph141.i.i

bb.ab:                                            ; preds = %bb.v, %bb.u
  %.sroa.26.0.i.i = phi i64 [ %i.bq, %bb.v ], [ %i.bl, %bb.u ] ; 4 uses
  %.sroa.0.0.i4.i = phi ptr [ %i.bp, %bb.v ], [ %i.bm, %bb.u ] ; 2 uses
  %i.cq = icmp samesign ult i64 %.sroa.26.0.i.i, 16
  br i1 %i.cq, label %.preheader.i.i, label %.preheader111.i.i

.preheader.i.i:                                   ; preds = %bb.ab
  %.not105146.i.i = icmp eq i64 %.sroa.26.0.i.i, 0
  br i1 %.not105146.i.i, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_0s_0Cs7p2uQeJxui2_9deltalake.exit, label %.lr.ph150.i.i

.preheader111.i.i:                                ; preds = %bb.ab, %bb.ae
  %.sroa.0.3145.i.i = phi ptr [ %i.cr, %bb.ae ], [ %.sroa.0.0.i4.i, %bb.ab ] ; 2 uses
  %.sroa.26.3144.i.i = phi i64 [ %i.cs, %bb.ae ], [ %.sroa.26.0.i.i, %bb.ab ]
  %.sroa.084.3143.i.i = phi i64 [ %i.dd, %bb.ae ], [ 0, %bb.ab ]
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i.i, i64 1
  %i.cs = add nsw i64 %.sroa.26.3144.i.i, -1      ; 2 uses
  %i.ct = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i.i, i64 10) ; 2 uses
  %i.cu = extractvalue { i64, i1 } %i.ct, 0
  %i.cv = extractvalue { i64, i1 } %i.ct, 1
  br i1 %i.cv, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_0s_0Cs7p2uQeJxui2_9deltalake.exit, label %bb.ac, !prof !64

bb.ac:                                            ; preds = %.preheader111.i.i
  %i.cw = load i8, ptr %.sroa.0.3145.i.i, align 1, !alias.scope !8221, !noalias !8224, !noundef !4
  %i.cx = zext i8 %i.cw to i32
  %i.cy = add nsw i32 %i.cx, -48                  ; 2 uses
  %i.cz = icmp ult i32 %i.cy, 10
  br i1 %i.cz, label %bb.ad, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_0s_0Cs7p2uQeJxui2_9deltalake.exit

bb.ad:                                            ; preds = %bb.ac
  %i.da = zext nneg i32 %i.cy to i64
  %i.db = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.cu, i64 %i.da) ; 2 uses
  %i.dc = extractvalue { i64, i1 } %i.db, 1
  br i1 %i.dc, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_0s_0Cs7p2uQeJxui2_9deltalake.exit, label %bb.ae, !prof !64

bb.ae:                                            ; preds = %bb.ad
  %i.dd = extractvalue { i64, i1 } %i.db, 0       ; 2 uses
  %.not104.i.i = icmp eq i64 %i.cs, 0
  br i1 %.not104.i.i, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_0s_0Cs7p2uQeJxui2_9deltalake.exit, label %.preheader111.i.i

.lr.ph150.i.i:                                    ; preds = %.preheader.i.i, %bb.af
  %.sroa.0.4149.i.i = phi ptr [ %i.dk, %bb.af ], [ %.sroa.0.0.i4.i, %.preheader.i.i ] ; 2 uses
  %.sroa.26.4148.i.i = phi i64 [ %i.dj, %bb.af ], [ %.sroa.26.0.i.i, %.preheader.i.i ]
  %.sroa.084.4147.i.i = phi i64 [ %i.dm, %bb.af ], [ 0, %.preheader.i.i ]
  %i.de = load i8, ptr %.sroa.0.4149.i.i, align 1, !alias.scope !8221, !noalias !8224, !noundef !4
  %i.df = zext i8 %i.de to i32
  %i.dg = add nsw i32 %i.df, -48                  ; 2 uses
  %i.dh = icmp ugt i32 %i.dg, 9
  br i1 %i.dh, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_0s_0Cs7p2uQeJxui2_9deltalake.exit, label %bb.af

bb.af:                                            ; preds = %.lr.ph150.i.i
  %i.di = mul i64 %.sroa.084.4147.i.i, 10
  %i.dj = add nsw i64 %.sroa.26.4148.i.i, -1      ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i.i, i64 1
  %i.dl = zext nneg i32 %i.dg to i64
  %i.dm = add i64 %i.di, %i.dl                    ; 2 uses
  %.not105.i.i = icmp eq i64 %i.dj, 0
  br i1 %.not105.i.i, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_0s_0Cs7p2uQeJxui2_9deltalake.exit, label %.lr.ph150.i.i

bb.ag:                                            ; preds = %bb.r, %bb.q, %bb.o, %bb.n, %bb.j
  call void @_RNvNtCsbvkFyIu7lgC_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.az, i64 noundef %i.ax, i64 noundef %i.au, i64 noundef %i.av, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69) #36, !noalias !8218
  unreachable

_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_0s_0Cs7p2uQeJxui2_9deltalake.exit.sink.split: ; preds = %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCsonPGffhQyS_5regex5regex6string5RegexE5force0ECs7p2uQeJxui2_9deltalake.exit, %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_00Cs7p2uQeJxui2_9deltalake.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_0s_0Cs7p2uQeJxui2_9deltalake.exit

_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_0s_0Cs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.z, %bb.y, %bb.x, %.lr.ph.i.i, %bb.aa, %.lr.ph141.i.i, %bb.ae, %bb.ad, %bb.ac, %.preheader111.i.i, %bb.af, %.lr.ph150.i.i, %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_0s_0Cs7p2uQeJxui2_9deltalake.exit.sink.split, %.preheader.i.i, %.preheader114.i.i, %bb.t, %bb.t, %bb.s
  %.sroa.3.0 = phi i64 [ undef, %bb.t ], [ undef, %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_0s_0Cs7p2uQeJxui2_9deltalake.exit.sink.split ], [ 0, %.preheader.i.i ], [ %i.dd, %bb.ae ], [ undef, %bb.t ], [ undef, %bb.s ], [ undef, %.lr.ph141.i.i ], [ 0, %.preheader114.i.i ], [ %i.dm, %bb.af ], [ undef, %.lr.ph150.i.i ], [ undef, %.preheader111.i.i ], [ undef, %bb.ac ], [ undef, %bb.ad ], [ %i.cp, %bb.aa ], [ undef, %.lr.ph.i.i ], [ undef, %bb.x ], [ %i.cg, %bb.z ], [ undef, %bb.y ]
  %.sroa.0.0 = phi i64 [ 0, %bb.t ], [ 0, %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_0s_0Cs7p2uQeJxui2_9deltalake.exit.sink.split ], [ 1, %.preheader.i.i ], [ 1, %bb.ae ], [ 0, %bb.t ], [ %i.bl, %bb.s ], [ 0, %.lr.ph141.i.i ], [ 1, %.preheader114.i.i ], [ 1, %bb.af ], [ 0, %.lr.ph150.i.i ], [ 0, %.preheader111.i.i ], [ 0, %bb.ac ], [ 0, %bb.ad ], [ 1, %bb.aa ], [ 0, %.lr.ph.i.i ], [ 0, %bb.x ], [ 1, %bb.z ], [ 0, %bb.y ]
  %i.dn = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.do = insertvalue { i64, i64 } %i.dn, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.do
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0sa_0Cs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #3 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr @_RNvNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s2_10___CALLSITE, align 8, !nonnull !4, !align !344, !noundef !4
  tail call void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.c = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.f = icmp ult i64 %i.e, 6
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp samesign ugt i64 %i.e, 3
  br i1 %i.g, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @_RNvNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s2_10___CALLSITE, align 8, !nonnull !4, !align !344, !noundef !4 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.l = load i64, ptr %i.k, align 8, !noundef !4
  store i64 4, ptr %i.a, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx, align 8
  %i.m = tail call { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger() ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !4, !nonnull !4
  %i.r = call noundef zeroext i1 %i.q(ptr noundef %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #42
  br i1 %i.r, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.h, ptr noundef nonnull %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0sb_0Cs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #3 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr @_RNvNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_10___CALLSITE, align 8, !nonnull !4, !align !344, !noundef !4
  tail call void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.c = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.f = icmp ult i64 %i.e, 6
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp samesign ugt i64 %i.e, 3
  br i1 %i.g, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @_RNvNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_10___CALLSITE, align 8, !nonnull !4, !align !344, !noundef !4 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.l = load i64, ptr %i.k, align 8, !noundef !4
  store i64 4, ptr %i.a, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx, align 8
  %i.m = tail call { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger() ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !4, !nonnull !4
  %i.r = call noundef zeroext i1 %i.q(ptr noundef %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #42
  br i1 %i.r, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.h, ptr noundef nonnull %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMNtCs14kWLkQVSKO_14deltalake_core10operationsNtNtB6_5table10DeltaTable33try_from_url_with_storage_options0Cs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef nonnull writable writeonly align 16 captures(none) dereferenceable(128) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.637 = alloca [120 x i8], align 8         ; 6 uses
  %i.a = alloca [96 x i8], align 16               ; 9 uses
  %i.b = alloca [96 x i8], align 16               ; 9 uses
  %.sroa.6 = alloca [120 x i8], align 8           ; 3 uses
  %i.c = alloca [48 x i8], align 8                ; 5 uses
  %i.d = alloca [336 x i8], align 8               ; 4 uses
  %i.e = alloca [336 x i8], align 16              ; 9 uses
  %.sroa.8 = alloca [104 x i8], align 8           ; 7 uses
  %.sroa.10 = alloca [224 x i8], align 16         ; 6 uses
  %i.f = alloca [336 x i8], align 8               ; 6 uses
  %i.g = alloca [128 x i8], align 16              ; 9 uses
  %i.h = alloca [48 x i8], align 8                ; 9 uses
  %i.i = alloca [88 x i8], align 8                ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 1136 ; 3 uses
  %i.k = load i8, ptr %i.j, align 8, !range !1884, !noundef !4
  switch i8 %i.k, label %default.unreachable53 [
    i8 0, label %bb.b
    i8 1, label %bb.q
    i8 2, label %bb.r
    i8 3, label %bb.u
  ]

default.unreachable53:                            ; preds = %bb.u, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 1138 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 1137 ; 3 uses
  store i8 0, ptr %i.m, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.i, ptr noundef nonnull align 8 dereferenceable(88) %1, i64 88, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i8 1, ptr %i.l, align 2
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull align 8 dereferenceable(48) %i.n, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core5table7builderNtB5_17DeltaTableBuilder8from_url(ptr noalias noundef nonnull sret([336 x i8]) align 16 captures(none) dereferenceable(336) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(88) %i.i)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !8226)
  %i.p = load i64, ptr %i.e, align 16, !range !1286, !alias.scope !8229, !noalias !8226, !noundef !4 ; 2 uses
  %i.q = icmp eq i64 %i.p, 4
  br i1 %i.q, label %bb.m, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.8.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.8.0..sroa_idx28, i64 104, i1 false), !alias.scope !8231
  %.sroa.10.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(224) %.sroa.10, ptr noundef nonnull align 16 dereferenceable(224) %.sroa.10.0..sroa_idx30, i64 224, i1 false), !alias.scope !8231
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i64 %i.p, ptr %i.d, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.8, i64 104, i1 false)
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %.sroa.10.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(224) %.sroa.10, i64 224, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 0, ptr %i.l, align 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false)
  invoke void @_RNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core5table7builderNtB5_17DeltaTableBuilder20with_storage_options(ptr noalias noundef nonnull sret([336 x i8]) align 8 captures(none) dereferenceable(336) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(336) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.c)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core5table7builderNtB5_17DeltaTableBuilder5build(ptr noalias noundef nonnull sret([128 x i8]) align 16 captures(none) dereferenceable(128) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(336) %i.f)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.t = load i64, ptr %i.g, align 16, !range !3, !alias.scope !8232, !noalias !8235, !noundef !4
  %i.u = trunc nuw i64 %i.t to i1
  br i1 %i.u, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.6.16..sroa_idx25 = getelementptr inbounds nuw i8, ptr %.sroa.6, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.6.16..sroa_idx25, ptr noundef nonnull align 16 dereferenceable(96) %i.v, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.sroa.637.16..sroa_idx39 = getelementptr inbounds nuw i8, ptr %.sroa.637, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.637.16..sroa_idx39, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.6.16..sroa_idx25, i64 96, i1 false)
  br label %bb.l

.thread:                                          ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(120) %i.w, i64 120, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store i8 1, ptr %i.m, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.x, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.6, i64 120, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 256
  store ptr %i.x, ptr %i.y, align 8
  %.sroa.835.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1128
  store i8 0, ptr %.sroa.835.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 1128
  br label %bb.v

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCs14kWLkQVSKO_14deltalake_core5tableNtBO_10DeltaTable4load0ECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.s, %.body, %.body.thread, %bb.t, %bb.ah
  %.pn4 = phi { ptr, i32 } [ %i.bi, %bb.ah ], [ %i.am, %bb.t ], [ %.pn2.i, %.body.thread ], [ %i.am, %.body ], [ %i.am, %bb.s ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 1137
  %i.ab = load i8, ptr %i.aa, align 1, !range !101, !noundef !4
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.ax, label %.body21

bb.k:                                             ; preds = %bb.f, %bb.h, %bb.c
  %.pn6.pn.pn = phi { ptr, i32 } [ %i.o, %bb.c ], [ %i.s, %bb.h ], [ %i.r, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  br label %.body21

bb.l:                                             ; preds = %bb.j, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  store i8 0, ptr %i.m, align 1
  %i.ad = load i8, ptr %i.l, align 2, !range !101, !noundef !4
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.n, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs7p2uQeJxui2_9deltalake.exit

bb.m:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.8.16..sroa_idx29 = getelementptr inbounds nuw i8, ptr %.sroa.8, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.8.16..sroa_idx29, ptr noundef nonnull align 16 dereferenceable(96) %i.af, i64 96, i1 false), !alias.scope !8231
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.sroa.637.16..sroa_idx38 = getelementptr inbounds nuw i8, ptr %.sroa.637, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.637.16..sroa_idx38, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.8.16..sroa_idx29, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.l

end_hunk_0
begin_hunk_1_@_RNCNvMs_NtCs7p2uQeJxui2_9deltalake10filesystemNtB6_15ObjectInputFile7try_new0B8_:bb.a
  store i64 %.sroa.3.sroa.7.0.copyload, ptr %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store ptr %.sroa.3.sroa.9.0.copyload, ptr %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.8.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store ptr %.sroa.3.sroa.11.0.copyload, ptr %.sroa.4.sroa.8.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.9.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store i64 %.sroa.3.sroa.13.0.copyload, ptr %.sroa.4.sroa.9.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.10.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  store i64 %.sroa.3.sroa.15.0.copyload, ptr %.sroa.4.sroa.10.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store10ObjectMetaECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(96) %i.e)
          to label %bb.w unwind label %bb.v

.body:                                            ; preds = %bb.f, %bb.l, %bb.s, %bb.t, %bb.v
  %.pn.pn = phi { ptr, i32 } [ %i.bp, %bb.v ], [ %i.bi, %bb.s ], [ %i.av, %bb.l ], [ %i.ae, %bb.f ], [ %i.bi, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.ad

bb.v:                                             ; preds = %bb.u
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.phi.trans.insert80 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.pre = load ptr, ptr %.phi.trans.insert80, align 8
  %.phi.trans.insert81 = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.pre82 = load ptr, ptr %.phi.trans.insert81, align 8
  br label %bb.h

bb.x:                                             ; preds = %bb.i, %bb.h
  %i.bq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.b) #38
          to label %bb.ab unwind label %bb.aa

bb.y:                                             ; preds = %.noexc
  %i.br = load ptr, ptr %i.at, align 8, !noalias !9465, !nonnull !4, !noundef !4 ; 2 uses
  %i.bs = icmp ugt i64 %i.as, 1
  call void @llvm.assume(i1 %i.bs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9465
  store i16 25202, ptr %i.br, align 1, !noalias !9475
  %.sroa.03.sroa.0.sroa.0.0.copyload = load i64, ptr %i.b, align 8
  %.sroa.03.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.339, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.sroa.0.sroa.5.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i8 0, ptr %i.an, align 1
  store i8 0, ptr %i.al, align 2
  br label %bb.z

bb.z:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit25, %bb.y
  %.sroa.9.0 = phi i64 [ %.sroa.02.0, %bb.y ], [ %.sroa.3.sroa.13.0.copyload, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit25 ]
  %.sroa.8.0 = phi ptr [ %i.aj, %bb.y ], [ %.sroa.3.sroa.11.0.copyload, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit25 ]
  %.sroa.7.0 = phi ptr [ %i.ak, %bb.y ], [ %.sroa.3.sroa.9.0.copyload, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit25 ]
  %.sroa.642.0 = phi i64 [ 2, %bb.y ], [ %.sroa.3.sroa.7.0.copyload, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit25 ]
  %.sroa.541.0 = phi ptr [ %i.br, %bb.y ], [ %.sroa.3.sroa.5.0.copyload, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit25 ]
  %.sroa.440.0 = phi i64 [ %i.as, %bb.y ], [ %.sroa.3.sroa.3.0.copyload, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit25 ]
  %.sroa.037.0 = phi i64 [ %.sroa.03.sroa.0.sroa.0.0.copyload, %bb.y ], [ -9223372036854775808, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit25 ]
  %.sroa.1045.0 = phi i64 [ 0, %bb.y ], [ %.sroa.3.sroa.15.0.copyload, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit25 ]
  store i64 %.sroa.037.0, ptr %0, align 8
  %.sroa.339.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.339.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.339, i64 16, i1 false)
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.440.0, ptr %.sroa.440.0..sroa_idx, align 8
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.541.0, ptr %.sroa.541.0..sroa_idx, align 8
  %.sroa.642.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.642.0, ptr %.sroa.642.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx43 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.sroa.7.0, ptr %.sroa.7.0..sroa_idx43, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.sroa.8.0, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx44 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx44, align 8
  %.sroa.1045.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %.sroa.1045.0, ptr %.sroa.1045.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 0, ptr %.sroa.11.0..sroa_idx, align 8
  br label %common.ret

bb.aa:                                            ; preds = %bb.am, %bb.ac, %bb.l, %bb.ak, %bb.x
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.ab:                                            ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bu = atomicrmw sub ptr %i.ak, i64 1 release, align 8, !noalias !9476
  %i.bv = icmp eq i64 %i.bu, 1
  br i1 %i.bv, label %bb.ac, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit

bb.ac:                                            ; preds = %bb.ab
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #40
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit unwind label %bb.aa

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.ad

bb.ad:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit, %.body
  %.pn8 = phi { ptr, i32 } [ %i.bq, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit ], [ %.pn.pn, %.body ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 113
  %i.bx = load i8, ptr %i.bw, align 1, !range !101, !noundef !4
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.ak, label %.body21

bb.ae:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2w_5ErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.339, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.sroa.0, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bz)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ca = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bz)
          to label %.body21 unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.ae
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bz)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit unwind label %bb.ah

.body21:                                          ; preds = %bb.ah, %bb.af, %bb.ak, %bb.ad
  %.pn8.pn = phi { ptr, i32 } [ %.pn8, %bb.ak ], [ %.pn8, %bb.ad ], [ %i.cg, %bb.ah ], [ %i.ca, %bb.af ] ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 113
  store i8 0, ptr %i.cc, align 1
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 114
  %i.ce = load i8, ptr %i.cd, align 2, !range !101, !noundef !4
  %i.cf = trunc nuw i8 %i.ce to i1
  br i1 %i.cf, label %bb.al, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit27

bb.ah:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %.body21

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 113
  store i8 0, ptr %i.ch, align 1
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9481)
  call void @llvm.experimental.noalias.scope.decl(metadata !9484)
  %i.cj = load ptr, ptr %i.ci, align 8, !alias.scope !9487, !nonnull !4, !noundef !4
  %i.ck = atomicrmw sub ptr %i.cj, i64 1 release, align 8, !noalias !9487
  %i.cl = icmp eq i64 %i.ck, 1
  br i1 %i.cl, label %bb.ai, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit25

bb.ai:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ci) #40
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit25 unwind label %bb.aj

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit27: ; preds = %bb.al, %bb.am, %bb.aj, %.body21
  %.pn8.pn.pn = phi { ptr, i32 } [ %i.cn, %bb.aj ], [ %.pn8.pn, %.body21 ], [ %.pn8.pn, %bb.am ], [ %.pn8.pn, %bb.al ]
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 114
  store i8 0, ptr %i.cm, align 2
  store i8 2, ptr %i.f, align 8
  resume { ptr, i32 } %.pn8.pn.pn

bb.aj:                                            ; preds = %bb.ai
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit27

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit25: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit, %bb.ai
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 114
  store i8 0, ptr %i.co, align 2
  br label %bb.z

bb.ak:                                            ; preds = %bb.ad
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 72
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.cp) #38
          to label %.body21 unwind label %bb.aa

bb.al:                                            ; preds = %.body21
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9488)
  call void @llvm.experimental.noalias.scope.decl(metadata !9491)
  %i.cr = load ptr, ptr %i.cq, align 8, !alias.scope !9494, !nonnull !4, !noundef !4
  %i.cs = atomicrmw sub ptr %i.cr, i64 1 release, align 8, !noalias !9494
  %i.ct = icmp eq i64 %i.cs, 1
  br i1 %i.ct, label %bb.am, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit27

bb.am:                                            ; preds = %bb.al
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.cq) #40
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit27 unwind label %bb.aa
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMsg_NtCs7p2uQeJxui2_9deltalake10filesystemNtB7_22DeltaFileSystemHandler13get_file_info0B9_(ptr dead_on_unwind noalias noundef nonnull writable align 8 captures(address) dereferenceable(64) %0, ptr captures(address, read_provenance) %.0.val, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %4) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [64 x i8], align 8                ; 7 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvXs7_NtNtCsgbCypRs12E4_4pyo35types4dictRINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapRexENtB5_10IntoPyDict12into_py_dictCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %4)
  %i.e = load i64, ptr %i.c, align 8, !range !3, !noundef !4
  %i.f = trunc nuw i64 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.05.0.copyload = load ptr, ptr %i.g, align 8 ; 4 uses
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.28.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.56.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.05.0.copyload, ptr %i.h, align 8
  store i64 1, ptr %0, align 8
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store ptr %.sroa.05.0.copyload, ptr %i.d, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9495)
  invoke void @_RINvXs_NtNtCsgbCypRs12E4_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods7getattrReECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.0.val, ptr noalias noundef nonnull readonly captures(address, read_provenance) @195, i64 noundef 8)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.c
  %i.i = load i64, ptr %0, align 8, !range !3, !alias.scope !9495, !noalias !9498, !noundef !4
  %i.j = trunc nuw i64 %i.i to i1
  br i1 %i.j, label %_RINvXs_NtNtCsgbCypRs12E4_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods11call_methodReTB1H_RBC_EECs7p2uQeJxui2_9deltalake.exit, label %bb.d

bb.d:                                             ; preds = %.noexc
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !9495, !noalias !9498, !nonnull !4, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9502
  store ptr %i.l, ptr %i.b, align 8, !noalias !9503
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9503
  store ptr %1, ptr %i.a, align 8, !noalias !9507
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !9507
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %3, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !9507
  invoke void @_RINvXs_NtNtCsgbCypRs12E4_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods4callTReRBC_EECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) %i.d)
          to label %_RNCINvXs_NtNtCsgbCypRs12E4_4pyo35types3anyINtNtBb_8instance5BoundNtB7_5PyAnyENtB7_12PyAnyMethods11call_methodReTB1J_RBE_EE0Cs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.e, !noalias !9508

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_Py_DecRef(ptr noundef nonnull %i.l) #41, !noalias !9509
  br label %bb.h

_RNCINvXs_NtNtCsgbCypRs12E4_4pyo35types3anyINtNtBb_8instance5BoundNtB7_5PyAnyENtB7_12PyAnyMethods11call_methodReTB1J_RBE_EE0Cs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9503
  call void @_Py_DecRef(ptr noundef nonnull %i.l) #41, !noalias !9509
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9502
  br label %_RINvXs_NtNtCsgbCypRs12E4_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods11call_methodReTB1H_RBC_EECs7p2uQeJxui2_9deltalake.exit

bb.f:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

_RINvXs_NtNtCsgbCypRs12E4_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods11call_methodReTB1H_RBC_EECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RNCINvXs_NtNtCsgbCypRs12E4_4pyo35types3anyINtNtBb_8instance5BoundNtB7_5PyAnyENtB7_12PyAnyMethods11call_methodReTB1J_RBE_EE0Cs7p2uQeJxui2_9deltalake.exit.i, %.noexc
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.05.0.copyload) #41
  br label %bb.g

bb.g:                                             ; preds = %_RINvXs_NtNtCsgbCypRs12E4_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods11call_methodReTB1H_RBC_EECs7p2uQeJxui2_9deltalake.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.h:                                             ; preds = %bb.f, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.n, %bb.f ], [ %i.m, %bb.e ]
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.05.0.copyload) #41
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB7_13RawDeltaTable13is_deltatables_0B7_(ptr dead_on_unwind noalias noundef nonnull writable writeonly align 16 captures(none) dereferenceable(96) %0, ptr noundef nonnull align 16 %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 16               ; 3 uses
  %i.b = alloca [96 x i8], align 16               ; 8 uses
  %i.c = alloca [336 x i8], align 8               ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 616 ; 3 uses
  %i.e = load i8, ptr %i.d, align 8, !range !1884, !noundef !4
  switch i8 %i.e, label %default.unreachable21 [
    i8 0, label %bb.b
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 3, label %bb.i
  ]

default.unreachable21:                            ; preds = %bb.i, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(336) %i.c, ptr noundef nonnull align 16 dereferenceable(336) %1, i64 336, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 2 uses
  invoke void @_RNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core5table7builderNtB5_17DeltaTableBuilder5build(ptr noalias noundef nonnull sret([128 x i8]) align 16 captures(none) dereferenceable(128) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(336) %i.c)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.body13

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.h = load i64, ptr %i.f, align 16, !range !3, !noundef !4
  %i.i = trunc nuw i64 %i.h to i1
  br i1 %i.i, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.a, ptr noundef nonnull align 16 dereferenceable(96) %i.j, i64 96, i1 false)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableECs7p2uQeJxui2_9deltalake.exit

.thread:                                          ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 496 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 344
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %i.k, ptr noundef nonnull align 8 dereferenceable(120) %i.l, i64 120, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 464
  store ptr %i.k, ptr %i.m, align 16
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 488
  store i8 0, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 464
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 488
  br label %bb.j

.body9:                                           ; preds = %.body
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 496
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(120) %i.p) #38
          to label %.body13 unwind label %bb.ai

common.ret:                                       ; preds = %bb.x, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableECs7p2uQeJxui2_9deltalake.exit
  %storemerge = phi i8 [ 3, %bb.x ], [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableECs7p2uQeJxui2_9deltalake.exit ]
  store i8 %storemerge, ptr %i.d, align 8
  ret void

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.ae, %bb.af, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %i.a, i64 96, i1 false)
  br label %common.ret

.body13:                                          ; preds = %bb.ah, %bb.ac, %bb.ab, %.body9, %bb.c
  %.pn4 = phi { ptr, i32 } [ %i.g, %bb.c ], [ %eh.lpad-body, %.body9 ], [ %i.by, %bb.ah ], [ %.pn.i11, %bb.ac ], [ %.pn.i11, %bb.ab ]
  store i8 2, ptr %i.d, align 8
  resume { ptr, i32 } %.pn4

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @196) #36
  unreachable

bb.g:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @196) #36
  unreachable

bb.h:                                             ; preds = %bb.n, %bb.m
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %bb.h
  %i.r = phi ptr [ %i.s, %bb.h ], [ %i.ao, %.body.i ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.q, %bb.h ], [ %.pn.i, %.body.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCs14kWLkQVSKO_14deltalake_core5tableNtBO_10DeltaTable27verify_deltatable_existence0ECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 %i.r) #38
          to label %.body9 unwind label %bb.ai

bb.i:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 488
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !range !1884, !noalias !9510
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 464 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9514)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 488 ; 2 uses
  switch i8 %.pre, label %default.unreachable21 [
    i8 0, label %bb.j
    i8 1, label %bb.m
    i8 2, label %bb.n
    i8 3, label %._crit_edge.i
  ]

._crit_edge.i:                                    ; preds = %bb.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 472
  %.val.i.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !alias.scope !9515, !noalias !9518
  %.phi.trans.insert8.i = getelementptr inbounds nuw i8, ptr %1, i64 480
  %.val1.i.pre.i = load ptr, ptr %.phi.trans.insert8.i, align 16, !alias.scope !9515, !noalias !9518
  br label %bb.p

bb.j:                                             ; preds = %.thread, %bb.i
  %i.u = phi ptr [ %i.o, %.thread ], [ %i.t, %bb.i ] ; 2 uses
  %i.v = phi ptr [ %i.n, %.thread ], [ %i.s, %bb.i ] ; 3 uses
end_hunk_1
begin_hunk_2_@_RNvMsi_NtCs7p2uQeJxui2_9deltalake10filesystemNtB5_22DeltaFileSystemHandler24___pymethod_delete_file__:bb.a
  invoke void @_RINvMNtNtCskQDtHcQtBkN_5tokio7runtime7runtimeNtB3_7Runtime8block_onINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB18_6future6future6Futurep6OutputINtNtB18_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB18_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.h, ptr noundef nonnull align 8 @_RNvNvNtCs7p2uQeJxui2_9deltalake5utils2rt8TOKIO_RT, ptr noundef nonnull %i.bi, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @292)
          to label %bb.x unwind label %bb.u, !noalias !10861

bb.x:                                             ; preds = %bb.w
  %i.bk = load i64, ptr %i.h, align 8, !range !9840, !noalias !10861, !noundef !4
  %.not.i.not = icmp eq i64 %i.bk, -9223372036854775790 ; 2 uses
  br i1 %.not.i.not, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !10861
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.2.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(72) %i.h, i64 72, i1 false), !noalias !10861
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !10861
  store i64 -9223372036854775711, ptr %i.g, align 16, !noalias !10861
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !10861
  invoke void @_RNvXs0_NtCs7p2uQeJxui2_9deltalake5errorNtNtCsgbCypRs12E4_4pyo33err5PyErrINtNtCsbvkFyIu7lgC_4core7convert4FromNtB5_11PythonErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.f, ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(96) %i.g)
          to label %bb.ae unwind label %bb.u, !noalias !10861

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !10861
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.aa, !noalias !10861

bb.aa:                                            ; preds = %bb.z
  %i.bl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.body.i unwind label %bb.ab, !noalias !10861

bb.ab:                                            ; preds = %bb.aa
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !10861
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.z
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.o, !noalias !10861

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !10861
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit31.i unwind label %bb.ac, !noalias !10863

bb.ac:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit.i
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body unwind label %bb.ad, !noalias !10863

bb.ad:                                            ; preds = %bb.ac
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !10863
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit31.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit29.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RNvMsg_NtCs7p2uQeJxui2_9deltalake10filesystemNtB5_22DeltaFileSystemHandler11delete_file.exit unwind label %bb.d

bb.ae:                                            ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.3, ptr noundef nonnull align 8 dereferenceable(56) %i.f, i64 56, i1 false), !noalias !10858
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !10861
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !10861
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i25.i unwind label %bb.af, !noalias !10861

bb.af:                                            ; preds = %bb.ae
  %i.bp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.body.i unwind label %bb.ag, !noalias !10861

bb.ag:                                            ; preds = %bb.af
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !10861
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i25.i: ; preds = %bb.ae
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit29.i unwind label %bb.o, !noalias !10861

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit29.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i25.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !10861
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit31.i unwind label %bb.ah, !noalias !10863

bb.ah:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit29.i
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body unwind label %bb.ai, !noalias !10863

bb.ai:                                            ; preds = %bb.ah
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !10863
  unreachable

bb.aj:                                            ; preds = %bb.u, %.body.i
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !10863
  unreachable

_RNvMsg_NtCs7p2uQeJxui2_9deltalake10filesystemNtB5_22DeltaFileSystemHandler11delete_file.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit31.i
  call void @llvm.experimental.noalias.scope.decl(metadata !10873)
  call void @llvm.experimental.noalias.scope.decl(metadata !10876)
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %.not.i.not, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_RNvMsg_NtCs7p2uQeJxui2_9deltalake10filesystemNtB5_22DeltaFileSystemHandler11delete_file.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bu, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.3, i64 56, i1 false), !alias.scope !10878
  br label %bb.am

bb.al:                                            ; preds = %_RNvMsg_NtCs7p2uQeJxui2_9deltalake10filesystemNtB5_22DeltaFileSystemHandler11delete_file.exit
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #41, !noalias !10878
  store ptr @_Py_NoneStruct, ptr %i.bu, align 8, !alias.scope !10873, !noalias !10876
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %storemerge.i = phi i64 [ 0, %bb.al ], [ 1, %bb.ak ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !10873, !noalias !10876
  %i.bv = load ptr, ptr %i.m, align 8, !alias.scope !10879, !noundef !4
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit19, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @_RNvXs4_NtNtCsgbCypRs12E4_4pyo37pyclass5guardINtB5_12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB14_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.m)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit19

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit19: ; preds = %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.b, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit20, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  ret void

bb.ap:                                            ; preds = %bb.j, %bb.g
  %i.bx = load ptr, ptr %i.m, align 8, !alias.scope !10882, !noundef !4
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit20, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @_RNvXs4_NtNtCsgbCypRs12E4_4pyo37pyclass5guardINtB5_12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB14_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.m)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit20

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit20: ; preds = %bb.ap, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.ao

bb.ar:                                            ; preds = %bb.e
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit: ; preds = %.body, %bb.e
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvMsi_NtCs7p2uQeJxui2_9deltalake10filesystemNtB5_22DeltaFileSystemHandler26___pymethod_get_file_info__(ptr dead_on_unwind noalias noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [64 x i8], align 8                ; 10 uses
  %i.c = alloca [72 x i8], align 8                ; 7 uses
  %i.d = alloca [56 x i8], align 8                ; 8 uses
  %i.e = alloca [96 x i8], align 16               ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [48 x i8], align 8                ; 10 uses
  %i.h = alloca [64 x i8], align 8                ; 10 uses
  %i.i = alloca [8 x i8], align 8                 ; 5 uses
  %i.j = alloca [64 x i8], align 8                ; 11 uses
  %i.k = alloca [96 x i8], align 16               ; 5 uses
  %i.l = alloca [56 x i8], align 8                ; 8 uses
  %i.m = alloca [48 x i8], align 8                ; 10 uses
  %i.n = alloca [64 x i8], align 8                ; 10 uses
  %i.o = alloca [8 x i8], align 8                 ; 5 uses
  %i.p = alloca [64 x i8], align 8                ; 11 uses
  %i.q = alloca [64 x i8], align 8                ; 10 uses
  %i.r = alloca [8 x i8], align 8                 ; 5 uses
  %i.s = alloca [64 x i8], align 8                ; 11 uses
  %i.t = alloca [48 x i8], align 8                ; 10 uses
  %i.u = alloca [48 x i8], align 8                ; 8 uses
  %i.v = alloca [96 x i8], align 8                ; 13 uses
  %i.w = alloca [96 x i8], align 8                ; 10 uses
  %i.x = alloca [96 x i8], align 16               ; 7 uses
  %.sroa.616.i = alloca [48 x i8], align 8        ; 6 uses
  %i.y = alloca [48 x i8], align 8                ; 9 uses
  %i.z = alloca [24 x i8], align 8                ; 16 uses
  %i.aa = alloca [24 x i8], align 8               ; 13 uses
  %.sroa.8293.i = alloca [16 x i8], align 8       ; 7 uses
  %i.ab = alloca [32 x i8], align 8               ; 10 uses
  %i.ac = alloca [24 x i8], align 8               ; 17 uses
  %i.ad = alloca [64 x i8], align 8               ; 10 uses
  %i.ae = alloca [8 x i8], align 8                ; 8 uses
  %i.af = alloca [64 x i8], align 8               ; 10 uses
  %i.ag = alloca [8 x i8], align 8                ; 12 uses
  %i.ah = alloca [24 x i8], align 8               ; 6 uses
  %i.ai = alloca [24 x i8], align 8               ; 8 uses
  %i.aj = alloca [64 x i8], align 8               ; 6 uses
  %.sroa.56 = alloca [56 x i8], align 8           ; 7 uses
  %i.ak = alloca [64 x i8], align 8               ; 7 uses
  %i.al = alloca [8 x i8], align 8                ; 11 uses
  %i.am = alloca [64 x i8], align 8               ; 6 uses
  %i.an = alloca [8 x i8], align 8                ; 5 uses
  %i.ao = alloca [8 x i8], align 8                ; 2 uses
  store ptr %1, ptr %i.ao, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  store ptr null, ptr %i.an, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  call void @_RINvMs3_NtNtCsgbCypRs12E4_4pyo35impl_16extract_argumentNtB6_19FunctionDescription26extract_arguments_fastcallNtB6_9NoVarargsNtB6_13NoVarkeywordsECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.am, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @349, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noalias noundef nonnull align 8 %i.an, i64 noundef 1)
  %i.ap = load i64, ptr %i.am, align 8, !range !3, !noundef !4
  %i.aq = trunc nuw i64 %i.ap to i1
  br i1 %i.aq, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.as, ptr noundef nonnull align 8 dereferenceable(56) %i.ar, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  store i64 1, ptr %0, align 8
  br label %bb.dx

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  store ptr null, ptr %i.al, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  invoke fastcc void @_RINvNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument19extract_pyclass_refNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEB1c_(ptr noalias noundef align 8 captures(none) dereferenceable(64) %i.ak, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ao, ptr noalias noundef align 8 dereferenceable(8) %i.al)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.ds, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs7p2uQeJxui2_9deltalake.exit.i, %bb.h, %bb.c
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body289.i, %bb.do, %bb.dq, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.at, %bb.d ], [ %i.kf, %bb.do ], [ %.pn216298.i, %bb.dq ], [ %.pn213.i, %.body289.i ]
  %i.au = load ptr, ptr %i.al, align 8, !alias.scope !10885, !noundef !4
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit, label %bb.e

bb.e:                                             ; preds = %.body
  invoke void @_RNvXs4_NtNtCsgbCypRs12E4_4pyo37pyclass5guardINtB5_12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB14_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.al)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit unwind label %bb.ea

bb.f:                                             ; preds = %bb.c
  %i.aw = load i64, ptr %i.ak, align 8, !range !3, !noundef !4
  %i.ax = trunc nuw i64 %i.aw to i1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.sroa.011.0.copyload = load ptr, ptr %i.ay, align 8 ; 3 uses
  br i1 %i.ax, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.sroa.214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.214.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.512.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.011.0.copyload, ptr %i.az, align 8
  store i64 1, ptr %0, align 8
  br label %bb.dy

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.56)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  invoke void @_RINvNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument16extract_argumentINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB1a_6string6StringEKb0_ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.aj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.an, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @347, i64 noundef 5)
          to label %bb.i unwind label %bb.d

bb.i:                                             ; preds = %bb.h
  %i.ba = load i64, ptr %i.aj, align 8, !range !3, !noundef !4
  %i.bb = trunc nuw i64 %i.ba to i1
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  br i1 %i.bb, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.56, ptr noundef nonnull align 8 dereferenceable(56) %i.bc, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bd, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.56, i64 56, i1 false)
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.56)
  br label %bb.dy

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.56, ptr noundef nonnull align 8 dereferenceable(24) %i.bc, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.56, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.56)
  call void @llvm.experimental.noalias.scope.decl(metadata !10888)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !10891
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !10891
  invoke void @_RINvMNtNtCsgbCypRs12E4_4pyo35types6moduleNtB3_8PyModule6importReECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.af, ptr noalias noundef nonnull readonly captures(address, read_provenance) @293, i64 noundef 10)
          to label %bb.l unwind label %.thread.i, !noalias !10891

.body289.i:                                       ; preds = %bb.di, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtBN_6string6StringEECs7p2uQeJxui2_9deltalake.exit.i, %bb.r
  %.sroa.097.4.i = phi i1 [ false, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtBN_6string6StringEECs7p2uQeJxui2_9deltalake.exit.i ], [ %.sroa.097.5.i, %bb.r ], [ false, %bb.di ]
  %.pn213.i = phi { ptr, i32 } [ %.pn211.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtBN_6string6StringEECs7p2uQeJxui2_9deltalake.exit.i ], [ %i.bv, %bb.r ], [ %i.jz, %bb.di ] ; 2 uses
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.0107.0.copyload.i) #41, !noalias !10894
  %.val220.i = load ptr, ptr %i.ag, align 8, !noalias !10891, !nonnull !4, !noundef !4
  call void @_Py_DecRef(ptr noundef nonnull %.val220.i) #41, !noalias !10894
  br i1 %.sroa.097.4.i, label %bb.dq, label %.body

.thread.i:                                        ; preds = %bb.k
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.dq

bb.l:                                             ; preds = %bb.k
  %i.bf = load i64, ptr %i.af, align 8, !range !3, !noalias !10891, !noundef !4
  %i.bg = trunc nuw i64 %i.bf to i1
  %i.bh = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.0101.0.copyload.i = load ptr, ptr %i.bh, align 8, !noalias !10891 ; 4 uses
  br i1 %i.bg, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %.sroa.5102.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.bi = load <2 x ptr>, ptr %.sroa.5102.0..sroa_idx.i, align 8, !noalias !10895
  %.sroa.37.16..sroa.5102.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %.sroa.37.16.copyload65 = load ptr, ptr %.sroa.37.16..sroa.5102.0..sroa_idx.i.sroa_idx, align 8, !noalias !10895
  %.sroa.38.16..sroa.5102.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.bj = load <2 x i64>, ptr %.sroa.38.16..sroa.5102.0..sroa_idx.i.sroa_idx, align 8, !noalias !10895
  %.sroa.40.16..sroa.5102.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  %i.bk = load <2 x i32>, ptr %.sroa.40.16..sroa.5102.0..sroa_idx.i.sroa_idx, align 8, !noalias !10895
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !10891
  br label %bb.dn

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !10891
  store ptr %.sroa.0101.0.copyload.i, ptr %i.ag, align 8, !noalias !10891
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !10891
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !10891
  invoke void @_RINvXs_NtNtCsgbCypRs12E4_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods7getattrReECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.ad, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ag, ptr noalias noundef nonnull readonly captures(address, read_provenance) @294, i64 noundef 8)
          to label %bb.o unwind label %.thread299.i, !noalias !10894

.thread299.i:                                     ; preds = %bb.n
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.0101.0.copyload.i) #41, !noalias !10894
  br label %bb.dq

bb.o:                                             ; preds = %bb.n
  %i.bm = load i64, ptr %i.ad, align 8, !range !3, !noalias !10891, !noundef !4
  %i.bn = trunc nuw i64 %i.bm to i1
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.0107.0.copyload.i = load ptr, ptr %i.bo, align 8, !noalias !10891 ; 5 uses
  br i1 %i.bn, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %.sroa.5108.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.bp = load <2 x ptr>, ptr %.sroa.5108.0..sroa_idx.i, align 8, !noalias !10895
  %.sroa.37.16..sroa.5108.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %.sroa.37.16.copyload64 = load ptr, ptr %.sroa.37.16..sroa.5108.0..sroa_idx.i.sroa_idx, align 8, !noalias !10895
  %.sroa.38.16..sroa.5108.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.bq = load <2 x i64>, ptr %.sroa.38.16..sroa.5108.0..sroa_idx.i.sroa_idx, align 8, !noalias !10895
  %.sroa.40.16..sroa.5108.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %i.br = load <2 x i32>, ptr %.sroa.40.16..sroa.5108.0..sroa_idx.i.sroa_idx, align 8, !noalias !10895
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !10891
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !10891
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.0101.0.copyload.i) #41, !noalias !10894
  br label %bb.dn

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !10891
  store ptr %.sroa.0107.0.copyload.i, ptr %i.ae, align 8, !noalias !10891
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !10891
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !alias.scope !10888, !noalias !10896, !noundef !4 ; 5 uses
  %i.bu = icmp ult i64 %i.bt, 384307168202282326
  call void @llvm.assume(i1 %i.bu)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !10891
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, i64 noundef %i.bt, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
          to label %bb.s unwind label %bb.r, !noalias !10894

bb.r:                                             ; preds = %bb.dj, %bb.t, %bb.q
  %.sroa.097.5.i = phi i1 [ true, %bb.t ], [ false, %bb.dj ], [ true, %bb.q ]
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %.body289.i

bb.s:                                             ; preds = %bb.q
  %i.bw = load i64, ptr %i.f, align 8, !range !3, !noalias !10891, !noundef !4
  %i.bx = trunc nuw i64 %i.bw to i1
  %i.by = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !range !63, !noalias !10891, !noundef !4 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  br i1 %i.bx, label %bb.t, label %bb.u, !prof !64

bb.t:                                             ; preds = %bb.s
  %i.cb = load i64, ptr %i.ca, align 8, !noalias !10891
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.bz, i64 %i.cb) #37
          to label %bb.dm unwind label %bb.r, !noalias !10894

bb.u:                                             ; preds = %bb.s
  %i.cc = load ptr, ptr %i.ca, align 8, !noalias !10891, !nonnull !4, !noundef !4
  %i.cd = icmp samesign ule i64 %i.bt, %i.bz
  call void @llvm.assume(i1 %i.cd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !10891
  store i64 %i.bz, ptr %i.ac, align 8, !noalias !10891
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 5 uses
  store ptr %i.cc, ptr %i.ce, align 8, !noalias !10891
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 7 uses
  store i64 0, ptr %i.cf, align 8, !noalias !10891
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !alias.scope !10888, !noalias !10896, !nonnull !4, !noundef !4 ; 4 uses
  %i.ci = load i64, ptr %i.ai, align 8, !range !276, !alias.scope !10888, !noalias !10896, !noundef !4
  %.idx.i = mul nuw nsw i64 %i.bt, 24
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.idx.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !10891
  store ptr %i.ch, ptr %i.ab, align 8, !noalias !10891
  %.sroa.513.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 3 uses
  store ptr %i.ch, ptr %.sroa.513.0..sroa_idx.i, align 8, !noalias !10891
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 %i.ci, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !10891
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 24 ; 2 uses
  store ptr %i.cj, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !10891
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8293.i)
  %i.ck = icmp eq i64 %i.bt, 0
  br i1 %i.ck, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.thread.i, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.lr.ph.i

_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.lr.ph.i: ; preds = %bb.u
  %.sroa.8293.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.cm = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.cp = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.cq = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.4182.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sroa.5183.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.ct = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  %i.cv = getelementptr inbounds nuw i8, ptr %i.v, i64 80
  %i.cw = getelementptr inbounds nuw i8, ptr %i.v, i64 84
  %i.cx = getelementptr inbounds nuw i8, ptr %i.v, i64 88
  %.sroa.522.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.623.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.cy = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.sroa.525.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %.sroa.626.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.cz = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.db = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 5 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.4167.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %.sroa.5168.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.df = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  br label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.i

.body271.i:                                       ; preds = %bb.dg, %bb.cz, %.body.i, %.loopexit.split-lp336.i, %.loopexit335.i
  %.pn209.i = phi { ptr, i32 } [ %.pn207.i, %.body.i ], [ %i.jh, %bb.cz ], [ %i.jx, %bb.dg ], [ %lpad.loopexit337.i, %.loopexit335.i ], [ %lpad.loopexit.split-lp338.i, %.loopexit.split-lp336.i ]
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ab)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtBN_6string6StringEECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.bj, !noalias !10894

.loopexit335.i:                                   ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i
  %lpad.loopexit337.i = landingpad { ptr, i32 }
          cleanup
  br label %.body271.i

.loopexit.split-lp336.i:                          ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i281.i
  %lpad.loopexit.split-lp338.i = landingpad { ptr, i32 }
          cleanup
  br label %.body271.i

_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i, %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.lr.ph.i
  %i.dg = phi ptr [ %i.ch, %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.lr.ph.i ], [ %i.jk, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i ] ; 3 uses
  %.sroa.0125.0390.i = phi i64 [ undef, %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.lr.ph.i ], [ %.sroa.0125.2.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10897)
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  store ptr %i.dh, ptr %.sroa.513.0..sroa_idx.i, align 8, !alias.scope !10897, !noalias !10900
  %.sroa.0291.0.copyload292.i = load i64, ptr %i.dg, align 8, !noalias !10902 ; 2 uses
  %.sroa.8293.0..sroa_idx294.i = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8293.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8293.0..sroa_idx294.i, i64 16, i1 false), !noalias !10902
  %.not.i = icmp eq i64 %.sroa.0291.0.copyload292.i, -9223372036854775808
  br i1 %.not.i, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.thread.i, label %bb.v

bb.v:                                             ; preds = %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !10891
  store i64 %.sroa.0291.0.copyload292.i, ptr %i.aa, align 8, !noalias !10891
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8293.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8293.i, i64 16, i1 false), !noalias !10891
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !10891
  %i.di = load ptr, ptr %.sroa.8293.0..sroa_idx.i, align 8, !noalias !10891, !nonnull !4, !noundef !4 ; 2 uses
  %i.dj = load i64, ptr %i.cl, align 8, !noalias !10891, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10903
  invoke void @_RINvMNtCsjyY8HP3IvQ6_12object_store4pathNtB3_4Path5parseReECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.di, i64 noundef %i.dj)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !10894

.noexc.i:                                         ; preds = %bb.v
  %i.dk = load i64, ptr %i.c, align 8, !range !1373, !noalias !10903, !noundef !4
  %.not.i.i = icmp eq i64 %i.dk, -9223372036854775802
  br i1 %.not.i.i, label %.thread.i.i, label %bb.w

bb.w:                                             ; preds = %.noexc.i
  invoke void @_RNvXs0_NtCsjyY8HP3IvQ6_12object_store4pathNtB5_4PathINtNtCsbvkFyIu7lgC_4core7convert4FromReE4from(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.z, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.di, i64 noundef %i.dj)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB14_5ErrorEECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.x, !noalias !10894

.thread.i.i:                                      ; preds = %.noexc.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.cm, i64 24, i1 false), !noalias !10907
  br label %bb.aa

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB14_5ErrorEECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.w
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path5ErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c)
          to label %bb.aa unwind label %.loopexit.i, !noalias !10894

bb.x:                                             ; preds = %bb.w
  %i.dl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB14_5ErrorEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %i.c) #38
          to label %.body.i unwind label %bb.y, !noalias !10908
end_hunk_2
begin_hunk_3_@_RNvMsi_NtCs7p2uQeJxui2_9deltalake10filesystemNtB5_22DeltaFileSystemHandler26___pymethod_get_file_info__:bb.a
  %.sroa.37.16.copyload = load ptr, ptr %.sroa.37.16..sroa.5189.0..sroa_idx.i.sroa_idx, align 8, !noalias !10895
  %.sroa.38.16..sroa.5189.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.iw = load <2 x i64>, ptr %.sroa.38.16..sroa.5189.0..sroa_idx.i.sroa_idx, align 8, !noalias !10895
  %.sroa.40.16..sroa.5189.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.ix = load <2 x i32>, ptr %.sroa.40.16..sroa.5189.0..sroa_idx.i.sroa_idx, align 8, !noalias !10895
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !10891
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTRexEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.g)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapRexEECs7p2uQeJxui2_9deltalake.exit262.i unwind label %.loopexit.split-lp316.i, !noalias !10894

bb.cr:                                            ; preds = %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !10891
  %i.iy = load i64, ptr %i.cf, align 8, !alias.scope !10939, !noalias !10891, !noundef !4 ; 3 uses
  %i.iz = load i64, ptr %i.ac, align 8, !range !276, !alias.scope !10939, !noalias !10891, !noundef !4
  %i.ja = icmp eq i64 %i.iy, %i.iz
  br i1 %i.ja, label %bb.cs, label %bb.cu

bb.cs:                                            ; preds = %bb.cr
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtBR_5types3any5PyAnyEE8grow_oneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %bb.cu unwind label %bb.ct, !noalias !10894

bb.ct:                                            ; preds = %bb.cs
  %i.jb = landingpad { ptr, i32 }
          cleanup
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.0188.0.copyload.i) #41, !noalias !10894
  br label %.body263.i

bb.cu:                                            ; preds = %bb.cs, %bb.cr
  %i.jc = load ptr, ptr %i.ce, align 8, !alias.scope !10939, !noalias !10891, !nonnull !4, !noundef !4
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %i.iy
  store ptr %.sroa.0188.0.copyload.i, ptr %i.jd, align 8, !noalias !10894
  %i.je = add i64 %i.iy, 1
  store i64 %i.je, ptr %i.cf, align 8, !alias.scope !10939, !noalias !10891
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTRexEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.g)
          to label %bb.cv unwind label %.loopexit315.i, !noalias !10894

bb.cv:                                            ; preds = %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !10891
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.0179.0.copyload.i) #41, !noalias !10894
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !10891
  br label %bb.cb

bb.cw:                                            ; preds = %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !10891
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.cx, !noalias !10894

bb.cx:                                            ; preds = %bb.cw
  %i.jf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %.body.i unwind label %bb.cy, !noalias !10894

bb.cy:                                            ; preds = %bb.cx
  %i.jg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !10894
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.cw
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit.i unwind label %.loopexit.i, !noalias !10894

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !10891
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.cz, !noalias !10894

bb.cz:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit.i
  %i.jh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %.body271.i unwind label %bb.da, !noalias !10894

bb.da:                                            ; preds = %bb.cz
  %i.ji = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !10894
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i unwind label %.loopexit335.i, !noalias !10894

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !10891
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8293.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8293.i)
  %i.jj = load ptr, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !10942, !noalias !10900, !nonnull !4, !noundef !4
  %i.jk = load ptr, ptr %.sroa.513.0..sroa_idx.i, align 8, !alias.scope !10942, !noalias !10900, !nonnull !4, !noundef !4 ; 2 uses
  %i.jl = icmp eq ptr %i.jk, %i.jj
  br i1 %i.jl, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.thread.i, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapRexEECs7p2uQeJxui2_9deltalake.exit262.i: ; preds = %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !10891
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.0179.0.copyload.i) #41, !noalias !10894
  br label %bb.db

bb.db:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapRexEECs7p2uQeJxui2_9deltalake.exit262.i, %bb.cl
  %.sroa.37.1 = phi ptr [ %.sroa.37.16.copyload59, %bb.cl ], [ %.sroa.37.16.copyload, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapRexEECs7p2uQeJxui2_9deltalake.exit262.i ]
  %.sroa.13.1.in = phi ptr [ %.sroa.0179.0.copyload.i, %bb.cl ], [ %.sroa.0188.0.copyload.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapRexEECs7p2uQeJxui2_9deltalake.exit262.i ]
  %i.jm = phi <2 x i32> [ %i.io, %bb.cl ], [ %i.ix, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapRexEECs7p2uQeJxui2_9deltalake.exit262.i ]
  %i.jn = phi <2 x i64> [ %i.in, %bb.cl ], [ %i.iw, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapRexEECs7p2uQeJxui2_9deltalake.exit262.i ]
  %i.jo = phi <2 x ptr> [ %i.im, %bb.cl ], [ %i.iv, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapRexEECs7p2uQeJxui2_9deltalake.exit262.i ]
  %.sroa.13.1 = ptrtoint ptr %.sroa.13.1.in to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !10891
  br label %bb.ch

bb.dc:                                            ; preds = %bb.df, %bb.ch
  %.sroa.37.0 = phi ptr [ %.sroa.37.2, %bb.ch ], [ %.sroa.37.8.copyload56, %bb.df ]
  %.sroa.13.0 = phi i64 [ %.sroa.13.2, %bb.ch ], [ %.sroa.13.8.copyload21, %bb.df ]
  %i.jp = phi <2 x i32> [ %i.if, %bb.ch ], [ %i.jw, %bb.df ]
  %i.jq = phi <2 x i64> [ %i.ig, %bb.ch ], [ %i.jv, %bb.df ]
  %i.jr = phi <2 x ptr> [ %i.ih, %bb.ch ], [ %i.ju, %bb.df ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !10891
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i275.i unwind label %bb.dd, !noalias !10894

bb.dd:                                            ; preds = %bb.dc
  %i.js = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %.body.i unwind label %bb.de, !noalias !10894

bb.de:                                            ; preds = %bb.dd
  %i.jt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !10894
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i275.i: ; preds = %bb.dc
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit279.i unwind label %.loopexit.split-lp.i, !noalias !10894

bb.df:                                            ; preds = %bb.ad
  %.sroa.13.8.copyload21 = load i64, ptr %i.d, align 8, !noalias !10895
  %.sroa.27.8..sroa_idx25 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ju = load <2 x ptr>, ptr %.sroa.27.8..sroa_idx25, align 8, !noalias !10895
  %.sroa.37.8..sroa_idx55 = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.37.8.copyload56 = load ptr, ptr %.sroa.37.8..sroa_idx55, align 8, !noalias !10895
  %.sroa.38.8..sroa_idx66 = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.jv = load <2 x i64>, ptr %.sroa.38.8..sroa_idx66, align 8, !noalias !10895
  %.sroa.40.8..sroa_idx88 = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.jw = load <2 x i32>, ptr %.sroa.40.8..sroa_idx88, align 8, !noalias !10895
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10891
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !10891
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.616.i)
  br label %bb.dc

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit279.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i275.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !10891
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i281.i unwind label %bb.dg, !noalias !10894

bb.dg:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit279.i
  %i.jx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %.body271.i unwind label %bb.dh, !noalias !10894

bb.dh:                                            ; preds = %bb.dg
  %i.jy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !10894
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i281.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit279.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit285.i unwind label %.loopexit.split-lp336.i, !noalias !10894

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit285.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i281.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !10891
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8293.i)
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ab)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtBN_6string6StringEECs7p2uQeJxui2_9deltalake.exit287.i unwind label %bb.z, !noalias !10894

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtBN_6string6StringEECs7p2uQeJxui2_9deltalake.exit287.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit285.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !10891
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtBK_5types3any5PyAnyEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %bb.dj unwind label %bb.di, !noalias !10894

bb.di:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtBN_6string6StringEECs7p2uQeJxui2_9deltalake.exit287.i
  %i.jz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtBR_5types3any5PyAnyEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %.body289.i unwind label %bb.dk, !noalias !10894

bb.dj:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtBN_6string6StringEECs7p2uQeJxui2_9deltalake.exit287.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtBR_5types3any5PyAnyEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %bb.dl unwind label %bb.r, !noalias !10894

bb.dk:                                            ; preds = %bb.di
  %i.ka = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !10894
  unreachable

bb.dl:                                            ; preds = %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !10891
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.0107.0.copyload.i) #41, !noalias !10894
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !10891
  %.val.i = load ptr, ptr %i.ag, align 8, !noalias !10891, !nonnull !4, !noundef !4
  call void @_Py_DecRef(ptr noundef nonnull %.val.i) #41, !noalias !10894
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !10891
  %i.kb = inttoptr i64 %.sroa.13.0 to ptr
  br label %bb.dr

bb.dm:                                            ; preds = %bb.t
  unreachable

bb.dn:                                            ; preds = %bb.p, %bb.m
  %.sroa.37.8 = phi ptr [ %.sroa.37.16.copyload65, %bb.m ], [ %.sroa.37.16.copyload64, %bb.p ]
  %.sroa.13.8.in = phi ptr [ %.sroa.0101.0.copyload.i, %bb.m ], [ %.sroa.0107.0.copyload.i, %bb.p ]
  %i.kc = phi <2 x i32> [ %i.bk, %bb.m ], [ %i.br, %bb.p ]
  %i.kd = phi <2 x i64> [ %i.bj, %bb.m ], [ %i.bq, %bb.p ]
  %i.ke = phi <2 x ptr> [ %i.bi, %bb.m ], [ %i.bp, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !10891
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.do, !noalias !10930

bb.do:                                            ; preds = %bb.dn
  %i.kf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %.body unwind label %bb.dp, !noalias !10930

bb.dp:                                            ; preds = %bb.do
  %i.kg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !10930
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.dn
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %bb.dr unwind label %bb.d

bb.dq:                                            ; preds = %.thread299.i, %.thread.i, %.body289.i
  %.pn216298.i = phi { ptr, i32 } [ %i.be, %.thread.i ], [ %.pn213.i, %.body289.i ], [ %i.bl, %.thread299.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai) #38
          to label %.body unwind label %bb.bj, !noalias !10930

bb.dr:                                            ; preds = %bb.dl, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs7p2uQeJxui2_9deltalake.exit.i
  %.sroa.37.9.ph = phi ptr [ %.sroa.37.8, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs7p2uQeJxui2_9deltalake.exit.i ], [ %.sroa.37.0, %bb.dl ]
  %.sroa.13.9.ph = phi ptr [ %.sroa.13.8.in, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs7p2uQeJxui2_9deltalake.exit.i ], [ %i.kb, %bb.dl ]
  %i.kh = phi <2 x i32> [ %i.kc, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs7p2uQeJxui2_9deltalake.exit.i ], [ %i.jp, %bb.dl ]
  %i.ki = phi <2 x i64> [ %i.kd, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs7p2uQeJxui2_9deltalake.exit.i ], [ %i.jq, %bb.dl ]
  %i.kj = phi <2 x ptr> [ %i.ke, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs7p2uQeJxui2_9deltalake.exit.i ], [ %i.jr, %bb.dl ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  br label %bb.dt

bb.ds:                                            ; preds = %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !10891
  %.sroa.13.8.copyload24 = load i64, ptr %i.ac, align 8, !noalias !10895
  %.sroa.27.8..sroa_idx29 = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.kk = load <2 x ptr>, ptr %i.ce, align 8, !noalias !10895
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !10891
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.0107.0.copyload.i) #41, !noalias !10894
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !10891
  %.val218.i = load ptr, ptr %i.ag, align 8, !noalias !10891, !nonnull !4, !noundef !4
  call void @_Py_DecRef(ptr noundef nonnull %.val218.i) #41, !noalias !10894
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !10891
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  store i64 %.sroa.13.8.copyload24, ptr %i.ah, align 8
  store <2 x ptr> %i.kk, ptr %.sroa.27.8..sroa_idx29, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10944
  invoke void @_RINvYINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB8_5types3any5PyAnyENtNtB8_10conversion12IntoPyObject28owned_sequence_into_pyobjectINtNtCs6Po7BT7Nknu_5alloc3vec3VecB3_EECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ah)
          to label %.noexc18 unwind label %bb.d

.noexc18:                                         ; preds = %bb.ds
  %i.kl = load i64, ptr %i.b, align 8, !range !3, !noalias !10944, !noundef !4
  %i.km = trunc nuw i64 %i.kl to i1
  %i.kn = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.8.copyload112 = load ptr, ptr %i.kn, align 8, !noalias !10948 ; 2 uses
  br i1 %i.km, label %.thread, label %bb.du

.thread:                                          ; preds = %.noexc18
  %.sroa.10.8..sroa_idx114 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ko = load <2 x ptr>, ptr %.sroa.10.8..sroa_idx114, align 8, !noalias !10948
  %.sroa.10.sroa.6.0..sroa.10.8..sroa_idx114.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.10.sroa.6.0.copyload121 = load ptr, ptr %.sroa.10.sroa.6.0..sroa.10.8..sroa_idx114.sroa_idx, align 8, !noalias !10948
  %.sroa.10.sroa.7.0..sroa.10.8..sroa_idx114.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.kp = load <2 x i64>, ptr %.sroa.10.sroa.7.0..sroa.10.8..sroa_idx114.sroa_idx, align 8, !noalias !10948
  %.sroa.10.sroa.9.0..sroa.10.8..sroa_idx114.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.kq = load <2 x i32>, ptr %.sroa.10.sroa.9.0..sroa.10.8..sroa_idx114.sroa_idx, align 8, !noalias !10948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10944
  br label %bb.dt

bb.dt:                                            ; preds = %.thread, %bb.dr
  %.sroa.10.sroa.6.0 = phi ptr [ %.sroa.37.9.ph, %bb.dr ], [ %.sroa.10.sroa.6.0.copyload121, %.thread ]
  %.sroa.5.0 = phi ptr [ %.sroa.13.9.ph, %bb.dr ], [ %.sroa.5.8.copyload112, %.thread ]
  %i.kr = phi <2 x i32> [ %i.kh, %bb.dr ], [ %i.kq, %.thread ]
  %i.ks = phi <2 x i64> [ %i.ki, %bb.dr ], [ %i.kp, %.thread ]
  %i.kt = phi <2 x ptr> [ %i.kj, %bb.dr ], [ %i.ko, %.thread ]
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0, ptr %i.ku, align 8
  %.sroa.5127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x ptr> %i.kt, ptr %.sroa.5127.0..sroa_idx, align 8
  %.sroa.7128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.10.sroa.6.0, ptr %.sroa.7128.0..sroa_idx, align 8
  %.sroa.8129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store <2 x i64> %i.ks, ptr %.sroa.8129.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store <2 x i32> %i.kr, ptr %.sroa.10.0..sroa_idx, align 8
  br label %bb.dv

bb.du:                                            ; preds = %.noexc18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10944
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.8.copyload112, ptr %i.kv, align 8
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %storemerge = phi i64 [ 0, %bb.du ], [ 1, %bb.dt ]
  store i64 %storemerge, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  %i.kw = load ptr, ptr %i.al, align 8, !alias.scope !10949, !noundef !4
  %i.kx = icmp eq ptr %i.kw, null
  br i1 %i.kx, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit19, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  call void @_RNvXs4_NtNtCsgbCypRs12E4_4pyo37pyclass5guardINtB5_12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB14_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.al)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit19

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit19: ; preds = %bb.dv, %bb.dw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  br label %bb.dx

bb.dx:                                            ; preds = %bb.b, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit20, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  ret void

bb.dy:                                            ; preds = %bb.j, %bb.g
  %i.ky = load ptr, ptr %i.al, align 8, !alias.scope !10952, !noundef !4
  %i.kz = icmp eq ptr %i.ky, null
  br i1 %i.kz, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit20, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  call void @_RNvXs4_NtNtCsgbCypRs12E4_4pyo37pyclass5guardINtB5_12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB14_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.al)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit20

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit20: ; preds = %bb.dy, %bb.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  br label %bb.dx

bb.ea:                                            ; preds = %bb.e
  %i.la = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit: ; preds = %.body, %bb.e
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvMsi_NtCs7p2uQeJxui2_9deltalake10filesystemNtB5_22DeltaFileSystemHandler26___pymethod_get_type_name__(ptr dead_on_unwind noalias noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [64 x i8], align 8                ; 7 uses
  %i.d = alloca [8 x i8], align 8                 ; 9 uses
  %i.e = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr null, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke fastcc void @_RINvNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument19extract_pyclass_refNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEB1c_(ptr noalias noundef align 8 captures(none) dereferenceable(64) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e, ptr noalias noundef align 8 dereferenceable(8) %i.d)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %i.d, align 8, !alias.scope !10955, !noundef !4
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvXs4_NtNtCsgbCypRs12E4_4pyo37pyclass5guardINtB5_12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB14_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit unwind label %bb.j

bb.d:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.c, align 8, !range !3, !noundef !4
  %i.j = trunc nuw i64 %i.i to i1
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.07.0.copyload = load ptr, ptr %i.k, align 8
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.210.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.58.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.07.0.copyload, ptr %i.l, align 8
  store i64 1, ptr %0, align 8
  %i.m = load ptr, ptr %i.d, align 8, !alias.scope !10958, !noundef !4
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit13, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit13.sink.split

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10961
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 12, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc14 unwind label %bb.b

.noexc14:                                         ; preds = %bb.f
  %i.o = load i64, ptr %i.a, align 8, !range !3, !noalias !10961, !noundef !4
  %i.p = trunc nuw i64 %i.o to i1
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !63, !noalias !10961, !noundef !4 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.p, label %bb.g, label %bb.h, !prof !64

bb.g:                                             ; preds = %.noexc14
  %i.t = load i64, ptr %i.s, align 8, !noalias !10961
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.r, i64 %i.t) #37
          to label %.noexc15 unwind label %bb.b

.noexc15:                                         ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %.noexc14
  %i.u = load ptr, ptr %i.s, align 8, !noalias !10961, !nonnull !4, !noundef !4 ; 2 uses
  %i.v = icmp samesign ugt i64 %i.r, 11
  call void @llvm.assume(i1 %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10961
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.u, ptr noundef nonnull align 1 dereferenceable(12) @302, i64 12, i1 false), !noalias !10961
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.r, ptr %i.b, align 8
  %.sroa.25.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.u, ptr %.sroa.25.sroa.2.0..sroa_idx, align 8
  %.sroa.25.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 12, ptr %.sroa.25.sroa.3.0..sroa_idx, align 8
  %i.w = invoke noundef nonnull ptr @_RNvXs4_NtNtNtCsgbCypRs12E4_4pyo311conversions3std6stringNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtBb_10conversion12IntoPyObject13into_pyobject(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.i unwind label %bb.b

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.x, align 8
  store i64 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.y = load ptr, ptr %i.d, align 8, !alias.scope !10964, !noundef !4
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit13, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit13.sink.split

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit13.sink.split: ; preds = %bb.i, %bb.e
  call void @_RNvXs4_NtNtCsgbCypRs12E4_4pyo37pyclass5guardINtB5_12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB14_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit13

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit13: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit13.sink.split, %bb.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.j:                                             ; preds = %bb.c
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit: ; preds = %bb.b, %bb.c
end_hunk_3
