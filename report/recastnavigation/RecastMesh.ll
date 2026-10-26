Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/RecastMesh?download=true
inline.NumInlined: 287
inline.NumDeleted: 47
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_Z15rcBuildPolyMeshP9rcContextRK12rcContourSetiR10rcPolyMesh:bb.a
  %.0348746 = phi i32 [ 0, %.lr.ph.new ], [ %.1349.1, %bb.h ] ; 2 uses
  %.0350745 = phi i32 [ 0, %.lr.ph.new ], [ %.1351.1, %bb.h ] ; 2 uses
  %.0352744 = phi i32 [ 0, %.lr.ph.new ], [ %.1353.1, %bb.h ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.h ]
  %i.av = getelementptr inbounds nuw [32 x i8], ptr %i.ak, i64 %indvars.iv
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !112 ; 4 uses
  %i.ay = icmp slt i32 %i.ax, 3
  br i1 %i.ay, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.az = add nuw nsw i32 %i.ax, %.0352744
  %i.ba = add i32 %.0350745, -2
  %i.bb = add i32 %i.ba, %i.ax
  %i.bc = tail call noundef i32 @llvm.smax.i32(i32 %.0348746, i32 %i.ax)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.1353 = phi i32 [ %.0352744, %bb.d ], [ %i.az, %bb.e ] ; 2 uses
  %.1351 = phi i32 [ %.0350745, %bb.d ], [ %i.bb, %bb.e ] ; 2 uses
  %.1349 = phi i32 [ %.0348746, %bb.d ], [ %i.bc, %bb.e ] ; 2 uses
  %i.bd = getelementptr inbounds nuw [32 x i8], ptr %i.ak, i64 %indvars.iv
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !112 ; 4 uses
  %i.bg = icmp slt i32 %i.bf, 3
  br i1 %i.bg, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bh = add nuw nsw i32 %i.bf, %.1353
  %i.bi = add i32 %.1351, -2
  %i.bj = add i32 %i.bi, %i.bf
  %i.bk = tail call noundef i32 @llvm.smax.i32(i32 %.1349, i32 %i.bf)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1353.1 = phi i32 [ %.1353, %bb.f ], [ %i.bh, %bb.g ] ; 3 uses
  %.1351.1 = phi i32 [ %.1351, %bb.f ], [ %i.bj, %bb.g ] ; 3 uses
  %.1349.1 = phi i32 [ %.1349, %bb.f ], [ %i.bk, %bb.g ] ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %bb.d

bb.i:                                             ; preds = %._crit_edge
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str, i32 noundef %.1353.lcssa) #8
  br label %bb.fb

._crit_edge.thread:                               ; preds = %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit, %._crit_edge
  %.0348.lcssa1117 = phi i32 [ %.1349.lcssa, %._crit_edge ], [ 0, %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit ] ; 5 uses
  %.0350.lcssa1116 = phi i32 [ %.1351.lcssa, %._crit_edge ], [ 0, %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit ] ; 10 uses
  %.0352.lcssa1115 = phi i32 [ %.1353.lcssa, %._crit_edge ], [ 0, %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit ] ; 4 uses
  %i.bl = zext nneg i32 %.0352.lcssa1115 to i64   ; 4 uses
  %i.bm = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.bl, i32 noundef 1) #8 ; 7 uses
  %.not = icmp eq ptr %i.bm, null
  br i1 %.not, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge.thread
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.1, i32 noundef %.0352.lcssa1115) #8
  br label %bb.fa

bb.k:                                             ; preds = %._crit_edge.thread
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bm, i8 0, i64 %i.bl, i1 false)
  %i.bn = mul nuw nsw i64 %i.bl, 6                ; 2 uses
  %i.bo = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.bn, i32 noundef 0) #8 ; 2 uses
  store ptr %i.bo, ptr %3, align 8, !tbaa !68
  %.not380 = icmp eq ptr %i.bo, null
  br i1 %.not380, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.2, i32 noundef %.0352.lcssa1115) #8
  br label %bb.fa

bb.m:                                             ; preds = %bb.k
  %i.bp = zext nneg i32 %.0350.lcssa1116 to i64   ; 3 uses
  %i.bq = shl nuw nsw i64 %i.bp, 1                ; 3 uses
  %i.br = sext i32 %2 to i64                      ; 5 uses
  %i.bs = shl nsw i64 %i.br, 1                    ; 3 uses
  %i.bt = mul i64 %i.bs, %i.bq                    ; 2 uses
  %i.bu = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.bt, i32 noundef 0) #8 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 11 uses
  store ptr %i.bu, ptr %i.bv, align 8, !tbaa !69
  %.not381 = icmp eq ptr %i.bu, null
  br i1 %.not381, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bw = shl i32 %2, 1
  %i.bx = mul i32 %i.bw, %.0350.lcssa1116
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.3, i32 noundef %i.bx) #8
  br label %bb.fa

bb.o:                                             ; preds = %bb.m
  %i.by = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.bq, i32 noundef 0) #8 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.by, ptr %i.bz, align 8, !tbaa !70
  %.not382 = icmp eq ptr %i.by, null
  br i1 %.not382, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.4, i32 noundef %.0350.lcssa1116) #8
  br label %bb.fa

bb.q:                                             ; preds = %bb.o
  %i.ca = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.bp, i32 noundef 0) #8 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 6 uses
  store ptr %i.ca, ptr %i.cb, align 8, !tbaa !71
  %.not383 = icmp eq ptr %i.ca, null
  br i1 %.not383, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.5, i32 noundef %.0350.lcssa1116) #8
  br label %bb.fa

bb.s:                                             ; preds = %bb.q
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 10 uses
  store i32 0, ptr %i.cc, align 8, !tbaa !72
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 21 uses
  store i32 0, ptr %i.cd, align 4, !tbaa !73
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 52 ; 3 uses
  store i32 %2, ptr %i.ce, align 4, !tbaa !74
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i32 %.0350.lcssa1116, ptr %i.cf, align 8, !tbaa !75
  %i.cg = load ptr, ptr %3, align 8, !tbaa !68
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.cg, i8 0, i64 %i.bn, i1 false)
  %i.ch = load ptr, ptr %i.bv, align 8, !tbaa !69
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.ch, i8 -1, i64 %i.bt, i1 false)
  %i.ci = load ptr, ptr %i.bz, align 8, !tbaa !70
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.ci, i8 0, i64 %i.bq, i1 false)
  %i.cj = load ptr, ptr %i.cb, align 8, !tbaa !71
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.cj, i8 0, i64 %i.bp, i1 false)
  %i.ck = shl nuw nsw i64 %i.bl, 2                ; 2 uses
  %i.cl = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.ck, i32 noundef 1) #8 ; 5 uses
  %.not384 = icmp eq ptr %i.cl, null
  br i1 %.not384, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.6, i32 noundef %.0352.lcssa1115) #8
  br label %bb.ez

bb.u:                                             ; preds = %bb.s
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.cl, i8 0, i64 %i.ck, i1 false)
  %i.cm = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef 16384, i32 noundef 1) #8 ; 4 uses
  %.not385 = icmp eq ptr %i.cm, null
  br i1 %.not385, label %bb.v, label %.preheader604.preheader

.preheader604.preheader:                          ; preds = %bb.u
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16384) %i.cm, i8 -1, i64 16384, i1 false), !tbaa !76
  %i.cn = zext nneg i32 %.0348.lcssa1117 to i64   ; 2 uses
  %i.co = shl nuw nsw i64 %i.cn, 2
  %i.cp = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.co, i32 noundef 1) #8 ; 8 uses
  %.not386 = icmp eq ptr %i.cp, null
  br i1 %.not386, label %bb.w, label %bb.x

bb.v:                                             ; preds = %bb.u
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.7, i32 noundef 4096) #8
  br label %bb.ey

bb.w:                                             ; preds = %.preheader604.preheader
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.8, i32 noundef %.0348.lcssa1117) #8
  br label %bb.ex

bb.x:                                             ; preds = %.preheader604.preheader
  %i.cq = mul nuw nsw i64 %i.cn, 12
  %i.cr = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.cq, i32 noundef 1) #8 ; 4 uses
  %.not387 = icmp eq ptr %i.cr, null
  br i1 %.not387, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cs = mul nsw i32 %.0348.lcssa1117, 3
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.9, i32 noundef %i.cs) #8
  br label %bb.ew

bb.z:                                             ; preds = %bb.x
  %i.ct = add nuw nsw i32 %.0348.lcssa1117, 1
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = mul nsw i64 %i.bs, %i.cu
  %i.cw = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.cv, i32 noundef 1) #8 ; 12 uses
  %i.cx = ptrtoaddr ptr %i.cw to i64
  %.not388 = icmp eq ptr %i.cw, null
  %i.cy = mul nsw i32 %.0348.lcssa1117, %2        ; 2 uses
  br i1 %.not388, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.10, i32 noundef %i.cy) #8
  br label %bb.ev

bb.ab:                                            ; preds = %bb.z
  %i.cz = sext i32 %i.cy to i64                   ; 2 uses
  %i.da = getelementptr inbounds [2 x i8], ptr %i.cw, i64 %i.cz ; 8 uses
  %i.db = load i32, ptr %i.ah, align 8, !tbaa !108
  %.not397798 = icmp sgt i32 %i.db, 0
  br i1 %.not397798, label %.lr.ph801, label %.critedge405.preheader

.lr.ph801:                                        ; preds = %bb.ab
  %i.dc = shl nsw i64 %i.cz, 1
  %i.dd = icmp sgt i32 %2, 3
  %wide.trip.count.i.i = zext i32 %2 to i64       ; 14 uses
  %i.de = shl i32 %2, 1                           ; 2 uses
  %i.df = zext i32 %i.de to i64                   ; 2 uses
  %i.dg = icmp sgt i32 %2, 0
  %i.dh = mul nsw i64 %i.br, -2
  %min.iters.check = icmp samesign ult i32 %2, 4
  %min.iters.check1416 = icmp samesign ult i32 %2, 16
  %i.di = and i64 %wide.trip.count.i.i, 12
  %n.vec = and i64 %wide.trip.count.i.i, 2147483632 ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  %min.epilog.iters.check = icmp eq i64 %i.di, 0
  %n.vec1418 = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  %cmp.n1422 = icmp eq i64 %n.vec1418, %wide.trip.count.i.i
  %xtraiter1782 = and i64 %wide.trip.count.i.i, 3 ; 2 uses
  %lcmp.mod1783.not = icmp eq i64 %xtraiter1782, 0
  br label %bb.ac

.critedge405.preheader:                           ; preds = %.loopexit601, %bb.ab
  %i.dj = load i32, ptr %i.cc, align 8, !tbaa !72 ; 2 uses
  %.not399812 = icmp sgt i32 %i.dj, 0
  br i1 %.not399812, label %.lr.ph814, label %.critedge407

bb.ac:                                            ; preds = %.lr.ph801, %.loopexit601
  %indvars.iv1004 = phi i64 [ 0, %.lr.ph801 ], [ %indvars.iv.next1005, %.loopexit601 ] ; 3 uses
  %i.dk = load ptr, ptr %1, align 8, !tbaa !109
  %i.dl = getelementptr inbounds nuw [32 x i8], ptr %i.dk, i64 %indvars.iv1004 ; 5 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8 ; 4 uses
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !112
  %i.do = icmp slt i32 %i.dn, 3
  br i1 %i.do, label %.loopexit601, label %.lr.ph752

._crit_edge753:                                   ; preds = %.lr.ph752
  %i.dp = load ptr, ptr %i.dl, align 8, !tbaa !113
  %i.dq = tail call fastcc noundef i32 @_ZL11triangulateiPKiPiS1_(i32 noundef %i.du, ptr noundef %i.dp, ptr noundef nonnull %i.cp, ptr noundef nonnull %i.cr) ; 3 uses
  %i.dr = icmp slt i32 %i.dq, 1
  br i1 %i.dr, label %bb.ad, label %bb.ae

.lr.ph752:                                        ; preds = %bb.ac, %.lr.ph752
  %indvars.iv966 = phi i64 [ %indvars.iv.next967, %.lr.ph752 ], [ 0, %bb.ac ] ; 3 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %indvars.iv966
  %i.dt = trunc nuw nsw i64 %indvars.iv966 to i32
  store i32 %i.dt, ptr %i.ds, align 4, !tbaa !76
  %indvars.iv.next967 = add nuw nsw i64 %indvars.iv966, 1 ; 2 uses
  %i.du = load i32, ptr %i.dm, align 8, !tbaa !112 ; 2 uses
  %i.dv = sext i32 %i.du to i64
  %i.dw = icmp slt i64 %indvars.iv.next967, %i.dv
  br i1 %i.dw, label %.lr.ph752, label %._crit_edge753

bb.ad:                                            ; preds = %._crit_edge753
  %i.dx = trunc nuw nsw i64 %indvars.iv1004 to i32
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 2, ptr noundef nonnull @.str.11, i32 noundef %i.dx) #8
  %i.dy = sub nsw i32 0, %i.dq
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %._crit_edge753
  %.0338 = phi i32 [ %i.dy, %bb.ad ], [ %i.dq, %._crit_edge753 ] ; 2 uses
  %i.dz = load i32, ptr %i.dm, align 8, !tbaa !112
  %i.ea = icmp sgt i32 %i.dz, 0
  br i1 %i.ea, label %.lr.ph757, label %._crit_edge758

._crit_edge758:                                   ; preds = %bb.ak, %bb.ae
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.cw, i8 -1, i64 %i.dc, i1 false)
  %.not823 = icmp eq i32 %.0338, 0
  br i1 %.not823, label %.loopexit601, label %.lr.ph762.preheader

.lr.ph762.preheader:                              ; preds = %._crit_edge758
  %wide.trip.count975 = zext nneg i32 %.0338 to i64
  br label %.lr.ph762

.lr.ph757:                                        ; preds = %bb.ae, %bb.ak
  %indvars.iv969 = phi i64 [ %indvars.iv.next970, %bb.ak ], [ 0, %bb.ae ] ; 3 uses
  %i.eb = load ptr, ptr %i.dl, align 8, !tbaa !113
  %.idx1110 = shl nuw nsw i64 %indvars.iv969, 4
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 %.idx1110 ; 4 uses
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !76 ; 2 uses
  %i.ee = trunc i32 %i.ed to i16                  ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !76 ; 2 uses
  %i.eh = trunc i32 %i.eg to i16
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !76 ; 2 uses
  %i.ek = trunc i32 %i.ej to i16                  ; 2 uses
  %i.el = load ptr, ptr %3, align 8, !tbaa !68    ; 2 uses
  %narrow = mul i32 %i.ed, 835
  %narrow595 = mul i32 %i.ej, 799
  %narrow596 = add i32 %narrow595, %narrow
  %i.em = and i32 %narrow596, 4095
  %i.en = zext nneg i32 %i.em to i64
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.en ; 3 uses
  %.03642.i = load i32, ptr %i.eo, align 4, !tbaa !76 ; 2 uses
  %.not43.i = icmp eq i32 %.03642.i, -1
  br i1 %.not43.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph757
  %i.ep = and i32 %i.eg, 65535
  %invariant.op = sub i32 2, %i.ep
  br label %bb.af

bb.af:                                            ; preds = %bb.ai, %.lr.ph.i
  %.03644.i = phi i32 [ %.03642.i, %.lr.ph.i ], [ %.036.i, %bb.ai ] ; 3 uses
  %i.eq = mul nsw i32 %.03644.i, 3
  %i.er = sext i32 %i.eq to i64
  %i.es = getelementptr inbounds [2 x i8], ptr %i.el, i64 %i.er ; 3 uses
  %i.et = load i16, ptr %i.es, align 2, !tbaa !77
  %i.eu = icmp eq i16 %i.et, %i.ee
  br i1 %i.eu, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 2
  %i.ew = load i16, ptr %i.ev, align 2, !tbaa !77
  %i.ex = zext i16 %i.ew to i32
  %.reass.i.reass.reass = add i32 %i.ex, %invariant.op
  %i.ey = icmp ult i32 %.reass.i.reass.reass, 5
  br i1 %i.ey, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ez = getelementptr inbounds nuw i8, ptr %i.es, i64 4
  %i.fa = load i16, ptr %i.ez, align 2, !tbaa !77
  %i.fb = icmp eq i16 %i.fa, %i.ek
  br i1 %i.fb, label %_ZL9addVertextttPtPiS0_Ri.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.af
  %i.fc = sext i32 %.03644.i to i64
  %i.fd = getelementptr inbounds [4 x i8], ptr %i.cl, i64 %i.fc
  %.036.i = load i32, ptr %i.fd, align 4, !tbaa !76 ; 2 uses
  %.not.i = icmp eq i32 %.036.i, -1
  br i1 %.not.i, label %._crit_edge.i, label %bb.af

._crit_edge.i:                                    ; preds = %bb.ai, %.lr.ph757
  %i.fe = load i32, ptr %i.cc, align 8, !tbaa !76 ; 5 uses
  %i.ff = add nsw i32 %i.fe, 1
  store i32 %i.ff, ptr %i.cc, align 8, !tbaa !76
  %i.fg = mul nsw i32 %i.fe, 3
  %i.fh = sext i32 %i.fg to i64
  %i.fi = getelementptr inbounds [2 x i8], ptr %i.el, i64 %i.fh ; 3 uses
  store i16 %i.ee, ptr %i.fi, align 2, !tbaa !77
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 2
  store i16 %i.eh, ptr %i.fj, align 2, !tbaa !77
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 4
  store i16 %i.ek, ptr %i.fk, align 2, !tbaa !77
  %i.fl = load i32, ptr %i.eo, align 4, !tbaa !76
  %i.fm = sext i32 %i.fe to i64
  %i.fn = getelementptr inbounds [4 x i8], ptr %i.cl, i64 %i.fm
  store i32 %i.fl, ptr %i.fn, align 4, !tbaa !76
  store i32 %i.fe, ptr %i.eo, align 4, !tbaa !76
  br label %_ZL9addVertextttPtPiS0_Ri.exit

_ZL9addVertextttPtPiS0_Ri.exit:                   ; preds = %bb.ah, %._crit_edge.i
  %.2.in.i = phi i32 [ %i.fe, %._crit_edge.i ], [ %.03644.i, %bb.ah ]
  %i.fo = and i32 %.2.in.i, 65535                 ; 2 uses
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %indvars.iv969
  store i32 %i.fo, ptr %i.fp, align 4, !tbaa !76
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ec, i64 12
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !76
  %i.fs = and i32 %i.fr, 65536
  %.not396 = icmp eq i32 %i.fs, 0
  br i1 %.not396, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %_ZL9addVertextttPtPiS0_Ri.exit
  %i.ft = zext nneg i32 %i.fo to i64
  %i.fu = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.ft
  store i8 1, ptr %i.fu, align 1, !tbaa !78
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %_ZL9addVertextttPtPiS0_Ri.exit
  %indvars.iv.next970 = add nuw nsw i64 %indvars.iv969, 1 ; 2 uses
  %i.fv = load i32, ptr %i.dm, align 8, !tbaa !112
  %i.fw = sext i32 %i.fv to i64
  %i.fx = icmp slt i64 %indvars.iv.next970, %i.fw
  br i1 %i.fx, label %.lr.ph757, label %._crit_edge758

._crit_edge763:                                   ; preds = %bb.an
  %.not389 = icmp eq i32 %.1335, 0
  br i1 %.not389, label %.loopexit601, label %bb.ao

.lr.ph762:                                        ; preds = %.lr.ph762.preheader, %bb.an
  %indvars.iv972 = phi i64 [ 0, %.lr.ph762.preheader ], [ %indvars.iv.next973, %bb.an ] ; 2 uses
  %.0334759 = phi i32 [ 0, %.lr.ph762.preheader ], [ %.1335, %bb.an ] ; 4 uses
  %.idx1111 = mul nuw nsw i64 %indvars.iv972, 12
  %i.fy = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.idx1111 ; 3 uses
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !76 ; 3 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fy, i64 4
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !76 ; 3 uses
  %.not393 = icmp eq i32 %i.fz, %i.gb
  br i1 %.not393, label %bb.an, label %bb.al

bb.al:                                            ; preds = %.lr.ph762
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !76 ; 3 uses
  %.not394 = icmp eq i32 %i.fz, %i.gd
  %.not395 = icmp eq i32 %i.gb, %i.gd
  %or.cond = or i1 %.not394, %.not395
  br i1 %or.cond, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ge = sext i32 %i.fz to i64
  %i.gf = getelementptr inbounds [4 x i8], ptr %i.cp, i64 %i.ge
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !76
  %i.gh = trunc i32 %i.gg to i16
  %i.gi = mul nsw i32 %.0334759, %2
  %i.gj = sext i32 %i.gi to i64
  %i.gk = getelementptr inbounds [2 x i8], ptr %i.cw, i64 %i.gj ; 3 uses
  store i16 %i.gh, ptr %i.gk, align 2, !tbaa !77
  %i.gl = sext i32 %i.gb to i64
  %i.gm = getelementptr inbounds [4 x i8], ptr %i.cp, i64 %i.gl
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !76
  %i.go = trunc i32 %i.gn to i16
end_hunk_0
begin_hunk_1_@_Z15rcBuildPolyMeshP9rcContextRK12rcContourSetiR10rcPolyMesh:bb.a
bb.be:                                            ; preds = %.lr.ph797, %bb.bd
  %i.pd = phi i32 [ %.pre, %.lr.ph797 ], [ %i.qm, %bb.bd ] ; 2 uses
  %indvars.iv999 = phi i64 [ 0, %.lr.ph797 ], [ %indvars.iv.next1000, %bb.bd ] ; 3 uses
  %i.pe = mul i64 %i.dh, %indvars.iv999
  %i.pf = sub i64 %i.pe, %i.cx
  %i.pg = load ptr, ptr %i.bv, align 8, !tbaa !69 ; 2 uses
  %i.ph = ptrtoaddr ptr %i.pg to i64
  %i.pi = mul i32 %i.de, %i.pd
  %i.pj = sext i32 %i.pi to i64                   ; 2 uses
  %i.pk = getelementptr inbounds [2 x i8], ptr %i.pg, i64 %i.pj ; 7 uses
  %i.pl = mul nsw i64 %indvars.iv999, %i.br
  %i.pm = getelementptr inbounds [2 x i8], ptr %i.cw, i64 %i.pl ; 7 uses
  br i1 %i.dg, label %iter.check, label %.critedge

iter.check:                                       ; preds = %bb.be
  br i1 %min.iters.check, label %.lr.ph793.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.pn = add i64 %i.pf, %i.ph
  %i.po = shl nsw i64 %i.pj, 1
  %i.pp = add i64 %i.pn, %i.po
  %i.pq = add i64 %i.pp, -1
  %diff.check = icmp ult i64 %i.pq, 31
  br i1 %diff.check, label %.lr.ph793.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check1416, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.pr = getelementptr inbounds nuw [2 x i8], ptr %i.pm, i64 %index ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 16
  %wide.load = load <8 x i16>, ptr %i.pr, align 2, !tbaa !77
  %wide.load1417 = load <8 x i16>, ptr %i.ps, align 2, !tbaa !77
  %i.pt = getelementptr inbounds nuw [2 x i8], ptr %i.pk, i64 %index ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 16
  store <8 x i16> %wide.load, ptr %i.pt, align 2, !tbaa !77
  store <8 x i16> %wide.load1417, ptr %i.pu, align 2, !tbaa !77
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.pv = icmp eq i64 %index.next, %n.vec
  br i1 %i.pv, label %middle.block, label %vector.body, !llvm.loop !84

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.critedge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph793.preheader, label %vec.epilog.ph, !prof !114

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1419 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1421, %vec.epilog.vector.body ] ; 3 uses
  %i.pw = getelementptr inbounds nuw [2 x i8], ptr %i.pm, i64 %index1419
  %wide.load1420 = load <4 x i16>, ptr %i.pw, align 2, !tbaa !77
  %i.px = getelementptr inbounds nuw [2 x i8], ptr %i.pk, i64 %index1419
  store <4 x i16> %wide.load1420, ptr %i.px, align 2, !tbaa !77
  %index.next1421 = add nuw i64 %index1419, 4     ; 2 uses
  %i.py = icmp eq i64 %index.next1421, %n.vec1418
  br i1 %i.py, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !85

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n1422, label %.critedge, label %.lr.ph793.preheader

.lr.ph793.preheader:                              ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv994.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec1418, %vec.epilog.middle.block ] ; 3 uses
  br i1 %lcmp.mod1783.not, label %.lr.ph793.prol.loopexit, label %.lr.ph793.prol

.lr.ph793.prol:                                   ; preds = %.lr.ph793.preheader, %.lr.ph793.prol
  %indvars.iv994.prol = phi i64 [ %indvars.iv.next995.prol, %.lr.ph793.prol ], [ %indvars.iv994.ph, %.lr.ph793.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph793.prol ], [ 0, %.lr.ph793.preheader ]
  %i.pz = getelementptr inbounds nuw [2 x i8], ptr %i.pm, i64 %indvars.iv994.prol
  %i.qa = load i16, ptr %i.pz, align 2, !tbaa !77
  %i.qb = getelementptr inbounds nuw [2 x i8], ptr %i.pk, i64 %indvars.iv994.prol
  store i16 %i.qa, ptr %i.qb, align 2, !tbaa !77
  %indvars.iv.next995.prol = add nuw nsw i64 %indvars.iv994.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter1782
  br i1 %prol.iter.cmp.not, label %.lr.ph793.prol.loopexit, label %.lr.ph793.prol, !llvm.loop !86

.lr.ph793.prol.loopexit:                          ; preds = %.lr.ph793.prol, %.lr.ph793.preheader
  %indvars.iv994.unr = phi i64 [ %indvars.iv994.ph, %.lr.ph793.preheader ], [ %indvars.iv.next995.prol, %.lr.ph793.prol ]
  %i.qc = sub nsw i64 %indvars.iv994.ph, %wide.trip.count.i.i
  %i.qd = icmp ugt i64 %i.qc, -4
  br i1 %i.qd, label %.critedge, label %.lr.ph793

.critedge:                                        ; preds = %.lr.ph793.prol.loopexit, %.lr.ph793, %middle.block, %vec.epilog.middle.block, %bb.be
  %i.qe = load i16, ptr %i.pb, align 4, !tbaa !116
  %i.qf = load ptr, ptr %i.bz, align 8, !tbaa !70
  %i.qg = sext i32 %i.pd to i64                   ; 2 uses
  %i.qh = getelementptr inbounds [2 x i8], ptr %i.qf, i64 %i.qg
  store i16 %i.qe, ptr %i.qh, align 2, !tbaa !77
  %i.qi = load i8, ptr %i.pc, align 2, !tbaa !117
  %i.qj = load ptr, ptr %i.cb, align 8, !tbaa !71
  %i.qk = getelementptr inbounds i8, ptr %i.qj, i64 %i.qg
  store i8 %i.qi, ptr %i.qk, align 1, !tbaa !78
  %i.ql = load i32, ptr %i.cd, align 4, !tbaa !73 ; 2 uses
  %i.qm = add nsw i32 %i.ql, 1                    ; 3 uses
  store i32 %i.qm, ptr %i.cd, align 4, !tbaa !73
  %.not391 = icmp slt i32 %i.ql, %.0350.lcssa1116
  br i1 %.not391, label %bb.bd, label %bb.bf

.lr.ph793:                                        ; preds = %.lr.ph793.prol.loopexit, %.lr.ph793
  %indvars.iv994 = phi i64 [ %indvars.iv.next995.3, %.lr.ph793 ], [ %indvars.iv994.unr, %.lr.ph793.prol.loopexit ] ; 6 uses
  %i.qn = getelementptr inbounds nuw [2 x i8], ptr %i.pm, i64 %indvars.iv994
  %i.qo = load i16, ptr %i.qn, align 2, !tbaa !77
  %i.qp = getelementptr inbounds nuw [2 x i8], ptr %i.pk, i64 %indvars.iv994
  store i16 %i.qo, ptr %i.qp, align 2, !tbaa !77
  %indvars.iv.next995 = add nuw nsw i64 %indvars.iv994, 1 ; 2 uses
  %i.qq = getelementptr inbounds nuw [2 x i8], ptr %i.pm, i64 %indvars.iv.next995
  %i.qr = load i16, ptr %i.qq, align 2, !tbaa !77
  %i.qs = getelementptr inbounds nuw [2 x i8], ptr %i.pk, i64 %indvars.iv.next995
  store i16 %i.qr, ptr %i.qs, align 2, !tbaa !77
  %indvars.iv.next995.1 = add nuw nsw i64 %indvars.iv994, 2 ; 2 uses
  %i.qt = getelementptr inbounds nuw [2 x i8], ptr %i.pm, i64 %indvars.iv.next995.1
  %i.qu = load i16, ptr %i.qt, align 2, !tbaa !77
  %i.qv = getelementptr inbounds nuw [2 x i8], ptr %i.pk, i64 %indvars.iv.next995.1
  store i16 %i.qu, ptr %i.qv, align 2, !tbaa !77
  %indvars.iv.next995.2 = add nuw nsw i64 %indvars.iv994, 3 ; 2 uses
  %i.qw = getelementptr inbounds nuw [2 x i8], ptr %i.pm, i64 %indvars.iv.next995.2
  %i.qx = load i16, ptr %i.qw, align 2, !tbaa !77
  %i.qy = getelementptr inbounds nuw [2 x i8], ptr %i.pk, i64 %indvars.iv.next995.2
  store i16 %i.qx, ptr %i.qy, align 2, !tbaa !77
  %indvars.iv.next995.3 = add nuw nsw i64 %indvars.iv994, 4 ; 2 uses
  %exitcond998.not.3 = icmp eq i64 %indvars.iv.next995.3, %wide.trip.count.i.i
  br i1 %exitcond998.not.3, label %.critedge, label %.lr.ph793, !llvm.loop !87

.loopexit601:                                     ; preds = %bb.bd, %._crit_edge758, %.thread, %bb.ac, %._crit_edge763
  %indvars.iv.next1005 = add nuw nsw i64 %indvars.iv1004, 1 ; 2 uses
  %i.qz = load i32, ptr %i.ah, align 8, !tbaa !108
  %i.ra = sext i32 %i.qz to i64
  %.not397 = icmp slt i64 %indvars.iv.next1005, %i.ra
  br i1 %.not397, label %bb.ac, label %.critedge405.preheader

bb.bf:                                            ; preds = %.critedge
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.12, i32 noundef %i.qm, i32 noundef %.0350.lcssa1116) #8
  br label %bb.ev

.lr.ph814:                                        ; preds = %.critedge405.preheader, %_ZL15canRemoveVertexP9rcContextR10rcPolyMesht.exit.thread
  %.0314813 = phi i32 [ %i.azl, %_ZL15canRemoveVertexP9rcContextR10rcPolyMesht.exit.thread ], [ 0, %.critedge405.preheader ] ; 12 uses
  %i.rb = sext i32 %.0314813 to i64               ; 2 uses
  %i.rc = getelementptr inbounds i8, ptr %i.bm, i64 %i.rb
  %i.rd = load i8, ptr %i.rc, align 1, !tbaa !78
  %.not398 = icmp eq i8 %i.rd, 0
  br i1 %.not398, label %_ZL15canRemoveVertexP9rcContextR10rcPolyMesht.exit.thread, label %bb.bg

bb.bg:                                            ; preds = %.lr.ph814
  %i.re = trunc i32 %.0314813 to i16              ; 16 uses
  %i.rf = load i32, ptr %i.ce, align 4, !tbaa !74 ; 5 uses
  %i.rg = load i32, ptr %i.cd, align 4, !tbaa !73 ; 2 uses
  %i.rh = icmp sgt i32 %i.rg, 0
  br i1 %i.rh, label %.lr.ph125.i, label %_ZL15canRemoveVertexP9rcContextR10rcPolyMesht.exit.thread

.lr.ph125.i:                                      ; preds = %bb.bg
  %i.ri = load ptr, ptr %i.bv, align 8, !tbaa !69
  %i.rj = shl i32 %i.rf, 1                        ; 2 uses
  %i.rk = icmp sgt i32 %i.rf, 0
  %wide.trip.count.i.i425 = zext nneg i32 %i.rf to i64 ; 2 uses
  br i1 %i.rk, label %.lr.ph.preheader.i.us.preheader.i, label %_ZL15canRemoveVertexP9rcContextR10rcPolyMesht.exit.thread

.lr.ph.preheader.i.us.preheader.i:                ; preds = %.lr.ph125.i
  %wide.trip.count181.i = zext nneg i32 %i.rg to i64
  %broadcast.splatinsert1594 = insertelement <4 x i16> poison, i16 %i.re, i64 0
  %broadcast.splat1595 = shufflevector <4 x i16> %broadcast.splatinsert1594, <4 x i16> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph.preheader.i.us.i

.lr.ph.preheader.i.us.i:                          ; preds = %._crit_edge.us.thread.i, %.lr.ph.preheader.i.us.preheader.i
  %indvars.iv178.i = phi i64 [ 0, %.lr.ph.preheader.i.us.preheader.i ], [ %indvars.iv.next179.i, %._crit_edge.us.thread.i ] ; 2 uses
  %.085122.us.i = phi i32 [ 0, %.lr.ph.preheader.i.us.preheader.i ], [ %.186.us.i, %._crit_edge.us.thread.i ]
  %.087121.us.i = phi i32 [ 0, %.lr.ph.preheader.i.us.preheader.i ], [ %.188.lcssa.us216.i, %._crit_edge.us.thread.i ] ; 3 uses
  %i.rl = trunc nuw nsw i64 %indvars.iv178.i to i32
  %i.rm = mul i32 %i.rj, %i.rl
  %i.rn = sext i32 %i.rm to i64
  %i.ro = getelementptr inbounds [2 x i8], ptr %i.ri, i64 %i.rn ; 3 uses
  br label %.lr.ph.i.us.i

.lr.ph.i.us.i:                                    ; preds = %bb.bh, %.lr.ph.preheader.i.us.i
  %indvars.iv.i.us.i = phi i64 [ 0, %.lr.ph.preheader.i.us.i ], [ %indvars.iv.next.i.us.i, %bb.bh ] ; 3 uses
  %i.rp = getelementptr inbounds nuw [2 x i8], ptr %i.ro, i64 %indvars.iv.i.us.i
  %i.rq = load i16, ptr %i.rp, align 2, !tbaa !77
  %i.rr = icmp eq i16 %i.rq, -1
  br i1 %i.rr, label %._crit_edge.loopexit.split.loop.exit15.i.us.i, label %bb.bh

bb.bh:                                            ; preds = %.lr.ph.i.us.i
  %indvars.iv.next.i.us.i = add nuw nsw i64 %indvars.iv.i.us.i, 1 ; 2 uses
  %exitcond.not.i.us.i = icmp eq i64 %indvars.iv.next.i.us.i, %wide.trip.count.i.i425
  br i1 %exitcond.not.i.us.i, label %_ZL14countPolyVertsPKti.exit.us.i, label %.lr.ph.i.us.i

._crit_edge.loopexit.split.loop.exit15.i.us.i:    ; preds = %.lr.ph.i.us.i
  %i.rs = trunc nuw nsw i64 %indvars.iv.i.us.i to i32
  br label %_ZL14countPolyVertsPKti.exit.us.i

_ZL14countPolyVertsPKti.exit.us.i:                ; preds = %bb.bh, %._crit_edge.loopexit.split.loop.exit15.i.us.i
  %i.rt = phi i32 [ %i.rs, %._crit_edge.loopexit.split.loop.exit15.i.us.i ], [ %i.rf, %bb.bh ] ; 4 uses
  %i.ru = icmp sgt i32 %i.rt, 0
  br i1 %i.ru, label %.lr.ph.us.preheader.i, label %._crit_edge.us.thread.i

.lr.ph.us.preheader.i:                            ; preds = %_ZL14countPolyVertsPKti.exit.us.i
  %wide.trip.count.i440 = zext nneg i32 %i.rt to i64 ; 3 uses
  %min.iters.check1591 = icmp samesign ult i32 %i.rt, 8
  br i1 %min.iters.check1591, label %.lr.ph.us.i.preheader, label %vector.ph1592

vector.ph1592:                                    ; preds = %.lr.ph.us.preheader.i
  %n.vec1593 = and i64 %wide.trip.count.i440, 2147483640 ; 3 uses
  %i.rv = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.087121.us.i, i64 0
  br label %vector.body1596

vector.body1596:                                  ; preds = %vector.body1596, %vector.ph1592
  %index1597 = phi i64 [ 0, %vector.ph1592 ], [ %index.next1604, %vector.body1596 ] ; 2 uses
  %vec.phi1598 = phi <4 x i32> [ zeroinitializer, %vector.ph1592 ], [ %i.sg, %vector.body1596 ]
  %vec.phi1599 = phi <4 x i32> [ zeroinitializer, %vector.ph1592 ], [ %i.sh, %vector.body1596 ]
  %vec.phi1600 = phi <4 x i32> [ %i.rv, %vector.ph1592 ], [ %i.se, %vector.body1596 ]
  %vec.phi1601 = phi <4 x i32> [ zeroinitializer, %vector.ph1592 ], [ %i.sf, %vector.body1596 ]
  %i.rw = getelementptr inbounds nuw [2 x i8], ptr %i.ro, i64 %index1597 ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 8
  %wide.load1602 = load <4 x i16>, ptr %i.rw, align 2, !tbaa !77
  %wide.load1603 = load <4 x i16>, ptr %i.rx, align 2, !tbaa !77
  %i.ry = freeze <4 x i16> %wide.load1602
  %i.rz = freeze <4 x i16> %wide.load1603
  %i.sa = icmp eq <4 x i16> %i.ry, %broadcast.splat1595
  %i.sb = icmp eq <4 x i16> %i.rz, %broadcast.splat1595
  %i.sc = zext <4 x i1> %i.sa to <4 x i32>        ; 2 uses
  %i.sd = zext <4 x i1> %i.sb to <4 x i32>        ; 2 uses
  %i.se = add <4 x i32> %vec.phi1600, %i.sc       ; 2 uses
  %i.sf = add <4 x i32> %vec.phi1601, %i.sd       ; 2 uses
  %i.sg = add <4 x i32> %vec.phi1598, %i.sc       ; 2 uses
  %i.sh = add <4 x i32> %vec.phi1599, %i.sd       ; 2 uses
  %index.next1604 = add nuw i64 %index1597, 8     ; 2 uses
  %i.si = icmp eq i64 %index.next1604, %n.vec1593
  br i1 %i.si, label %middle.block1605, label %vector.body1596, !llvm.loop !88

middle.block1605:                                 ; preds = %vector.body1596
  %bin.rdx1606 = add <4 x i32> %i.sh, %i.sg
  %i.sj = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx1606) ; 2 uses
  %bin.rdx1607 = add <4 x i32> %i.sf, %i.se
  %i.sk = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx1607) ; 2 uses
  %cmp.n1608 = icmp eq i64 %n.vec1593, %wide.trip.count.i440
  br i1 %cmp.n1608, label %._crit_edge.us.i, label %.lr.ph.us.i.preheader

.lr.ph.us.i.preheader:                            ; preds = %.lr.ph.us.preheader.i, %middle.block1605
  %indvars.iv.i441.ph = phi i64 [ 0, %.lr.ph.us.preheader.i ], [ %n.vec1593, %middle.block1605 ]
  %.082116.us.i.ph = phi i32 [ 0, %.lr.ph.us.preheader.i ], [ %i.sj, %middle.block1605 ]
  %.188115.us.i.ph = phi i32 [ %.087121.us.i, %.lr.ph.us.preheader.i ], [ %i.sk, %middle.block1605 ]
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %.lr.ph.us.i.preheader, %.lr.ph.us.i
  %indvars.iv.i441 = phi i64 [ %indvars.iv.next.i442, %.lr.ph.us.i ], [ %indvars.iv.i441.ph, %.lr.ph.us.i.preheader ] ; 2 uses
  %.082116.us.i = phi i32 [ %.183.us.i, %.lr.ph.us.i ], [ %.082116.us.i.ph, %.lr.ph.us.i.preheader ]
  %.188115.us.i = phi i32 [ %.289.us.i, %.lr.ph.us.i ], [ %.188115.us.i.ph, %.lr.ph.us.i.preheader ]
  %i.sl = getelementptr inbounds nuw [2 x i8], ptr %i.ro, i64 %indvars.iv.i441
  %i.sm = load i16, ptr %i.sl, align 2, !tbaa !77
  %.fr.i = freeze i16 %i.sm
  %i.sn = icmp eq i16 %.fr.i, %i.re
  %i.so = zext i1 %i.sn to i32                    ; 2 uses
  %.289.us.i = add nsw i32 %.188115.us.i, %i.so   ; 2 uses
  %.183.us.i = add i32 %.082116.us.i, %i.so       ; 2 uses
  %indvars.iv.next.i442 = add nuw nsw i64 %indvars.iv.i441, 1 ; 2 uses
  %exitcond.not.i443 = icmp eq i64 %indvars.iv.next.i442, %wide.trip.count.i440
  br i1 %exitcond.not.i443, label %._crit_edge.us.i, label %.lr.ph.us.i, !llvm.loop !89

._crit_edge.us.i:                                 ; preds = %.lr.ph.us.i, %middle.block1605
  %.289.us.i.lcssa = phi i32 [ %i.sk, %middle.block1605 ], [ %.289.us.i, %.lr.ph.us.i ]
  %.183.us.i.lcssa = phi i32 [ %i.sj, %middle.block1605 ], [ %.183.us.i, %.lr.ph.us.i ] ; 2 uses
  %.not91.us.i = icmp eq i32 %.183.us.i.lcssa, 0
  %.neg.us.i = xor i32 %.183.us.i.lcssa, -1
  %i.sp = add nsw i32 %i.rt, %.neg.us.i
  %spec.select231.i = select i1 %.not91.us.i, i32 0, i32 %i.sp
  br label %._crit_edge.us.thread.i

._crit_edge.us.thread.i:                          ; preds = %._crit_edge.us.i, %_ZL14countPolyVertsPKti.exit.us.i
  %.188.lcssa.us216.i = phi i32 [ %.289.us.i.lcssa, %._crit_edge.us.i ], [ %.087121.us.i, %_ZL14countPolyVertsPKti.exit.us.i ] ; 3 uses
  %i.sq = phi i32 [ %spec.select231.i, %._crit_edge.us.i ], [ 0, %_ZL14countPolyVertsPKti.exit.us.i ]
  %.186.us.i = add nsw i32 %i.sq, %.085122.us.i   ; 2 uses
  %indvars.iv.next179.i = add nuw nsw i64 %indvars.iv178.i, 1 ; 2 uses
  %exitcond182.not.i = icmp eq i64 %indvars.iv.next179.i, %wide.trip.count181.i
  br i1 %exitcond182.not.i, label %._crit_edge126.i, label %.lr.ph.preheader.i.us.i

._crit_edge126.i:                                 ; preds = %._crit_edge.us.thread.i
  %i.sr = icmp slt i32 %.186.us.i, 3
  br i1 %i.sr, label %_ZL15canRemoveVertexP9rcContextR10rcPolyMesht.exit.thread, label %bb.bi

bb.bi:                                            ; preds = %._crit_edge126.i
  %i.ss = shl nsw i32 %.188.lcssa.us216.i, 1
  %i.st = sext i32 %i.ss to i64
  %i.su = mul nsw i64 %i.st, 12
  %i.sv = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.su, i32 noundef 1) #8 ; 14 uses
  %.not.i426 = icmp eq ptr %i.sv, null
  br i1 %.not.i426, label %_ZL15canRemoveVertexP9rcContextR10rcPolyMesht.exit.thread580, label %.preheader112.i

.preheader112.i:                                  ; preds = %bb.bi
  %i.sw = load i32, ptr %i.cd, align 4, !tbaa !73 ; 2 uses
  %i.sx = icmp sgt i32 %i.sw, 0
  br i1 %i.sx, label %.lr.ph165.i, label %_ZL15canRemoveVertexP9rcContextR10rcPolyMesht.exit.thread578

.lr.ph165.i:                                      ; preds = %.preheader112.i
  %i.sy = load ptr, ptr %i.bv, align 8, !tbaa !69
  br label %bb.bj

_ZL15canRemoveVertexP9rcContextR10rcPolyMesht.exit.thread580: ; preds = %bb.bi
  %i.sz = mul nsw i32 %.188.lcssa.us216.i, 6
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 2, ptr noundef nonnull @.str.34, i32 noundef %i.sz) #8
  tail call void @_Z6rcFreePv(ptr noundef null) #8
  br label %_ZL15canRemoveVertexP9rcContextR10rcPolyMesht.exit.thread

.preheader.i432:                                  ; preds = %._crit_edge161.i
  %i.ta = icmp sgt i32 %.178.lcssa.i, 0
  br i1 %i.ta, label %.lr.ph169.preheader.i, label %_ZL15canRemoveVertexP9rcContextR10rcPolyMesht.exit.thread578

.lr.ph169.preheader.i:                            ; preds = %.preheader.i432
  %wide.trip.count198.i = zext nneg i32 %.178.lcssa.i to i64 ; 3 uses
  %min.iters.check1578 = icmp samesign ult i32 %.178.lcssa.i, 9
  br i1 %min.iters.check1578, label %.lr.ph169.i.preheader, label %vector.ph1579

vector.ph1579:                                    ; preds = %.lr.ph169.preheader.i
  %i.tb = and i64 %wide.trip.count198.i, 7        ; 2 uses
  %i.tc = icmp eq i64 %i.tb, 0
  %i.td = select i1 %i.tc, i64 8, i64 %i.tb
  %n.vec1580 = sub nuw nsw i64 %wide.trip.count198.i, %i.td ; 2 uses
  br label %vector.body1581

vector.body1581:                                  ; preds = %vector.body1581, %vector.ph1579
  %index1582 = phi i64 [ 0, %vector.ph1579 ], [ %index.next1585, %vector.body1581 ] ; 9 uses
  %vec.phi1583 = phi <4 x i32> [ zeroinitializer, %vector.ph1579 ], [ %i.uw, %vector.body1581 ]
  %vec.phi1584 = phi <4 x i32> [ zeroinitializer, %vector.ph1579 ], [ %i.ux, %vector.body1581 ]
  %i.te = mul nuw nsw i64 %index1582, 12
  %i.tf = mul nuw i64 %index1582, 12
  %i.tg = mul nuw i64 %index1582, 12
  %i.th = mul nuw i64 %index1582, 12
  %i.ti = mul nuw i64 %index1582, 12
  %i.tj = mul nuw i64 %index1582, 12
  %i.tk = mul nuw i64 %index1582, 12
  %i.tl = mul nuw i64 %index1582, 12
  %i.tm = getelementptr inbounds nuw i8, ptr %i.sv, i64 %i.te
  %i.tn = getelementptr inbounds nuw i8, ptr %i.sv, i64 %i.tf
  %i.to = getelementptr inbounds nuw i8, ptr %i.sv, i64 %i.tg
  %i.tp = getelementptr inbounds nuw i8, ptr %i.sv, i64 %i.th
  %i.tq = getelementptr inbounds nuw i8, ptr %i.sv, i64 %i.ti
  %i.tr = getelementptr inbounds nuw i8, ptr %i.sv, i64 %i.tj
  %i.ts = getelementptr inbounds nuw i8, ptr %i.sv, i64 %i.tk
  %i.tt = getelementptr inbounds nuw i8, ptr %i.sv, i64 %i.tl
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tm, i64 8
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tn, i64 20
  %i.tw = getelementptr inbounds nuw i8, ptr %i.to, i64 32
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tp, i64 44
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tq, i64 56
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tr, i64 68
  %i.ua = getelementptr inbounds nuw i8, ptr %i.ts, i64 80
  %i.ub = getelementptr inbounds nuw i8, ptr %i.tt, i64 92
  %i.uc = load i32, ptr %i.tu, align 4, !tbaa !76
  %i.ud = load i32, ptr %i.tv, align 4, !tbaa !76
  %i.ue = load i32, ptr %i.tw, align 4, !tbaa !76
  %i.uf = load i32, ptr %i.tx, align 4, !tbaa !76
  %i.ug = insertelement <4 x i32> poison, i32 %i.uc, i64 0
  %i.uh = insertelement <4 x i32> %i.ug, i32 %i.ud, i64 1
  %i.ui = insertelement <4 x i32> %i.uh, i32 %i.ue, i64 2
  %i.uj = insertelement <4 x i32> %i.ui, i32 %i.uf, i64 3
  %i.uk = load i32, ptr %i.ty, align 4, !tbaa !76
  %i.ul = load i32, ptr %i.tz, align 4, !tbaa !76
  %i.um = load i32, ptr %i.ua, align 4, !tbaa !76
  %i.un = load i32, ptr %i.ub, align 4, !tbaa !76
  %i.uo = insertelement <4 x i32> poison, i32 %i.uk, i64 0
  %i.up = insertelement <4 x i32> %i.uo, i32 %i.ul, i64 1
  %i.uq = insertelement <4 x i32> %i.up, i32 %i.um, i64 2
  %i.ur = insertelement <4 x i32> %i.uq, i32 %i.un, i64 3
  %i.us = icmp slt <4 x i32> %i.uj, splat (i32 2)
  %i.ut = icmp slt <4 x i32> %i.ur, splat (i32 2)
  %i.uu = zext <4 x i1> %i.us to <4 x i32>
  %i.uv = zext <4 x i1> %i.ut to <4 x i32>
  %i.uw = add <4 x i32> %vec.phi1583, %i.uu       ; 2 uses
  %i.ux = add <4 x i32> %vec.phi1584, %i.uv       ; 2 uses
  %index.next1585 = add nuw i64 %index1582, 8     ; 2 uses
  %i.uy = icmp eq i64 %index.next1585, %n.vec1580
  br i1 %i.uy, label %middle.block1586, label %vector.body1581, !llvm.loop !90

middle.block1586:                                 ; preds = %vector.body1581
  %bin.rdx1587 = add <4 x i32> %i.ux, %i.uw
  %i.uz = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx1587)
  br label %.lr.ph169.i.preheader

.lr.ph169.i.preheader:                            ; preds = %.lr.ph169.preheader.i, %middle.block1586
  %indvars.iv195.i.ph = phi i64 [ 0, %.lr.ph169.preheader.i ], [ %n.vec1580, %middle.block1586 ]
  %.068167.i.ph = phi i32 [ 0, %.lr.ph169.preheader.i ], [ %i.uz, %middle.block1586 ]
  br label %.lr.ph169.i

bb.bj:                                            ; preds = %._crit_edge161.i, %.lr.ph165.i
  %i.va = phi i32 [ %i.sw, %.lr.ph165.i ], [ %i.vn, %._crit_edge161.i ]
  %indvars.iv192.i = phi i64 [ 0, %.lr.ph165.i ], [ %indvars.iv.next193.i, %._crit_edge161.i ] ; 2 uses
  %.077163.i = phi i32 [ 0, %.lr.ph165.i ], [ %.178.lcssa.i, %._crit_edge161.i ] ; 2 uses
  %i.vb = trunc nuw nsw i64 %indvars.iv192.i to i32
  %i.vc = mul i32 %i.rj, %i.vb
  %i.vd = sext i32 %i.vc to i64
  %i.ve = getelementptr inbounds [2 x i8], ptr %i.sy, i64 %i.vd ; 3 uses
  br label %.lr.ph.i94.i427

.lr.ph.i94.i427:                                  ; preds = %bb.bk, %bb.bj
  %indvars.iv.i95.i428 = phi i64 [ %indvars.iv.next.i96.i429, %bb.bk ], [ 0, %bb.bj ] ; 3 uses
  %i.vf = getelementptr inbounds nuw [2 x i8], ptr %i.ve, i64 %indvars.iv.i95.i428
  %i.vg = load i16, ptr %i.vf, align 2, !tbaa !77
  %i.vh = icmp eq i16 %i.vg, -1
  br i1 %i.vh, label %._crit_edge.loopexit.split.loop.exit15.i98.i439, label %bb.bk

bb.bk:                                            ; preds = %.lr.ph.i94.i427
  %indvars.iv.next.i96.i429 = add nuw nsw i64 %indvars.iv.i95.i428, 1 ; 2 uses
  %exitcond.not.i97.i430 = icmp eq i64 %indvars.iv.next.i96.i429, %wide.trip.count.i.i425
  br i1 %exitcond.not.i97.i430, label %_ZL14countPolyVertsPKti.exit99.i431, label %.lr.ph.i94.i427

._crit_edge.loopexit.split.loop.exit15.i98.i439:  ; preds = %.lr.ph.i94.i427
  %i.vi = trunc nuw nsw i64 %indvars.iv.i95.i428 to i32
  br label %_ZL14countPolyVertsPKti.exit99.i431

_ZL14countPolyVertsPKti.exit99.i431:              ; preds = %bb.bk, %._crit_edge.loopexit.split.loop.exit15.i98.i439
  %i.vj = phi i32 [ %i.vi, %._crit_edge.loopexit.split.loop.exit15.i98.i439 ], [ %i.rf, %bb.bk ] ; 3 uses
  %i.vk = icmp sgt i32 %i.vj, 0
  br i1 %i.vk, label %.lr.ph160.preheader.i, label %._crit_edge161.i

.lr.ph160.preheader.i:                            ; preds = %_ZL14countPolyVertsPKti.exit99.i431
  %wide.trip.count190.i = zext nneg i32 %i.vj to i64
  %i.vl = zext nneg i32 %i.vj to i64
  %i.vm = getelementptr [2 x i8], ptr %i.ve, i64 %i.vl
  %.phi.trans.insert200.i.phi.trans.insert = getelementptr i8, ptr %i.vm, i64 -2
  %.pre.i.pre = load i16, ptr %.phi.trans.insert200.i.phi.trans.insert, align 2, !tbaa !77
  br label %.lr.ph160.i

._crit_edge161.loopexit.i:                        ; preds = %._crit_edge.thread.i
  %.pre201.i = load i32, ptr %i.cd, align 4, !tbaa !73
  br label %._crit_edge161.i

._crit_edge161.i:                                 ; preds = %._crit_edge161.loopexit.i, %_ZL14countPolyVertsPKti.exit99.i431
  %i.vn = phi i32 [ %i.va, %_ZL14countPolyVertsPKti.exit99.i431 ], [ %.pre201.i, %._crit_edge161.loopexit.i ] ; 2 uses
  %.178.lcssa.i = phi i32 [ %.077163.i, %_ZL14countPolyVertsPKti.exit99.i431 ], [ %.3.i, %._crit_edge161.loopexit.i ] ; 4 uses
  %indvars.iv.next193.i = add nuw nsw i64 %indvars.iv192.i, 1 ; 2 uses
  %i.vo = sext i32 %i.vn to i64
  %i.vp = icmp slt i64 %indvars.iv.next193.i, %i.vo
  br i1 %i.vp, label %bb.bj, label %.preheader.i432

.lr.ph160.i:                                      ; preds = %._crit_edge.thread.i, %.lr.ph160.preheader.i
  %.pre.i = phi i16 [ %.pre.i.pre, %.lr.ph160.preheader.i ], [ %i.vr, %._crit_edge.thread.i ] ; 2 uses
  %indvars.iv187.i = phi i64 [ 0, %.lr.ph160.preheader.i ], [ %indvars.iv.next188.i, %._crit_edge.thread.i ] ; 2 uses
  %.178157.i = phi i32 [ %.077163.i, %.lr.ph160.preheader.i ], [ %.3.i, %._crit_edge.thread.i ] ; 7 uses
  %i.vq = getelementptr inbounds nuw [2 x i8], ptr %i.ve, i64 %indvars.iv187.i
  %i.vr = load i16, ptr %i.vq, align 2, !tbaa !77 ; 3 uses
  %i.vs = icmp eq i16 %i.vr, %i.re
  br i1 %i.vs, label %.lr.ph160._crit_edge.i, label %bb.bl

bb.bl:                                            ; preds = %.lr.ph160.i
  %i.vt = icmp eq i16 %.pre.i, %i.re
  br i1 %i.vt, label %.lr.ph160._crit_edge.i, label %._crit_edge.thread.i

.lr.ph160._crit_edge.i:                           ; preds = %bb.bl, %.lr.ph160.i
  %i.vu = phi i16 [ %i.re, %bb.bl ], [ %.pre.i, %.lr.ph160.i ] ; 2 uses
  %i.vv = zext i16 %i.vr to i32                   ; 2 uses
  %i.vw = zext i16 %i.vu to i32                   ; 2 uses
  %i.vx = icmp eq i16 %i.vu, %i.re                ; 2 uses
  %spec.select110.i = select i1 %i.vx, i32 %i.vw, i32 %i.vv
  %spec.select111.i = select i1 %i.vx, i32 %i.vv, i32 %i.vw ; 2 uses
  %i.vy = icmp sgt i32 %.178157.i, 0
  br i1 %i.vy, label %.lr.ph.preheader.i435, label %.critedge.i434

.lr.ph.preheader.i435:                            ; preds = %.lr.ph160._crit_edge.i
  %wide.trip.count185.i = zext nneg i32 %.178157.i to i64 ; 2 uses
  br label %.lr.ph.outer.i

.lr.ph.outer.i:                                   ; preds = %.thread.i, %.lr.ph.preheader.i435
  %indvars.iv183.ph.i = phi i64 [ %indvars.iv.next184222.i, %.thread.i ], [ 0, %.lr.ph.preheader.i435 ]
  %.072155.ph.i = phi i1 [ true, %.thread.i ], [ false, %.lr.ph.preheader.i435 ]
  br label %.lr.ph.i436

._crit_edge.i438:                                 ; preds = %bb.bm
  br i1 %.072155.ph.i, label %._crit_edge.thread.i, label %.critedge.i434

.lr.ph.i436:                                      ; preds = %bb.bm, %.lr.ph.outer.i
  %indvars.iv183.i = phi i64 [ %indvars.iv.next184.i, %bb.bm ], [ %indvars.iv183.ph.i, %.lr.ph.outer.i ] ; 3 uses
  %.idx.i437 = mul nuw nsw i64 %indvars.iv183.i, 12
  %i.vz = getelementptr inbounds nuw i8, ptr %i.sv, i64 %.idx.i437 ; 2 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vz, i64 4
  %i.wb = load i32, ptr %i.wa, align 4, !tbaa !76
  %i.wc = icmp eq i32 %i.wb, %spec.select111.i
  br i1 %i.wc, label %.thread.i, label %bb.bm

bb.bm:                                            ; preds = %.lr.ph.i436
  %indvars.iv.next184.i = add nuw nsw i64 %indvars.iv183.i, 1 ; 2 uses
  %exitcond186.not.i = icmp eq i64 %indvars.iv.next184.i, %wide.trip.count185.i
  br i1 %exitcond186.not.i, label %._crit_edge.i438, label %.lr.ph.i436

.thread.i:                                        ; preds = %.lr.ph.i436
  %i.wd = getelementptr inbounds nuw i8, ptr %i.vz, i64 8 ; 2 uses
  %i.we = load i32, ptr %i.wd, align 4, !tbaa !76
  %i.wf = add nsw i32 %i.we, 1
  store i32 %i.wf, ptr %i.wd, align 4, !tbaa !76
  %indvars.iv.next184222.i = add nuw nsw i64 %indvars.iv183.i, 1 ; 2 uses
  %exitcond186.not223.i = icmp eq i64 %indvars.iv.next184222.i, %wide.trip.count185.i
  br i1 %exitcond186.not223.i, label %._crit_edge.thread.i, label %.lr.ph.outer.i

.critedge.i434:                                   ; preds = %._crit_edge.i438, %.lr.ph160._crit_edge.i
  %i.wg = mul nsw i32 %.178157.i, 3
  %i.wh = sext i32 %i.wg to i64
  %i.wi = getelementptr inbounds [4 x i8], ptr %i.sv, i64 %i.wh ; 3 uses
  store i32 %spec.select110.i, ptr %i.wi, align 4, !tbaa !76
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wi, i64 4
  store i32 %spec.select111.i, ptr %i.wj, align 4, !tbaa !76
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wi, i64 8
  store i32 1, ptr %i.wk, align 4, !tbaa !76
  %i.wl = add nsw i32 %.178157.i, 1
  br label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %.thread.i, %.critedge.i434, %._crit_edge.i438, %bb.bl
  %.3.i = phi i32 [ %.178157.i, %bb.bl ], [ %.178157.i, %._crit_edge.i438 ], [ %i.wl, %.critedge.i434 ], [ %.178157.i, %.thread.i ] ; 2 uses
  %indvars.iv.next188.i = add nuw nsw i64 %indvars.iv187.i, 1 ; 2 uses
  %exitcond191.not.i = icmp eq i64 %indvars.iv.next188.i, %wide.trip.count190.i
  br i1 %exitcond191.not.i, label %._crit_edge161.loopexit.i, label %.lr.ph160.i

.lr.ph169.i:                                      ; preds = %.lr.ph169.i.preheader, %.lr.ph169.i
  %indvars.iv195.i = phi i64 [ %indvars.iv.next196.i, %.lr.ph169.i ], [ %indvars.iv195.i.ph, %.lr.ph169.i.preheader ] ; 2 uses
  %.068167.i = phi i32 [ %spec.select.i433, %.lr.ph169.i ], [ %.068167.i.ph, %.lr.ph169.i.preheader ]
  %.idx209.i = mul nuw nsw i64 %indvars.iv195.i, 12
  %i.wm = getelementptr inbounds nuw i8, ptr %i.sv, i64 %.idx209.i
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wm, i64 8
  %i.wo = load i32, ptr %i.wn, align 4, !tbaa !76
  %i.wp = icmp slt i32 %i.wo, 2
  %i.wq = zext i1 %i.wp to i32
  %spec.select.i433 = add nuw nsw i32 %.068167.i, %i.wq ; 2 uses
  %indvars.iv.next196.i = add nuw nsw i64 %indvars.iv195.i, 1 ; 2 uses
  %exitcond199.not.i = icmp eq i64 %indvars.iv.next196.i, %wide.trip.count198.i
  br i1 %exitcond199.not.i, label %_ZL15canRemoveVertexP9rcContextR10rcPolyMesht.exit, label %.lr.ph169.i, !llvm.loop !91

_ZL15canRemoveVertexP9rcContextR10rcPolyMesht.exit.thread578: ; preds = %.preheader.i432, %.preheader112.i
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.sv) #8
  br label %bb.bn

_ZL15canRemoveVertexP9rcContextR10rcPolyMesht.exit: ; preds = %.lr.ph169.i
  %i.wr = icmp samesign ult i32 %spec.select.i433, 3
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.sv) #8
  br i1 %i.wr, label %bb.bn, label %_ZL15canRemoveVertexP9rcContextR10rcPolyMesht.exit.thread

bb.bn:                                            ; preds = %_ZL15canRemoveVertexP9rcContextR10rcPolyMesht.exit.thread578, %_ZL15canRemoveVertexP9rcContextR10rcPolyMesht.exit
  %i.ws = load i32, ptr %i.ce, align 4, !tbaa !74 ; 35 uses
  %i.wt = load i32, ptr %i.cd, align 4, !tbaa !73 ; 2 uses
  %i.wu = icmp sgt i32 %i.wt, 0
  br i1 %i.wu, label %.lr.ph601.i, label %._crit_edge602.i

.lr.ph601.i:                                      ; preds = %bb.bn
  %i.wv = load ptr, ptr %i.bv, align 8, !tbaa !69
  %i.ww = shl i32 %i.ws, 1
  %i.wx = icmp sgt i32 %i.ws, 0
  %wide.trip.count.i.i453 = zext nneg i32 %i.ws to i64
  %wide.trip.count706.i = zext nneg i32 %i.wt to i64
  %broadcast.splatinsert1563 = insertelement <4 x i16> poison, i16 %i.re, i64 0
  %broadcast.splat1564 = shufflevector <4 x i16> %broadcast.splatinsert1563, <4 x i16> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %bb.bo

._crit_edge602.i:                                 ; preds = %._crit_edge.i454, %bb.bn
  %.0371.lcssa.i = phi i32 [ 0, %bb.bn ], [ %.1372.lcssa.i, %._crit_edge.i454 ] ; 5 uses
  %i.wy = sext i32 %.0371.lcssa.i to i64
  %i.wz = shl nsw i64 %i.wy, 2
  %i.xa = sext i32 %i.ws to i64                   ; 9 uses
  %i.xb = mul i64 %i.wz, %i.xa                    ; 4 uses
  %i.xc = shl i64 %i.xb, 2
  %i.xd = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.xc, i32 noundef 1) #8 ; 20 uses
  %.not.i444 = icmp eq ptr %i.xd, null
  br i1 %.not.i444, label %_ZL12removeVertexP9rcContextR10rcPolyMeshti.exit.thread, label %bb.bq

bb.bo:                                            ; preds = %._crit_edge.i454, %.lr.ph601.i
  %indvars.iv703.i = phi i64 [ 0, %.lr.ph601.i ], [ %indvars.iv.next704.i, %._crit_edge.i454 ] ; 2 uses
  %.0371598.i = phi i32 [ 0, %.lr.ph601.i ], [ %.1372.lcssa.i, %._crit_edge.i454 ] ; 4 uses
  %i.xe = trunc nuw nsw i64 %indvars.iv703.i to i32
  %i.xf = mul i32 %i.ww, %i.xe
  %i.xg = sext i32 %i.xf to i64
  %i.xh = getelementptr inbounds [2 x i8], ptr %i.wv, i64 %i.xg ; 3 uses
  br i1 %i.wx, label %.lr.ph.i.i455, label %._crit_edge.i454

.lr.ph.i.i455:                                    ; preds = %bb.bo, %bb.bp
  %indvars.iv.i.i456 = phi i64 [ %indvars.iv.next.i.i457, %bb.bp ], [ 0, %bb.bo ] ; 3 uses
  %i.xi = getelementptr inbounds nuw [2 x i8], ptr %i.xh, i64 %indvars.iv.i.i456
  %i.xj = load i16, ptr %i.xi, align 2, !tbaa !77
  %i.xk = icmp eq i16 %i.xj, -1
  br i1 %i.xk, label %._crit_edge.loopexit.split.loop.exit15.i.i466, label %bb.bp

bb.bp:                                            ; preds = %.lr.ph.i.i455
  %indvars.iv.next.i.i457 = add nuw nsw i64 %indvars.iv.i.i456, 1 ; 2 uses
  %exitcond.not.i.i458 = icmp eq i64 %indvars.iv.next.i.i457, %wide.trip.count.i.i453
  br i1 %exitcond.not.i.i458, label %_ZL14countPolyVertsPKti.exit.i, label %.lr.ph.i.i455

._crit_edge.loopexit.split.loop.exit15.i.i466:    ; preds = %.lr.ph.i.i455
  %i.xl = trunc nuw nsw i64 %indvars.iv.i.i456 to i32
  br label %_ZL14countPolyVertsPKti.exit.i

_ZL14countPolyVertsPKti.exit.i:                   ; preds = %bb.bp, %._crit_edge.loopexit.split.loop.exit15.i.i466
  %i.xm = phi i32 [ %i.xl, %._crit_edge.loopexit.split.loop.exit15.i.i466 ], [ %i.ws, %bb.bp ] ; 3 uses
  %i.xn = icmp sgt i32 %i.xm, 0
  br i1 %i.xn, label %.lr.ph.preheader.i459, label %._crit_edge.i454

.lr.ph.preheader.i459:                            ; preds = %_ZL14countPolyVertsPKti.exit.i
  %wide.trip.count.i460 = zext nneg i32 %i.xm to i64 ; 3 uses
  %min.iters.check1560 = icmp samesign ult i32 %i.xm, 8
  br i1 %min.iters.check1560, label %.lr.ph.i461.preheader, label %vector.ph1561

vector.ph1561:                                    ; preds = %.lr.ph.preheader.i459
  %n.vec1562 = and i64 %wide.trip.count.i460, 2147483640 ; 3 uses
  %i.xo = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.0371598.i, i64 0
  br label %vector.body1565

vector.body1565:                                  ; preds = %vector.body1565, %vector.ph1561
  %index1566 = phi i64 [ 0, %vector.ph1561 ], [ %index.next1571, %vector.body1565 ] ; 2 uses
  %vec.phi1567 = phi <4 x i32> [ %i.xo, %vector.ph1561 ], [ %i.xv, %vector.body1565 ]
  %vec.phi1568 = phi <4 x i32> [ zeroinitializer, %vector.ph1561 ], [ %i.xw, %vector.body1565 ]
  %i.xp = getelementptr inbounds nuw [2 x i8], ptr %i.xh, i64 %index1566 ; 2 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xp, i64 8
  %wide.load1569 = load <4 x i16>, ptr %i.xp, align 2, !tbaa !77
  %wide.load1570 = load <4 x i16>, ptr %i.xq, align 2, !tbaa !77
  %i.xr = icmp eq <4 x i16> %wide.load1569, %broadcast.splat1564
  %i.xs = icmp eq <4 x i16> %wide.load1570, %broadcast.splat1564
  %i.xt = zext <4 x i1> %i.xr to <4 x i32>
  %i.xu = zext <4 x i1> %i.xs to <4 x i32>
  %i.xv = add <4 x i32> %vec.phi1567, %i.xt       ; 2 uses
  %i.xw = add <4 x i32> %vec.phi1568, %i.xu       ; 2 uses
  %index.next1571 = add nuw i64 %index1566, 8     ; 2 uses
  %i.xx = icmp eq i64 %index.next1571, %n.vec1562
  br i1 %i.xx, label %middle.block1572, label %vector.body1565, !llvm.loop !92

middle.block1572:                                 ; preds = %vector.body1565
  %bin.rdx1573 = add <4 x i32> %i.xw, %i.xv
  %i.xy = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx1573) ; 2 uses
  %cmp.n1574 = icmp eq i64 %n.vec1562, %wide.trip.count.i460
  br i1 %cmp.n1574, label %._crit_edge.i454, label %.lr.ph.i461.preheader

.lr.ph.i461.preheader:                            ; preds = %.lr.ph.preheader.i459, %middle.block1572
  %indvars.iv.i462.ph = phi i64 [ 0, %.lr.ph.preheader.i459 ], [ %n.vec1562, %middle.block1572 ]
  %.1372596.i.ph = phi i32 [ %.0371598.i, %.lr.ph.preheader.i459 ], [ %i.xy, %middle.block1572 ]
  br label %.lr.ph.i461

._crit_edge.i454:                                 ; preds = %.lr.ph.i461, %middle.block1572, %_ZL14countPolyVertsPKti.exit.i, %bb.bo
  %.1372.lcssa.i = phi i32 [ %.0371598.i, %_ZL14countPolyVertsPKti.exit.i ], [ %.0371598.i, %bb.bo ], [ %i.xy, %middle.block1572 ], [ %spec.select.i463, %.lr.ph.i461 ] ; 2 uses
  %indvars.iv.next704.i = add nuw nsw i64 %indvars.iv703.i, 1 ; 2 uses
  %exitcond707.not.i = icmp eq i64 %indvars.iv.next704.i, %wide.trip.count706.i
  br i1 %exitcond707.not.i, label %._crit_edge602.i, label %bb.bo

.lr.ph.i461:                                      ; preds = %.lr.ph.i461.preheader, %.lr.ph.i461
  %indvars.iv.i462 = phi i64 [ %indvars.iv.next.i464, %.lr.ph.i461 ], [ %indvars.iv.i462.ph, %.lr.ph.i461.preheader ] ; 2 uses
  %.1372596.i = phi i32 [ %spec.select.i463, %.lr.ph.i461 ], [ %.1372596.i.ph, %.lr.ph.i461.preheader ]
  %i.xz = getelementptr inbounds nuw [2 x i8], ptr %i.xh, i64 %indvars.iv.i462
  %i.ya = load i16, ptr %i.xz, align 2, !tbaa !77
  %i.yb = icmp eq i16 %i.ya, %i.re
  %i.yc = zext i1 %i.yb to i32
  %spec.select.i463 = add nsw i32 %.1372596.i, %i.yc ; 2 uses
  %indvars.iv.next.i464 = add nuw nsw i64 %indvars.iv.i462, 1 ; 2 uses
  %exitcond.not.i465 = icmp eq i64 %indvars.iv.next.i464, %wide.trip.count.i460
  br i1 %exitcond.not.i465, label %._crit_edge.i454, label %.lr.ph.i461, !llvm.loop !93

_ZL12removeVertexP9rcContextR10rcPolyMeshti.exit.thread: ; preds = %._crit_edge602.i
  %i.yd = shl i32 %i.ws, 2
  %i.ye = mul i32 %i.yd, %.0371.lcssa.i
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 2, ptr noundef nonnull @.str.35, i32 noundef %i.ye) #8
  br label %bb.dz

bb.bq:                                            ; preds = %._crit_edge602.i
  %i.yf = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.xb, i32 noundef 1) #8 ; 20 uses
  %.not393.i = icmp eq ptr %i.yf, null
  br i1 %.not393.i, label %.critedge583, label %bb.br

.critedge583:                                     ; preds = %bb.bq
  %i.yg = mul nsw i32 %.0371.lcssa.i, %i.ws
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 2, ptr noundef nonnull @.str.36, i32 noundef %i.yg) #8
  tail call void @_Z6rcFreePv(ptr noundef null) #8
  br label %bb.dz

bb.br:                                            ; preds = %bb.bq
  %i.yh = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.xb, i32 noundef 1) #8 ; 17 uses
  %.not394.i = icmp eq ptr %i.yh, null
  br i1 %.not394.i, label %.critedge584, label %bb.bs

.critedge584:                                     ; preds = %bb.br
  %i.yi = mul nsw i32 %.0371.lcssa.i, %i.ws
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 2, ptr noundef nonnull @.str.37, i32 noundef %i.yi) #8
  tail call void @_Z6rcFreePv(ptr noundef null) #8
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.yf) #8
  br label %bb.dz

bb.bs:                                            ; preds = %bb.br
  %i.yj = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.xb, i32 noundef 1) #8 ; 14 uses
  %.not395.i = icmp eq ptr %i.yj, null
  br i1 %.not395.i, label %.critedge585, label %.preheader585.i

.preheader585.i:                                  ; preds = %bb.bs
  %i.yk = load i32, ptr %i.cd, align 4, !tbaa !73 ; 3 uses
  %i.yl = icmp sgt i32 %i.yk, 0
  br i1 %i.yl, label %.lr.ph618.i, label %._crit_edge619.i

.lr.ph618.i:                                      ; preds = %.preheader585.i
  %i.ym = shl i32 %i.ws, 1                        ; 2 uses
  %i.yn = icmp sgt i32 %i.ws, 0
  %wide.trip.count.i421.i = zext nneg i32 %i.ws to i64
  %i.yo = shl nuw nsw i64 %i.xa, 1                ; 2 uses
  %broadcast.splatinsert1530 = insertelement <8 x i16> poison, i16 %i.re, i64 0
  %broadcast.splat1531 = shufflevector <8 x i16> %broadcast.splatinsert1530, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1549 = insertelement <4 x i16> poison, i16 %i.re, i64 0
  %broadcast.splat1550 = shufflevector <4 x i16> %broadcast.splatinsert1549, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %bb.bt

.critedge585:                                     ; preds = %bb.bs
  %i.yp = mul nsw i32 %.0371.lcssa.i, %i.ws
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 2, ptr noundef nonnull @.str.38, i32 noundef %i.yp) #8
  tail call void @_Z6rcFreePv(ptr noundef null) #8
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.yh) #8
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.yf) #8
  br label %bb.dz

._crit_edge619.i:                                 ; preds = %.critedge694.i, %.preheader585.i
  %.0358.lcssa.i = phi i32 [ 0, %.preheader585.i ], [ %.3361.i, %.critedge694.i ] ; 4 uses
  %.lcssa593.i = phi i32 [ %i.yk, %.preheader585.i ], [ %i.acb, %.critedge694.i ] ; 2 uses
  %i.yq = and i32 %.0314813, 65535                ; 4 uses
  %i.yr = load i32, ptr %i.cc, align 8, !tbaa !72
  %i.ys = add nsw i32 %i.yr, -1                   ; 3 uses
  %i.yt = icmp sgt i32 %i.ys, %i.yq
  br i1 %i.yt, label %.lr.ph624.i, label %._crit_edge625.i

.lr.ph624.i:                                      ; preds = %._crit_edge619.i
  %i.yu = load ptr, ptr %3, align 8, !tbaa !68    ; 6 uses
  %i.yv = zext nneg i32 %i.yq to i64              ; 5 uses
  %wide.trip.count720.i = zext nneg i32 %i.ys to i64 ; 3 uses
  %i.yw = sub nsw i64 %wide.trip.count720.i, %i.yv
  %xtraiter1784 = and i64 %i.yw, 1
  %lcmp.mod1785.not = icmp eq i64 %xtraiter1784, 0
  br i1 %lcmp.mod1785.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph624.i
  %indvars.iv.next718.i.prol = add nuw nsw i64 %i.yv, 1 ; 2 uses
  %.idx.i451.prol = mul nuw nsw i64 %indvars.iv.next718.i.prol, 6
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yu, i64 %.idx.i451.prol ; 2 uses
  %.idx820.i.prol = mul nuw nsw i64 %i.yv, 6
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yu, i64 %.idx820.i.prol ; 2 uses
  %i.yz = load <2 x i16>, ptr %i.yx, align 2, !tbaa !77
  store <2 x i16> %i.yz, ptr %i.yy, align 2, !tbaa !77
  %i.za = getelementptr inbounds nuw i8, ptr %i.yx, i64 4
  %i.zb = load i16, ptr %i.za, align 2, !tbaa !77
  %i.zc = getelementptr inbounds nuw i8, ptr %i.yy, i64 4
  store i16 %i.zb, ptr %i.zc, align 2, !tbaa !77
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph624.i
  %indvars.iv717.i.unr = phi i64 [ %i.yv, %.lr.ph624.i ], [ %indvars.iv.next718.i.prol, %.prol.loopexit.unr-lcssa ]
  %i.zd = add nsw i64 %wide.trip.count720.i, -1
  %i.ze = icmp eq i64 %i.zd, %i.yv
  br i1 %i.ze, label %._crit_edge625.i, label %.lr.ph624.i.new

bb.bt:                                            ; preds = %.critedge694.i, %.lr.ph618.i
  %i.zf = phi i32 [ %i.yk, %.lr.ph618.i ], [ %i.acb, %.critedge694.i ] ; 3 uses
  %.0356617.i = phi i32 [ 0, %.lr.ph618.i ], [ %i.acc, %.critedge694.i ] ; 6 uses
  %.0358616.i = phi i32 [ 0, %.lr.ph618.i ], [ %.3361.i, %.critedge694.i ] ; 4 uses
  %i.zg = load ptr, ptr %i.bv, align 8, !tbaa !69 ; 2 uses
  %i.zh = mul i32 %.0356617.i, %i.ym              ; 2 uses
  %i.zi = sext i32 %i.zh to i64
  %i.zj = getelementptr inbounds [2 x i8], ptr %i.zg, i64 %i.zi ; 8 uses
  br i1 %i.yn, label %.lr.ph.i422.i, label %.critedge694.i

.lr.ph.i422.i:                                    ; preds = %bb.bt, %bb.bu
  %indvars.iv.i423.i = phi i64 [ %indvars.iv.next.i424.i, %bb.bu ], [ 0, %bb.bt ] ; 3 uses
  %i.zk = getelementptr inbounds nuw [2 x i8], ptr %i.zj, i64 %indvars.iv.i423.i
  %i.zl = load i16, ptr %i.zk, align 2, !tbaa !77
  %i.zm = icmp eq i16 %i.zl, -1
  br i1 %i.zm, label %._crit_edge.loopexit.split.loop.exit15.i426.i, label %bb.bu

bb.bu:                                            ; preds = %.lr.ph.i422.i
  %indvars.iv.next.i424.i = add nuw nsw i64 %indvars.iv.i423.i, 1 ; 2 uses
  %exitcond.not.i425.i = icmp eq i64 %indvars.iv.next.i424.i, %wide.trip.count.i421.i
  br i1 %exitcond.not.i425.i, label %_ZL14countPolyVertsPKti.exit427.i, label %.lr.ph.i422.i

._crit_edge.loopexit.split.loop.exit15.i426.i:    ; preds = %.lr.ph.i422.i
  %i.zn = trunc nuw nsw i64 %indvars.iv.i423.i to i32
  br label %_ZL14countPolyVertsPKti.exit427.i

_ZL14countPolyVertsPKti.exit427.i:                ; preds = %bb.bu, %._crit_edge.loopexit.split.loop.exit15.i426.i
  %i.zo = phi i32 [ %i.zn, %._crit_edge.loopexit.split.loop.exit15.i426.i ], [ %i.ws, %bb.bu ] ; 5 uses
  %i.zp = icmp sgt i32 %i.zo, 0
  br i1 %i.zp, label %iter.check1540, label %.critedge694.i

iter.check1540:                                   ; preds = %_ZL14countPolyVertsPKti.exit427.i
  %wide.trip.count710.i = zext nneg i32 %i.zo to i64 ; 7 uses
  %min.iters.check1525 = icmp samesign ult i32 %i.zo, 4
  br i1 %min.iters.check1525, label %.lr.ph606.i.preheader, label %vector.main.loop.iter.check1526

vector.main.loop.iter.check1526:                  ; preds = %iter.check1540
  %min.iters.check1527 = icmp samesign ult i32 %i.zo, 16
  br i1 %min.iters.check1527, label %vec.epilog.ph1544, label %vector.ph1528

vector.ph1528:                                    ; preds = %vector.main.loop.iter.check1526
  %i.zq = and i64 %wide.trip.count710.i, 12
  %n.vec1529 = and i64 %wide.trip.count710.i, 2147483632 ; 4 uses
  br label %vector.body1532

vector.body1532:                                  ; preds = %vector.ph1528, %vector.body1532
  %index1533 = phi i64 [ 0, %vector.ph1528 ], [ %index.next1537, %vector.body1532 ] ; 2 uses
  %vec.phi = phi <8 x i1> [ zeroinitializer, %vector.ph1528 ], [ %i.zv, %vector.body1532 ]
  %vec.phi1534 = phi <8 x i1> [ zeroinitializer, %vector.ph1528 ], [ %i.zw, %vector.body1532 ]
  %i.zr = getelementptr inbounds nuw [2 x i8], ptr %i.zj, i64 %index1533 ; 2 uses
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zr, i64 16
  %wide.load1535 = load <8 x i16>, ptr %i.zr, align 2, !tbaa !77
  %wide.load1536 = load <8 x i16>, ptr %i.zs, align 2, !tbaa !77
  %i.zt = icmp eq <8 x i16> %wide.load1535, %broadcast.splat1531
  %i.zu = icmp eq <8 x i16> %wide.load1536, %broadcast.splat1531
  %i.zv = or <8 x i1> %vec.phi, %i.zt             ; 2 uses
  %i.zw = or <8 x i1> %vec.phi1534, %i.zu         ; 2 uses
  %index.next1537 = add nuw i64 %index1533, 16    ; 2 uses
  %i.zx = icmp eq i64 %index.next1537, %n.vec1529
  br i1 %i.zx, label %middle.block1538, label %vector.body1532, !llvm.loop !94

middle.block1538:                                 ; preds = %vector.body1532
  %bin.rdx = or <8 x i1> %i.zw, %i.zv
  %bin.rdx.fr = freeze <8 x i1> %bin.rdx
  %i.zy = bitcast <8 x i1> %bin.rdx.fr to i8
  %i.zz = icmp ne i8 %i.zy, 0                     ; 3 uses
  %cmp.n1539 = icmp eq i64 %n.vec1529, %wide.trip.count710.i
  br i1 %cmp.n1539, label %._crit_edge607.i, label %vec.epilog.iter.check1541

vec.epilog.iter.check1541:                        ; preds = %middle.block1538
  %min.epilog.iters.check1543 = icmp eq i64 %i.zq, 0
  br i1 %min.epilog.iters.check1543, label %.lr.ph606.i.preheader, label %vec.epilog.ph1544, !prof !114

vec.epilog.ph1544:                                ; preds = %vector.main.loop.iter.check1526, %vec.epilog.iter.check1541
  %vec.epilog.resume.val1545 = phi i64 [ %n.vec1529, %vec.epilog.iter.check1541 ], [ 0, %vector.main.loop.iter.check1526 ]
  %bc.merge.rdx = phi i1 [ %i.zz, %vec.epilog.iter.check1541 ], [ false, %vector.main.loop.iter.check1526 ]
  %n.vec1546 = and i64 %wide.trip.count710.i, 2147483644 ; 3 uses
  %broadcast.splatinsert1547 = insertelement <4 x i1> poison, i1 %bc.merge.rdx, i64 0
  %broadcast.splat1548 = shufflevector <4 x i1> %broadcast.splatinsert1547, <4 x i1> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body1551

vec.epilog.vector.body1551:                       ; preds = %vec.epilog.vector.body1551, %vec.epilog.ph1544
  %index1552 = phi i64 [ %vec.epilog.resume.val1545, %vec.epilog.ph1544 ], [ %index.next1555, %vec.epilog.vector.body1551 ] ; 2 uses
  %vec.phi1553 = phi <4 x i1> [ %broadcast.splat1548, %vec.epilog.ph1544 ], [ %i.aac, %vec.epilog.vector.body1551 ]
  %i.aaa = getelementptr inbounds nuw [2 x i8], ptr %i.zj, i64 %index1552
  %wide.load1554 = load <4 x i16>, ptr %i.aaa, align 2, !tbaa !77
  %i.aab = icmp eq <4 x i16> %wide.load1554, %broadcast.splat1550
  %.fr = freeze <4 x i1> %i.aab
  %i.aac = or <4 x i1> %vec.phi1553, %.fr         ; 2 uses
  %index.next1555 = add nuw i64 %index1552, 4     ; 2 uses
  %i.aad = icmp eq i64 %index.next1555, %n.vec1546
  br i1 %i.aad, label %vec.epilog.middle.block1556, label %vec.epilog.vector.body1551, !llvm.loop !95

vec.epilog.middle.block1556:                      ; preds = %vec.epilog.vector.body1551
  %i.aae = bitcast <4 x i1> %i.aac to i4
  %i.aaf = icmp ne i4 %i.aae, 0                   ; 2 uses
  %cmp.n1557 = icmp eq i64 %n.vec1546, %wide.trip.count710.i
  br i1 %cmp.n1557, label %._crit_edge607.i, label %.lr.ph606.i.preheader

.lr.ph606.i.preheader:                            ; preds = %iter.check1540, %vec.epilog.iter.check1541, %vec.epilog.middle.block1556
  %indvars.iv708.i.ph = phi i64 [ 0, %iter.check1540 ], [ %n.vec1529, %vec.epilog.iter.check1541 ], [ %n.vec1546, %vec.epilog.middle.block1556 ]
  %.0354604.i.ph = phi i1 [ false, %iter.check1540 ], [ %i.zz, %vec.epilog.iter.check1541 ], [ %i.aaf, %vec.epilog.middle.block1556 ]
  br label %.lr.ph606.i

._crit_edge607.i:                                 ; preds = %.lr.ph606.i, %vec.epilog.middle.block1556, %middle.block1538
  %spec.select416.i.lcssa = phi i1 [ %i.aaf, %vec.epilog.middle.block1556 ], [ %i.zz, %middle.block1538 ], [ %spec.select416.i, %.lr.ph606.i ]
  br i1 %spec.select416.i.lcssa, label %.lr.ph613.i, label %.critedge694.i

.lr.ph606.i:                                      ; preds = %.lr.ph606.i.preheader, %.lr.ph606.i
  %indvars.iv708.i = phi i64 [ %indvars.iv.next709.i, %.lr.ph606.i ], [ %indvars.iv708.i.ph, %.lr.ph606.i.preheader ] ; 2 uses
  %.0354604.i = phi i1 [ %spec.select416.i, %.lr.ph606.i ], [ %.0354604.i.ph, %.lr.ph606.i.preheader ]
  %i.aag = getelementptr inbounds nuw [2 x i8], ptr %i.zj, i64 %indvars.iv708.i
  %i.aah = load i16, ptr %i.aag, align 2, !tbaa !77
  %i.aai = icmp eq i16 %i.aah, %i.re
  %spec.select416.i = select i1 %i.aai, i1 true, i1 %.0354604.i ; 2 uses
  %indvars.iv.next709.i = add nuw nsw i64 %indvars.iv708.i, 1 ; 2 uses
  %exitcond711.not.i = icmp eq i64 %indvars.iv.next709.i, %wide.trip.count710.i
  br i1 %exitcond711.not.i, label %._crit_edge607.i, label %.lr.ph606.i, !llvm.loop !96

.lr.ph613.i:                                      ; preds = %._crit_edge607.i
  %i.aaj = add nsw i32 %i.zo, -1
  %i.aak = sext i32 %.0356617.i to i64            ; 4 uses
  %i.aal = zext nneg i32 %i.aaj to i64
  br label %bb.bv

._crit_edge614.i:                                 ; preds = %bb.by
  %.pre.i452 = load i32, ptr %i.cd, align 4, !tbaa !73
  %i.aam = add nsw i32 %.pre.i452, -1
  %i.aan = mul i32 %i.aam, %i.ym                  ; 2 uses
  %.not413.i = icmp eq i32 %i.zh, %i.aan
  br i1 %.not413.i, label %bb.ca, label %bb.bz

bb.bv:                                            ; preds = %bb.by, %.lr.ph613.i
  %indvars.iv712.i = phi i64 [ 0, %.lr.ph613.i ], [ %indvars.iv.next713.i, %bb.by ] ; 3 uses
  %.0351611.i = phi i64 [ %i.aal, %.lr.ph613.i ], [ %indvars.iv712.i, %bb.by ]
  %.1359609.i = phi i32 [ %.0358616.i, %.lr.ph613.i ], [ %.2360.i, %bb.by ] ; 4 uses
  %i.aao = getelementptr inbounds nuw [2 x i8], ptr %i.zj, i64 %indvars.iv712.i
  %i.aap = load i16, ptr %i.aao, align 2, !tbaa !77 ; 2 uses
  %.not414.i = icmp eq i16 %i.aap, %i.re
  br i1 %.not414.i, label %bb.by, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.aaq = getelementptr inbounds nuw [2 x i8], ptr %i.zj, i64 %.0351611.i
  %i.aar = load i16, ptr %i.aaq, align 2, !tbaa !77 ; 2 uses
  %.not415.i = icmp eq i16 %i.aar, %i.re
  br i1 %.not415.i, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.aas = shl nsw i32 %.1359609.i, 2
  %i.aat = sext i32 %i.aas to i64
  %i.aau = getelementptr inbounds [4 x i8], ptr %i.xd, i64 %i.aat ; 4 uses
  %i.aav = zext i16 %i.aar to i32
  store i32 %i.aav, ptr %i.aau, align 4, !tbaa !76
  %i.aaw = zext i16 %i.aap to i32
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aau, i64 4
  store i32 %i.aaw, ptr %i.aax, align 4, !tbaa !76
  %i.aay = load ptr, ptr %i.bz, align 8, !tbaa !70
  %i.aaz = getelementptr inbounds [2 x i8], ptr %i.aay, i64 %i.aak
  %i.aba = load i16, ptr %i.aaz, align 2, !tbaa !77
  %i.abb = zext i16 %i.aba to i32
  %i.abc = getelementptr inbounds nuw i8, ptr %i.aau, i64 8
  store i32 %i.abb, ptr %i.abc, align 4, !tbaa !76
  %i.abd = load ptr, ptr %i.cb, align 8, !tbaa !71
  %i.abe = getelementptr inbounds i8, ptr %i.abd, i64 %i.aak
  %i.abf = load i8, ptr %i.abe, align 1, !tbaa !78
  %i.abg = zext i8 %i.abf to i32
  %i.abh = getelementptr inbounds nuw i8, ptr %i.aau, i64 12
  store i32 %i.abg, ptr %i.abh, align 4, !tbaa !76
  %i.abi = add nsw i32 %.1359609.i, 1
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw, %bb.bv
  %.2360.i = phi i32 [ %i.abi, %bb.bx ], [ %.1359609.i, %bb.bw ], [ %.1359609.i, %bb.bv ] ; 2 uses
  %indvars.iv.next713.i = add nuw nsw i64 %indvars.iv712.i, 1 ; 2 uses
  %exitcond716.not.i = icmp eq i64 %indvars.iv.next713.i, %wide.trip.count710.i
  br i1 %exitcond716.not.i, label %._crit_edge614.i, label %bb.bv

bb.bz:                                            ; preds = %._crit_edge614.i
  %i.abj = sext i32 %i.aan to i64
  %i.abk = getelementptr inbounds [2 x i8], ptr %i.zg, i64 %i.abj
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.zj, ptr align 2 %i.abk, i64 %i.yo, i1 false)
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %._crit_edge614.i
  %i.abl = getelementptr inbounds nuw [2 x i8], ptr %i.zj, i64 %i.xa
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.abl, i8 -1, i64 %i.yo, i1 false)
  %i.abm = load ptr, ptr %i.bz, align 8, !tbaa !70 ; 2 uses
  %i.abn = load i32, ptr %i.cd, align 4, !tbaa !73
  %i.abo = sext i32 %i.abn to i64                 ; 2 uses
  %i.abp = getelementptr [2 x i8], ptr %i.abm, i64 %i.abo
  %i.abq = getelementptr i8, ptr %i.abp, i64 -2
  %i.abr = load i16, ptr %i.abq, align 2, !tbaa !77
  %i.abs = getelementptr inbounds [2 x i8], ptr %i.abm, i64 %i.aak
  store i16 %i.abr, ptr %i.abs, align 2, !tbaa !77
  %i.abt = load ptr, ptr %i.cb, align 8, !tbaa !71 ; 2 uses
  %i.abu = getelementptr i8, ptr %i.abt, i64 %i.abo
  %i.abv = getelementptr i8, ptr %i.abu, i64 -1
  %i.abw = load i8, ptr %i.abv, align 1, !tbaa !78
  %i.abx = getelementptr inbounds i8, ptr %i.abt, i64 %i.aak
  store i8 %i.abw, ptr %i.abx, align 1, !tbaa !78
  %i.aby = load i32, ptr %i.cd, align 4, !tbaa !73
  %i.abz = add nsw i32 %i.aby, -1                 ; 2 uses
  store i32 %i.abz, ptr %i.cd, align 4, !tbaa !73
  %i.aca = add nsw i32 %.0356617.i, -1
  br label %.critedge694.i

.critedge694.i:                                   ; preds = %bb.ca, %._crit_edge607.i, %_ZL14countPolyVertsPKti.exit427.i, %bb.bt
  %i.acb = phi i32 [ %i.abz, %bb.ca ], [ %i.zf, %._crit_edge607.i ], [ %i.zf, %_ZL14countPolyVertsPKti.exit427.i ], [ %i.zf, %bb.bt ] ; 3 uses
  %.3361.i = phi i32 [ %.2360.i, %bb.ca ], [ %.0358616.i, %._crit_edge607.i ], [ %.0358616.i, %_ZL14countPolyVertsPKti.exit427.i ], [ %.0358616.i, %bb.bt ] ; 2 uses
  %.1357.i = phi i32 [ %i.aca, %bb.ca ], [ %.0356617.i, %._crit_edge607.i ], [ %.0356617.i, %_ZL14countPolyVertsPKti.exit427.i ], [ %.0356617.i, %bb.bt ]
  %i.acc = add nsw i32 %.1357.i, 1                ; 2 uses
  %i.acd = icmp slt i32 %i.acc, %i.acb
  br i1 %i.acd, label %bb.bt, label %._crit_edge619.i

._crit_edge625.i:                                 ; preds = %.prol.loopexit, %.lr.ph624.i.new, %._crit_edge619.i
  store i32 %i.ys, ptr %i.cc, align 8, !tbaa !72
  %i.ace = icmp sgt i32 %.lcssa593.i, 0
  br i1 %i.ace, label %.lr.ph632.i, label %.preheader584.i

.lr.ph632.i:                                      ; preds = %._crit_edge625.i
  %i.acf = load ptr, ptr %i.bv, align 8, !tbaa !69
  %i.acg = shl i32 %i.ws, 1
  %i.ach = icmp sgt i32 %i.ws, 0
  %wide.trip.count.i429.i = zext nneg i32 %i.ws to i64
  %wide.trip.count730.i = zext nneg i32 %.lcssa593.i to i64
  br i1 %i.ach, label %.lr.ph.i430.i.preheader.preheader, label %.preheader584.i

.lr.ph.i430.i.preheader.preheader:                ; preds = %.lr.ph632.i
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.re, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1500 = insertelement <8 x i16> poison, i16 %i.re, i64 0
  %broadcast.splat1501 = shufflevector <8 x i16> %broadcast.splatinsert1500, <8 x i16> poison, <8 x i32> zeroinitializer
  br label %.lr.ph.i430.i.preheader

.lr.ph624.i.new:                                  ; preds = %.prol.loopexit, %.lr.ph624.i.new
  %indvars.iv717.i = phi i64 [ %indvars.iv.next718.i.1, %.lr.ph624.i.new ], [ %indvars.iv717.i.unr, %.prol.loopexit ] ; 3 uses
  %indvars.iv.next718.i = add nuw nsw i64 %indvars.iv717.i, 1 ; 2 uses
  %.idx.i451 = mul nuw nsw i64 %indvars.iv.next718.i, 6
  %i.aci = getelementptr inbounds nuw i8, ptr %i.yu, i64 %.idx.i451 ; 2 uses
  %.idx820.i = mul nuw nsw i64 %indvars.iv717.i, 6
  %i.acj = getelementptr inbounds nuw i8, ptr %i.yu, i64 %.idx820.i ; 2 uses
  %i.ack = load <2 x i16>, ptr %i.aci, align 2, !tbaa !77
  store <2 x i16> %i.ack, ptr %i.acj, align 2, !tbaa !77
  %i.acl = getelementptr inbounds nuw i8, ptr %i.aci, i64 4
  %i.acm = load i16, ptr %i.acl, align 2, !tbaa !77
  %i.acn = getelementptr inbounds nuw i8, ptr %i.acj, i64 4
  store i16 %i.acm, ptr %i.acn, align 2, !tbaa !77
  %indvars.iv.next718.i.1 = add nuw nsw i64 %indvars.iv717.i, 2 ; 3 uses
  %.idx.i451.1 = mul nuw nsw i64 %indvars.iv.next718.i.1, 6
  %i.aco = getelementptr inbounds nuw i8, ptr %i.yu, i64 %.idx.i451.1 ; 2 uses
  %.idx820.i.1 = mul nuw nsw i64 %indvars.iv.next718.i, 6
  %i.acp = getelementptr inbounds nuw i8, ptr %i.yu, i64 %.idx820.i.1 ; 2 uses
  %i.acq = load <2 x i16>, ptr %i.aco, align 2, !tbaa !77
  store <2 x i16> %i.acq, ptr %i.acp, align 2, !tbaa !77
  %i.acr = getelementptr inbounds nuw i8, ptr %i.aco, i64 4
  %i.acs = load i16, ptr %i.acr, align 2, !tbaa !77
  %i.act = getelementptr inbounds nuw i8, ptr %i.acp, i64 4
  store i16 %i.acs, ptr %i.act, align 2, !tbaa !77
  %exitcond721.not.i.1 = icmp eq i64 %indvars.iv.next718.i.1, %wide.trip.count720.i
  br i1 %exitcond721.not.i.1, label %._crit_edge625.i, label %.lr.ph624.i.new

.preheader584.i:                                  ; preds = %._crit_edge629.i, %.lr.ph632.i, %._crit_edge625.i
  %i.acu = icmp sgt i32 %.0358.lcssa.i, 0
  br i1 %i.acu, label %.lr.ph634.preheader.i, label %._crit_edge635.i

.lr.ph634.preheader.i:                            ; preds = %.preheader584.i
  %wide.trip.count735.i = zext nneg i32 %.0358.lcssa.i to i64
  br label %.lr.ph634.i

.lr.ph.i430.i.preheader:                          ; preds = %.lr.ph.i430.i.preheader.preheader, %._crit_edge629.i
  %indvars.iv727.i = phi i64 [ %indvars.iv.next728.i, %._crit_edge629.i ], [ 0, %.lr.ph.i430.i.preheader.preheader ] ; 2 uses
  %i.acv = trunc nuw nsw i64 %indvars.iv727.i to i32
  %i.acw = mul i32 %i.acg, %i.acv
  %i.acx = sext i32 %i.acw to i64
  %i.acy = getelementptr inbounds [2 x i8], ptr %i.acf, i64 %i.acx ; 26 uses
  br label %.lr.ph.i430.i

.lr.ph.i430.i:                                    ; preds = %.lr.ph.i430.i.preheader, %bb.cb
  %indvars.iv.i431.i = phi i64 [ %indvars.iv.next.i432.i, %bb.cb ], [ 0, %.lr.ph.i430.i.preheader ] ; 3 uses
  %i.acz = getelementptr inbounds nuw [2 x i8], ptr %i.acy, i64 %indvars.iv.i431.i
  %i.ada = load i16, ptr %i.acz, align 2, !tbaa !77
  %i.adb = icmp eq i16 %i.ada, -1
  br i1 %i.adb, label %._crit_edge.loopexit.split.loop.exit15.i434.i, label %bb.cb

bb.cb:                                            ; preds = %.lr.ph.i430.i
  %indvars.iv.next.i432.i = add nuw nsw i64 %indvars.iv.i431.i, 1 ; 2 uses
  %exitcond.not.i433.i = icmp eq i64 %indvars.iv.next.i432.i, %wide.trip.count.i429.i
  br i1 %exitcond.not.i433.i, label %_ZL14countPolyVertsPKti.exit435.i, label %.lr.ph.i430.i

._crit_edge.loopexit.split.loop.exit15.i434.i:    ; preds = %.lr.ph.i430.i
  %i.adc = trunc nuw nsw i64 %indvars.iv.i431.i to i32
  br label %_ZL14countPolyVertsPKti.exit435.i

_ZL14countPolyVertsPKti.exit435.i:                ; preds = %bb.cb, %._crit_edge.loopexit.split.loop.exit15.i434.i
  %i.add = phi i32 [ %i.adc, %._crit_edge.loopexit.split.loop.exit15.i434.i ], [ %i.ws, %bb.cb ] ; 4 uses
  %i.ade = icmp sgt i32 %i.add, 0
  br i1 %i.ade, label %iter.check1493, label %._crit_edge629.i

iter.check1493:                                   ; preds = %_ZL14countPolyVertsPKti.exit435.i
  %wide.trip.count725.i = zext nneg i32 %i.add to i64 ; 6 uses
  %min.iters.check1451 = icmp samesign ult i32 %i.add, 8
  br i1 %min.iters.check1451, label %.lr.ph628.i.preheader, label %vector.main.loop.iter.check1452

vector.main.loop.iter.check1452:                  ; preds = %iter.check1493
  %min.iters.check1453 = icmp samesign ult i32 %i.add, 16
  br i1 %min.iters.check1453, label %vec.epilog.ph1497, label %vector.ph1454

vector.ph1454:                                    ; preds = %vector.main.loop.iter.check1452
  %i.adf = and i64 %wide.trip.count725.i, 8
  %n.vec1455 = and i64 %wide.trip.count725.i, 2147483632 ; 4 uses
  br label %vector.body1456

vector.body1456:                                  ; preds = %vector.ph1454, %pred.store.continue1489
  %index1457 = phi i64 [ 0, %vector.ph1454 ], [ %index.next1490, %pred.store.continue1489 ] ; 17 uses
  %i.adg = getelementptr inbounds nuw [2 x i8], ptr %i.acy, i64 %index1457 ; 3 uses
  %i.adh = getelementptr inbounds nuw i8, ptr %i.adg, i64 16
  %wide.load1458 = load <8 x i16>, ptr %i.adg, align 2, !tbaa !77 ; 9 uses
  %wide.load1459 = load <8 x i16>, ptr %i.adh, align 2, !tbaa !77 ; 9 uses
  %i.adi = icmp ugt <8 x i16> %wide.load1458, %broadcast.splat ; 8 uses
  %i.adj = icmp ugt <8 x i16> %wide.load1459, %broadcast.splat ; 8 uses
  %i.adk = extractelement <8 x i1> %i.adi, i64 0
  br i1 %i.adk, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body1456
  %i.adl = extractelement <8 x i16> %wide.load1458, i64 0
  %i.adm = add i16 %i.adl, -1
  store i16 %i.adm, ptr %i.adg, align 2, !tbaa !77
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body1456
  %i.adn = extractelement <8 x i1> %i.adi, i64 1
  br i1 %i.adn, label %pred.store.if1460, label %pred.store.continue1461

pred.store.if1460:                                ; preds = %pred.store.continue
  %i.ado = getelementptr inbounds nuw [2 x i8], ptr %i.acy, i64 %index1457
  %i.adp = getelementptr inbounds nuw i8, ptr %i.ado, i64 2
  %i.adq = extractelement <8 x i16> %wide.load1458, i64 1
  %i.adr = add i16 %i.adq, -1
  store i16 %i.adr, ptr %i.adp, align 2, !tbaa !77
  br label %pred.store.continue1461

pred.store.continue1461:                          ; preds = %pred.store.if1460, %pred.store.continue
  %i.ads = extractelement <8 x i1> %i.adi, i64 2
  br i1 %i.ads, label %pred.store.if1462, label %pred.store.continue1463

pred.store.if1462:                                ; preds = %pred.store.continue1461
  %i.adt = getelementptr inbounds nuw [2 x i8], ptr %i.acy, i64 %index1457
  %i.adu = getelementptr inbounds nuw i8, ptr %i.adt, i64 4
  %i.adv = extractelement <8 x i16> %wide.load1458, i64 2
  %i.adw = add i16 %i.adv, -1
  store i16 %i.adw, ptr %i.adu, align 2, !tbaa !77
  br label %pred.store.continue1463

pred.store.continue1463:                          ; preds = %pred.store.if1462, %pred.store.continue1461
  %i.adx = extractelement <8 x i1> %i.adi, i64 3
  br i1 %i.adx, label %pred.store.if1464, label %pred.store.continue1465

pred.store.if1464:                                ; preds = %pred.store.continue1463
  %i.ady = getelementptr inbounds nuw [2 x i8], ptr %i.acy, i64 %index1457
  %i.adz = getelementptr inbounds nuw i8, ptr %i.ady, i64 6
  %i.aea = extractelement <8 x i16> %wide.load1458, i64 3
  %i.aeb = add i16 %i.aea, -1
  store i16 %i.aeb, ptr %i.adz, align 2, !tbaa !77
  br label %pred.store.continue1465

pred.store.continue1465:                          ; preds = %pred.store.if1464, %pred.store.continue1463
  %i.aec = extractelement <8 x i1> %i.adi, i64 4
  br i1 %i.aec, label %pred.store.if1466, label %pred.store.continue1467

pred.store.if1466:                                ; preds = %pred.store.continue1465
  %i.aed = getelementptr inbounds nuw [2 x i8], ptr %i.acy, i64 %index1457
  %i.aee = getelementptr inbounds nuw i8, ptr %i.aed, i64 8
  %i.aef = extractelement <8 x i16> %wide.load1458, i64 4
  %i.aeg = add i16 %i.aef, -1
  store i16 %i.aeg, ptr %i.aee, align 2, !tbaa !77
  br label %pred.store.continue1467

pred.store.continue1467:                          ; preds = %pred.store.if1466, %pred.store.continue1465
  %i.aeh = extractelement <8 x i1> %i.adi, i64 5
  br i1 %i.aeh, label %pred.store.if1468, label %pred.store.continue1469

pred.store.if1468:                                ; preds = %pred.store.continue1467
  %i.aei = getelementptr inbounds nuw [2 x i8], ptr %i.acy, i64 %index1457
  %i.aej = getelementptr inbounds nuw i8, ptr %i.aei, i64 10
  %i.aek = extractelement <8 x i16> %wide.load1458, i64 5
  %i.ael = add i16 %i.aek, -1
  store i16 %i.ael, ptr %i.aej, align 2, !tbaa !77
  br label %pred.store.continue1469

pred.store.continue1469:                          ; preds = %pred.store.if1468, %pred.store.continue1467
  %i.aem = extractelement <8 x i1> %i.adi, i64 6
  br i1 %i.aem, label %pred.store.if1470, label %pred.store.continue1471

pred.store.if1470:                                ; preds = %pred.store.continue1469
  %i.aen = getelementptr inbounds nuw [2 x i8], ptr %i.acy, i64 %index1457
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.aen, i64 12
  %i.aep = extractelement <8 x i16> %wide.load1458, i64 6
  %i.aeq = add i16 %i.aep, -1
  store i16 %i.aeq, ptr %i.aeo, align 2, !tbaa !77
  br label %pred.store.continue1471

pred.store.continue1471:                          ; preds = %pred.store.if1470, %pred.store.continue1469
  %i.aer = extractelement <8 x i1> %i.adi, i64 7
  br i1 %i.aer, label %pred.store.if1472, label %pred.store.continue1473

pred.store.if1472:                                ; preds = %pred.store.continue1471
  %i.aes = getelementptr inbounds nuw [2 x i8], ptr %i.acy, i64 %index1457
  %i.aet = getelementptr inbounds nuw i8, ptr %i.aes, i64 14
  %i.aeu = extractelement <8 x i16> %wide.load1458, i64 7
  %i.aev = add i16 %i.aeu, -1
  store i16 %i.aev, ptr %i.aet, align 2, !tbaa !77
  br label %pred.store.continue1473

pred.store.continue1473:                          ; preds = %pred.store.if1472, %pred.store.continue1471
  %i.aew = extractelement <8 x i1> %i.adj, i64 0
  br i1 %i.aew, label %pred.store.if1474, label %pred.store.continue1475

pred.store.if1474:                                ; preds = %pred.store.continue1473
  %i.aex = getelementptr inbounds nuw [2 x i8], ptr %i.acy, i64 %index1457
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aex, i64 16
  %i.aez = extractelement <8 x i16> %wide.load1459, i64 0
  %i.afa = add i16 %i.aez, -1
  store i16 %i.afa, ptr %i.aey, align 2, !tbaa !77
  br label %pred.store.continue1475

pred.store.continue1475:                          ; preds = %pred.store.if1474, %pred.store.continue1473
  %i.afb = extractelement <8 x i1> %i.adj, i64 1
  br i1 %i.afb, label %pred.store.if1476, label %pred.store.continue1477

pred.store.if1476:                                ; preds = %pred.store.continue1475
  %i.afc = getelementptr inbounds nuw [2 x i8], ptr %i.acy, i64 %index1457
  %i.afd = getelementptr inbounds nuw i8, ptr %i.afc, i64 18
  %i.afe = extractelement <8 x i16> %wide.load1459, i64 1
  %i.aff = add i16 %i.afe, -1
  store i16 %i.aff, ptr %i.afd, align 2, !tbaa !77
  br label %pred.store.continue1477

pred.store.continue1477:                          ; preds = %pred.store.if1476, %pred.store.continue1475
  %i.afg = extractelement <8 x i1> %i.adj, i64 2
  br i1 %i.afg, label %pred.store.if1478, label %pred.store.continue1479

pred.store.if1478:                                ; preds = %pred.store.continue1477
  %i.afh = getelementptr inbounds nuw [2 x i8], ptr %i.acy, i64 %index1457
  %i.afi = getelementptr inbounds nuw i8, ptr %i.afh, i64 20
  %i.afj = extractelement <8 x i16> %wide.load1459, i64 2
  %i.afk = add i16 %i.afj, -1
  store i16 %i.afk, ptr %i.afi, align 2, !tbaa !77
  br label %pred.store.continue1479

pred.store.continue1479:                          ; preds = %pred.store.if1478, %pred.store.continue1477
  %i.afl = extractelement <8 x i1> %i.adj, i64 3
  br i1 %i.afl, label %pred.store.if1480, label %pred.store.continue1481

pred.store.if1480:                                ; preds = %pred.store.continue1479
  %i.afm = getelementptr inbounds nuw [2 x i8], ptr %i.acy, i64 %index1457
  %i.afn = getelementptr inbounds nuw i8, ptr %i.afm, i64 22
  %i.afo = extractelement <8 x i16> %wide.load1459, i64 3
  %i.afp = add i16 %i.afo, -1
  store i16 %i.afp, ptr %i.afn, align 2, !tbaa !77
  br label %pred.store.continue1481

pred.store.continue1481:                          ; preds = %pred.store.if1480, %pred.store.continue1479
  %i.afq = extractelement <8 x i1> %i.adj, i64 4
  br i1 %i.afq, label %pred.store.if1482, label %pred.store.continue1483

pred.store.if1482:                                ; preds = %pred.store.continue1481
  %i.afr = getelementptr inbounds nuw [2 x i8], ptr %i.acy, i64 %index1457
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afr, i64 24
  %i.aft = extractelement <8 x i16> %wide.load1459, i64 4
  %i.afu = add i16 %i.aft, -1
  store i16 %i.afu, ptr %i.afs, align 2, !tbaa !77
  br label %pred.store.continue1483

pred.store.continue1483:                          ; preds = %pred.store.if1482, %pred.store.continue1481
  %i.afv = extractelement <8 x i1> %i.adj, i64 5
  br i1 %i.afv, label %pred.store.if1484, label %pred.store.continue1485

pred.store.if1484:                                ; preds = %pred.store.continue1483
  %i.afw = getelementptr inbounds nuw [2 x i8], ptr %i.acy, i64 %index1457
  %i.afx = getelementptr inbounds nuw i8, ptr %i.afw, i64 26
  %i.afy = extractelement <8 x i16> %wide.load1459, i64 5
  %i.afz = add i16 %i.afy, -1
  store i16 %i.afz, ptr %i.afx, align 2, !tbaa !77
  br label %pred.store.continue1485

pred.store.continue1485:                          ; preds = %pred.store.if1484, %pred.store.continue1483
  %i.aga = extractelement <8 x i1> %i.adj, i64 6
  br i1 %i.aga, label %pred.store.if1486, label %pred.store.continue1487

pred.store.if1486:                                ; preds = %pred.store.continue1485
  %i.agb = getelementptr inbounds nuw [2 x i8], ptr %i.acy, i64 %index1457
  %i.agc = getelementptr inbounds nuw i8, ptr %i.agb, i64 28
  %i.agd = extractelement <8 x i16> %wide.load1459, i64 6
  %i.age = add i16 %i.agd, -1
  store i16 %i.age, ptr %i.agc, align 2, !tbaa !77
  br label %pred.store.continue1487

pred.store.continue1487:                          ; preds = %pred.store.if1486, %pred.store.continue1485
  %i.agf = extractelement <8 x i1> %i.adj, i64 7
  br i1 %i.agf, label %pred.store.if1488, label %pred.store.continue1489

pred.store.if1488:                                ; preds = %pred.store.continue1487
  %i.agg = getelementptr inbounds nuw [2 x i8], ptr %i.acy, i64 %index1457
  %i.agh = getelementptr inbounds nuw i8, ptr %i.agg, i64 30
  %i.agi = extractelement <8 x i16> %wide.load1459, i64 7
end_hunk_1
begin_hunk_2_@_Z15rcBuildPolyMeshP9rcContextRK12rcContourSetiR10rcPolyMesh:bb.a
  br i1 %exitcond.not.i.i.i, label %.lr.ph.preheader.i28.i.i, label %.lr.ph.i.i.i

._crit_edge.loopexit.split.loop.exit15.i.i.i:     ; preds = %.lr.ph.i.i.i
  %i.aun = trunc nuw nsw i64 %indvars.iv.i.i.i to i32
  br label %.lr.ph.preheader.i28.i.i

.lr.ph.preheader.i28.i.i:                         ; preds = %bb.dn, %._crit_edge.loopexit.split.loop.exit15.i.i.i
  %i.auo = phi i32 [ %i.aun, %._crit_edge.loopexit.split.loop.exit15.i.i.i ], [ %i.ws, %bb.dn ] ; 5 uses
  br label %.lr.ph.i30.i.i

.lr.ph.i30.i.i:                                   ; preds = %bb.do, %.lr.ph.preheader.i28.i.i
  %indvars.iv.i31.i.i = phi i64 [ 0, %.lr.ph.preheader.i28.i.i ], [ %indvars.iv.next.i32.i.i, %bb.do ] ; 3 uses
  %i.aup = getelementptr inbounds nuw [2 x i8], ptr %i.auj, i64 %indvars.iv.i31.i.i
  %i.auq = load i16, ptr %i.aup, align 2, !tbaa !77
  %i.aur = icmp eq i16 %i.auq, -1
  br i1 %i.aur, label %._crit_edge.loopexit.split.loop.exit15.i34.i.i, label %bb.do

bb.do:                                            ; preds = %.lr.ph.i30.i.i
  %indvars.iv.next.i32.i.i = add nuw nsw i64 %indvars.iv.i31.i.i, 1 ; 2 uses
  %exitcond.not.i33.i.i = icmp eq i64 %indvars.iv.next.i32.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i33.i.i, label %_ZL14countPolyVertsPKti.exit35.i.i, label %.lr.ph.i30.i.i

._crit_edge.loopexit.split.loop.exit15.i34.i.i:   ; preds = %.lr.ph.i30.i.i
  %i.aus = trunc nuw nsw i64 %indvars.iv.i31.i.i to i32
  br label %_ZL14countPolyVertsPKti.exit35.i.i

_ZL14countPolyVertsPKti.exit35.i.i:               ; preds = %bb.do, %._crit_edge.loopexit.split.loop.exit15.i34.i.i
  %i.aut = phi i32 [ %i.aus, %._crit_edge.loopexit.split.loop.exit15.i34.i.i ], [ %i.ws, %bb.do ] ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.amw, i8 -1, i64 %i.aol, i1 false)
  %i.auu = icmp sgt i32 %i.auo, 1
  br i1 %i.auu, label %.lr.ph.i445.i, label %.preheader.i.i

.lr.ph.i445.i:                                    ; preds = %_ZL14countPolyVertsPKti.exit35.i.i
  %i.auv = add nsw i32 %i.auo, -1                 ; 3 uses
  %wide.trip.count.i446.i = zext nneg i32 %i.auv to i64 ; 4 uses
  %xtraiter1788 = and i64 %wide.trip.count.i446.i, 1
  %i.auw = icmp eq i32 %i.auv, 1
  br i1 %i.auw, label %.epil.preheader1787, label %.lr.ph.i445.i.new

.lr.ph.i445.i.new:                                ; preds = %.lr.ph.i445.i
  %unroll_iter1791 = and i64 %wide.trip.count.i446.i, 2147483646
  br label %bb.dp

.preheader.i.i.loopexit.unr-lcssa:                ; preds = %bb.dp
  %lcmp.mod1789.not = icmp eq i64 %xtraiter1788, 0
  br i1 %lcmp.mod1789.not, label %.preheader.i.i, label %.epil.preheader1787

.epil.preheader1787:                              ; preds = %.preheader.i.i.loopexit.unr-lcssa, %.lr.ph.i445.i
  %indvars.iv.i447.i.epil.init = phi i64 [ 0, %.lr.ph.i445.i ], [ %indvars.iv.next.i448.i.1, %.preheader.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1790 = trunc i32 %i.auv to i1
  tail call void @llvm.assume(i1 %lcmp.mod1790)
  %indvars45.i.i.epil = trunc i64 %indvars.iv.i447.i.epil.init to i32
  %i.aux = add nsw i32 %i.aor, %indvars45.i.i.epil
  %i.auy = srem i32 %i.aux, %i.auo
  %i.auz = sext i32 %i.auy to i64
  %i.ava = getelementptr inbounds [2 x i8], ptr %i.aug, i64 %i.auz
  %i.avb = load i16, ptr %i.ava, align 2, !tbaa !77
  %i.avc = getelementptr inbounds nuw [2 x i8], ptr %i.amw, i64 %indvars.iv.i447.i.epil.init
  store i16 %i.avb, ptr %i.avc, align 2, !tbaa !77
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.epil.preheader1787, %.preheader.i.i.loopexit.unr-lcssa, %_ZL14countPolyVertsPKti.exit35.i.i
  %.027.lcssa.i.i = phi i64 [ 0, %_ZL14countPolyVertsPKti.exit35.i.i ], [ %wide.trip.count.i446.i, %.preheader.i.i.loopexit.unr-lcssa ], [ %wide.trip.count.i446.i, %.epil.preheader1787 ] ; 2 uses
  %i.avd = icmp sgt i32 %i.aut, 1
  br i1 %i.avd, label %.lr.ph42.i.i, label %_ZL14mergePolyVertsPtS_iiS_i.exit.i

.lr.ph42.i.i:                                     ; preds = %.preheader.i.i
  %i.ave = add nsw i32 %i.aut, -1                 ; 3 uses
  %xtraiter1794 = and i32 %i.ave, 1
  %i.avf = icmp eq i32 %i.aut, 2
  br i1 %i.avf, label %.epil.preheader1793, label %.lr.ph42.i.i.new

.lr.ph42.i.i.new:                                 ; preds = %.lr.ph42.i.i
  %unroll_iter1797 = and i32 %i.ave, -2
  br label %bb.dq

bb.dp:                                            ; preds = %bb.dp, %.lr.ph.i445.i.new
  %indvars.iv.i447.i = phi i64 [ 0, %.lr.ph.i445.i.new ], [ %indvars.iv.next.i448.i.1, %bb.dp ] ; 4 uses
  %niter1792 = phi i64 [ 0, %.lr.ph.i445.i.new ], [ %niter1792.next.1, %bb.dp ]
  %indvars45.i.i = trunc i64 %indvars.iv.i447.i to i32
  %i.avg = add nsw i32 %i.aor, %indvars45.i.i
  %i.avh = srem i32 %i.avg, %i.auo
  %i.avi = sext i32 %i.avh to i64
  %i.avj = getelementptr inbounds [2 x i8], ptr %i.aug, i64 %i.avi
  %i.avk = load i16, ptr %i.avj, align 2, !tbaa !77
  %indvars.iv.next.i448.i = or disjoint i64 %indvars.iv.i447.i, 1 ; 2 uses
  %i.avl = getelementptr inbounds nuw [2 x i8], ptr %i.amw, i64 %indvars.iv.i447.i
  store i16 %i.avk, ptr %i.avl, align 2, !tbaa !77
  %indvars45.i.i.1 = trunc i64 %indvars.iv.next.i448.i to i32
  %i.avm = add nsw i32 %i.aor, %indvars45.i.i.1
  %i.avn = srem i32 %i.avm, %i.auo
  %i.avo = sext i32 %i.avn to i64
  %i.avp = getelementptr inbounds [2 x i8], ptr %i.aug, i64 %i.avo
  %i.avq = load i16, ptr %i.avp, align 2, !tbaa !77
  %indvars.iv.next.i448.i.1 = add nuw nsw i64 %indvars.iv.i447.i, 2 ; 2 uses
  %i.avr = getelementptr inbounds nuw [2 x i8], ptr %i.amw, i64 %indvars.iv.next.i448.i
  store i16 %i.avq, ptr %i.avr, align 2, !tbaa !77
  %niter1792.next.1 = add i64 %niter1792, 2       ; 2 uses
  %niter1792.ncmp.1 = icmp eq i64 %niter1792.next.1, %unroll_iter1791
  br i1 %niter1792.ncmp.1, label %.preheader.i.i.loopexit.unr-lcssa, label %bb.dp

bb.dq:                                            ; preds = %bb.dq, %.lr.ph42.i.i.new
  %indvars.iv48.i.i = phi i64 [ %.027.lcssa.i.i, %.lr.ph42.i.i.new ], [ %indvars.iv.next49.i.i.1, %bb.dq ] ; 3 uses
  %.041.i.i = phi i32 [ 0, %.lr.ph42.i.i.new ], [ %i.awg, %bb.dq ] ; 3 uses
  %niter1798 = phi i32 [ 0, %.lr.ph42.i.i.new ], [ %niter1798.next.1, %bb.dq ]
  %i.avs = add nsw i32 %i.aos, %.041.i.i
  %i.avt = srem i32 %i.avs, %i.aut
  %i.avu = sext i32 %i.avt to i64
  %i.avv = getelementptr inbounds [2 x i8], ptr %i.auj, i64 %i.avu
  %i.avw = load i16, ptr %i.avv, align 2, !tbaa !77
  %i.avx = getelementptr inbounds nuw [2 x i8], ptr %i.amw, i64 %indvars.iv48.i.i
  store i16 %i.avw, ptr %i.avx, align 2, !tbaa !77
  %i.avy = or disjoint i32 %.041.i.i, 1
  %i.avz = add nsw i32 %i.aos, %i.avy
  %i.awa = srem i32 %i.avz, %i.aut
  %i.awb = sext i32 %i.awa to i64
  %i.awc = getelementptr inbounds [2 x i8], ptr %i.auj, i64 %i.awb
  %i.awd = load i16, ptr %i.awc, align 2, !tbaa !77
  %indvars.iv.next49.i.i.1 = add nuw nsw i64 %indvars.iv48.i.i, 2 ; 2 uses
  %i.awe = getelementptr inbounds nuw [2 x i8], ptr %i.amw, i64 %indvars.iv48.i.i
  %i.awf = getelementptr inbounds nuw i8, ptr %i.awe, i64 2
  store i16 %i.awd, ptr %i.awf, align 2, !tbaa !77
  %i.awg = add nuw nsw i32 %.041.i.i, 2           ; 2 uses
  %niter1798.next.1 = add i32 %niter1798, 2       ; 2 uses
  %niter1798.ncmp.1 = icmp eq i32 %niter1798.next.1, %unroll_iter1797
  br i1 %niter1798.ncmp.1, label %_ZL14mergePolyVertsPtS_iiS_i.exit.i.loopexit.unr-lcssa, label %bb.dq

_ZL14mergePolyVertsPtS_iiS_i.exit.i.loopexit.unr-lcssa: ; preds = %bb.dq
  %lcmp.mod1795.not = icmp eq i32 %xtraiter1794, 0
  br i1 %lcmp.mod1795.not, label %_ZL14mergePolyVertsPtS_iiS_i.exit.i, label %.epil.preheader1793

.epil.preheader1793:                              ; preds = %_ZL14mergePolyVertsPtS_iiS_i.exit.i.loopexit.unr-lcssa, %.lr.ph42.i.i
  %indvars.iv48.i.i.epil.init = phi i64 [ %.027.lcssa.i.i, %.lr.ph42.i.i ], [ %indvars.iv.next49.i.i.1, %_ZL14mergePolyVertsPtS_iiS_i.exit.i.loopexit.unr-lcssa ]
  %.041.i.i.epil.init = phi i32 [ 0, %.lr.ph42.i.i ], [ %i.awg, %_ZL14mergePolyVertsPtS_iiS_i.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod1796 = trunc i32 %i.ave to i1
  tail call void @llvm.assume(i1 %lcmp.mod1796)
  %i.awh = add nsw i32 %i.aos, %.041.i.i.epil.init
  %i.awi = srem i32 %i.awh, %i.aut
  %i.awj = sext i32 %i.awi to i64
  %i.awk = getelementptr inbounds [2 x i8], ptr %i.auj, i64 %i.awj
  %i.awl = load i16, ptr %i.awk, align 2, !tbaa !77
  %i.awm = getelementptr inbounds nuw [2 x i8], ptr %i.amw, i64 %indvars.iv48.i.i.epil.init
  store i16 %i.awl, ptr %i.awm, align 2, !tbaa !77
  br label %_ZL14mergePolyVertsPtS_iiS_i.exit.i

_ZL14mergePolyVertsPtS_iiS_i.exit.i:              ; preds = %.epil.preheader1793, %_ZL14mergePolyVertsPtS_iiS_i.exit.i.loopexit.unr-lcssa, %.preheader.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.aug, ptr nonnull align 2 %i.amw, i64 %i.aol, i1 false)
  %i.awn = sext i32 %.2327.i to i64
  %i.awo = getelementptr inbounds [2 x i8], ptr %i.ams, i64 %i.awn ; 2 uses
  %i.awp = load i16, ptr %i.awo, align 2, !tbaa !77
  %i.awq = sext i32 %.2324.i to i64               ; 2 uses
  %i.awr = getelementptr inbounds [2 x i8], ptr %i.ams, i64 %i.awq ; 2 uses
  %i.aws = load i16, ptr %i.awr, align 2, !tbaa !77
  %.not404.i = icmp eq i16 %i.awp, %i.aws
  br i1 %.not404.i, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %_ZL14mergePolyVertsPtS_iiS_i.exit.i
  store i16 0, ptr %i.awo, align 2, !tbaa !77
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %_ZL14mergePolyVertsPtS_iiS_i.exit.i
  %i.awt = mul nuw nsw i64 %indvars.iv.next762.i806, %i.xa ; 2 uses
  %i.awu = trunc nsw i64 %i.awt to i32
  %.not405.i = icmp eq i32 %i.auh, %i.awu
  br i1 %.not405.i, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.awv = getelementptr inbounds [2 x i8], ptr %i.amn, i64 %i.awt
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.auj, ptr nonnull align 2 %i.awv, i64 %i.aom, i1 false)
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.ds
  %i.aww = getelementptr inbounds [2 x i8], ptr %i.ams, i64 %indvars.iv.next762.i806
  %i.awx = load i16, ptr %i.aww, align 2, !tbaa !77
  store i16 %i.awx, ptr %i.awr, align 2, !tbaa !77
  %i.awy = getelementptr inbounds i8, ptr %i.amt, i64 %indvars.iv.next762.i806
  %i.awz = load i8, ptr %i.awy, align 1, !tbaa !78
  %i.axa = getelementptr inbounds i8, ptr %i.amt, i64 %i.awq
  store i8 %i.awz, ptr %i.axa, align 1, !tbaa !78
  %i.axb = icmp sgt i64 %indvars.iv761.i804, 2
  br i1 %i.axb, label %.lr.ph679.preheader.i, label %.thread.loopexit.i.loopexit

.thread.loopexit.i.loopexit:                      ; preds = %._crit_edge680.i, %bb.du
  %indvars.iv761.i.lcssa.ph = phi i64 [ 1, %bb.du ], [ %indvars.iv761.i804, %._crit_edge680.i ]
  %i.axc = trunc nsw i64 %indvars.iv761.i.lcssa.ph to i32
  br label %.thread.i446

.thread.i446:                                     ; preds = %.preheader.i448, %.thread.loopexit.i.loopexit, %bb.dc
  %.4.i = phi i32 [ %.1333.i, %bb.dc ], [ %.1333.i, %.preheader.i448 ], [ %i.axc, %.thread.loopexit.i.loopexit ] ; 2 uses
  %i.axd = icmp sgt i32 %.4.i, 0
  br i1 %i.axd, label %.lr.ph692.i, label %.loopexit.i447

.lr.ph692.i:                                      ; preds = %.thread.i446
  %i.axe = shl i32 %i.ws, 1
  %i.axf = shl nsw i64 %i.xa, 2
  %i.axg = icmp sgt i32 %i.ws, 0
  %wide.trip.count772.i = zext nneg i32 %.4.i to i64
  %.pre774.i = load i32, ptr %i.cd, align 4, !tbaa !73
  %wide.trip.count767.i = zext i32 %i.ws to i64   ; 8 uses
  %i.axh = mul nsw i64 %i.xa, -2
  %min.iters.check1425 = icmp samesign ult i32 %i.ws, 4
  %min.iters.check1427 = icmp samesign ult i32 %i.ws, 16
  %i.axi = and i64 %wide.trip.count767.i, 12
  %n.vec1429 = and i64 %wide.trip.count767.i, 2147483632 ; 4 uses
  %cmp.n1436 = icmp eq i64 %n.vec1429, %wide.trip.count767.i
  %min.epilog.iters.check1440 = icmp eq i64 %i.axi, 0
  %n.vec1443 = and i64 %wide.trip.count767.i, 2147483644 ; 3 uses
  %cmp.n1449 = icmp eq i64 %n.vec1443, %wide.trip.count767.i
  %xtraiter1799 = and i64 %wide.trip.count767.i, 3 ; 2 uses
  %lcmp.mod1800.not = icmp eq i64 %xtraiter1799, 0
  br label %bb.dw

bb.dv:                                            ; preds = %.critedge418.i
  %indvars.iv.next770.i = add nuw nsw i64 %indvars.iv769.i, 1 ; 2 uses
  %exitcond773.not.i = icmp eq i64 %indvars.iv.next770.i, %wide.trip.count772.i
  br i1 %exitcond773.not.i, label %.loopexit.i447, label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %.lr.ph692.i
  %i.axj = phi i32 [ %.pre774.i, %.lr.ph692.i ], [ %i.ayt, %bb.dv ] ; 2 uses
  %indvars.iv769.i = phi i64 [ 0, %.lr.ph692.i ], [ %indvars.iv.next770.i, %bb.dv ] ; 5 uses
  %i.axk = mul i64 %i.axh, %indvars.iv769.i
  %i.axl = sub i64 %i.axk, %i.amo
  %.not406.i = icmp slt i32 %i.axj, %.0350.lcssa1116
  br i1 %.not406.i, label %bb.dx, label %.loopexit.i447

bb.dx:                                            ; preds = %bb.dw
  %i.axm = load ptr, ptr %i.bv, align 8, !tbaa !69 ; 2 uses
  %i.axn = ptrtoaddr ptr %i.axm to i64
  %i.axo = mul i32 %i.axe, %i.axj
  %i.axp = sext i32 %i.axo to i64                 ; 2 uses
  %i.axq = getelementptr inbounds [2 x i8], ptr %i.axm, i64 %i.axp ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.axq, i8 -1, i64 %i.axf, i1 false)
  br i1 %i.axg, label %iter.check1437, label %.critedge418.i

iter.check1437:                                   ; preds = %bb.dx
  %i.axr = mul nuw nsw i64 %indvars.iv769.i, %i.xa
  %invariant.gep.i = getelementptr [2 x i8], ptr %i.amn, i64 %i.axr ; 7 uses
  br i1 %min.iters.check1425, label %vec.epilog.scalar.ph1439.preheader, label %vector.memcheck1423

vector.memcheck1423:                              ; preds = %iter.check1437
  %i.axs = add i64 %i.axl, %i.axn
  %i.axt = shl nsw i64 %i.axp, 1
  %i.axu = add i64 %i.axs, %i.axt
  %i.axv = add i64 %i.axu, -1
  %diff.check1424 = icmp ult i64 %i.axv, 31
  br i1 %diff.check1424, label %vec.epilog.scalar.ph1439.preheader, label %vector.main.loop.iter.check1426

vector.main.loop.iter.check1426:                  ; preds = %vector.memcheck1423
  br i1 %min.iters.check1427, label %vec.epilog.ph1441, label %vector.body1430

vector.body1430:                                  ; preds = %vector.main.loop.iter.check1426, %vector.body1430
  %index1431 = phi i64 [ %index.next1434, %vector.body1430 ], [ 0, %vector.main.loop.iter.check1426 ] ; 3 uses
  %i.axw = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %index1431 ; 2 uses
  %i.axx = getelementptr i8, ptr %i.axw, i64 16
  %wide.load1432 = load <8 x i16>, ptr %i.axw, align 2, !tbaa !77
  %wide.load1433 = load <8 x i16>, ptr %i.axx, align 2, !tbaa !77
  %i.axy = getelementptr inbounds nuw [2 x i8], ptr %i.axq, i64 %index1431 ; 2 uses
  %i.axz = getelementptr inbounds nuw i8, ptr %i.axy, i64 16
  store <8 x i16> %wide.load1432, ptr %i.axy, align 2, !tbaa !77
  store <8 x i16> %wide.load1433, ptr %i.axz, align 2, !tbaa !77
  %index.next1434 = add nuw i64 %index1431, 16    ; 2 uses
  %i.aya = icmp eq i64 %index.next1434, %n.vec1429
  br i1 %i.aya, label %middle.block1435, label %vector.body1430, !llvm.loop !100

middle.block1435:                                 ; preds = %vector.body1430
  br i1 %cmp.n1436, label %.critedge418.i, label %vec.epilog.iter.check1438

vec.epilog.iter.check1438:                        ; preds = %middle.block1435
  br i1 %min.epilog.iters.check1440, label %vec.epilog.scalar.ph1439.preheader, label %vec.epilog.ph1441, !prof !114

vec.epilog.ph1441:                                ; preds = %vector.main.loop.iter.check1426, %vec.epilog.iter.check1438
  %vec.epilog.resume.val1442 = phi i64 [ %n.vec1429, %vec.epilog.iter.check1438 ], [ 0, %vector.main.loop.iter.check1426 ]
  br label %vec.epilog.vector.body1444

vec.epilog.vector.body1444:                       ; preds = %vec.epilog.vector.body1444, %vec.epilog.ph1441
  %index1445 = phi i64 [ %vec.epilog.resume.val1442, %vec.epilog.ph1441 ], [ %index.next1447, %vec.epilog.vector.body1444 ] ; 3 uses
  %i.ayb = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %index1445
  %wide.load1446 = load <4 x i16>, ptr %i.ayb, align 2, !tbaa !77
  %i.ayc = getelementptr inbounds nuw [2 x i8], ptr %i.axq, i64 %index1445
  store <4 x i16> %wide.load1446, ptr %i.ayc, align 2, !tbaa !77
  %index.next1447 = add nuw i64 %index1445, 4     ; 2 uses
  %i.ayd = icmp eq i64 %index.next1447, %n.vec1443
  br i1 %i.ayd, label %vec.epilog.middle.block1448, label %vec.epilog.vector.body1444, !llvm.loop !101

vec.epilog.middle.block1448:                      ; preds = %vec.epilog.vector.body1444
  br i1 %cmp.n1449, label %.critedge418.i, label %vec.epilog.scalar.ph1439.preheader

vec.epilog.scalar.ph1439.preheader:               ; preds = %iter.check1437, %vector.memcheck1423, %vec.epilog.iter.check1438, %vec.epilog.middle.block1448
  %indvars.iv764.i.ph = phi i64 [ 0, %iter.check1437 ], [ 0, %vector.memcheck1423 ], [ %n.vec1429, %vec.epilog.iter.check1438 ], [ %n.vec1443, %vec.epilog.middle.block1448 ] ; 3 uses
  br i1 %lcmp.mod1800.not, label %vec.epilog.scalar.ph1439.prol.loopexit, label %vec.epilog.scalar.ph1439.prol

vec.epilog.scalar.ph1439.prol:                    ; preds = %vec.epilog.scalar.ph1439.preheader, %vec.epilog.scalar.ph1439.prol
  %indvars.iv764.i.prol = phi i64 [ %indvars.iv.next765.i.prol, %vec.epilog.scalar.ph1439.prol ], [ %indvars.iv764.i.ph, %vec.epilog.scalar.ph1439.preheader ] ; 3 uses
  %prol.iter1801 = phi i64 [ %prol.iter1801.next, %vec.epilog.scalar.ph1439.prol ], [ 0, %vec.epilog.scalar.ph1439.preheader ]
  %gep.i.prol = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %indvars.iv764.i.prol
  %i.aye = load i16, ptr %gep.i.prol, align 2, !tbaa !77
  %i.ayf = getelementptr inbounds nuw [2 x i8], ptr %i.axq, i64 %indvars.iv764.i.prol
  store i16 %i.aye, ptr %i.ayf, align 2, !tbaa !77
  %indvars.iv.next765.i.prol = add nuw nsw i64 %indvars.iv764.i.prol, 1 ; 2 uses
  %prol.iter1801.next = add i64 %prol.iter1801, 1 ; 2 uses
  %prol.iter1801.cmp.not = icmp eq i64 %prol.iter1801.next, %xtraiter1799
  br i1 %prol.iter1801.cmp.not, label %vec.epilog.scalar.ph1439.prol.loopexit, label %vec.epilog.scalar.ph1439.prol, !llvm.loop !102

vec.epilog.scalar.ph1439.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1439.prol, %vec.epilog.scalar.ph1439.preheader
  %indvars.iv764.i.unr = phi i64 [ %indvars.iv764.i.ph, %vec.epilog.scalar.ph1439.preheader ], [ %indvars.iv.next765.i.prol, %vec.epilog.scalar.ph1439.prol ]
  %i.ayg = sub nsw i64 %indvars.iv764.i.ph, %wide.trip.count767.i
  %i.ayh = icmp ugt i64 %i.ayg, -4
  br i1 %i.ayh, label %.critedge418.i, label %vec.epilog.scalar.ph1439

.critedge418.i:                                   ; preds = %vec.epilog.scalar.ph1439.prol.loopexit, %vec.epilog.scalar.ph1439, %middle.block1435, %vec.epilog.middle.block1448, %bb.dx
  %i.ayi = getelementptr inbounds nuw [2 x i8], ptr %i.ams, i64 %indvars.iv769.i
  %i.ayj = load i16, ptr %i.ayi, align 2, !tbaa !77
  %i.ayk = load ptr, ptr %i.bz, align 8, !tbaa !70
  %i.ayl = load i32, ptr %i.cd, align 4, !tbaa !73
  %i.aym = sext i32 %i.ayl to i64                 ; 2 uses
  %i.ayn = getelementptr inbounds [2 x i8], ptr %i.ayk, i64 %i.aym
  store i16 %i.ayj, ptr %i.ayn, align 2, !tbaa !77
  %i.ayo = getelementptr inbounds nuw i8, ptr %i.amt, i64 %indvars.iv769.i
  %i.ayp = load i8, ptr %i.ayo, align 1, !tbaa !78
  %i.ayq = load ptr, ptr %i.cb, align 8, !tbaa !71
  %i.ayr = getelementptr inbounds i8, ptr %i.ayq, i64 %i.aym
  store i8 %i.ayp, ptr %i.ayr, align 1, !tbaa !78
  %i.ays = load i32, ptr %i.cd, align 4, !tbaa !73 ; 2 uses
  %i.ayt = add nsw i32 %i.ays, 1                  ; 3 uses
  store i32 %i.ayt, ptr %i.cd, align 4, !tbaa !73
  %.not407.i = icmp slt i32 %i.ays, %.0350.lcssa1116
  br i1 %.not407.i, label %bb.dv, label %bb.dy

vec.epilog.scalar.ph1439:                         ; preds = %vec.epilog.scalar.ph1439.prol.loopexit, %vec.epilog.scalar.ph1439
  %indvars.iv764.i = phi i64 [ %indvars.iv.next765.i.3, %vec.epilog.scalar.ph1439 ], [ %indvars.iv764.i.unr, %vec.epilog.scalar.ph1439.prol.loopexit ] ; 6 uses
  %gep.i = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %indvars.iv764.i
  %i.ayu = load i16, ptr %gep.i, align 2, !tbaa !77
  %i.ayv = getelementptr inbounds nuw [2 x i8], ptr %i.axq, i64 %indvars.iv764.i
  store i16 %i.ayu, ptr %i.ayv, align 2, !tbaa !77
  %indvars.iv.next765.i = add nuw nsw i64 %indvars.iv764.i, 1 ; 2 uses
  %gep.i.1 = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next765.i
  %i.ayw = load i16, ptr %gep.i.1, align 2, !tbaa !77
  %i.ayx = getelementptr inbounds nuw [2 x i8], ptr %i.axq, i64 %indvars.iv.next765.i
  store i16 %i.ayw, ptr %i.ayx, align 2, !tbaa !77
  %indvars.iv.next765.i.1 = add nuw nsw i64 %indvars.iv764.i, 2 ; 2 uses
  %gep.i.2 = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next765.i.1
  %i.ayy = load i16, ptr %gep.i.2, align 2, !tbaa !77
  %i.ayz = getelementptr inbounds nuw [2 x i8], ptr %i.axq, i64 %indvars.iv.next765.i.1
  store i16 %i.ayy, ptr %i.ayz, align 2, !tbaa !77
  %indvars.iv.next765.i.2 = add nuw nsw i64 %indvars.iv764.i, 3 ; 2 uses
  %gep.i.3 = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next765.i.2
  %i.aza = load i16, ptr %gep.i.3, align 2, !tbaa !77
  %i.azb = getelementptr inbounds nuw [2 x i8], ptr %i.axq, i64 %indvars.iv.next765.i.2
  store i16 %i.aza, ptr %i.azb, align 2, !tbaa !77
  %indvars.iv.next765.i.3 = add nuw nsw i64 %indvars.iv764.i, 4 ; 2 uses
  %exitcond768.not.i.3 = icmp eq i64 %indvars.iv.next765.i.3, %wide.trip.count767.i
  br i1 %exitcond768.not.i.3, label %.critedge418.i, label %vec.epilog.scalar.ph1439, !llvm.loop !103

bb.dy:                                            ; preds = %.critedge418.i
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.46, i32 noundef %i.ayt, i32 noundef range(i32 0, -2147483648) %.0350.lcssa1116) #8
  br label %.critedge592

.loopexit.i447:                                   ; preds = %bb.dw, %bb.dv, %.thread.i446, %._crit_edge657.i, %bb.cw
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.amt) #8
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.ams) #8
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.amn) #8
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.alo) #8
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.all) #8
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.ali) #8
  br label %.preheader

.critedge592:                                     ; preds = %bb.dy, %bb.cv
  %4 = phi ptr [ %i.amt, %bb.dy ], [ null, %bb.cv ]
  tail call void @_Z6rcFreePv(ptr noundef %4) #8
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.ams) #8
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.amn) #8
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.alo) #8
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.all) #8
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.ali) #8
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.yj) #8
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.yh) #8
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.yf) #8
  br label %bb.dz

bb.dz:                                            ; preds = %.critedge592, %.critedge591, %.critedge590, %.critedge589, %.critedge588, %.critedge587, %.critedge585, %.critedge584, %.critedge583, %_ZL12removeVertexP9rcContextR10rcPolyMeshti.exit.thread
  %.sink = phi ptr [ %i.xd, %.critedge592 ], [ %i.xd, %.critedge591 ], [ %i.xd, %.critedge590 ], [ %i.xd, %.critedge589 ], [ %i.xd, %.critedge588 ], [ %i.xd, %.critedge587 ], [ %i.xd, %.critedge585 ], [ %i.xd, %.critedge584 ], [ %i.xd, %.critedge583 ], [ null, %_ZL12removeVertexP9rcContextR10rcPolyMeshti.exit.thread ]
  tail call void @_Z6rcFreePv(ptr noundef %.sink) #8
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.13, i32 noundef %.0314813) #8
  br label %bb.ev

.preheader:                                       ; preds = %._crit_edge635.i, %.loopexit.i447
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.yj) #8
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.yh) #8
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.yf) #8
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.xd) #8
  %i.azc = load i32, ptr %i.cc, align 8, !tbaa !72
  %i.azd = icmp slt i32 %.0314813, %i.azc
  br i1 %i.azd, label %.lr.ph810, label %._crit_edge811

._crit_edge811:                                   ; preds = %.lr.ph810, %.preheader
  %i.aze = add nsw i32 %.0314813, -1
  br label %_ZL15canRemoveVertexP9rcContextR10rcPolyMesht.exit.thread

.lr.ph810:                                        ; preds = %.preheader, %.lr.ph810
  %indvars.iv1008 = phi i64 [ %indvars.iv.next1009, %.lr.ph810 ], [ %i.rb, %.preheader ] ; 2 uses
  %indvars.iv.next1009 = add nsw i64 %indvars.iv1008, 1 ; 3 uses
  %i.azf = getelementptr inbounds i8, ptr %i.bm, i64 %indvars.iv.next1009
  %i.azg = load i8, ptr %i.azf, align 1, !tbaa !78
  %i.azh = getelementptr inbounds i8, ptr %i.bm, i64 %indvars.iv1008
  store i8 %i.azg, ptr %i.azh, align 1, !tbaa !78
  %i.azi = load i32, ptr %i.cc, align 8, !tbaa !72
  %i.azj = sext i32 %i.azi to i64
  %i.azk = icmp slt i64 %indvars.iv.next1009, %i.azj
  br i1 %i.azk, label %.lr.ph810, label %._crit_edge811

_ZL15canRemoveVertexP9rcContextR10rcPolyMesht.exit.thread: ; preds = %.lr.ph125.i, %bb.bg, %._crit_edge126.i, %_ZL15canRemoveVertexP9rcContextR10rcPolyMesht.exit.thread580, %.lr.ph814, %._crit_edge811, %_ZL15canRemoveVertexP9rcContextR10rcPolyMesht.exit
  %.1 = phi i32 [ %i.aze, %._crit_edge811 ], [ %.0314813, %_ZL15canRemoveVertexP9rcContextR10rcPolyMesht.exit ], [ %.0314813, %.lr.ph814 ], [ %.0314813, %_ZL15canRemoveVertexP9rcContextR10rcPolyMesht.exit.thread580 ], [ %.0314813, %._crit_edge126.i ], [ %.0314813, %bb.bg ], [ %.0314813, %.lr.ph125.i ]
  %i.azl = add nsw i32 %.1, 1                     ; 2 uses
  %i.azm = load i32, ptr %i.cc, align 8, !tbaa !72 ; 2 uses
  %.not399 = icmp slt i32 %i.azl, %i.azm
  br i1 %.not399, label %.lr.ph814, label %.critedge407

.critedge407:                                     ; preds = %_ZL15canRemoveVertexP9rcContextR10rcPolyMesht.exit.thread, %.critedge405.preheader
  %i.azn = phi i32 [ %i.dj, %.critedge405.preheader ], [ %i.azm, %_ZL15canRemoveVertexP9rcContextR10rcPolyMesht.exit.thread ]
  %i.azo = load ptr, ptr %i.bv, align 8, !tbaa !69
  %i.azp = load i32, ptr %i.cd, align 4, !tbaa !73
  %i.azq = tail call fastcc noundef zeroext i1 @_ZL18buildMeshAdjacencyPtiii(ptr noundef %i.azo, i32 noundef %i.azp, i32 noundef %i.azn, i32 noundef %2)
  br i1 %i.azq, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %.critedge407
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.14) #8
  br label %bb.ev

bb.eb:                                            ; preds = %.critedge407
  %i.azr = load i32, ptr %i.ad, align 8, !tbaa !65
  %i.azs = icmp sgt i32 %i.azr, 0
  %.pre1026 = load i32, ptr %i.cd, align 4, !tbaa !73 ; 3 uses
  br i1 %i.azs, label %bb.ec, label %.loopexit

bb.ec:                                            ; preds = %bb.eb
  %i.azt = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.azu = load i32, ptr %i.azt, align 4, !tbaa !118 ; 2 uses
  %i.azv = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.azw = load i32, ptr %i.azv, align 8, !tbaa !119 ; 2 uses
  %i.azx = icmp sgt i32 %.pre1026, 0
  br i1 %i.azx, label %.lr.ph822, label %.loopexit

.lr.ph822:                                        ; preds = %bb.ec
  %i.azy = load ptr, ptr %i.bv, align 8, !tbaa !69
  %i.azz = shl i32 %2, 1
  %i.baa = icmp sgt i32 %2, 0
  br i1 %i.baa, label %.lr.ph817.preheader, label %.loopexit

.lr.ph817.preheader:                              ; preds = %.lr.ph822
  %i.bab = zext nneg i32 %2 to i64                ; 2 uses
  %wide.trip.count1022 = zext nneg i32 %.pre1026 to i64
  br label %.lr.ph817

.lr.ph817:                                        ; preds = %.lr.ph817.preheader, %._crit_edge818
  %indvars.iv1018 = phi i64 [ 0, %.lr.ph817.preheader ], [ %indvars.iv.next1019, %._crit_edge818 ] ; 2 uses
  %i.bac = trunc nuw nsw i64 %indvars.iv1018 to i32
  %i.bad = mul i32 %i.azz, %i.bac
  %i.bae = sext i32 %i.bad to i64
  %i.baf = getelementptr inbounds [2 x i8], ptr %i.azy, i64 %i.bae ; 4 uses
  %invariant.gep = getelementptr [2 x i8], ptr %i.baf, i64 %i.bab
  br label %bb.ed

bb.ed:                                            ; preds = %.lr.ph817, %._crit_edge1027
  %indvars.iv1012 = phi i64 [ 0, %.lr.ph817 ], [ %i.bak, %._crit_edge1027 ] ; 3 uses
  %i.bag = getelementptr inbounds nuw [2 x i8], ptr %i.baf, i64 %indvars.iv1012
  %i.bah = load i16, ptr %i.bag, align 2, !tbaa !77 ; 2 uses
  %i.bai = icmp eq i16 %i.bah, -1
  br i1 %i.bai, label %._crit_edge818, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv1012 ; 2 uses
  %i.baj = load i16, ptr %gep, align 2, !tbaa !77
  %.not401 = icmp eq i16 %i.baj, -1
  %i.bak = add nuw nsw i64 %indvars.iv1012, 1     ; 4 uses
  br i1 %.not401, label %bb.ef, label %._crit_edge1027

bb.ef:                                            ; preds = %bb.ee
  %.not402 = icmp slt i64 %i.bak, %i.br
  br i1 %.not402, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  %i.bal = getelementptr inbounds nuw [2 x i8], ptr %i.baf, i64 %i.bak
  %i.bam = load i16, ptr %i.bal, align 2, !tbaa !77 ; 2 uses
  %i.ban = icmp eq i16 %i.bam, -1
  br i1 %i.ban, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg, %bb.ef
  %.pre1025 = load i16, ptr %i.baf, align 2, !tbaa !77
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.eg
  %i.bao = phi i16 [ %.pre1025, %bb.eh ], [ %i.bam, %bb.eg ]
  %i.bap = load ptr, ptr %3, align 8, !tbaa !68   ; 2 uses
  %i.baq = zext i16 %i.bah to i64
  %.idx = mul nuw nsw i64 %i.baq, 6
  %i.bar = getelementptr inbounds nuw i8, ptr %i.bap, i64 %.idx ; 2 uses
  %i.bas = zext i16 %i.bao to i64
  %.idx403 = mul nuw nsw i64 %i.bas, 6
  %i.bat = getelementptr inbounds nuw i8, ptr %i.bap, i64 %.idx403 ; 4 uses
  %i.bau = load i16, ptr %i.bar, align 2, !tbaa !77 ; 2 uses
  %i.bav = icmp eq i16 %i.bau, 0
  br i1 %i.bav, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  %i.baw = load i16, ptr %i.bat, align 2, !tbaa !77
  %i.bax = icmp eq i16 %i.baw, 0
  br i1 %i.bax, label %._crit_edge1027.sink.split, label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.ei
  %i.bay = getelementptr inbounds nuw i8, ptr %i.bar, i64 4
  %i.baz = load i16, ptr %i.bay, align 2, !tbaa !77 ; 2 uses
  %i.bba = zext i16 %i.baz to i32
  %i.bbb = icmp eq i32 %i.azw, %i.bba
  br i1 %i.bbb, label %bb.el, label %bb.em

bb.el:                                            ; preds = %bb.ek
  %i.bbc = getelementptr inbounds nuw i8, ptr %i.bat, i64 4
  %i.bbd = load i16, ptr %i.bbc, align 2, !tbaa !77
  %i.bbe = zext i16 %i.bbd to i32
  %i.bbf = icmp eq i32 %i.azw, %i.bbe
  br i1 %i.bbf, label %._crit_edge1027.sink.split, label %bb.em

bb.em:                                            ; preds = %bb.el, %bb.ek
  %i.bbg = zext i16 %i.bau to i32
  %i.bbh = icmp eq i32 %i.azu, %i.bbg
  br i1 %i.bbh, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %bb.em
  %i.bbi = load i16, ptr %i.bat, align 2, !tbaa !77
  %i.bbj = zext i16 %i.bbi to i32
  %i.bbk = icmp eq i32 %i.azu, %i.bbj
  br i1 %i.bbk, label %._crit_edge1027.sink.split, label %bb.eo

bb.eo:                                            ; preds = %bb.en, %bb.em
  %i.bbl = icmp eq i16 %i.baz, 0
  br i1 %i.bbl, label %bb.ep, label %._crit_edge1027

bb.ep:                                            ; preds = %bb.eo
  %i.bbm = getelementptr inbounds nuw i8, ptr %i.bat, i64 4
  %i.bbn = load i16, ptr %i.bbm, align 2, !tbaa !77
  %i.bbo = icmp eq i16 %i.bbn, 0
  br i1 %i.bbo, label %._crit_edge1027.sink.split, label %._crit_edge1027

._crit_edge1027.sink.split:                       ; preds = %bb.ep, %bb.en, %bb.el, %bb.ej
  %.sink1264 = phi i16 [ -32768, %bb.ej ], [ -32767, %bb.el ], [ -32766, %bb.en ], [ -32765, %bb.ep ]
  store i16 %.sink1264, ptr %gep, align 2, !tbaa !77
  br label %._crit_edge1027

._crit_edge1027:                                  ; preds = %._crit_edge1027.sink.split, %bb.ee, %bb.ep, %bb.eo
  %exitcond1017.not = icmp eq i64 %i.bak, %i.bab
  br i1 %exitcond1017.not, label %._crit_edge818, label %bb.ed

._crit_edge818:                                   ; preds = %._crit_edge1027, %bb.ed
  %indvars.iv.next1019 = add nuw nsw i64 %indvars.iv1018, 1 ; 2 uses
  %exitcond1023.not = icmp eq i64 %indvars.iv.next1019, %wide.trip.count1022
  br i1 %exitcond1023.not, label %.loopexit, label %.lr.ph817

.loopexit:                                        ; preds = %._crit_edge818, %bb.ec, %.lr.ph822, %bb.eb
  %i.bbp = sext i32 %.pre1026 to i64
  %i.bbq = shl nsw i64 %i.bbp, 1
  %i.bbr = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.bbq, i32 noundef 0) #8 ; 3 uses
  %i.bbs = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.bbr, ptr %i.bbs, align 8, !tbaa !82
  %.not400 = icmp eq ptr %i.bbr, null
  %i.bbt = load i32, ptr %i.cd, align 4, !tbaa !73 ; 2 uses
  br i1 %.not400, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %.loopexit
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.15, i32 noundef %i.bbt) #8
end_hunk_2
